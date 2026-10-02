Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/maglev?download=true
inline.NumInlined: 47
inline.NumDeleted: 45
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal6Maglev7CompileEPNS0_7IsolateENS0_6HandleINS0_10JSFunctionEEENS0_14BytecodeOffsetE(ptr noundef %0, ptr %1, i32 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #5, !noalias !10 ; 5 uses
  tail call void @_ZN2v88internal6maglev21MaglevCompilationInfoC1EPNS0_7IsolateENS0_6HandleINS0_10JSFunctionEEENS0_14BytecodeOffsetESt8optionalIPNS0_8compiler12JSHeapBrokerEES9_IbEb(ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef %0, ptr %1, i32 %2, ptr undef, i8 0, i16 0, i1 noundef zeroext false) #6, !noalias !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 63936
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 @_ZN2v88internal6maglev14MaglevCompiler7CompileEPNS0_12LocalIsolateEPNS1_21MaglevCompilationInfoE(ptr noundef %i.c, ptr noundef nonnull %i.a) #6
  br i1 %i.d, label %bb.b, label %_ZNSt10unique_ptrIN2v88internal6maglev21MaglevCompilationInfoESt14default_deleteIS3_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { ptr, i8 } @_ZN2v88internal6maglev14MaglevCompiler12GenerateCodeEPNS0_7IsolateEPNS1_21MaglevCompilationInfoE(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #6
  %.fca.0.extract = extractvalue { ptr, i8 } %i.e, 0
  br label %_ZNSt10unique_ptrIN2v88internal6maglev21MaglevCompilationInfoESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal6maglev21MaglevCompilationInfoESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %.sroa.010.0 = phi ptr [ %.fca.0.extract, %bb.b ], [ null, %bb.a ]
  tail call void @_ZN2v88internal6maglev21MaglevCompilationInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.a) #6
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 144) #7
  ret ptr %.sroa.010.0
}

declare noundef zeroext i1 @_ZN2v88internal6maglev14MaglevCompiler7CompileEPNS0_12LocalIsolateEPNS1_21MaglevCompilationInfoE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare { ptr, i8 } @_ZN2v88internal6maglev14MaglevCompiler12GenerateCodeEPNS0_7IsolateEPNS1_21MaglevCompilationInfoE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

declare void @_ZN2v88internal6maglev21MaglevCompilationInfoC1EPNS0_7IsolateENS0_6HandleINS0_10JSFunctionEEENS0_14BytecodeOffsetESt8optionalIPNS0_8compiler12JSHeapBrokerEES9_IbEb(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef, ptr, i32, ptr, i8, i16, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN2v88internal6maglev21MaglevCompilationInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144)) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { builtin nounwind allocsize(0) }
attributes #6 = { nounwind }
attributes #7 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!8 = distinct !{!8, i1 false, !"_ZN2v88internal6maglev21MaglevCompilationInfo3NewEPNS0_7IsolateENS0_6HandleINS0_10JSFunctionEEENS0_14BytecodeOffsetE"}
!9 = distinct !{!9, !8, !"_ZN2v88internal6maglev21MaglevCompilationInfo3NewEPNS0_7IsolateENS0_6HandleINS0_10JSFunctionEEENS0_14BytecodeOffsetE: argument 0"}
!10 = !{!9}
end_hunk_0
