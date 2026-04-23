inline.NumInlined: 212
inline.NumDeleted: 107
begin_hunk_0_@_ZNSt19normal_distributionIdEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEdRT_RKNS0_10param_typeE:bb.a
  br label %select.unfold.i.i, !llvm.loop !127

bb.d:                                             ; preds = %bb.c
  %3 = tail call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #24, !tbaa !3
  br label %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit

_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit: ; preds = %bb.c, %bb.d
  %.016.i.i = phi double [ %3, %bb.d ], [ %i.n, %bb.c ]
  br i1 %lcmp.mod.not, label %select.unfold.i.i21.prol.loopexit, label %select.unfold.i.i21.prol

select.unfold.i.i21.prol:                         ; preds = %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit
end_hunk_0
begin_hunk_1_@_ZNSt19normal_distributionIdEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEdRT_RKNS0_10param_typeE:bb.a
  br i1 %.not.i.i25.1, label %.unr-lcssa, label %select.unfold.i.i21, !llvm.loop !128

bb.e:                                             ; preds = %.unr-lcssa
  %4 = tail call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #24, !tbaa !3
  br label %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit27

_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit27: ; preds = %.unr-lcssa, %bb.e
  %.016.i.i26 = phi double [ %4, %bb.e ], [ %i.ae, %.unr-lcssa ]
  %i.ay = tail call double @llvm.fmuladd.f64(double %.016.i.i26, double 2.000000e+00, double -1.000000e+00) ; 3 uses
  %i.az = fmul double %i.ay, %i.ay
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.ad, double %i.az) ; 4 uses
end_hunk_1
begin_hunk_2_@llvm.fmuladd.f64
; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @nextafter(double noundef, double noundef) local_unnamed_addr #21

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #8

end_hunk_2
