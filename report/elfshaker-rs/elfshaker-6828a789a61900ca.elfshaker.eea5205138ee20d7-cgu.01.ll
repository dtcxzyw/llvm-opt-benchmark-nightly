Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker-6828a789a61900ca.elfshaker.eea5205138ee20d7-cgu.01?download=true
inline.NumInlined: 1105
inline.NumDeleted: 639
begin_hunk_0_@_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB1h_6marker4SendEL_EEINtB2_12SpecFromIterBU_INtNtNtNtB1h_4iter8adapters10filter_map9FilterMapIB2v_INtNtB4_5drain5DrainINtNtB6_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB1h_6option6OptionINtNtNtB46_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtB1h_6result6ResultTyIBL_hEENtNtNtB1h_2io5error5ErrorENCNvMs0_NtB6S_10repositoryNtB8Q_10Repository11create_pack0INtNtB4_9into_iter8IntoIterB7J_EE0IB7N_IBL_B7M_EBU_EEs_0ENCB5Y_s0_0EE9from_iterB6U_:bb.a
_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB1o_6marker4SendEL_EEINtB2_18SpecFromIterNestedB11_INtNtNtNtB1o_4iter8adapters10filter_map9FilterMapIB2J_INtNtB4_5drain5DrainINtNtB6_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB1o_6option6OptionINtNtNtB4k_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtB1o_6result6ResultTyIBS_hEENtNtNtB1o_2io5error5ErrorENCNvMs0_NtB76_10repositoryNtB94_10Repository11create_pack0INtNtB4_9into_iter8IntoIterB7X_EE0IB81_IBS_B80_EB11_EEs_0ENCB6c_s0_0EE9from_iterB78_.exit: ; preds = %bb.e, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB1e_6marker4SendEL_EEINtB2_10SpecExtendBR_INtNtNtNtB1e_4iter8adapters10filter_map9FilterMapIB2q_INtNtB4_5drain5DrainINtNtB6_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB1e_6option6OptionINtNtNtB41_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtB1e_6result6ResultTyIBI_hEENtNtNtB1e_2io5error5ErrorENCNvMs0_NtB6N_10repositoryNtB8L_10Repository11create_pack0INtNtB4_9into_iter8IntoIterB7E_EE0IB7I_IBI_B7H_EBR_EEs_0ENCB5T_s0_0EE11spec_extendB6P_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB1h_6marker4SendEL_EEINtB2_12SpecFromIterBU_INtNtNtNtB1h_4iter8adapters10filter_map9FilterMapIB2v_INtNtB4_5drain5DrainINtNtB6_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB1h_6option6OptionINtNtNtB46_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB6S_4pack10PackReaderIBL_NtNtB6U_7packidx9FileEntryEEINtNtB1h_6result6ResultNtB7M_12ExtractStatsNtNtB6S_5error5ErrorENCINvMsa_B7M_NtB7M_4Pack15extract_entriesRNtNtB46_4path4PathEs0_0INtNtB4_9into_iter8IntoIterB7J_EE0IB8G_IBL_B8F_EBU_EEs_0ENCB5Y_s0_0EE9from_iterB6U_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !780)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !783
  %i.f = invoke fastcc { ptr, ptr } @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapIBV_INtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1l_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBb_6option6OptionINtNtNtB2m_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB57_4pack10PackReaderINtB1j_3VecNtNtB59_7packidx9FileEntryEEINtNtBb_6result6ResultNtB61_12ExtractStatsNtNtB57_5error5ErrorENCINvMsa_B61_NtB61_4Pack15extract_entriesRNtNtB2m_4path4PathEs0_0INtNtB1j_9into_iter8IntoIterB5Y_EE0IB72_IB6p_B71_EINtNtB1l_5boxed3BoxDNtNtBb_3any3AnyNtNtBb_6marker4SendEL_EEEs_0ENCB4d_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB59_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.c unwind label %bb.b, !noalias !780 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.h = extractvalue { ptr, ptr } %i.f, 0        ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { ptr, ptr } %i.f, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !785
  invoke void @_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtB9_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1f_6thread11join_handle10JoinHandleuEEEEENtNtNtNtB20_4iter6traits8iterator8Iterator9size_hintCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
          to label %bb.g unwind label %bb.f, !noalias !780

bb.e:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !780, !noalias !792
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8, !alias.scope !780, !noalias !792
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8, !alias.scope !780, !noalias !792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !783
  tail call void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtB9_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1f_6thread11join_handle10JoinHandleuEEEEENtNtNtB20_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1), !noalias !780
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB1o_6marker4SendEL_EEINtB2_18SpecFromIterNestedB11_INtNtNtNtB1o_4iter8adapters10filter_map9FilterMapIB2J_INtNtB4_5drain5DrainINtNtB6_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB1o_6option6OptionINtNtNtB4k_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB76_4pack10PackReaderIBS_NtNtB78_7packidx9FileEntryEEINtNtB1o_6result6ResultNtB80_12ExtractStatsNtNtB76_5error5ErrorENCINvMsa_B80_NtB80_4Pack15extract_entriesRNtNtB4k_4path4PathEs0_0INtNtB4_9into_iter8IntoIterB7X_EE0IB8U_IBS_B8T_EB11_EEs_0ENCB6c_s0_0EE9from_iterB78_.exit

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskuiImRAV2ip_9elfshaker(ptr nonnull %i.h, ptr nonnull %i.i) #22
          to label %bb.v unwind label %bb.u, !noalias !780

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !783
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %.noexc.i unwind label %bb.f, !noalias !780

.noexc.i:                                         ; preds = %bb.g
  %i.m = load i64, ptr %i.b, align 8, !range !530, !noalias !783, !noundef !4
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !342, !noalias !783, !noundef !4 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.n, label %bb.h, label %bb.i, !prof !373

bb.h:                                             ; preds = %.noexc.i
  %i.r = load i64, ptr %i.q, align 8, !noalias !783
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #24
          to label %.noexc9.i unwind label %bb.f, !noalias !780

.noexc9.i:                                        ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %.noexc.i
  %i.s = load ptr, ptr %i.q, align 8, !noalias !783, !nonnull !4, !noundef !4 ; 3 uses
  %i.t = icmp ugt i64 %i.p, 3
  call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !783
  store ptr %i.h, ptr %i.s, align 8, !noalias !780
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.i, ptr %i.u, align 8, !noalias !780
  store i64 %i.p, ptr %i.e, align 8, !noalias !783
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !783
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !783
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !783
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !noalias !780
  call void @llvm.experimental.noalias.scope.decl(metadata !793)
  call void @llvm.experimental.noalias.scope.decl(metadata !796)
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB11_6marker4SendEL_EE7reserveCskuiImRAV2ip_9elfshaker.exit.i.i.i, %bb.i
  %i.v = invoke fastcc { ptr, ptr } @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapIBV_INtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1l_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBb_6option6OptionINtNtNtB2m_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB57_4pack10PackReaderINtB1j_3VecNtNtB59_7packidx9FileEntryEEINtNtBb_6result6ResultNtB61_12ExtractStatsNtNtB57_5error5ErrorENCINvMsa_B61_NtB61_4Pack15extract_entriesRNtNtB2m_4path4PathEs0_0INtNtB1j_9into_iter8IntoIterB5Y_EE0IB72_IB6p_B71_EINtNtB1l_5boxed3BoxDNtNtBb_3any3AnyNtNtBb_6marker4SendEL_EEEs_0ENCB4d_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB59_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %bb.m unwind label %bb.l, !noalias !780 ; 2 uses

bb.k:                                             ; preds = %bb.p, %bb.l
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ah, %bb.p ], [ %i.w, %bb.l ]
  invoke void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtB9_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1f_6thread11join_handle10JoinHandleuEEEEENtNtNtB20_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %.body.i unwind label %bb.s, !noalias !780

bb.l:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.j
  %i.x = extractvalue { ptr, ptr } %i.v, 0        ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtB8_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB13_6marker4SendEL_EE16extend_desugaredINtNtNtNtB13_4iter8adapters10filter_map9FilterMapIB2c_INtNtB6_5drain5DrainINtNtB8_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB13_6option6OptionINtNtNtB3N_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB6z_4pack10PackReaderIBx_NtNtB6B_7packidx9FileEntryEEINtNtB13_6result6ResultNtB7t_12ExtractStatsNtNtB6z_5error5ErrorENCINvMsa_B7t_NtB7t_4Pack15extract_entriesRNtNtB3N_4path4PathEs0_0INtNtB6_9into_iter8IntoIterB7q_EE0IB8n_IBx_B8m_EBG_EEs_0ENCB5F_s0_0EEB6B_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = extractvalue { ptr, ptr } %i.v, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  %i.z = load i64, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !799, !noalias !800, !noundef !4 ; 4 uses
  %i.aa = icmp ult i64 %i.z, 576460752303423488
  call void @llvm.assume(i1 %i.aa)
  %i.ab = load i64, ptr %i.e, align 8, !range !340, !alias.scope !799, !noalias !800, !noundef !4
  %i.ac = icmp eq i64 %i.z, %i.ab
  br i1 %i.ac, label %bb.o, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB11_6marker4SendEL_EE7reserveCskuiImRAV2ip_9elfshaker.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !803
  invoke void @_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtB9_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1f_6thread11join_handle10JoinHandleuEEEEENtNtNtNtB20_4iter6traits8iterator8Iterator9size_hintCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d)
          to label %bb.q unwind label %bb.p, !noalias !780

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB11_6marker4SendEL_EE7reserveCskuiImRAV2ip_9elfshaker.exit.i.i.i: ; preds = %bb.r, %bb.q, %bb.n
  %i.ad = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !799, !noalias !800, !nonnull !4, !noundef !4
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.z ; 2 uses
  store ptr %i.x, ptr %i.ae, align 8, !noalias !780
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.y, ptr %i.af, align 8, !noalias !780
  %i.ag = add nuw nsw i64 %i.z, 1
  store i64 %i.ag, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !799, !noalias !800
  br label %bb.j

