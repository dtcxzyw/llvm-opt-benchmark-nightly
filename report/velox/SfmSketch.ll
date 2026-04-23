inline.NumInlined: 374
inline.NumDeleted: 200
begin_hunk_0_@_ZN8facebook5velox9functions3sfm36MersenneTwisterRandomizationStrategy11nextBooleanEd:bb.a
  br i1 %.not.i.i.i.i, label %bb.b, label %select.unfold.i.i.i.i, !llvm.loop !127

bb.c:                                             ; preds = %bb.b
  %2 = tail call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #20, !tbaa !3
  br label %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_.exit

_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_.exit: ; preds = %bb.b, %bb.c
  %.016.i.i.i.i = phi double [ %2, %bb.c ], [ %i.h, %bb.b ]
  %i.r = fcmp olt double %.016.i.i.i.i, %1
  ret i1 %i.r
}
end_hunk_0
begin_hunk_1_@_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv:bb.a
  ret i64 %i.pv
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @nextafter(double noundef, double noundef) local_unnamed_addr #4

declare void @_ZN8facebook5velox19HashStringAllocator10freeToPoolEPvm(ptr noundef nonnull align 8 dereferenceable(37384), ptr noundef, i64 noundef) local_unnamed_addr #15

declare void @_ZN8facebook5velox19HashStringAllocator4freeEPNS1_6HeaderE(ptr noundef nonnull align 8 dereferenceable(37384), ptr noundef) local_unnamed_addr #15
end_hunk_1
