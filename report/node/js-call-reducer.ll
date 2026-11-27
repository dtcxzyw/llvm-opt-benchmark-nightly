Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/js-call-reducer?download=true
inline.NumInlined: 12029
inline.NumDeleted: 2622
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZTv0_n24_N2v88internal8OFStreamD1Ev:bb.a
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 24), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 64), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #22, !inline_history !99
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.e) #22, !inline_history !99
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr hidden void @_ZTv0_n24_N2v88internal8OFStreamD0Ev(ptr noundef %0) unnamed_addr #14 comdat align 2 !guid !2745 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 24), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 64), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #22, !inline_history !2746
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.e) #22, !inline_history !2746
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef 344) #26, !inline_history !2747
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSoD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSoD0Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0 align 2

; Function Attrs: nounwind uwtable
declare void @_ZTv0_n24_NSoD1Ev(ptr noundef) unnamed_addr #14 align 2

; Function Attrs: nounwind uwtable
declare void @_ZTv0_n24_NSoD0Ev(ptr noundef) unnamed_addr #14 align 2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal12StdoutStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #4 comdat align 2 !guid !2748 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN2v88internal12StdoutStreamD1Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #22, !inline_history !97
  br label %_ZN2v88internal12StdoutStreamD1Ev.exit

_ZN2v88internal12StdoutStreamD1Ev.exit:           ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #22, !inline_history !97
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #22, !inline_history !97
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 352) #26
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZTv0_n24_N2v88internal12StdoutStreamD1Ev(ptr noundef %0) unnamed_addr #15 comdat align 2 !guid !2749 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZN2v88internal12StdoutStreamD1Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #22, !inline_history !97
  br label %_ZN2v88internal12StdoutStreamD1Ev.exit

_ZN2v88internal12StdoutStreamD1Ev.exit:           ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr %i.d, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.i) #22, !inline_history !97
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.e) #22, !inline_history !97
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZTv0_n24_N2v88internal12StdoutStreamD0Ev(ptr noundef %0) unnamed_addr #15 comdat align 2 !guid !2750 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZN2v88internal12StdoutStreamD0Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #22, !inline_history !2751
  br label %_ZN2v88internal12StdoutStreamD0Ev.exit

_ZN2v88internal12StdoutStreamD0Ev.exit:           ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr %i.d, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.i) #22, !inline_history !2751
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.e) #22, !inline_history !2751
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(88) %i.d, i64 noundef 352) #26, !inline_history !2752
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #6

declare void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

declare void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN2v88internal8compiler12JSHeapBroker17InitFixedArrayMapEv(ptr noundef nonnull align 8 dereferenceable(8560)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK2v88internal8compiler9ObjectRef5IsMapEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler17ForInParametersOfEPKNS1_8OperatorE(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler37IteratingArrayBuiltinReducerAssemblerD0Ev(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #4 comdat align 2 !guid !2753 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal8compiler16JSGraphAssemblerE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  store ptr %i.c, ptr %i.e, align 8
  tail call void @_ZN2v88internal8compiler14GraphAssemblerD2Ev(ptr noundef nonnull align 8 dead_on_return(161) dereferenceable(280) %0) #22, !inline_history !96
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 280) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler27FastApiCallReducerAssemblerD0Ev(ptr noundef nonnull align 8 dereferenceable(332) %0) unnamed_addr #4 comdat align 2 !guid !2754 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal8compiler16JSGraphAssemblerE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  store ptr %i.c, ptr %i.e, align 8
  tail call void @_ZN2v88internal8compiler14GraphAssemblerD2Ev(ptr noundef nonnull align 8 dead_on_return(161) dereferenceable(332) %0) #22, !inline_history !96
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 336) #26
  ret void
}

