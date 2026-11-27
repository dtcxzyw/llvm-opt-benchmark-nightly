Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/xds_metadata?download=true
inline.NumInlined: 1180
inline.NumDeleted: 644
begin_hunk_0_@_ZNK9grpc_core14XdsMetadataMap8ToStringB5cxx11Ev:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !27
  store i8 123, ptr %i.w, align 8, !tbaa !30
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.x, align 8, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.y, align 1, !tbaa !30
  br label %._crit_edge129

bb.d:                                             ; preds = %._crit_edge
  %i.z = ptrtoint ptr %.sroa.12.1 to i64
  %i.aa = ptrtoint ptr %.sroa.071.1 to i64        ; 3 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = ashr exact i64 %i.ab, 4                 ; 2 uses
  %i.ad = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 true)
  %i.ae = shl nuw nsw i64 %i.ad, 1
  %i.af = xor i64 %i.ae, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr %.sroa.071.1, ptr nonnull %.sroa.12.1, i64 noundef %i.af)
          to label %.noexc unwind label %.loopexit.split-lp87

.noexc:                                           ; preds = %bb.d
  %i.ag = icmp sgt i64 %i.ab, 256
  br i1 %i.ag, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.noexc
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.071.1, i64 256 ; 3 uses
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %.sroa.071.1, ptr nonnull %i.ah)
          to label %.noexc34 unwind label %.loopexit.split-lp87

.noexc34:                                         ; preds = %bb.e
  %.not4.i.i.i.i = icmp eq ptr %i.ah, %.sroa.12.1
  br i1 %.not4.i.i.i.i, label %.lr.ph128, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc34, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.an, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i ], [ %i.ah, %.noexc34 ] ; 5 uses
  %.sroa.03.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.0.05.i.i.i.i, align 8, !tbaa !23 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %.sroa.5.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !25 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.sroa.07.0.i.i.i.i.i = phi ptr [ %.sroa.0.05.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.g ] ; 5 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.i.i.i, i64 -16 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !23 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.03.0.copyload.i.i.i.i.i) ; 2 uses
  %i.ai = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i, 0
  br i1 %i.ai, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.i.i.i, i64 -8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !25
  %i.aj = tail call i32 @memcmp(ptr noundef %.sroa.5.0.copyload.i.i.i.i.i, ptr noundef %.sroa.2.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i) #23 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt17basic_string_viewIcSt11char_traitsIcEENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.f
  %i.al = sub i64 %.sroa.03.0.copyload.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i
  %spec.select7.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.al, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt17basic_string_viewIcSt11char_traitsIcEENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i.i.i.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt17basic_string_viewIcSt11char_traitsIcEENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i ], [ %i.aj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ]
  %i.am = icmp slt i32 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.am, label %bb.g, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i

bb.g:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt17basic_string_viewIcSt11char_traitsIcEENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !41
  br label %bb.f, !llvm.loop !1

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt17basic_string_viewIcSt11char_traitsIcEENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i.i.i.i
  store i64 %.sroa.03.0.copyload.i.i.i.i.i, ptr %.sroa.07.0.i.i.i.i.i, align 8, !tbaa !23
  %.sroa.5.0..sroa_idx5.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx5.i.i.i.i.i, align 8, !tbaa !25
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.05.i.i.i.i, %.0.lcssa.i.i.i.i.i.i.pn
  br i1 %.not.i.i.i.i, label %.lr.ph128, label %.lr.ph.i.i.i.i, !llvm.loop !83

bb.h:                                             ; preds = %.noexc
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %.sroa.071.1, ptr nonnull %.sroa.12.1)
          to label %.lr.ph128 unwind label %.loopexit.split-lp87

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN9grpc_core16XdsMetadataValueESt14default_deleteISC_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE8iterator21skip_empty_or_deletedEv.exit.i.i
  %.sroa.071.0123 = phi ptr [ %.sroa.071.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN9grpc_core16XdsMetadataValueESt14default_deleteISC_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE8iterator21skip_empty_or_deletedEv.exit.i.i ], [ null, %.lr.ph.preheader ] ; 8 uses
  %.sroa.12.0122 = phi ptr [ %.sroa.12.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN9grpc_core16XdsMetadataValueESt14default_deleteISC_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE8iterator21skip_empty_or_deletedEv.exit.i.i ], [ null, %.lr.ph.preheader ] ; 9 uses
  %.sroa.18.0121 = phi ptr [ %.sroa.18.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN9grpc_core16XdsMetadataValueESt14default_deleteISC_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE8iterator21skip_empty_or_deletedEv.exit.i.i ], [ null, %.lr.ph.preheader ] ; 2 uses
  %.sroa.9.0120 = phi ptr [ %.sroa.9.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN9grpc_core16XdsMetadataValueESt14default_deleteISC_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE8iterator21skip_empty_or_deletedEv.exit.i.i ], [ %.sroa.9.0120.ph, %.lr.ph.preheader ] ; 3 uses
  %.sroa.068.0119 = phi ptr [ %.sroa.068.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN9grpc_core16XdsMetadataValueESt14default_deleteISC_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE8iterator21skip_empty_or_deletedEv.exit.i.i ], [ %.sroa.068.0119.ph, %.lr.ph.preheader ]
  %i.ao = load ptr, ptr %.sroa.9.0120, align 8, !tbaa !29 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.9.0120, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !31 ; 2 uses
  %.not.i.i36 = icmp eq ptr %.sroa.12.0122, %.sroa.18.0121
  br i1 %.not.i.i36, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  store i64 %i.aq, ptr %.sroa.12.0122, align 8, !tbaa !23
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0122, i64 8
  store ptr %i.ao, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !25
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit

