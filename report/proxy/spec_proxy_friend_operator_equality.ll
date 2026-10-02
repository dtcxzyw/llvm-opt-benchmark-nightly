Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/spec_proxy_friend_operator_equality?download=true
inline.NumInlined: 82
inline.NumDeleted: 67
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.pro::v4::proxy" = type { %"struct.pro::v4::detail::meta_ptr_direct_impl", [16 x i8] }
%"struct.pro::v4::detail::meta_ptr_direct_impl" = type { %"struct.pro::v4::detail::composite_meta" }
%"struct.pro::v4::detail::composite_meta" = type { %"struct.pro::v4::detail::conv_meta" }
%"struct.pro::v4::detail::conv_meta" = type { ptr }

$_ZZN3pro2v46detail9conv_metaINS0_5proxyI10AnyMovableEENS1_16destroy_dispatchEDoFvvEEC1ISt10unique_ptrIiSt14default_deleteIiEEEESt15in_place_type_tIT_EENUlRS5_E_8__invokeESH_ = comdat any

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.pro::v4::proxy", align 8    ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #6
  store ptr null, ptr %0, align 8, !tbaa !17
  %i.a = load ptr, ptr @_ZSt4cout, align 8, !tbaa !19
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !29
  %i.g = or i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !30
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i1 noundef zeroext true)
          to label %_ZNSolsEb.exit unwind label %bb.e

_ZNSolsEb.exit:                                   ; preds = %bb.a
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSolsEb.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !17
  %.not.i3 = icmp ne ptr %i.j, null
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i1 noundef zeroext %.not.i3)
          to label %_ZNSolsEb.exit4 unwind label %bb.e

_ZNSolsEb.exit4:                                  ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5: ; preds = %_ZNSolsEb.exit4
  %i.m = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #7
          to label %bb.b unwind label %bb.f       ; 2 uses

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5
  store i32 123, ptr %i.m, align 4, !tbaa !31, !noalias !35
  %i.n = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(24) %0) #6, !inline_history !14
  br label %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit

_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit: ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = ptrtoint ptr %i.m to i64
  store i64 %i.p, ptr %i.o, align 8, !tbaa !11
  store i64 ptrtoint (ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyI10AnyMovableEENS1_16destroy_dispatchEDoFvvEEC1ISt10unique_ptrIiSt14default_deleteIiEEEESt15in_place_type_tIT_EENUlRS5_E_8__invokeESH_ to i64), ptr %0, align 8
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i1 noundef zeroext false)
          to label %_ZNSolsEb.exit8 unwind label %bb.e

_ZNSolsEb.exit8:                                  ; preds = %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZNSolsEb.exit8
  %i.s = load ptr, ptr %0, align 8, !tbaa !17
  %.not.i10 = icmp ne ptr %i.s, null
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i1 noundef zeroext %.not.i10)
          to label %_ZNSolsEb.exit11 unwind label %bb.e

_ZNSolsEb.exit11:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12: ; preds = %_ZNSolsEb.exit11
  %i.v = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.v, null
  br i1 %.not.i.i13, label %_ZN3pro2v45proxyI10AnyMovableED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit, label %bb.d

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(24) %0) #6, !inline_history !15
  br label %_ZN3pro2v45proxyI10AnyMovableED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit

_ZN3pro2v45proxyI10AnyMovableED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #6
  ret i32 0

bb.e:                                             ; preds = %_ZNSolsEb.exit11, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9, %_ZNSolsEb.exit8, %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit, %_ZNSolsEb.exit4, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNSolsEb.exit, %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.x, %bb.f ]
  %i.y = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.y, null
  br i1 %.not.i.i14, label %_ZN3pro2v45proxyI10AnyMovableED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit15, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(24) %0) #6, !inline_history !15
  br label %_ZN3pro2v45proxyI10AnyMovableED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit15

_ZN3pro2v45proxyI10AnyMovableED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit15: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #6
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN3pro2v46detail9conv_metaINS0_5proxyI10AnyMovableEENS1_16destroy_dispatchEDoFvvEEC1ISt10unique_ptrIiSt14default_deleteIiEEEESt15in_place_type_tIT_EENUlRS5_E_8__invokeESH_(ptr noundef nonnull align 8 dereferenceable(24) %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZZN3pro2v46detail9conv_metaINS0_5proxyI10AnyMovableEENS1_16destroy_dispatchEDoFvvEEC1ISt10unique_ptrIiSt14default_deleteIiEEEESt15in_place_type_tIT_EENKUlRS5_E_clESH_.exit, label %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 4) #8
  br label %_ZZN3pro2v46detail9conv_metaINS0_5proxyI10AnyMovableEENS1_16destroy_dispatchEDoFvvEEC1ISt10unique_ptrIiSt14default_deleteIiEEEESt15in_place_type_tIT_EENKUlRS5_E_clESH_.exit

_ZZN3pro2v46detail9conv_metaINS0_5proxyI10AnyMovableEENS1_16destroy_dispatchEDoFvvEEC1ISt10unique_ptrIiSt14default_deleteIiEEEESt15in_place_type_tIT_EENKUlRS5_E_clESH_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { builtin allocsize(0) }
attributes #8 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 int", !9, i64 0}
!11 = !{!10, !10, i64 0}
!14 = distinct !{null, null, null, null}
!15 = distinct !{null, null, null, null}
!16 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_5proxyI10AnyMovableEENS1_16destroy_dispatchEDoFvvEEE", !9, i64 0}
!17 = !{!16, !9, i64 0}
!18 = !{!"vtable pointer", !4, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"long", !5, i64 0}
!21 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!22 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!23 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !9, i64 0}
!24 = !{!"_ZTSNSt8ios_base6_WordsE", !9, i64 0, !20, i64 8}
!25 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !9, i64 0}
!26 = !{!"p1 _ZTSNSt6locale5_ImplE", !9, i64 0}
!27 = !{!"_ZTSSt6locale", !26, i64 0}
!28 = !{!"_ZTSSt8ios_base", !20, i64 8, !20, i64 16, !21, i64 24, !22, i64 28, !22, i64 32, !23, i64 40, !24, i64 48, !5, i64 64, !6, i64 192, !25, i64 200, !27, i64 208}
!29 = !{!28, !21, i64 24}
!30 = !{!21, !21, i64 0}
!31 = !{!6, !6, i64 0}
!33 = distinct !{!33, i1 false, !"_ZSt11make_uniqueIiJiEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!34 = distinct !{!34, !33, !"_ZSt11make_uniqueIiJiEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!35 = !{!34}
end_hunk_0