declare i64 @_ZN2v88internal17ExternalReference6CreateEPNS0_7IsolateEPNS_11ApiFunctionENS1_4TypeEPmPKPKNS_13CFunctionInfoEj(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZNK2v88internal8compiler23FunctionTemplateInfoRef11c_functionsEPNS1_12JSHeapBrokerE(ptr dead_on_unwind writable sret(%"class.v8::internal::ZoneVector.1014") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

declare void @_ZNK2v88internal8compiler23FunctionTemplateInfoRef12c_signaturesEPNS1_12JSHeapBrokerE(ptr dead_on_unwind writable sret(%"class.v8::internal::ZoneVector.1015") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

declare ptr @_ZN2v88internal8compiler39CreateStubBuiltinContinuationFrameStateEPNS1_7JSGraphENS0_7BuiltinEPNS1_4NodeEPKS6_iS6_NS1_26ContinuationFrameStateModeEPKNS0_4wasm12CanonicalSigE(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN2v88internal8compiler14GraphAssembler16ExternalConstantENS0_17ExternalReferenceE(ptr noundef nonnull align 8 dereferenceable(161), i64) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm16ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 !guid !2755 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.h) ; 3 uses
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1)
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.j = sub nuw nsw i64 64, %i.i                 ; 2 uses
  %i.k = icmp ugt i64 %.sroa.speculated, 576460752303423488
  br i1 %i.k, label %bb.b, label %bb.e, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %.sroa.speculated, 1152921504606846976
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #23 ; 5 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = load ptr, ptr %i.a, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = icmp sgt i64 %i.t, 8
  br i1 %i.u, label %bb.f, label %bb.g, !prof !86

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.p, i64 %i.t, i1 false)
  br label %_ZSt18uninitialized_moveIPPN2v88internal8compiler4NodeES5_ET0_T_S7_S6_.exit

bb.g:                                             ; preds = %bb.e
  %i.v = icmp eq i64 %i.t, 8
  br i1 %i.v, label %bb.h, label %_ZSt18uninitialized_moveIPPN2v88internal8compiler4NodeES5_ET0_T_S7_S6_.exit

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %i.p, align 8
  store ptr %i.w, ptr %i.o, align 8
  br label %_ZSt18uninitialized_moveIPPN2v88internal8compiler4NodeES5_ET0_T_S7_S6_.exit

_ZSt18uninitialized_moveIPPN2v88internal8compiler4NodeES5_ET0_T_S7_S6_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.x = shl nuw i64 1, %i.j
  %i.y = ptrtoint ptr %i.m to i64
  %i.z = sub i64 %i.y, %i.f
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm16ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.z
  store ptr %i.aa, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.x
  store ptr %i.ab, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm16ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #12 comdat align 2 !guid !2756 {
_ZSt9destroy_nIPPN2v88internal8compiler4NodeElET_S6_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPPN2v88internal8compiler4NodeElET_S6_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #26
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPPN2v88internal8compiler4NodeElET_S6_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder11FastApiCallENS1_19FastApiCallFunctionERKNS1_14FeedbackSourceEPNS1_14CallDescriptorE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler16FrameStateInfoOfEPKNS1_8OperatorE(ptr noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal8compiler25CreateLiteralParametersOfEPKNS1_8OperatorE(ptr noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler25CreateClosureParametersOfEPKNS1_8OperatorE(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2v88internal8compiler14JSCallNodeBaseIJLi1134ELi1135EEE13ArgumentCountEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 !guid !2757 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler16CallParametersOfEPKNS1_8OperatorE(ptr noundef %i.c) #22
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 67108863
  %i.g = add nsw i32 %i.f, -3
  ret i32 %i.g
}

declare noundef zeroext i1 @_ZNK2v88internal8compiler9ObjectRef20IsSharedFunctionInfoEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef ptr @_ZN2v88internal8compiler7JSGraph17ConstantMaybeHoleEd(ptr noundef nonnull align 8 dereferenceable(1144), double noundef) local_unnamed_addr #1

declare void @_ZN2v88internal8compiler17StateValuesAccess8iteratorC1EPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(196), ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef26supports_fast_array_resizeEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN2v88internal12ElementsKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !guid !2759 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeIN2v88internal12ElementsKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #26
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2758

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN2v88internal25UnionElementsKindUptoSizeEPNS0_12ElementsKindES1_(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder9Word32ShrEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder9Word64ShrEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder28CreateFrameStateFunctionInfoENS1_14FrameStateTypeEttiNS0_6HandleINS0_18SharedFunctionInfoEEENS4_INS0_13BytecodeArrayEEE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr, i64) local_unnamed_addr #1

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder10FrameStateENS0_14BytecodeOffsetENS1_23OutputFrameStateCombineEPKNS1_22FrameStateFunctionInfoE(ptr noundef nonnull align 8 dereferenceable(16), i32, i64, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder11StateValuesEiNS1_15SparseInputMaskE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler30PromiseBuiltinReducerAssemblerD0Ev(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #4 comdat align 2 !guid !2760 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal8compiler16JSGraphAssemblerE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  store ptr %i.c, ptr %i.e, align 8
  tail call void @_ZN2v88internal8compiler14GraphAssemblerD2Ev(ptr noundef nonnull align 8 dead_on_return(161) dereferenceable(280) %0) #22, !inline_history !96
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 280) #26
  ret void
}

declare void @_ZN2v88internal8compiler12JSHeapBroker15Initexec_stringEv(ptr noundef nonnull align 8 dereferenceable(8560)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #7

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 !guid !2761 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 2
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 2305843009213693951
  br i1 %i.q, label %bb.c, label %bb.b, !prof !86

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.19) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler6MapRefEA_S4_EEPT_m.exit, !prof !89

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #22
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler6MapRefEA_S4_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler6MapRefEA_S4_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler6MapRefEA_S4_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler6MapRefEA_S4_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler6MapRefEA_S4_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 !guid !2762 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.h) ; 3 uses
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1)
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.j = sub nuw nsw i64 64, %i.i                 ; 2 uses
  %i.k = icmp ugt i64 %.sroa.speculated, 576460752303423488
  br i1 %i.k, label %bb.b, label %bb.e, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %.sroa.speculated, 1152921504606846976
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #23 ; 5 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = load ptr, ptr %i.a, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = icmp sgt i64 %i.t, 8
  br i1 %i.u, label %bb.f, label %bb.g, !prof !86

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.p, i64 %i.t, i1 false)
  br label %_ZSt18uninitialized_moveIPPN2v88internal8compiler4NodeES5_ET0_T_S7_S6_.exit