bb.j:                                             ; preds = %.lr.ph
  %i.ar = ptrtoint ptr %.sroa.12.0122 to i64
  %i.as = ptrtoint ptr %.sroa.071.0123 to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 4 uses
  %i.au = icmp eq i64 %i.at, 9223372036854775792
  br i1 %i.au, label %bb.k, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #26
          to label %.noexc38 unwind label %.loopexit.split-lp87

.noexc38:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.av = ashr exact i64 %i.at, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.av ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.av
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 576460752303423487)
  %i.az = select i1 %i.ax, i64 576460752303423487, i64 %i.ay ; 3 uses
  %.not.i.i.i.i37 = icmp ne i64 %i.az, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i37)
  %i.ba = shl nuw nsw i64 %i.az, 4
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #27
          to label %.noexc39 unwind label %.loopexit86 ; 5 uses

.noexc39:                                         ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.at ; 2 uses
  store i64 %i.aq, ptr %i.bc, align 8, !tbaa !23
  %.sroa.6.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.ao, ptr %.sroa.6.0..sroa_idx64, align 8, !tbaa !25
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.071.0123, %.sroa.12.0122
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc39, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i ], [ %i.bb, %.noexc39 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.071.0123, %.noexc39 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !41, !alias.scope !89
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bd, %.sroa.12.0122
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !87

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc39
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bb, %.noexc39 ], [ %i.be, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.071.0123, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.071.0123, i64 noundef %i.at) #28
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.az
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.i
  %.sroa.18.1 = phi ptr [ %i.bf, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.18.0121, %bb.i ] ; 9 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.12.0122, %bb.i ] ; 2 uses
  %.sroa.071.1 = phi ptr [ %i.bb, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.071.0123, %bb.i ] ; 19 uses
  %.sroa.12.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 16 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.068.0119, i64 1 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.9.0120, i64 40 ; 2 uses
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !37  ; 2 uses
  %i.bj = icmp slt i8 %i.bi, -1
  br i1 %i.bj, label %.lr.ph.i.i.i40, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN9grpc_core16XdsMetadataValueESt14default_deleteISC_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE8iterator21skip_empty_or_deletedEv.exit.i.i

.lr.ph.i.i.i40:                                   ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit, %.lr.ph.i.i.i40
  %i.bk = phi ptr [ %i.bu, %.lr.ph.i.i.i40 ], [ %i.bh, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit ]
  %i.bl = phi ptr [ %i.bt, %.lr.ph.i.i.i40 ], [ %i.bg, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %i.bm = load <16 x i8>, ptr %i.bl, align 1, !tbaa !30
  %i.bn = icmp slt <16 x i8> %i.bm, splat (i8 -1)
  %i.bo = bitcast <16 x i1> %i.bn to i16
  %i.bp = zext i16 %i.bo to i32
  %i.bq = add nuw nsw i32 %i.bp, 1
  %i.br = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bq, i1 true)
  %i.bs = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bs ; 3 uses
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr %i.bk, i64 %i.bs ; 2 uses
  %i.bv = load i8, ptr %i.bt, align 1, !tbaa !37  ; 2 uses
  %i.bw = icmp slt i8 %i.bv, -1
  br i1 %i.bw, label %.lr.ph.i.i.i40, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN9grpc_core16XdsMetadataValueESt14default_deleteISC_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE8iterator21skip_empty_or_deletedEv.exit.i.i, !llvm.loop !0

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN9grpc_core16XdsMetadataValueESt14default_deleteISC_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE8iterator21skip_empty_or_deletedEv.exit.i.i: ; preds = %.lr.ph.i.i.i40, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit
  %.sroa.068.1 = phi ptr [ %i.bg, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit ], [ %i.bt, %.lr.ph.i.i.i40 ]
  %.sroa.9.1 = phi ptr [ %i.bh, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit ], [ %i.bu, %.lr.ph.i.i.i40 ]
  %i.bx = phi i8 [ %i.bi, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit ], [ %i.bv, %.lr.ph.i.i.i40 ]
  %i.by = icmp eq i8 %i.bx, -1
  br i1 %i.by, label %._crit_edge, label %.lr.ph, !prof !14