bb.p:                                             ; preds = %bb.r, %bb.o
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskuiImRAV2ip_9elfshaker(ptr nonnull %i.x, ptr nonnull %i.y) #22
          to label %bb.k unwind label %bb.s, !noalias !780

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !803
  %i.ai = load i64, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !810, !noalias !800, !noundef !4 ; 2 uses
  %i.aj = load i64, ptr %i.e, align 8, !range !340, !alias.scope !810, !noalias !800, !noundef !4
  %i.ak = icmp eq i64 %i.aj, %i.ai
  br i1 %i.ak, label %bb.r, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB11_6marker4SendEL_EE7reserveCskuiImRAV2ip_9elfshaker.exit.i.i.i, !prof !373

bb.r:                                             ; preds = %bb.q
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ai, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB11_6marker4SendEL_EE7reserveCskuiImRAV2ip_9elfshaker.exit.i.i.i unwind label %bb.p, !noalias !780

bb.s:                                             ; preds = %bb.p, %bb.k
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !780
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtB8_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB13_6marker4SendEL_EE16extend_desugaredINtNtNtNtB13_4iter8adapters10filter_map9FilterMapIB2c_INtNtB6_5drain5DrainINtNtB8_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB13_6option6OptionINtNtNtB3N_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB6z_4pack10PackReaderIBx_NtNtB6B_7packidx9FileEntryEEINtNtB13_6result6ResultNtB7t_12ExtractStatsNtNtB6z_5error5ErrorENCINvMsa_B7t_NtB7t_4Pack15extract_entriesRNtNtB3N_4path4PathEs0_0INtNtB6_9into_iter8IntoIterB7q_EE0IB8n_IBx_B8m_EBG_EEs_0ENCB5F_s0_0EEB6B_.exit.i.i: ; preds = %bb.m
  invoke void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtB9_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1f_6thread11join_handle10JoinHandleuEEEEENtNtNtB20_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB1e_6marker4SendEL_EEINtB2_10SpecExtendBR_INtNtNtNtB1e_4iter8adapters10filter_map9FilterMapIB2q_INtNtB4_5drain5DrainINtNtB6_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB1e_6option6OptionINtNtNtB41_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB6N_4pack10PackReaderIBI_NtNtB6P_7packidx9FileEntryEEINtNtB1e_6result6ResultNtB7H_12ExtractStatsNtNtB6N_5error5ErrorENCINvMsa_B7H_NtB7H_4Pack15extract_entriesRNtNtB41_4path4PathEs0_0INtNtB4_9into_iter8IntoIterB7E_EE0IB8B_IBI_B8A_EBR_EEs_0ENCB5T_s0_0EE11spec_extendB6P_.exit.i unwind label %bb.t, !noalias !780

bb.t:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtB8_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB13_6marker4SendEL_EE16extend_desugaredINtNtNtNtB13_4iter8adapters10filter_map9FilterMapIB2c_INtNtB6_5drain5DrainINtNtB8_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB13_6option6OptionINtNtNtB3N_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB6z_4pack10PackReaderIBx_NtNtB6B_7packidx9FileEntryEEINtNtB13_6result6ResultNtB7t_12ExtractStatsNtNtB6z_5error5ErrorENCINvMsa_B7t_NtB7t_4Pack15extract_entriesRNtNtB3N_4path4PathEs0_0INtNtB6_9into_iter8IntoIterB7q_EE0IB8n_IBx_B8m_EBG_EEs_0ENCB5F_s0_0EEB6B_.exit.i.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.t, %bb.k
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.am, %bb.t ], [ %.pn.i.i.i, %bb.k ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #22
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapIBC_INtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1y_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB2z_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB5k_4pack10PackReaderINtB1w_3VecNtNtB5m_7packidx9FileEntryEEINtNtB4_6result6ResultNtB6e_12ExtractStatsNtNtB5k_5error5ErrorENCINvMsa_B6e_NtB6e_4Pack15extract_entriesRNtNtB2z_4path4PathEs0_0INtNtB1w_9into_iter8IntoIterB6b_EE0IB7f_IB6C_B7e_EINtNtB1y_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEs_0ENCB4q_s0_0EEB5m_.exit.i unwind label %bb.u, !noalias !780

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB1e_6marker4SendEL_EEINtB2_10SpecExtendBR_INtNtNtNtB1e_4iter8adapters10filter_map9FilterMapIB2q_INtNtB4_5drain5DrainINtNtB6_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB1e_6option6OptionINtNtNtB41_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB6N_4pack10PackReaderIBI_NtNtB6P_7packidx9FileEntryEEINtNtB1e_6result6ResultNtB7H_12ExtractStatsNtNtB6N_5error5ErrorENCINvMsa_B7H_NtB7H_4Pack15extract_entriesRNtNtB41_4path4PathEs0_0INtNtB4_9into_iter8IntoIterB7E_EE0IB8B_IBI_B8A_EBR_EEs_0ENCB5T_s0_0EE11spec_extendB6P_.exit.i: ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtB8_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB13_6marker4SendEL_EE16extend_desugaredINtNtNtNtB13_4iter8adapters10filter_map9FilterMapIB2c_INtNtB6_5drain5DrainINtNtB8_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB13_6option6OptionINtNtNtB3N_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB6z_4pack10PackReaderIBx_NtNtB6B_7packidx9FileEntryEEINtNtB13_6result6ResultNtB7t_12ExtractStatsNtNtB6z_5error5ErrorENCINvMsa_B7t_NtB7t_4Pack15extract_entriesRNtNtB3N_4path4PathEs0_0INtNtB6_9into_iter8IntoIterB7q_EE0IB8n_IBx_B8m_EBG_EEs_0ENCB5F_s0_0EEB6B_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !783
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !783
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB1o_6marker4SendEL_EEINtB2_18SpecFromIterNestedB11_INtNtNtNtB1o_4iter8adapters10filter_map9FilterMapIB2J_INtNtB4_5drain5DrainINtNtB6_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB1o_6option6OptionINtNtNtB4k_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB76_4pack10PackReaderIBS_NtNtB78_7packidx9FileEntryEEINtNtB1o_6result6ResultNtB80_12ExtractStatsNtNtB76_5error5ErrorENCINvMsa_B80_NtB80_4Pack15extract_entriesRNtNtB4k_4path4PathEs0_0INtNtB4_9into_iter8IntoIterB7X_EE0IB8U_IBS_B8T_EB11_EEs_0ENCB6c_s0_0EE9from_iterB78_.exit

bb.u:                                             ; preds = %bb.v, %.body.i, %bb.f
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !780
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapIBC_INtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1y_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB2z_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB5k_4pack10PackReaderINtB1w_3VecNtNtB5m_7packidx9FileEntryEEINtNtB4_6result6ResultNtB6e_12ExtractStatsNtNtB5k_5error5ErrorENCINvMsa_B6e_NtB6e_4Pack15extract_entriesRNtNtB2z_4path4PathEs0_0INtNtB1w_9into_iter8IntoIterB6b_EE0IB7f_IB6C_B7e_EINtNtB1y_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEs_0ENCB4q_s0_0EEB5m_.exit.i: ; preds = %bb.v, %.body.i
  %.pn16.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %.pn.ph.i, %bb.v ]
  resume { ptr, i32 } %.pn16.i

bb.v:                                             ; preds = %bb.f, %bb.b
  %.pn.ph.i = phi { ptr, i32 } [ %i.g, %bb.b ], [ %i.l, %bb.f ]
  invoke void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainINtNtB9_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1f_6thread11join_handle10JoinHandleuEEEEENtNtNtB20_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapIBC_INtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1y_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB2z_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB5k_4pack10PackReaderINtB1w_3VecNtNtB5m_7packidx9FileEntryEEINtNtB4_6result6ResultNtB6e_12ExtractStatsNtNtB5k_5error5ErrorENCINvMsa_B6e_NtB6e_4Pack15extract_entriesRNtNtB2z_4path4PathEs0_0INtNtB1w_9into_iter8IntoIterB6b_EE0IB7f_IB6C_B7e_EINtNtB1y_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEs_0ENCB4q_s0_0EEB5m_.exit.i unwind label %bb.u, !noalias !780

