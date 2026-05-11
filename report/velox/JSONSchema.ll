inline.NumInlined: 10037
inline.NumDeleted: 4349
begin_hunk_0_@_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator10loadSchemaERNS1_22SchemaValidatorContextERKNS_7dynamicE:bb.a
  %7 = alloca %"class.std::unique_ptr.306", align 8 ; 6 uses
  %8 = alloca %"class.std::unique_ptr.306", align 8 ; 6 uses
  %9 = alloca %"class.boost::basic_regex", align 8 ; 9 uses
  %10 = alloca %"class.std::unique_ptr.306", align 8 ; 6 uses
  %11 = alloca %"class.std::unique_ptr.306", align 8 ; 5 uses
  %12 = alloca %"class.std::unique_ptr.306", align 8 ; 5 uses
  %13 = alloca %"class.std::unique_ptr.306", align 8 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator10loadSchemaERNS1_22SchemaValidatorContextERKNS_7dynamicE:bb.a

bb.hw:                                            ; preds = %bb.hv, %bb.hu, %.noexc91.i
  %i.aru = getelementptr inbounds nuw i8, ptr %i.arn, i64 16
  store ptr %i.aql, ptr %i.aru, align 8, !tbaa !7363, !noalias !9540
  br i1 %i.arg, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESH_SaISG_EET0_T_SK_SJ_RT1_.exit42.i.thread.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

end_hunk_1
begin_hunk_2_@_ZN5folly9SingletonINS_10jsonschema9ValidatorENS_6detail10DefaultTagES4_E7try_getEv:bb.a
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.ab ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17670)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !151, !noalias !17673 ; 3 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !74, !alias.scope !17673
end_hunk_2
begin_hunk_3_@_ZN5folly9SingletonINS_10jsonschema9ValidatorENS_6detail10DefaultTagES4_E7try_getEv:bb.a
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN5folly14AccessSpreaderISt6atomicE13cachedCurrentEmRKNS2_11GlobalStateE.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ah = load atomic i32, ptr %i.ag monotonic, align 8, !noalias !17673
  br label %bb.h

end_hunk_3
begin_hunk_4_@_ZN5folly9SingletonINS_10jsonschema9ValidatorENS_6detail10DefaultTagES4_E7try_getEv:bb.a
  %i.aj = cmpxchg weak ptr %i.ag, i32 %.06.i.i.i.i.i.i.i, i32 %i.ai acq_rel monotonic, align 8, !noalias !17673 ; 2 uses
  %i.ak = extractvalue { i32, i1 } %i.aj, 1
  %i.al = extractvalue { i32, i1 } %i.aj, 0
  br i1 %i.ak, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i, label %bb.h, !llvm.loop !17674

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i: ; preds = %bb.h
  store ptr null, ptr %i.ad, align 8, !tbaa !74, !alias.scope !17673
  br label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i.i.i

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.am = load atomic i32, ptr %i.ag monotonic, align 8, !noalias !17673
  %.fr.i.i.i.i.i = freeze i32 %i.am
  %.not.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i, 0
  %i.an = load ptr, ptr %i.ac, align 8, !noalias !17673
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i.i.i, label %_ZN5folly6detail15SingletonHolderINS_10jsonschema9ValidatorEE7try_getEv.exit

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i, %_ZN5folly14AccessSpreaderISt6atomicE13cachedCurrentEmRKNS2_11GlobalStateE.exit.i.i
  br label %_ZN5folly6detail15SingletonHolderINS_10jsonschema9ValidatorEE7try_getEv.exit

_ZN5folly6detail15SingletonHolderINS_10jsonschema9ValidatorEE7try_getEv.exit: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i.i.i
end_hunk_4
