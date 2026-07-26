inline.NumInlined: 30
inline.NumDeleted: 27
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::atomic" = type { %"struct.std::__atomic_base" }
%"struct.std::__atomic_base" = type { i8 }
%"class.absl::lts_20240116::base_internal::AtomicHook" = type { %"struct.std::atomic.0", ptr }
%"struct.std::atomic.0" = type { %"struct.std::__atomic_base.1" }
%"struct.std::__atomic_base.1" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.absl::lts_20240116::AlphaNum" = type { %"class.std::basic_string_view", [32 x i8] }
%"class.std::basic_string_view" = type { i64, ptr }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev = comdat any

@_ZN4absl12lts_2024011613cord_internal24shallow_subcords_enabledE = local_unnamed_addr global %"struct.std::atomic" zeroinitializer, align 1
@.str = private unnamed_addr constant [88 x i8] c"/opt-bench/work/velox/velox/build/_deps/absl-src/absl/strings/internal/cord_internal.cc\00", align 1
@_ZN4absl12lts_2024011616raw_log_internal21internal_log_functionB5cxx11E = external local_unnamed_addr global %"class.absl::lts_20240116::base_internal::AtomicHook", align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Unexpected node type: \00", align 1

; Function Attrs: mustprogress noreturn uwtable
define void @_ZN4absl12lts_2024011613cord_internal16LogFatalNodeTypeEPNS1_7CordRepE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %2 = alloca %"class.absl::lts_20240116::AlphaNum", align 8 ; 5 uses
  %3 = alloca %"class.absl::lts_20240116::AlphaNum", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  store i64 22, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.1, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i8, ptr %i.b, align 4, !tbaa !7
  %i.d = zext i8 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.f = call noundef ptr @_ZN4absl12lts_2024011616numbers_internal15FastIntToBufferEiPc(i32 noundef %i.d, ptr noundef nonnull %i.e)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.g, %i.h
  store i64 %i.i, ptr %3, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.e, ptr %i.j, align 8, !tbaa !17
  call void @_ZN4absl12lts_202401166StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.k = load atomic ptr, ptr @_ZN4absl12lts_2024011616raw_log_internal21internal_log_functionB5cxx11E acquire, align 8
  invoke void %i.k(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 36, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNK4absl12lts_2024011613base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iSB_EEEvDpOT_.exit unwind label %bb.b, !inline_history !18

_ZNK4absl12lts_2024011613base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iSB_EEEvDpOT_.exit: ; preds = %bb.a
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %1) #6
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %1, align 8, !tbaa !19     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.p = load i64, ptr %i.n, align 8, !tbaa !22
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  resume { ptr, i32 } %i.l
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN4absl12lts_202401166StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !22
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011613cord_internal7CordRep7DestroyEPS2_(ptr noundef %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %bb.a
  %.012 = phi ptr [ %0, %bb.a ], [ %i.f, %.critedge.backedge ] ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.012, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !7     ; 4 uses
  switch i8 %i.b, label %bb.f [
    i8 3, label %bb.b
    i8 5, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

bb.b:                                             ; preds = %.critedge
  tail call void @_ZN4absl12lts_2024011613cord_internal12CordRepBtree7DestroyEPS2_(ptr noundef nonnull %.012)
  br label %.loopexit

bb.c:                                             ; preds = %.critedge
  %i.c = getelementptr inbounds nuw i8, ptr %.012, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  tail call void %i.d(ptr noundef nonnull %.012), !inline_history !25
  br label %.loopexit

bb.d:                                             ; preds = %.critedge
  %i.e = getelementptr inbounds nuw i8, ptr %.012, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.012, i64 noundef 32) #7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load atomic i32, ptr %i.g acquire, align 4
  %.not.i = icmp eq i32 %i.h, 2
  br i1 %.not.i, label %.critedge.backedge, label %_ZN4absl12lts_2024011613cord_internal16RefcountAndFlags9DecrementEv.exit

_ZN4absl12lts_2024011613cord_internal16RefcountAndFlags9DecrementEv.exit: ; preds = %bb.d
  %i.i = atomicrmw sub ptr %i.g, i32 2 acq_rel, align 4
  %i.j = icmp eq i32 %i.i, 2
  br i1 %i.j, label %.critedge.backedge, label %.loopexit

.critedge.backedge:                               ; preds = %_ZN4absl12lts_2024011613cord_internal16RefcountAndFlags9DecrementEv.exit, %bb.d
  br label %.critedge

bb.e:                                             ; preds = %.critedge
  tail call void @_ZN4absl12lts_2024011613cord_internal10CordRepCrc7DestroyEPS2_(ptr noundef nonnull %.012)
  br label %.loopexit

bb.f:                                             ; preds = %.critedge
  %i.k = zext i8 %i.b to i32
  %i.l = icmp ult i8 %i.b, 67                     ; 2 uses
  %i.m = icmp ult i8 %i.b, -69                    ; 2 uses
  %..i.i = select i1 %i.m, i32 6, i32 12
  %.7.i.i = select i1 %i.m, i32 -3712, i32 -753664
  %.sink6.i.i = select i1 %i.l, i32 3, i32 %..i.i
  %.sink5.i.i = select i1 %i.l, i32 -16, i32 %.7.i.i
  %i.n = shl nuw nsw i32 %i.k, %.sink6.i.i
  %i.o = add nsw i32 %i.n, %.sink5.i.i
  %i.p = sext i32 %i.o to i64
  tail call void @_ZdlPvm(ptr noundef nonnull %.012, i64 noundef %i.p) #6
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4absl12lts_2024011613cord_internal16RefcountAndFlags9DecrementEv.exit, %bb.f, %bb.e, %bb.c, %bb.b
  ret void
}

declare void @_ZN4absl12lts_2024011613cord_internal12CordRepBtree7DestroyEPS2_(ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN4absl12lts_2024011613cord_internal10CordRepCrc7DestroyEPS2_(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN4absl12lts_2024011616numbers_internal15FastIntToBufferEiPc(i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { builtin nounwind }

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
!7 = !{!8, !5, i64 12}
!8 = !{!"_ZTSN4absl12lts_2024011613cord_internal7CordRepE", !9, i64 0, !10, i64 8, !5, i64 12, !5, i64 13}
!9 = !{!"long", !5, i64 0}
!10 = !{!"_ZTSN4absl12lts_2024011613cord_internal16RefcountAndFlagsE", !11, i64 0}
!11 = !{!"_ZTSSt6atomicIiE", !12, i64 0}
!12 = !{!"_ZTSSt13__atomic_baseIiE", !4, i64 0}
!13 = !{!14, !9, i64 0}
!14 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !9, i64 0, !15, i64 8}
!15 = !{!"p1 omnipotent char", !16, i64 0}
!16 = !{!"any pointer", !5, i64 0}
!17 = !{!14, !15, i64 8}
!18 = distinct !{null}
!19 = !{!20, !15, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !21, i64 0, !9, i64 8, !5, i64 16}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!22 = !{!5, !5, i64 0}
!23 = !{!24, !16, i64 24}
!24 = !{!"_ZTSN4absl12lts_2024011613cord_internal15CordRepExternalE", !8, i64 0, !15, i64 16, !16, i64 24}
!25 = distinct !{null}
!26 = !{!27, !28, i64 24}
!27 = !{!"_ZTSN4absl12lts_2024011613cord_internal16CordRepSubstringE", !8, i64 0, !9, i64 16, !28, i64 24}
!28 = !{!"p1 _ZTSN4absl12lts_2024011613cord_internal7CordRepE", !16, i64 0}
end_hunk_0
