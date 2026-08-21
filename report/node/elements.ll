Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/elements?download=true
inline.NumInlined: 32791
inline.NumDeleted: 4746
loop-unroll.NumCompletelyUnrolled: 60
loop-unroll.NumRuntimeUnrolled: 1718
loop-unroll.NumUnrolled: 1778
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE22EEENS1_18ElementsKindTraitsILS4_22EEEE12GrowCapacityEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEj:bb.a
  %i.x = add i32 %3, 1
  %i.y = lshr i32 %i.x, 1
  %i.z = add i32 %3, 17                           ; 2 uses
  %i.aa = add i32 %i.y, %i.z                      ; 2 uses
  %i.ab = icmp ult i32 %i.z, 134217729
  %i.ac = call i32 @llvm.umin.i32(i32 %i.aa, i32 134217728)
  %.0.i = select i1 %i.ab, i32 %i.ac, i32 %i.aa   ; 2 uses
  %i.ad = icmp ugt i32 %.0.i, 134217728
  br i1 %i.ad, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ae = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %.0.i, i8 noundef zeroext 0, i8 0) #23 ; 0 uses
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable

bb.f:                                             ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.b, %.critedge
  ret i16 1
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE22EEENS1_18ElementsKindTraitsILS4_22EEEE3SetENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(none) %1, i64 %2, i64 %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  %i.b = add i64 %i.a, 71
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.a, 79
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, %i.d
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %2 ; 2 uses
  %i.k = add i64 %i.a, 31
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, 71
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i32, ptr %i.o monotonic, align 4
  %i.q = and i32 %i.p, 16
  %.not.i = icmp eq i32 %i.q, 0
  %i.r = tail call fastcc noundef i32 @_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE22EE10FromObjectENS0_6TaggedINS0_6ObjectEEEPb(i64 %3) ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %i.r, ptr %i.j, align 1
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE22EE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.c:                                             ; preds = %bb.a
  store atomic i32 %i.r, ptr %i.j monotonic, align 4
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE22EE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE22EE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE22EEENS1_18ElementsKindTraitsILS4_22EEEE9SetAtomicENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEENS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2, i64 %3) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE22EEENS1_18ElementsKindTraitsILS4_22EEEE10SwapAtomicEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEENS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3, i64 %4) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE22EEENS1_18ElementsKindTraitsILS4_22EEEE20CompareAndSwapAtomicEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEESH_NS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3, i64 %4, i64 %5) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE22EEENS1_18ElementsKindTraitsILS4_22EEEE3AddEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEjNSB_INS0_6ObjectEEENS0_18PropertyAttributesEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i32 %3, ptr nofree readnone captures(none) %4, i32 %5, i32 %6) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE22EEENS1_18ElementsKindTraitsILS4_22EEEE4PushEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEPNS0_16BuiltinArgumentsEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, i32 %4) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE22EEENS1_18ElementsKindTraitsILS4_22EEEE7UnshiftEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEPNS0_16BuiltinArgumentsEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, i32 %4) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE22EEENS1_18ElementsKindTraitsILS4_22EEEE3PopEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE22EEENS1_18ElementsKindTraitsILS4_22EEEE5ShiftEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE22EEENS1_18ElementsKindTraitsILS4_22EEEE9NormalizeEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i, align 8
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE22EEENS1_18ElementsKindTraitsILS4_22EEEE11GetCapacityENS0_6TaggedINS0_8JSObjectEEENS9_INS0_14FixedArrayBaseEEE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1, i64 %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.460", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i64 %1, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1
  %i.b = add i64 %1, 31
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, 71
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i32, ptr %i.f monotonic, align 4
  %i.h = and i32 %i.g, 4
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE22EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %1, 39
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 3
  %.not2.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not2.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = call noundef i64 @_ZNK2v88internal12JSTypedArray30GetVariableLengthOrOutOfBoundsERb(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #23
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE22EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit

bb.d:                                             ; preds = %bb.b
  %i.n = add i64 %1, 55
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr %i.o, align 8
  %i.q = call noundef i64 @_ZNK2v88internal12JSTypedArray12element_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #23
  %i.r = udiv i64 %i.p, %i.q
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE22EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE22EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i.i = phi i64 [ %i.r, %bb.d ], [ %i.m, %bb.c ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i64 %.0.i.i.i
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE22EEENS1_18ElementsKindTraitsILS4_22EEEE4FillEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_6ObjectEEEmm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readonly returned captures(ret: address, provenance) %2, ptr nofree readonly captures(none) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #10 align 2 {
bb.a:
  %.val = load i64, ptr %3, align 8
  %i.a = tail call fastcc noundef i32 @_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE22EE10FromObjectENS0_6TaggedINS0_6ObjectEEEPb(i64 %.val) ; 5 uses
  %i.b = load i64, ptr %2, align 8                ; 3 uses
  %i.c = add i64 %i.b, 71
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add i64 %i.b, 79
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %i.g, align 8
  %i.i = add i64 %i.h, %i.e
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %.idx19.i = shl i64 %4, 2                       ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx19.i ; 5 uses
  %.idx.i = shl i64 %5, 2                         ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i ; 2 uses
  %i.m = add i64 %i.b, 31
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load i64, ptr %i.n, align 8
  %i.p = add i64 %i.o, 71
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i32, ptr %i.q monotonic, align 4
  %i.s = and i32 %i.r, 16
  %.not21.i = icmp eq i32 %i.s, 0
  br i1 %.not21.i, label %bb.b, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %.not23.i = icmp samesign eq i64 %.idx19.i, %.idx.i
  br i1 %.not23.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE22EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.024.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.k, %.preheader.i ] ; 2 uses
  store atomic i32 %i.a, ptr %.024.i monotonic, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.t, %i.l
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE22EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i, !llvm.loop !4325

bb.b:                                             ; preds = %bb.a
  %i.u = add i32 %i.a, 1
  %or.cond.i = icmp ult i32 %i.u, 2
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %gepdiff.i = sub nsw i64 %.idx.i, %.idx19.i
  %i.v = trunc nsw i32 %i.a to i8
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 %i.v, i64 %gepdiff.i, i1 false)
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE22EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.d:                                             ; preds = %bb.b
  %.not5.i.i.i.i = icmp samesign eq i64 %.idx19.i, %.idx.i
  br i1 %.not5.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE22EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.d
  %i.w = add i64 %.idx.i, -4
  %i.x = sub i64 %i.w, %.idx19.i                  ; 2 uses
  %i.y = lshr exact i64 %i.x, 2
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.z, 9223372036854775800      ; 3 uses
  %i.aa = shl i64 %n.vec, 2
  %i.ab = getelementptr i8, ptr %i.k, i64 %i.aa
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.ad, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !4326

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE22EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i.i.i.i.preheader10

.lr.ph.i.i.i.i.preheader10:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.06.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader10, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.06.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader10 ] ; 2 uses
  store i32 %i.a, ptr %.06.i.i.i.i, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, %i.l
  br i1 %.not.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE22EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4327

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE22EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit: ; preds = %.lr.ph.i, %.lr.ph.i.i.i.i, %middle.block, %.preheader.i, %bb.c, %bb.d
  ret ptr %2
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i16 1, 258) i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE22EEENS1_18ElementsKindTraitsILS4_22EEEE13IncludesValueEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_6ObjectEEEmm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readonly captures(none) %2, ptr nofree readonly captures(none) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.460", align 8 ; 6 uses
  %i.b = load i64, ptr %2, align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i64 %i.b, ptr %6, align 8
  %i.c = add i64 %i.b, 31
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add i64 %i.e, 71
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i32, ptr %i.g monotonic, align 4
  %i.i = and i32 %i.h, 4
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.b, label %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.j = add i64 %i.b, 39
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 3
  %.not2.i.i = icmp eq i32 %i.m, 0
  br i1 %.not2.i.i, label %bb.c, label %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i

bb.c:                                             ; preds = %bb.b
  %i.n = add i64 %i.b, 55
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr %i.o, align 8
  %i.q = call noundef i64 @_ZNK2v88internal12JSTypedArray12element_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #23
  %i.r = udiv i64 %i.p, %i.q
  br label %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i

_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i: ; preds = %bb.c, %bb.a
  %.0.i35.ph.i = phi i64 [ 0, %bb.a ], [ %i.r, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.e

_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i: ; preds = %bb.b
  %i.s = call noundef i64 @_ZNK2v88internal12JSTypedArray30GetVariableLengthOrOutOfBoundsERb(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #23
  %.pre.i = load i8, ptr %i.a, align 1, !range !16
  %i.t = trunc nuw i8 %.pre.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %i.t, label %bb.d, label %bb.e, !prof !3743

bb.d:                                             ; preds = %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i
  %i.u = load i64, ptr %3, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp eq i64 %i.u, %i.w
  %i.y = icmp ugt i64 %5, %4
  %i.z = and i1 %i.y, %i.x
  %.sroa.0.0.insert.insert.i.i = select i1 %i.z, i16 257, i16 1
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE22EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.e:                                             ; preds = %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i, %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i
  %.0.i35136.i = phi i64 [ %.0.i35.ph.i, %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i ], [ %i.s, %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i ] ; 2 uses
  %i.aa = icmp ult i64 %.0.i35136.i, %5
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = load i64, ptr %3, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = icmp eq i64 %i.ab, %i.ad
  %i.af = icmp ugt i64 %5, %4
  %or.cond.i = and i1 %i.af, %i.ae
  br i1 %or.cond.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE22EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.029.i = phi i64 [ %5, %bb.e ], [ %.0.i35136.i, %bb.f ] ; 4 uses
  %i.ag = add i64 %i.b, 71
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = add i64 %i.b, 79
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = add i64 %i.al, %i.ai                    ; 2 uses
  %i.an = inttoptr i64 %i.am to ptr               ; 3 uses
  %i.ao = load i64, ptr %i.d, align 8
  %i.ap = add i64 %i.ao, 71
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load atomic volatile i32, ptr %i.aq monotonic, align 4
  %i.as = and i32 %i.ar, 16
  %.not121.i = icmp eq i32 %i.as, 0
  %i.at = load i64, ptr %3, align 8               ; 3 uses
  %i.au = and i64 %i.at, 1
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.h, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.g
  %i.aw = add nsw i64 %i.at, -1
  %i.ax = inttoptr i64 %i.aw to ptr               ; 2 uses
  %i.ay = load atomic volatile i64, ptr %i.ax monotonic, align 8
  %i.az = add i64 %i.ay, 11
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load atomic volatile i16, ptr %i.ba monotonic, align 2
  %i.bc = icmp eq i16 %i.bb, 130
  br i1 %i.bc, label %bb.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE22EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.h:                                             ; preds = %bb.g
  %i.bd = lshr i64 %i.at, 32
  %i.be = trunc nuw i64 %i.bd to i32
  %i.bf = sitofp i32 %i.be to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

bb.i:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.bg, align 8
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i: ; preds = %bb.i, %bb.h
  %i.bh = phi double [ %i.bf, %bb.h ], [ %.0.copyload.i.i.i.i.i.i.i, %bb.i ] ; 5 uses
  %i.bi = call double @llvm.fabs.f64(double %i.bh)
  %i.bj = fcmp ueq double %i.bi, +inf
  br i1 %i.bj, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE22EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i
  %i.bk = fcmp ule double %i.bh, -1.000000e+00
  %i.bl = fcmp ugt double %i.bh, f0x41EFFFFFFFE00000
  %.not3.i.not9.i.i = or i1 %i.bl, %i.bk
  br i1 %.not3.i.not9.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE22EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE22EE18ToTypedSearchValueEdPj.exit.i

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE22EE18ToTypedSearchValueEdPj.exit.i: ; preds = %bb.j
  %i.bm = fptoui double %i.bh to i32              ; 4 uses
  %i.bn = uitofp i32 %i.bm to double
  %i.bo = fcmp oeq double %i.bh, %i.bn
  %.not34123.i = icmp ult i64 %4, %.029.i
  %or.cond127.i = and i1 %.not34123.i, %i.bo
  br i1 %or.cond127.i, label %.lr.ph.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE22EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

.lr.ph.i:                                         ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE22EE18ToTypedSearchValueEdPj.exit.i
  br i1 %.not121.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE22EE7GetImplEPjNS1_14IsSharedBufferE.exit.us.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.bp = and i64 %i.am, 3
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.split.i.us, label %.lr.ph.split.i

.lr.ph.split.i.us:                                ; preds = %.lr.ph.split.preheader.i, %bb.k
  %.0124.i.us = phi i64 [ %i.bt, %bb.k ], [ %4, %.lr.ph.split.preheader.i ] ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.0124.i.us
  %i.bs = load atomic i32, ptr %i.br acquire, align 4
  %.not.i.us = icmp eq i32 %i.bs, %i.bm
  br i1 %.not.i.us, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE22EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split.i.us
  %i.bt = add i64 %.0124.i.us, 1                  ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.bt, %.029.i
  br i1 %exitcond.not.i.us, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE22EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.split.i.us, !llvm.loop !4328

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE22EE7GetImplEPjNS1_14IsSharedBufferE.exit.us.i: ; preds = %.lr.ph.i, %bb.l
  %.0124.us.i = phi i64 [ %i.bv, %bb.l ], [ %4, %.lr.ph.i ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.0124.us.i
end_hunk_0
begin_hunk_1_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE23EEENS1_18ElementsKindTraitsILS4_23EEEE12GrowCapacityEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEj:bb.a
  %i.x = add i32 %3, 1
  %i.y = lshr i32 %i.x, 1
  %i.z = add i32 %3, 17                           ; 2 uses
  %i.aa = add i32 %i.y, %i.z                      ; 2 uses
  %i.ab = icmp ult i32 %i.z, 134217729
  %i.ac = call i32 @llvm.umin.i32(i32 %i.aa, i32 134217728)
  %.0.i = select i1 %i.ab, i32 %i.ac, i32 %i.aa   ; 2 uses
  %i.ad = icmp ugt i32 %.0.i, 134217728
  br i1 %i.ad, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ae = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %.0.i, i8 noundef zeroext 0, i8 0) #23 ; 0 uses
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable

bb.f:                                             ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.b, %.critedge
  ret i16 1
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE23EEENS1_18ElementsKindTraitsILS4_23EEEE3SetENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(none) %1, i64 %2, i64 %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  %i.b = add i64 %i.a, 71
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.a, 79
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, %i.d
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %2 ; 2 uses
  %i.k = add i64 %i.a, 31
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, 71
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i32, ptr %i.o monotonic, align 4
  %i.q = and i32 %i.p, 16
  %.not.i = icmp eq i32 %i.q, 0
  %i.r = tail call fastcc noundef i32 @_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE23EE10FromObjectENS0_6TaggedINS0_6ObjectEEEPb(i64 %3) ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %i.r, ptr %i.j, align 1
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE23EE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.c:                                             ; preds = %bb.a
  store atomic i32 %i.r, ptr %i.j monotonic, align 4
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE23EE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE23EE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE23EEENS1_18ElementsKindTraitsILS4_23EEEE9SetAtomicENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEENS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2, i64 %3) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE23EEENS1_18ElementsKindTraitsILS4_23EEEE10SwapAtomicEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEENS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3, i64 %4) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE23EEENS1_18ElementsKindTraitsILS4_23EEEE20CompareAndSwapAtomicEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEESH_NS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3, i64 %4, i64 %5) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE23EEENS1_18ElementsKindTraitsILS4_23EEEE3AddEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEjNSB_INS0_6ObjectEEENS0_18PropertyAttributesEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i32 %3, ptr nofree readnone captures(none) %4, i32 %5, i32 %6) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE23EEENS1_18ElementsKindTraitsILS4_23EEEE4PushEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEPNS0_16BuiltinArgumentsEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, i32 %4) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE23EEENS1_18ElementsKindTraitsILS4_23EEEE7UnshiftEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEPNS0_16BuiltinArgumentsEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, i32 %4) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE23EEENS1_18ElementsKindTraitsILS4_23EEEE3PopEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE23EEENS1_18ElementsKindTraitsILS4_23EEEE5ShiftEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE23EEENS1_18ElementsKindTraitsILS4_23EEEE9NormalizeEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i, align 8
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE23EEENS1_18ElementsKindTraitsILS4_23EEEE11GetCapacityENS0_6TaggedINS0_8JSObjectEEENS9_INS0_14FixedArrayBaseEEE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1, i64 %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.460", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i64 %1, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1
  %i.b = add i64 %1, 31
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, 71
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i32, ptr %i.f monotonic, align 4
  %i.h = and i32 %i.g, 4
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE23EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %1, 39
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 3
  %.not2.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not2.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = call noundef i64 @_ZNK2v88internal12JSTypedArray30GetVariableLengthOrOutOfBoundsERb(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #23
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE23EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit

bb.d:                                             ; preds = %bb.b
  %i.n = add i64 %1, 55
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr %i.o, align 8
  %i.q = call noundef i64 @_ZNK2v88internal12JSTypedArray12element_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #23
  %i.r = udiv i64 %i.p, %i.q
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE23EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE23EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i.i = phi i64 [ %i.r, %bb.d ], [ %i.m, %bb.c ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i64 %.0.i.i.i
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE23EEENS1_18ElementsKindTraitsILS4_23EEEE4FillEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_6ObjectEEEmm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readonly returned captures(ret: address, provenance) %2, ptr nofree readonly captures(none) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #10 align 2 {
bb.a:
  %.val = load i64, ptr %3, align 8
  %i.a = tail call fastcc noundef i32 @_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE23EE10FromObjectENS0_6TaggedINS0_6ObjectEEEPb(i64 %.val) ; 5 uses
  %i.b = load i64, ptr %2, align 8                ; 3 uses
  %i.c = add i64 %i.b, 71
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add i64 %i.b, 79
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %i.g, align 8
  %i.i = add i64 %i.h, %i.e
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %.idx19.i = shl i64 %4, 2                       ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx19.i ; 5 uses
  %.idx.i = shl i64 %5, 2                         ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i ; 2 uses
  %i.m = add i64 %i.b, 31
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load i64, ptr %i.n, align 8
  %i.p = add i64 %i.o, 71
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i32, ptr %i.q monotonic, align 4
  %i.s = and i32 %i.r, 16
  %.not21.i = icmp eq i32 %i.s, 0
  br i1 %.not21.i, label %bb.b, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %.not23.i = icmp samesign eq i64 %.idx19.i, %.idx.i
  br i1 %.not23.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE23EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.024.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.k, %.preheader.i ] ; 2 uses
  store atomic i32 %i.a, ptr %.024.i monotonic, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.t, %i.l
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE23EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i, !llvm.loop !4465

bb.b:                                             ; preds = %bb.a
  %i.u = add i32 %i.a, 1
  %or.cond.i = icmp ult i32 %i.u, 2
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %gepdiff.i = sub nsw i64 %.idx.i, %.idx19.i
  %i.v = trunc nsw i32 %i.a to i8
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 %i.v, i64 %gepdiff.i, i1 false)
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE23EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.d:                                             ; preds = %bb.b
  %.not5.i.i.i.i = icmp samesign eq i64 %.idx19.i, %.idx.i
  br i1 %.not5.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE23EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.d
  %i.w = add i64 %.idx.i, -4
  %i.x = sub i64 %i.w, %.idx19.i                  ; 2 uses
  %i.y = lshr exact i64 %i.x, 2
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.z, 9223372036854775800      ; 3 uses
  %i.aa = shl i64 %n.vec, 2
  %i.ab = getelementptr i8, ptr %i.k, i64 %i.aa
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.ad, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !4466

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE23EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i.i.i.i.preheader10

.lr.ph.i.i.i.i.preheader10:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.06.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader10, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.06.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader10 ] ; 2 uses
  store i32 %i.a, ptr %.06.i.i.i.i, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, %i.l
  br i1 %.not.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE23EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4467

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE23EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit: ; preds = %.lr.ph.i, %.lr.ph.i.i.i.i, %middle.block, %.preheader.i, %bb.c, %bb.d
  ret ptr %2
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i16 1, 258) i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE23EEENS1_18ElementsKindTraitsILS4_23EEEE13IncludesValueEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_6ObjectEEEmm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readonly captures(none) %2, ptr nofree readonly captures(none) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.460", align 8 ; 6 uses
  %i.b = load i64, ptr %2, align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i64 %i.b, ptr %6, align 8
  %i.c = add i64 %i.b, 31
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add i64 %i.e, 71
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i32, ptr %i.g monotonic, align 4
  %i.i = and i32 %i.h, 4
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.b, label %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.j = add i64 %i.b, 39
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 3
  %.not2.i.i = icmp eq i32 %i.m, 0
  br i1 %.not2.i.i, label %bb.c, label %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i

bb.c:                                             ; preds = %bb.b
  %i.n = add i64 %i.b, 55
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr %i.o, align 8
  %i.q = call noundef i64 @_ZNK2v88internal12JSTypedArray12element_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #23
  %i.r = udiv i64 %i.p, %i.q
  br label %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i