bb.g:                                             ; preds = %bb.e
  %i.v = icmp eq i64 %i.t, 8
  br i1 %i.v, label %bb.h, label %_ZSt18uninitialized_moveIPPN2v88internal8compiler4NodeES5_ET0_T_S7_S6_.exit

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %i.p, align 8
  store ptr %i.w, ptr %i.o, align 8
  br label %_ZSt18uninitialized_moveIPPN2v88internal8compiler4NodeES5_ET0_T_S7_S6_.exit

_ZSt18uninitialized_moveIPPN2v88internal8compiler4NodeES5_ET0_T_S7_S6_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.x = shl nuw i64 1, %i.j
  %i.y = ptrtoint ptr %i.m to i64
  %i.z = sub i64 %i.y, %i.f
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.z
  store ptr %i.aa, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.x
  store ptr %i.ab, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #12 comdat align 2 !guid !2763 {
_ZSt9destroy_nIPPN2v88internal8compiler4NodeElET_S6_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPPN2v88internal8compiler4NodeElET_S6_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #26
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPPN2v88internal8compiler4NodeElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21MachineRepresentationELm4ESaIS3_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(28) %0) local_unnamed_addr #12 comdat align 2 !guid !2764 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 !guid !2765 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 2
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 2305843009213693951
  br i1 %i.q, label %bb.c, label %bb.b, !prof !86

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.19) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit, !prof !89

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #22
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

