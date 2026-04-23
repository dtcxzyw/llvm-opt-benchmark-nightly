inline.NumInlined: 101
inline.NumDeleted: 79
begin_hunk_0_@_ZN8facebook5velox9functions3sfm20SfmSketchAccumulator6sketchEv:bb.a
  br i1 %i.c, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions3sfm20SfmSketchAccumulator6sketchEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.3) #13
  unreachable

bb.c:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox9functions3sfm20SfmSketchAccumulator11deserializeEPKcPNS0_19HashStringAllocatorE:bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_ZN8facebook5velox9functions3sfm9SfmSketch11deserializeEPKcPNS0_19HashStringAllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::functions::sfm::SfmSketch") align 8 %3, ptr noundef nonnull %i.f, ptr noundef %2)
  invoke void @_ZN8facebook5velox9functions3sfm20SfmSketchAccumulatorC1EdiiONS2_9SfmSketchE(ptr noundef nonnull align 8 dereferenceable(2600) %0, double noundef %i.a, i32 noundef %i.c, i32 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(2584) %3)
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox9functions3sfm20SfmSketchAccumulator11deserializeEPKcPNS0_19HashStringAllocatorE:bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #15
  unreachable

_ZN8facebook5velox9functions3sfm9SfmSketchD2Ev.exit: ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void

bb.g:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox9functions3sfm9SfmSketchD2Ev(ptr noundef nonnull align 8 dead_on_return(2584) dereferenceable(2584) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  resume { ptr, i32 } %i.u
}

end_hunk_2
begin_hunk_3_@_ZN8facebook5velox9functions3sfm9SfmSketchD2Ev:bb.a
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #15
  unreachable

_ZNSt6vectorIaN8facebook5velox12StlAllocatorIaEEED2Ev.exit: ; preds = %bb.a, %bb.c, %bb.d
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox9functions3sfm20SfmSketchAccumulator16addIndexAndZerosEii:bb.a
  br i1 %i.c, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions3sfm20SfmSketchAccumulator16addIndexAndZerosEiiE18veloxCheckFailArgs, ptr noundef nonnull @.str.3) #13
  unreachable

bb.c:                                             ; preds = %bb.a
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox9functions3sfm20SfmSketchAccumulator11cardinalityEv:bb.a
  br i1 %i.c, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions3sfm20SfmSketchAccumulator11cardinalityEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.6) #13
  unreachable

bb.c:                                             ; preds = %bb.a
end_hunk_5
begin_hunk_6_@llvm.memcpy.p0.p0.i64
; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

end_hunk_6
begin_hunk_7_@_ZN8facebook5velox9functions3sfm36MersenneTwisterRandomizationStrategy11nextBooleanEd:bb.a
  br i1 %.not.i.i.i.i, label %bb.b, label %select.unfold.i.i.i.i, !llvm.loop !47

bb.c:                                             ; preds = %bb.b
  br label %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_.exit

_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_.exit: ; preds = %bb.b, %bb.c
  %.016.i.i.i.i = phi double [ 0x3FEFFFFFFFFFFFFF, %bb.c ], [ %i.h, %bb.b ]
  %i.r = fcmp olt double %.016.i.i.i.i, %1
  ret i1 %i.r
}
end_hunk_7
begin_hunk_8_@_ZN8facebook5velox9functions3sfm21RandomizationStrategyD2Ev:bb.a
; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox9functions3sfm36MersenneTwisterRandomizationStrategyD0Ev(ptr noundef nonnull align 8 dereferenceable(2512) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 2512) #16
  ret void
}

end_hunk_8
begin_hunk_9_@_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv:bb.a
  ret i64 %i.pv
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

declare void @_ZN8facebook5velox19HashStringAllocator10freeToPoolEPvm(ptr noundef nonnull align 8 dereferenceable(37384), ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZN8facebook5velox19HashStringAllocator4freeEPNS1_6HeaderE(ptr noundef nonnull align 8 dereferenceable(37384), ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.log.f80(x86_fp80) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
end_hunk_9
begin_hunk_10_@llvm.umax.i64
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { noreturn }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
end_hunk_10