_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i: ; preds = %bb.c, %bb.a
  %.0.i35.ph.i = phi i64 [ 0, %bb.a ], [ %i.r, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.e

_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i: ; preds = %bb.b
  %i.s = call noundef i64 @_ZNK2v88internal12JSTypedArray30GetVariableLengthOrOutOfBoundsERb(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #23
  %.pre.i = load i8, ptr %i.a, align 1, !range !16
  %i.t = trunc nuw i8 %.pre.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %i.t, label %bb.d, label %bb.e, !prof !3743

bb.d:                                             ; preds = %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i
  %i.u = load i64, ptr %3, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp eq i64 %i.u, %i.w
  %i.y = icmp ugt i64 %5, %4
  %i.z = and i1 %i.y, %i.x
  %.sroa.0.0.insert.insert.i.i = select i1 %i.z, i16 257, i16 1
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE23EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.e:                                             ; preds = %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i, %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i
  %.0.i35136.i = phi i64 [ %.0.i35.ph.i, %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i ], [ %i.s, %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i ] ; 2 uses
  %i.aa = icmp ult i64 %.0.i35136.i, %5
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = load i64, ptr %3, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = icmp eq i64 %i.ab, %i.ad
  %i.af = icmp ugt i64 %5, %4
  %or.cond.i = and i1 %i.af, %i.ae
  br i1 %or.cond.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE23EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.029.i = phi i64 [ %5, %bb.e ], [ %.0.i35136.i, %bb.f ] ; 4 uses
  %i.ag = add i64 %i.b, 71
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = add i64 %i.b, 79
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = add i64 %i.al, %i.ai                    ; 2 uses
  %i.an = inttoptr i64 %i.am to ptr               ; 3 uses
  %i.ao = load i64, ptr %i.d, align 8
  %i.ap = add i64 %i.ao, 71
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load atomic volatile i32, ptr %i.aq monotonic, align 4
  %i.as = and i32 %i.ar, 16
  %.not121.i = icmp eq i32 %i.as, 0
  %i.at = load i64, ptr %3, align 8               ; 3 uses
  %i.au = and i64 %i.at, 1
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.h, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.g
  %i.aw = add nsw i64 %i.at, -1
  %i.ax = inttoptr i64 %i.aw to ptr               ; 2 uses
  %i.ay = load atomic volatile i64, ptr %i.ax monotonic, align 8
  %i.az = add i64 %i.ay, 11
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load atomic volatile i16, ptr %i.ba monotonic, align 2
  %i.bc = icmp eq i16 %i.bb, 130
  br i1 %i.bc, label %bb.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE23EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.h:                                             ; preds = %bb.g
  %i.bd = lshr i64 %i.at, 32
  %i.be = trunc nuw i64 %i.bd to i32
  %i.bf = sitofp i32 %i.be to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

bb.i:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.bg, align 8
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i: ; preds = %bb.i, %bb.h
  %i.bh = phi double [ %i.bf, %bb.h ], [ %.0.copyload.i.i.i.i.i.i.i, %bb.i ] ; 5 uses
  %i.bi = call double @llvm.fabs.f64(double %i.bh)
  %i.bj = fcmp ueq double %i.bi, +inf
  br i1 %i.bj, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE23EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i
  %i.bk = fcmp ult double %i.bh, f0xC1E0000000000000
  %i.bl = fcmp ugt double %i.bh, f0x41DFFFFFFFC00000
  %.not3.i.not9.i.i = or i1 %i.bl, %i.bk
  br i1 %.not3.i.not9.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE23EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE23EE18ToTypedSearchValueEdPi.exit.i

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE23EE18ToTypedSearchValueEdPi.exit.i: ; preds = %bb.j
  %i.bm = fptosi double %i.bh to i32              ; 4 uses
  %i.bn = sitofp i32 %i.bm to double
  %i.bo = fcmp oeq double %i.bh, %i.bn
  %.not34123.i = icmp ult i64 %4, %.029.i
  %or.cond127.i = and i1 %.not34123.i, %i.bo
  br i1 %or.cond127.i, label %.lr.ph.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE23EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

.lr.ph.i:                                         ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE23EE18ToTypedSearchValueEdPi.exit.i
  br i1 %.not121.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE23EE7GetImplEPiNS1_14IsSharedBufferE.exit.us.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.bp = and i64 %i.am, 3
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.split.i.us, label %.lr.ph.split.i

.lr.ph.split.i.us:                                ; preds = %.lr.ph.split.preheader.i, %bb.k
  %.0124.i.us = phi i64 [ %i.bt, %bb.k ], [ %4, %.lr.ph.split.preheader.i ] ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.0124.i.us
  %i.bs = load atomic i32, ptr %i.br acquire, align 4
  %.not.i.us = icmp eq i32 %i.bs, %i.bm
  br i1 %.not.i.us, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE23EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split.i.us
  %i.bt = add i64 %.0124.i.us, 1                  ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.bt, %.029.i
  br i1 %exitcond.not.i.us, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE23EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.split.i.us, !llvm.loop !4468

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE23EE7GetImplEPiNS1_14IsSharedBufferE.exit.us.i: ; preds = %.lr.ph.i, %bb.l
  %.0124.us.i = phi i64 [ %i.bv, %bb.l ], [ %4, %.lr.ph.i ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.0124.us.i
end_hunk_1
begin_hunk_2_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE24EEENS1_18ElementsKindTraitsILS4_24EEEE12GrowCapacityEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEj:bb.a
; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE24EEENS1_18ElementsKindTraitsILS4_24EEEE3SetENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(none) %1, i64 %2, i64 %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  %i.b = add i64 %i.a, 71
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.a, 79
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, %i.d
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %2 ; 5 uses
  %i.k = add i64 %i.a, 31
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, 71
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i32, ptr %i.o monotonic, align 4
  %i.q = and i32 %i.p, 16
  %.not.i = icmp eq i32 %i.q, 0
  %i.r = add i64 %3, -1
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = tail call noundef i64 @_ZN2v88internal6BigInt8AsUint64EPb(ptr noundef nonnull align 4 dereferenceable(16) %i.s, ptr noundef null) #23 ; 4 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.t, ptr %i.j, align 1
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.u = ptrtoint ptr %i.j to i64
  %i.v = and i64 %i.u, 7
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store atomic i64 %i.t, ptr %i.j monotonic, align 8
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.e:                                             ; preds = %bb.c
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.t to i32
  %.sroa.4.0.extract.shift.i.i = lshr i64 %i.t, 32
  %.sroa.4.0.extract.trunc.i.i = trunc nuw i64 %.sroa.4.0.extract.shift.i.i to i32
  store atomic i32 %.sroa.0.0.extract.trunc.i.i, ptr %i.j monotonic, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store atomic i32 %.sroa.4.0.extract.trunc.i.i, ptr %i.x monotonic, align 4
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE24EEENS1_18ElementsKindTraitsILS4_24EEEE9SetAtomicENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEENS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2, i64 %3) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE24EEENS1_18ElementsKindTraitsILS4_24EEEE10SwapAtomicEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEENS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3, i64 %4) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE24EEENS1_18ElementsKindTraitsILS4_24EEEE20CompareAndSwapAtomicEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEESH_NS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3, i64 %4, i64 %5) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE24EEENS1_18ElementsKindTraitsILS4_24EEEE3AddEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEjNSB_INS0_6ObjectEEENS0_18PropertyAttributesEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i32 %3, ptr nofree readnone captures(none) %4, i32 %5, i32 %6) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE24EEENS1_18ElementsKindTraitsILS4_24EEEE4PushEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEPNS0_16BuiltinArgumentsEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, i32 %4) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE24EEENS1_18ElementsKindTraitsILS4_24EEEE7UnshiftEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEPNS0_16BuiltinArgumentsEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, i32 %4) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE24EEENS1_18ElementsKindTraitsILS4_24EEEE3PopEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE24EEENS1_18ElementsKindTraitsILS4_24EEEE5ShiftEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE24EEENS1_18ElementsKindTraitsILS4_24EEEE9NormalizeEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i, align 8
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE24EEENS1_18ElementsKindTraitsILS4_24EEEE11GetCapacityENS0_6TaggedINS0_8JSObjectEEENS9_INS0_14FixedArrayBaseEEE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1, i64 %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.460", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i64 %1, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1
  %i.b = add i64 %1, 31
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, 71
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i32, ptr %i.f monotonic, align 4
  %i.h = and i32 %i.g, 4
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %1, 39
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 3
  %.not2.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not2.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = call noundef i64 @_ZNK2v88internal12JSTypedArray30GetVariableLengthOrOutOfBoundsERb(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #23
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit

bb.d:                                             ; preds = %bb.b
  %i.n = add i64 %1, 55
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr %i.o, align 8
  %i.q = call noundef i64 @_ZNK2v88internal12JSTypedArray12element_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #23
  %i.r = udiv i64 %i.p, %i.q
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i.i = phi i64 [ %i.r, %bb.d ], [ %i.m, %bb.c ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i64 %.0.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE24EEENS1_18ElementsKindTraitsILS4_24EEEE4FillEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_6ObjectEEEmm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readonly returned captures(ret: address, provenance) %2, ptr nofree readonly captures(none) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 align 2 {
bb.a:
  %.val = load i64, ptr %3, align 8
  %i.a = add i64 %.val, -1
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = tail call noundef i64 @_ZN2v88internal6BigInt8AsUint64EPb(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef null) #23 ; 7 uses
  %i.d = load i64, ptr %2, align 8                ; 3 uses
  %i.e = add i64 %i.d, 71
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.d, 79
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.j, %i.g                       ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %.idx19.i = shl i64 %4, 3                       ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx19.i ; 6 uses
  %.idx.i = shl i64 %5, 3                         ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i ; 3 uses
  %i.o = add i64 %i.d, 31
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8
  %i.r = add i64 %i.q, 71
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i32, ptr %i.s monotonic, align 4
  %i.u = and i32 %i.t, 16
  %.not21.i = icmp eq i32 %i.u, 0
  br i1 %.not21.i, label %bb.b, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %.not23.i = icmp samesign eq i64 %.idx19.i, %.idx.i
  br i1 %.not23.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.c to i32
  %.sroa.4.0.extract.shift.i.i = lshr i64 %i.c, 32
  %.sroa.4.0.extract.trunc.i.i = trunc nuw i64 %.sroa.4.0.extract.shift.i.i to i32
  %i.v = and i64 %i.k, 7
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE7SetImplEPmmNS1_14IsSharedBufferE.exit.i.us, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE7SetImplEPmmNS1_14IsSharedBufferE.exit.i

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE7SetImplEPmmNS1_14IsSharedBufferE.exit.i.us: ; preds = %.lr.ph.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE7SetImplEPmmNS1_14IsSharedBufferE.exit.i.us
  %.024.i.us = phi ptr [ %i.x, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE7SetImplEPmmNS1_14IsSharedBufferE.exit.i.us ], [ %i.m, %.lr.ph.i ] ; 2 uses
  store atomic i64 %i.c, ptr %.024.i.us monotonic, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.024.i.us, i64 8 ; 2 uses
  %.not.i.us = icmp eq ptr %i.x, %i.n
  br i1 %.not.i.us, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE7SetImplEPmmNS1_14IsSharedBufferE.exit.i.us, !llvm.loop !4605

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE7SetImplEPmmNS1_14IsSharedBufferE.exit.i: ; preds = %.lr.ph.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE7SetImplEPmmNS1_14IsSharedBufferE.exit.i
  %.024.i = phi ptr [ %i.z, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE7SetImplEPmmNS1_14IsSharedBufferE.exit.i ], [ %i.m, %.lr.ph.i ] ; 3 uses
  store atomic i32 %.sroa.0.0.extract.trunc.i.i, ptr %.024.i monotonic, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %.024.i, i64 4
  store atomic i32 %.sroa.4.0.extract.trunc.i.i, ptr %i.y monotonic, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.z, %i.n
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE7SetImplEPmmNS1_14IsSharedBufferE.exit.i, !llvm.loop !4605

bb.b:                                             ; preds = %bb.a
  %i.aa = add i64 %i.c, 1
  %or.cond.i = icmp ult i64 %i.aa, 2
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %gepdiff.i = sub nsw i64 %.idx.i, %.idx19.i
  %i.ab = trunc nsw i64 %i.c to i8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 %i.ab, i64 %gepdiff.i, i1 false)
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.d:                                             ; preds = %bb.b
  %.not5.i.i.i.i = icmp samesign eq i64 %.idx19.i, %.idx.i
  br i1 %.not5.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.d
  %i.ac = add i64 %.idx.i, -8
  %i.ad = sub i64 %i.ac, %.idx19.i                ; 2 uses
  %i.ae = lshr exact i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ad, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.af, 4611686018427387900     ; 3 uses
  %i.ag = shl i64 %n.vec, 3
  %i.ah = getelementptr i8, ptr %i.m, i64 %i.ag
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.c, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.ai ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8
  store <2 x i64> %broadcast.splat, ptr %i.aj, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !4606

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i.i.i.i.preheader13

.lr.ph.i.i.i.i.preheader13:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.06.i.i.i.i.ph = phi ptr [ %i.m, %.lr.ph.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader13, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.06.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader13 ] ; 2 uses
  store i64 %i.c, ptr %.06.i.i.i.i, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.al, %i.n
  br i1 %.not.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4607

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE7SetImplEPmmNS1_14IsSharedBufferE.exit.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE7SetImplEPmmNS1_14IsSharedBufferE.exit.i.us, %.lr.ph.i.i.i.i, %middle.block, %.preheader.i, %bb.c, %bb.d
  ret ptr %2
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i16 1, 258) i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE24EEENS1_18ElementsKindTraitsILS4_24EEEE13IncludesValueEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_6ObjectEEEmm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readonly captures(none) %2, ptr nofree readonly captures(none) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.460", align 8 ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = load i64, ptr %2, align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i64 %i.c, ptr %6, align 8
  %i.d = add i64 %i.c, 31
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, 71
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i32, ptr %i.h monotonic, align 4
  %i.j = and i32 %i.i, 4
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %bb.b, label %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.k = add i64 %i.c, 39
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i32, ptr %i.l, align 4
  %i.n = and i32 %i.m, 3
  %.not2.i.i = icmp eq i32 %i.n, 0
  br i1 %.not2.i.i, label %bb.c, label %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i

bb.c:                                             ; preds = %bb.b
  %i.o = add i64 %i.c, 55
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8
  %i.r = call noundef i64 @_ZNK2v88internal12JSTypedArray12element_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #23
  %i.s = udiv i64 %i.q, %i.r
  br label %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i

_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i: ; preds = %bb.c, %bb.a
  %.0.i.ph.i = phi i64 [ 0, %bb.a ], [ %i.s, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.e

_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i: ; preds = %bb.b
  %i.t = call noundef i64 @_ZNK2v88internal12JSTypedArray30GetVariableLengthOrOutOfBoundsERb(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #23
  %.pre.i = load i8, ptr %i.a, align 1, !range !16
  %i.u = trunc nuw i8 %.pre.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %i.u, label %bb.d, label %bb.e, !prof !3743

bb.d:                                             ; preds = %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i
  %i.v = load i64, ptr %3, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.x = load i64, ptr %i.w, align 8
  %i.y = icmp eq i64 %i.v, %i.x
  %i.z = icmp ugt i64 %5, %4
  %i.aa = and i1 %i.z, %i.y
  %.sroa.0.0.insert.insert.i.i = select i1 %i.aa, i16 257, i16 1
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.e:                                             ; preds = %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i, %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i
  %.0.i115.i = phi i64 [ %.0.i.ph.i, %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i ], [ %i.t, %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i ] ; 2 uses
  %i.ab = icmp ult i64 %.0.i115.i, %5
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = load i64, ptr %3, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = icmp eq i64 %i.ac, %i.ae
  %i.ag = icmp ugt i64 %5, %4
  %or.cond.i = and i1 %i.ag, %i.af
  br i1 %or.cond.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.028.i = phi i64 [ %5, %bb.e ], [ %.0.i115.i, %bb.f ] ; 4 uses
  %i.ah = add i64 %i.c, 71
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = add i64 %i.c, 79
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i64, ptr %i.al, align 8
  %i.an = add i64 %i.am, %i.aj                    ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  %i.ap = load i64, ptr %i.e, align 8
  %i.aq = add i64 %i.ap, 71
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load atomic volatile i32, ptr %i.ar monotonic, align 4
  %i.at = and i32 %i.as, 16
  %.not101.i = icmp eq i32 %i.at, 0
  %i.au = load i64, ptr %3, align 8               ; 2 uses
  %i.av = trunc i64 %i.au to i1
  br i1 %i.av, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.g
  %i.aw = add nsw i64 %i.au, -1
  %i.ax = inttoptr i64 %i.aw to ptr               ; 2 uses
  %i.ay = load atomic volatile i64, ptr %i.ax monotonic, align 8
  %i.az = add i64 %i.ay, 11
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load atomic volatile i16, ptr %i.ba monotonic, align 2
  %i.bc = icmp eq i16 %i.bb, 129
  br i1 %i.bc, label %bb.h, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.h:                                             ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.bd = call noundef i64 @_ZN2v88internal6BigInt8AsUint64EPb(ptr noundef nonnull align 4 dereferenceable(16) %i.ax, ptr noundef nonnull %i.b) #23 ; 3 uses
  %i.be = load i8, ptr %i.b, align 1, !range !16, !noundef !17
  %i.bf = trunc nuw i8 %i.be to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %.not33103.i = icmp ult i64 %4, %.028.i
  %or.cond107.i = and i1 %.not33103.i, %i.bf
  br i1 %or.cond107.i, label %.lr.ph.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

.lr.ph.i:                                         ; preds = %bb.h
  br i1 %.not101.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE7GetImplEPmNS1_14IsSharedBufferE.exit.us.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.bg = and i64 %i.an, 7
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.split.i.us, label %.lr.ph.split.i

.lr.ph.split.i.us:                                ; preds = %.lr.ph.split.preheader.i, %bb.i
  %.0104.i.us = phi i64 [ %i.bk, %bb.i ], [ %4, %.lr.ph.split.preheader.i ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.0104.i.us
  %i.bj = load atomic i64, ptr %i.bi acquire, align 8
  %.not.i.us = icmp eq i64 %i.bj, %i.bd
  br i1 %.not.i.us, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.i.us
  %i.bk = add i64 %.0104.i.us, 1                  ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.bk, %.028.i
  br i1 %exitcond.not.i.us, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.split.i.us, !llvm.loop !4608

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE7GetImplEPmNS1_14IsSharedBufferE.exit.us.i: ; preds = %.lr.ph.i, %bb.j
  %.0104.us.i = phi i64 [ %i.bm, %bb.j ], [ %4, %.lr.ph.i ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.0104.us.i
  %.0.copyload.i.i.us.i = load i64, ptr %i.bl, align 1
  %.not.us.i = icmp eq i64 %.0.copyload.i.i.us.i, %i.bd
  br i1 %.not.us.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE7GetImplEPmNS1_14IsSharedBufferE.exit.us.i
  %i.bm = add i64 %.0104.us.i, 1                  ; 2 uses
  %exitcond110.not.i = icmp eq i64 %i.bm, %.028.i
  br i1 %exitcond110.not.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE7GetImplEPmNS1_14IsSharedBufferE.exit.us.i, !llvm.loop !4608

bb.k:                                             ; preds = %.lr.ph.split.i
  %i.bn = add i64 %.0104.i, 1                     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bn, %.028.i
  br i1 %exitcond.not.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE24EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.split.i, !llvm.loop !4608

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.preheader.i, %bb.k
  %.0104.i = phi i64 [ %i.bn, %bb.k ], [ %4, %.lr.ph.split.preheader.i ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.0104.i ; 2 uses
  %i.bp = load atomic i32, ptr %i.bo monotonic, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.br = load atomic i32, ptr %i.bq monotonic, align 4
  %.sroa.4.0.insert.ext.i.i = zext i32 %i.br to i64
end_hunk_2
begin_hunk_3_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE25EEENS1_18ElementsKindTraitsILS4_25EEEE12GrowCapacityEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEj:bb.a
; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE25EEENS1_18ElementsKindTraitsILS4_25EEEE3SetENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(none) %1, i64 %2, i64 %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  %i.b = add i64 %i.a, 71
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.a, 79
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, %i.d
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %2 ; 5 uses
  %i.k = add i64 %i.a, 31
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, 71
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i32, ptr %i.o monotonic, align 4
  %i.q = and i32 %i.p, 16
  %.not.i = icmp eq i32 %i.q, 0
  %i.r = add i64 %3, -1
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = tail call noundef i64 @_ZN2v88internal6BigInt7AsInt64EPb(ptr noundef nonnull align 4 dereferenceable(16) %i.s, ptr noundef null) #23 ; 4 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.t, ptr %i.j, align 1
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.u = ptrtoint ptr %i.j to i64
  %i.v = and i64 %i.u, 7
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store atomic i64 %i.t, ptr %i.j monotonic, align 8
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.e:                                             ; preds = %bb.c
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.t to i32
  %.sroa.4.0.extract.shift.i.i = lshr i64 %i.t, 32
  %.sroa.4.0.extract.trunc.i.i = trunc nuw i64 %.sroa.4.0.extract.shift.i.i to i32
  store atomic i32 %.sroa.0.0.extract.trunc.i.i, ptr %i.j monotonic, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store atomic i32 %.sroa.4.0.extract.trunc.i.i, ptr %i.x monotonic, align 4
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE25EEENS1_18ElementsKindTraitsILS4_25EEEE9SetAtomicENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEENS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2, i64 %3) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE25EEENS1_18ElementsKindTraitsILS4_25EEEE10SwapAtomicEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEENS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3, i64 %4) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE25EEENS1_18ElementsKindTraitsILS4_25EEEE20CompareAndSwapAtomicEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEESH_NS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3, i64 %4, i64 %5) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE25EEENS1_18ElementsKindTraitsILS4_25EEEE3AddEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEjNSB_INS0_6ObjectEEENS0_18PropertyAttributesEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i32 %3, ptr nofree readnone captures(none) %4, i32 %5, i32 %6) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE25EEENS1_18ElementsKindTraitsILS4_25EEEE4PushEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEPNS0_16BuiltinArgumentsEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, i32 %4) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE25EEENS1_18ElementsKindTraitsILS4_25EEEE7UnshiftEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEPNS0_16BuiltinArgumentsEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, i32 %4) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE25EEENS1_18ElementsKindTraitsILS4_25EEEE3PopEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE25EEENS1_18ElementsKindTraitsILS4_25EEEE5ShiftEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE25EEENS1_18ElementsKindTraitsILS4_25EEEE9NormalizeEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i, align 8
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE25EEENS1_18ElementsKindTraitsILS4_25EEEE11GetCapacityENS0_6TaggedINS0_8JSObjectEEENS9_INS0_14FixedArrayBaseEEE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1, i64 %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.460", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i64 %1, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1
  %i.b = add i64 %1, 31
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, 71
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i32, ptr %i.f monotonic, align 4
  %i.h = and i32 %i.g, 4
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %1, 39
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 3
  %.not2.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not2.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = call noundef i64 @_ZNK2v88internal12JSTypedArray30GetVariableLengthOrOutOfBoundsERb(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #23
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit

bb.d:                                             ; preds = %bb.b
  %i.n = add i64 %1, 55
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr %i.o, align 8
  %i.q = call noundef i64 @_ZNK2v88internal12JSTypedArray12element_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #23
  %i.r = udiv i64 %i.p, %i.q
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i.i = phi i64 [ %i.r, %bb.d ], [ %i.m, %bb.c ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i64 %.0.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE25EEENS1_18ElementsKindTraitsILS4_25EEEE4FillEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_6ObjectEEEmm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readonly returned captures(ret: address, provenance) %2, ptr nofree readonly captures(none) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 align 2 {
bb.a:
  %.val = load i64, ptr %3, align 8
  %i.a = add i64 %.val, -1
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = tail call noundef i64 @_ZN2v88internal6BigInt7AsInt64EPb(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef null) #23 ; 7 uses
  %i.d = load i64, ptr %2, align 8                ; 3 uses
  %i.e = add i64 %i.d, 71
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.d, 79
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.j, %i.g                       ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %.idx19.i = shl i64 %4, 3                       ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx19.i ; 6 uses
  %.idx.i = shl i64 %5, 3                         ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i ; 3 uses
  %i.o = add i64 %i.d, 31
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8
  %i.r = add i64 %i.q, 71
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i32, ptr %i.s monotonic, align 4
  %i.u = and i32 %i.t, 16
  %.not21.i = icmp eq i32 %i.u, 0
  br i1 %.not21.i, label %bb.b, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %.not23.i = icmp samesign eq i64 %.idx19.i, %.idx.i
  br i1 %.not23.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.c to i32
  %.sroa.4.0.extract.shift.i.i = lshr i64 %i.c, 32
  %.sroa.4.0.extract.trunc.i.i = trunc nuw i64 %.sroa.4.0.extract.shift.i.i to i32
  %i.v = and i64 %i.k, 7
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE7SetImplEPllNS1_14IsSharedBufferE.exit.i.us, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE7SetImplEPllNS1_14IsSharedBufferE.exit.i

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE7SetImplEPllNS1_14IsSharedBufferE.exit.i.us: ; preds = %.lr.ph.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE7SetImplEPllNS1_14IsSharedBufferE.exit.i.us
  %.024.i.us = phi ptr [ %i.x, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE7SetImplEPllNS1_14IsSharedBufferE.exit.i.us ], [ %i.m, %.lr.ph.i ] ; 2 uses
  store atomic i64 %i.c, ptr %.024.i.us monotonic, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.024.i.us, i64 8 ; 2 uses
  %.not.i.us = icmp eq ptr %i.x, %i.n
  br i1 %.not.i.us, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE7SetImplEPllNS1_14IsSharedBufferE.exit.i.us, !llvm.loop !4660

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE7SetImplEPllNS1_14IsSharedBufferE.exit.i: ; preds = %.lr.ph.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE7SetImplEPllNS1_14IsSharedBufferE.exit.i
  %.024.i = phi ptr [ %i.z, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE7SetImplEPllNS1_14IsSharedBufferE.exit.i ], [ %i.m, %.lr.ph.i ] ; 3 uses
  store atomic i32 %.sroa.0.0.extract.trunc.i.i, ptr %.024.i monotonic, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %.024.i, i64 4
  store atomic i32 %.sroa.4.0.extract.trunc.i.i, ptr %i.y monotonic, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.z, %i.n
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE7SetImplEPllNS1_14IsSharedBufferE.exit.i, !llvm.loop !4660

bb.b:                                             ; preds = %bb.a
  %i.aa = add i64 %i.c, 1
  %or.cond.i = icmp ult i64 %i.aa, 2
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %gepdiff.i = sub nsw i64 %.idx.i, %.idx19.i
  %i.ab = trunc nsw i64 %i.c to i8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 %i.ab, i64 %gepdiff.i, i1 false)
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.d:                                             ; preds = %bb.b
  %.not5.i.i.i.i = icmp samesign eq i64 %.idx19.i, %.idx.i
  br i1 %.not5.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.d
  %i.ac = add i64 %.idx.i, -8
  %i.ad = sub i64 %i.ac, %.idx19.i                ; 2 uses
  %i.ae = lshr exact i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ad, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.af, 4611686018427387900     ; 3 uses
  %i.ag = shl i64 %n.vec, 3
  %i.ah = getelementptr i8, ptr %i.m, i64 %i.ag
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.c, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.ai ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8
  store <2 x i64> %broadcast.splat, ptr %i.aj, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !4661

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i.i.i.i.preheader13

.lr.ph.i.i.i.i.preheader13:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.06.i.i.i.i.ph = phi ptr [ %i.m, %.lr.ph.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader13, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.06.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader13 ] ; 2 uses
  store i64 %i.c, ptr %.06.i.i.i.i, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.al, %i.n
  br i1 %.not.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4662

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE7SetImplEPllNS1_14IsSharedBufferE.exit.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE7SetImplEPllNS1_14IsSharedBufferE.exit.i.us, %.lr.ph.i.i.i.i, %middle.block, %.preheader.i, %bb.c, %bb.d
  ret ptr %2
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i16 1, 258) i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE25EEENS1_18ElementsKindTraitsILS4_25EEEE13IncludesValueEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_6ObjectEEEmm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readonly captures(none) %2, ptr nofree readonly captures(none) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.460", align 8 ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = load i64, ptr %2, align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i64 %i.c, ptr %6, align 8
  %i.d = add i64 %i.c, 31
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, 71
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i32, ptr %i.h monotonic, align 4
  %i.j = and i32 %i.i, 4
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %bb.b, label %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.k = add i64 %i.c, 39
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i32, ptr %i.l, align 4
  %i.n = and i32 %i.m, 3
  %.not2.i.i = icmp eq i32 %i.n, 0
  br i1 %.not2.i.i, label %bb.c, label %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i

bb.c:                                             ; preds = %bb.b
  %i.o = add i64 %i.c, 55
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8
  %i.r = call noundef i64 @_ZNK2v88internal12JSTypedArray12element_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #23
  %i.s = udiv i64 %i.q, %i.r
  br label %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i

_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i: ; preds = %bb.c, %bb.a
  %.0.i.ph.i = phi i64 [ 0, %bb.a ], [ %i.s, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.e

_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i: ; preds = %bb.b
  %i.t = call noundef i64 @_ZNK2v88internal12JSTypedArray30GetVariableLengthOrOutOfBoundsERb(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #23
  %.pre.i = load i8, ptr %i.a, align 1, !range !16
  %i.u = trunc nuw i8 %.pre.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %i.u, label %bb.d, label %bb.e, !prof !3743

bb.d:                                             ; preds = %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i
  %i.v = load i64, ptr %3, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.x = load i64, ptr %i.w, align 8
  %i.y = icmp eq i64 %i.v, %i.x
  %i.z = icmp ugt i64 %5, %4
  %i.aa = and i1 %i.z, %i.y
  %.sroa.0.0.insert.insert.i.i = select i1 %i.aa, i16 257, i16 1
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.e:                                             ; preds = %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i, %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i
  %.0.i115.i = phi i64 [ %.0.i.ph.i, %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i ], [ %i.t, %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i ] ; 2 uses
  %i.ab = icmp ult i64 %.0.i115.i, %5
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = load i64, ptr %3, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = icmp eq i64 %i.ac, %i.ae
  %i.ag = icmp ugt i64 %5, %4
  %or.cond.i = and i1 %i.ag, %i.af
  br i1 %or.cond.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.028.i = phi i64 [ %5, %bb.e ], [ %.0.i115.i, %bb.f ] ; 4 uses
  %i.ah = add i64 %i.c, 71
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = add i64 %i.c, 79
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i64, ptr %i.al, align 8
  %i.an = add i64 %i.am, %i.aj                    ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  %i.ap = load i64, ptr %i.e, align 8
  %i.aq = add i64 %i.ap, 71
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load atomic volatile i32, ptr %i.ar monotonic, align 4
  %i.at = and i32 %i.as, 16
  %.not101.i = icmp eq i32 %i.at, 0
  %i.au = load i64, ptr %3, align 8               ; 2 uses
  %i.av = trunc i64 %i.au to i1
  br i1 %i.av, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.g
  %i.aw = add nsw i64 %i.au, -1
  %i.ax = inttoptr i64 %i.aw to ptr               ; 2 uses
  %i.ay = load atomic volatile i64, ptr %i.ax monotonic, align 8
  %i.az = add i64 %i.ay, 11
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load atomic volatile i16, ptr %i.ba monotonic, align 2
  %i.bc = icmp eq i16 %i.bb, 129
  br i1 %i.bc, label %bb.h, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.h:                                             ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.bd = call noundef i64 @_ZN2v88internal6BigInt7AsInt64EPb(ptr noundef nonnull align 4 dereferenceable(16) %i.ax, ptr noundef nonnull %i.b) #23 ; 3 uses
  %i.be = load i8, ptr %i.b, align 1, !range !16, !noundef !17
  %i.bf = trunc nuw i8 %i.be to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %.not33103.i = icmp ult i64 %4, %.028.i
  %or.cond107.i = and i1 %.not33103.i, %i.bf
  br i1 %or.cond107.i, label %.lr.ph.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

.lr.ph.i:                                         ; preds = %bb.h
  br i1 %.not101.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE7GetImplEPlNS1_14IsSharedBufferE.exit.us.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.bg = and i64 %i.an, 7
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.split.i.us, label %.lr.ph.split.i

.lr.ph.split.i.us:                                ; preds = %.lr.ph.split.preheader.i, %bb.i
  %.0104.i.us = phi i64 [ %i.bk, %bb.i ], [ %4, %.lr.ph.split.preheader.i ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.0104.i.us
  %i.bj = load atomic i64, ptr %i.bi acquire, align 8
  %.not.i.us = icmp eq i64 %i.bj, %i.bd
  br i1 %.not.i.us, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.i.us
  %i.bk = add i64 %.0104.i.us, 1                  ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.bk, %.028.i
  br i1 %exitcond.not.i.us, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.split.i.us, !llvm.loop !4663

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE7GetImplEPlNS1_14IsSharedBufferE.exit.us.i: ; preds = %.lr.ph.i, %bb.j
  %.0104.us.i = phi i64 [ %i.bm, %bb.j ], [ %4, %.lr.ph.i ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.0104.us.i
  %.0.copyload.i.i.us.i = load i64, ptr %i.bl, align 1
  %.not.us.i = icmp eq i64 %.0.copyload.i.i.us.i, %i.bd
  br i1 %.not.us.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE7GetImplEPlNS1_14IsSharedBufferE.exit.us.i
  %i.bm = add i64 %.0104.us.i, 1                  ; 2 uses
  %exitcond110.not.i = icmp eq i64 %i.bm, %.028.i
  br i1 %exitcond110.not.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE7GetImplEPlNS1_14IsSharedBufferE.exit.us.i, !llvm.loop !4663

bb.k:                                             ; preds = %.lr.ph.split.i
  %i.bn = add i64 %.0104.i, 1                     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bn, %.028.i
  br i1 %exitcond.not.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE25EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.split.i, !llvm.loop !4663

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.preheader.i, %bb.k
  %.0104.i = phi i64 [ %i.bn, %bb.k ], [ %4, %.lr.ph.split.preheader.i ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.0104.i ; 2 uses
  %i.bp = load atomic i32, ptr %i.bo monotonic, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.br = load atomic i32, ptr %i.bq monotonic, align 4
  %.sroa.4.0.insert.ext.i.i = zext i32 %i.br to i64
end_hunk_3
begin_hunk_4_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE27EEENS1_18ElementsKindTraitsILS4_27EEEE10SwapAtomicEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEENS_15SeqCstAccessTagE:bb.a

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE27EEENS1_18ElementsKindTraitsILS4_27EEEE20CompareAndSwapAtomicEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEESH_NS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3, i64 %4, i64 %5) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE27EEENS1_18ElementsKindTraitsILS4_27EEEE3AddEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEjNSB_INS0_6ObjectEEENS0_18PropertyAttributesEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i32 %3, ptr nofree readnone captures(none) %4, i32 %5, i32 %6) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE27EEENS1_18ElementsKindTraitsILS4_27EEEE4PushEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEPNS0_16BuiltinArgumentsEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, i32 %4) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE27EEENS1_18ElementsKindTraitsILS4_27EEEE7UnshiftEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEPNS0_16BuiltinArgumentsEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, i32 %4) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE27EEENS1_18ElementsKindTraitsILS4_27EEEE3PopEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE27EEENS1_18ElementsKindTraitsILS4_27EEEE5ShiftEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE27EEENS1_18ElementsKindTraitsILS4_27EEEE9NormalizeEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i, align 8
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE27EEENS1_18ElementsKindTraitsILS4_27EEEE11GetCapacityENS0_6TaggedINS0_8JSObjectEEENS9_INS0_14FixedArrayBaseEEE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1, i64 %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.460", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i64 %1, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1
  %i.b = add i64 %1, 31
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, 71
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i32, ptr %i.f monotonic, align 4
  %i.h = and i32 %i.g, 4
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %1, 39
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 3
  %.not2.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not2.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = call noundef i64 @_ZNK2v88internal12JSTypedArray30GetVariableLengthOrOutOfBoundsERb(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #23
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit

bb.d:                                             ; preds = %bb.b
  %i.n = add i64 %1, 55
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr %i.o, align 8
  %i.q = call noundef i64 @_ZNK2v88internal12JSTypedArray12element_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #23
  %i.r = udiv i64 %i.p, %i.q
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i.i = phi i64 [ %i.r, %bb.d ], [ %i.m, %bb.c ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i64 %.0.i.i.i
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE27EEENS1_18ElementsKindTraitsILS4_27EEEE4FillEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_6ObjectEEEmm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readonly returned captures(ret: address, provenance) %2, ptr nofree readonly captures(none) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #10 align 2 {
bb.a:
  %.val = load i64, ptr %3, align 8               ; 3 uses
  %i.a = and i64 %.val, 1
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %.val, 32
  %i.d = trunc nuw i64 %i.c to i32
  %i.e = sitofp i32 %i.d to float
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromHandleENS0_12DirectHandleINS0_6ObjectEEEPb.exit.i

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i: ; preds = %bb.a
  %i.f = add nsw i64 %.val, -1
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = load atomic volatile i64, ptr %i.g monotonic, align 8
  %i.i = add i64 %i.h, 11
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i16, ptr %i.j monotonic, align 2
  %i.l = icmp eq i16 %i.k, 130
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.m, align 8 ; 9 uses
  %i.n = fcmp ogt double %.0.copyload.i.i.i.i.i.i.i, f0x47EFFFFFE0000000 ; 2 uses
  br i1 %i.l, label %bb.c, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i

bb.c:                                             ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = fcmp ugt double %.0.copyload.i.i.i.i.i.i.i, f0x47EFFFFFEFFFFFFF
  br i1 %i.o, label %bb.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromHandleENS0_12DirectHandleINS0_6ObjectEEEPb.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = fcmp olt double %.0.copyload.i.i.i.i.i.i.i, f0xC7EFFFFFE0000000
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = fcmp ult double %.0.copyload.i.i.i.i.i.i.i, f0xC7EFFFFFEFFFFFFF
  br i1 %i.q, label %bb.l, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromHandleENS0_12DirectHandleINS0_6ObjectEEEPb.exit.i

bb.g:                                             ; preds = %bb.e
  %i.r = fptrunc double %.0.copyload.i.i.i.i.i.i.i to float
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromHandleENS0_12DirectHandleINS0_6ObjectEEEPb.exit.i

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i: ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i
  br i1 %i.n, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i
  %i.s = fcmp ugt double %.0.copyload.i.i.i.i.i.i.i, f0x47EFFFFFEFFFFFFF
  br i1 %i.s, label %bb.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromHandleENS0_12DirectHandleINS0_6ObjectEEEPb.exit.i

bb.i:                                             ; preds = %bb.h, %bb.d
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromHandleENS0_12DirectHandleINS0_6ObjectEEEPb.exit.i

bb.j:                                             ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i
  %i.t = fcmp olt double %.0.copyload.i.i.i.i.i.i.i, f0xC7EFFFFFE0000000
  br i1 %i.t, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.u = fcmp ult double %.0.copyload.i.i.i.i.i.i.i, f0xC7EFFFFFEFFFFFFF
  br i1 %i.u, label %bb.l, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromHandleENS0_12DirectHandleINS0_6ObjectEEEPb.exit.i

bb.l:                                             ; preds = %bb.k, %bb.f
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromHandleENS0_12DirectHandleINS0_6ObjectEEEPb.exit.i

bb.m:                                             ; preds = %bb.j
  %i.v = fptrunc double %.0.copyload.i.i.i.i.i.i.i to float
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromHandleENS0_12DirectHandleINS0_6ObjectEEEPb.exit.i

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromHandleENS0_12DirectHandleINS0_6ObjectEEEPb.exit.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.b
  %.0.i.i.i = phi float [ %i.e, %bb.b ], [ f0xFF7FFFFF, %bb.f ], [ %i.r, %bb.g ], [ f0xFF7FFFFF, %bb.k ], [ f0x7F7FFFFF, %bb.d ], [ -inf, %bb.l ], [ %i.v, %bb.m ], [ +inf, %bb.i ], [ f0x7F7FFFFF, %bb.h ] ; 6 uses
  %i.w = load i64, ptr %2, align 8                ; 3 uses
  %i.x = add i64 %i.w, 71
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = add i64 %i.w, 79
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add i64 %i.ac, %i.z                     ; 2 uses
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %.idx19.i = shl i64 %4, 2                       ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx19.i ; 6 uses
  %.idx.i = shl i64 %5, 2                         ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx.i ; 3 uses
  %i.ah = add i64 %i.w, 31
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = add i64 %i.aj, 71
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i32, ptr %i.al monotonic, align 4
  %i.an = and i32 %i.am, 16
  %.not22.i = icmp eq i32 %i.an, 0
  br i1 %.not22.i, label %bb.n, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromHandleENS0_12DirectHandleINS0_6ObjectEEEPb.exit.i
  %.not24.i = icmp samesign eq i64 %.idx19.i, %.idx.i
  br i1 %.not24.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ao = bitcast float %.0.i.i.i to i32
  %i.ap = and i64 %i.ad, 3
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.us, label %.loopexit.i.i

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.us: ; preds = %.lr.ph.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.us
  %.025.i.us = phi ptr [ %i.ar, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.us ], [ %i.af, %.lr.ph.i ] ; 2 uses
  store atomic float %.0.i.i.i, ptr %.025.i.us monotonic, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %.025.i.us, i64 4 ; 2 uses
  %.not.i.us = icmp eq ptr %i.ar, %i.ag
  br i1 %.not.i.us, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.us, !llvm.loop !4837

.loopexit.i.i:                                    ; preds = %.lr.ph.i, %.loopexit.i.i
  %.025.i = phi ptr [ %i.as, %.loopexit.i.i ], [ %i.af, %.lr.ph.i ] ; 2 uses
  store atomic i32 %i.ao, ptr %.025.i monotonic, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %.025.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.as, %i.ag
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.loopexit.i.i, !llvm.loop !4837

bb.n:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE10FromHandleENS0_12DirectHandleINS0_6ObjectEEEPb.exit.i
  %i.at = fcmp oeq float %.0.i.i.i, 0.000000e+00
  br i1 %i.at, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.au = fpext float %.0.i.i.i to double
  %i.av = tail call noundef i1 @llvm.is.fpclass.f64(double %i.au, /* (nzero) */ i32 32)
  br i1 %i.av, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %gepdiff.i = sub nsw i64 %.idx.i, %.idx19.i
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.af, i8 0, i64 %gepdiff.i, i1 false)
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.q:                                             ; preds = %bb.o, %bb.n
  %.not6.i.i.i.i = icmp samesign eq i64 %.idx19.i, %.idx.i
  br i1 %.not6.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.q
  %i.aw = add i64 %.idx.i, -4
  %i.ax = sub i64 %i.aw, %.idx19.i                ; 2 uses
  %i.ay = lshr exact i64 %i.ax, 2
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ax, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.az, 9223372036854775800     ; 3 uses
  %i.ba = shl i64 %n.vec, 2
  %i.bb = getelementptr i8, ptr %i.af, i64 %i.ba
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.0.i.i.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.bc ; 2 uses
  %i.bd = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %broadcast.splat, ptr %next.gep, align 4
  store <4 x float> %broadcast.splat, ptr %i.bd, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !4838

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i.i.i.i.preheader13

.lr.ph.i.i.i.i.preheader13:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.i.i.preheader ], [ %i.bb, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader13, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i ], [ %.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader13 ] ; 2 uses
  store float %.0.i.i.i, ptr %.07.i.i.i.i, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bf, %i.ag
  br i1 %.not.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4839

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit: ; preds = %.loopexit.i.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.us, %.lr.ph.i.i.i.i, %middle.block, %.preheader.i, %bb.p, %bb.q
  ret ptr %2
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i16 1, 258) i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE27EEENS1_18ElementsKindTraitsILS4_27EEEE13IncludesValueEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_6ObjectEEEmm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readonly captures(none) %2, ptr nofree readonly captures(none) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.460", align 8 ; 5 uses
  %i.b = load i64, ptr %2, align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i64 %i.b, ptr %6, align 8
  %i.c = add i64 %i.b, 31
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add i64 %i.e, 71
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i32, ptr %i.g monotonic, align 4
  %i.i = and i32 %i.h, 4
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.b, label %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i

bb.b:                                             ; preds = %bb.a
  %i.j = add i64 %i.b, 39
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 3
  %.not2.i.i = icmp eq i32 %i.m, 0
  br i1 %.not2.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = call noundef i64 @_ZNK2v88internal12JSTypedArray30GetVariableLengthOrOutOfBoundsERb(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #23
  br label %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i

bb.d:                                             ; preds = %bb.b
  %i.o = add i64 %i.b, 55
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8
  %i.r = call noundef i64 @_ZNK2v88internal12JSTypedArray12element_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #23
  %i.s = udiv i64 %i.q, %i.r
  br label %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i

_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %.0.i49.i = phi i64 [ %i.s, %bb.d ], [ %i.n, %bb.c ], [ 0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.t = load i8, ptr %i.a, align 1, !range !16, !noundef !17
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %bb.f, !prof !5

bb.e:                                             ; preds = %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i
  %i.v = load i64, ptr %3, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.x = load i64, ptr %i.w, align 8
  %i.y = icmp eq i64 %i.v, %i.x
  %i.z = icmp ugt i64 %5, %4
  %i.aa = and i1 %i.z, %i.y
  %.sroa.0.0.insert.insert.i.i = select i1 %i.aa, i16 257, i16 1
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.f:                                             ; preds = %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i
  %i.ab = icmp ult i64 %.0.i49.i, %5
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = load i64, ptr %3, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = icmp eq i64 %i.ac, %i.ae
  %i.ag = icmp ugt i64 %5, %4
  %or.cond.i = and i1 %i.ag, %i.af
  br i1 %or.cond.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.043.i = phi i64 [ %5, %bb.f ], [ %.0.i49.i, %bb.g ] ; 8 uses
  %i.ah = add i64 %i.b, 71
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = add i64 %i.b, 79
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i64, ptr %i.al, align 8
  %i.an = add i64 %i.am, %i.aj                    ; 3 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 6 uses
  %i.ap = load i64, ptr %i.d, align 8
  %i.aq = add i64 %i.ap, 71
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load atomic volatile i32, ptr %i.ar monotonic, align 4
  %i.at = and i32 %i.as, 16
  %.not149.i = icmp eq i32 %i.at, 0               ; 2 uses
  %i.au = load i64, ptr %3, align 8               ; 3 uses
  %i.av = and i64 %i.au, 1
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.h
  %i.ax = add nsw i64 %i.au, -1
  %i.ay = inttoptr i64 %i.ax to ptr               ; 2 uses
  %i.az = load atomic volatile i64, ptr %i.ay monotonic, align 8
  %i.ba = add i64 %i.az, 11
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load atomic volatile i16, ptr %i.bb monotonic, align 2
  %i.bd = icmp eq i16 %i.bc, 130
  br i1 %i.bd, label %bb.j, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.i:                                             ; preds = %bb.h
  %i.be = lshr i64 %i.au, 32
  %i.bf = trunc nuw i64 %i.be to i32
  %i.bg = sitofp i32 %i.bf to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

bb.j:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.bh, align 8
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i: ; preds = %bb.j, %bb.i
  %i.bi = phi double [ %i.bg, %bb.i ], [ %.0.copyload.i.i.i.i.i.i.i, %bb.j ] ; 4 uses
  %i.bj = call double @llvm.fabs.f64(double %i.bi) ; 2 uses
  %i.bk = fcmp ueq double %i.bj, +inf
  br i1 %i.bk, label %bb.k, label %bb.o

bb.k:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i
  %i.bl = fcmp uno double %i.bi, 0.000000e+00
  br i1 %i.bl, label %.preheader.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE18ToTypedSearchValueEdPf.exit.i

.preheader.i:                                     ; preds = %bb.k
  %.not158.i = icmp ult i64 %4, %.043.i
  br i1 %.not158.i, label %.lr.ph160.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

.lr.ph160.i:                                      ; preds = %.preheader.i
  br i1 %.not149.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7GetImplEPfNS1_14IsSharedBufferE.exit.us.i, label %.lr.ph160.split.preheader.i

.lr.ph160.split.preheader.i:                      ; preds = %.lr.ph160.i
  %i.bm = and i64 %i.an, 3
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph160.split.i.us, label %.lr.ph160.split.i

.lr.ph160.split.i.us:                             ; preds = %.lr.ph160.split.preheader.i, %bb.l
  %.042159.i.us = phi i64 [ %i.br, %bb.l ], [ %4, %.lr.ph160.split.preheader.i ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.042159.i.us
  %i.bp = load atomic float, ptr %i.bo acquire, align 4
  %i.bq = fcmp uno float %i.bp, 0.000000e+00
  br i1 %i.bq, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph160.split.i.us
  %i.br = add i64 %.042159.i.us, 1                ; 2 uses
  %exitcond173.not.i.us = icmp eq i64 %i.br, %.043.i
  br i1 %exitcond173.not.i.us, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph160.split.i.us, !llvm.loop !4840

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7GetImplEPfNS1_14IsSharedBufferE.exit.us.i: ; preds = %.lr.ph160.i, %bb.m
  %.042159.us.i = phi i64 [ %i.bu, %bb.m ], [ %4, %.lr.ph160.i ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.042159.us.i
  %.0.copyload.i.i.us.i = load float, ptr %i.bs, align 1
  %i.bt = fcmp uno float %.0.copyload.i.i.us.i, 0.000000e+00
  br i1 %i.bt, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7GetImplEPfNS1_14IsSharedBufferE.exit.us.i
  %i.bu = add i64 %.042159.us.i, 1                ; 2 uses
  %exitcond174.not.i = icmp eq i64 %i.bu, %.043.i
  br i1 %exitcond174.not.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE27EE7GetImplEPfNS1_14IsSharedBufferE.exit.us.i, !llvm.loop !4840
end_hunk_4
begin_hunk_5_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE28EEENS1_18ElementsKindTraitsILS4_28EEEE3SetENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE:bb.a

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE10FromObjectENS0_6TaggedINS0_6ObjectEEEPb.exit.i: ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %bb.b
  %.0.i.i = phi double [ %i.v, %bb.b ], [ %.0.copyload.i.i.i.i.i.i, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i ] ; 3 uses
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE10FromObjectENS0_6TaggedINS0_6ObjectEEEPb.exit.i
  store double %.0.i.i, ptr %i.j, align 1
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.d:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE10FromObjectENS0_6TaggedINS0_6ObjectEEEPb.exit.i
  %i.ad = ptrtoint ptr %i.j to i64
  %i.ae = and i64 %i.ad, 7
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store atomic double %.0.i.i, ptr %i.j monotonic, align 8
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = bitcast double %.0.i.i to i64           ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.ag to i32
  store atomic i32 %.sroa.0.0.extract.trunc.i.i, ptr %i.j monotonic, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.sroa.0.4.extract.shift.i.i = lshr i64 %i.ag, 32
  %.sroa.0.4.extract.trunc.i.i = trunc nuw i64 %.sroa.0.4.extract.shift.i.i to i32
  store atomic i32 %.sroa.0.4.extract.trunc.i.i, ptr %i.ah monotonic, align 4
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.c, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE28EEENS1_18ElementsKindTraitsILS4_28EEEE9SetAtomicENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEENS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2, i64 %3) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE28EEENS1_18ElementsKindTraitsILS4_28EEEE10SwapAtomicEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEENS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3, i64 %4) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE28EEENS1_18ElementsKindTraitsILS4_28EEEE20CompareAndSwapAtomicEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEESH_NS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3, i64 %4, i64 %5) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE28EEENS1_18ElementsKindTraitsILS4_28EEEE3AddEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEjNSB_INS0_6ObjectEEENS0_18PropertyAttributesEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i32 %3, ptr nofree readnone captures(none) %4, i32 %5, i32 %6) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE28EEENS1_18ElementsKindTraitsILS4_28EEEE4PushEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEPNS0_16BuiltinArgumentsEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, i32 %4) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE28EEENS1_18ElementsKindTraitsILS4_28EEEE7UnshiftEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEPNS0_16BuiltinArgumentsEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, i32 %4) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE28EEENS1_18ElementsKindTraitsILS4_28EEEE3PopEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE28EEENS1_18ElementsKindTraitsILS4_28EEEE5ShiftEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE28EEENS1_18ElementsKindTraitsILS4_28EEEE9NormalizeEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i, align 8
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE28EEENS1_18ElementsKindTraitsILS4_28EEEE11GetCapacityENS0_6TaggedINS0_8JSObjectEEENS9_INS0_14FixedArrayBaseEEE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1, i64 %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.460", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i64 %1, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1
  %i.b = add i64 %1, 31
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, 71
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i32, ptr %i.f monotonic, align 4
  %i.h = and i32 %i.g, 4
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %1, 39
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 3
  %.not2.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not2.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = call noundef i64 @_ZNK2v88internal12JSTypedArray30GetVariableLengthOrOutOfBoundsERb(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #23
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit

bb.d:                                             ; preds = %bb.b
  %i.n = add i64 %1, 55
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr %i.o, align 8
  %i.q = call noundef i64 @_ZNK2v88internal12JSTypedArray12element_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #23
  %i.r = udiv i64 %i.p, %i.q
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i.i = phi i64 [ %i.r, %bb.d ], [ %i.m, %bb.c ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i64 %.0.i.i.i
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE28EEENS1_18ElementsKindTraitsILS4_28EEEE4FillEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_6ObjectEEEmm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readonly returned captures(ret: address, provenance) %2, ptr nofree readonly captures(none) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #10 align 2 {
bb.a:
  %.val = load i64, ptr %3, align 8               ; 3 uses
  %i.a = and i64 %.val, 1
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %.val, 32
  %i.d = trunc nuw i64 %i.c to i32
  %i.e = sitofp i32 %i.d to double
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE10FromHandleENS0_12DirectHandleINS0_6ObjectEEEPb.exit.i

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i: ; preds = %bb.a
  %i.f = add nsw i64 %.val, -1
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = load atomic volatile i64, ptr %i.g monotonic, align 8
  %i.i = add i64 %i.h, 11
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i16, ptr %i.j monotonic, align 2 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.l, align 8
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE10FromHandleENS0_12DirectHandleINS0_6ObjectEEEPb.exit.i

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE10FromHandleENS0_12DirectHandleINS0_6ObjectEEEPb.exit.i: ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, %bb.b
  %.0.i.i.i = phi double [ %i.e, %bb.b ], [ %.0.copyload.i.i.i.i.i.i.i, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i ] ; 6 uses
  %i.m = load i64, ptr %2, align 8                ; 3 uses
  %i.n = add i64 %i.m, 71
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr %i.o, align 8
  %i.q = add i64 %i.m, 79
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load i64, ptr %i.r, align 8
  %i.t = add i64 %i.s, %i.p                       ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %.idx19.i = shl i64 %4, 3                       ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx19.i ; 6 uses
  %.idx.i = shl i64 %5, 3                         ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i ; 3 uses
  %i.x = add i64 %i.m, 31
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = add i64 %i.z, 71
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i32, ptr %i.ab monotonic, align 4
  %i.ad = and i32 %i.ac, 16
  %.not22.i = icmp eq i32 %i.ad, 0
  br i1 %.not22.i, label %bb.c, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE10FromHandleENS0_12DirectHandleINS0_6ObjectEEEPb.exit.i
  %.not24.i = icmp samesign eq i64 %.idx19.i, %.idx.i
  br i1 %.not24.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ae = bitcast double %.0.i.i.i to i64         ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.ae to i32
  %.sroa.0.4.extract.shift.i.i = lshr i64 %i.ae, 32
  %.sroa.0.4.extract.trunc.i.i = trunc nuw i64 %.sroa.0.4.extract.shift.i.i to i32
  %i.af = and i64 %i.t, 7
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE7SetImplEPddNS1_14IsSharedBufferE.exit.i.us, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE7SetImplEPddNS1_14IsSharedBufferE.exit.i

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE7SetImplEPddNS1_14IsSharedBufferE.exit.i.us: ; preds = %.lr.ph.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE7SetImplEPddNS1_14IsSharedBufferE.exit.i.us
  %.025.i.us = phi ptr [ %i.ah, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE7SetImplEPddNS1_14IsSharedBufferE.exit.i.us ], [ %i.v, %.lr.ph.i ] ; 2 uses
  store atomic double %.0.i.i.i, ptr %.025.i.us monotonic, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.025.i.us, i64 8 ; 2 uses
  %.not.i.us = icmp eq ptr %i.ah, %i.w
  br i1 %.not.i.us, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE7SetImplEPddNS1_14IsSharedBufferE.exit.i.us, !llvm.loop !5003

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE7SetImplEPddNS1_14IsSharedBufferE.exit.i: ; preds = %.lr.ph.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE7SetImplEPddNS1_14IsSharedBufferE.exit.i
  %.025.i = phi ptr [ %i.aj, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE7SetImplEPddNS1_14IsSharedBufferE.exit.i ], [ %i.v, %.lr.ph.i ] ; 3 uses
  store atomic i32 %.sroa.0.0.extract.trunc.i.i, ptr %.025.i monotonic, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.025.i, i64 4
  store atomic i32 %.sroa.0.4.extract.trunc.i.i, ptr %i.ai monotonic, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.025.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.aj, %i.w
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE7SetImplEPddNS1_14IsSharedBufferE.exit.i, !llvm.loop !5003

bb.c:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE10FromHandleENS0_12DirectHandleINS0_6ObjectEEEPb.exit.i
  %i.ak = fcmp oeq double %.0.i.i.i, 0.000000e+00
  br i1 %i.ak, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.al = tail call noundef i1 @llvm.is.fpclass.f64(double %.0.i.i.i, /* (nzero) */ i32 32)
  br i1 %i.al, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %gepdiff.i = sub nsw i64 %.idx.i, %.idx19.i
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %gepdiff.i, i1 false)
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %.not6.i.i.i.i = icmp samesign eq i64 %.idx19.i, %.idx.i
  br i1 %.not6.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.f
  %i.am = add i64 %.idx.i, -8
  %i.an = sub i64 %i.am, %.idx19.i                ; 2 uses
  %i.ao = lshr exact i64 %i.an, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.an, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ap, 4611686018427387900     ; 3 uses
  %i.aq = shl i64 %n.vec, 3
  %i.ar = getelementptr i8, ptr %i.v, i64 %i.aq
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.0.i.i.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %broadcast.splat, ptr %next.gep, align 8
  store <2 x double> %broadcast.splat, ptr %i.at, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !5004

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i.i.i.i.preheader13

.lr.ph.i.i.i.i.preheader13:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.ph = phi ptr [ %i.v, %.lr.ph.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader13, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i ], [ %.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader13 ] ; 2 uses
  store double %.0.i.i.i, ptr %.07.i.i.i.i, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.av, %i.w
  br i1 %.not.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i.i.i.i, !llvm.loop !5005

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE7SetImplEPddNS1_14IsSharedBufferE.exit.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE7SetImplEPddNS1_14IsSharedBufferE.exit.i.us, %.lr.ph.i.i.i.i, %middle.block, %.preheader.i, %bb.e, %bb.f
  ret ptr %2
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i16 1, 258) i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE28EEENS1_18ElementsKindTraitsILS4_28EEEE13IncludesValueEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_6ObjectEEEmm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readonly captures(none) %2, ptr nofree readonly captures(none) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.460", align 8 ; 5 uses
  %i.b = load i64, ptr %2, align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i64 %i.b, ptr %6, align 8
  %i.c = add i64 %i.b, 31
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add i64 %i.e, 71
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i32, ptr %i.g monotonic, align 4
  %i.i = and i32 %i.h, 4
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.b, label %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i