declare noundef ptr @_ZN2v88internal8compiler16JSGraphAssembler11LoadElementERKNS1_13ElementAccessEPNS1_4NodeES7_(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(19), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal8compiler10TryMakeRefINS0_4CodeEEENS1_11OptionalRefINS1_10ref_traitsIT_E8ref_typeEEEPNS1_12JSHeapBrokerENS0_6TaggedIS6_EENS_4base5FlagsINS1_19GetOrCreateDataFlagEiiEEQ12is_subtype_vIS6_NS0_6ObjectEE(ptr noundef %0, i64 %1, i32 %2) local_unnamed_addr #0 comdat !guid !2766 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::CodeRef", align 8 ; 6 uses
  %4 = alloca %"class.v8::internal::StdoutStream", align 8 ; 26 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"struct.v8::internal::Brief", align 8 ; 4 uses
  %i.a = tail call ptr @_ZN2v88internal8compiler12JSHeapBroker25CanonicalPersistentHandleINS0_4CodeEEENS0_6HandleIT_EENS0_6TaggedIS6_EE(ptr noundef nonnull align 8 dereferenceable(8560) %0, i64 %1)
  %i.b = tail call noundef ptr @_ZN2v88internal8compiler12JSHeapBroker18TryGetOrCreateDataENS0_6HandleINS0_6ObjectEEENS_4base5FlagsINS1_19GetOrCreateDataFlagEiiEE(ptr noundef nonnull align 8 dereferenceable(8560) %0, ptr %i.a, i32 %2) #22 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_ZN2v88internal8compiler13HeapObjectRefC2EPNS1_10ObjectDataEb.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = load i8, ptr %i.d, align 4, !range !84, !noundef !85
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 6 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.g) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 304
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 312
  store i8 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 313
  store i8 0, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  %i.l = load ptr, ptr @stdout, align 8
  call void @_ZN2v88internal8OFStreamC2EP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN2v88internal12StdoutStreamE, i64 8), ptr noundef %i.l) #22
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %4, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.g, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.n = call noundef ptr @_ZN2v88internal12StdoutStream14GetStdoutMutexEv() #22 ; 2 uses
  store ptr %i.n, ptr %i.m, align 8
  call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZNK2v88internal8compiler12JSHeapBroker5TraceB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8560) %0) #22
  %i.o = load ptr, ptr %5, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = load i64, ptr %i.p, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler14GraphAssembler10MergeStateIJNS_4base11SmallVectorIPNS1_4NodeELm4ESaIS7_EEEEEEvPNS1_6detail29GraphAssemblerLabelForXHelperIS7_vJDpT_EE4TypeESD_:bb.a
  %i.lk = ashr exact i64 %sext164, 32
  %i.ll = getelementptr inbounds [24 x i8], ptr %i.li, i64 %i.lk ; 2 uses
  %.not14.i137 = icmp eq ptr %i.lh, null
  br i1 %.not14.i137, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i136
  call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.lh, ptr noundef %i.ll) #22
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i136
  store ptr %i.kp, ptr %i.lg, align 8
  %.not15.i138 = icmp eq ptr %i.kp, null
  br i1 %.not15.i138, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit141, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.kp, ptr noundef %i.ll) #22
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit141

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit141: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i139, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i134, %bb.ak, %bb.al
  %i.lm = load ptr, ptr %i.kn, align 8
  %i.ln = load ptr, ptr %i.kc, align 8
  %i.lo = load ptr, ptr %i.ln, align 8
  %i.lp = load ptr, ptr %i.lo, align 8
  %i.lq = load ptr, ptr %i.ka, align 8
  call void @_ZN2v88internal8compiler4Node11AppendInputEPNS0_4ZoneEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.lm, ptr noundef %i.lp, ptr noundef %i.lq) #22
  %i.lr = load ptr, ptr %i.kn, align 8
  %i.ls = load ptr, ptr %i.kc, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lu = load ptr, ptr %i.lt, align 8
  %i.lv = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder9EffectPhiEi(ptr noundef nonnull align 8 dereferenceable(16) %i.lu, i32 noundef %i.kl) #22
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef %i.lr, ptr noundef %i.lv) #22
  %.not190 = icmp eq ptr %i.i, %i.j
  br i1 %.not190, label %.loopexit, label %.lr.ph182