.lr.ph128:                                        ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i, %.noexc34, %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.bz, ptr %0, align 8, !tbaa !27
  store i8 123, ptr %i.bz, align 8, !tbaa !30
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.ca, align 8, !tbaa !31
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.cb, align 1, !tbaa !30
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.ce = invoke { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN9grpc_core16XdsMetadataValueESt14default_deleteISC_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE4findISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.071.1)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.m:                                             ; preds = %.lr.ph128
  %i.cf = extractvalue { ptr, ptr } %i.ce, 0
  %i.cg = extractvalue { ptr, ptr } %i.ce, 1
  %i.ch = icmp eq ptr %i.cf, null
  br i1 %i.ch, label %bb.r, label %._crit_edge154

._crit_edge154:                                   ; preds = %bb.m
  %.sroa.22.0..sroa_idx.peel.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.071.1, i64 8
  %.sroa.22.0.copyload.peel.pre = load ptr, ptr %.sroa.22.0..sroa_idx.peel.phi.trans.insert, align 8, !tbaa !25
  %.sroa.01.0.copyload.peel.pre = load i64, ptr %.sroa.071.1, align 8, !tbaa !23
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.01.0.copyload.peel.pre, ptr %.sroa.22.0.copyload.peel.pre)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %._crit_edge154
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 1, ptr nonnull @.str.6)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !13 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !40
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8
  invoke void %i.cm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.cj)
          to label %bb.p unwind label %.loopexit.split-lp145.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %i.cn = load ptr, ptr %2, align 8, !tbaa !29
  %i.co = load i64, ptr %i.cc, align 8, !tbaa !31
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.co, ptr %i.cn)
          to label %bb.q unwind label %.loopexit.split-lp149.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  %i.cp = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.cd
  br i1 %i.cq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %bb.q
  %i.cr = load i64, ptr %i.cd, align 8, !tbaa !30
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel: ; preds = %bb.q
  %3 = load i64, ptr %i.cc, align 8, !tbaa !31
  %4 = icmp ult i64 %3, 16
  call void @llvm.assume(i1 %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %bb.m
  %exitcond.peel.not = icmp eq i64 %i.ab, 16
  br i1 %exitcond.peel.not, label %._crit_edge129, label %.peel.next

._crit_edge129:                                   ; preds = %bb.z, %bb.r, %.loopexit85.thread216
  %i.ct = phi ptr [ %i.w, %.loopexit85.thread216 ], [ %i.bz, %bb.r ], [ %i.bz, %bb.z ]
  %.pre-phi159215 = phi i64 [ %.pre158, %.loopexit85.thread216 ], [ %i.aa, %bb.r ], [ %i.aa, %bb.z ]
  %.sroa.18.0.lcssa187212 = phi ptr [ %.sroa.18.0.lcssa188, %.loopexit85.thread216 ], [ %.sroa.18.1, %bb.r ], [ %.sroa.18.1, %bb.z ] ; 2 uses
  %.sroa.071.0.lcssa194210 = phi ptr [ %.sroa.071.0.lcssa195, %.loopexit85.thread216 ], [ %.sroa.071.1, %bb.r ], [ %.sroa.071.1, %bb.z ] ; 3 uses
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 1, ptr nonnull @.str.7)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp

.loopexit86:                                      ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit88 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

.loopexit.split-lp87:                             ; preds = %bb.d, %bb.e, %bb.h, %bb.k
  %.sroa.18.0115 = phi ptr [ %.sroa.18.1, %bb.d ], [ %.sroa.18.1, %bb.e ], [ %.sroa.18.1, %bb.h ], [ %.sroa.12.0122, %bb.k ]
  %.sroa.071.0106 = phi ptr [ %.sroa.071.1, %bb.d ], [ %.sroa.071.1, %bb.e ], [ %.sroa.071.1, %bb.h ], [ %.sroa.071.0123, %bb.k ]
  %lpad.loopexit.split-lp89 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

