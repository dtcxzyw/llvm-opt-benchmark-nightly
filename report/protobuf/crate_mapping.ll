inline.NumInlined: 729
inline.NumDeleted: 425
begin_hunk_0_@_ZN6google8protobuf8compiler4rust27GetImportPathToCrateNameMapB5cxx11EPKNS2_7OptionsE:bb.a
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8compiler4rust27GetImportPathToCrateNameMapB5cxx11EPKNS2_7OptionsE:bb.a
  %i.ja = add i64 %.us-phi138, %i.iz
  %i.jb = and i64 %i.ja, %i.hb
  %i.jc = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.gy, i64 %i.jb, i64 %.us-phi137)
          to label %bb.az unwind label %bb.bc     ; 2 uses

bb.ay:                                            ; preds = %.critedge18.i
  %i.jd = add i64 %.sroa.15.0.i, 16               ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8compiler4rust27GetImportPathToCrateNameMapB5cxx11EPKNS2_7OptionsE:bb.a
  br label %.noexc84.split

bb.az:                                            ; preds = %.thread.i
  %18 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !16, !noalias !42
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 %i.jc
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.bt, align 8, !tbaa !16, !noalias !42
  %i.jf = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.jc ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %19) ]
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16 ; 3 uses
  store ptr %i.jg, ptr %i.jf, align 8, !tbaa !15
  %i.jh = load ptr, ptr %15, align 8, !tbaa !20, !noalias !53 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8compiler4rust27GetImportPathToCrateNameMapB5cxx11EPKNS2_7OptionsE:bb.a
  store i64 %i.jw, ptr %i.jq, align 8, !tbaa !16
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE6insertEOSD_IS9_S9_E.exit.thread

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE6insertEOSD_IS9_S9_E.exit.thread: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jx = load i64, ptr %i.br, align 8, !tbaa !7, !noalias !53
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jf, i64 40
  store i64 %i.jx, ptr %i.jy, align 8, !tbaa !7
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !20, !noalias !53
  store i64 0, ptr %i.br, align 8, !tbaa !7, !noalias !53
  store i8 0, ptr %i.bq, align 8, !tbaa !16, !noalias !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE6insertEOSD_IS9_S9_E.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i82.us.us
  %.pre197 = load ptr, ptr %i.bp, align 8, !tbaa !20 ; 2 uses
  %i.jz = icmp eq ptr %.pre197, %i.bq
  br i1 %i.jz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf8compiler4rust27GetImportPathToCrateNameMapB5cxx11EPKNS2_7OptionsE:bb.a
  call void @_ZdlPvm(ptr noundef %.pre197, i64 noundef %i.kb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE6insertEOSD_IS9_S9_E.exit, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE6insertEOSD_IS9_S9_E.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60
  %i.kc = load ptr, ptr %15, align 8, !tbaa !20   ; 2 uses
  %i.kd = icmp eq ptr %i.kc, %i.bn
  br i1 %i.kd, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
end_hunk_4