.lr.ph182:                                        ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit141
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %sext165 = shl i64 %i.e, 32
  %i.lx = ashr exact i64 %sext165, 29             ; 2 uses
  %i.ly = xor i64 %i.e, -1
  %sext167 = shl i64 %i.ly, 32
  %i.lz = ashr exact i64 %sext167, 32
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph182, %bb.at
  %.0109181 = phi i64 [ 0, %.lr.ph182 ], [ %i.of, %bb.at ] ; 9 uses
  %i.ma = load ptr, ptr %i.lw, align 8
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %.0109181
  %i.mc = load ptr, ptr %i.mb, align 8            ; 3 uses
  %i.md = load ptr, ptr %13, align 8
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %.0109181
  %i.mf = load ptr, ptr %i.me, align 8            ; 5 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mc, i64 20
  %i.mh = load i32, ptr %i.mg, align 4
  %i.mi = and i32 %i.mh, 251658240
  %.not.i.i142 = icmp eq i32 %i.mi, 251658240
  %i.mj = ptrtoint ptr %i.mc to i64
  %i.mk = add i64 %i.mj, 32
  %i.ml = inttoptr i64 %i.mk to ptr               ; 2 uses
  br i1 %.not.i.i142, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i148, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i143

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i148: ; preds = %bb.am
  %i.mm = load ptr, ptr %i.ml, align 8            ; 2 uses
  %i.mn = ptrtoint ptr %i.mm to i64
  %i.mo = add i64 %i.mn, 16
  %i.mp = inttoptr i64 %i.mo to ptr
  %i.mq = getelementptr inbounds i8, ptr %i.mp, i64 %i.lx ; 2 uses
  %i.mr = load ptr, ptr %i.mq, align 8            ; 2 uses
  %.not.i149 = icmp eq ptr %i.mr, %i.mf
  br i1 %.not.i149, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit150, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i145

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i143: ; preds = %bb.am
  %i.ms = getelementptr inbounds i8, ptr %i.ml, i64 %i.lx ; 2 uses
  %i.mt = load ptr, ptr %i.ms, align 8            ; 2 uses
  %.not18.i144 = icmp eq ptr %i.mt, %i.mf
  br i1 %.not18.i144, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit150, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i145

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i145: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i143, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i148
  %i.mu = phi ptr [ %i.ms, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i143 ], [ %i.mq, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i148 ]
  %i.mv = phi ptr [ %i.mt, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i143 ], [ %i.mr, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i148 ] ; 2 uses
  %i.mw = phi ptr [ %i.mc, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i143 ], [ %i.mm, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i148 ]
  %i.mx = getelementptr inbounds [24 x i8], ptr %i.mw, i64 %i.lz ; 2 uses
  %.not14.i146 = icmp eq ptr %i.mv, null
  br i1 %.not14.i146, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i145
  call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.mv, ptr noundef %i.mx) #22
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i145
  store ptr %i.mf, ptr %i.mu, align 8
  %.not15.i147 = icmp eq ptr %i.mf, null
  br i1 %.not15.i147, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit150, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.mf, ptr noundef %i.mx) #22
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit150

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit150: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i148, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i143, %bb.ao, %bb.ap
  %i.my = load ptr, ptr %i.lw, align 8
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %.0109181
  %i.na = load ptr, ptr %i.mz, align 8
  %i.nb = load ptr, ptr %i.kc, align 8
  %i.nc = load ptr, ptr %i.nb, align 8
  %i.nd = load ptr, ptr %i.nc, align 8
  %i.ne = load ptr, ptr %i.ka, align 8
  call void @_ZN2v88internal8compiler4Node11AppendInputEPNS0_4ZoneEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.na, ptr noundef %i.nd, ptr noundef %i.ne) #22
  %i.nf = load ptr, ptr %i.lw, align 8
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %.0109181
  %i.nh = load ptr, ptr %i.ng, align 8
  %i.ni = load ptr, ptr %i.kc, align 8
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.nk = load ptr, ptr %i.nj, align 8
  %i.nl = load ptr, ptr %i.g, align 8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 %.0109181
  %i.nn = load i8, ptr %i.nm, align 1
  %i.no = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder3PhiENS0_21MachineRepresentationEi(ptr noundef nonnull align 8 dereferenceable(16) %i.nk, i8 noundef zeroext %i.nn, i32 noundef %i.kl) #22
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef %i.nh, ptr noundef %i.no) #22
  %i.np = load ptr, ptr %i.lw, align 8
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %.0109181
  %i.nr = load ptr, ptr %i.nq, align 8
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  %.sroa.0.0.copyload.i.i151 = load i64, ptr %i.ns, align 8 ; 2 uses
  %.not168 = icmp eq i64 %.sroa.0.0.copyload.i.i151, 0
  br i1 %.not168, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit150
  %i.nt = load ptr, ptr %13, align 8
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %.0109181
  %i.nv = load ptr, ptr %i.nu, align 8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  %.sroa.0.0.copyload.i.i152 = load i64, ptr %i.nw, align 8 ; 2 uses
  %.not169 = icmp eq i64 %.sroa.0.0.copyload.i.i152, 0
  br i1 %.not169, label %bb.ar, label %bb.as, !prof !89

