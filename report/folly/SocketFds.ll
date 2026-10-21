Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/SocketFds?download=true
inline.NumInlined: 276
inline.NumDeleted: 217
begin_hunk_0_@_ZN5folly9SocketFds21setFdSocketSeqNumOnceEl:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i8, ptr %i.b, align 8, !tbaa !17
  %.not.i.i = icmp eq i8 %i.c, -1
  br i1 %.not.i.i, label %bb.c, label %"_ZSt5visitIZN5folly9SocketFds21setFdSocketSeqNumOnceElE3$_0JRSt7variantIJSt4pairISt6vectorINS0_4FileESaIS6_EElES4_IS5_ISt10shared_ptrIKS6_ESaISC_EElEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit"

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.d, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @.str.11, ptr %i.e, align 8, !tbaa !51
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #20
  unreachable

"_ZSt5visitIZN5folly9SocketFds21setFdSocketSeqNumOnceElE3$_0JRSt7variantIJSt4pairISt6vectorINS0_4FileESaIS6_EElES4_IS5_ISt10shared_ptrIKS6_ESaISC_EElEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit": ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %1, ptr %i.f, align 8, !tbaa !79
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @.str, i32 noundef 83, i32 noundef 2)
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.10, i64 noundef 45)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.i

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %"_ZSt5visitIZN5folly9SocketFds21setFdSocketSeqNumOnceElE3$_0JRSt7variantIJSt4pairISt6vectorINS0_4FileESaIS6_EElES4_IS5_ISt10shared_ptrIKS6_ESaISC_EElEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit"
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt18bad_variant_accessD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNKSt18bad_variant_access4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 -1, -9223372036854775808) i64 @_ZNK5folly9SocketFds17getFdSocketSeqNumEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %2 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !15     ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.h, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 24
  %.val = load i64, ptr %i.b, align 8             ; 4 uses
  %i.c = getelementptr i8, ptr %i.a, i64 32
  %.val13 = load i8, ptr %i.c, align 8, !tbaa !17
  %.not.i.i = icmp eq i8 %.val13, -1
  br i1 %.not.i.i, label %bb.c, label %"_ZSt5visitIZNK5folly9SocketFds17getFdSocketSeqNumEvE3$_0JRSt7variantIJSt4pairISt6vectorINS0_4FileESaIS6_EElES4_IS5_ISt10shared_ptrIKS6_ESaISC_EElEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit"

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.d, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @.str.11, ptr %i.e, align 8, !tbaa !51
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #20
  unreachable

"_ZSt5visitIZNK5folly9SocketFds17getFdSocketSeqNumEvE3$_0JRSt7variantIJSt4pairISt6vectorINS0_4FileESaIS6_EElES4_IS5_ISt10shared_ptrIKS6_ESaISC_EElEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit": ; preds = %bb.b
  %or.cond = icmp sgt i64 %.val, -2
  br i1 %or.cond, label %bb.g, label %bb.d

bb.d:                                             ; preds = %"_ZSt5visitIZNK5folly9SocketFds17getFdSocketSeqNumEvE3$_0JRSt7variantIJSt4pairISt6vectorINS0_4FileESaIS6_EElES4_IS5_ISt10shared_ptrIKS6_ESaISC_EElEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 2)
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.e unwind label %bb.f       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.14, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef %.val)
          to label %.thread unwind label %bb.f    ; 0 uses

.thread:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br label %bb.k

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.e, %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br label %bb.m

bb.g:                                             ; preds = %"_ZSt5visitIZNK5folly9SocketFds17getFdSocketSeqNumEvE3$_0JRSt7variantIJSt4pairISt6vectorINS0_4FileESaIS6_EElES4_IS5_ISt10shared_ptrIKS6_ESaISC_EElEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit"
  %i.j = icmp slt i64 %.val, 0
  br i1 %i.j, label %bb.k, label %bb.l

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @.str, i32 noundef 97, i32 noundef 2)
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.15, i64 noundef 47)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14: ; preds = %bb.i
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.m

bb.k:                                             ; preds = %.thread, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.k
  %.1 = phi i64 [ -1, %bb.k ], [ %.val, %bb.g ]
  ret i64 %.1

bb.m:                                             ; preds = %bb.j, %bb.f
  %.pn = phi { ptr, i32 } [ %i.i, %bb.f ], [ %i.m, %bb.j ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i64 -9223372036854775807, -9223372036854775808) i64 @_ZN5folly6detail18addSocketFdsSeqNumEll(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::LogMessage", align 8 ; 5 uses
  %i.a = or i64 %1, %0
  %or.cond.not = icmp sgt i64 %i.a, -1
  br i1 %or.cond.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  invoke void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @.str, i32 noundef 105, i32 noundef 2)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.d unwind label %bb.i       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.16, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %0)
          to label %_ZNSolsEl.exit unwind label %bb.i ; 2 uses

_ZNSolsEl.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.17, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16: ; preds = %_ZNSolsEl.exit
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef %1)
          to label %_ZNSolsEl.exit17 unwind label %bb.i ; 0 uses