bb.b:                                             ; preds = %bb.a
  %i.j = add i64 %i.b, 39
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 3
  %.not2.i.i = icmp eq i32 %i.m, 0
  br i1 %.not2.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = call noundef i64 @_ZNK2v88internal12JSTypedArray30GetVariableLengthOrOutOfBoundsERb(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #23
  br label %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i

bb.d:                                             ; preds = %bb.b
  %i.o = add i64 %i.b, 55
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8
  %i.r = call noundef i64 @_ZNK2v88internal12JSTypedArray12element_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #23
  %i.s = udiv i64 %i.q, %i.r
  br label %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i

_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %.0.i49.i = phi i64 [ %i.s, %bb.d ], [ %i.n, %bb.c ], [ 0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.t = load i8, ptr %i.a, align 1, !range !16, !noundef !17
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %bb.f, !prof !5

bb.e:                                             ; preds = %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i
  %i.v = load i64, ptr %3, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.x = load i64, ptr %i.w, align 8
  %i.y = icmp eq i64 %i.v, %i.x
  %i.z = icmp ugt i64 %5, %4
  %i.aa = and i1 %i.z, %i.y
  %.sroa.0.0.insert.insert.i.i = select i1 %i.aa, i16 257, i16 1
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.f:                                             ; preds = %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i
  %i.ab = icmp ult i64 %.0.i49.i, %5
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = load i64, ptr %3, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = icmp eq i64 %i.ac, %i.ae
  %i.ag = icmp ugt i64 %5, %4
  %or.cond.i = and i1 %i.ag, %i.af
  br i1 %or.cond.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.043.i = phi i64 [ %5, %bb.f ], [ %.0.i49.i, %bb.g ] ; 8 uses
  %i.ah = add i64 %i.b, 71
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = add i64 %i.b, 79
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i64, ptr %i.al, align 8
  %i.an = add i64 %i.am, %i.aj                    ; 3 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 6 uses
  %i.ap = load i64, ptr %i.d, align 8
  %i.aq = add i64 %i.ap, 71
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load atomic volatile i32, ptr %i.ar monotonic, align 4
  %i.at = and i32 %i.as, 16
  %.not147.i = icmp eq i32 %i.at, 0               ; 2 uses
  %i.au = load i64, ptr %3, align 8               ; 3 uses
  %i.av = and i64 %i.au, 1
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.h
  %i.ax = add nsw i64 %i.au, -1
  %i.ay = inttoptr i64 %i.ax to ptr               ; 2 uses
  %i.az = load atomic volatile i64, ptr %i.ay monotonic, align 8
  %i.ba = add i64 %i.az, 11
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load atomic volatile i16, ptr %i.bb monotonic, align 2
  %i.bd = icmp eq i16 %i.bc, 130
  br i1 %i.bd, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i: ; preds = %bb.h
  %i.be = lshr i64 %i.au, 32
  %i.bf = trunc nuw i64 %i.be to i32
  %i.bg = sitofp i32 %i.bf to double
  br label %.preheader149.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.bh, align 8 ; 2 uses
  %or.cond146.i = fcmp uno double %.0.copyload.i.i.i.i.i.i.i, 0.000000e+00
  br i1 %or.cond146.i, label %.preheader.i, label %.preheader149.i

.preheader149.i:                                  ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i
  %i.bi = phi double [ %i.bg, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i ], [ %.0.copyload.i.i.i.i.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i ] ; 3 uses
  %.not48152.i = icmp ult i64 %4, %.043.i
  br i1 %.not48152.i, label %.lr.ph.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

.lr.ph.i:                                         ; preds = %.preheader149.i
  br i1 %.not147.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE7GetImplEPdNS1_14IsSharedBufferE.exit72.us.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.bj = and i64 %i.an, 7
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.split.i.us, label %.lr.ph.split.i

.lr.ph.split.i.us:                                ; preds = %.lr.ph.split.preheader.i, %bb.i
  %.0153.i.us = phi i64 [ %i.bo, %bb.i ], [ %4, %.lr.ph.split.preheader.i ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.0153.i.us
  %i.bm = load atomic double, ptr %i.bl acquire, align 8
  %i.bn = fcmp une double %i.bm, %i.bi
  br i1 %i.bn, label %bb.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.i:                                             ; preds = %.lr.ph.split.i.us
  %i.bo = add i64 %.0153.i.us, 1                  ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.bo, %.043.i
  br i1 %exitcond.not.i.us, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.split.i.us, !llvm.loop !5006

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE7GetImplEPdNS1_14IsSharedBufferE.exit72.us.i: ; preds = %.lr.ph.i, %bb.j
  %.0153.us.i = phi i64 [ %i.br, %bb.j ], [ %4, %.lr.ph.i ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.0153.us.i
  %.0.copyload.i.i66.us.i = load double, ptr %i.bp, align 1
  %i.bq = fcmp une double %.0.copyload.i.i66.us.i, %i.bi
  br i1 %i.bq, label %bb.j, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.j:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE7GetImplEPdNS1_14IsSharedBufferE.exit72.us.i
  %i.br = add i64 %.0153.us.i, 1                  ; 2 uses
  %exitcond169.not.i = icmp eq i64 %i.br, %.043.i
  br i1 %exitcond169.not.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE7GetImplEPdNS1_14IsSharedBufferE.exit72.us.i, !llvm.loop !5006

.preheader.i:                                     ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i
  %.not156.i = icmp ult i64 %4, %.043.i
  br i1 %.not156.i, label %.lr.ph158.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

.lr.ph158.i:                                      ; preds = %.preheader.i
  br i1 %.not147.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE28EE7GetImplEPdNS1_14IsSharedBufferE.exit.us.i, label %.lr.ph158.split.preheader.i

end_hunk_5
begin_hunk_6_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE34EEENS1_18ElementsKindTraitsILS4_34EEEE12GrowCapacityEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEj:bb.a
  %i.x = add i32 %3, 1
  %i.y = lshr i32 %i.x, 1
  %i.z = add i32 %3, 17                           ; 2 uses
  %i.aa = add i32 %i.y, %i.z                      ; 2 uses
  %i.ab = icmp ult i32 %i.z, 134217729
  %i.ac = call i32 @llvm.umin.i32(i32 %i.aa, i32 134217728)
  %.0.i = select i1 %i.ab, i32 %i.ac, i32 %i.aa   ; 2 uses
  %i.ad = icmp ugt i32 %.0.i, 134217728
  br i1 %i.ad, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ae = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %.0.i, i8 noundef zeroext 0, i8 0) #23 ; 0 uses
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable

bb.f:                                             ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.b, %.critedge
  ret i16 1
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE34EEENS1_18ElementsKindTraitsILS4_34EEEE3SetENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(none) %1, i64 %2, i64 %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  %i.b = add i64 %i.a, 71
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.a, 79
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, %i.d
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %2 ; 2 uses
  %i.k = add i64 %i.a, 31
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, 71
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i32, ptr %i.o monotonic, align 4
  %i.q = and i32 %i.p, 16
  %.not.i = icmp eq i32 %i.q, 0
  %i.r = tail call fastcc noundef i32 @_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE34EE10FromObjectENS0_6TaggedINS0_6ObjectEEEPb(i64 %3) ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %i.r, ptr %i.j, align 1
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE34EE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.c:                                             ; preds = %bb.a
  store atomic i32 %i.r, ptr %i.j monotonic, align 4
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE34EE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE34EE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE34EEENS1_18ElementsKindTraitsILS4_34EEEE9SetAtomicENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEENS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2, i64 %3) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE34EEENS1_18ElementsKindTraitsILS4_34EEEE10SwapAtomicEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEENS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3, i64 %4) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE34EEENS1_18ElementsKindTraitsILS4_34EEEE20CompareAndSwapAtomicEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEESH_NS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3, i64 %4, i64 %5) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE34EEENS1_18ElementsKindTraitsILS4_34EEEE3AddEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEjNSB_INS0_6ObjectEEENS0_18PropertyAttributesEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i32 %3, ptr nofree readnone captures(none) %4, i32 %5, i32 %6) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE34EEENS1_18ElementsKindTraitsILS4_34EEEE4PushEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEPNS0_16BuiltinArgumentsEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, i32 %4) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE34EEENS1_18ElementsKindTraitsILS4_34EEEE7UnshiftEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEPNS0_16BuiltinArgumentsEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, i32 %4) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE34EEENS1_18ElementsKindTraitsILS4_34EEEE3PopEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE34EEENS1_18ElementsKindTraitsILS4_34EEEE5ShiftEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE34EEENS1_18ElementsKindTraitsILS4_34EEEE9NormalizeEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i, align 8
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE34EEENS1_18ElementsKindTraitsILS4_34EEEE11GetCapacityENS0_6TaggedINS0_8JSObjectEEENS9_INS0_14FixedArrayBaseEEE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1, i64 %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.460", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i64 %1, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1
  %i.b = add i64 %1, 31
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, 71
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i32, ptr %i.f monotonic, align 4
  %i.h = and i32 %i.g, 4
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE34EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %1, 39
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 3
  %.not2.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not2.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = call noundef i64 @_ZNK2v88internal12JSTypedArray30GetVariableLengthOrOutOfBoundsERb(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #23
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE34EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit

bb.d:                                             ; preds = %bb.b
  %i.n = add i64 %1, 55
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr %i.o, align 8
  %i.q = call noundef i64 @_ZNK2v88internal12JSTypedArray12element_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #23
  %i.r = udiv i64 %i.p, %i.q
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE34EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE34EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i.i = phi i64 [ %i.r, %bb.d ], [ %i.m, %bb.c ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i64 %.0.i.i.i
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE34EEENS1_18ElementsKindTraitsILS4_34EEEE4FillEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_6ObjectEEEmm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readonly returned captures(ret: address, provenance) %2, ptr nofree readonly captures(none) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #10 align 2 {
bb.a:
  %.val = load i64, ptr %3, align 8
  %i.a = tail call fastcc noundef i32 @_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE34EE10FromObjectENS0_6TaggedINS0_6ObjectEEEPb(i64 %.val) ; 5 uses
  %i.b = load i64, ptr %2, align 8                ; 3 uses
  %i.c = add i64 %i.b, 71
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add i64 %i.b, 79
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %i.g, align 8
  %i.i = add i64 %i.h, %i.e
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %.idx19.i = shl i64 %4, 2                       ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx19.i ; 5 uses
  %.idx.i = shl i64 %5, 2                         ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i ; 2 uses
  %i.m = add i64 %i.b, 31
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load i64, ptr %i.n, align 8
  %i.p = add i64 %i.o, 71
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i32, ptr %i.q monotonic, align 4
  %i.s = and i32 %i.r, 16
  %.not21.i = icmp eq i32 %i.s, 0
  br i1 %.not21.i, label %bb.b, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %.not23.i = icmp samesign eq i64 %.idx19.i, %.idx.i
  br i1 %.not23.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE34EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.024.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.k, %.preheader.i ] ; 2 uses
  store atomic i32 %i.a, ptr %.024.i monotonic, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.t, %i.l
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE34EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i, !llvm.loop !5877

bb.b:                                             ; preds = %bb.a
  %i.u = add i32 %i.a, 1
  %or.cond.i = icmp ult i32 %i.u, 2
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %gepdiff.i = sub nsw i64 %.idx.i, %.idx19.i
  %i.v = trunc nsw i32 %i.a to i8
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 %i.v, i64 %gepdiff.i, i1 false)
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE34EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.d:                                             ; preds = %bb.b
  %.not5.i.i.i.i = icmp samesign eq i64 %.idx19.i, %.idx.i
  br i1 %.not5.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE34EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.d
  %i.w = add i64 %.idx.i, -4
  %i.x = sub i64 %i.w, %.idx19.i                  ; 2 uses
  %i.y = lshr exact i64 %i.x, 2
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.z, 9223372036854775800      ; 3 uses
  %i.aa = shl i64 %n.vec, 2
  %i.ab = getelementptr i8, ptr %i.k, i64 %i.aa
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.ad, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !5878

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE34EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i.i.i.i.preheader10