_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB1o_6marker4SendEL_EEINtB2_18SpecFromIterNestedB11_INtNtNtNtB1o_4iter8adapters10filter_map9FilterMapIB2J_INtNtB4_5drain5DrainINtNtB6_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB1o_6option6OptionINtNtNtB4k_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB76_4pack10PackReaderIBS_NtNtB78_7packidx9FileEntryEEINtNtB1o_6result6ResultNtB80_12ExtractStatsNtNtB76_5error5ErrorENCINvMsa_B80_NtB80_4Pack15extract_entriesRNtNtB4k_4path4PathEs0_0INtNtB4_9into_iter8IntoIterB7X_EE0IB8U_IBS_B8T_EB11_EEs_0ENCB6c_s0_0EE9from_iterB78_.exit: ; preds = %bb.e, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB1e_6marker4SendEL_EEINtB2_10SpecExtendBR_INtNtNtNtB1e_4iter8adapters10filter_map9FilterMapIB2q_INtNtB4_5drain5DrainINtNtB6_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB1e_6option6OptionINtNtNtB41_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB6N_4pack10PackReaderIBI_NtNtB6P_7packidx9FileEntryEEINtNtB1e_6result6ResultNtB7H_12ExtractStatsNtNtB6N_5error5ErrorENCINvMsa_B7H_NtB7H_4Pack15extract_entriesRNtNtB41_4path4PathEs0_0INtNtB4_9into_iter8IntoIterB7E_EE0IB8B_IBI_B8A_EBR_EEs_0ENCB5T_s0_0EE11spec_extendB6P_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtBZ_2io5error5ErrorEEINtB2_12SpecFromIterBU_INtNtNtNtBZ_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBK_EEE9from_iterCskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.513.i.i.i = alloca i64, align 8          ; 3 uses
  %.sroa.7.i.i.i = alloca i64, align 8            ; 3 uses
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [96 x i8], align 8                ; 15 uses
  %.sroa.518.i = alloca i64, align 8              ; 3 uses
  %.sroa.7.i = alloca i64, align 8                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !813)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !816)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !818
  invoke fastcc void @_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB19_3VecINtNtBb_6result6ResultAhj14_NtNtNtBb_2io5error5ErrorEEEENtNtNtB9_6traits8iterator8Iterator4nextCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.c unwind label %bb.b, !noalias !813

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  %i.g = load i8, ptr %i.d, align 8, !range !819, !noalias !818, !noundef !4 ; 3 uses
  %.not.i = icmp eq i8 %i.g, 2
  br i1 %.not.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.510.0.copyload.i = load ptr, ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !818 ; 2 uses
  %.sroa.6.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx13.i, align 8, !noalias !818
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.518.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !820)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !823)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !825)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !828)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !830, !noalias !831, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultAhj14_NtNtNtB5_2io5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskuiImRAV2ip_9elfshaker.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !832, !noalias !835, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val3.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !832, !noalias !835, !nonnull !4, !noundef !4
  %i.l = ptrtoint ptr %.val3.i.i.i.i to i64
  %i.m = ptrtoint ptr %.val.i.i.i.i to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 24
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultAhj14_NtNtNtB5_2io5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskuiImRAV2ip_9elfshaker.exit.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultAhj14_NtNtNtB5_2io5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskuiImRAV2ip_9elfshaker.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.7.0.i.i.i = phi i64 [ %i.o, %bb.e ], [ 0, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !830, !noalias !831, !noundef !4
  %.not53.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not53.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultAhj14_NtNtNtB5_2io5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskuiImRAV2ip_9elfshaker.exit64.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultAhj14_NtNtNtB5_2io5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskuiImRAV2ip_9elfshaker.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i62.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !838, !noalias !841, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val3.i63.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !838, !noalias !841, !nonnull !4, !noundef !4
  %i.t = ptrtoint ptr %.val3.i63.i.i.i to i64
  %i.u = ptrtoint ptr %.val.i62.i.i.i to i64
  %i.v = sub nuw i64 %i.t, %i.u
  %i.w = udiv exact i64 %i.v, 24
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultAhj14_NtNtNtB5_2io5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskuiImRAV2ip_9elfshaker.exit64.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultAhj14_NtNtNtB5_2io5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskuiImRAV2ip_9elfshaker.exit64.i.i.i: ; preds = %bb.f, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultAhj14_NtNtNtB5_2io5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskuiImRAV2ip_9elfshaker.exit.i.i.i
  %.sroa.8.0.i.i.i = phi i64 [ %i.w, %bb.f ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultAhj14_NtNtNtB5_2io5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskuiImRAV2ip_9elfshaker.exit.i.i.i ]
  %i.x = add nuw nsw i64 %.sroa.8.0.i.i.i, %.sroa.7.0.i.i.i ; 2 uses
  %i.y = load ptr, ptr %1, align 8, !alias.scope !830, !noalias !831, !noundef !4
  %.not54.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not54.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultAhj14_NtNtNtB5_2io5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskuiImRAV2ip_9elfshaker.exit64.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !830, !noalias !831, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val61.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !830, !noalias !831, !nonnull !4, !noundef !4
  %i.ab = icmp eq ptr %.val61.i.i.i, %.val.i.i.i
  br i1 %i.ab, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultAhj14_NtNtNtB5_2io5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskuiImRAV2ip_9elfshaker.exit64.i.i.i
  br label %bb.k

bb.i:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !813, !noalias !816
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ac, align 8, !alias.scope !813, !noalias !816
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ad, align 8, !alias.scope !813, !noalias !816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !818
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1), !noalias !813
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtB16_2io5error5ErrorEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB16_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBR_EEE9from_iterCskuiImRAV2ip_9elfshaker.exit

bb.j:                                             ; preds = %bb.l, %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker(i8 %i.g, ptr %.sroa.510.0.copyload.i) #22
          to label %bb.ae unwind label %bb.ac, !noalias !813

bb.k:                                             ; preds = %bb.h, %bb.g
  %.sink79.i.i.sroa.phi.i = phi ptr [ %.sroa.7.i, %bb.h ], [ %.sroa.518.i, %bb.g ]
  %.sink.i.i.i = phi i64 [ %i.x, %bb.h ], [ 0, %bb.g ]
  store i64 %.sink.i.i.i, ptr %.sink79.i.i.sroa.phi.i, align 8, !alias.scope !844, !noalias !845
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.af = tail call i64 @llvm.umax.i64(i64 %i.x, i64 3) ; 2 uses
  %..i.i = add nuw nsw i64 %i.af, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !818
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %..i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc.i unwind label %bb.j, !noalias !813

.noexc.i:                                         ; preds = %bb.k
  %i.ag = load i64, ptr %i.b, align 8, !range !530, !noalias !818, !noundef !4
  %i.ah = trunc nuw i64 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !342, !noalias !818, !noundef !4 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.ah, label %bb.l, label %bb.m, !prof !373

bb.l:                                             ; preds = %.noexc.i
  %i.al = load i64, ptr %i.ak, align 8, !noalias !818
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.aj, i64 %i.al) #24
          to label %.noexc5.i unwind label %bb.j, !noalias !813

.noexc5.i:                                        ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %.noexc.i
  %i.am = load ptr, ptr %i.ak, align 8, !noalias !818, !nonnull !4, !noundef !4 ; 5 uses
  %i.an = icmp ult i64 %i.af, %i.aj
  tail call void @llvm.assume(i1 %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !818
  %.sroa.4.0..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx20.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx.i, i64 7, i1 false), !noalias !813
  store i8 %i.g, ptr %i.am, align 8, !noalias !813
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %.sroa.510.0.copyload.i, ptr %.sroa.521.0..sroa_idx.i, align 8, !noalias !813
  %.sroa.622.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.622.0..sroa_idx.i, align 8, !noalias !813
  store i64 %i.aj, ptr %i.e, align 8, !noalias !818
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.am, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !818
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !818
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !818
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false), !noalias !813
  tail call void @llvm.experimental.noalias.scope.decl(metadata !846)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !849)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !854)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !856
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.56.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  br label %bb.n

bb.n:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtBJ_2io5error5ErrorEE7reserveCskuiImRAV2ip_9elfshaker.exit.i.i.i, %bb.m
  invoke fastcc void @_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB19_3VecINtNtBb_6result6ResultAhj14_NtNtNtBb_2io5error5ErrorEEEENtNtNtB9_6traits8iterator8Iterator4nextCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c)
          to label %bb.q unwind label %bb.p, !noalias !813

bb.o:                                             ; preds = %bb.x, %bb.p
  %.pn.i.i.i = phi { ptr, i32 } [ %i.bs, %bb.x ], [ %i.aw, %bb.p ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c) #22
          to label %.body.i unwind label %bb.z, !noalias !813

bb.p:                                             ; preds = %bb.n
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  %i.ax = load i8, ptr %i.a, align 8, !range !819, !noalias !857, !noundef !4 ; 3 uses
  %.not.i.i6.i = icmp eq i8 %i.ax, 2
  br i1 %.not.i.i6.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtBL_2io5error5ErrorEE16extend_desugaredINtNtNtNtBL_4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterBw_EEECskuiImRAV2ip_9elfshaker.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.56.0.copyload.i.i.i = load ptr, ptr %.sroa.56.0..sroa_idx.i.i.i, align 8, !noalias !857 ; 2 uses
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !857
  %i.ay = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !858, !noalias !859, !noundef !4 ; 5 uses
  %i.az = icmp ult i64 %i.ay, 384307168202282326
  call void @llvm.assume(i1 %i.az)
  %i.ba = load i64, ptr %i.e, align 8, !range !340, !alias.scope !858, !noalias !859, !noundef !4
  %i.bb = icmp eq i64 %i.ay, %i.ba
  br i1 %i.bb, label %bb.s, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtBJ_2io5error5ErrorEE7reserveCskuiImRAV2ip_9elfshaker.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.513.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !860)
  call void @llvm.experimental.noalias.scope.decl(metadata !863)
  call void @llvm.experimental.noalias.scope.decl(metadata !865)
  call void @llvm.experimental.noalias.scope.decl(metadata !868)
  %i.bc = load ptr, ptr %i.ao, align 8, !alias.scope !870, !noalias !871, !noundef !4
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultAhj14_NtNtNtB5_2io5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !872, !noalias !875, !nonnull !4, !noundef !4
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !872, !noalias !875, !nonnull !4, !noundef !4
  %i.bd = ptrtoint ptr %.val3.i.i.i.i.i.i to i64
  %i.be = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %i.bf = sub nuw i64 %i.bd, %i.be
  %i.bg = udiv exact i64 %i.bf, 24
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultAhj14_NtNtNtB5_2io5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultAhj14_NtNtNtB5_2io5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.sroa.7.0.i.i.i.i.i = phi i64 [ %i.bg, %bb.t ], [ 0, %bb.s ]
  %i.bh = load ptr, ptr %i.ar, align 8, !alias.scope !870, !noalias !871, !noundef !4
  %.not53.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not53.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultAhj14_NtNtNtB5_2io5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskuiImRAV2ip_9elfshaker.exit64.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultAhj14_NtNtNtB5_2io5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i
  %.val.i62.i.i.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !878, !noalias !881, !nonnull !4, !noundef !4
  %.val3.i63.i.i.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !878, !noalias !881, !nonnull !4, !noundef !4
  %i.bi = ptrtoint ptr %.val3.i63.i.i.i.i.i to i64
  %i.bj = ptrtoint ptr %.val.i62.i.i.i.i.i to i64
  %i.bk = sub nuw i64 %i.bi, %i.bj
  %i.bl = udiv exact i64 %i.bk, 24
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultAhj14_NtNtNtB5_2io5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskuiImRAV2ip_9elfshaker.exit64.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultAhj14_NtNtNtB5_2io5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskuiImRAV2ip_9elfshaker.exit64.i.i.i.i.i: ; preds = %bb.u, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultAhj14_NtNtNtB5_2io5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i = phi i64 [ %i.bl, %bb.u ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultAhj14_NtNtNtB5_2io5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i ]
  %i.bm = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i ; 2 uses
  %i.bn = load ptr, ptr %i.c, align 8, !alias.scope !870, !noalias !871, !noundef !4
  %.not54.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not54.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultAhj14_NtNtNtB5_2io5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskuiImRAV2ip_9elfshaker.exit64.i.i.i.i.i
  %.val.i.i.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !870, !noalias !871, !nonnull !4, !noundef !4
  %.val61.i.i.i.i.i = load ptr, ptr %i.av, align 8, !alias.scope !870, !noalias !871, !nonnull !4, !noundef !4
  %i.bo = icmp eq ptr %.val61.i.i.i.i.i, %.val.i.i.i.i.i
  br i1 %i.bo, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultAhj14_NtNtNtB5_2io5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskuiImRAV2ip_9elfshaker.exit64.i.i.i.i.i
  br label %bb.y

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtBJ_2io5error5ErrorEE7reserveCskuiImRAV2ip_9elfshaker.exit.i.i.i: ; preds = %bb.y, %bb.r
  %i.bp = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !858, !noalias !859, !nonnull !4, !noundef !4
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %i.ay ; 4 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx.i.i.i, i64 7, i1 false), !noalias !813
  store i8 %i.ax, ptr %i.bq, align 8, !noalias !813
  %.sroa.515.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %.sroa.56.0.copyload.i.i.i, ptr %.sroa.515.0..sroa_idx.i.i.i, align 8, !noalias !813
  %.sroa.616.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %.sroa.616.0..sroa_idx.i.i.i, align 8, !noalias !813
  %i.br = add nuw nsw i64 %i.ay, 1
  store i64 %i.br, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !858, !noalias !859
  br label %bb.n