.peel.next:                                       ; preds = %bb.r, %bb.z
  %.024126 = phi i64 [ %i.dk, %bb.z ], [ 1, %bb.r ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %.sroa.071.1, i64 %.024126 ; 3 uses
  %i.cv = invoke { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN9grpc_core16XdsMetadataValueESt14default_deleteISC_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE4findISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.cu)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.s:                                             ; preds = %.peel.next
  %i.cw = extractvalue { ptr, ptr } %i.cv, 0
  %i.cx = extractvalue { ptr, ptr } %i.cv, 1
  %i.cy = icmp eq ptr %i.cw, null
  br i1 %i.cy, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 2, ptr nonnull @.str.5)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  %.sroa.01.0.copyload = load i64, ptr %i.cu, align 8, !tbaa !23
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.sroa.22.0.copyload = load ptr, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !25
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.01.0.copyload, ptr %.sroa.22.0.copyload)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 1, ptr nonnull @.str.6)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !13 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !40
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8
  invoke void %i.dd(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.da)
          to label %bb.x unwind label %.loopexit.split-lp145.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.w
  %i.de = load ptr, ptr %2, align 8, !tbaa !29
  %i.df = load i64, ptr %i.cc, align 8, !tbaa !31
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.df, ptr %i.de)
          to label %bb.y unwind label %.loopexit.split-lp149.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  %i.dg = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.cd
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.y
  %i.di = load i64, ptr %i.cd, align 8, !tbaa !30
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.z

bb.z:                                             ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dk = add nuw i64 %.024126, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.dk, %i.ac
  br i1 %exitcond.not, label %._crit_edge129, label %.peel.next, !llvm.loop !88

.loopexit.split-lp145.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %bb.o
  %lpad.loopexit.split-lp249 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

.loopexit.split-lp149.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.x, %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dl = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.cd
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %.loopexit.split-lp149.loopexit.split-lp.loopexit.split-lp
  %i.dn = load i64, ptr %i.cd, align 8, !tbaa !30
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %.loopexit.split-lp149.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp145.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %lpad.loopexit.split-lp249, %.loopexit.split-lp145.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp149.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.peel.next, %bb.v, %bb.u, %bb.t, %.lr.ph128, %._crit_edge154, %bb.n
  %lpad.loopexit.split-lp247 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %._crit_edge129
  %lpad.loopexit.split-lp132 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.aa:                                            ; preds = %._crit_edge129
  %.not.i.i.i48 = icmp eq ptr %.sroa.071.0.lcssa194210, null
  br i1 %.not.i.i.i48, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dp = ptrtoint ptr %.sroa.18.0.lcssa187212 to i64
  %i.dq = sub i64 %i.dp, %.pre-phi159215
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.071.0.lcssa194210, i64 noundef %i.dq) #28
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %bb.aa, %bb.ab
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %i.dr = phi ptr [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %i.ct, %.loopexit.split-lp.loopexit.split-lp ], [ %i.bz, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.071.0.lcssa196 = phi ptr [ %.sroa.071.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %.sroa.071.0.lcssa194210, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.071.1, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.18.0.lcssa189 = phi ptr [ %.sroa.18.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %.sroa.18.0.lcssa187212, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.18.1, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %lpad.loopexit.split-lp132, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp247, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ds = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.dr
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %.loopexit.split-lp
  %i.du = load i64, ptr %i.dr, align 8, !tbaa !30
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %.loopexit.split-lp, %.loopexit86, %.loopexit.split-lp87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  %.sroa.18.0111 = phi ptr [ %.sroa.18.0.lcssa189, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ], [ %.sroa.18.0115, %.loopexit.split-lp87 ], [ %.sroa.12.0122, %.loopexit86 ], [ %.sroa.18.0.lcssa189, %.loopexit.split-lp ]
  %.sroa.071.0102 = phi ptr [ %.sroa.071.0.lcssa196, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ], [ %.sroa.071.0106, %.loopexit.split-lp87 ], [ %.sroa.071.0123, %.loopexit86 ], [ %.sroa.071.0.lcssa196, %.loopexit.split-lp ] ; 3 uses
  %.pn30.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ], [ %lpad.loopexit.split-lp89, %.loopexit.split-lp87 ], [ %lpad.loopexit88, %.loopexit86 ], [ %.pn.pn.pn, %.loopexit.split-lp ]
  %.not.i.i.i52 = icmp eq ptr %.sroa.071.0102, null
  br i1 %.not.i.i.i52, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit53, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %i.dw = ptrtoint ptr %.sroa.18.0111 to i64
  %i.dx = ptrtoint ptr %.sroa.071.0102 to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.071.0102, i64 noundef %i.dy) #28
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit53

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %bb.ac
  resume { ptr, i32 } %.pn30.pn.pn
}

declare void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32), i64, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZNK9grpc_core22XdsStructMetadataValue8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call { i64, ptr } %i.d(ptr noundef nonnull align 8 dereferenceable(64) %1) ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.e, 0        ; 5 uses
  %i.g = extractvalue { i64, ptr } %i.e, 1        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !27
  %i.i = icmp eq ptr %i.g, null
  %i.j = icmp ne i64 %i.f, 0
  %or.cond.i.i.i = and i1 %i.j, %i.i
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.16) #26
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.f, ptr %i.a, align 8, !tbaa !23
  %i.k = icmp ugt i64 %i.f, 15
  br i1 %i.k, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.b
end_hunk_0
