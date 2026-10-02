Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/spec_proxy_reset?download=true
inline.NumInlined: 47
inline.NumDeleted: 41
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

$_ZZN3pro2v46detail9conv_metaINS0_5proxyI10AnyMovableEENS1_16destroy_dispatchEDoFvvEEC1INS1_11inplace_ptrIiEEEESt15in_place_type_tIT_EENUlRS5_E_8__invokeESF_ = comdat any

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.pro::v4::proxy", align 8    ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 123, ptr %i.a, align 8, !tbaa !16, !alias.scope !38
  store i64 ptrtoint (ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyI10AnyMovableEENS1_16destroy_dispatchEDoFvvEEC1INS1_11inplace_ptrIiEEEESt15in_place_type_tIT_EENUlRS5_E_8__invokeESF_ to i64), ptr %0, align 8, !alias.scope !38
  %i.b = load ptr, ptr @_ZSt4cout, align 8, !tbaa !19
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !30
  %i.h = or i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8, !tbaa !31
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i1 noundef zeroext true)
          to label %_ZNSolsEb.exit unwind label %bb.d

_ZNSolsEb.exit:                                   ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSolsEb.exit
  %i.k = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZN3pro2v45proxyI10AnyMovableE5resetEvQgesrT_15destructibilityLNS0_16constraint_levelE1E.exit, label %bb.b

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(24) %0) #4, !inline_history !13
  br label %_ZN3pro2v45proxyI10AnyMovableE5resetEvQgesrT_15destructibilityLNS0_16constraint_levelE1E.exit

_ZN3pro2v45proxyI10AnyMovableE5resetEvQgesrT_15destructibilityLNS0_16constraint_levelE1E.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b
  store ptr null, ptr %0, align 8, !tbaa !33
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i1 noundef zeroext false)
          to label %_ZNSolsEb.exit1 unwind label %bb.d

_ZNSolsEb.exit1:                                  ; preds = %_ZN3pro2v45proxyI10AnyMovableE5resetEvQgesrT_15destructibilityLNS0_16constraint_levelE1E.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2: ; preds = %_ZNSolsEb.exit1
  %i.n = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.n, null
  br i1 %.not.i.i3, label %_ZN3pro2v45proxyI10AnyMovableED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit, label %bb.c

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(24) %0) #4, !inline_history !14
  br label %_ZN3pro2v45proxyI10AnyMovableED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit

_ZN3pro2v45proxyI10AnyMovableED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #4
  ret i32 0

bb.d:                                             ; preds = %_ZNSolsEb.exit1, %_ZN3pro2v45proxyI10AnyMovableE5resetEvQgesrT_15destructibilityLNS0_16constraint_levelE1E.exit, %_ZNSolsEb.exit, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.p, null
  br i1 %.not.i.i4, label %_ZN3pro2v45proxyI10AnyMovableED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit5, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(24) %0) #4, !inline_history !14
  br label %_ZN3pro2v45proxyI10AnyMovableED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit5

_ZN3pro2v45proxyI10AnyMovableED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit5: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #4
  resume { ptr, i32 } %i.o
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN3pro2v46detail9conv_metaINS0_5proxyI10AnyMovableEENS1_16destroy_dispatchEDoFvvEEC1INS1_11inplace_ptrIiEEEESt15in_place_type_tIT_EENUlRS5_E_8__invokeESF_(ptr noundef nonnull align 8 dereferenceable(24) %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!13 = distinct !{null, null, null, null}
!14 = distinct !{null, null, null, null}
!15 = !{!"_ZTSN3pro2v46detail11inplace_ptrIiEE", !6, i64 0}
!16 = !{!15, !6, i64 0}
!18 = !{!"vtable pointer", !4, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"long", !5, i64 0}
!21 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!22 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!23 = !{!"any pointer", !5, i64 0}
!24 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !23, i64 0}
!25 = !{!"_ZTSNSt8ios_base6_WordsE", !23, i64 0, !20, i64 8}
!26 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !23, i64 0}
!27 = !{!"p1 _ZTSNSt6locale5_ImplE", !23, i64 0}
!28 = !{!"_ZTSSt6locale", !27, i64 0}
!29 = !{!"_ZTSSt8ios_base", !20, i64 8, !20, i64 16, !21, i64 24, !22, i64 28, !22, i64 32, !24, i64 40, !25, i64 48, !5, i64 64, !6, i64 192, !26, i64 200, !28, i64 208}
!30 = !{!29, !21, i64 24}
!31 = !{!21, !21, i64 0}
!32 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_5proxyI10AnyMovableEENS1_16destroy_dispatchEDoFvvEEE", !23, i64 0}
!33 = !{!32, !23, i64 0}
!34 = distinct !{!34, i1 false, !"_ZN3pro2v46detail15make_proxy_implI10AnyMovableiJiEEENS0_5proxyIT_EEDpOT1_"}
!35 = distinct !{!35, !34, !"_ZN3pro2v46detail15make_proxy_implI10AnyMovableiJiEEENS0_5proxyIT_EEDpOT1_: argument 0"}
!36 = distinct !{!36, i1 false, !"_ZN3pro2v410make_proxyITkNS0_6facadeE10AnyMovableiEENS0_5proxyIT_EEOT0_Qsr3stdE18is_constructible_vINSt5decayIS6_E4typeES6_E"}
!37 = distinct !{!37, !36, !"_ZN3pro2v410make_proxyITkNS0_6facadeE10AnyMovableiEENS0_5proxyIT_EEOT0_Qsr3stdE18is_constructible_vINSt5decayIS6_E4typeES6_E: argument 0"}
!38 = !{!35, !37}
end_hunk_0