.lr.ph.i.i.i.i.preheader10:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.06.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader10, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.06.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader10 ] ; 2 uses
  store i32 %i.a, ptr %.06.i.i.i.i, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, %i.l
  br i1 %.not.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE34EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i.i.i.i, !llvm.loop !5879

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE34EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit: ; preds = %.lr.ph.i, %.lr.ph.i.i.i.i, %middle.block, %.preheader.i, %bb.c, %bb.d
  ret ptr %2
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i16 1, 258) i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE34EEENS1_18ElementsKindTraitsILS4_34EEEE13IncludesValueEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_6ObjectEEEmm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readonly captures(none) %2, ptr nofree readonly captures(none) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.460", align 8 ; 6 uses
  %i.b = load i64, ptr %2, align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i64 %i.b, ptr %6, align 8
  %i.c = add i64 %i.b, 31
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add i64 %i.e, 71
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i32, ptr %i.g monotonic, align 4
  %i.i = and i32 %i.h, 4
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.b, label %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.j = add i64 %i.b, 39
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 3
  %.not2.i.i = icmp eq i32 %i.m, 0
  br i1 %.not2.i.i, label %bb.c, label %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i

bb.c:                                             ; preds = %bb.b
  %i.n = add i64 %i.b, 55
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr %i.o, align 8
  %i.q = call noundef i64 @_ZNK2v88internal12JSTypedArray12element_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #23
  %i.r = udiv i64 %i.p, %i.q
  br label %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i

