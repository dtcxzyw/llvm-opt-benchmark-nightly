begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$__clang_call_terminate = comdat any

@_ZTVN4absl12lts_2025051218profiling_internal19PeriodicSamplerBaseE = unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN4absl12lts_2025051218profiling_internal19PeriodicSamplerBaseE, ptr @_ZN4absl12lts_2025051218profiling_internal19PeriodicSamplerBase20GetExponentialBiasedEi, ptr @__cxa_pure_virtual] }, align 8
@_ZTIN4absl12lts_2025051218profiling_internal19PeriodicSamplerBaseE = constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4absl12lts_2025051218profiling_internal19PeriodicSamplerBaseE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN4absl12lts_2025051218profiling_internal19PeriodicSamplerBaseE = constant [63 x i8] c"N4absl12lts_2025051218profiling_internal19PeriodicSamplerBaseE\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @_ZN4absl12lts_2025051218profiling_internal19PeriodicSamplerBase20GetExponentialBiasedEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = sext i32 %1 to i64
  %i.c = invoke noundef i64 @_ZN4absl12lts_2025051218profiling_internal17ExponentialBiased9GetStrideEl(ptr noundef nonnull align 8 dereferenceable(17) %i.a, i64 noundef %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret i64 %i.c

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #4
  unreachable
}

declare noundef i64 @_ZN4absl12lts_2025051218profiling_internal17ExponentialBiased9GetStrideEl(ptr noundef nonnull align 8 dereferenceable(17), i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #5 ; 0 uses
  tail call void @_ZSt9terminatev() #4
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051218profiling_internal19PeriodicSamplerBase19SubtleConfirmSampleEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(40) %0) #5 ; 4 uses
  %i.e = icmp slt i32 %i.d, 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  br i1 %i.e, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.f, align 8, !tbaa !10
  %i.g = icmp eq i32 %i.d, 1
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !10
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.f, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8, !tbaa !7
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %i.d) #5 ; 3 uses
  %i.m = sub nsw i64 0, %i.l
  store i64 %i.m, ptr %i.f, align 8, !tbaa !10
  %i.n = icmp sgt i64 %i.l, 1
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = sub nsw i64 1, %i.l
  store i64 %i.o, ptr %i.f, align 8, !tbaa !10
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.p = load ptr, ptr %0, align 8, !tbaa !7
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef i64 %i.q(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %i.d) #5
  %i.s = sub nsw i64 0, %i.r
  store i64 %i.s, ptr %i.f, align 8, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.b
  %.0 = phi i1 [ %i.g, %bb.b ], [ false, %bb.e ], [ true, %bb.f ]
  ret i1 %.0
}

declare void @__cxa_pure_virtual() unnamed_addr

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!10 = !{!11, !12, i64 8}
!11 = !{!"_ZTSN4absl12lts_2025051218profiling_internal19PeriodicSamplerBaseE", !12, i64 8, !13, i64 16}
!12 = !{!"long", !5, i64 0}
!13 = !{!"_ZTSN4absl12lts_2025051218profiling_internal17ExponentialBiasedE", !12, i64 0, !14, i64 8, !15, i64 16}
!14 = !{!"double", !5, i64 0}
!15 = !{!"bool", !5, i64 0}
end_hunk_0
