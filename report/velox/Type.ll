inline.NumInlined: 8537
inline.NumDeleted: 3636
begin_hunk_0_@_ZZN5folly2toIldEENSt9enable_ifIXsr6detail14IsArithToArithIT_T0_EE5valueES2_E4typeERKS3_ENKUlNS_14ConversionCodeEE_clES8_:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16, !noalias !1217
  store ptr %3, ptr %i.a, align 8, !tbaa !211, !noalias !1217
  %i.f = load double, ptr %i.c, align 8, !tbaa !171, !noalias !1217
  %i.g = fcmp olt double %i.f, 0.000000e+00       ; 2 uses
  %i.h = select i1 %i.g, i64 35, i64 34
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #53
          to label %.noexc.i.i unwind label %bb.a ; 2 uses

.noexc.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %4 = select i1 %i.g, i64 34, i64 33
  store i8 0, ptr %i.i, align 1, !tbaa !9
  store ptr %i.i, ptr %3, align 8, !tbaa !29
  store i64 %4, ptr %i.d, align 8, !tbaa !9
  invoke void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3ELm4EEEE4callIJA2_cPKcA3_cdPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_(ptr noundef nonnull align 1 dereferenceable(2) @.str.93, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(3) @.str.167, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN5folly6detail10errorValueIldEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit unwind label %bb.a

end_hunk_0
