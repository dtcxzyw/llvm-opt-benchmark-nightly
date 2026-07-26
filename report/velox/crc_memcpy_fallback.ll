inline.NumInlined: 52
inline.NumDeleted: 42
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }

$_ZN4absl12lts_2024011612crc_internal15CrcMemcpyEngineD2Ev = comdat any

$_ZN4absl12lts_2024011612crc_internal23FallbackCrcMemcpyEngineD0Ev = comdat any

$_ZTIN4absl12lts_2024011612crc_internal15CrcMemcpyEngineE = comdat any

$_ZTSN4absl12lts_2024011612crc_internal15CrcMemcpyEngineE = comdat any

@_ZTVN4absl12lts_2024011612crc_internal23FallbackCrcMemcpyEngineE = unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4absl12lts_2024011612crc_internal23FallbackCrcMemcpyEngineE, ptr @_ZN4absl12lts_2024011612crc_internal15CrcMemcpyEngineD2Ev, ptr @_ZN4absl12lts_2024011612crc_internal23FallbackCrcMemcpyEngineD0Ev, ptr @_ZNK4absl12lts_2024011612crc_internal23FallbackCrcMemcpyEngine7ComputeEPvPKvmNS0_8crc32c_tE] }, align 8
@_ZTIN4absl12lts_2024011612crc_internal23FallbackCrcMemcpyEngineE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4absl12lts_2024011612crc_internal23FallbackCrcMemcpyEngineE, ptr @_ZTIN4absl12lts_2024011612crc_internal15CrcMemcpyEngineE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4absl12lts_2024011612crc_internal23FallbackCrcMemcpyEngineE = constant [61 x i8] c"N4absl12lts_2024011612crc_internal23FallbackCrcMemcpyEngineE\00", align 1
@_ZTIN4absl12lts_2024011612crc_internal15CrcMemcpyEngineE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4absl12lts_2024011612crc_internal15CrcMemcpyEngineE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN4absl12lts_2024011612crc_internal15CrcMemcpyEngineE = linkonce_odr constant [53 x i8] c"N4absl12lts_2024011612crc_internal15CrcMemcpyEngineE\00", comdat, align 1

; Function Attrs: mustprogress uwtable
define i32 @_ZNK4absl12lts_2024011612crc_internal23FallbackCrcMemcpyEngine7ComputeEPvPKvmNS0_8crc32c_tE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, ptr noalias noundef %2, i64 noundef %3, i32 %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ugt i64 %3, 8192
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.b = phi i64 [ %i.f, %.lr.ph ], [ 8192, %bb.a ] ; 3 uses
  %.sroa.026.033 = phi i32 [ %i.d, %.lr.ph ], [ %4, %bb.a ]
  %.032 = phi i64 [ %i.b, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %.032 ; 2 uses
  %i.d = tail call i32 @_ZN4absl12lts_2024011612crc_internal20ExtendCrc32cInternalENS0_8crc32c_tESt17basic_string_viewIcSt11char_traitsIcEE(i32 %.sroa.026.033, i64 8192, ptr %i.c) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.032
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(8192) %i.e, ptr noundef nonnull align 1 dereferenceable(8192) %i.c, i64 8192, i1 false)
  %i.f = add i64 %i.b, 8192                       ; 2 uses
  %i.g = icmp ult i64 %i.f, %3
  br i1 %i.g, label %.lr.ph, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.b, %.lr.ph ] ; 4 uses
  %.sroa.026.0.lcssa = phi i32 [ %4, %bb.a ], [ %i.d, %.lr.ph ] ; 2 uses
  %i.h = icmp ult i64 %.0.lcssa, %3
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.i = sub nuw i64 %3, %.0.lcssa                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.0.lcssa ; 2 uses
  %i.k = tail call i32 @_ZN4absl12lts_2024011612crc_internal20ExtendCrc32cInternalENS0_8crc32c_tESt17basic_string_viewIcSt11char_traitsIcEE(i32 %.sroa.026.0.lcssa, i64 %i.i, ptr %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.0.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.j, i64 %i.i, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.sroa.026.1 = phi i32 [ %i.k, %bb.b ], [ %.sroa.026.0.lcssa, %._crit_edge ]
  ret i32 %.sroa.026.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZN4absl12lts_2024011612crc_internal9CrcMemcpy22GetArchSpecificEnginesEv() local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #7 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4absl12lts_2024011612crc_internal23FallbackCrcMemcpyEngineE, i64 16), ptr %i.a, align 8, !tbaa !9
  %i.b = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #7 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4absl12lts_2024011612crc_internal23FallbackCrcMemcpyEngineE, i64 16), ptr %i.b, align 8, !tbaa !9
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %i.b, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011612crc_internal9CrcMemcpy13GetTestEngineEii(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN4absl12lts_2024011612crc_internal23FallbackCrcMemcpyEngineESt14default_deleteIS3_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #7, !noalias !11 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4absl12lts_2024011612crc_internal23FallbackCrcMemcpyEngineE, i64 16), ptr %i.a, align 8, !tbaa !9, !noalias !11
  store ptr %i.a, ptr %0, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2024011612crc_internal15CrcMemcpyEngineD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2024011612crc_internal23FallbackCrcMemcpyEngineD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #8
  ret void
}

declare i32 @_ZN4absl12lts_2024011612crc_internal20ExtendCrc32cInternalENS0_8crc32c_tESt17basic_string_viewIcSt11char_traitsIcEE(i32, i64, ptr) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

declare i32 @__gxx_personality_v0(...)

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { builtin allocsize(0) }
attributes #8 = { builtin nounwind }

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
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !6, i64 0}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZSt11make_uniqueIN4absl12lts_2024011612crc_internal23FallbackCrcMemcpyEngineEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!13 = distinct !{!13, !"_ZSt11make_uniqueIN4absl12lts_2024011612crc_internal23FallbackCrcMemcpyEngineEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!14 = !{!15, !16, i64 0}
!15 = !{!"_ZTSSt10_Head_baseILm0EPN4absl12lts_2024011612crc_internal15CrcMemcpyEngineELb0EE", !16, i64 0}
!16 = !{!"p1 _ZTSN4absl12lts_2024011612crc_internal15CrcMemcpyEngineE", !17, i64 0}
!17 = !{!"any pointer", !5, i64 0}
end_hunk_0
