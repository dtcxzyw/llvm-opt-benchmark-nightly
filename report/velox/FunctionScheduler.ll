inline.NumInlined: 1320
inline.NumDeleted: 643
begin_hunk_0_@_ZNSt20poisson_distributionIlEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEElRT_RKNS0_10param_typeE:bb.a
  br i1 %.not.i.i.1, label %.unr-lcssa, label %select.unfold.i.i, !llvm.loop !119

bb.c:                                             ; preds = %.unr-lcssa
  %3 = tail call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #35, !tbaa !7
  br label %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit

_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit: ; preds = %.unr-lcssa, %bb.c
  %.016.i.i = phi double [ %3, %bb.c ], [ %i.ba, %.unr-lcssa ]
  br i1 %lcmp.mod179.not, label %select.unfold.i.i82.prol.loopexit, label %select.unfold.i.i82.prol

select.unfold.i.i82.prol:                         ; preds = %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit
end_hunk_0
begin_hunk_1_@_ZNSt20poisson_distributionIlEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEElRT_RKNS0_10param_typeE:bb.a
  br i1 %.not.i.i86.1, label %.unr-lcssa181, label %select.unfold.i.i82, !llvm.loop !119

bb.d:                                             ; preds = %.unr-lcssa181
  %4 = tail call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #35, !tbaa !7
  br label %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit88

_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit88: ; preds = %.unr-lcssa181, %bb.d
  %.016.i.i87 = phi double [ %4, %bb.d ], [ %i.bz, %.unr-lcssa181 ]
  %i.ct = fsub double 1.000000e+00, %.016.i.i87
  %i.cu = tail call double @log(double noundef %i.ct) #35, !tbaa !7
  %i.cv = fcmp ugt double %i.by, %i.p
end_hunk_1
begin_hunk_2_@_ZNSt20poisson_distributionIlEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEElRT_RKNS0_10param_typeE:bb.a
  br i1 %.not.i.i95.1, label %.unr-lcssa185, label %select.unfold.i.i91, !llvm.loop !119

bb.k:                                             ; preds = %.unr-lcssa185
  %5 = tail call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #35, !tbaa !7
  br label %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit97

_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit97: ; preds = %.unr-lcssa185, %bb.k
  %.016.i.i96 = phi double [ %5, %bb.k ], [ %i.dz, %.unr-lcssa185 ]
  %i.et = fsub double 1.000000e+00, %.016.i.i96
  %i.eu = tail call double @log(double noundef %i.et) #35, !tbaa !7
  %i.ev = fneg double %i.eu
end_hunk_2
begin_hunk_3_@_ZNSt20poisson_distributionIlEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEElRT_RKNS0_10param_typeE:bb.a
  br i1 %.not.i.i104.1, label %.unr-lcssa189, label %select.unfold.i.i100, !llvm.loop !119

bb.o:                                             ; preds = %.unr-lcssa189
  %6 = tail call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #35, !tbaa !7
  br label %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit106

_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit106: ; preds = %.unr-lcssa189, %bb.o
  %.016.i.i105 = phi double [ %6, %bb.o ], [ %i.ga, %.unr-lcssa189 ]
  %i.gu = fmul double %.0, %.016.i.i105           ; 2 uses
  %i.gv = add nuw nsw i64 %.071, 1
  %i.gw = fcmp ogt double %i.gu, %i.j
end_hunk_3
begin_hunk_4_@_ZNSt20poisson_distributionIlEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEElRT_RKNS0_10param_typeE:bb.a
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #20

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @nextafter(double noundef, double noundef) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNSt19normal_distributionIdEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEdRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #13 comdat align 2 {
bb.a:
end_hunk_4
begin_hunk_5_@_ZNSt19normal_distributionIdEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEdRT_RKNS0_10param_typeE:bb.a
  br label %select.unfold.i.i, !llvm.loop !122

bb.d:                                             ; preds = %bb.c
  %3 = tail call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #35, !tbaa !7
  br label %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit

_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit: ; preds = %bb.c, %bb.d
  %.016.i.i = phi double [ %3, %bb.d ], [ %i.n, %bb.c ]
  br i1 %lcmp.mod.not, label %select.unfold.i.i21.prol.loopexit, label %select.unfold.i.i21.prol

select.unfold.i.i21.prol:                         ; preds = %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit
end_hunk_5
begin_hunk_6_@_ZNSt19normal_distributionIdEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEdRT_RKNS0_10param_typeE:bb.a
  br i1 %.not.i.i25.1, label %.unr-lcssa, label %select.unfold.i.i21, !llvm.loop !119

bb.e:                                             ; preds = %.unr-lcssa
  %4 = tail call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #35, !tbaa !7
  br label %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit27

_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit27: ; preds = %.unr-lcssa, %bb.e
  %.016.i.i26 = phi double [ %4, %bb.e ], [ %i.ae, %.unr-lcssa ]
  %i.ay = tail call double @llvm.fmuladd.f64(double %.016.i.i26, double 2.000000e+00, double -1.000000e+00) ; 3 uses
  %i.az = fmul double %i.ay, %i.ay
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.ad, double %i.az) ; 4 uses
end_hunk_6