bb.ar:                                            ; preds = %bb.aq
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.21) #24
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.nx = load ptr, ptr %i.kc, align 8
  %i.ny = load ptr, ptr %i.nx, align 8
  %i.nz = load ptr, ptr %i.ny, align 8
  %i.oa = call i64 @_ZN2v88internal8compiler4Type5UnionES2_S2_PNS0_4ZoneE(i64 %.sroa.0.0.copyload.i.i151, i64 %.sroa.0.0.copyload.i.i152, ptr noundef %i.nz) #22
  %i.ob = load ptr, ptr %i.lw, align 8
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %.0109181
  %i.od = load ptr, ptr %i.oc, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  store i64 %i.oa, ptr %i.oe, align 8
  br label %bb.at

bb.at:                                            ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit150, %bb.as
  %i.of = add nuw i64 %.0109181, 1                ; 2 uses
  %exitcond199.not = icmp eq i64 %i.of, %i.m
  br i1 %exitcond199.not, label %.loopexit, label %bb.am, !llvm.loop !3185

.loopexit.loopexit237.unr-lcssa:                  ; preds = %bb.af
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit237.unr-lcssa, %.lr.ph180
  %.0113179.epil.init = phi i64 [ 0, %.lr.ph180 ], [ %i.ig, %.loopexit.loopexit237.unr-lcssa ]
  %lcmp.mod239 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod239)
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.epil.preheader
  %.0113179.epil = phi i64 [ %.0113179.epil.init, %.epil.preheader ], [ %i.ol, %bb.au ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.au ]
  %i.og = load ptr, ptr %13, align 8
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.og, i64 %.0113179.epil
  %i.oi = load ptr, ptr %i.oh, align 8
  %i.oj = load ptr, ptr %i.hg, align 8
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %.0113179.epil
  store ptr %i.oi, ptr %i.ok, align 8
  %i.ol = add nuw i64 %.0113179.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.au, !llvm.loop !3186

.loopexit:                                        ; preds = %bb.ah, %.loopexit.loopexit237.unr-lcssa, %bb.au, %bb.at, %bb.x, %bb.p, %bb.ag, %bb.ae, %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit141, %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit123, %bb.o
  %i.om = load i64, ptr %i.d, align 8
  %i.on = add i64 %i.om, 1
  store i64 %i.on, ptr %i.d, align 8
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  store <2 x ptr> %i.c, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm1ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 !guid !3188 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.h) ; 3 uses
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1)
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.j = sub nuw nsw i64 64, %i.i                 ; 2 uses
  %i.k = icmp ugt i64 %.sroa.speculated, 576460752303423488
  br i1 %i.k, label %bb.b, label %bb.e, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %.sroa.speculated, 1152921504606846976
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #23 ; 5 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = load ptr, ptr %i.a, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = icmp sgt i64 %i.t, 8
  br i1 %i.u, label %bb.f, label %bb.g, !prof !86

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.p, i64 %i.t, i1 false)
  br label %_ZSt18uninitialized_moveIPPN2v88internal8compiler4NodeES5_ET0_T_S7_S6_.exit