bb.x:                                             ; preds = %bb.y
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker(i8 %i.ax, ptr %.sroa.56.0.copyload.i.i.i) #22
          to label %bb.o unwind label %bb.z, !noalias !813

bb.y:                                             ; preds = %bb.w, %bb.v
  %.sink79.i.i.sroa.phi.i.i.i = phi ptr [ %.sroa.7.i.i.i, %bb.w ], [ %.sroa.513.i.i.i, %bb.v ]
  %.sink.i.i.i.i.i = phi i64 [ %i.bm, %bb.w ], [ 0, %bb.v ]
  store i64 %.sink.i.i.i.i.i, ptr %.sink79.i.i.sroa.phi.i.i.i, align 8, !alias.scope !884, !noalias !885
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.513.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.bt = add nuw nsw i64 %i.bm, 1
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ay, i64 noundef %i.bt, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtBJ_2io5error5ErrorEE7reserveCskuiImRAV2ip_9elfshaker.exit.i.i.i unwind label %bb.x, !noalias !813

bb.z:                                             ; preds = %bb.x, %bb.o
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !813
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtBL_2io5error5ErrorEE16extend_desugaredINtNtNtNtBL_4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterBw_EEECskuiImRAV2ip_9elfshaker.exit.i.i: ; preds = %bb.q
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c)
          to label %bb.ab unwind label %bb.aa, !noalias !813

bb.aa:                                            ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtBL_2io5error5ErrorEE16extend_desugaredINtNtNtNtBL_4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterBw_EEECskuiImRAV2ip_9elfshaker.exit.i.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.aa, %bb.o
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bv, %bb.aa ], [ %.pn.i.i.i, %bb.o ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #22
          to label %bb.ad unwind label %bb.ac, !noalias !813

bb.ab:                                            ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtBL_2io5error5ErrorEE16extend_desugaredINtNtNtNtBL_4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterBw_EEECskuiImRAV2ip_9elfshaker.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !818
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !818
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtB16_2io5error5ErrorEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB16_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBR_EEE9from_iterCskuiImRAV2ip_9elfshaker.exit

bb.ac:                                            ; preds = %bb.ae, %.body.i, %bb.j
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !813
  unreachable

bb.ad:                                            ; preds = %bb.ae, %.body.i
  %.pn25.i = phi { ptr, i32 } [ %.pn.ph.i, %bb.ae ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %.pn25.i

bb.ae:                                            ; preds = %bb.j, %bb.b
  %.pn.ph.i = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.ae, %bb.j ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1) #22
          to label %bb.ad unwind label %bb.ac, !noalias !813

_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtB16_2io5error5ErrorEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB16_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBR_EEE9from_iterCskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEINtB2_12SpecFromIterBU_INtNtNtNtBZ_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBK_EEE9from_iterB2b_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i.i = alloca i64, align 8            ; 3 uses
  %.sroa.7.i.i.i = alloca i64, align 8            ; 3 uses
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [96 x i8], align 8                ; 15 uses
  %.sroa.5.i = alloca i64, align 8                ; 3 uses
  %.sroa.7.i = alloca i64, align 8                ; 3 uses
  %i.e = alloca [56 x i8], align 8                ; 4 uses
  %i.f = alloca [56 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !886)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !889)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !891
  invoke fastcc void @_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB19_3VecINtNtBb_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENtNtNtB9_6traits8iterator8Iterator4nextB34_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.c unwind label %bb.b, !noalias !886

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.f, align 8, !range !5, !noalias !891, !noundef !4
  %.not.i = icmp eq i64 %i.i, -3
  br i1 %.not.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !891
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !892)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !895)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !897)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !900)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !902, !noalias !903, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB2y_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !904, !noalias !907, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val3.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !904, !noalias !907, !nonnull !4, !noundef !4
  %i.n = ptrtoint ptr %.val3.i.i.i.i to i64
  %i.o = ptrtoint ptr %.val.i.i.i.i to i64
  %i.p = sub nuw i64 %i.n, %i.o
  %i.q = udiv exact i64 %i.p, 56
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB2y_.exit.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB2y_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.7.0.i.i.i = phi i64 [ %i.q, %bb.e ], [ 0, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !902, !noalias !903, !noundef !4
  %.not53.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not53.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB2y_.exit64.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB2y_.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i62.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !910, !noalias !913, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val3.i63.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !910, !noalias !913, !nonnull !4, !noundef !4
  %i.v = ptrtoint ptr %.val3.i63.i.i.i to i64
  %i.w = ptrtoint ptr %.val.i62.i.i.i to i64
  %i.x = sub nuw i64 %i.v, %i.w
  %i.y = udiv exact i64 %i.x, 56
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB2y_.exit64.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB2y_.exit64.i.i.i: ; preds = %bb.f, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB2y_.exit.i.i.i
  %.sroa.8.0.i.i.i = phi i64 [ %i.y, %bb.f ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB2y_.exit.i.i.i ]
  %i.z = add nuw nsw i64 %.sroa.8.0.i.i.i, %.sroa.7.0.i.i.i ; 2 uses
  %i.aa = load ptr, ptr %1, align 8, !alias.scope !902, !noalias !903, !noundef !4
  %.not54.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not54.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB2y_.exit64.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !902, !noalias !903, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val61.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !902, !noalias !903, !nonnull !4, !noundef !4
  %i.ad = icmp eq ptr %.val61.i.i.i, %.val.i.i.i
  br i1 %i.ad, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB2y_.exit64.i.i.i
  br label %bb.k

bb.i:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !886, !noalias !889
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ae, align 8, !alias.scope !886, !noalias !889
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.af, align 8, !alias.scope !886, !noalias !889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !891
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEB3h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1), !noalias !886
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB16_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBR_EEE9from_iterB2i_.exit

bb.j:                                             ; preds = %bb.l, %bb.k
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEB1C_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.e) #22
          to label %bb.ad unwind label %bb.ab, !noalias !886

bb.k:                                             ; preds = %bb.h, %bb.g
  %.sink79.i.i.sroa.phi.i = phi ptr [ %.sroa.7.i, %bb.h ], [ %.sroa.5.i, %bb.g ]
  %.sink.i.i.i = phi i64 [ %i.z, %bb.h ], [ 0, %bb.g ]
  store i64 %.sink.i.i.i, ptr %.sink79.i.i.sroa.phi.i, align 8, !alias.scope !916, !noalias !917
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.ah = tail call i64 @llvm.umax.i64(i64 %i.z, i64 3) ; 2 uses
  %..i.i = add nuw nsw i64 %i.ah, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !891
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %..i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56)
          to label %.noexc.i unwind label %bb.j, !noalias !886

.noexc.i:                                         ; preds = %bb.k
  %i.ai = load i64, ptr %i.c, align 8, !range !530, !noalias !891, !noundef !4
  %i.aj = trunc nuw i64 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !range !342, !noalias !891, !noundef !4 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.aj, label %bb.l, label %bb.m, !prof !373

bb.l:                                             ; preds = %.noexc.i
  %i.an = load i64, ptr %i.am, align 8, !noalias !891
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.al, i64 %i.an) #24
          to label %.noexc4.i unwind label %bb.j, !noalias !886

.noexc4.i:                                        ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %.noexc.i
  %i.ao = load ptr, ptr %i.am, align 8, !noalias !891, !nonnull !4, !noundef !4 ; 2 uses
  %i.ap = icmp ult i64 %i.ah, %i.al
  tail call void @llvm.assume(i1 %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ao, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !886
  store i64 %i.al, ptr %i.g, align 8, !noalias !891
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.ao, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !891
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false), !noalias !886
  tail call void @llvm.experimental.noalias.scope.decl(metadata !918)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !926)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.n