_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i: ; preds = %bb.c, %bb.a
  %.0.i35.ph.i = phi i64 [ 0, %bb.a ], [ %i.r, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.e

_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i: ; preds = %bb.b
  %i.s = call noundef i64 @_ZNK2v88internal12JSTypedArray30GetVariableLengthOrOutOfBoundsERb(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #23
  %.pre.i = load i8, ptr %i.a, align 1, !range !16
  %i.t = trunc nuw i8 %.pre.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %i.t, label %bb.d, label %bb.e, !prof !3743

bb.d:                                             ; preds = %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i
  %i.u = load i64, ptr %3, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp eq i64 %i.u, %i.w
  %i.y = icmp ugt i64 %5, %4
  %i.z = and i1 %i.y, %i.x
  %.sroa.0.0.insert.insert.i.i = select i1 %i.z, i16 257, i16 1
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE34EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.e:                                             ; preds = %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i, %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i
  %.0.i35136.i = phi i64 [ %.0.i35.ph.i, %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i ], [ %i.s, %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i ] ; 2 uses
  %i.aa = icmp ult i64 %.0.i35136.i, %5
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = load i64, ptr %3, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = icmp eq i64 %i.ab, %i.ad
  %i.af = icmp ugt i64 %5, %4
  %or.cond.i = and i1 %i.af, %i.ae
  br i1 %or.cond.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE34EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.029.i = phi i64 [ %5, %bb.e ], [ %.0.i35136.i, %bb.f ] ; 4 uses
  %i.ag = add i64 %i.b, 71
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = add i64 %i.b, 79
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = add i64 %i.al, %i.ai                    ; 2 uses
  %i.an = inttoptr i64 %i.am to ptr               ; 3 uses
  %i.ao = load i64, ptr %i.d, align 8
  %i.ap = add i64 %i.ao, 71
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load atomic volatile i32, ptr %i.aq monotonic, align 4
  %i.as = and i32 %i.ar, 16
  %.not121.i = icmp eq i32 %i.as, 0
  %i.at = load i64, ptr %3, align 8               ; 3 uses
  %i.au = and i64 %i.at, 1
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.h, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.g
  %i.aw = add nsw i64 %i.at, -1
  %i.ax = inttoptr i64 %i.aw to ptr               ; 2 uses
  %i.ay = load atomic volatile i64, ptr %i.ax monotonic, align 8
  %i.az = add i64 %i.ay, 11
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load atomic volatile i16, ptr %i.ba monotonic, align 2
  %i.bc = icmp eq i16 %i.bb, 130
  br i1 %i.bc, label %bb.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE34EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.h:                                             ; preds = %bb.g
  %i.bd = lshr i64 %i.at, 32
  %i.be = trunc nuw i64 %i.bd to i32
  %i.bf = sitofp i32 %i.be to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

bb.i:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.bg, align 8
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i: ; preds = %bb.i, %bb.h
  %i.bh = phi double [ %i.bf, %bb.h ], [ %.0.copyload.i.i.i.i.i.i.i, %bb.i ] ; 5 uses
  %i.bi = call double @llvm.fabs.f64(double %i.bh)
  %i.bj = fcmp ueq double %i.bi, +inf
  br i1 %i.bj, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE34EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i
  %i.bk = fcmp ule double %i.bh, -1.000000e+00
  %i.bl = fcmp ugt double %i.bh, f0x41EFFFFFFFE00000
  %.not3.i.not9.i.i = or i1 %i.bl, %i.bk
  br i1 %.not3.i.not9.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE34EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE34EE18ToTypedSearchValueEdPj.exit.i

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE34EE18ToTypedSearchValueEdPj.exit.i: ; preds = %bb.j
  %i.bm = fptoui double %i.bh to i32              ; 4 uses
  %i.bn = uitofp i32 %i.bm to double
  %i.bo = fcmp oeq double %i.bh, %i.bn
  %.not34123.i = icmp ult i64 %4, %.029.i
  %or.cond127.i = and i1 %.not34123.i, %i.bo
  br i1 %or.cond127.i, label %.lr.ph.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE34EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

.lr.ph.i:                                         ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE34EE18ToTypedSearchValueEdPj.exit.i
  br i1 %.not121.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE34EE7GetImplEPjNS1_14IsSharedBufferE.exit.us.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.bp = and i64 %i.am, 3
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.split.i.us, label %.lr.ph.split.i

.lr.ph.split.i.us:                                ; preds = %.lr.ph.split.preheader.i, %bb.k
  %.0124.i.us = phi i64 [ %i.bt, %bb.k ], [ %4, %.lr.ph.split.preheader.i ] ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.0124.i.us
  %i.bs = load atomic i32, ptr %i.br acquire, align 4
  %.not.i.us = icmp eq i32 %i.bs, %i.bm
  br i1 %.not.i.us, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE34EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split.i.us
  %i.bt = add i64 %.0124.i.us, 1                  ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.bt, %.029.i
  br i1 %exitcond.not.i.us, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE34EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.split.i.us, !llvm.loop !5880

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE34EE7GetImplEPjNS1_14IsSharedBufferE.exit.us.i: ; preds = %.lr.ph.i, %bb.l
  %.0124.us.i = phi i64 [ %i.bv, %bb.l ], [ %4, %.lr.ph.i ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.0124.us.i
end_hunk_6
begin_hunk_7_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE35EEENS1_18ElementsKindTraitsILS4_35EEEE12GrowCapacityEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEj:bb.a
  %i.x = add i32 %3, 1
  %i.y = lshr i32 %i.x, 1
  %i.z = add i32 %3, 17                           ; 2 uses
  %i.aa = add i32 %i.y, %i.z                      ; 2 uses
  %i.ab = icmp ult i32 %i.z, 134217729
  %i.ac = call i32 @llvm.umin.i32(i32 %i.aa, i32 134217728)
  %.0.i = select i1 %i.ab, i32 %i.ac, i32 %i.aa   ; 2 uses
  %i.ad = icmp ugt i32 %.0.i, 134217728
  br i1 %i.ad, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ae = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %.0.i, i8 noundef zeroext 0, i8 0) #23 ; 0 uses
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable

bb.f:                                             ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.b, %.critedge
  ret i16 1
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE35EEENS1_18ElementsKindTraitsILS4_35EEEE3SetENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(none) %1, i64 %2, i64 %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  %i.b = add i64 %i.a, 71
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.a, 79
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, %i.d
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %2 ; 2 uses
  %i.k = add i64 %i.a, 31
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, 71
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i32, ptr %i.o monotonic, align 4
  %i.q = and i32 %i.p, 16
  %.not.i = icmp eq i32 %i.q, 0
  %i.r = tail call fastcc noundef i32 @_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE35EE10FromObjectENS0_6TaggedINS0_6ObjectEEEPb(i64 %3) ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %i.r, ptr %i.j, align 1
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE35EE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.c:                                             ; preds = %bb.a
  store atomic i32 %i.r, ptr %i.j monotonic, align 4
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE35EE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE35EE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE35EEENS1_18ElementsKindTraitsILS4_35EEEE9SetAtomicENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEENS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2, i64 %3) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE35EEENS1_18ElementsKindTraitsILS4_35EEEE10SwapAtomicEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEENS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3, i64 %4) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE35EEENS1_18ElementsKindTraitsILS4_35EEEE20CompareAndSwapAtomicEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEESH_NS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3, i64 %4, i64 %5) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE35EEENS1_18ElementsKindTraitsILS4_35EEEE3AddEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEjNSB_INS0_6ObjectEEENS0_18PropertyAttributesEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i32 %3, ptr nofree readnone captures(none) %4, i32 %5, i32 %6) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE35EEENS1_18ElementsKindTraitsILS4_35EEEE4PushEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEPNS0_16BuiltinArgumentsEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, i32 %4) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE35EEENS1_18ElementsKindTraitsILS4_35EEEE7UnshiftEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEPNS0_16BuiltinArgumentsEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, i32 %4) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE35EEENS1_18ElementsKindTraitsILS4_35EEEE3PopEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE35EEENS1_18ElementsKindTraitsILS4_35EEEE5ShiftEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE35EEENS1_18ElementsKindTraitsILS4_35EEEE9NormalizeEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i, align 8
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE35EEENS1_18ElementsKindTraitsILS4_35EEEE11GetCapacityENS0_6TaggedINS0_8JSObjectEEENS9_INS0_14FixedArrayBaseEEE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1, i64 %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.460", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i64 %1, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1
  %i.b = add i64 %1, 31
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, 71
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i32, ptr %i.f monotonic, align 4
  %i.h = and i32 %i.g, 4
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE35EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %1, 39
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 3
  %.not2.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not2.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = call noundef i64 @_ZNK2v88internal12JSTypedArray30GetVariableLengthOrOutOfBoundsERb(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #23
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE35EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit

bb.d:                                             ; preds = %bb.b
  %i.n = add i64 %1, 55
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr %i.o, align 8
  %i.q = call noundef i64 @_ZNK2v88internal12JSTypedArray12element_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #23
  %i.r = udiv i64 %i.p, %i.q
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE35EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE35EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i.i = phi i64 [ %i.r, %bb.d ], [ %i.m, %bb.c ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i64 %.0.i.i.i
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE35EEENS1_18ElementsKindTraitsILS4_35EEEE4FillEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_6ObjectEEEmm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readonly returned captures(ret: address, provenance) %2, ptr nofree readonly captures(none) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #10 align 2 {
bb.a:
  %.val = load i64, ptr %3, align 8
  %i.a = tail call fastcc noundef i32 @_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE35EE10FromObjectENS0_6TaggedINS0_6ObjectEEEPb(i64 %.val) ; 5 uses
  %i.b = load i64, ptr %2, align 8                ; 3 uses
  %i.c = add i64 %i.b, 71
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add i64 %i.b, 79
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %i.g, align 8
  %i.i = add i64 %i.h, %i.e
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %.idx19.i = shl i64 %4, 2                       ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx19.i ; 5 uses
  %.idx.i = shl i64 %5, 2                         ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i ; 2 uses
  %i.m = add i64 %i.b, 31
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load i64, ptr %i.n, align 8
  %i.p = add i64 %i.o, 71
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i32, ptr %i.q monotonic, align 4
  %i.s = and i32 %i.r, 16
  %.not21.i = icmp eq i32 %i.s, 0
  br i1 %.not21.i, label %bb.b, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %.not23.i = icmp samesign eq i64 %.idx19.i, %.idx.i
  br i1 %.not23.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE35EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.024.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.k, %.preheader.i ] ; 2 uses
  store atomic i32 %i.a, ptr %.024.i monotonic, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.t, %i.l
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE35EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i, !llvm.loop !6016

bb.b:                                             ; preds = %bb.a
  %i.u = add i32 %i.a, 1
  %or.cond.i = icmp ult i32 %i.u, 2
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %gepdiff.i = sub nsw i64 %.idx.i, %.idx19.i
  %i.v = trunc nsw i32 %i.a to i8
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 %i.v, i64 %gepdiff.i, i1 false)
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE35EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.d:                                             ; preds = %bb.b
  %.not5.i.i.i.i = icmp samesign eq i64 %.idx19.i, %.idx.i
  br i1 %.not5.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE35EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.d
  %i.w = add i64 %.idx.i, -4
  %i.x = sub i64 %i.w, %.idx19.i                  ; 2 uses
  %i.y = lshr exact i64 %i.x, 2
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.z, 9223372036854775800      ; 3 uses
  %i.aa = shl i64 %n.vec, 2
  %i.ab = getelementptr i8, ptr %i.k, i64 %i.aa
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.ad, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !6017

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE35EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i.i.i.i.preheader10

.lr.ph.i.i.i.i.preheader10:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.06.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader10, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.06.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader10 ] ; 2 uses
  store i32 %i.a, ptr %.06.i.i.i.i, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, %i.l
  br i1 %.not.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE35EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i.i.i.i, !llvm.loop !6018

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE35EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit: ; preds = %.lr.ph.i, %.lr.ph.i.i.i.i, %middle.block, %.preheader.i, %bb.c, %bb.d
  ret ptr %2
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i16 1, 258) i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE35EEENS1_18ElementsKindTraitsILS4_35EEEE13IncludesValueEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_6ObjectEEEmm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readonly captures(none) %2, ptr nofree readonly captures(none) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.460", align 8 ; 6 uses
  %i.b = load i64, ptr %2, align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i64 %i.b, ptr %6, align 8
  %i.c = add i64 %i.b, 31
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add i64 %i.e, 71
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i32, ptr %i.g monotonic, align 4
  %i.i = and i32 %i.h, 4
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.b, label %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.j = add i64 %i.b, 39
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 3
  %.not2.i.i = icmp eq i32 %i.m, 0
  br i1 %.not2.i.i, label %bb.c, label %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i

bb.c:                                             ; preds = %bb.b
  %i.n = add i64 %i.b, 55
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr %i.o, align 8
  %i.q = call noundef i64 @_ZNK2v88internal12JSTypedArray12element_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #23
  %i.r = udiv i64 %i.p, %i.q
  br label %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i