bb.g:                                             ; preds = %bb.e
  %i.v = icmp eq i64 %i.t, 8
  br i1 %i.v, label %bb.h, label %_ZSt18uninitialized_moveIPPN2v88internal8compiler4NodeES5_ET0_T_S7_S6_.exit

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %i.p, align 8
  store ptr %i.w, ptr %i.o, align 8
  br label %_ZSt18uninitialized_moveIPPN2v88internal8compiler4NodeES5_ET0_T_S7_S6_.exit

_ZSt18uninitialized_moveIPPN2v88internal8compiler4NodeES5_ET0_T_S7_S6_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.x = shl nuw i64 1, %i.j
  %i.y = ptrtoint ptr %i.m to i64
  %i.z = sub i64 %i.y, %i.f
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm1ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.z
  store ptr %i.aa, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.x
  store ptr %i.ab, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm1ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #12 comdat align 2 !guid !3189 {
_ZSt9destroy_nIPPN2v88internal8compiler4NodeElET_S6_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPPN2v88internal8compiler4NodeElET_S6_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #26
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPPN2v88internal8compiler4NodeElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberEEEEEEEZNS1_8compiler37IteratingArrayBuiltinReducerAssembler27ReduceArrayPrototypeForEachEPNS9_12MapInferenceEbNS1_12ElementsKindENS9_21SharedFunctionInfoRefEE3$_0E9_M_invokeERKSt9_Any_dataOS7_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #0 align 2 !guid !3199 {
bb.a:
  %2 = alloca %"struct.std::array", align 8       ; 4 uses
  %3 = alloca %"class.v8::internal::compiler::FrameState", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::compiler::JSCallNodeBase", align 8 ; 5 uses
  %5 = alloca %"class.std::function.14", align 8  ; 9 uses
  %i.a = alloca [5 x ptr], align 16               ; 7 uses
  %6 = alloca %"class.v8::internal::compiler::Effect", align 8 ; 5 uses
  %i.b = alloca [5 x ptr], align 16               ; 7 uses
  %7 = alloca %"struct.std::pair.1052", align 8   ; 5 uses
  %8 = alloca %"class.v8::internal::TNode.18", align 8 ; 4 uses
  %9 = alloca %"class.v8::internal::TNode", align 8 ; 4 uses
  %10 = alloca %"class.v8::internal::compiler::GraphAssemblerLabel.303", align 8 ; 11 uses
  %11 = alloca %"class.v8::internal::TNode.0", align 8 ; 4 uses
  %12 = alloca %"class.v8::internal::TNode.0", align 8 ; 4 uses
  %13 = alloca %"class.v8::internal::TNode", align 8 ; 4 uses
  %14 = alloca %"class.v8::internal::TNode", align 8 ; 4 uses
  %15 = alloca %"class.v8::internal::TNode", align 8 ; 4 uses
  %16 = alloca %"class.v8::internal::TNode.0", align 8 ; 4 uses
  %17 = alloca %"class.v8::internal::TNode.0", align 8 ; 4 uses
  %18 = alloca %"class.v8::internal::TNode.0", align 8 ; 4 uses
  %19 = alloca %"class.v8::internal::TNode.0", align 8 ; 4 uses
  %20 = alloca %"class.v8::internal::TNode.0", align 8 ; 4 uses
  %21 = alloca %"class.v8::internal::TNode.0", align 8 ; 3 uses
  %.val = load ptr, ptr %0, align 8               ; 8 uses
  %.val2 = load ptr, ptr %1, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  %i.c = load ptr, ptr %.val, align 8             ; 21 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !85, !align !94 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load <2 x ptr>, ptr %i.f, align 8
  store <2 x ptr> %i.g, ptr %i.b, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.j = load ptr, ptr %i.i, align 8
  store ptr %i.j, ptr %i.h, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.val2, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.n = load ptr, ptr %i.m, align 8
  store ptr %i.n, ptr %i.l, align 16
  %i.o = load ptr, ptr %i.e, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call ptr @_ZN2v88internal8compiler45CreateJavaScriptBuiltinContinuationFrameStateEPNS1_7JSGraphENS1_21SharedFunctionInfoRefENS0_7BuiltinEPNS1_4NodeES7_PKS7_iS7_NS1_26ContinuationFrameStateModeE(ptr noundef %i.o, ptr %.sroa.0.0.copyload.i.i.i.i, i32 noundef 826, ptr noundef %i.r, ptr noundef %i.t, ptr noundef nonnull %i.b, i32 noundef 5, ptr noundef %i.v, i32 noundef 0) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.x = call noundef ptr @_ZN2v88internal8compiler14GraphAssembler10CheckpointENS1_10FrameStateE(ptr noundef nonnull align 8 dereferenceable(161) %i.c, ptr %i.w) #22 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !85
  %i.aa = load i8, ptr %i.z, align 1, !range !84, !noundef !85
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %_ZN2v88internal8compiler22JSCallReducerAssembler20MaybeInsertMapChecksEPNS1_12MapInferenceEb.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !85, !align !94
  %i.ae = load ptr, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ag = load ptr, ptr %i.af, align 8
  store ptr %i.ag, ptr %6, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler16CallParametersOfEPKNS1_8OperatorE(ptr noundef %i.an) #22
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  call void @_ZN2v88internal8compiler12MapInference15InsertMapChecksEPNS1_7JSGraphEPNS1_6EffectENS1_7ControlERKNS1_14FeedbackSourceE(ptr noundef nonnull align 8 dereferenceable(28) %i.ae, ptr noundef %i.ai, ptr noundef nonnull %6, ptr %i.ak, ptr noundef nonnull align 8 dereferenceable(12) %i.ap) #22
  %i.aq = load ptr, ptr %6, align 8
  %i.ar = load ptr, ptr %i.aj, align 8
  call void @_ZN2v88internal8compiler14GraphAssembler23InitializeEffectControlEPNS1_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(280) %i.c, ptr noundef %i.aq, ptr noundef %i.ar) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZN2v88internal8compiler22JSCallReducerAssembler20MaybeInsertMapChecksEPNS1_12MapInferenceEb.exit.i.i.i