bb.n:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEE7reserveB1V_.exit.i.i.i, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !928
  invoke fastcc void @_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB19_3VecINtNtBb_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENtNtNtB9_6traits8iterator8Iterator4nextB34_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d)
          to label %bb.q unwind label %bb.p, !noalias !886

bb.o:                                             ; preds = %bb.x, %bb.p
  %.pn.i.i.i = phi { ptr, i32 } [ %i.bu, %bb.x ], [ %i.ay, %bb.p ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEB3h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d) #22
          to label %.body.i unwind label %bb.z, !noalias !886

bb.p:                                             ; preds = %bb.n
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  %i.az = load i64, ptr %i.b, align 8, !range !5, !noalias !928, !noundef !4
  %.not.i.i5.i = icmp eq i64 %i.az, -3
  br i1 %.not.i.i5.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEE16extend_desugaredINtNtNtNtBL_4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterBw_EEEB1X_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !928
  %i.ba = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !929, !noalias !930, !noundef !4 ; 5 uses
  %i.bb = icmp ult i64 %i.ba, 164703072086692426
  call void @llvm.assume(i1 %i.bb)
  %i.bc = load i64, ptr %i.g, align 8, !range !340, !alias.scope !929, !noalias !930, !noundef !4
  %i.bd = icmp eq i64 %i.ba, %i.bc
  br i1 %i.bd, label %bb.s, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEE7reserveB1V_.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !931)
  call void @llvm.experimental.noalias.scope.decl(metadata !934)
  call void @llvm.experimental.noalias.scope.decl(metadata !936)
  call void @llvm.experimental.noalias.scope.decl(metadata !939)
  %i.be = load ptr, ptr %i.aq, align 8, !alias.scope !941, !noalias !942, !noundef !4
  %.not.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB2y_.exit.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !943, !noalias !946, !nonnull !4, !noundef !4
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !943, !noalias !946, !nonnull !4, !noundef !4
  %i.bf = ptrtoint ptr %.val3.i.i.i.i.i.i to i64
  %i.bg = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %i.bh = sub nuw i64 %i.bf, %i.bg
  %i.bi = udiv exact i64 %i.bh, 56
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB2y_.exit.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB2y_.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.sroa.7.0.i.i.i.i.i = phi i64 [ %i.bi, %bb.t ], [ 0, %bb.s ]
  %i.bj = load ptr, ptr %i.at, align 8, !alias.scope !941, !noalias !942, !noundef !4
  %.not53.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not53.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB2y_.exit64.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB2y_.exit.i.i.i.i.i
  %.val.i62.i.i.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !949, !noalias !952, !nonnull !4, !noundef !4
  %.val3.i63.i.i.i.i.i = load ptr, ptr %i.av, align 8, !alias.scope !949, !noalias !952, !nonnull !4, !noundef !4
  %i.bk = ptrtoint ptr %.val3.i63.i.i.i.i.i to i64
  %i.bl = ptrtoint ptr %.val.i62.i.i.i.i.i to i64
  %i.bm = sub nuw i64 %i.bk, %i.bl
  %i.bn = udiv exact i64 %i.bm, 56
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB2y_.exit64.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB2y_.exit64.i.i.i.i.i: ; preds = %bb.u, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB2y_.exit.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i = phi i64 [ %i.bn, %bb.u ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB2y_.exit.i.i.i.i.i ]
  %i.bo = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i ; 2 uses
  %i.bp = load ptr, ptr %i.d, align 8, !alias.scope !941, !noalias !942, !noundef !4
  %.not54.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not54.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB2y_.exit64.i.i.i.i.i
  %.val.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !941, !noalias !942, !nonnull !4, !noundef !4
  %.val61.i.i.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !941, !noalias !942, !nonnull !4, !noundef !4
  %i.bq = icmp eq ptr %.val61.i.i.i.i.i, %.val.i.i.i.i.i
  br i1 %i.bq, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB2y_.exit64.i.i.i.i.i
  br label %bb.y

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEE7reserveB1V_.exit.i.i.i: ; preds = %bb.y, %bb.r
  %i.br = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !929, !noalias !930, !nonnull !4, !noundef !4
  %i.bs = getelementptr inbounds nuw [56 x i8], ptr %i.br, i64 %i.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bs, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !886
  %i.bt = add nuw nsw i64 %i.ba, 1
  store i64 %i.bt, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !929, !noalias !930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !928
  br label %bb.n

bb.x:                                             ; preds = %bb.y
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEB1C_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a) #22
          to label %bb.o unwind label %bb.z, !noalias !886

bb.y:                                             ; preds = %bb.w, %bb.v
  %.sink79.i.i.sroa.phi.i.i.i = phi ptr [ %.sroa.7.i.i.i, %bb.w ], [ %.sroa.5.i.i.i, %bb.v ]
  %.sink.i.i.i.i.i = phi i64 [ %i.bo, %bb.w ], [ 0, %bb.v ]
  store i64 %.sink.i.i.i.i.i, ptr %.sink79.i.i.sroa.phi.i.i.i, align 8, !alias.scope !955, !noalias !956
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.bv = add nuw nsw i64 %i.bo, 1
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.ba, i64 noundef %i.bv, i64 noundef 8, i64 noundef 56)
          to label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEE7reserveB1V_.exit.i.i.i unwind label %bb.x, !noalias !886

bb.z:                                             ; preds = %bb.x, %bb.o
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !886
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEE16extend_desugaredINtNtNtNtBL_4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterBw_EEEB1X_.exit.i.i: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !928
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEB3h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d)
          to label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEINtB2_10SpecExtendBR_INtNtNtNtBW_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBH_EEE11spec_extendB28_.exit.i unwind label %bb.aa, !noalias !886

bb.aa:                                            ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEE16extend_desugaredINtNtNtNtBL_4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterBw_EEEB1X_.exit.i.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.aa, %bb.o
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bx, %bb.aa ], [ %.pn.i.i.i, %bb.o ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEB29_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #22
          to label %bb.ac unwind label %bb.ab, !noalias !886

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEINtB2_10SpecExtendBR_INtNtNtNtBW_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBH_EEE11spec_extendB28_.exit.i: ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEE16extend_desugaredINtNtNtNtBL_4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterBw_EEEB1X_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !891
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB16_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBR_EEE9from_iterB2i_.exit

bb.ab:                                            ; preds = %bb.ad, %.body.i, %bb.j
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !886
  unreachable

bb.ac:                                            ; preds = %bb.ad, %.body.i
  %.pn10.i = phi { ptr, i32 } [ %.pn.ph.i, %bb.ad ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %.pn10.i

bb.ad:                                            ; preds = %bb.j, %bb.b
  %.pn.ph.i = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.ag, %bb.j ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEB3h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1) #22
          to label %bb.ac unwind label %bb.ab, !noalias !886

_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB16_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBR_EEE9from_iterB2i_.exit: ; preds = %bb.i, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEINtB2_10SpecExtendBR_INtNtNtNtBW_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBH_EEE11spec_extendB28_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1A_5error5ErrorEEINtB2_12SpecFromIterBU_INtNtNtNtBZ_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBK_EEE9from_iterB1C_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i.i = alloca i64, align 8            ; 3 uses
  %.sroa.7.i.i.i = alloca i64, align 8            ; 3 uses
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [96 x i8], align 8                ; 15 uses
  %.sroa.5.i = alloca i64, align 8                ; 3 uses
  %.sroa.7.i = alloca i64, align 8                ; 3 uses
  %i.e = alloca [56 x i8], align 8                ; 5 uses
  %i.f = alloca [56 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !957)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !960)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !962
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !962
  invoke fastcc void @_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB19_3VecINtNtBb_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2t_5error5ErrorEEEENtNtNtB9_6traits8iterator8Iterator4nextB2v_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.c unwind label %bb.b, !noalias !957

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.f, align 8, !range !5, !noalias !962, !noundef !4
  %.not.i = icmp eq i64 %i.i, -3
  br i1 %.not.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !962
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !962
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !963)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !966)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !971)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !973, !noalias !974, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !975, !noalias !978, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val3.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !975, !noalias !978, !nonnull !4, !noundef !4
  %i.n = ptrtoint ptr %.val3.i.i.i.i to i64
  %i.o = ptrtoint ptr %.val.i.i.i.i to i64
  %i.p = sub nuw i64 %i.n, %i.o
  %i.q = udiv exact i64 %i.p, 56
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.7.0.i.i.i = phi i64 [ %i.q, %bb.e ], [ 0, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !973, !noalias !974, !noundef !4
  %.not53.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not53.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1Z_.exit64.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i62.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !981, !noalias !984, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val3.i63.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !981, !noalias !984, !nonnull !4, !noundef !4
  %i.v = ptrtoint ptr %.val3.i63.i.i.i to i64
  %i.w = ptrtoint ptr %.val.i62.i.i.i to i64
  %i.x = sub nuw i64 %i.v, %i.w
  %i.y = udiv exact i64 %i.x, 56
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1Z_.exit64.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1Z_.exit64.i.i.i: ; preds = %bb.f, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i
  %.sroa.8.0.i.i.i = phi i64 [ %i.y, %bb.f ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i ]
  %i.z = add nuw nsw i64 %.sroa.8.0.i.i.i, %.sroa.7.0.i.i.i ; 2 uses
  %i.aa = load ptr, ptr %1, align 8, !alias.scope !973, !noalias !974, !noundef !4
  %.not54.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not54.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1Z_.exit64.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !973, !noalias !974, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val61.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !973, !noalias !974, !nonnull !4, !noundef !4
  %i.ad = icmp eq ptr %.val61.i.i.i, %.val.i.i.i
  br i1 %i.ad, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1Z_.exit64.i.i.i
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !957, !noalias !960
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ae, align 8, !alias.scope !957, !noalias !960
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.af, align 8, !alias.scope !957, !noalias !960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !962
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2G_5error5ErrorEEEEEB2I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1), !noalias !957
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1H_5error5ErrorEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB16_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBR_EEE9from_iterB1J_.exit

