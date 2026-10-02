Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-embed?download=true
inline.NumInlined: 37
inline.NumDeleted: 33
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }

$_ZN23llama_model_llama_embedD0Ev = comdat any

@_ZTV23llama_model_llama_embed = local_unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTI23llama_model_llama_embed, ptr @_ZN11llama_modelD2Ev, ptr @_ZN23llama_model_llama_embedD0Ev, ptr @_ZN16llama_model_base10load_statsER18llama_model_loader, ptr @_ZN16llama_model_base12load_hparamsER18llama_model_loader, ptr @_ZN16llama_model_base10load_vocabER18llama_model_loader, ptr @_ZN16llama_model_base12load_tensorsER18llama_model_loader, ptr @_ZN17llama_model_llama17load_arch_hparamsER18llama_model_loader, ptr @_ZN17llama_model_llama17load_arch_tensorsER18llama_model_loader, ptr @_ZNK23llama_model_llama_embed16build_arch_graphERK16llm_graph_params] }, align 8
@_ZTI23llama_model_llama_embed = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS23llama_model_llama_embed, ptr @_ZTI17llama_model_llama }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS23llama_model_llama_embed = constant [26 x i8] c"23llama_model_llama_embed\00", align 1
@_ZTI17llama_model_llama = external constant ptr

; Function Attrs: mustprogress uwtable
define void @_ZNK23llama_model_llama_embed16build_arch_graphERK16llm_graph_params(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(36884) %1, ptr noundef nonnull align 8 dereferenceable(36496) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(336) ptr @_Znwm(i64 noundef 336) #6, !noalias !17 ; 3 uses
  invoke void @_ZN17llama_model_llama5graphILb1EEC1ERK11llama_modelRK16llm_graph_params(ptr noundef nonnull align 8 dereferenceable(336) %i.a, ptr noundef nonnull align 8 dereferenceable(36884) %1, ptr noundef nonnull align 8 dereferenceable(36496) %2)
          to label %_ZNSt10unique_ptrIN17llama_model_llama5graphILb1EEESt14default_deleteIS2_EED2Ev.exit unwind label %bb.b, !noalias !17

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 336) #7, !noalias !17
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN17llama_model_llama5graphILb1EEESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !14
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11llama_modelD2Ev(ptr noundef nonnull align 8 dead_on_return(36840) dereferenceable(36840)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN23llama_model_llama_embedD0Ev(ptr noundef nonnull align 8 dereferenceable(36884) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN11llama_modelD2Ev(ptr noundef nonnull align 8 dead_on_return(36884) dereferenceable(36884) %0) #8
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 36888) #7
  ret void
}

declare void @_ZN16llama_model_base10load_statsER18llama_model_loader(ptr noundef nonnull align 8 dereferenceable(36884), ptr noundef nonnull align 8 dereferenceable(592)) unnamed_addr #3

declare void @_ZN16llama_model_base12load_hparamsER18llama_model_loader(ptr noundef nonnull align 8 dereferenceable(36884), ptr noundef nonnull align 8 dereferenceable(592)) unnamed_addr #3

declare void @_ZN16llama_model_base10load_vocabER18llama_model_loader(ptr noundef nonnull align 8 dereferenceable(36884), ptr noundef nonnull align 8 dereferenceable(592)) unnamed_addr #3

declare noundef zeroext i1 @_ZN16llama_model_base12load_tensorsER18llama_model_loader(ptr noundef nonnull align 8 dereferenceable(36884), ptr noundef nonnull align 8 dereferenceable(592)) unnamed_addr #3

declare void @_ZN17llama_model_llama17load_arch_hparamsER18llama_model_loader(ptr noundef nonnull align 8 dereferenceable(36884), ptr noundef nonnull align 8 dereferenceable(592)) unnamed_addr #3

declare void @_ZN17llama_model_llama17load_arch_tensorsER18llama_model_loader(ptr noundef nonnull align 8 dereferenceable(36884), ptr noundef nonnull align 8 dereferenceable(592)) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

declare void @_ZN17llama_model_llama5graphILb1EEC1ERK11llama_modelRK16llm_graph_params(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef nonnull align 8 dereferenceable(36840), ptr noundef nonnull align 8 dereferenceable(36496)) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #7 = { builtin nounwind }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!11 = !{!"any pointer", !4, i64 0}
!12 = !{!"p1 _ZTS17llm_graph_context", !11, i64 0}
!13 = !{!"_ZTSSt10_Head_baseILm0EP17llm_graph_contextLb0EE", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = distinct !{!15, i1 false, !"_ZSt11make_uniqueIN17llama_model_llama5graphILb1EEEJRK23llama_model_llama_embedRK16llm_graph_paramsEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!16 = distinct !{!16, !15, !"_ZSt11make_uniqueIN17llama_model_llama5graphILb1EEEJRK23llama_model_llama_embedRK16llm_graph_paramsEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!17 = !{!16}
end_hunk_0