_ZN2v88internal8compiler22JSCallReducerAssembler20MaybeInsertMapChecksEPNS1_12MapInferenceEb.exit.i.i.i: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !85
  %i.au = load i8, ptr %i.at, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !85, !align !94
  %i.ax = load ptr, ptr %i.aw, align 8
  store ptr %i.ax, ptr %8, align 8
  store ptr %.val2, ptr %9, align 8
  call void @_ZN2v88internal8compiler37IteratingArrayBuiltinReducerAssembler15SafeLoadElementENS0_12ElementsKindENS0_5TNodeINS0_7JSArrayEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.1052") align 8 %7, ptr noundef nonnull align 8 dereferenceable(280) %i.c, i8 noundef zeroext %i.au, ptr noundef nonnull dead_on_return %8, ptr noundef nonnull dead_on_return %9)
  %i.ay = load ptr, ptr %7, align 8               ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !3200)
  call void @llvm.experimental.noalias.scope.decl(metadata !3201)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  %i.bc = load i32, ptr %i.bb, align 4, !noalias !3202
  store i8 0, ptr %10, align 8, !alias.scope !3202
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  store i32 1, ptr %i.bd, align 4, !alias.scope !3202
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %i.bc, ptr %i.be, align 8, !alias.scope !3202
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store i64 0, ptr %i.bf, align 8, !alias.scope !3202
  store ptr %i.ba, ptr %12, align 8
  %i.bg = load ptr, ptr %i.as, align 8, !nonnull !85
  %i.bh = load i8, ptr %i.bg, align 1
  call void @_ZN2v88internal8compiler37IteratingArrayBuiltinReducerAssembler13MaybeSkipHoleIJEEENS0_5TNodeINS0_6ObjectEEES6_NS0_12ElementsKindEPNS1_19GraphAssemblerLabelIXsZT_EEEDpNS4_IT_EE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.0") align 8 %11, ptr noundef nonnull align 8 dereferenceable(280) %i.c, ptr noundef nonnull dead_on_return %12, i8 noundef zeroext %i.bh, ptr noundef nonnull %10)
  %i.bi = load ptr, ptr %11, align 8, !noalias !3203
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  store ptr %i.ay, ptr %14, align 8
end_hunk_1