bb.j:                                             ; preds = %bb.m, %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load i64, ptr %i.e, align 8, !range !18, !alias.scope !987, !noalias !962, !noundef !4
  %i.ai = icmp eq i64 %i.ah, -2
  br i1 %i.ai, label %bb.ae, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %bb.ae unwind label %bb.ac, !noalias !957

bb.l:                                             ; preds = %bb.h, %bb.g
  %.sink79.i.i.sroa.phi.i = phi ptr [ %.sroa.7.i, %bb.h ], [ %.sroa.5.i, %bb.g ]
  %.sink.i.i.i = phi i64 [ %i.z, %bb.h ], [ 0, %bb.g ]
  store i64 %.sink.i.i.i, ptr %.sink79.i.i.sroa.phi.i, align 8, !alias.scope !990, !noalias !991
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.aj = tail call i64 @llvm.umax.i64(i64 %i.z, i64 3) ; 2 uses
  %..i.i = add nuw nsw i64 %i.aj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !962
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %..i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56)
          to label %.noexc4.i unwind label %bb.j, !noalias !957

.noexc4.i:                                        ; preds = %bb.l
  %i.ak = load i64, ptr %i.c, align 8, !range !530, !noalias !962, !noundef !4
  %i.al = trunc nuw i64 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !342, !noalias !962, !noundef !4 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.al, label %bb.m, label %bb.n, !prof !373

bb.m:                                             ; preds = %.noexc4.i
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !962
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.an, i64 %i.ap) #24
          to label %.noexc5.i unwind label %bb.j, !noalias !957

.noexc5.i:                                        ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %.noexc4.i
  %i.aq = load ptr, ptr %i.ao, align 8, !noalias !962, !nonnull !4, !noundef !4 ; 2 uses
  %i.ar = icmp ult i64 %i.aj, %i.an
  tail call void @llvm.assume(i1 %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !962
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aq, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !957
  store i64 %i.an, ptr %i.g, align 8, !noalias !962
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.aq, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !962
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !962
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !962
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false), !noalias !957
  tail call void @llvm.experimental.noalias.scope.decl(metadata !992)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.o

bb.o:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1k_5error5ErrorEE7reserveB1m_.exit.i.i.i, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1002
  invoke fastcc void @_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB19_3VecINtNtBb_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2t_5error5ErrorEEEENtNtNtB9_6traits8iterator8Iterator4nextB2v_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d)
          to label %bb.q unwind label %bb.p, !noalias !957

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB11_5error5ErrorEEB13_.exit.i.i.i: ; preds = %bb.y, %bb.x, %bb.p
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ba, %bb.p ], [ %i.bw, %bb.y ], [ %i.bw, %bb.x ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2G_5error5ErrorEEEEEB2I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d) #22
          to label %.body.i unwind label %bb.aa, !noalias !957

bb.p:                                             ; preds = %bb.o
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB11_5error5ErrorEEB13_.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bb = load i64, ptr %i.b, align 8, !range !5, !noalias !1002, !noundef !4
  %.not.i.i6.i = icmp eq i64 %i.bb, -3
  br i1 %.not.i.i6.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1m_5error5ErrorEE16extend_desugaredINtNtNtNtBL_4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterBw_EEEB1o_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1002
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !1002
  %i.bc = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1003, !noalias !1004, !noundef !4 ; 5 uses
  %i.bd = icmp ult i64 %i.bc, 164703072086692426
  call void @llvm.assume(i1 %i.bd)
  %i.be = load i64, ptr %i.g, align 8, !range !340, !alias.scope !1003, !noalias !1004, !noundef !4
  %i.bf = icmp eq i64 %i.bc, %i.be
  br i1 %i.bf, label %bb.s, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1k_5error5ErrorEE7reserveB1m_.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  call void @llvm.experimental.noalias.scope.decl(metadata !1013)
  %i.bg = load ptr, ptr %i.as, align 8, !alias.scope !1015, !noalias !1016, !noundef !4
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val.i.i.i.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !1017, !noalias !1020, !nonnull !4, !noundef !4
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !1017, !noalias !1020, !nonnull !4, !noundef !4
  %i.bh = ptrtoint ptr %.val3.i.i.i.i.i.i to i64
  %i.bi = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %i.bj = sub nuw i64 %i.bh, %i.bi
  %i.bk = udiv exact i64 %i.bj, 56
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.sroa.7.0.i.i.i.i.i = phi i64 [ %i.bk, %bb.t ], [ 0, %bb.s ]
  %i.bl = load ptr, ptr %i.av, align 8, !alias.scope !1015, !noalias !1016, !noundef !4
  %.not53.i.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not53.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1Z_.exit64.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i.i.i
  %.val.i62.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !1023, !noalias !1026, !nonnull !4, !noundef !4
  %.val3.i63.i.i.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !1023, !noalias !1026, !nonnull !4, !noundef !4
  %i.bm = ptrtoint ptr %.val3.i63.i.i.i.i.i to i64
  %i.bn = ptrtoint ptr %.val.i62.i.i.i.i.i to i64
  %i.bo = sub nuw i64 %i.bm, %i.bn
  %i.bp = udiv exact i64 %i.bo, 56
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1Z_.exit64.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1Z_.exit64.i.i.i.i.i: ; preds = %bb.u, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i = phi i64 [ %i.bp, %bb.u ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i.i.i ]
  %i.bq = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i ; 2 uses
  %i.br = load ptr, ptr %i.d, align 8, !alias.scope !1015, !noalias !1016, !noundef !4
  %.not54.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not54.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1Z_.exit64.i.i.i.i.i
  %.val.i.i.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !1015, !noalias !1016, !nonnull !4, !noundef !4
  %.val61.i.i.i.i.i = load ptr, ptr %i.az, align 8, !alias.scope !1015, !noalias !1016, !nonnull !4, !noundef !4
  %i.bs = icmp eq ptr %.val61.i.i.i.i.i, %.val.i.i.i.i.i
  br i1 %i.bs, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1X_5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1Z_.exit64.i.i.i.i.i
  br label %bb.z

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1k_5error5ErrorEE7reserveB1m_.exit.i.i.i: ; preds = %bb.z, %bb.r
  %i.bt = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1003, !noalias !1004, !nonnull !4, !noundef !4
  %i.bu = getelementptr inbounds nuw [56 x i8], ptr %i.bt, i64 %i.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bu, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !957
  %i.bv = add nuw nsw i64 %i.bc, 1
  store i64 %i.bv, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1003, !noalias !1004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1002
  br label %bb.o

bb.x:                                             ; preds = %bb.z
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bx = load i64, ptr %i.a, align 8, !range !18, !alias.scope !1029, !noalias !1002, !noundef !4
  %i.by = icmp eq i64 %i.bx, -2
  br i1 %i.by, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB11_5error5ErrorEEB13_.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB11_5error5ErrorEEB13_.exit.i.i.i unwind label %bb.aa, !noalias !957

bb.z:                                             ; preds = %bb.w, %bb.v
  %.sink79.i.i.sroa.phi.i.i.i = phi ptr [ %.sroa.7.i.i.i, %bb.w ], [ %.sroa.5.i.i.i, %bb.v ]
  %.sink.i.i.i.i.i = phi i64 [ %i.bq, %bb.w ], [ 0, %bb.v ]
  store i64 %.sink.i.i.i.i.i, ptr %.sink79.i.i.sroa.phi.i.i.i, align 8, !alias.scope !1032, !noalias !1033
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.bz = add nuw nsw i64 %i.bq, 1
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.bc, i64 noundef range(i64 1, 0) %i.bz, i64 noundef 8, i64 noundef 56)
          to label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1k_5error5ErrorEE7reserveB1m_.exit.i.i.i unwind label %bb.x, !noalias !957

bb.aa:                                            ; preds = %bb.y, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB11_5error5ErrorEEB13_.exit.i.i.i
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !957
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1m_5error5ErrorEE16extend_desugaredINtNtNtNtBL_4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterBw_EEEB1o_.exit.i.i: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1002
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2G_5error5ErrorEEEEEB2I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d)
          to label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1x_5error5ErrorEEINtB2_10SpecExtendBR_INtNtNtNtBW_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBH_EEE11spec_extendB1z_.exit.i unwind label %bb.ab, !noalias !957