_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i: ; preds = %bb.c, %bb.a
  %.0.i35.ph.i = phi i64 [ 0, %bb.a ], [ %i.r, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.e

_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i: ; preds = %bb.b
  %i.s = call noundef i64 @_ZNK2v88internal12JSTypedArray30GetVariableLengthOrOutOfBoundsERb(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #23
  %.pre.i = load i8, ptr %i.a, align 1, !range !16
  %i.t = trunc nuw i8 %.pre.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %i.t, label %bb.d, label %bb.e, !prof !3743

bb.d:                                             ; preds = %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i
  %i.u = load i64, ptr %3, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp eq i64 %i.u, %i.w
  %i.y = icmp ugt i64 %5, %4
  %i.z = and i1 %i.y, %i.x
  %.sroa.0.0.insert.insert.i.i = select i1 %i.z, i16 257, i16 1
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE35EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.e:                                             ; preds = %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i, %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i
  %.0.i35136.i = phi i64 [ %.0.i35.ph.i, %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i ], [ %i.s, %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i ] ; 2 uses
  %i.aa = icmp ult i64 %.0.i35136.i, %5
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = load i64, ptr %3, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = icmp eq i64 %i.ab, %i.ad
  %i.af = icmp ugt i64 %5, %4
  %or.cond.i = and i1 %i.af, %i.ae
  br i1 %or.cond.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE35EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.029.i = phi i64 [ %5, %bb.e ], [ %.0.i35136.i, %bb.f ] ; 4 uses
  %i.ag = add i64 %i.b, 71
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = add i64 %i.b, 79
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = add i64 %i.al, %i.ai                    ; 2 uses
  %i.an = inttoptr i64 %i.am to ptr               ; 3 uses
  %i.ao = load i64, ptr %i.d, align 8
  %i.ap = add i64 %i.ao, 71
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load atomic volatile i32, ptr %i.aq monotonic, align 4
  %i.as = and i32 %i.ar, 16
  %.not121.i = icmp eq i32 %i.as, 0
  %i.at = load i64, ptr %3, align 8               ; 3 uses
  %i.au = and i64 %i.at, 1
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.h, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.g
  %i.aw = add nsw i64 %i.at, -1
  %i.ax = inttoptr i64 %i.aw to ptr               ; 2 uses
  %i.ay = load atomic volatile i64, ptr %i.ax monotonic, align 8
  %i.az = add i64 %i.ay, 11
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load atomic volatile i16, ptr %i.ba monotonic, align 2
  %i.bc = icmp eq i16 %i.bb, 130
  br i1 %i.bc, label %bb.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE35EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.h:                                             ; preds = %bb.g
  %i.bd = lshr i64 %i.at, 32
  %i.be = trunc nuw i64 %i.bd to i32
  %i.bf = sitofp i32 %i.be to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

bb.i:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.bg, align 8
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i: ; preds = %bb.i, %bb.h
  %i.bh = phi double [ %i.bf, %bb.h ], [ %.0.copyload.i.i.i.i.i.i.i, %bb.i ] ; 5 uses
  %i.bi = call double @llvm.fabs.f64(double %i.bh)
  %i.bj = fcmp ueq double %i.bi, +inf
  br i1 %i.bj, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE35EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i
  %i.bk = fcmp ult double %i.bh, f0xC1E0000000000000
  %i.bl = fcmp ugt double %i.bh, f0x41DFFFFFFFC00000
  %.not3.i.not9.i.i = or i1 %i.bl, %i.bk
  br i1 %.not3.i.not9.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE35EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE35EE18ToTypedSearchValueEdPi.exit.i

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE35EE18ToTypedSearchValueEdPi.exit.i: ; preds = %bb.j
  %i.bm = fptosi double %i.bh to i32              ; 4 uses
  %i.bn = sitofp i32 %i.bm to double
  %i.bo = fcmp oeq double %i.bh, %i.bn
  %.not34123.i = icmp ult i64 %4, %.029.i
  %or.cond127.i = and i1 %.not34123.i, %i.bo
  br i1 %or.cond127.i, label %.lr.ph.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE35EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

.lr.ph.i:                                         ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE35EE18ToTypedSearchValueEdPi.exit.i
  br i1 %.not121.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE35EE7GetImplEPiNS1_14IsSharedBufferE.exit.us.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.bp = and i64 %i.am, 3
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.split.i.us, label %.lr.ph.split.i

.lr.ph.split.i.us:                                ; preds = %.lr.ph.split.preheader.i, %bb.k
  %.0124.i.us = phi i64 [ %i.bt, %bb.k ], [ %4, %.lr.ph.split.preheader.i ] ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.0124.i.us
  %i.bs = load atomic i32, ptr %i.br acquire, align 4
  %.not.i.us = icmp eq i32 %i.bs, %i.bm
  br i1 %.not.i.us, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE35EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split.i.us
  %i.bt = add i64 %.0124.i.us, 1                  ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.bt, %.029.i
  br i1 %exitcond.not.i.us, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE35EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.split.i.us, !llvm.loop !6019

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE35EE7GetImplEPiNS1_14IsSharedBufferE.exit.us.i: ; preds = %.lr.ph.i, %bb.l
  %.0124.us.i = phi i64 [ %i.bv, %bb.l ], [ %4, %.lr.ph.i ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.0124.us.i
end_hunk_7
begin_hunk_8_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE36EEENS1_18ElementsKindTraitsILS4_36EEEE12GrowCapacityEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEj:bb.a
; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE36EEENS1_18ElementsKindTraitsILS4_36EEEE3SetENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(none) %1, i64 %2, i64 %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  %i.b = add i64 %i.a, 71
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.a, 79
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, %i.d
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %2 ; 5 uses
  %i.k = add i64 %i.a, 31
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, 71
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i32, ptr %i.o monotonic, align 4
  %i.q = and i32 %i.p, 16
  %.not.i = icmp eq i32 %i.q, 0
  %i.r = add i64 %3, -1
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = tail call noundef i64 @_ZN2v88internal6BigInt8AsUint64EPb(ptr noundef nonnull align 4 dereferenceable(16) %i.s, ptr noundef null) #23 ; 4 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.t, ptr %i.j, align 1
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.u = ptrtoint ptr %i.j to i64
  %i.v = and i64 %i.u, 7
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store atomic i64 %i.t, ptr %i.j monotonic, align 8
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.e:                                             ; preds = %bb.c
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.t to i32
  %.sroa.4.0.extract.shift.i.i = lshr i64 %i.t, 32
  %.sroa.4.0.extract.trunc.i.i = trunc nuw i64 %.sroa.4.0.extract.shift.i.i to i32
  store atomic i32 %.sroa.0.0.extract.trunc.i.i, ptr %i.j monotonic, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store atomic i32 %.sroa.4.0.extract.trunc.i.i, ptr %i.x monotonic, align 4
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE36EEENS1_18ElementsKindTraitsILS4_36EEEE9SetAtomicENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEENS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2, i64 %3) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE36EEENS1_18ElementsKindTraitsILS4_36EEEE10SwapAtomicEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEENS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3, i64 %4) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE36EEENS1_18ElementsKindTraitsILS4_36EEEE20CompareAndSwapAtomicEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEESH_NS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3, i64 %4, i64 %5) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE36EEENS1_18ElementsKindTraitsILS4_36EEEE3AddEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEjNSB_INS0_6ObjectEEENS0_18PropertyAttributesEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i32 %3, ptr nofree readnone captures(none) %4, i32 %5, i32 %6) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE36EEENS1_18ElementsKindTraitsILS4_36EEEE4PushEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEPNS0_16BuiltinArgumentsEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, i32 %4) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE36EEENS1_18ElementsKindTraitsILS4_36EEEE7UnshiftEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEPNS0_16BuiltinArgumentsEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, i32 %4) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE36EEENS1_18ElementsKindTraitsILS4_36EEEE3PopEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE36EEENS1_18ElementsKindTraitsILS4_36EEEE5ShiftEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE36EEENS1_18ElementsKindTraitsILS4_36EEEE9NormalizeEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i, align 8
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE36EEENS1_18ElementsKindTraitsILS4_36EEEE11GetCapacityENS0_6TaggedINS0_8JSObjectEEENS9_INS0_14FixedArrayBaseEEE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1, i64 %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.460", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i64 %1, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1
  %i.b = add i64 %1, 31
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, 71
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i32, ptr %i.f monotonic, align 4
  %i.h = and i32 %i.g, 4
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %1, 39
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 3
  %.not2.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not2.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = call noundef i64 @_ZNK2v88internal12JSTypedArray30GetVariableLengthOrOutOfBoundsERb(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #23
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit

bb.d:                                             ; preds = %bb.b
  %i.n = add i64 %1, 55
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr %i.o, align 8
  %i.q = call noundef i64 @_ZNK2v88internal12JSTypedArray12element_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #23
  %i.r = udiv i64 %i.p, %i.q
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i.i = phi i64 [ %i.r, %bb.d ], [ %i.m, %bb.c ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i64 %.0.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE36EEENS1_18ElementsKindTraitsILS4_36EEEE4FillEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_6ObjectEEEmm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readonly returned captures(ret: address, provenance) %2, ptr nofree readonly captures(none) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 align 2 {
bb.a:
  %.val = load i64, ptr %3, align 8
  %i.a = add i64 %.val, -1
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = tail call noundef i64 @_ZN2v88internal6BigInt8AsUint64EPb(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef null) #23 ; 7 uses
  %i.d = load i64, ptr %2, align 8                ; 3 uses
  %i.e = add i64 %i.d, 71
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.d, 79
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.j, %i.g                       ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %.idx19.i = shl i64 %4, 3                       ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx19.i ; 6 uses
  %.idx.i = shl i64 %5, 3                         ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i ; 3 uses
  %i.o = add i64 %i.d, 31
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8
  %i.r = add i64 %i.q, 71
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i32, ptr %i.s monotonic, align 4
  %i.u = and i32 %i.t, 16
  %.not21.i = icmp eq i32 %i.u, 0
  br i1 %.not21.i, label %bb.b, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %.not23.i = icmp samesign eq i64 %.idx19.i, %.idx.i
  br i1 %.not23.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.c to i32
  %.sroa.4.0.extract.shift.i.i = lshr i64 %i.c, 32
  %.sroa.4.0.extract.trunc.i.i = trunc nuw i64 %.sroa.4.0.extract.shift.i.i to i32
  %i.v = and i64 %i.k, 7
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE7SetImplEPmmNS1_14IsSharedBufferE.exit.i.us, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE7SetImplEPmmNS1_14IsSharedBufferE.exit.i

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE7SetImplEPmmNS1_14IsSharedBufferE.exit.i.us: ; preds = %.lr.ph.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE7SetImplEPmmNS1_14IsSharedBufferE.exit.i.us
  %.024.i.us = phi ptr [ %i.x, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE7SetImplEPmmNS1_14IsSharedBufferE.exit.i.us ], [ %i.m, %.lr.ph.i ] ; 2 uses
  store atomic i64 %i.c, ptr %.024.i.us monotonic, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.024.i.us, i64 8 ; 2 uses
  %.not.i.us = icmp eq ptr %i.x, %i.n
  br i1 %.not.i.us, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE7SetImplEPmmNS1_14IsSharedBufferE.exit.i.us, !llvm.loop !6155

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE7SetImplEPmmNS1_14IsSharedBufferE.exit.i: ; preds = %.lr.ph.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE7SetImplEPmmNS1_14IsSharedBufferE.exit.i
  %.024.i = phi ptr [ %i.z, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE7SetImplEPmmNS1_14IsSharedBufferE.exit.i ], [ %i.m, %.lr.ph.i ] ; 3 uses
  store atomic i32 %.sroa.0.0.extract.trunc.i.i, ptr %.024.i monotonic, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %.024.i, i64 4
  store atomic i32 %.sroa.4.0.extract.trunc.i.i, ptr %i.y monotonic, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.z, %i.n
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE7SetImplEPmmNS1_14IsSharedBufferE.exit.i, !llvm.loop !6155

bb.b:                                             ; preds = %bb.a
  %i.aa = add i64 %i.c, 1
  %or.cond.i = icmp ult i64 %i.aa, 2
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %gepdiff.i = sub nsw i64 %.idx.i, %.idx19.i
  %i.ab = trunc nsw i64 %i.c to i8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 %i.ab, i64 %gepdiff.i, i1 false)
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.d:                                             ; preds = %bb.b
  %.not5.i.i.i.i = icmp samesign eq i64 %.idx19.i, %.idx.i
  br i1 %.not5.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.d
  %i.ac = add i64 %.idx.i, -8
  %i.ad = sub i64 %i.ac, %.idx19.i                ; 2 uses
  %i.ae = lshr exact i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ad, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.af, 4611686018427387900     ; 3 uses
  %i.ag = shl i64 %n.vec, 3
  %i.ah = getelementptr i8, ptr %i.m, i64 %i.ag
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.c, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.ai ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8
  store <2 x i64> %broadcast.splat, ptr %i.aj, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !6156

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i.i.i.i.preheader13

.lr.ph.i.i.i.i.preheader13:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.06.i.i.i.i.ph = phi ptr [ %i.m, %.lr.ph.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader13, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.06.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader13 ] ; 2 uses
  store i64 %i.c, ptr %.06.i.i.i.i, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.al, %i.n
  br i1 %.not.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i.i.i.i, !llvm.loop !6157

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE7SetImplEPmmNS1_14IsSharedBufferE.exit.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE7SetImplEPmmNS1_14IsSharedBufferE.exit.i.us, %.lr.ph.i.i.i.i, %middle.block, %.preheader.i, %bb.c, %bb.d
  ret ptr %2
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i16 1, 258) i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE36EEENS1_18ElementsKindTraitsILS4_36EEEE13IncludesValueEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_6ObjectEEEmm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readonly captures(none) %2, ptr nofree readonly captures(none) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.460", align 8 ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = load i64, ptr %2, align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i64 %i.c, ptr %6, align 8
  %i.d = add i64 %i.c, 31
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, 71
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i32, ptr %i.h monotonic, align 4
  %i.j = and i32 %i.i, 4
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %bb.b, label %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.k = add i64 %i.c, 39
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i32, ptr %i.l, align 4
  %i.n = and i32 %i.m, 3
  %.not2.i.i = icmp eq i32 %i.n, 0
  br i1 %.not2.i.i, label %bb.c, label %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i

bb.c:                                             ; preds = %bb.b
  %i.o = add i64 %i.c, 55
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8
  %i.r = call noundef i64 @_ZNK2v88internal12JSTypedArray12element_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #23
  %i.s = udiv i64 %i.q, %i.r
  br label %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i

_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i: ; preds = %bb.c, %bb.a
  %.0.i.ph.i = phi i64 [ 0, %bb.a ], [ %i.s, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.e

_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i: ; preds = %bb.b
  %i.t = call noundef i64 @_ZNK2v88internal12JSTypedArray30GetVariableLengthOrOutOfBoundsERb(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #23
  %.pre.i = load i8, ptr %i.a, align 1, !range !16
  %i.u = trunc nuw i8 %.pre.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %i.u, label %bb.d, label %bb.e, !prof !3743

bb.d:                                             ; preds = %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i
  %i.v = load i64, ptr %3, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.x = load i64, ptr %i.w, align 8
  %i.y = icmp eq i64 %i.v, %i.x
  %i.z = icmp ugt i64 %5, %4
  %i.aa = and i1 %i.z, %i.y
  %.sroa.0.0.insert.insert.i.i = select i1 %i.aa, i16 257, i16 1
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.e:                                             ; preds = %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i, %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i
  %.0.i115.i = phi i64 [ %.0.i.ph.i, %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i ], [ %i.t, %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i ] ; 2 uses
  %i.ab = icmp ult i64 %.0.i115.i, %5
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = load i64, ptr %3, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = icmp eq i64 %i.ac, %i.ae
  %i.ag = icmp ugt i64 %5, %4
  %or.cond.i = and i1 %i.ag, %i.af
  br i1 %or.cond.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.028.i = phi i64 [ %5, %bb.e ], [ %.0.i115.i, %bb.f ] ; 4 uses
  %i.ah = add i64 %i.c, 71
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = add i64 %i.c, 79
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i64, ptr %i.al, align 8
  %i.an = add i64 %i.am, %i.aj                    ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  %i.ap = load i64, ptr %i.e, align 8
  %i.aq = add i64 %i.ap, 71
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load atomic volatile i32, ptr %i.ar monotonic, align 4
  %i.at = and i32 %i.as, 16
  %.not101.i = icmp eq i32 %i.at, 0
  %i.au = load i64, ptr %3, align 8               ; 2 uses
  %i.av = trunc i64 %i.au to i1
  br i1 %i.av, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.g
  %i.aw = add nsw i64 %i.au, -1
  %i.ax = inttoptr i64 %i.aw to ptr               ; 2 uses
  %i.ay = load atomic volatile i64, ptr %i.ax monotonic, align 8
  %i.az = add i64 %i.ay, 11
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load atomic volatile i16, ptr %i.ba monotonic, align 2
  %i.bc = icmp eq i16 %i.bb, 129
  br i1 %i.bc, label %bb.h, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.h:                                             ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.bd = call noundef i64 @_ZN2v88internal6BigInt8AsUint64EPb(ptr noundef nonnull align 4 dereferenceable(16) %i.ax, ptr noundef nonnull %i.b) #23 ; 3 uses
  %i.be = load i8, ptr %i.b, align 1, !range !16, !noundef !17
  %i.bf = trunc nuw i8 %i.be to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %.not33103.i = icmp ult i64 %4, %.028.i
  %or.cond107.i = and i1 %.not33103.i, %i.bf
  br i1 %or.cond107.i, label %.lr.ph.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

.lr.ph.i:                                         ; preds = %bb.h
  br i1 %.not101.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE7GetImplEPmNS1_14IsSharedBufferE.exit.us.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.bg = and i64 %i.an, 7
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.split.i.us, label %.lr.ph.split.i

.lr.ph.split.i.us:                                ; preds = %.lr.ph.split.preheader.i, %bb.i
  %.0104.i.us = phi i64 [ %i.bk, %bb.i ], [ %4, %.lr.ph.split.preheader.i ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.0104.i.us
  %i.bj = load atomic i64, ptr %i.bi acquire, align 8
  %.not.i.us = icmp eq i64 %i.bj, %i.bd
  br i1 %.not.i.us, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.i.us
  %i.bk = add i64 %.0104.i.us, 1                  ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.bk, %.028.i
  br i1 %exitcond.not.i.us, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.split.i.us, !llvm.loop !6158

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE7GetImplEPmNS1_14IsSharedBufferE.exit.us.i: ; preds = %.lr.ph.i, %bb.j
  %.0104.us.i = phi i64 [ %i.bm, %bb.j ], [ %4, %.lr.ph.i ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.0104.us.i
  %.0.copyload.i.i.us.i = load i64, ptr %i.bl, align 1
  %.not.us.i = icmp eq i64 %.0.copyload.i.i.us.i, %i.bd
  br i1 %.not.us.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE7GetImplEPmNS1_14IsSharedBufferE.exit.us.i
  %i.bm = add i64 %.0104.us.i, 1                  ; 2 uses
  %exitcond110.not.i = icmp eq i64 %i.bm, %.028.i
  br i1 %exitcond110.not.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE7GetImplEPmNS1_14IsSharedBufferE.exit.us.i, !llvm.loop !6158

bb.k:                                             ; preds = %.lr.ph.split.i
  %i.bn = add i64 %.0104.i, 1                     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bn, %.028.i
  br i1 %exitcond.not.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE36EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.split.i, !llvm.loop !6158

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.preheader.i, %bb.k
  %.0104.i = phi i64 [ %i.bn, %bb.k ], [ %4, %.lr.ph.split.preheader.i ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.0104.i ; 2 uses
  %i.bp = load atomic i32, ptr %i.bo monotonic, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.br = load atomic i32, ptr %i.bq monotonic, align 4
  %.sroa.4.0.insert.ext.i.i = zext i32 %i.br to i64
end_hunk_8
begin_hunk_9_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE37EEENS1_18ElementsKindTraitsILS4_37EEEE12GrowCapacityEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEj:bb.a
; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE37EEENS1_18ElementsKindTraitsILS4_37EEEE3SetENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(none) %1, i64 %2, i64 %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  %i.b = add i64 %i.a, 71
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.a, 79
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, %i.d
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %2 ; 5 uses
  %i.k = add i64 %i.a, 31
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, 71
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i32, ptr %i.o monotonic, align 4
  %i.q = and i32 %i.p, 16
  %.not.i = icmp eq i32 %i.q, 0
  %i.r = add i64 %3, -1
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = tail call noundef i64 @_ZN2v88internal6BigInt7AsInt64EPb(ptr noundef nonnull align 4 dereferenceable(16) %i.s, ptr noundef null) #23 ; 4 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.t, ptr %i.j, align 1
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.u = ptrtoint ptr %i.j to i64
  %i.v = and i64 %i.u, 7
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store atomic i64 %i.t, ptr %i.j monotonic, align 8
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.e:                                             ; preds = %bb.c
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.t to i32
  %.sroa.4.0.extract.shift.i.i = lshr i64 %i.t, 32
  %.sroa.4.0.extract.trunc.i.i = trunc nuw i64 %.sroa.4.0.extract.shift.i.i to i32
  store atomic i32 %.sroa.0.0.extract.trunc.i.i, ptr %i.j monotonic, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store atomic i32 %.sroa.4.0.extract.trunc.i.i, ptr %i.x monotonic, align 4
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE37EEENS1_18ElementsKindTraitsILS4_37EEEE9SetAtomicENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEENS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2, i64 %3) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE37EEENS1_18ElementsKindTraitsILS4_37EEEE10SwapAtomicEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEENS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3, i64 %4) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE37EEENS1_18ElementsKindTraitsILS4_37EEEE20CompareAndSwapAtomicEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEESH_NS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3, i64 %4, i64 %5) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE37EEENS1_18ElementsKindTraitsILS4_37EEEE3AddEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEjNSB_INS0_6ObjectEEENS0_18PropertyAttributesEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i32 %3, ptr nofree readnone captures(none) %4, i32 %5, i32 %6) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE37EEENS1_18ElementsKindTraitsILS4_37EEEE4PushEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEPNS0_16BuiltinArgumentsEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, i32 %4) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE37EEENS1_18ElementsKindTraitsILS4_37EEEE7UnshiftEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEPNS0_16BuiltinArgumentsEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, i32 %4) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE37EEENS1_18ElementsKindTraitsILS4_37EEEE3PopEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE37EEENS1_18ElementsKindTraitsILS4_37EEEE5ShiftEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE37EEENS1_18ElementsKindTraitsILS4_37EEEE9NormalizeEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i, align 8
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE37EEENS1_18ElementsKindTraitsILS4_37EEEE11GetCapacityENS0_6TaggedINS0_8JSObjectEEENS9_INS0_14FixedArrayBaseEEE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1, i64 %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.460", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i64 %1, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1
  %i.b = add i64 %1, 31
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, 71
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i32, ptr %i.f monotonic, align 4
  %i.h = and i32 %i.g, 4
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %1, 39
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 3
  %.not2.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not2.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = call noundef i64 @_ZNK2v88internal12JSTypedArray30GetVariableLengthOrOutOfBoundsERb(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #23
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit

bb.d:                                             ; preds = %bb.b
  %i.n = add i64 %1, 55
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr %i.o, align 8
  %i.q = call noundef i64 @_ZNK2v88internal12JSTypedArray12element_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #23
  %i.r = udiv i64 %i.p, %i.q
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i.i = phi i64 [ %i.r, %bb.d ], [ %i.m, %bb.c ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i64 %.0.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE37EEENS1_18ElementsKindTraitsILS4_37EEEE4FillEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_6ObjectEEEmm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readonly returned captures(ret: address, provenance) %2, ptr nofree readonly captures(none) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 align 2 {
bb.a:
  %.val = load i64, ptr %3, align 8
  %i.a = add i64 %.val, -1
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = tail call noundef i64 @_ZN2v88internal6BigInt7AsInt64EPb(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef null) #23 ; 7 uses
  %i.d = load i64, ptr %2, align 8                ; 3 uses
  %i.e = add i64 %i.d, 71
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.d, 79
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.j, %i.g                       ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %.idx19.i = shl i64 %4, 3                       ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx19.i ; 6 uses
  %.idx.i = shl i64 %5, 3                         ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i ; 3 uses
  %i.o = add i64 %i.d, 31
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8
  %i.r = add i64 %i.q, 71
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i32, ptr %i.s monotonic, align 4
  %i.u = and i32 %i.t, 16
  %.not21.i = icmp eq i32 %i.u, 0
  br i1 %.not21.i, label %bb.b, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %.not23.i = icmp samesign eq i64 %.idx19.i, %.idx.i
  br i1 %.not23.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.c to i32
  %.sroa.4.0.extract.shift.i.i = lshr i64 %i.c, 32
  %.sroa.4.0.extract.trunc.i.i = trunc nuw i64 %.sroa.4.0.extract.shift.i.i to i32
  %i.v = and i64 %i.k, 7
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE7SetImplEPllNS1_14IsSharedBufferE.exit.i.us, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE7SetImplEPllNS1_14IsSharedBufferE.exit.i

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE7SetImplEPllNS1_14IsSharedBufferE.exit.i.us: ; preds = %.lr.ph.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE7SetImplEPllNS1_14IsSharedBufferE.exit.i.us
  %.024.i.us = phi ptr [ %i.x, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE7SetImplEPllNS1_14IsSharedBufferE.exit.i.us ], [ %i.m, %.lr.ph.i ] ; 2 uses
  store atomic i64 %i.c, ptr %.024.i.us monotonic, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.024.i.us, i64 8 ; 2 uses
  %.not.i.us = icmp eq ptr %i.x, %i.n
  br i1 %.not.i.us, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE7SetImplEPllNS1_14IsSharedBufferE.exit.i.us, !llvm.loop !6209

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE7SetImplEPllNS1_14IsSharedBufferE.exit.i: ; preds = %.lr.ph.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE7SetImplEPllNS1_14IsSharedBufferE.exit.i
  %.024.i = phi ptr [ %i.z, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE7SetImplEPllNS1_14IsSharedBufferE.exit.i ], [ %i.m, %.lr.ph.i ] ; 3 uses
  store atomic i32 %.sroa.0.0.extract.trunc.i.i, ptr %.024.i monotonic, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %.024.i, i64 4
  store atomic i32 %.sroa.4.0.extract.trunc.i.i, ptr %i.y monotonic, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.z, %i.n
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE7SetImplEPllNS1_14IsSharedBufferE.exit.i, !llvm.loop !6209

bb.b:                                             ; preds = %bb.a
  %i.aa = add i64 %i.c, 1
  %or.cond.i = icmp ult i64 %i.aa, 2
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %gepdiff.i = sub nsw i64 %.idx.i, %.idx19.i
  %i.ab = trunc nsw i64 %i.c to i8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 %i.ab, i64 %gepdiff.i, i1 false)
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.d:                                             ; preds = %bb.b
  %.not5.i.i.i.i = icmp samesign eq i64 %.idx19.i, %.idx.i
  br i1 %.not5.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.d
  %i.ac = add i64 %.idx.i, -8
  %i.ad = sub i64 %i.ac, %.idx19.i                ; 2 uses
  %i.ae = lshr exact i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ad, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.af, 4611686018427387900     ; 3 uses
  %i.ag = shl i64 %n.vec, 3
  %i.ah = getelementptr i8, ptr %i.m, i64 %i.ag
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.c, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.ai ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8
  store <2 x i64> %broadcast.splat, ptr %i.aj, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !6210

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i.i.i.i.preheader13

.lr.ph.i.i.i.i.preheader13:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.06.i.i.i.i.ph = phi ptr [ %i.m, %.lr.ph.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader13, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.06.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader13 ] ; 2 uses
  store i64 %i.c, ptr %.06.i.i.i.i, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.al, %i.n
  br i1 %.not.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i.i.i.i, !llvm.loop !6211

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE7SetImplEPllNS1_14IsSharedBufferE.exit.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE7SetImplEPllNS1_14IsSharedBufferE.exit.i.us, %.lr.ph.i.i.i.i, %middle.block, %.preheader.i, %bb.c, %bb.d
  ret ptr %2
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i16 1, 258) i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE37EEENS1_18ElementsKindTraitsILS4_37EEEE13IncludesValueEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_6ObjectEEEmm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readonly captures(none) %2, ptr nofree readonly captures(none) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.460", align 8 ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = load i64, ptr %2, align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i64 %i.c, ptr %6, align 8
  %i.d = add i64 %i.c, 31
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, 71
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i32, ptr %i.h monotonic, align 4
  %i.j = and i32 %i.i, 4
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %bb.b, label %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.k = add i64 %i.c, 39
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i32, ptr %i.l, align 4
  %i.n = and i32 %i.m, 3
  %.not2.i.i = icmp eq i32 %i.n, 0
  br i1 %.not2.i.i, label %bb.c, label %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i

bb.c:                                             ; preds = %bb.b
  %i.o = add i64 %i.c, 55
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8
  %i.r = call noundef i64 @_ZNK2v88internal12JSTypedArray12element_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #23
  %i.s = udiv i64 %i.q, %i.r
  br label %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i

_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i: ; preds = %bb.c, %bb.a
  %.0.i.ph.i = phi i64 [ 0, %bb.a ], [ %i.s, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.e

_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i: ; preds = %bb.b
  %i.t = call noundef i64 @_ZNK2v88internal12JSTypedArray30GetVariableLengthOrOutOfBoundsERb(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #23
  %.pre.i = load i8, ptr %i.a, align 1, !range !16
  %i.u = trunc nuw i8 %.pre.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %i.u, label %bb.d, label %bb.e, !prof !3743

bb.d:                                             ; preds = %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i
  %i.v = load i64, ptr %3, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.x = load i64, ptr %i.w, align 8
  %i.y = icmp eq i64 %i.v, %i.x
  %i.z = icmp ugt i64 %5, %4
  %i.aa = and i1 %i.z, %i.y
  %.sroa.0.0.insert.insert.i.i = select i1 %i.aa, i16 257, i16 1
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.e:                                             ; preds = %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i, %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i
  %.0.i115.i = phi i64 [ %.0.i.ph.i, %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.thread.i ], [ %i.t, %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i ] ; 2 uses
  %i.ab = icmp ult i64 %.0.i115.i, %5
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = load i64, ptr %3, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = icmp eq i64 %i.ac, %i.ae
  %i.ag = icmp ugt i64 %5, %4
  %or.cond.i = and i1 %i.ag, %i.af
  br i1 %or.cond.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.028.i = phi i64 [ %5, %bb.e ], [ %.0.i115.i, %bb.f ] ; 4 uses
  %i.ah = add i64 %i.c, 71
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = add i64 %i.c, 79
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i64, ptr %i.al, align 8
  %i.an = add i64 %i.am, %i.aj                    ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  %i.ap = load i64, ptr %i.e, align 8
  %i.aq = add i64 %i.ap, 71
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load atomic volatile i32, ptr %i.ar monotonic, align 4
  %i.at = and i32 %i.as, 16
  %.not101.i = icmp eq i32 %i.at, 0
  %i.au = load i64, ptr %3, align 8               ; 2 uses
  %i.av = trunc i64 %i.au to i1
  br i1 %i.av, label %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.g
  %i.aw = add nsw i64 %i.au, -1
  %i.ax = inttoptr i64 %i.aw to ptr               ; 2 uses
  %i.ay = load atomic volatile i64, ptr %i.ax monotonic, align 8
  %i.az = add i64 %i.ay, 11
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load atomic volatile i16, ptr %i.ba monotonic, align 2
  %i.bc = icmp eq i16 %i.bb, 129
  br i1 %i.bc, label %bb.h, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.h:                                             ; preds = %_ZN2v88internal8IsBigIntENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.bd = call noundef i64 @_ZN2v88internal6BigInt7AsInt64EPb(ptr noundef nonnull align 4 dereferenceable(16) %i.ax, ptr noundef nonnull %i.b) #23 ; 3 uses
  %i.be = load i8, ptr %i.b, align 1, !range !16, !noundef !17
  %i.bf = trunc nuw i8 %i.be to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %.not33103.i = icmp ult i64 %4, %.028.i
  %or.cond107.i = and i1 %.not33103.i, %i.bf
  br i1 %or.cond107.i, label %.lr.ph.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

.lr.ph.i:                                         ; preds = %bb.h
  br i1 %.not101.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE7GetImplEPlNS1_14IsSharedBufferE.exit.us.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.bg = and i64 %i.an, 7
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.split.i.us, label %.lr.ph.split.i

.lr.ph.split.i.us:                                ; preds = %.lr.ph.split.preheader.i, %bb.i
  %.0104.i.us = phi i64 [ %i.bk, %bb.i ], [ %4, %.lr.ph.split.preheader.i ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.0104.i.us
  %i.bj = load atomic i64, ptr %i.bi acquire, align 8
  %.not.i.us = icmp eq i64 %i.bj, %i.bd
  br i1 %.not.i.us, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.i.us
  %i.bk = add i64 %.0104.i.us, 1                  ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.bk, %.028.i
  br i1 %exitcond.not.i.us, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.split.i.us, !llvm.loop !6212

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE7GetImplEPlNS1_14IsSharedBufferE.exit.us.i: ; preds = %.lr.ph.i, %bb.j
  %.0104.us.i = phi i64 [ %i.bm, %bb.j ], [ %4, %.lr.ph.i ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.0104.us.i
  %.0.copyload.i.i.us.i = load i64, ptr %i.bl, align 1
  %.not.us.i = icmp eq i64 %.0.copyload.i.i.us.i, %i.bd
  br i1 %.not.us.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE7GetImplEPlNS1_14IsSharedBufferE.exit.us.i
  %i.bm = add i64 %.0104.us.i, 1                  ; 2 uses
  %exitcond110.not.i = icmp eq i64 %i.bm, %.028.i
  br i1 %exitcond110.not.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE7GetImplEPlNS1_14IsSharedBufferE.exit.us.i, !llvm.loop !6212

bb.k:                                             ; preds = %.lr.ph.split.i
  %i.bn = add i64 %.0104.i, 1                     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bn, %.028.i
  br i1 %exitcond.not.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE37EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.split.i, !llvm.loop !6212

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.preheader.i, %bb.k
  %.0104.i = phi i64 [ %i.bn, %bb.k ], [ %4, %.lr.ph.split.preheader.i ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.0104.i ; 2 uses
  %i.bp = load atomic i32, ptr %i.bo monotonic, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.br = load atomic i32, ptr %i.bq monotonic, align 4
  %.sroa.4.0.insert.ext.i.i = zext i32 %i.br to i64
end_hunk_9
begin_hunk_10_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE39EEENS1_18ElementsKindTraitsILS4_39EEEE10SwapAtomicEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEENS_15SeqCstAccessTagE:bb.a

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE39EEENS1_18ElementsKindTraitsILS4_39EEEE20CompareAndSwapAtomicEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEESH_NS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3, i64 %4, i64 %5) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE39EEENS1_18ElementsKindTraitsILS4_39EEEE3AddEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEjNSB_INS0_6ObjectEEENS0_18PropertyAttributesEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i32 %3, ptr nofree readnone captures(none) %4, i32 %5, i32 %6) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE39EEENS1_18ElementsKindTraitsILS4_39EEEE4PushEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEPNS0_16BuiltinArgumentsEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, i32 %4) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE39EEENS1_18ElementsKindTraitsILS4_39EEEE7UnshiftEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEPNS0_16BuiltinArgumentsEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, i32 %4) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE39EEENS1_18ElementsKindTraitsILS4_39EEEE3PopEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE39EEENS1_18ElementsKindTraitsILS4_39EEEE5ShiftEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE39EEENS1_18ElementsKindTraitsILS4_39EEEE9NormalizeEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i, align 8
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE39EEENS1_18ElementsKindTraitsILS4_39EEEE11GetCapacityENS0_6TaggedINS0_8JSObjectEEENS9_INS0_14FixedArrayBaseEEE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1, i64 %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.460", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i64 %1, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1
  %i.b = add i64 %1, 31
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, 71
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i32, ptr %i.f monotonic, align 4
  %i.h = and i32 %i.g, 4
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %1, 39
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 3
  %.not2.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not2.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = call noundef i64 @_ZNK2v88internal12JSTypedArray30GetVariableLengthOrOutOfBoundsERb(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #23
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit

bb.d:                                             ; preds = %bb.b
  %i.n = add i64 %1, 55
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr %i.o, align 8
  %i.q = call noundef i64 @_ZNK2v88internal12JSTypedArray12element_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #23
  %i.r = udiv i64 %i.p, %i.q
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i.i = phi i64 [ %i.r, %bb.d ], [ %i.m, %bb.c ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i64 %.0.i.i.i
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE39EEENS1_18ElementsKindTraitsILS4_39EEEE4FillEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_6ObjectEEEmm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readonly returned captures(ret: address, provenance) %2, ptr nofree readonly captures(none) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #10 align 2 {
bb.a:
  %.val = load i64, ptr %3, align 8               ; 3 uses
  %i.a = and i64 %.val, 1
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %.val, 32
  %i.d = trunc nuw i64 %i.c to i32
  %i.e = sitofp i32 %i.d to float
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromHandleENS0_12DirectHandleINS0_6ObjectEEEPb.exit.i

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i: ; preds = %bb.a
  %i.f = add nsw i64 %.val, -1
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = load atomic volatile i64, ptr %i.g monotonic, align 8
  %i.i = add i64 %i.h, 11
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i16, ptr %i.j monotonic, align 2
  %i.l = icmp eq i16 %i.k, 130
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.m, align 8 ; 9 uses
  %i.n = fcmp ogt double %.0.copyload.i.i.i.i.i.i.i, f0x47EFFFFFE0000000 ; 2 uses
  br i1 %i.l, label %bb.c, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i

bb.c:                                             ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = fcmp ugt double %.0.copyload.i.i.i.i.i.i.i, f0x47EFFFFFEFFFFFFF
  br i1 %i.o, label %bb.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromHandleENS0_12DirectHandleINS0_6ObjectEEEPb.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = fcmp olt double %.0.copyload.i.i.i.i.i.i.i, f0xC7EFFFFFE0000000
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = fcmp ult double %.0.copyload.i.i.i.i.i.i.i, f0xC7EFFFFFEFFFFFFF
  br i1 %i.q, label %bb.l, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromHandleENS0_12DirectHandleINS0_6ObjectEEEPb.exit.i

bb.g:                                             ; preds = %bb.e
  %i.r = fptrunc double %.0.copyload.i.i.i.i.i.i.i to float
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromHandleENS0_12DirectHandleINS0_6ObjectEEEPb.exit.i

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i: ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i
  br i1 %i.n, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i
  %i.s = fcmp ugt double %.0.copyload.i.i.i.i.i.i.i, f0x47EFFFFFEFFFFFFF
  br i1 %i.s, label %bb.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromHandleENS0_12DirectHandleINS0_6ObjectEEEPb.exit.i

bb.i:                                             ; preds = %bb.h, %bb.d
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromHandleENS0_12DirectHandleINS0_6ObjectEEEPb.exit.i

bb.j:                                             ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i
  %i.t = fcmp olt double %.0.copyload.i.i.i.i.i.i.i, f0xC7EFFFFFE0000000
  br i1 %i.t, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.u = fcmp ult double %.0.copyload.i.i.i.i.i.i.i, f0xC7EFFFFFEFFFFFFF
  br i1 %i.u, label %bb.l, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromHandleENS0_12DirectHandleINS0_6ObjectEEEPb.exit.i

bb.l:                                             ; preds = %bb.k, %bb.f
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromHandleENS0_12DirectHandleINS0_6ObjectEEEPb.exit.i

bb.m:                                             ; preds = %bb.j
  %i.v = fptrunc double %.0.copyload.i.i.i.i.i.i.i to float
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromHandleENS0_12DirectHandleINS0_6ObjectEEEPb.exit.i

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromHandleENS0_12DirectHandleINS0_6ObjectEEEPb.exit.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.b
  %.0.i.i.i = phi float [ %i.e, %bb.b ], [ f0xFF7FFFFF, %bb.f ], [ %i.r, %bb.g ], [ f0xFF7FFFFF, %bb.k ], [ f0x7F7FFFFF, %bb.d ], [ -inf, %bb.l ], [ %i.v, %bb.m ], [ +inf, %bb.i ], [ f0x7F7FFFFF, %bb.h ] ; 6 uses
  %i.w = load i64, ptr %2, align 8                ; 3 uses
  %i.x = add i64 %i.w, 71
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = add i64 %i.w, 79
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add i64 %i.ac, %i.z                     ; 2 uses
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %.idx19.i = shl i64 %4, 2                       ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx19.i ; 6 uses
  %.idx.i = shl i64 %5, 2                         ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx.i ; 3 uses
  %i.ah = add i64 %i.w, 31
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = add i64 %i.aj, 71
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i32, ptr %i.al monotonic, align 4
  %i.an = and i32 %i.am, 16
  %.not22.i = icmp eq i32 %i.an, 0
  br i1 %.not22.i, label %bb.n, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromHandleENS0_12DirectHandleINS0_6ObjectEEEPb.exit.i
  %.not24.i = icmp samesign eq i64 %.idx19.i, %.idx.i
  br i1 %.not24.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ao = bitcast float %.0.i.i.i to i32
  %i.ap = and i64 %i.ad, 3
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.us, label %.loopexit.i.i

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.us: ; preds = %.lr.ph.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.us
  %.025.i.us = phi ptr [ %i.ar, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.us ], [ %i.af, %.lr.ph.i ] ; 2 uses
  store atomic float %.0.i.i.i, ptr %.025.i.us monotonic, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %.025.i.us, i64 4 ; 2 uses
  %.not.i.us = icmp eq ptr %i.ar, %i.ag
  br i1 %.not.i.us, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.us, !llvm.loop !6385

.loopexit.i.i:                                    ; preds = %.lr.ph.i, %.loopexit.i.i
  %.025.i = phi ptr [ %i.as, %.loopexit.i.i ], [ %i.af, %.lr.ph.i ] ; 2 uses
  store atomic i32 %i.ao, ptr %.025.i monotonic, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %.025.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.as, %i.ag
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.loopexit.i.i, !llvm.loop !6385

bb.n:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE10FromHandleENS0_12DirectHandleINS0_6ObjectEEEPb.exit.i
  %i.at = fcmp oeq float %.0.i.i.i, 0.000000e+00
  br i1 %i.at, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.au = fpext float %.0.i.i.i to double
  %i.av = tail call noundef i1 @llvm.is.fpclass.f64(double %i.au, /* (nzero) */ i32 32)
  br i1 %i.av, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %gepdiff.i = sub nsw i64 %.idx.i, %.idx19.i
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.af, i8 0, i64 %gepdiff.i, i1 false)
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.q:                                             ; preds = %bb.o, %bb.n
  %.not6.i.i.i.i = icmp samesign eq i64 %.idx19.i, %.idx.i
  br i1 %.not6.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.q
  %i.aw = add i64 %.idx.i, -4
  %i.ax = sub i64 %i.aw, %.idx19.i                ; 2 uses
  %i.ay = lshr exact i64 %i.ax, 2
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ax, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.az, 9223372036854775800     ; 3 uses
  %i.ba = shl i64 %n.vec, 2
  %i.bb = getelementptr i8, ptr %i.af, i64 %i.ba
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.0.i.i.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.bc ; 2 uses
  %i.bd = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %broadcast.splat, ptr %next.gep, align 4
  store <4 x float> %broadcast.splat, ptr %i.bd, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !6386

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i.i.i.i.preheader13

.lr.ph.i.i.i.i.preheader13:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.i.i.preheader ], [ %i.bb, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader13, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i ], [ %.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader13 ] ; 2 uses
  store float %.0.i.i.i, ptr %.07.i.i.i.i, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bf, %i.ag
  br i1 %.not.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i.i.i.i, !llvm.loop !6387

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit: ; preds = %.loopexit.i.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7SetImplEPffNS1_14IsSharedBufferE.exit.i.us, %.lr.ph.i.i.i.i, %middle.block, %.preheader.i, %bb.p, %bb.q
  ret ptr %2
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i16 1, 258) i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE39EEENS1_18ElementsKindTraitsILS4_39EEEE13IncludesValueEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_6ObjectEEEmm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readonly captures(none) %2, ptr nofree readonly captures(none) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.460", align 8 ; 5 uses
  %i.b = load i64, ptr %2, align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i64 %i.b, ptr %6, align 8
  %i.c = add i64 %i.b, 31
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add i64 %i.e, 71
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i32, ptr %i.g monotonic, align 4
  %i.i = and i32 %i.h, 4
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.b, label %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i

bb.b:                                             ; preds = %bb.a
  %i.j = add i64 %i.b, 39
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 3
  %.not2.i.i = icmp eq i32 %i.m, 0
  br i1 %.not2.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = call noundef i64 @_ZNK2v88internal12JSTypedArray30GetVariableLengthOrOutOfBoundsERb(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #23
  br label %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i

bb.d:                                             ; preds = %bb.b
  %i.o = add i64 %i.b, 55
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8
  %i.r = call noundef i64 @_ZNK2v88internal12JSTypedArray12element_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #23
  %i.s = udiv i64 %i.q, %i.r
  br label %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i

_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %.0.i49.i = phi i64 [ %i.s, %bb.d ], [ %i.n, %bb.c ], [ 0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.t = load i8, ptr %i.a, align 1, !range !16, !noundef !17
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %bb.f, !prof !5

bb.e:                                             ; preds = %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i
  %i.v = load i64, ptr %3, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.x = load i64, ptr %i.w, align 8
  %i.y = icmp eq i64 %i.v, %i.x
  %i.z = icmp ugt i64 %5, %4
  %i.aa = and i1 %i.z, %i.y
  %.sroa.0.0.insert.insert.i.i = select i1 %i.aa, i16 257, i16 1
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.f:                                             ; preds = %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i
  %i.ab = icmp ult i64 %.0.i49.i, %5
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = load i64, ptr %3, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = icmp eq i64 %i.ac, %i.ae
  %i.ag = icmp ugt i64 %5, %4
  %or.cond.i = and i1 %i.ag, %i.af
  br i1 %or.cond.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.043.i = phi i64 [ %5, %bb.f ], [ %.0.i49.i, %bb.g ] ; 8 uses
  %i.ah = add i64 %i.b, 71
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = add i64 %i.b, 79
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i64, ptr %i.al, align 8
  %i.an = add i64 %i.am, %i.aj                    ; 3 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 6 uses
  %i.ap = load i64, ptr %i.d, align 8
  %i.aq = add i64 %i.ap, 71
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load atomic volatile i32, ptr %i.ar monotonic, align 4
  %i.at = and i32 %i.as, 16
  %.not149.i = icmp eq i32 %i.at, 0               ; 2 uses
  %i.au = load i64, ptr %3, align 8               ; 3 uses
  %i.av = and i64 %i.au, 1
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.h
  %i.ax = add nsw i64 %i.au, -1
  %i.ay = inttoptr i64 %i.ax to ptr               ; 2 uses
  %i.az = load atomic volatile i64, ptr %i.ay monotonic, align 8
  %i.ba = add i64 %i.az, 11
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load atomic volatile i16, ptr %i.bb monotonic, align 2
  %i.bd = icmp eq i16 %i.bc, 130
  br i1 %i.bd, label %bb.j, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.i:                                             ; preds = %bb.h
  %i.be = lshr i64 %i.au, 32
  %i.bf = trunc nuw i64 %i.be to i32
  %i.bg = sitofp i32 %i.bf to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

bb.j:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.bh, align 8
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i: ; preds = %bb.j, %bb.i
  %i.bi = phi double [ %i.bg, %bb.i ], [ %.0.copyload.i.i.i.i.i.i.i, %bb.j ] ; 4 uses
  %i.bj = call double @llvm.fabs.f64(double %i.bi) ; 2 uses
  %i.bk = fcmp ueq double %i.bj, +inf
  br i1 %i.bk, label %bb.k, label %bb.o

bb.k:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i
  %i.bl = fcmp uno double %i.bi, 0.000000e+00
  br i1 %i.bl, label %.preheader.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE18ToTypedSearchValueEdPf.exit.i

.preheader.i:                                     ; preds = %bb.k
  %.not158.i = icmp ult i64 %4, %.043.i
  br i1 %.not158.i, label %.lr.ph160.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

.lr.ph160.i:                                      ; preds = %.preheader.i
  br i1 %.not149.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7GetImplEPfNS1_14IsSharedBufferE.exit.us.i, label %.lr.ph160.split.preheader.i

.lr.ph160.split.preheader.i:                      ; preds = %.lr.ph160.i
  %i.bm = and i64 %i.an, 3
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph160.split.i.us, label %.lr.ph160.split.i

.lr.ph160.split.i.us:                             ; preds = %.lr.ph160.split.preheader.i, %bb.l
  %.042159.i.us = phi i64 [ %i.br, %bb.l ], [ %4, %.lr.ph160.split.preheader.i ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.042159.i.us
  %i.bp = load atomic float, ptr %i.bo acquire, align 4
  %i.bq = fcmp uno float %i.bp, 0.000000e+00
  br i1 %i.bq, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph160.split.i.us
  %i.br = add i64 %.042159.i.us, 1                ; 2 uses
  %exitcond173.not.i.us = icmp eq i64 %i.br, %.043.i
  br i1 %exitcond173.not.i.us, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph160.split.i.us, !llvm.loop !6388

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7GetImplEPfNS1_14IsSharedBufferE.exit.us.i: ; preds = %.lr.ph160.i, %bb.m
  %.042159.us.i = phi i64 [ %i.bu, %bb.m ], [ %4, %.lr.ph160.i ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.042159.us.i
  %.0.copyload.i.i.us.i = load float, ptr %i.bs, align 1
  %i.bt = fcmp uno float %.0.copyload.i.i.us.i, 0.000000e+00
  br i1 %i.bt, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7GetImplEPfNS1_14IsSharedBufferE.exit.us.i
  %i.bu = add i64 %.042159.us.i, 1                ; 2 uses
  %exitcond174.not.i = icmp eq i64 %i.bu, %.043.i
  br i1 %exitcond174.not.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE39EE7GetImplEPfNS1_14IsSharedBufferE.exit.us.i, !llvm.loop !6388
end_hunk_10
begin_hunk_11_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE40EEENS1_18ElementsKindTraitsILS4_40EEEE3SetENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE:bb.a

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE10FromObjectENS0_6TaggedINS0_6ObjectEEEPb.exit.i: ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %bb.b
  %.0.i.i = phi double [ %i.v, %bb.b ], [ %.0.copyload.i.i.i.i.i.i, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i ] ; 3 uses
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE10FromObjectENS0_6TaggedINS0_6ObjectEEEPb.exit.i
  store double %.0.i.i, ptr %i.j, align 1
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.d:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE10FromObjectENS0_6TaggedINS0_6ObjectEEEPb.exit.i
  %i.ad = ptrtoint ptr %i.j to i64
  %i.ae = and i64 %i.ad, 7
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store atomic double %.0.i.i, ptr %i.j monotonic, align 8
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = bitcast double %.0.i.i to i64           ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.ag to i32
  store atomic i32 %.sroa.0.0.extract.trunc.i.i, ptr %i.j monotonic, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.sroa.0.4.extract.shift.i.i = lshr i64 %i.ag, 32
  %.sroa.0.4.extract.trunc.i.i = trunc nuw i64 %.sroa.0.4.extract.shift.i.i to i32
  store atomic i32 %.sroa.0.4.extract.trunc.i.i, ptr %i.ah monotonic, align 4
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE7SetImplENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.c, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE40EEENS1_18ElementsKindTraitsILS4_40EEEE9SetAtomicENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEENS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2, i64 %3) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE40EEENS1_18ElementsKindTraitsILS4_40EEEE10SwapAtomicEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEENS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3, i64 %4) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE40EEENS1_18ElementsKindTraitsILS4_40EEEE20CompareAndSwapAtomicEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS0_6TaggedINS0_6ObjectEEESH_NS_15SeqCstAccessTagE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3, i64 %4, i64 %5) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE40EEENS1_18ElementsKindTraitsILS4_40EEEE3AddEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEjNSB_INS0_6ObjectEEENS0_18PropertyAttributesEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i32 %3, ptr nofree readnone captures(none) %4, i32 %5, i32 %6) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE40EEENS1_18ElementsKindTraitsILS4_40EEEE4PushEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEPNS0_16BuiltinArgumentsEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, i32 %4) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE40EEENS1_18ElementsKindTraitsILS4_40EEEE7UnshiftEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEEPNS0_16BuiltinArgumentsEj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, i32 %4) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE40EEENS1_18ElementsKindTraitsILS4_40EEEE3PopEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE40EEENS1_18ElementsKindTraitsILS4_40EEEE5ShiftEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE40EEENS1_18ElementsKindTraitsILS4_40EEEE9NormalizeEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i, align 8
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE40EEENS1_18ElementsKindTraitsILS4_40EEEE11GetCapacityENS0_6TaggedINS0_8JSObjectEEENS9_INS0_14FixedArrayBaseEEE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1, i64 %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.460", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i64 %1, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1
  %i.b = add i64 %1, 31
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, 71
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i32, ptr %i.f monotonic, align 4
  %i.h = and i32 %i.g, 4
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %1, 39
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 3
  %.not2.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not2.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = call noundef i64 @_ZNK2v88internal12JSTypedArray30GetVariableLengthOrOutOfBoundsERb(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #23
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit

bb.d:                                             ; preds = %bb.b
  %i.n = add i64 %1, 55
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr %i.o, align 8
  %i.q = call noundef i64 @_ZNK2v88internal12JSTypedArray12element_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #23
  %i.r = udiv i64 %i.p, %i.q
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE15GetCapacityImplENS0_6TaggedINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEE.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i.i = phi i64 [ %i.r, %bb.d ], [ %i.m, %bb.c ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i64 %.0.i.i.i
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE40EEENS1_18ElementsKindTraitsILS4_40EEEE4FillEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_6ObjectEEEmm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readonly returned captures(ret: address, provenance) %2, ptr nofree readonly captures(none) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #10 align 2 {
bb.a:
  %.val = load i64, ptr %3, align 8               ; 3 uses
  %i.a = and i64 %.val, 1
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %.val, 32
  %i.d = trunc nuw i64 %i.c to i32
  %i.e = sitofp i32 %i.d to double
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE10FromHandleENS0_12DirectHandleINS0_6ObjectEEEPb.exit.i

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i: ; preds = %bb.a
  %i.f = add nsw i64 %.val, -1
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = load atomic volatile i64, ptr %i.g monotonic, align 8
  %i.i = add i64 %i.h, 11
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i16, ptr %i.j monotonic, align 2 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.l, align 8
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE10FromHandleENS0_12DirectHandleINS0_6ObjectEEEPb.exit.i

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE10FromHandleENS0_12DirectHandleINS0_6ObjectEEEPb.exit.i: ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, %bb.b
  %.0.i.i.i = phi double [ %i.e, %bb.b ], [ %.0.copyload.i.i.i.i.i.i.i, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i ] ; 6 uses
  %i.m = load i64, ptr %2, align 8                ; 3 uses
  %i.n = add i64 %i.m, 71
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr %i.o, align 8
  %i.q = add i64 %i.m, 79
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load i64, ptr %i.r, align 8
  %i.t = add i64 %i.s, %i.p                       ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %.idx19.i = shl i64 %4, 3                       ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx19.i ; 6 uses
  %.idx.i = shl i64 %5, 3                         ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i ; 3 uses
  %i.x = add i64 %i.m, 31
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = add i64 %i.z, 71
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i32, ptr %i.ab monotonic, align 4
  %i.ad = and i32 %i.ac, 16
  %.not22.i = icmp eq i32 %i.ad, 0
  br i1 %.not22.i, label %bb.c, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE10FromHandleENS0_12DirectHandleINS0_6ObjectEEEPb.exit.i
  %.not24.i = icmp samesign eq i64 %.idx19.i, %.idx.i
  br i1 %.not24.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ae = bitcast double %.0.i.i.i to i64         ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.ae to i32
  %.sroa.0.4.extract.shift.i.i = lshr i64 %i.ae, 32
  %.sroa.0.4.extract.trunc.i.i = trunc nuw i64 %.sroa.0.4.extract.shift.i.i to i32
  %i.af = and i64 %i.t, 7
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE7SetImplEPddNS1_14IsSharedBufferE.exit.i.us, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE7SetImplEPddNS1_14IsSharedBufferE.exit.i

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE7SetImplEPddNS1_14IsSharedBufferE.exit.i.us: ; preds = %.lr.ph.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE7SetImplEPddNS1_14IsSharedBufferE.exit.i.us
  %.025.i.us = phi ptr [ %i.ah, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE7SetImplEPddNS1_14IsSharedBufferE.exit.i.us ], [ %i.v, %.lr.ph.i ] ; 2 uses
  store atomic double %.0.i.i.i, ptr %.025.i.us monotonic, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.025.i.us, i64 8 ; 2 uses
  %.not.i.us = icmp eq ptr %i.ah, %i.w
  br i1 %.not.i.us, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE7SetImplEPddNS1_14IsSharedBufferE.exit.i.us, !llvm.loop !6550

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE7SetImplEPddNS1_14IsSharedBufferE.exit.i: ; preds = %.lr.ph.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE7SetImplEPddNS1_14IsSharedBufferE.exit.i
  %.025.i = phi ptr [ %i.aj, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE7SetImplEPddNS1_14IsSharedBufferE.exit.i ], [ %i.v, %.lr.ph.i ] ; 3 uses
  store atomic i32 %.sroa.0.0.extract.trunc.i.i, ptr %.025.i monotonic, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.025.i, i64 4
  store atomic i32 %.sroa.0.4.extract.trunc.i.i, ptr %i.ai monotonic, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.025.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.aj, %i.w
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE7SetImplEPddNS1_14IsSharedBufferE.exit.i, !llvm.loop !6550

bb.c:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE10FromHandleENS0_12DirectHandleINS0_6ObjectEEEPb.exit.i
  %i.ak = fcmp oeq double %.0.i.i.i, 0.000000e+00
  br i1 %i.ak, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.al = tail call noundef i1 @llvm.is.fpclass.f64(double %.0.i.i.i, /* (nzero) */ i32 32)
  br i1 %i.al, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %gepdiff.i = sub nsw i64 %.idx.i, %.idx19.i
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %gepdiff.i, i1 false)
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %.not6.i.i.i.i = icmp samesign eq i64 %.idx19.i, %.idx.i
  br i1 %.not6.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.f
  %i.am = add i64 %.idx.i, -8
  %i.an = sub i64 %i.am, %.idx19.i                ; 2 uses
  %i.ao = lshr exact i64 %i.an, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.an, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ap, 4611686018427387900     ; 3 uses
  %i.aq = shl i64 %n.vec, 3
  %i.ar = getelementptr i8, ptr %i.v, i64 %i.aq
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.0.i.i.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %broadcast.splat, ptr %next.gep, align 8
  store <2 x double> %broadcast.splat, ptr %i.at, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !6551

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i.i.i.i.preheader13

.lr.ph.i.i.i.i.preheader13:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.ph = phi ptr [ %i.v, %.lr.ph.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader13, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i ], [ %.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader13 ] ; 2 uses
  store double %.0.i.i.i, ptr %.07.i.i.i.i, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.av, %i.w
  br i1 %.not.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.i.i.i.i, !llvm.loop !6552

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE8FillImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE7SetImplEPddNS1_14IsSharedBufferE.exit.i, %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE7SetImplEPddNS1_14IsSharedBufferE.exit.i.us, %.lr.ph.i.i.i.i, %middle.block, %.preheader.i, %bb.e, %bb.f
  ret ptr %2
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i16 1, 258) i16 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_21TypedElementsAccessorILNS0_12ElementsKindE40EEENS1_18ElementsKindTraitsILS4_40EEEE13IncludesValueEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_6ObjectEEEmm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readonly captures(none) %2, ptr nofree readonly captures(none) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.460", align 8 ; 5 uses
  %i.b = load i64, ptr %2, align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i64 %i.b, ptr %6, align 8
  %i.c = add i64 %i.b, 31
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add i64 %i.e, 71
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i32, ptr %i.g monotonic, align 4
  %i.i = and i32 %i.h, 4
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.b, label %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i

