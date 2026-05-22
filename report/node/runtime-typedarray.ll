inline.NumInlined: 1106
inline.NumDeleted: 583
begin_hunk_0_@_ZN2v88internal32Runtime_ArrayBufferMaxByteLengthEiPmPNS0_7IsolateE:bb.a
  store i32 %i.ae, ptr %i.e, align 8
  %i.af = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.af, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.e, !prof !5

bb.e:                                             ; preds = %bb.d
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #10
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.e, %bb.d
  ret i64 %i.ac
}

declare i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320), i64, ptr noundef) local_unnamed_addr #2

declare i16 @_ZN2v88internal13JSArrayBuffer6DetachENS0_12DirectHandleIS1_EEbNS2_INS0_6ObjectEEE(ptr, i1 noundef zeroext, ptr) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #3

declare ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, ptr, i64) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64, i64 noundef, i64) local_unnamed_addr #2

declare void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64, i64, i64) local_unnamed_addr #2

declare ptr @_ZN2v88internal12JSTypedArray9GetBufferEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #10, !inline_history !38
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4              ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #10, !inline_history !38
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE12NewByteArrayEiNS0_14AllocationTypeENS0_19AllocationAlignmentE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare noundef i32 @_ZNK2v88internal12JSTypedArray4typeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_110CompareNumIfEEbT_S3_(float noundef %0, float noundef %1) #6 {
bb.a:
  %i.a = fcmp olt float %0, %1
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp ogt float %0, %1
  br i1 %i.b, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = fcmp oeq float %0, 0.000000e+00
  %i.d = fcmp oeq float %0, %1
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = bitcast float %0 to i32
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.g = bitcast float %1 to i32
  %i.h = icmp sgt i32 %i.g, -1
  br label %.thread

bb.f:                                             ; preds = %bb.c
  %i.i = fcmp ord float %0, 0.000000e+00
  %i.j = fcmp uno float %1, 0.000000e+00
  %or.cond19 = and i1 %i.i, %i.j
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ %i.h, %bb.e ], [ %or.cond19, %bb.f ], [ false, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_110CompareNumIdEEbT_S3_(double noundef %0, double noundef %1) #6 {
bb.a:
  %i.a = fcmp olt double %0, %1
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp ogt double %0, %1
  br i1 %i.b, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = fcmp oeq double %0, 0.000000e+00
  %i.d = fcmp oeq double %0, %1
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = bitcast double %0 to i64
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.g = bitcast double %1 to i64
  %i.h = icmp sgt i64 %i.g, -1
  br label %.thread

bb.f:                                             ; preds = %bb.c
  %i.i = fcmp ord double %0, 0.000000e+00
  %i.j = fcmp uno double %1, 0.000000e+00
  %or.cond19 = and i1 %i.i, %i.j
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ %i.h, %bb.e ], [ %or.cond19, %bb.f ], [ false, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_122LessThanFloat16RawBitsEtt(i16 noundef zeroext %0, i16 noundef zeroext %1) #6 {
bb.a:
  %i.a = insertelement <2 x i16> poison, i16 %0, i64 0
  %i.b = insertelement <2 x i16> %i.a, i16 %1, i64 1 ; 2 uses
  %i.c = zext <2 x i16> %i.b to <2 x i32>         ; 2 uses
  %i.d = sext <2 x i16> %i.b to <2 x i32>
  %i.e = shl <2 x i32> %i.c, splat (i32 17)       ; 2 uses
  %i.f = lshr exact <2 x i32> %i.e, splat (i32 4)
  %i.g = or disjoint <2 x i32> %i.f, splat (i32 1879048192)
  %i.h = bitcast <2 x i32> %i.g to <2 x float>
  %i.i = and <2 x i32> %i.c, splat (i32 32767)
  %i.j = or disjoint <2 x i32> %i.i, splat (i32 1056964608)
  %i.k = bitcast <2 x i32> %i.j to <2 x float>
  %i.l = icmp ult <2 x i32> %i.e, splat (i32 134217728)
  %i.m = fadd <2 x float> %i.k, splat (float -5.000000e-01)
  %i.n = fmul <2 x float> %i.h, splat (float 1.925930e-34)
  %i.o = select <2 x i1> %i.l, <2 x float> %i.m, <2 x float> %i.n
  %i.p = bitcast <2 x float> %i.o to <2 x i32>
  %i.q = and <2 x i32> %i.d, splat (i32 -2147483648)
  %i.r = or <2 x i32> %i.q, %i.p                  ; 3 uses
  %i.s = bitcast <2 x i32> %i.r to <2 x float>    ; 4 uses
  %i.t = extractelement <2 x float> %i.s, i64 0   ; 4 uses
  %i.u = extractelement <2 x float> %i.s, i64 1   ; 3 uses
  %i.v = fcmp olt float %i.t, %i.u
  br i1 %i.v, label %_ZN2v88internal12_GLOBAL__N_110CompareNumIfEEbT_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = fcmp ogt float %i.t, %i.u
  br i1 %i.w, label %_ZN2v88internal12_GLOBAL__N_110CompareNumIfEEbT_S3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = fcmp oeq float %i.t, 0.000000e+00
  %i.y = fcmp oeq float %i.t, %i.u
  %or.cond.i = and i1 %i.x, %i.y
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = extractelement <2 x i32> %i.r, i64 0
  %i.aa = icmp slt i32 %i.z, 0
  %i.ab = extractelement <2 x i32> %i.r, i64 1
  %i.ac = icmp sgt i32 %i.ab, -1
  %spec.select = and i1 %i.aa, %i.ac
  br label %_ZN2v88internal12_GLOBAL__N_110CompareNumIfEEbT_S3_.exit

bb.e:                                             ; preds = %bb.c
  %2 = extractelement <2 x float> %i.s, i64 0
  %3 = fcmp ord float %2, 0.000000e+00
  %4 = extractelement <2 x float> %i.s, i64 1
  %5 = fcmp uno float %4, 0.000000e+00
  %or.cond19.i = and i1 %3, %5
  br label %_ZN2v88internal12_GLOBAL__N_110CompareNumIfEEbT_S3_.exit

_ZN2v88internal12_GLOBAL__N_110CompareNumIfEEbT_S3_.exit: ; preds = %bb.d, %bb.a, %bb.b, %bb.e
  %.1.i = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ %spec.select, %bb.d ], [ %or.cond19.i, %bb.e ]
  ret i1 %.1.i
}