bb.ab:                                            ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1m_5error5ErrorEE16extend_desugaredINtNtNtNtBL_4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterBw_EEEB1o_.exit.i.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ab, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB11_5error5ErrorEEB13_.exit.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cb, %bb.ab ], [ %.pn.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB11_5error5ErrorEEB13_.exit.i.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1y_5error5ErrorEEEB1A_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #22
          to label %bb.ad unwind label %bb.ac, !noalias !957

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1x_5error5ErrorEEINtB2_10SpecExtendBR_INtNtNtNtBW_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBH_EEE11spec_extendB1z_.exit.i: ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1m_5error5ErrorEE16extend_desugaredINtNtNtNtBL_4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterBw_EEEB1o_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !962
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !962
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1H_5error5ErrorEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB16_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBR_EEE9from_iterB1J_.exit

bb.ac:                                            ; preds = %bb.ae, %.body.i, %bb.k
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !957
  unreachable

bb.ad:                                            ; preds = %bb.ae, %.body.i
  %.pn11.i = phi { ptr, i32 } [ %.pn.ph.i, %bb.ae ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %.pn11.i

bb.ae:                                            ; preds = %bb.k, %bb.j, %bb.b
  %.pn.ph.i = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.ag, %bb.k ], [ %i.ag, %bb.j ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2G_5error5ErrorEEEEEB2I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1) #22
          to label %bb.ad unwind label %bb.ac, !noalias !957

_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1H_5error5ErrorEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB16_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBR_EEE9from_iterB1J_.exit: ; preds = %bb.i, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB1x_5error5ErrorEEINtB2_10SpecExtendBR_INtNtNtNtBW_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBH_EEE11spec_extendB1z_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultTyIBL_hEENtNtNtBZ_2io5error5ErrorEEINtB2_12SpecFromIterBU_INtNtNtNtBZ_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBK_EEE9from_iterCskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i.i = alloca i64, align 8            ; 3 uses
  %.sroa.7.i.i.i = alloca i64, align 8            ; 3 uses
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [96 x i8], align 8                ; 15 uses
  %.sroa.5.i = alloca i64, align 8                ; 3 uses
  %.sroa.7.i = alloca i64, align 8                ; 3 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1039
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1039
  invoke fastcc void @_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB19_3VecINtNtBb_6result6ResultTyIB1T_hEENtNtNtBb_2io5error5ErrorEEEENtNtNtB9_6traits8iterator8Iterator4nextCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.c unwind label %bb.b, !noalias !1034

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !6, !noalias !1039, !noundef !4
  %.not.i = icmp eq i64 %i.j, -2
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1039
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !1039
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1048)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1050, !noalias !1051, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !1050, !noalias !1051, !nonnull !4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val3.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !1050, !noalias !1051, !nonnull !4
  %i.o = ptrtoint ptr %.val3.i.i.i.i to i64
  %i.p = ptrtoint ptr %.val.i.i.i.i to i64
  %i.q = sub nuw i64 %i.o, %i.p
  %i.r = lshr exact i64 %i.q, 5
  %.sroa.7.0.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.r
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !1050, !noalias !1051, !noundef !4
  %.not53.i.i.i = icmp eq ptr %i.t, null
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i62.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !1050, !noalias !1051, !nonnull !4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val3.i63.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !1050, !noalias !1051, !nonnull !4
  %i.w = ptrtoint ptr %.val3.i63.i.i.i to i64
  %i.x = ptrtoint ptr %.val.i62.i.i.i to i64
  %i.y = sub nuw i64 %i.w, %i.x
  %i.z = lshr exact i64 %i.y, 5
  %.sroa.8.0.i.i.i = select i1 %.not53.i.i.i, i64 0, i64 %i.z
  %i.aa = add nuw nsw i64 %.sroa.8.0.i.i.i, %.sroa.7.0.i.i.i ; 2 uses
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !1050, !noalias !1051, !noundef !4
  %.not54.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not54.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !1050, !noalias !1051, !nonnull !4, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val61.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !1050, !noalias !1051, !nonnull !4, !noundef !4
  %i.ae = icmp eq ptr %.val61.i.i.i, %.val.i.i.i
  br i1 %i.ae, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !1034, !noalias !1037
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.af, align 8, !alias.scope !1034, !noalias !1037
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ag, align 8, !alias.scope !1034, !noalias !1037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1039
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1039
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecINtNtB4_6result6ResultTyIB26_hEENtNtNtB4_2io5error5ErrorEEEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1), !noalias !1034
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultTyIBS_hEENtNtNtB16_2io5error5ErrorEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB16_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBR_EEE9from_iterCskuiImRAV2ip_9elfshaker.exit

bb.h:                                             ; preds = %bb.j, %bb.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e) #22
          to label %bb.z unwind label %bb.x, !noalias !1034

bb.i:                                             ; preds = %bb.f, %bb.e
  %.sink79.i.i.sroa.phi.i = phi ptr [ %.sroa.7.i, %bb.f ], [ %.sroa.5.i, %bb.e ]
  %.sink.i.i.i = phi i64 [ %i.aa, %bb.f ], [ 0, %bb.e ]
  store i64 %.sink.i.i.i, ptr %.sink79.i.i.sroa.phi.i, align 8, !alias.scope !1052, !noalias !1053
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.ai = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 3) ; 2 uses
  %..i.i = add nuw nsw i64 %i.ai, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1039
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %..i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32)
          to label %.noexc.i unwind label %bb.h, !noalias !1034

.noexc.i:                                         ; preds = %bb.i
  %i.aj = load i64, ptr %i.c, align 8, !range !530, !noalias !1039, !noundef !4
  %i.ak = trunc nuw i64 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !342, !noalias !1039, !noundef !4 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.ak, label %bb.j, label %bb.k, !prof !373

bb.j:                                             ; preds = %.noexc.i
  %i.ao = load i64, ptr %i.an, align 8, !noalias !1039
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.am, i64 %i.ao) #24
          to label %.noexc4.i unwind label %bb.h, !noalias !1034

.noexc4.i:                                        ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %.noexc.i
  %i.ap = load ptr, ptr %i.an, align 8, !noalias !1039, !nonnull !4, !noundef !4 ; 2 uses
  %i.aq = icmp ult i64 %i.ai, %i.am
  tail call void @llvm.assume(i1 %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1039
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !1034
  store i64 %i.am, ptr %i.g, align 8, !noalias !1039
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.ap, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1039
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !1039
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1039
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1039
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1039
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false), !noalias !1034
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.l

bb.l:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultTyIBv_hEENtNtNtBJ_2io5error5ErrorEE7reserveCskuiImRAV2ip_9elfshaker.exit.i.i.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1064
  invoke fastcc void @_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB19_3VecINtNtBb_6result6ResultTyIB1T_hEENtNtNtBb_2io5error5ErrorEEEENtNtNtB9_6traits8iterator8Iterator4nextCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d)
          to label %bb.o unwind label %bb.n, !noalias !1034

bb.m:                                             ; preds = %bb.t, %bb.n
  %.pn.i.i.i = phi { ptr, i32 } [ %i.bw, %bb.t ], [ %i.ba, %bb.n ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecINtNtB4_6result6ResultTyIB26_hEENtNtNtB4_2io5error5ErrorEEEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d) #22
          to label %.body.i unwind label %bb.v, !noalias !1034

bb.n:                                             ; preds = %bb.l
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.o:                                             ; preds = %bb.l
  %i.bb = load i64, ptr %i.ar, align 8, !range !6, !noalias !1064, !noundef !4
  %.not.i.i5.i = icmp eq i64 %i.bb, -2
  br i1 %.not.i.i5.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtCs3oUPovFnLWP_4core6result6ResultTyIBx_hEENtNtNtBL_2io5error5ErrorEE16extend_desugaredINtNtNtNtBL_4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterBw_EEECskuiImRAV2ip_9elfshaker.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1064
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !1064
  %i.bc = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1065, !noalias !1066, !noundef !4 ; 5 uses
  %i.bd = icmp ult i64 %i.bc, 288230376151711744
  call void @llvm.assume(i1 %i.bd)
  %i.be = load i64, ptr %i.g, align 8, !range !340, !alias.scope !1065, !noalias !1066, !noundef !4
  %i.bf = icmp eq i64 %i.bc, %i.be
  br i1 %i.bf, label %bb.q, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultTyIBv_hEENtNtNtBJ_2io5error5ErrorEE7reserveCskuiImRAV2ip_9elfshaker.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1067)
  call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  %i.bg = load ptr, ptr %i.as, align 8, !alias.scope !1077, !noalias !1078, !noundef !4
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, null
  %.val.i.i.i.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !1077, !noalias !1078, !nonnull !4
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !1077, !noalias !1078, !nonnull !4
  %i.bh = ptrtoint ptr %.val3.i.i.i.i.i.i to i64
  %i.bi = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %i.bj = sub nuw i64 %i.bh, %i.bi
  %i.bk = lshr exact i64 %i.bj, 5
  %.sroa.7.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 0, i64 %i.bk
  %i.bl = load ptr, ptr %i.av, align 8, !alias.scope !1077, !noalias !1078, !noundef !4
  %.not53.i.i.i.i.i = icmp eq ptr %i.bl, null
  %.val.i62.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !1077, !noalias !1078, !nonnull !4
  %.val3.i63.i.i.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !1077, !noalias !1078, !nonnull !4
  %i.bm = ptrtoint ptr %.val3.i63.i.i.i.i.i to i64
  %i.bn = ptrtoint ptr %.val.i62.i.i.i.i.i to i64
  %i.bo = sub nuw i64 %i.bm, %i.bn
  %i.bp = lshr exact i64 %i.bo, 5
  %.sroa.8.0.i.i.i.i.i = select i1 %.not53.i.i.i.i.i, i64 0, i64 %i.bp
  %i.bq = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i ; 2 uses
  %i.br = load ptr, ptr %i.d, align 8, !alias.scope !1077, !noalias !1078, !noundef !4
  %.not54.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not54.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val.i.i.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !1077, !noalias !1078, !nonnull !4, !noundef !4
  %.val61.i.i.i.i.i = load ptr, ptr %i.az, align 8, !alias.scope !1077, !noalias !1078, !nonnull !4, !noundef !4
  %i.bs = icmp eq ptr %.val61.i.i.i.i.i, %.val.i.i.i.i.i
  br i1 %i.bs, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r, %bb.q
  br label %bb.u

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultTyIBv_hEENtNtNtBJ_2io5error5ErrorEE7reserveCskuiImRAV2ip_9elfshaker.exit.i.i.i: ; preds = %bb.u, %bb.p
  %i.bt = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1065, !noalias !1066, !nonnull !4, !noundef !4
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %i.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !1034
  %i.bv = add nuw nsw i64 %i.bc, 1
  store i64 %i.bv, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1065, !noalias !1066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1064
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1064
  br label %bb.l

bb.t:                                             ; preds = %bb.u
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #22
          to label %bb.m unwind label %bb.v, !noalias !1034

bb.u:                                             ; preds = %bb.s, %bb.r
  %.sink79.i.i.sroa.phi.i.i.i = phi ptr [ %.sroa.7.i.i.i, %bb.s ], [ %.sroa.5.i.i.i, %bb.r ]
  %.sink.i.i.i.i.i = phi i64 [ %i.bq, %bb.s ], [ 0, %bb.r ]
  store i64 %.sink.i.i.i.i.i, ptr %.sink79.i.i.sroa.phi.i.i.i, align 8, !alias.scope !1079, !noalias !1080
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.bx = add nuw nsw i64 %i.bq, 1
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.bc, i64 noundef %i.bx, i64 noundef 8, i64 noundef 32)
          to label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultTyIBv_hEENtNtNtBJ_2io5error5ErrorEE7reserveCskuiImRAV2ip_9elfshaker.exit.i.i.i unwind label %bb.t, !noalias !1034