_ZNSolsEl.exit17:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.g = sub nuw nsw i64 9223372036854775807, %0
  %.not = icmp sgt i64 %1, %i.g
  br i1 %.not, label %bb.g, label %bb.f, !prof !18

bb.f:                                             ; preds = %bb.e
  %i.h = add nuw nsw i64 %1, %0
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %3 = or disjoint i64 %0, -9223372036854775808
  %i.i = add nsw i64 %3, %1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZNSolsEl.exit17
  %.1 = phi i64 [ -1, %_ZNSolsEl.exit17 ], [ %i.h, %bb.f ], [ %i.i, %bb.g ]
  ret i64 %.1

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16, %_ZNSolsEl.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %bb.c, %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #17
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noreturn }
attributes #14 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { noreturn }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>", scope: !46, file: !41, line: 125, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE")
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 7, !"openmp", i32 51}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 _ZTSSt7variantIJSt4pairISt6vectorIN5folly4FileESaIS3_EElES0_IS1_ISt10shared_ptrIKS3_ESaIS9_EElEEE", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJSt4pairISt6vectorIN5folly4FileESaIS5_EElES2_IS3_ISt10shared_ptrIKS5_ESaISB_EElEEEE", !9, i64 0, !9, i64 32}
!17 = !{!16, !9, i64 32}
!18 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!19 = !{!"p1 _ZTSSt10shared_ptrIKN5folly4FileEE", !13, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIKN5folly4FileEESaIS4_EE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!21 = !{!20, !19, i64 0}
!22 = !{!19, !19, i64 0}
!23 = !{!20, !19, i64 16}
!24 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!25 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !24, i64 0}
!26 = !{!25, !24, i64 0}
!27 = !{!13, !13, i64 0}
!28 = !{!9, !9, i64 0}
!29 = !{!10, !10, i64 0}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIKN5folly4FileEESaIS4_EE12_Vector_implE", !20, i64 0}
!32 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIKN5folly4FileEESaIS4_EE", !31, i64 0}
!33 = !{!"_ZTSSt6vectorISt10shared_ptrIKN5folly4FileEESaIS4_EE", !32, i64 0}
!34 = !{!"long", !9, i64 0}
!35 = !{!"_ZTSSt4pairISt6vectorISt10shared_ptrIKN5folly4FileEESaIS5_EElE", !33, i64 0, !34, i64 24}
!36 = !{!35, !34, i64 24}
!37 = !{!"p1 _ZTSN5folly4FileE", !13, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIN5folly4FileESaIS1_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!39 = !{!"vtable pointer", !8, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/shared_ptr_base.h", directory: "", checksumkind: CSK_MD5, checksum: "398b697f034a380e2062e59e71a6eec9")
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !0, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!43 = !{null, !42}
!44 = !DISubroutineType(types: !43)
!45 = !DISubprogram(name: "_M_dispose", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv", scope: !0, file: !41, line: 139, type: !44, scopeLine: 139, containingType: !0, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!46 = !DINamespace(name: "std", scope: null)
!47 = !DISubprogram(name: "_M_destroy", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv", scope: !0, file: !41, line: 143, type: !44, scopeLine: 143, containingType: !0, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!48 = !{!"p1 omnipotent char", !13, i64 0}
!49 = !{!"_ZTSSt9exception"}
!50 = !{!"_ZTSSt18bad_variant_access", !49, i64 0, !48, i64 8}
!51 = !{!50, !48, i64 8}
!52 = distinct !{!52, i1 true, !"_ZSt11make_uniqueISt7variantIJSt4pairISt6vectorIN5folly4FileESaIS4_EElES1_IS2_ISt10shared_ptrIKS4_ESaISA_EElEEEJRSD_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!53 = distinct !{!53, !52, !"_ZSt11make_uniqueISt7variantIJSt4pairISt6vectorIN5folly4FileESaIS4_EElES1_IS2_ISt10shared_ptrIKS4_ESaISA_EElEEEJRSD_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!54 = distinct !{!54, !30}
!55 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!56 = !{!53}
!57 = !{!20, !19, i64 8}
!58 = distinct !{!58, !30}
!59 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null, null, null, null}
!60 = distinct !{!60, !30}
!61 = !{!38, !37, i64 0}
!62 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 8, !10, i64 12}
!63 = !{!62, !10, i64 8}
!64 = !{!62, !10, i64 12}
!65 = distinct !{null}
!66 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!67 = !{!"_ZTSN6google13CheckOpStringE", !66, i64 0}
!68 = !{!67, !66, i64 0}
!69 = !{!37, !37, i64 0}
!70 = !{!38, !37, i64 16}
!71 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !48, i64 0}
!72 = !{!71, !48, i64 0}
!73 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !71, i64 0, !34, i64 8, !9, i64 16}
!74 = !{!73, !48, i64 0}
!75 = !{!73, !34, i64 8}
!76 = !{!"bool", !9, i64 0}
!77 = !{!"_ZTSSt22_Optional_payload_baseISt4pairISt6vectorISt10shared_ptrIKN5folly4FileEESaIS6_EElEE", !9, i64 0, !76, i64 32}
!78 = !{!77, !76, i64 32}
!79 = !{!34, !34, i64 0}
end_hunk_0