declare noundef i64 @_ZNK2v88internal12JSTypedArray34GetVariableByteLengthOrOutOfBoundsERb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare noundef i64 @_ZNK2v88internal12JSTypedArray30GetVariableLengthOrOutOfBoundsERb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare noundef i64 @_ZNK2v88internal12JSTypedArray12element_sizeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPhlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 16
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph45

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPhN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit
  %i.g = icmp eq i64 %i.at, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph45, !llvm.loop !39

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.020.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %.020.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i ], [ %.020.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -1 ; 4 uses
  %i.i = load i8, ptr %i.h, align 1               ; 2 uses
  %i.j = load i8, ptr %0, align 1
  store i8 %i.j, ptr %i.h, align 1
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 5 uses
  %i.m = add nsw i64 %i.l, -1
  %i.n = sdiv i64 %i.m, 2
  %i.o = icmp sgt i64 %i.l, 2
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.p = shl i64 %.029.i.i.i.i, 1                 ; 3 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %0, i64 %i.q
  %i.s = getelementptr i8, ptr %0, i64 %i.p
  %i.t = getelementptr i8, ptr %i.s, i64 1
  %i.u = load i8, ptr %i.r, align 1
  %i.v = load i8, ptr %i.t, align 1
  %i.w = icmp ult i8 %i.u, %i.v
  %i.x = or disjoint i64 %i.p, 1
  %spec.select.i.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.q ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %0, i64 %spec.select.i.i.i.i
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %.029.i.i.i.i
  store i8 %i.z, ptr %i.aa, align 1
  %i.ab = icmp slt i64 %spec.select.i.i.i.i, %i.n
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !40

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ac = and i64 %i.l, 1
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = add nsw i64 %i.l, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.af
  br i1 %i.ag, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = getelementptr inbounds i8, ptr %0, i64 %.0.lcssa.i.i.i.i
  store i8 %i.ak, ptr %i.al, align 1
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.01317.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ai, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.01317.i.i.i.i.i = phi i64 [ %.018.i.i67.i.i.i, %bb.e ], [ %.01317.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i67.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %.018.i.i67.i.i.i
  %i.an = load i8, ptr %i.am, align 1             ; 2 uses
  %i.ao = icmp ult i8 %i.an, %i.i
  br i1 %i.ao, label %bb.e, label %_ZSt10__pop_heapIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds i8, ptr %0, i64 %.01317.i.i.i.i.i
  store i8 %i.an, ptr %i.ap, align 1
  %.not8.i.i.i = icmp eq i64 %.018.i.i67.i.i.i, 0
  br i1 %.not8.i.i.i, label %_ZSt10__pop_heapIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !41

_ZSt10__pop_heapIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store i8 %i.i, ptr %i.aq, align 1
  %i.ar = icmp sgt i64 %i.l, 1
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !42

.lr.ph45:                                         ; preds = %.lr.ph, %bb.b
  %.0121944 = phi i64 [ %i.at, %bb.b ], [ %2, %.lr.ph ]
  %.02043 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.as = phi i64 [ %i.br, %bb.b ], [ %i.c, %.lr.ph ]
  %i.at = add nsw i64 %.0121944, -1               ; 3 uses
  %i.au = lshr i64 %i.as, 1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %.02043, i64 -1 ; 3 uses
  %i.ax = load i8, ptr %i.e, align 1              ; 5 uses
  %i.ay = load i8, ptr %i.av, align 1             ; 5 uses
  %i.az = icmp ult i8 %i.ax, %i.ay
  %i.ba = load i8, ptr %i.aw, align 1             ; 6 uses
  br i1 %i.az, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph45
  %i.bb = icmp ult i8 %i.ay, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = load i8, ptr %0, align 1
  store i8 %i.ay, ptr %0, align 1
  store i8 %i.bc, ptr %i.av, align 1
  br label %_ZSt22__move_median_to_firstIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bd = icmp ult i8 %i.ax, %i.ba
  %i.be = load i8, ptr %0, align 1                ; 2 uses
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 %i.ba, ptr %0, align 1
  store i8 %i.be, ptr %i.aw, align 1
  br label %_ZSt22__move_median_to_firstIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store i8 %i.ax, ptr %0, align 1
  store i8 %i.be, ptr %i.e, align 1
  br label %_ZSt22__move_median_to_firstIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph45
  %i.bf = icmp ult i8 %i.ax, %i.ba
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = load i8, ptr %0, align 1
  store i8 %i.ax, ptr %0, align 1
  store i8 %i.bg, ptr %i.e, align 1
  br label %_ZSt22__move_median_to_firstIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bh = icmp ult i8 %i.ay, %i.ba
  %i.bi = load i8, ptr %0, align 1                ; 2 uses
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 %i.ba, ptr %0, align 1
  store i8 %i.bi, ptr %i.aw, align 1
  br label %_ZSt22__move_median_to_firstIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store i8 %i.ay, ptr %0, align 1
  store i8 %i.bi, ptr %i.av, align 1
  br label %_ZSt22__move_median_to_firstIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i
end_hunk_0