bb.b:                                             ; preds = %bb.a
  %i.j = add i64 %i.b, 39
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 3
  %.not2.i.i = icmp eq i32 %i.m, 0
  br i1 %.not2.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = call noundef i64 @_ZNK2v88internal12JSTypedArray30GetVariableLengthOrOutOfBoundsERb(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #23
  br label %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i

bb.d:                                             ; preds = %bb.b
  %i.o = add i64 %i.b, 55
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8
  %i.r = call noundef i64 @_ZNK2v88internal12JSTypedArray12element_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #23
  %i.s = udiv i64 %i.q, %i.r
  br label %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i

_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %.0.i49.i = phi i64 [ %i.s, %bb.d ], [ %i.n, %bb.c ], [ 0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.t = load i8, ptr %i.a, align 1, !range !16, !noundef !17
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %bb.f, !prof !5

bb.e:                                             ; preds = %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i
  %i.v = load i64, ptr %3, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.x = load i64, ptr %i.w, align 8
  %i.y = icmp eq i64 %i.v, %i.x
  %i.z = icmp ugt i64 %5, %4
  %i.aa = and i1 %i.z, %i.y
  %.sroa.0.0.insert.insert.i.i = select i1 %i.aa, i16 257, i16 1
  br label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.f:                                             ; preds = %_ZNK2v88internal12JSTypedArray22GetLengthOrOutOfBoundsERb.exit.i
  %i.ab = icmp ult i64 %.0.i49.i, %5
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = load i64, ptr %3, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = icmp eq i64 %i.ac, %i.ae
  %i.ag = icmp ugt i64 %5, %4
  %or.cond.i = and i1 %i.ag, %i.af
  br i1 %or.cond.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.043.i = phi i64 [ %5, %bb.f ], [ %.0.i49.i, %bb.g ] ; 8 uses
  %i.ah = add i64 %i.b, 71
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = add i64 %i.b, 79
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i64, ptr %i.al, align 8
  %i.an = add i64 %i.am, %i.aj                    ; 3 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 6 uses
  %i.ap = load i64, ptr %i.d, align 8
  %i.aq = add i64 %i.ap, 71
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load atomic volatile i32, ptr %i.ar monotonic, align 4
  %i.at = and i32 %i.as, 16
  %.not147.i = icmp eq i32 %i.at, 0               ; 2 uses
  %i.au = load i64, ptr %3, align 8               ; 3 uses
  %i.av = and i64 %i.au, 1
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.h
  %i.ax = add nsw i64 %i.au, -1
  %i.ay = inttoptr i64 %i.ax to ptr               ; 2 uses
  %i.az = load atomic volatile i64, ptr %i.ay monotonic, align 8
  %i.ba = add i64 %i.az, 11
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load atomic volatile i16, ptr %i.bb monotonic, align 2
  %i.bd = icmp eq i16 %i.bc, 130
  br i1 %i.bd, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i: ; preds = %bb.h
  %i.be = lshr i64 %i.au, 32
  %i.bf = trunc nuw i64 %i.be to i32
  %i.bg = sitofp i32 %i.bf to double
  br label %.preheader149.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.bh, align 8 ; 2 uses
  %or.cond146.i = fcmp uno double %.0.copyload.i.i.i.i.i.i.i, 0.000000e+00
  br i1 %or.cond146.i, label %.preheader.i, label %.preheader149.i

.preheader149.i:                                  ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i
  %i.bi = phi double [ %i.bg, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i ], [ %.0.copyload.i.i.i.i.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i ] ; 3 uses
  %.not48152.i = icmp ult i64 %4, %.043.i
  br i1 %.not48152.i, label %.lr.ph.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

.lr.ph.i:                                         ; preds = %.preheader149.i
  br i1 %.not147.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE7GetImplEPdNS1_14IsSharedBufferE.exit72.us.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.bj = and i64 %i.an, 7
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.split.i.us, label %.lr.ph.split.i

.lr.ph.split.i.us:                                ; preds = %.lr.ph.split.preheader.i, %bb.i
  %.0153.i.us = phi i64 [ %i.bo, %bb.i ], [ %4, %.lr.ph.split.preheader.i ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.0153.i.us
  %i.bm = load atomic double, ptr %i.bl acquire, align 8
  %i.bn = fcmp une double %i.bm, %i.bi
  br i1 %i.bn, label %bb.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.i:                                             ; preds = %.lr.ph.split.i.us
  %i.bo = add i64 %.0153.i.us, 1                  ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.bo, %.043.i
  br i1 %exitcond.not.i.us, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %.lr.ph.split.i.us, !llvm.loop !6553

_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE7GetImplEPdNS1_14IsSharedBufferE.exit72.us.i: ; preds = %.lr.ph.i, %bb.j
  %.0153.us.i = phi i64 [ %i.br, %bb.j ], [ %4, %.lr.ph.i ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.0153.us.i
  %.0.copyload.i.i66.us.i = load double, ptr %i.bp, align 1
  %i.bq = fcmp une double %.0.copyload.i.i66.us.i, %i.bi
  br i1 %i.bq, label %bb.j, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

bb.j:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE7GetImplEPdNS1_14IsSharedBufferE.exit72.us.i
  %i.br = add i64 %.0153.us.i, 1                  ; 2 uses
  %exitcond169.not.i = icmp eq i64 %i.br, %.043.i
  br i1 %exitcond169.not.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE7GetImplEPdNS1_14IsSharedBufferE.exit72.us.i, !llvm.loop !6553

.preheader.i:                                     ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i
  %.not156.i = icmp ult i64 %4, %.043.i
  br i1 %.not156.i, label %.lr.ph158.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE17IncludesValueImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS7_INS0_6ObjectEEEmm.exit

.lr.ph158.i:                                      ; preds = %.preheader.i
  br i1 %.not147.i, label %_ZN2v88internal12_GLOBAL__N_121TypedElementsAccessorILNS0_12ElementsKindE40EE7GetImplEPdNS1_14IsSharedBufferE.exit.us.i, label %.lr.ph158.split.preheader.i

end_hunk_11