bb.v:                                             ; preds = %bb.t, %bb.m
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !1034
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtCs3oUPovFnLWP_4core6result6ResultTyIBx_hEENtNtNtBL_2io5error5ErrorEE16extend_desugaredINtNtNtNtBL_4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterBw_EEECskuiImRAV2ip_9elfshaker.exit.i.i: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1064
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecINtNtB4_6result6ResultTyIB26_hEENtNtNtB4_2io5error5ErrorEEEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d)
          to label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultTyIBI_hEENtNtNtBW_2io5error5ErrorEEINtB2_10SpecExtendBR_INtNtNtNtBW_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBH_EEE11spec_extendCskuiImRAV2ip_9elfshaker.exit.i unwind label %bb.w, !noalias !1034

bb.w:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtCs3oUPovFnLWP_4core6result6ResultTyIBx_hEENtNtNtBL_2io5error5ErrorEE16extend_desugaredINtNtNtNtBL_4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterBw_EEECskuiImRAV2ip_9elfshaker.exit.i.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.w, %bb.m
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bz, %bb.w ], [ %.pn.i.i.i, %bb.m ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultTyIBC_hEENtNtNtB4_2io5error5ErrorEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #22
          to label %bb.y unwind label %bb.x, !noalias !1034

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultTyIBI_hEENtNtNtBW_2io5error5ErrorEEINtB2_10SpecExtendBR_INtNtNtNtBW_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBH_EEE11spec_extendCskuiImRAV2ip_9elfshaker.exit.i: ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtCs3oUPovFnLWP_4core6result6ResultTyIBx_hEENtNtNtBL_2io5error5ErrorEE16extend_desugaredINtNtNtNtBL_4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterBw_EEECskuiImRAV2ip_9elfshaker.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1039
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !1037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1039
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultTyIBS_hEENtNtNtB16_2io5error5ErrorEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB16_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBR_EEE9from_iterCskuiImRAV2ip_9elfshaker.exit

bb.x:                                             ; preds = %bb.z, %.body.i, %bb.h
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !1034
  unreachable

bb.y:                                             ; preds = %bb.z, %.body.i
  %.pn10.i = phi { ptr, i32 } [ %.pn.ph.i, %bb.z ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %.pn10.i

bb.z:                                             ; preds = %bb.h, %bb.b
  %.pn.ph.i = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.ah, %bb.h ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecINtNtB4_6result6ResultTyIB26_hEENtNtNtB4_2io5error5ErrorEEEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1) #22
          to label %bb.y unwind label %bb.x, !noalias !1034

_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultTyIBS_hEENtNtNtB16_2io5error5ErrorEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB16_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBR_EEE9from_iterCskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.g, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultTyIBI_hEENtNtNtBW_2io5error5ErrorEEINtB2_10SpecExtendBR_INtNtNtNtBW_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBH_EEE11spec_extendCskuiImRAV2ip_9elfshaker.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEINtB2_12SpecFromIterBU_INtNtNtNtBZ_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBK_EEE9from_iterB1D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i.i = alloca i64, align 8            ; 3 uses
  %.sroa.7.i.i.i = alloca i64, align 8            ; 3 uses
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [96 x i8], align 8                ; 15 uses
  %.sroa.5.i = alloca i64, align 8                ; 3 uses
  %.sroa.7.i = alloca i64, align 8                ; 3 uses
  %i.e = alloca [56 x i8], align 8                ; 5 uses
  %i.f = alloca [56 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1086
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1086
  invoke fastcc void @_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB19_3VecINtNtBb_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENtNtNtB9_6traits8iterator8Iterator4nextB2w_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.c unwind label %bb.b, !noalias !1081

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.f, align 8, !range !5, !noalias !1086, !noundef !4
  %.not.i = icmp eq i64 %i.i, -3
  br i1 %.not.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1086
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !1086
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1092)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1095)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1097, !noalias !1098, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB20_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !1099, !noalias !1102, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val3.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !1099, !noalias !1102, !nonnull !4, !noundef !4
  %i.n = ptrtoint ptr %.val3.i.i.i.i to i64
  %i.o = ptrtoint ptr %.val.i.i.i.i to i64
  %i.p = sub nuw i64 %i.n, %i.o
  %i.q = udiv exact i64 %i.p, 56
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB20_.exit.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB20_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.7.0.i.i.i = phi i64 [ %i.q, %bb.e ], [ 0, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !1097, !noalias !1098, !noundef !4
  %.not53.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not53.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB20_.exit64.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB20_.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i62.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !1105, !noalias !1108, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val3.i63.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !1105, !noalias !1108, !nonnull !4, !noundef !4
  %i.v = ptrtoint ptr %.val3.i63.i.i.i to i64
  %i.w = ptrtoint ptr %.val.i62.i.i.i to i64
  %i.x = sub nuw i64 %i.v, %i.w
  %i.y = udiv exact i64 %i.x, 56
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB20_.exit64.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB20_.exit64.i.i.i: ; preds = %bb.f, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB20_.exit.i.i.i
  %.sroa.8.0.i.i.i = phi i64 [ %i.y, %bb.f ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB20_.exit.i.i.i ]
  %i.z = add nuw nsw i64 %.sroa.8.0.i.i.i, %.sroa.7.0.i.i.i ; 2 uses
  %i.aa = load ptr, ptr %1, align 8, !alias.scope !1097, !noalias !1098, !noundef !4
  %.not54.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not54.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB20_.exit64.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !1097, !noalias !1098, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val61.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !1097, !noalias !1098, !nonnull !4, !noundef !4
  %i.ad = icmp eq ptr %.val61.i.i.i, %.val.i.i.i
  br i1 %i.ad, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB20_.exit64.i.i.i
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !1081, !noalias !1084
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ae, align 8, !alias.scope !1081, !noalias !1084
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.af, align 8, !alias.scope !1081, !noalias !1084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1086
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEB2J_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1), !noalias !1081
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB16_4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBR_EEE9from_iterB1K_.exit

bb.j:                                             ; preds = %bb.m, %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load i64, ptr %i.e, align 8, !range !18, !alias.scope !1111, !noalias !1086, !noundef !4
  %i.ai = icmp eq i64 %i.ah, -2
  br i1 %i.ai, label %bb.ae, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %bb.ae unwind label %bb.ac, !noalias !1081

bb.l:                                             ; preds = %bb.h, %bb.g
  %.sink79.i.i.sroa.phi.i = phi ptr [ %.sroa.7.i, %bb.h ], [ %.sroa.5.i, %bb.g ]
  %.sink.i.i.i = phi i64 [ %i.z, %bb.h ], [ 0, %bb.g ]
  store i64 %.sink.i.i.i, ptr %.sink79.i.i.sroa.phi.i, align 8, !alias.scope !1114, !noalias !1115
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.aj = tail call i64 @llvm.umax.i64(i64 %i.z, i64 3) ; 2 uses
  %..i.i = add nuw nsw i64 %i.aj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1086
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %..i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56)
          to label %.noexc4.i unwind label %bb.j, !noalias !1081

.noexc4.i:                                        ; preds = %bb.l
  %i.ak = load i64, ptr %i.c, align 8, !range !530, !noalias !1086, !noundef !4
  %i.al = trunc nuw i64 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !342, !noalias !1086, !noundef !4 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.al, label %bb.m, label %bb.n, !prof !373

bb.m:                                             ; preds = %.noexc4.i
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !1086
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.an, i64 %i.ap) #24
          to label %.noexc5.i unwind label %bb.j, !noalias !1081

.noexc5.i:                                        ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %.noexc4.i
  %i.aq = load ptr, ptr %i.ao, align 8, !noalias !1086, !nonnull !4, !noundef !4 ; 2 uses
  %i.ar = icmp ult i64 %i.aj, %i.an
  tail call void @llvm.assume(i1 %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1086
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aq, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !1081
  store i64 %i.an, ptr %i.g, align 8, !noalias !1086
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.aq, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1086
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !1086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1086
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1086
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false), !noalias !1081
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.o

bb.o:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEE7reserveB1n_.exit.i.i.i, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1126
  invoke fastcc void @_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB19_3VecINtNtBb_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENtNtNtB9_6traits8iterator8Iterator4nextB2w_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d)
          to label %bb.q unwind label %bb.p, !noalias !1081

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEB14_.exit.i.i.i: ; preds = %bb.y, %bb.x, %bb.p
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ba, %bb.p ], [ %i.bw, %bb.y ], [ %i.bw, %bb.x ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1m_3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEEB2J_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d) #22
          to label %.body.i unwind label %bb.aa, !noalias !1081

bb.p:                                             ; preds = %bb.o
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEB14_.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bb = load i64, ptr %i.b, align 8, !range !5, !noalias !1126, !noundef !4
  %.not.i.i6.i = icmp eq i64 %i.bb, -3
  br i1 %.not.i.i6.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEE16extend_desugaredINtNtNtNtBL_4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterBw_EEEB1p_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !1126
  %i.bc = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1127, !noalias !1128, !noundef !4 ; 5 uses
  %i.bd = icmp ult i64 %i.bc, 164703072086692426
  call void @llvm.assume(i1 %i.bd)
  %i.be = load i64, ptr %i.g, align 8, !range !340, !alias.scope !1127, !noalias !1128, !noundef !4
  %i.bf = icmp eq i64 %i.bc, %i.be
  br i1 %i.bf, label %bb.s, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEE7reserveB1n_.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  call void @llvm.experimental.noalias.scope.decl(metadata !1134)
  call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  %i.bg = load ptr, ptr %i.as, align 8, !alias.scope !1139, !noalias !1140, !noundef !4
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB20_.exit.i.i.i.i.i, label %bb.t
end_hunk_0
