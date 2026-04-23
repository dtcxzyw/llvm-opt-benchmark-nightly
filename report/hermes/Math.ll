inline.NumInlined: 560
inline.NumDeleted: 278
begin_hunk_0_@_ZN6hermes2vm10mathRandomEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  br i1 %.not.i.i.i.i, label %bb.f, label %select.unfold.i.i.i.i, !llvm.loop !69

bb.g:                                             ; preds = %bb.f
  br label %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_.exit

_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_.exit: ; preds = %bb.f, %bb.g
  %.016.i.i.i.i = phi double [ 0x3FEFFFFFFFFFFFFF, %bb.g ], [ %i.al, %bb.f ] ; 2 uses
  %i.au = fadd double %.016.i.i.i.i, 0.000000e+00
  %i.av = fcmp uno double %.016.i.i.i.i, 0.000000e+00
  %i.aw = bitcast double %i.au to i64
end_hunk_0
begin_hunk_1_@_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv:bb.a
  ret i64 %i.bv
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

end_hunk_1
