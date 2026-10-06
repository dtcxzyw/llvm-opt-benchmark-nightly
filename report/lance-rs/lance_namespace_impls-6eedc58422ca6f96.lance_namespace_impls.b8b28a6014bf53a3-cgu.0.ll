Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73510
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 88
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 285
begin_hunk_0_@_RINvNtNtNtCsa7501wwoJJ1_11lance_index6scalar8inverted9tokenizer26deserialize_format_versionQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1x_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls:bb.a

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable14driftsort_mainNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSBZ_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3h_18DirectoryNamespace16paginate_indices0E0INtNtB2x_3vec3VecBZ_EEB3j_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 36028797018963968) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = lshr i64 %1, 1
  %i.c = sub nuw nsw i64 %1, %i.b
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 31250)
  %.sroa.0.0.i8 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.c)
  %.sroa.0.0.i9 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i8, i64 48) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = shl nuw nsw i64 %.sroa.0.0.i9, 8         ; 3 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !85994
  %i.e = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.d, i64 noundef range(i64 1, 17) 8) #68, !noalias !85994 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.d) #72
  unreachable

bb.b:                                             ; preds = %bb.a
  store i64 %.sroa.0.0.i9, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.g = icmp samesign ult i64 %1, 65
  invoke fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3e_18DirectoryNamespace16paginate_indices0E0EB3g_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %i.e, i64 noundef %.sroa.0.0.i9, i1 noundef zeroext %i.g, ptr noalias noundef align 8 dereferenceable(8) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !85995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %i.a) #73
  resume { ptr, i32 } %i.h
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable14driftsort_mainNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSBZ_11sort_by_keyINtNtB8_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3K_18DirectoryNamespace19list_versions_under0s1_0E0INtNtB2x_3vec3VecBZ_EEB3M_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 67818912035696881) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = lshr i64 %1, 1
  %i.c = sub nuw nsw i64 %1, %i.b
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 58823)
  %.sroa.0.0.i8 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.c)
  %.sroa.0.0.i9 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i8, i64 48) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = mul nuw nsw i64 %.sroa.0.0.i9, 136       ; 3 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !86002
  %i.e = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.d, i64 noundef range(i64 1, 17) 8) #68, !noalias !86002 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.d) #72
  unreachable

bb.b:                                             ; preds = %bb.a
  store i64 %.sroa.0.0.i9, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.g = icmp samesign ult i64 %1, 65
  invoke fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_11sort_by_keyINtNtBa_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3H_18DirectoryNamespace19list_versions_under0s1_0E0EB3J_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %i.e, i64 noundef %.sroa.0.0.i9, i1 noundef zeroext %i.g, ptr noalias noundef align 8 dereferenceable(8) %2)
          to label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i unwind label %bb.c

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !86003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %i.a) #73
  resume { ptr, i32 } %i.h
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable14driftsort_mainNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSBZ_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3p_18DirectoryNamespace19list_versions_under0s2_0E0INtNtB2x_3vec3VecBZ_EEB3r_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 67818912035696881) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = lshr i64 %1, 1
  %i.c = sub nuw nsw i64 %1, %i.b
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 58823)
  %.sroa.0.0.i8 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.c)
  %.sroa.0.0.i9 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i8, i64 48) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = mul nuw nsw i64 %.sroa.0.0.i9, 136       ; 3 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !86010
  %i.e = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.d, i64 noundef range(i64 1, 17) 8) #68, !noalias !86010 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.d) #72
  unreachable

bb.b:                                             ; preds = %bb.a
  store i64 %.sroa.0.0.i9, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.g = icmp samesign ult i64 %1, 65
  invoke fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3m_18DirectoryNamespace19list_versions_under0s2_0E0EB3o_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %i.e, i64 noundef %.sroa.0.0.i9, i1 noundef zeroext %i.g, ptr noalias noundef align 8 dereferenceable(8) %2)
          to label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i unwind label %bb.c

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !86011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %i.a) #73
  resume { ptr, i32 } %i.h
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable14driftsort_mainNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSBZ_11sort_by_keyyNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB2T_17ManifestNamespace35manifest_from_overwrite_transactions_0E0INtNtB23_3vec3VecBZ_EEB2X_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 38430716820228233) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = lshr i64 %1, 1
  %i.c = sub nuw nsw i64 %1, %i.b
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 33333)
  %.sroa.0.0.i8 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.c)
  %.sroa.0.0.i9 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i8, i64 48) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = mul nuw nsw i64 %.sroa.0.0.i9, 240       ; 3 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !86018
  %i.e = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.d, i64 noundef range(i64 1, 17) 8) #68, !noalias !86018 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.d) #72
  unreachable

bb.b:                                             ; preds = %bb.a
  store i64 %.sroa.0.0.i9, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.g = icmp samesign ult i64 %1, 65
  invoke fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_11sort_by_keyyNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB2Q_17ManifestNamespace35manifest_from_overwrite_transactions_0E0EB2U_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %i.e, i64 noundef %.sroa.0.0.i9, i1 noundef zeroext %i.g, ptr noalias noundef align 8 dereferenceable(8) %2)
          to label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i unwind label %bb.c

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !86019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

common.resume:                                    ; preds = %bb.c
  resume { ptr, i32 } %i.h

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %i.a) #73
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable7ipnsortxNvYxNtNtB8_3cmp10PartialOrd2ltECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #14 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSx7reverseCsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6 = load i64, ptr %i.b, align 8, !alias.scope !697, !noalias !698, !noundef !416 ; 3 uses
  %.val7 = load i64, ptr %0, align 8, !alias.scope !698, !noalias !697, !noundef !416
  %i.c = icmp slt i64 %.val6, %.val7              ; 2 uses
  %.not22 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader12

.preheader12:                                     ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runxNvYxNtNtB8_3cmp10PartialOrd2ltECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runxNvYxNtNtB8_3cmp10PartialOrd2ltECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %.lr.ph18

.lr.ph:                                           ; preds = %.preheader12, %bb.c
  %.val5 = phi i64 [ %.val4, %bb.c ], [ %.val6, %.preheader12 ]
  %.sroa.01.0.i14 = phi i64 [ %i.f, %bb.c ], [ 2, %.preheader12 ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i14
  %.val4 = load i64, ptr %i.d, align 8, !alias.scope !697, !noalias !698, !noundef !416 ; 2 uses
  %i.e = icmp slt i64 %.val4, %.val5
  br i1 %i.e, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runxNvYxNtNtB8_3cmp10PartialOrd2ltECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i64 %.sroa.01.0.i14, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runxNvYxNtNtB8_3cmp10PartialOrd2ltECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread, label %.lr.ph

.lr.ph18:                                         ; preds = %.preheader, %bb.d
  %.val3 = phi i64 [ %.val, %bb.d ], [ %.val6, %.preheader ]
  %.sroa.01.1.i17 = phi i64 [ %i.i, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.1.i17
  %.val = load i64, ptr %i.g, align 8, !alias.scope !697, !noalias !698, !noundef !416 ; 2 uses
  %i.h = icmp slt i64 %.val, %.val3
  br i1 %i.h, label %bb.d, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runxNvYxNtNtB8_3cmp10PartialOrd2ltECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.d:                                             ; preds = %.lr.ph18
  %i.i = add nuw nsw i64 %.sroa.01.1.i17, 1       ; 2 uses
  %exitcond25.not = icmp eq i64 %i.i, %1
  br i1 %exitcond25.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runxNvYxNtNtB8_3cmp10PartialOrd2ltECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread, label %.lr.ph18

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runxNvYxNtNtB8_3cmp10PartialOrd2ltECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %.lr.ph, %.lr.ph18, %.preheader12, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader12 ], [ 2, %.preheader ], [ %.sroa.01.1.i17, %.lr.ph18 ], [ %.sroa.01.0.i14, %.lr.ph ] ; 2 uses
  %i.j = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.k, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runxNvYxNtNtB8_3cmp10PartialOrd2ltECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread, label %bb.e

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runxNvYxNtNtB8_3cmp10PartialOrd2ltECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runxNvYxNtNtB8_3cmp10PartialOrd2ltECsfR8GmIBoxTX_21lance_namespace_impls.exit
  br i1 %i.c, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSx12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.preheader.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSx7reverseCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.e:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runxNvYxNtNtB8_3cmp10PartialOrd2ltECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.l = or i64 %1, 1
  %i.m = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = xor i32 %i.o, 126
  tail call fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable9quicksort9quicksortxNvYxNtNtBa_3cmp10PartialOrd2ltECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, i32 noundef %i.p, ptr noalias noundef nonnull %2)
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSx7reverseCsfR8GmIBoxTX_21lance_namespace_impls.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSx7reverseCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSx12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.i.i, %middle.block, %bb.a, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runxNvYxNtNtB8_3cmp10PartialOrd2ltECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread, %bb.e
  ret void

_RNvMNtCscI6d9CVNmLh_4core5sliceSx12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runxNvYxNtNtB8_3cmp10PartialOrd2ltECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread
  %i.q = lshr i64 %1, 1                           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86027)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86028)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %1, 8
  br i1 %min.iters.check, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSx12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSx12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.preheader.i.i
  %n.vec = and i64 %i.q, 576460752303423484       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = xor i64 %index, -1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.u = getelementptr [8 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.t, align 8, !alias.scope !86029, !noalias !86028
  %wide.load40 = load <2 x i64>, ptr %i.v, align 8, !alias.scope !86029, !noalias !86028
  %i.w = getelementptr i8, ptr %i.u, i64 -8       ; 2 uses
  %i.x = getelementptr i8, ptr %i.u, i64 -24      ; 2 uses
  %wide.load41 = load <2 x i64>, ptr %i.w, align 8, !alias.scope !86030, !noalias !86027
  %wide.load42 = load <2 x i64>, ptr %i.x, align 8, !alias.scope !86030, !noalias !86027
  %reverse = shufflevector <2 x i64> %wide.load41, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse43 = shufflevector <2 x i64> %wide.load42, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.t, align 8, !alias.scope !86029, !noalias !86028
  store <2 x i64> %reverse43, ptr %i.v, align 8, !alias.scope !86029, !noalias !86028
  %reverse44 = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse45 = shufflevector <2 x i64> %wide.load40, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse44, ptr %i.w, align 8, !alias.scope !86030, !noalias !86027
  store <2 x i64> %reverse45, ptr %i.x, align 8, !alias.scope !86030, !noalias !86027
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !86025

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSx7reverseCsfR8GmIBoxTX_21lance_namespace_impls.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSx12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.i.i.preheader

_RNvMNtCscI6d9CVNmLh_4core5sliceSx12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.i.i.preheader: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSx12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSx12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSx12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSx12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSx12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.i.i.preheader, %_RNvMNtCscI6d9CVNmLh_4core5sliceSx12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ae, %_RNvMNtCscI6d9CVNmLh_4core5sliceSx12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCscI6d9CVNmLh_4core5sliceSx12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.i.i.preheader ] ; 3 uses
  %i.z = xor i64 %.sroa.0.016.i.i, -1
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr %i.r, i64 %i.z ; 2 uses
  %i.ac = load i64, ptr %i.aa, align 8, !alias.scope !86029, !noalias !86028, !noundef !416
  %i.ad = load i64, ptr %i.ab, align 8, !alias.scope !86030, !noalias !86027
  store i64 %i.ad, ptr %i.aa, align 8, !alias.scope !86029, !noalias !86028
  store i64 %i.ac, ptr %i.ab, align 8, !alias.scope !86030, !noalias !86027
  %i.ae = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ae, %i.q
  br i1 %exitcond.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSx7reverseCsfR8GmIBoxTX_21lance_namespace_impls.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSx12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.i.i, !llvm.loop !86026
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task3raw15try_read_outputINtNtNtB6_8blocking4task12BlockingTaskNCNCINvNtNtB8_2fs14create_dir_all14create_dir_allRNtNtCsgczF5crJ4sT_3std4path4PathE00ENtNtB15_8schedule16BlockingScheduleECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [24 x i8], align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86044)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !noalias !86044
  br i1 %i.c, label %bb.b, label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtBb_2fs14create_dir_all14create_dir_allRNtNtCsgczF5crJ4sT_3std4path4PathE00ENtNtB19_8schedule16BlockingScheduleE15try_read_outputCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !86045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !86045
  store i32 2, ptr %i.d, align 8, !noalias !86045
  %i.e = load i32, ptr %i.a, align 8, !range !482, !noalias !86045, !noundef !416
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCINvNtNtBd_2fs14create_dir_all14create_dir_allRNtNtCsgczF5crJ4sT_3std4path4PathE00ENtNtB15_8schedule16BlockingScheduleE11take_output0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.c, !prof !439

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @1820, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1822) #72
          to label %bb.d unwind label %bb.e, !noalias !86046

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume.i:                                  ; preds = %.body.i, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core5StageINtNtNtBI_8blocking4task12BlockingTaskNCNCINvNtNtBK_2fs14create_dir_all14create_dir_allRNtNtCsgczF5crJ4sT_3std4path4PathE00EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(32) %i.a) #73
          to label %common.resume.i unwind label %bb.f, !noalias !86046

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !86046
  unreachable

_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCINvNtNtBd_2fs14create_dir_all14create_dir_allRNtNtCsgczF5crJ4sT_3std4path4PathE00ENtNtB15_8schedule16BlockingScheduleE11take_output0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !86047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !86045
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86048)
  %i.j = load i64, ptr %1, align 8, !range !442, !alias.scope !86049, !noalias !86050, !noundef !416
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorENtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCINvNtNtBd_2fs14create_dir_all14create_dir_allRNtNtCsgczF5crJ4sT_3std4path4PathE00ENtNtB15_8schedule16BlockingScheduleE11take_output0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86051)
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !86052, !noalias !86050, !noundef !416
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !86053, !noalias !86050, !noundef !416
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorENtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.o)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorENtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i unwind label %bb.o

bb.j:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86054)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !86055, !noalias !86050, !noundef !416 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !86055, !noalias !86050 ; 6 uses
  %i.t = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.t, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorENtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i) ]
  %i.u = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !416, !noalias !86055 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void %i.u(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.m unwind label %bb.n, !noalias !86055

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !419, !invariant.load !416, !noalias !86055 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorENtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !420, !invariant.load !416, !noalias !86055
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) %i.z) #68, !noalias !86055
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_uNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorENtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.n:                                             ; preds = %bb.l
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !419, !invariant.load !416, !noalias !86055 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.body.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i: ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !420, !invariant.load !416, !noalias !86055
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1m_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtNtB1o_17external_manifest29ExternalManifestCommitHandlerNtB1o_13CommitHandler29list_manifest_locations_sinces_0s_0E0ECsfR8GmIBoxTX_21lance_namespace_impls:.lr.ph.preheader
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -16
  store i64 %.val9.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !88573
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -8
  store i64 %.sroa.512.0.copyload.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !88573
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtNtB1a_17external_manifest29ExternalManifestCommitHandlerNtB1a_13CommitHandler29list_manifest_locations_sinces_0s_0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationNCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseyENCNCNvYNtNtB1a_17external_manifest29ExternalManifestCommitHandlerNtB1a_13CommitHandler29list_manifest_locations_sinces_0s_0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %.lr.ph, %._crit_edge6
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 80 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftRNtNtCs40k4W9msRzi_5alloc6string6StringNvYB1m_NtNtBa_3cmp10PartialOrd2ltECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 2, 21) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
.lr.ph.preheader:
  %.idx = shl nuw nsw i64 %1, 3
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.sroa.0.01 = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs40k4W9msRzi_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECsfR8GmIBoxTX_21lance_namespace_impls.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs40k4W9msRzi_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %.sroa.0.04 = phi ptr [ %.sroa.0.0, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs40k4W9msRzi_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %.sroa.0.01, %.lr.ph.preheader ] ; 4 uses
  %.pn3 = phi ptr [ %.sroa.0.04, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs40k4W9msRzi_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %.val9.i = load ptr, ptr %.sroa.0.04, align 8, !nonnull !416, !align !417, !noundef !416 ; 3 uses
  %.val10.i = load ptr, ptr %.pn3, align 8, !nonnull !416, !align !417, !noundef !416 ; 3 uses
  %i.b = getelementptr i8, ptr %.val9.i, i64 8    ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.b, align 8, !nonnull !416, !noundef !416
  %i.c = getelementptr i8, ptr %.val9.i, i64 16   ; 2 uses
  %.val1.i.i.i = load i64, ptr %i.c, align 8, !noundef !416 ; 2 uses
  %i.d = getelementptr i8, ptr %.val10.i, i64 8
  %.val2.i.i.i = load ptr, ptr %i.d, align 8, !nonnull !416, !noundef !416
  %i.e = getelementptr i8, ptr %.val10.i, i64 16
  %.val3.i.i.i = load i64, ptr %i.e, align 8, !noundef !416 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val1.i.i.i, i64 range(i64 0, -9223372036854775808) %.val3.i.i.i)
  %i.f = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i.i, ptr nonnull readonly %.val2.i.i.i, i64 %spec.store.select.i.i.i.i.i.i.i.i), !alias.scope !88590 ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = icmp eq i32 %i.f, 0
  %i.i = sub nsw i64 %.val1.i.i.i, %.val3.i.i.i
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.h, i64 %i.i, i64 %i.g
  %i.j = icmp slt i64 %spec.select.i.i.i.i.i.i.i.i, 0
  br i1 %i.j, label %.preheader.preheader, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs40k4W9msRzi_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECsfR8GmIBoxTX_21lance_namespace_impls.exit

.preheader.preheader:                             ; preds = %.lr.ph
  %i.k = ptrtoint ptr %.val10.i to i64
  store i64 %i.k, ptr %.sroa.0.04, align 8
  %i.l = icmp eq ptr %.pn3, %0
  br i1 %i.l, label %._crit_edge3, label %.lr.ph2

.preheader:                                       ; preds = %.lr.ph2
  %i.m = ptrtoint ptr %.val8.i to i64
  store i64 %i.m, ptr %.sroa.0.0.i1, align 8
  %i.n = icmp eq ptr %i.o, %0
  br i1 %i.n, label %._crit_edge3, label %.lr.ph2

.lr.ph2:                                          ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i1 = phi ptr [ %i.o, %.preheader ], [ %.pn3, %.preheader.preheader ] ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -8 ; 3 uses
  %.val8.i = load ptr, ptr %i.o, align 8, !nonnull !416, !align !417, !noundef !416 ; 3 uses
  %.val.i.i11.i = load ptr, ptr %i.b, align 8, !nonnull !416, !noundef !416
  %.val1.i.i12.i = load i64, ptr %i.c, align 8, !noundef !416 ; 2 uses
  %i.p = getelementptr i8, ptr %.val8.i, i64 8
  %.val2.i.i13.i = load ptr, ptr %i.p, align 8, !nonnull !416, !noundef !416
  %i.q = getelementptr i8, ptr %.val8.i, i64 16
  %.val3.i.i14.i = load i64, ptr %i.q, align 8, !noundef !416 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i15.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val1.i.i12.i, i64 range(i64 0, -9223372036854775808) %.val3.i.i14.i)
  %i.r = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i11.i, ptr nonnull readonly %.val2.i.i13.i, i64 %spec.store.select.i.i.i.i.i.i.i15.i), !alias.scope !88591 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp eq i32 %i.r, 0
  %i.u = sub nsw i64 %.val1.i.i12.i, %.val3.i.i14.i
  %spec.select.i.i.i.i.i.i.i16.i = select i1 %i.t, i64 %i.u, i64 %i.s
  %i.v = icmp slt i64 %spec.select.i.i.i.i.i.i.i16.i, 0
  br i1 %i.v, label %.preheader, label %._crit_edge3

._crit_edge3:                                     ; preds = %.preheader, %.lr.ph2, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i1, %.lr.ph2 ]
  %i.w = ptrtoint ptr %.val9.i to i64
  store i64 %i.w, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !88592
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs40k4W9msRzi_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs40k4W9msRzi_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %.lr.ph, %._crit_edge3
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftxNvYxNtNtBa_3cmp10PartialOrd2ltECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 1, 32) %1, i64 noundef range(i64 1, 14) %2) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %2, %1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %.not1 = icmp samesign eq i64 %2, %1
  br i1 %.not1, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailxNvYxNtNtBa_3cmp10PartialOrd2ltECsfR8GmIBoxTX_21lance_namespace_impls.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailxNvYxNtNtBa_3cmp10PartialOrd2ltECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %.sroa.0.02 = phi ptr [ %i.j, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailxNvYxNtNtBa_3cmp10PartialOrd2ltECsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %i.c, %.lr.ph.preheader ] ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.02, i64 -8 ; 3 uses
  %.val9.i = load i64, ptr %.sroa.0.02, align 8, !alias.scope !88600, !noalias !88601, !noundef !416 ; 3 uses
  %.val10.i = load i64, ptr %i.d, align 8, !alias.scope !88601, !noalias !88600, !noundef !416 ; 2 uses
  %i.e = icmp slt i64 %.val9.i, %.val10.i
  br i1 %i.e, label %.preheader.preheader, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailxNvYxNtNtBa_3cmp10PartialOrd2ltECsfR8GmIBoxTX_21lance_namespace_impls.exit

.preheader.preheader:                             ; preds = %.lr.ph
  store i64 %.val10.i, ptr %.sroa.0.02, align 8
  %i.f = icmp eq ptr %i.d, %0
  br i1 %i.f, label %._crit_edge8, label %.lr.ph7

.preheader:                                       ; preds = %.lr.ph7
  store i64 %.val8.i, ptr %.sroa.0.0.i6, align 8
  %i.g = icmp eq ptr %i.h, %0
  br i1 %i.g, label %._crit_edge8, label %.lr.ph7

.lr.ph7:                                          ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i6 = phi ptr [ %i.h, %.preheader ], [ %i.d, %.preheader.preheader ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.0.i6, i64 -8 ; 3 uses
  %.val8.i = load i64, ptr %i.h, align 8, !alias.scope !88601, !noalias !88600, !noundef !416 ; 2 uses
  %i.i = icmp slt i64 %.val9.i, %.val8.i
  br i1 %i.i, label %.preheader, label %._crit_edge8

._crit_edge8:                                     ; preds = %.preheader, %.lr.ph7, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i6, %.lr.ph7 ]
  store i64 %.val9.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !88602
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailxNvYxNtNtBa_3cmp10PartialOrd2ltECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailxNvYxNtNtBa_3cmp10PartialOrd2ltECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %.lr.ph, %._crit_edge8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3e_18DirectoryNamespace16paginate_indices0E0EB3g_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 36028797018963968) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 36028797018963968) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i102 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i107 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.gy, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.gw, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3m_18DirectoryNamespace16paginate_indices0E0EB3o_.exit
  %.sroa.021.0 = phi i8 [ %i.dw, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3m_18DirectoryNamespace16paginate_indices0E0EB3o_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3m_18DirectoryNamespace16paginate_indices0E0EB3o_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph68, label %._crit_edge

.lr.ph68:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [256 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [256 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88690)
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3l_18DirectoryNamespace16paginate_indices0E0EB3n_.exit.i.thread105, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3l_18DirectoryNamespace16paginate_indices0E0EB3n_.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3l_18DirectoryNamespace16paginate_indices0E0EB3n_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContent7reverseCsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 312
  %.val14.i = load ptr, ptr %i.q, align 8, !alias.scope !88690, !noalias !88691, !nonnull !416, !noundef !416 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 320
  %.val15.i = load i64, ptr %i.r, align 8, !alias.scope !88690, !noalias !88691, !noundef !416 ; 4 uses
  %i.s = getelementptr i8, ptr %i.o, i64 56
  %.val16.i = load ptr, ptr %i.s, align 8, !alias.scope !88690, !noalias !88691, !nonnull !416, !noundef !416
  %i.t = getelementptr i8, ptr %i.o, i64 64
  %.val17.i = load i64, ptr %i.t, align 8, !alias.scope !88690, !noalias !88691, !noundef !416 ; 2 uses
  %spec.store.select.i.i42 = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.u = tail call i32 @memcmp(ptr nonnull readonly %.val14.i, ptr nonnull readonly %.val16.i, i64 %spec.store.select.i.i42), !noalias !88692 ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = icmp eq i32 %i.u, 0
  %i.x = sub i64 %.val15.i, %.val17.i
  %spec.select.i.i43 = select i1 %i.w, i64 %i.x, i64 %i.v
  %i.y = icmp slt i64 %spec.select.i.i43, 0       ; 2 uses
  %.not75 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader53

.preheader53:                                     ; preds = %bb.k
  br i1 %.not75, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3l_18DirectoryNamespace16paginate_indices0E0EB3n_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not75, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3l_18DirectoryNamespace16paginate_indices0E0EB3n_.exit.i.thread105, label %.lr.ph62

.lr.ph:                                           ; preds = %.preheader53, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader53 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader53 ]
  %.sroa.01.0.i.i58 = phi i64 [ %i.ah, %bb.l ], [ 2, %.preheader53 ] ; 3 uses
  %i.z = getelementptr inbounds nuw [256 x i8], ptr %i.o, i64 %.sroa.01.0.i.i58 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 56
  %.val10.i = load ptr, ptr %i.aa, align 8, !alias.scope !88690, !noalias !88691, !nonnull !416, !noundef !416 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 64
  %.val11.i = load i64, ptr %i.ab, align 8, !alias.scope !88690, !noalias !88691, !noundef !416 ; 3 uses
  %spec.store.select.i.i40 = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.ac = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i40), !noalias !88692 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp eq i32 %i.ac, 0
  %i.af = sub i64 %.val11.i, %.val13.i
  %spec.select.i.i41 = select i1 %i.ae, i64 %i.af, i64 %i.ad
  %i.ag = icmp slt i64 %spec.select.i.i41, 0
  br i1 %i.ag, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3l_18DirectoryNamespace16paginate_indices0E0EB3n_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ah = add nuw i64 %.sroa.01.0.i.i58, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3l_18DirectoryNamespace16paginate_indices0E0EB3n_.exit.i, label %.lr.ph

.lr.ph62:                                         ; preds = %.preheader, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i61 = phi i64 [ %i.aq, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [256 x i8], ptr %i.o, i64 %.sroa.01.1.i.i61 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 56
  %.val.i = load ptr, ptr %i.aj, align 8, !alias.scope !88690, !noalias !88691, !nonnull !416, !noundef !416 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 64
  %.val7.i = load i64, ptr %i.ak, align 8, !alias.scope !88690, !noalias !88691, !noundef !416 ; 3 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.al = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i), !noalias !88692 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp eq i32 %i.al, 0
  %i.ao = sub i64 %.val7.i, %.val9.i
  %spec.select.i.i39 = select i1 %i.an, i64 %i.ao, i64 %i.am
  %i.ap = icmp slt i64 %spec.select.i.i39, 0
  br i1 %i.ap, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3l_18DirectoryNamespace16paginate_indices0E0EB3n_.exit.i

bb.m:                                             ; preds = %.lr.ph62
  %i.aq = add nuw i64 %.sroa.01.1.i.i61, 1        ; 2 uses
  %exitcond82.not = icmp eq i64 %i.aq, %i.n
  br i1 %exitcond82.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3l_18DirectoryNamespace16paginate_indices0E0EB3n_.exit.i, label %.lr.ph62

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3l_18DirectoryNamespace16paginate_indices0E0EB3n_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph62
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i61, %.lr.ph62 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i58, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ar = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ar)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3l_18DirectoryNamespace16paginate_indices0E0EB3n_.exit.i.thread105: ; preds = %.preheader
  br i1 %.not5.i107, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContent12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.preheader.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3l_18DirectoryNamespace16paginate_indices0E0EB3n_.exit.i.thread: ; preds = %.preheader53
  br i1 %.not5.i102, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContent7reverseCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3l_18DirectoryNamespace16paginate_indices0E0EB3n_.exit.i
  br i1 %i.y, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContent7reverseCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 36028797018963968) %i.n, i64 %.sroa.01.0)
  %i.as = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3m_18DirectoryNamespace16paginate_indices0E0EB3o_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 36028797018963968) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3o_18DirectoryNamespace16paginate_indices0E0EB3q_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 36028797018963968) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(256) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !88607
  %i.at = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3m_18DirectoryNamespace16paginate_indices0E0EB3o_.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContent7reverseCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContent12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.i.i, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3l_18DirectoryNamespace16paginate_indices0E0EB3n_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4851 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3l_18DirectoryNamespace16paginate_indices0E0EB3n_.exit.i.thread ], [ %.sroa.0.0.i.i103110114, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContent12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.i.i ]
  %i.av = shl nuw nsw i64 %.sroa.0.0.i.i4851, 1
  %i.aw = or disjoint i64 %i.av, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3m_18DirectoryNamespace16paginate_indices0E0EB3o_.exit

bb.q:                                             ; preds = %bb.n
  %i.ax = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88693), !noalias !88691
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88694), !noalias !88691
  %.not.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContent7reverseCsfR8GmIBoxTX_21lance_namespace_impls.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContent12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.preheader.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContent12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3l_18DirectoryNamespace16paginate_indices0E0EB3n_.exit.i.thread105, %bb.q
  %i.ay = phi i64 [ %i.ax, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3l_18DirectoryNamespace16paginate_indices0E0EB3n_.exit.i.thread105 ]
  %.sroa.0.0.i.i103110114 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3l_18DirectoryNamespace16paginate_indices0E0EB3n_.exit.i.thread105 ] ; 2 uses
  %i.az = getelementptr inbounds nuw [256 x i8], ptr %i.o, i64 %.sroa.0.0.i.i103110114
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContent12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContent12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContent12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.i.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContent12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.dn, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContent12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.i.i ], [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContent12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.preheader.i.i ] ; 3 uses
  %i.ba = xor i64 %.sroa.0.016.i.i, -1
  %i.bb = getelementptr inbounds nuw [256 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 17 uses
  %i.bc = getelementptr [256 x i8], ptr %i.az, i64 %i.ba ; 17 uses
  %i.bd = load <2 x i64>, ptr %i.bb, align 8, !alias.scope !88695, !noalias !88696
  %i.be = load <2 x i64>, ptr %i.bc, align 8, !alias.scope !88697, !noalias !88698
  store <2 x i64> %i.be, ptr %i.bb, align 8, !alias.scope !88695, !noalias !88696
  store <2 x i64> %i.bd, ptr %i.bc, align 8, !alias.scope !88697, !noalias !88698
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.bh = load <2 x i64>, ptr %i.bf, align 8, !alias.scope !88699, !noalias !88696
  %i.bi = load <2 x i64>, ptr %i.bg, align 8, !alias.scope !88700, !noalias !88698
  store <2 x i64> %i.bi, ptr %i.bf, align 8, !alias.scope !88699, !noalias !88696
  store <2 x i64> %i.bh, ptr %i.bg, align 8, !alias.scope !88700, !noalias !88698
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 2 uses
  %i.bl = load <2 x i64>, ptr %i.bj, align 8, !alias.scope !88701, !noalias !88696
  %i.bm = load <2 x i64>, ptr %i.bk, align 8, !alias.scope !88702, !noalias !88698
  store <2 x i64> %i.bm, ptr %i.bj, align 8, !alias.scope !88701, !noalias !88696
  store <2 x i64> %i.bl, ptr %i.bk, align 8, !alias.scope !88702, !noalias !88698
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bb, i64 48 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bc, i64 48 ; 2 uses
  %i.bp = load <2 x i64>, ptr %i.bn, align 8, !alias.scope !88703, !noalias !88696
  %i.bq = load <2 x i64>, ptr %i.bo, align 8, !alias.scope !88704, !noalias !88698
  store <2 x i64> %i.bq, ptr %i.bn, align 8, !alias.scope !88703, !noalias !88696
  store <2 x i64> %i.bp, ptr %i.bo, align 8, !alias.scope !88704, !noalias !88698
  %i.br = getelementptr inbounds nuw i8, ptr %i.bb, i64 64 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 64 ; 2 uses
  %i.bt = load <2 x i64>, ptr %i.br, align 8, !alias.scope !88705, !noalias !88696
  %i.bu = load <2 x i64>, ptr %i.bs, align 8, !alias.scope !88706, !noalias !88698
  store <2 x i64> %i.bu, ptr %i.br, align 8, !alias.scope !88705, !noalias !88696
  store <2 x i64> %i.bt, ptr %i.bs, align 8, !alias.scope !88706, !noalias !88698
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bb, i64 80 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bc, i64 80 ; 2 uses
  %i.bx = load <2 x i64>, ptr %i.bv, align 8, !alias.scope !88707, !noalias !88696
  %i.by = load <2 x i64>, ptr %i.bw, align 8, !alias.scope !88708, !noalias !88698
  store <2 x i64> %i.by, ptr %i.bv, align 8, !alias.scope !88707, !noalias !88696
  store <2 x i64> %i.bx, ptr %i.bw, align 8, !alias.scope !88708, !noalias !88698
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bb, i64 96 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bc, i64 96 ; 2 uses
  %i.cb = load <2 x i64>, ptr %i.bz, align 8, !alias.scope !88709, !noalias !88696
  %i.cc = load <2 x i64>, ptr %i.ca, align 8, !alias.scope !88710, !noalias !88698
  store <2 x i64> %i.cc, ptr %i.bz, align 8, !alias.scope !88709, !noalias !88696
  store <2 x i64> %i.cb, ptr %i.ca, align 8, !alias.scope !88710, !noalias !88698
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bb, i64 112 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bc, i64 112 ; 2 uses
  %i.cf = load <2 x i64>, ptr %i.cd, align 8, !alias.scope !88711, !noalias !88696
  %i.cg = load <2 x i64>, ptr %i.ce, align 8, !alias.scope !88712, !noalias !88698
  store <2 x i64> %i.cg, ptr %i.cd, align 8, !alias.scope !88711, !noalias !88696
  store <2 x i64> %i.cf, ptr %i.ce, align 8, !alias.scope !88712, !noalias !88698
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bb, i64 128 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bc, i64 128 ; 2 uses
  %i.cj = load <2 x i64>, ptr %i.ch, align 8, !alias.scope !88713, !noalias !88696
  %i.ck = load <2 x i64>, ptr %i.ci, align 8, !alias.scope !88714, !noalias !88698
  store <2 x i64> %i.ck, ptr %i.ch, align 8, !alias.scope !88713, !noalias !88696
  store <2 x i64> %i.cj, ptr %i.ci, align 8, !alias.scope !88714, !noalias !88698
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bb, i64 144 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bc, i64 144 ; 2 uses
  %i.cn = load <2 x i64>, ptr %i.cl, align 8, !alias.scope !88715, !noalias !88696
  %i.co = load <2 x i64>, ptr %i.cm, align 8, !alias.scope !88716, !noalias !88698
  store <2 x i64> %i.co, ptr %i.cl, align 8, !alias.scope !88715, !noalias !88696
  store <2 x i64> %i.cn, ptr %i.cm, align 8, !alias.scope !88716, !noalias !88698
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bb, i64 160 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bc, i64 160 ; 2 uses
  %i.cr = load <2 x i64>, ptr %i.cp, align 8, !alias.scope !88717, !noalias !88696
  %i.cs = load <2 x i64>, ptr %i.cq, align 8, !alias.scope !88718, !noalias !88698
  store <2 x i64> %i.cs, ptr %i.cp, align 8, !alias.scope !88717, !noalias !88696
  store <2 x i64> %i.cr, ptr %i.cq, align 8, !alias.scope !88718, !noalias !88698
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bb, i64 176 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bc, i64 176 ; 2 uses
  %i.cv = load <2 x i64>, ptr %i.ct, align 8, !alias.scope !88719, !noalias !88696
  %i.cw = load <2 x i64>, ptr %i.cu, align 8, !alias.scope !88720, !noalias !88698
  store <2 x i64> %i.cw, ptr %i.ct, align 8, !alias.scope !88719, !noalias !88696
  store <2 x i64> %i.cv, ptr %i.cu, align 8, !alias.scope !88720, !noalias !88698
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bb, i64 192 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bc, i64 192 ; 2 uses
  %i.cz = load <2 x i64>, ptr %i.cx, align 8, !alias.scope !88721, !noalias !88696
  %i.da = load <2 x i64>, ptr %i.cy, align 8, !alias.scope !88722, !noalias !88698
  store <2 x i64> %i.da, ptr %i.cx, align 8, !alias.scope !88721, !noalias !88696
  store <2 x i64> %i.cz, ptr %i.cy, align 8, !alias.scope !88722, !noalias !88698
  %i.db = getelementptr inbounds nuw i8, ptr %i.bb, i64 208 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bc, i64 208 ; 2 uses
  %i.dd = load <2 x i64>, ptr %i.db, align 8, !alias.scope !88723, !noalias !88696
  %i.de = load <2 x i64>, ptr %i.dc, align 8, !alias.scope !88724, !noalias !88698
  store <2 x i64> %i.de, ptr %i.db, align 8, !alias.scope !88723, !noalias !88696
  store <2 x i64> %i.dd, ptr %i.dc, align 8, !alias.scope !88724, !noalias !88698
  %i.df = getelementptr inbounds nuw i8, ptr %i.bb, i64 224 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bc, i64 224 ; 2 uses
  %i.dh = load <2 x i64>, ptr %i.df, align 8, !alias.scope !88725, !noalias !88696
  %i.di = load <2 x i64>, ptr %i.dg, align 8, !alias.scope !88726, !noalias !88698
  store <2 x i64> %i.di, ptr %i.df, align 8, !alias.scope !88725, !noalias !88696
  store <2 x i64> %i.dh, ptr %i.dg, align 8, !alias.scope !88726, !noalias !88698
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bb, i64 240 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bc, i64 240 ; 2 uses
  %i.dl = load <2 x i64>, ptr %i.dj, align 8, !alias.scope !88727, !noalias !88696
  %i.dm = load <2 x i64>, ptr %i.dk, align 8, !alias.scope !88728, !noalias !88698
  store <2 x i64> %i.dm, ptr %i.dj, align 8, !alias.scope !88727, !noalias !88696
  store <2 x i64> %i.dl, ptr %i.dk, align 8, !alias.scope !88728, !noalias !88698
  %i.dn = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dn, %i.ay
  br i1 %exitcond.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContent7reverseCsfR8GmIBoxTX_21lance_namespace_impls.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContent12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.i.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3m_18DirectoryNamespace16paginate_indices0E0EB3o_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContent7reverseCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %.sroa.0.0.i34 = phi i64 [ %i.aw, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContent7reverseCsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %i.au, %bb.p ], [ %i.as, %bb.o ] ; 2 uses
  %i.do = lshr i64 %.sroa.023.0, 1
  %i.dp = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.dq = sub nsw i64 %factor, %i.do
  %i.dr = add nuw nsw i64 %i.dp, %factor
  %i.ds = mul i64 %i.dq, %.sroa.0.0
  %i.dt = mul i64 %i.dr, %.sroa.0.0
  %i.du = xor i64 %i.dt, %i.ds
  %i.dv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.du, i1 false)
  %i.dw = trunc nuw nsw i64 %i.dv to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph68, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3p_18DirectoryNamespace16paginate_indices0E0EB3r_.exit
  %.sroa.02.167 = phi i64 [ %.sroa.02.0, %.lr.ph68 ], [ %i.dx, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3p_18DirectoryNamespace16paginate_indices0E0EB3r_.exit ] ; 2 uses
  %.sroa.023.166 = phi i64 [ %.sroa.023.0, %.lr.ph68 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3p_18DirectoryNamespace16paginate_indices0E0EB3r_.exit ] ; 4 uses
  %i.dx = add i64 %.sroa.02.167, -1               ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !noundef !416
  %.not29 = icmp ult i8 %i.dz, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3p_18DirectoryNamespace16paginate_indices0E0EB3r_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.166, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3p_18DirectoryNamespace16paginate_indices0E0EB3r_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.167, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3p_18DirectoryNamespace16paginate_indices0E0EB3r_.exit ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.eb, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3e_18DirectoryNamespace16paginate_indices0E0EB3g_:bb.a
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88729)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88730)
  %i.eu = icmp eq i64 %i.ee, 0
  %i.ev = icmp eq i64 %i.ef, 0
  %or.cond.i = or i1 %i.ev, %i.eu
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3f_18DirectoryNamespace16paginate_indices0E0EB3h_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.ef, i64 range(i64 0, -9223372036854775808) %i.ee) ; 2 uses
  %i.ew = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.ew, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3f_18DirectoryNamespace16paginate_indices0E0EB3h_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.ex = getelementptr inbounds nuw [256 x i8], ptr %i.ei, i64 %i.ee ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.ee, %i.ef  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.ex, ptr %i.ei
  %i.ey = shl nuw nsw i64 %.sroa.0.0.i.i35, 8     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.ey, i1 false), !alias.scope !88731
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 %i.ey ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.fa = phi ptr [ %i.fq, %.preheader.i ], [ %i.ez, %.critedge.i ] ; 3 uses
  %i.fb = phi ptr [ %i.fp, %.preheader.i ], [ %i.ex, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.fe, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.fc = getelementptr inbounds i8, ptr %i.fb, i64 -256 ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %i.fa, i64 -256 ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -256 ; 2 uses
  %i.ff = getelementptr i8, ptr %i.fa, i64 -200
  %.val.i.i = load ptr, ptr %i.ff, align 8, !alias.scope !88730, !noalias !88732, !nonnull !416, !noundef !416
  %i.fg = getelementptr i8, ptr %i.fa, i64 -192
  %.val10.i.i = load i64, ptr %i.fg, align 8, !alias.scope !88730, !noalias !88732, !noundef !416 ; 2 uses
  %i.fh = getelementptr i8, ptr %i.fb, i64 -200
  %.val11.i.i = load ptr, ptr %i.fh, align 8, !alias.scope !88729, !noalias !88733, !nonnull !416, !noundef !416
  %i.fi = getelementptr i8, ptr %i.fb, i64 -192
  %.val12.i.i = load i64, ptr %i.fi, align 8, !alias.scope !88729, !noalias !88733, !noundef !416 ; 2 uses
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val10.i.i, i64 %.val12.i.i)
  %i.fj = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val11.i.i, i64 %spec.store.select.i.i.i.i), !noalias !88734 ; 2 uses
  %i.fk = sext i32 %i.fj to i64
  %i.fl = icmp eq i32 %i.fj, 0
  %i.fm = sub i64 %.val10.i.i, %.val12.i.i
  %spec.select.i.i.i.i = select i1 %i.fl, i64 %i.fm, i64 %i.fk ; 2 uses
  %i.fn = icmp sgt i64 %spec.select.i.i.i.i, -1   ; 2 uses
  %..i.i = select i1 %i.fn, ptr %i.fd, ptr %i.fc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.fe, ptr noundef nonnull align 8 dereferenceable(256) %..i.i, i64 256, i1 false), !alias.scope !88731, !noalias !88735
  %i.fo = zext i1 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [256 x i8], ptr %i.fc, i64 %i.fo ; 3 uses
  %spec.select.i.i.lobit.i.i = lshr i64 %spec.select.i.i.i.i, 63
  %i.fq = getelementptr inbounds nuw [256 x i8], ptr %i.fd, i64 %spec.select.i.i.lobit.i.i ; 3 uses
  %i.fr = icmp eq ptr %i.fp, %i.ei
  %i.fs = icmp eq ptr %i.fq, %2
  %or.cond.i.i = select i1 %i.fr, i1 true, i1 %i.fs
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3G_18DirectoryNamespace16paginate_indices0E0EB3I_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.ft = phi ptr [ %i.gh, %.lr.ph.i.i ], [ %i.ei, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.gg, %.lr.ph.i.i ], [ %i.ex, %.critedge.i ] ; 4 uses
  %i.fu = phi ptr [ %i.gf, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 4 uses
  %i.fv = getelementptr i8, ptr %.sroa.0.02.i.i, i64 56
  %.sroa.0.0.val.i.i = load ptr, ptr %i.fv, align 8, !alias.scope !88729, !noalias !88736, !nonnull !416, !noundef !416
  %i.fw = getelementptr i8, ptr %.sroa.0.02.i.i, i64 64
  %.sroa.0.0.val6.i.i = load i64, ptr %i.fw, align 8, !alias.scope !88729, !noalias !88736, !noundef !416 ; 2 uses
  %i.fx = getelementptr i8, ptr %i.fu, i64 56
  %.val.i19.i = load ptr, ptr %i.fx, align 8, !alias.scope !88730, !noalias !88737, !nonnull !416, !noundef !416
  %i.fy = getelementptr i8, ptr %i.fu, i64 64
  %.val7.i.i = load i64, ptr %i.fy, align 8, !alias.scope !88730, !noalias !88737, !noundef !416 ; 2 uses
  %spec.store.select.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val6.i.i, i64 %.val7.i.i)
  %i.fz = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.val.i.i, ptr nonnull readonly %.val.i19.i, i64 %spec.store.select.i.i.i20.i), !noalias !88738 ; 2 uses
  %i.ga = sext i32 %i.fz to i64
  %i.gb = icmp eq i32 %i.fz, 0
  %i.gc = sub i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %spec.select.i.i.i21.i = select i1 %i.gb, i64 %i.gc, i64 %i.ga ; 2 uses
  %i.gd = icmp sgt i64 %spec.select.i.i.i21.i, -1 ; 2 uses
  %spec.select.i.i = select i1 %i.gd, ptr %i.fu, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.ft, ptr noundef nonnull align 8 dereferenceable(256) %spec.select.i.i, i64 256, i1 false), !alias.scope !88731, !noalias !88739
  %i.ge = zext i1 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [256 x i8], ptr %i.fu, i64 %i.ge ; 3 uses
  %spec.select.i.i.lobit.i22.i = lshr i64 %spec.select.i.i.i21.i, 63
  %i.gg = getelementptr inbounds nuw [256 x i8], ptr %.sroa.0.02.i.i, i64 %spec.select.i.i.lobit.i22.i ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ft, i64 256 ; 2 uses
  %i.gi = icmp ne ptr %i.gf, %i.ez
  %i.gj = icmp ne ptr %i.gg, %i.m
  %or.cond.i23.i = select i1 %i.gi, i1 %i.gj, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3G_18DirectoryNamespace16paginate_indices0E0EB3I_.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3G_18DirectoryNamespace16paginate_indices0E0EB3I_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.fp, %.preheader.i ], [ %i.gh, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.fq, %.preheader.i ], [ %i.ez, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.gf, %.lr.ph.i.i ] ; 2 uses
  %i.gk = ptrtoint ptr %.sroa.7.0.i to i64
  %i.gl = ptrtoint ptr %.sroa.0.1.i to i64
  %i.gm = sub nuw i64 %i.gk, %i.gl
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.gm, i1 false), !alias.scope !88731, !noalias !88740
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3f_18DirectoryNamespace16paginate_indices0E0EB3h_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3f_18DirectoryNamespace16paginate_indices0E0EB3h_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3G_18DirectoryNamespace16paginate_indices0E0EB3I_.exit.i
  %i.gn = shl nuw nsw i64 %i.eg, 1
  %i.go = or disjoint i64 %i.gn, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3p_18DirectoryNamespace16paginate_indices0E0EB3r_.exit

bb.z:                                             ; preds = %bb.v
  %i.gp = getelementptr inbounds nuw [256 x i8], ptr %i.ei, i64 %i.ee
  %i.gq = or i64 %i.ef, 1
  %i.gr = tail call range(i64 9, 64) i64 @llvm.ctlz.i64(i64 %i.gq, i1 true)
  %i.gs = trunc nuw nsw i64 %i.gr to i32
  %i.gt = shl nuw nsw i32 %i.gs, 1
  %i.gu = xor i32 %i.gt, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3o_18DirectoryNamespace16paginate_indices0E0EB3q_(ptr noalias noundef nonnull align 8 %i.gp, i64 noundef range(i64 0, 36028797018963968) %i.ef, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 36028797018963968) %3, i32 noundef %i.gu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(256) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !88678
  br label %bb.x

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3p_18DirectoryNamespace16paginate_indices0E0EB3r_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3f_18DirectoryNamespace16paginate_indices0E0EB3h_.exit
  %.sroa.0.0.i = phi i64 [ %i.go, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3f_18DirectoryNamespace16paginate_indices0E0EB3h_.exit ], [ %i.eo, %bb.u ] ; 2 uses
  %i.gv = icmp ugt i64 %i.dx, 1
  br i1 %i.gv, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.gw = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.gx = lshr i64 %.sroa.018.0, 1
  %i.gy = add nuw i64 %i.gx, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.gz = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.gz, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ha = or i64 %1, 1
  %i.hb = tail call range(i64 9, 64) i64 @llvm.ctlz.i64(i64 %i.ha, i1 true)
  %i.hc = trunc nuw nsw i64 %i.hb to i32
  %i.hd = shl nuw nsw i32 %i.hc, 1
  %i.he = xor i32 %i.hd, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_content12IndexContentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3o_18DirectoryNamespace16paginate_indices0E0EB3q_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 36028797018963968) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 36028797018963968) %3, i32 noundef %i.he, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(256) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !88678
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_11sort_by_keyINtNtBa_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3H_18DirectoryNamespace19list_versions_under0s1_0E0EB3J_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 67818912035696881) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i92 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i98 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dj, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dh, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3P_18DirectoryNamespace19list_versions_under0s1_0E0EB3R_.exit
  %.sroa.021.0 = phi i8 [ %i.ap, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3P_18DirectoryNamespace19list_versions_under0s1_0E0EB3R_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3P_18DirectoryNamespace19list_versions_under0s1_0E0EB3R_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph63, label %._crit_edge

.lr.ph63:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %.sroa.09.0 ; 6 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3O_18DirectoryNamespace19list_versions_under0s1_0E0EB3Q_.exit.i.thread96, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3O_18DirectoryNamespace19list_versions_under0s1_0E0EB3Q_.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3O_18DirectoryNamespace19list_versions_under0s1_0E0EB3Q_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 216
  %.val10.i = load i64, ptr %i.q, align 8, !alias.scope !88758, !noalias !88759, !noundef !416 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 80
  %.val11.i = load i64, ptr %i.r, align 8, !alias.scope !88758, !noalias !88759, !noundef !416
  %i.s = icmp slt i64 %.val11.i, %.val10.i        ; 2 uses
  %.not70 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.s, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3O_18DirectoryNamespace19list_versions_under0s1_0E0EB3Q_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3O_18DirectoryNamespace19list_versions_under0s1_0E0EB3Q_.exit.i.thread96, label %.lr.ph57

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader48 ]
  %.sroa.01.0.i.i53 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader48 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [136 x i8], ptr %i.o, i64 %.sroa.01.0.i.i53
  %i.u = getelementptr i8, ptr %i.t, i64 80
  %.val8.i = load i64, ptr %i.u, align 8, !alias.scope !88758, !noalias !88759, !noundef !416 ; 2 uses
  %i.v = icmp slt i64 %.val9.i, %.val8.i
  br i1 %i.v, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3O_18DirectoryNamespace19list_versions_under0s1_0E0EB3Q_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i53, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3O_18DirectoryNamespace19list_versions_under0s1_0E0EB3Q_.exit.i, label %.lr.ph

.lr.ph57:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i56 = phi i64 [ %i.aa, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [136 x i8], ptr %i.o, i64 %.sroa.01.1.i.i56
  %i.y = getelementptr i8, ptr %i.x, i64 80
  %.val.i = load i64, ptr %i.y, align 8, !alias.scope !88758, !noalias !88759, !noundef !416 ; 2 uses
  %i.z = icmp slt i64 %.val7.i, %.val.i
  br i1 %i.z, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3O_18DirectoryNamespace19list_versions_under0s1_0E0EB3Q_.exit.i

bb.m:                                             ; preds = %.lr.ph57
  %i.aa = add nuw i64 %.sroa.01.1.i.i56, 1        ; 2 uses
  %exitcond77.not = icmp eq i64 %i.aa, %i.n
  br i1 %exitcond77.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3O_18DirectoryNamespace19list_versions_under0s1_0E0EB3Q_.exit.i, label %.lr.ph57

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3O_18DirectoryNamespace19list_versions_under0s1_0E0EB3Q_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph57
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i56, %.lr.ph57 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i53, %.lr.ph ], [ %i.n, %bb.l ] ; 4 uses
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ab)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3O_18DirectoryNamespace19list_versions_under0s1_0E0EB3Q_.exit.i.thread96: ; preds = %.preheader
  br i1 %.not5.i98, label %bb.i, label %.thread99

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3O_18DirectoryNamespace19list_versions_under0s1_0E0EB3Q_.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i92, label %bb.i, label %.thread

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3O_18DirectoryNamespace19list_versions_under0s1_0E0EB3Q_.exit.i
  br i1 %i.s, label %.thread99, label %.thread

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 67818912035696881) %i.n, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3P_18DirectoryNamespace19list_versions_under0s1_0E0EB3R_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 67818912035696881) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3R_18DirectoryNamespace19list_versions_under0s1_0E0EB3T_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !88745
  %i.ad = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3P_18DirectoryNamespace19list_versions_under0s1_0E0EB3R_.exit

.thread:                                          ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3O_18DirectoryNamespace19list_versions_under0s1_0E0EB3Q_.exit.i.thread, %bb.j, %.thread99, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i93101, %.thread99 ], [ %i.n, %bb.j ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3O_18DirectoryNamespace19list_versions_under0s1_0E0EB3Q_.exit.i.thread ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3P_18DirectoryNamespace19list_versions_under0s1_0E0EB3R_.exit

.thread99:                                        ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3O_18DirectoryNamespace19list_versions_under0s1_0E0EB3Q_.exit.i.thread96, %bb.n
  %.sroa.0.0.i.i93101 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3O_18DirectoryNamespace19list_versions_under0s1_0E0EB3Q_.exit.i.thread96 ] ; 2 uses
  tail call fastcc void @_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersion7reverseCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i.i93101), !noalias !88759, !inline_history !88745
  br label %.thread

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3P_18DirectoryNamespace19list_versions_under0s1_0E0EB3R_.exit: ; preds = %bb.o, %bb.p, %.thread
  %.sroa.0.0.i34 = phi i64 [ %i.ag, %.thread ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.ah = lshr i64 %.sroa.023.0, 1
  %i.ai = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aj = sub nsw i64 %factor, %i.ah
  %i.ak = add nuw nsw i64 %i.ai, %factor
  %i.al = mul i64 %i.aj, %.sroa.0.0
  %i.am = mul i64 %i.ak, %.sroa.0.0
  %i.an = xor i64 %i.am, %i.al
  %i.ao = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.an, i1 false)
  %i.ap = trunc nuw nsw i64 %i.ao to i8
  br label %bb.g

bb.q:                                             ; preds = %.lr.ph63, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3S_18DirectoryNamespace19list_versions_under0s1_0E0EB3U_.exit
  %.sroa.02.162 = phi i64 [ %.sroa.02.0, %.lr.ph63 ], [ %i.aq, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3S_18DirectoryNamespace19list_versions_under0s1_0E0EB3U_.exit ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.023.0, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3S_18DirectoryNamespace19list_versions_under0s1_0E0EB3U_.exit ] ; 4 uses
  %i.aq = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !noundef !416
  %.not29 = icmp ult i8 %i.as, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3S_18DirectoryNamespace19list_versions_under0s1_0E0EB3U_.exit, %bb.q, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %bb.q ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3S_18DirectoryNamespace19list_versions_under0s1_0E0EB3U_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %bb.q ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3S_18DirectoryNamespace19list_versions_under0s1_0E0EB3U_.exit ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.au, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.aq
  %i.aw = load i64, ptr %i.av, align 8, !noundef !416 ; 3 uses
  %i.ax = lshr i64 %i.aw, 1                       ; 8 uses
  %i.ay = lshr i64 %.sroa.023.161, 1              ; 6 uses
  %i.az = add nuw i64 %i.ax, %i.ay                ; 4 uses
  %i.ba = sub i64 %.sroa.09.0, %i.az
  %i.bb = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %i.ba ; 6 uses
  %i.bc = icmp samesign ugt i64 %i.az, %3
  %i.bd = trunc i64 %.sroa.023.161 to i1
  %i.be = or i64 %i.aw, %.sroa.023.161
  %i.bf = trunc i64 %i.be to i1
  %or.cond3.i = or i1 %i.bc, %i.bf
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bg = trunc i64 %i.aw to i1
  br i1 %i.bg, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bh = shl nuw nsw i64 %i.az, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3S_18DirectoryNamespace19list_versions_under0s1_0E0EB3U_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bd, label %bb.w, label %bb.y

bb.v:                                             ; preds = %bb.s
  %i.bi = or i64 %i.ax, 1
  %i.bj = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.bi, i1 true)
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = shl nuw nsw i32 %i.bk, 1
  %i.bm = xor i32 %i.bl, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3R_18DirectoryNamespace19list_versions_under0s1_0E0EB3T_(ptr noalias noundef nonnull align 8 %i.bb, i64 noundef range(i64 0, 67818912035696881) %i.ax, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i32 noundef %i.bm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !88746
  br label %bb.u

bb.w:                                             ; preds = %bb.y, %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88760)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88761)
  %i.bn = icmp eq i64 %i.ax, 0
  %i.bo = icmp eq i64 %i.ay, 0
  %or.cond.i = or i1 %i.bo, %i.bn
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3I_18DirectoryNamespace19list_versions_under0s1_0E0EB3K_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 range(i64 0, -9223372036854775808) %i.ax) ; 2 uses
  %i.bp = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.bp, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3I_18DirectoryNamespace19list_versions_under0s1_0E0EB3K_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.x
  %i.bq = getelementptr inbounds nuw [136 x i8], ptr %i.bb, i64 %i.ax ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.ax, %i.ay  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.bq, ptr %i.bb
  %i.br = mul nuw nsw i64 %.sroa.0.0.i.i35, 136   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.br, i1 false), !alias.scope !88762
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 %i.br ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.bt = phi ptr [ %i.cf, %.preheader.i ], [ %i.bs, %.critedge.i ] ; 2 uses
  %i.bu = phi ptr [ %i.cd, %.preheader.i ], [ %i.bq, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.bx, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -136 ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bt, i64 -136 ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -136 ; 2 uses
  %i.by = getelementptr i8, ptr %i.bt, i64 -56
  %.val.i.i = load i64, ptr %i.by, align 8, !alias.scope !88761, !noalias !88763, !noundef !416
  %i.bz = getelementptr i8, ptr %i.bu, i64 -56
  %.val10.i.i = load i64, ptr %i.bz, align 8, !alias.scope !88760, !noalias !88764, !noundef !416
  %i.ca = icmp slt i64 %.val10.i.i, %.val.i.i     ; 3 uses
  %..i.i = select i1 %i.ca, ptr %i.bv, ptr %i.bw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.bx, ptr noundef nonnull align 8 dereferenceable(136) %..i.i, i64 136, i1 false), !alias.scope !88762, !noalias !88765
  %i.cb = xor i1 %i.ca, true
  %i.cc = zext i1 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [136 x i8], ptr %i.bv, i64 %i.cc ; 3 uses
  %i.ce = zext i1 %i.ca to i64
  %i.cf = getelementptr inbounds nuw [136 x i8], ptr %i.bw, i64 %i.ce ; 3 uses
  %i.cg = icmp eq ptr %i.cd, %i.bb
  %i.ch = icmp eq ptr %i.cf, %2
  %or.cond.i.i = select i1 %i.cg, i1 true, i1 %i.ch
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB49_18DirectoryNamespace19list_versions_under0s1_0E0EB4b_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.ci = phi ptr [ %i.cs, %.lr.ph.i.i ], [ %i.bb, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.cr, %.lr.ph.i.i ], [ %i.bq, %.critedge.i ] ; 3 uses
  %i.cj = phi ptr [ %i.cp, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %i.ck = getelementptr i8, ptr %.sroa.0.02.i.i, i64 80
  %.sroa.0.0.val.i.i = load i64, ptr %i.ck, align 8, !alias.scope !88760, !noalias !88766, !noundef !416
  %i.cl = getelementptr i8, ptr %i.cj, i64 80
  %.val.i19.i = load i64, ptr %i.cl, align 8, !alias.scope !88761, !noalias !88767, !noundef !416
  %i.cm = icmp slt i64 %.val.i19.i, %.sroa.0.0.val.i.i ; 3 uses
  %i.cn = xor i1 %i.cm, true
  %spec.select.i.i = select i1 %i.cm, ptr %.sroa.0.02.i.i, ptr %i.cj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ci, ptr noundef nonnull align 8 dereferenceable(136) %spec.select.i.i, i64 136, i1 false), !alias.scope !88762, !noalias !88768
  %i.co = zext i1 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [136 x i8], ptr %i.cj, i64 %i.co ; 3 uses
  %i.cq = zext i1 %i.cm to i64
  %i.cr = getelementptr inbounds nuw [136 x i8], ptr %.sroa.0.02.i.i, i64 %i.cq ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 136 ; 2 uses
  %i.ct = icmp ne ptr %i.cp, %i.bs
  %i.cu = icmp ne ptr %i.cr, %i.m
  %or.cond.i20.i = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB49_18DirectoryNamespace19list_versions_under0s1_0E0EB4b_.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB49_18DirectoryNamespace19list_versions_under0s1_0E0EB4b_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.cd, %.preheader.i ], [ %i.cs, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.cf, %.preheader.i ], [ %i.bs, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.cp, %.lr.ph.i.i ] ; 2 uses
  %i.cv = ptrtoint ptr %.sroa.7.0.i to i64
  %i.cw = ptrtoint ptr %.sroa.0.1.i to i64
  %i.cx = sub nuw i64 %i.cv, %i.cw
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.cx, i1 false), !alias.scope !88762, !noalias !88769
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3I_18DirectoryNamespace19list_versions_under0s1_0E0EB3K_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3I_18DirectoryNamespace19list_versions_under0s1_0E0EB3K_.exit: ; preds = %bb.w, %bb.x, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB49_18DirectoryNamespace19list_versions_under0s1_0E0EB4b_.exit.i
  %i.cy = shl nuw nsw i64 %i.az, 1
  %i.cz = or disjoint i64 %i.cy, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3S_18DirectoryNamespace19list_versions_under0s1_0E0EB3U_.exit

bb.y:                                             ; preds = %bb.u
  %i.da = getelementptr inbounds nuw [136 x i8], ptr %i.bb, i64 %i.ax
  %i.db = or i64 %i.ay, 1
  %i.dc = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.db, i1 true)
  %i.dd = trunc nuw nsw i64 %i.dc to i32
  %i.de = shl nuw nsw i32 %i.dd, 1
  %i.df = xor i32 %i.de, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3R_18DirectoryNamespace19list_versions_under0s1_0E0EB3T_(ptr noalias noundef nonnull align 8 %i.da, i64 noundef range(i64 0, 67818912035696881) %i.ay, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i32 noundef %i.df, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !88746
  br label %bb.w

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3S_18DirectoryNamespace19list_versions_under0s1_0E0EB3U_.exit: ; preds = %bb.t, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3I_18DirectoryNamespace19list_versions_under0s1_0E0EB3K_.exit
  %.sroa.0.0.i = phi i64 [ %i.cz, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3I_18DirectoryNamespace19list_versions_under0s1_0E0EB3K_.exit ], [ %i.bh, %bb.t ] ; 2 uses
  %i.dg = icmp ugt i64 %i.aq, 1
  br i1 %i.dg, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.dh = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.di = lshr i64 %.sroa.018.0, 1
  %i.dj = add nuw i64 %i.di, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.dk = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dk, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dl = or i64 %1, 1
  %i.dm = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.dl, i1 true)
  %i.dn = trunc nuw nsw i64 %i.dm to i32
  %i.do = shl nuw nsw i32 %i.dn, 1
  %i.dp = xor i32 %i.do, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReversexENCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3R_18DirectoryNamespace19list_versions_under0s1_0E0EB3T_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 67818912035696881) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i32 noundef %i.dp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !88746
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3m_18DirectoryNamespace19list_versions_under0s2_0E0EB3o_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 67818912035696881) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i92 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i98 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dj, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dh, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3u_18DirectoryNamespace19list_versions_under0s2_0E0EB3w_.exit
  %.sroa.021.0 = phi i8 [ %i.ap, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3u_18DirectoryNamespace19list_versions_under0s2_0E0EB3w_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3u_18DirectoryNamespace19list_versions_under0s2_0E0EB3w_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph63, label %._crit_edge

.lr.ph63:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %.sroa.09.0 ; 6 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3t_18DirectoryNamespace19list_versions_under0s2_0E0EB3v_.exit.i.thread96, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3t_18DirectoryNamespace19list_versions_under0s2_0E0EB3v_.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3t_18DirectoryNamespace19list_versions_under0s2_0E0EB3v_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 216
  %.val10.i = load i64, ptr %i.q, align 8, !alias.scope !88787, !noalias !88788, !noundef !416 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 80
  %.val11.i = load i64, ptr %i.r, align 8, !alias.scope !88787, !noalias !88788, !noundef !416
  %i.s = icmp slt i64 %.val10.i, %.val11.i        ; 2 uses
  %.not70 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.s, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3t_18DirectoryNamespace19list_versions_under0s2_0E0EB3v_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3t_18DirectoryNamespace19list_versions_under0s2_0E0EB3v_.exit.i.thread96, label %.lr.ph57

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader48 ]
  %.sroa.01.0.i.i53 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader48 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [136 x i8], ptr %i.o, i64 %.sroa.01.0.i.i53
  %i.u = getelementptr i8, ptr %i.t, i64 80
  %.val8.i = load i64, ptr %i.u, align 8, !alias.scope !88787, !noalias !88788, !noundef !416 ; 2 uses
  %i.v = icmp slt i64 %.val8.i, %.val9.i
  br i1 %i.v, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3t_18DirectoryNamespace19list_versions_under0s2_0E0EB3v_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i53, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3t_18DirectoryNamespace19list_versions_under0s2_0E0EB3v_.exit.i, label %.lr.ph

.lr.ph57:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i56 = phi i64 [ %i.aa, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [136 x i8], ptr %i.o, i64 %.sroa.01.1.i.i56
  %i.y = getelementptr i8, ptr %i.x, i64 80
  %.val.i = load i64, ptr %i.y, align 8, !alias.scope !88787, !noalias !88788, !noundef !416 ; 2 uses
  %i.z = icmp slt i64 %.val.i, %.val7.i
  br i1 %i.z, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3t_18DirectoryNamespace19list_versions_under0s2_0E0EB3v_.exit.i

bb.m:                                             ; preds = %.lr.ph57
  %i.aa = add nuw i64 %.sroa.01.1.i.i56, 1        ; 2 uses
  %exitcond77.not = icmp eq i64 %i.aa, %i.n
  br i1 %exitcond77.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3t_18DirectoryNamespace19list_versions_under0s2_0E0EB3v_.exit.i, label %.lr.ph57

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3t_18DirectoryNamespace19list_versions_under0s2_0E0EB3v_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph57
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i56, %.lr.ph57 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i53, %.lr.ph ], [ %i.n, %bb.l ] ; 4 uses
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ab)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3t_18DirectoryNamespace19list_versions_under0s2_0E0EB3v_.exit.i.thread96: ; preds = %.preheader
  br i1 %.not5.i98, label %bb.i, label %.thread99

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3t_18DirectoryNamespace19list_versions_under0s2_0E0EB3v_.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i92, label %bb.i, label %.thread

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3t_18DirectoryNamespace19list_versions_under0s2_0E0EB3v_.exit.i
  br i1 %i.s, label %.thread99, label %.thread

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 67818912035696881) %i.n, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3u_18DirectoryNamespace19list_versions_under0s2_0E0EB3w_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 67818912035696881) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3w_18DirectoryNamespace19list_versions_under0s2_0E0EB3y_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !88774
  %i.ad = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3u_18DirectoryNamespace19list_versions_under0s2_0E0EB3w_.exit

.thread:                                          ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3t_18DirectoryNamespace19list_versions_under0s2_0E0EB3v_.exit.i.thread, %bb.j, %.thread99, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i93101, %.thread99 ], [ %i.n, %bb.j ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3t_18DirectoryNamespace19list_versions_under0s2_0E0EB3v_.exit.i.thread ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3u_18DirectoryNamespace19list_versions_under0s2_0E0EB3w_.exit

.thread99:                                        ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3t_18DirectoryNamespace19list_versions_under0s2_0E0EB3v_.exit.i.thread96, %bb.n
  %.sroa.0.0.i.i93101 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3t_18DirectoryNamespace19list_versions_under0s2_0E0EB3v_.exit.i.thread96 ] ; 2 uses
  tail call fastcc void @_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersion7reverseCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i.i93101), !noalias !88788, !inline_history !88774
  br label %.thread

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3u_18DirectoryNamespace19list_versions_under0s2_0E0EB3w_.exit: ; preds = %bb.o, %bb.p, %.thread
  %.sroa.0.0.i34 = phi i64 [ %i.ag, %.thread ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.ah = lshr i64 %.sroa.023.0, 1
  %i.ai = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aj = sub nsw i64 %factor, %i.ah
  %i.ak = add nuw nsw i64 %i.ai, %factor
  %i.al = mul i64 %i.aj, %.sroa.0.0
  %i.am = mul i64 %i.ak, %.sroa.0.0
  %i.an = xor i64 %i.am, %i.al
  %i.ao = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.an, i1 false)
  %i.ap = trunc nuw nsw i64 %i.ao to i8
  br label %bb.g

bb.q:                                             ; preds = %.lr.ph63, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3x_18DirectoryNamespace19list_versions_under0s2_0E0EB3z_.exit
  %.sroa.02.162 = phi i64 [ %.sroa.02.0, %.lr.ph63 ], [ %i.aq, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3x_18DirectoryNamespace19list_versions_under0s2_0E0EB3z_.exit ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.023.0, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3x_18DirectoryNamespace19list_versions_under0s2_0E0EB3z_.exit ] ; 4 uses
  %i.aq = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !noundef !416
  %.not29 = icmp ult i8 %i.as, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3x_18DirectoryNamespace19list_versions_under0s2_0E0EB3z_.exit, %bb.q, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %bb.q ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3x_18DirectoryNamespace19list_versions_under0s2_0E0EB3z_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %bb.q ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3x_18DirectoryNamespace19list_versions_under0s2_0E0EB3z_.exit ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.au, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.aq
  %i.aw = load i64, ptr %i.av, align 8, !noundef !416 ; 3 uses
  %i.ax = lshr i64 %i.aw, 1                       ; 8 uses
  %i.ay = lshr i64 %.sroa.023.161, 1              ; 6 uses
  %i.az = add nuw i64 %i.ax, %i.ay                ; 4 uses
  %i.ba = sub i64 %.sroa.09.0, %i.az
  %i.bb = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %i.ba ; 6 uses
  %i.bc = icmp samesign ugt i64 %i.az, %3
  %i.bd = trunc i64 %.sroa.023.161 to i1
  %i.be = or i64 %i.aw, %.sroa.023.161
  %i.bf = trunc i64 %i.be to i1
  %or.cond3.i = or i1 %i.bc, %i.bf
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bg = trunc i64 %i.aw to i1
  br i1 %i.bg, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bh = shl nuw nsw i64 %i.az, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3x_18DirectoryNamespace19list_versions_under0s2_0E0EB3z_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bd, label %bb.w, label %bb.y

bb.v:                                             ; preds = %bb.s
  %i.bi = or i64 %i.ax, 1
  %i.bj = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.bi, i1 true)
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = shl nuw nsw i32 %i.bk, 1
  %i.bm = xor i32 %i.bl, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3w_18DirectoryNamespace19list_versions_under0s2_0E0EB3y_(ptr noalias noundef nonnull align 8 %i.bb, i64 noundef range(i64 0, 67818912035696881) %i.ax, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i32 noundef %i.bm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !88775
  br label %bb.u

bb.w:                                             ; preds = %bb.y, %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88789)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88790)
  %i.bn = icmp eq i64 %i.ax, 0
  %i.bo = icmp eq i64 %i.ay, 0
  %or.cond.i = or i1 %i.bo, %i.bn
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3n_18DirectoryNamespace19list_versions_under0s2_0E0EB3p_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 range(i64 0, -9223372036854775808) %i.ax) ; 2 uses
  %i.bp = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.bp, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3n_18DirectoryNamespace19list_versions_under0s2_0E0EB3p_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.x
  %i.bq = getelementptr inbounds nuw [136 x i8], ptr %i.bb, i64 %i.ax ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.ax, %i.ay  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.bq, ptr %i.bb
  %i.br = mul nuw nsw i64 %.sroa.0.0.i.i35, 136   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.br, i1 false), !alias.scope !88791
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 %i.br ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.bt = phi ptr [ %i.cf, %.preheader.i ], [ %i.bs, %.critedge.i ] ; 2 uses
  %i.bu = phi ptr [ %i.cd, %.preheader.i ], [ %i.bq, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.bx, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -136 ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bt, i64 -136 ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -136 ; 2 uses
  %i.by = getelementptr i8, ptr %i.bt, i64 -56
  %.val.i.i = load i64, ptr %i.by, align 8, !alias.scope !88790, !noalias !88792, !noundef !416
  %i.bz = getelementptr i8, ptr %i.bu, i64 -56
  %.val10.i.i = load i64, ptr %i.bz, align 8, !alias.scope !88789, !noalias !88793, !noundef !416
  %i.ca = icmp slt i64 %.val.i.i, %.val10.i.i     ; 3 uses
  %..i.i = select i1 %i.ca, ptr %i.bv, ptr %i.bw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.bx, ptr noundef nonnull align 8 dereferenceable(136) %..i.i, i64 136, i1 false), !alias.scope !88791, !noalias !88794
  %i.cb = xor i1 %i.ca, true
  %i.cc = zext i1 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [136 x i8], ptr %i.bv, i64 %i.cc ; 3 uses
  %i.ce = zext i1 %i.ca to i64
  %i.cf = getelementptr inbounds nuw [136 x i8], ptr %i.bw, i64 %i.ce ; 3 uses
  %i.cg = icmp eq ptr %i.cd, %i.bb
  %i.ch = icmp eq ptr %i.cf, %2
  %or.cond.i.i = select i1 %i.cg, i1 true, i1 %i.ch
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3O_18DirectoryNamespace19list_versions_under0s2_0E0EB3Q_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.ci = phi ptr [ %i.cs, %.lr.ph.i.i ], [ %i.bb, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.cr, %.lr.ph.i.i ], [ %i.bq, %.critedge.i ] ; 3 uses
  %i.cj = phi ptr [ %i.cp, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %i.ck = getelementptr i8, ptr %.sroa.0.02.i.i, i64 80
  %.sroa.0.0.val.i.i = load i64, ptr %i.ck, align 8, !alias.scope !88789, !noalias !88795, !noundef !416
  %i.cl = getelementptr i8, ptr %i.cj, i64 80
  %.val.i19.i = load i64, ptr %i.cl, align 8, !alias.scope !88790, !noalias !88796, !noundef !416
  %i.cm = icmp slt i64 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.cn = xor i1 %i.cm, true
  %spec.select.i.i = select i1 %i.cm, ptr %.sroa.0.02.i.i, ptr %i.cj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ci, ptr noundef nonnull align 8 dereferenceable(136) %spec.select.i.i, i64 136, i1 false), !alias.scope !88791, !noalias !88797
  %i.co = zext i1 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [136 x i8], ptr %i.cj, i64 %i.co ; 3 uses
  %i.cq = zext i1 %i.cm to i64
  %i.cr = getelementptr inbounds nuw [136 x i8], ptr %.sroa.0.02.i.i, i64 %i.cq ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 136 ; 2 uses
  %i.ct = icmp ne ptr %i.cp, %i.bs
  %i.cu = icmp ne ptr %i.cr, %i.m
  %or.cond.i20.i = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3O_18DirectoryNamespace19list_versions_under0s2_0E0EB3Q_.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3O_18DirectoryNamespace19list_versions_under0s2_0E0EB3Q_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.cd, %.preheader.i ], [ %i.cs, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.cf, %.preheader.i ], [ %i.bs, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.cp, %.lr.ph.i.i ] ; 2 uses
  %i.cv = ptrtoint ptr %.sroa.7.0.i to i64
  %i.cw = ptrtoint ptr %.sroa.0.1.i to i64
  %i.cx = sub nuw i64 %i.cv, %i.cw
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.cx, i1 false), !alias.scope !88791, !noalias !88798
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3n_18DirectoryNamespace19list_versions_under0s2_0E0EB3p_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3n_18DirectoryNamespace19list_versions_under0s2_0E0EB3p_.exit: ; preds = %bb.w, %bb.x, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3O_18DirectoryNamespace19list_versions_under0s2_0E0EB3Q_.exit.i
  %i.cy = shl nuw nsw i64 %i.az, 1
  %i.cz = or disjoint i64 %i.cy, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3x_18DirectoryNamespace19list_versions_under0s2_0E0EB3z_.exit

bb.y:                                             ; preds = %bb.u
  %i.da = getelementptr inbounds nuw [136 x i8], ptr %i.bb, i64 %i.ax
  %i.db = or i64 %i.ay, 1
  %i.dc = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.db, i1 true)
  %i.dd = trunc nuw nsw i64 %i.dc to i32
  %i.de = shl nuw nsw i32 %i.dd, 1
  %i.df = xor i32 %i.de, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3w_18DirectoryNamespace19list_versions_under0s2_0E0EB3y_(ptr noalias noundef nonnull align 8 %i.da, i64 noundef range(i64 0, 67818912035696881) %i.ay, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i32 noundef %i.df, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !88775
  br label %bb.w

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3x_18DirectoryNamespace19list_versions_under0s2_0E0EB3z_.exit: ; preds = %bb.t, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3n_18DirectoryNamespace19list_versions_under0s2_0E0EB3p_.exit
  %.sroa.0.0.i = phi i64 [ %i.cz, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3n_18DirectoryNamespace19list_versions_under0s2_0E0EB3p_.exit ], [ %i.bh, %bb.t ] ; 2 uses
  %i.dg = icmp ugt i64 %i.aq, 1
  br i1 %i.dg, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.dh = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.di = lshr i64 %.sroa.018.0, 1
  %i.dj = add nuw i64 %i.di, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.dk = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dk, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dl = or i64 %1, 1
  %i.dm = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.dl, i1 true)
  %i.dn = trunc nuw nsw i64 %i.dm to i32
  %i.do = shl nuw nsw i32 %i.dn, 1
  %i.dp = xor i32 %i.do, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13table_version12TableVersionNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyxNCNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3w_18DirectoryNamespace19list_versions_under0s2_0E0EB3y_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 67818912035696881) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i32 noundef %i.dp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !88775
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_11sort_by_keyyNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB2Q_17ManifestNamespace35manifest_from_overwrite_transactions_0E0EB2U_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 38430716820228233) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 38430716820228233) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i93 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i98 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.fw, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.fu, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB2Y_17ManifestNamespace35manifest_from_overwrite_transactions_0E0EB32_.exit
  %.sroa.021.0 = phi i8 [ %i.dc, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB2Y_17ManifestNamespace35manifest_from_overwrite_transactions_0E0EB32_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB2Y_17ManifestNamespace35manifest_from_overwrite_transactions_0E0EB32_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph63, label %._crit_edge

.lr.ph63:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [240 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [240 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB2X_17ManifestNamespace35manifest_from_overwrite_transactions_0E0EB31_.exit.i.thread96, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB2X_17ManifestNamespace35manifest_from_overwrite_transactions_0E0EB31_.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB2X_17ManifestNamespace35manifest_from_overwrite_transactions_0E0EB31_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment7reverseCsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 472
  %.val10.i = load i64, ptr %i.q, align 8, !alias.scope !88882, !noalias !88883, !noundef !416 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 232
  %.val11.i = load i64, ptr %i.r, align 8, !alias.scope !88882, !noalias !88883, !noundef !416
  %i.s = icmp ult i64 %.val10.i, %.val11.i        ; 2 uses
  %.not70 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.s, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB2X_17ManifestNamespace35manifest_from_overwrite_transactions_0E0EB31_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB2X_17ManifestNamespace35manifest_from_overwrite_transactions_0E0EB31_.exit.i.thread96, label %.lr.ph57

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader48 ]
  %.sroa.01.0.i.i53 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader48 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [240 x i8], ptr %i.o, i64 %.sroa.01.0.i.i53
  %i.u = getelementptr i8, ptr %i.t, i64 232
  %.val8.i = load i64, ptr %i.u, align 8, !alias.scope !88882, !noalias !88883, !noundef !416 ; 2 uses
  %i.v = icmp ult i64 %.val8.i, %.val9.i
  br i1 %i.v, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB2X_17ManifestNamespace35manifest_from_overwrite_transactions_0E0EB31_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i53, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB2X_17ManifestNamespace35manifest_from_overwrite_transactions_0E0EB31_.exit.i, label %.lr.ph

.lr.ph57:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i56 = phi i64 [ %i.aa, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [240 x i8], ptr %i.o, i64 %.sroa.01.1.i.i56
  %i.y = getelementptr i8, ptr %i.x, i64 232
  %.val.i = load i64, ptr %i.y, align 8, !alias.scope !88882, !noalias !88883, !noundef !416 ; 2 uses
  %i.z = icmp ult i64 %.val.i, %.val7.i
  br i1 %i.z, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB2X_17ManifestNamespace35manifest_from_overwrite_transactions_0E0EB31_.exit.i

bb.m:                                             ; preds = %.lr.ph57
  %i.aa = add nuw i64 %.sroa.01.1.i.i56, 1        ; 2 uses
  %exitcond77.not = icmp eq i64 %i.aa, %i.n
  br i1 %exitcond77.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB2X_17ManifestNamespace35manifest_from_overwrite_transactions_0E0EB31_.exit.i, label %.lr.ph57

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB2X_17ManifestNamespace35manifest_from_overwrite_transactions_0E0EB31_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph57
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i56, %.lr.ph57 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i53, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ab)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB2X_17ManifestNamespace35manifest_from_overwrite_transactions_0E0EB31_.exit.i.thread96: ; preds = %.preheader
  br i1 %.not5.i98, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.preheader.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB2X_17ManifestNamespace35manifest_from_overwrite_transactions_0E0EB31_.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i93, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment7reverseCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB2X_17ManifestNamespace35manifest_from_overwrite_transactions_0E0EB31_.exit.i
  br i1 %i.s, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment7reverseCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 38430716820228233) %i.n, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB2Y_17ManifestNamespace35manifest_from_overwrite_transactions_0E0EB32_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 38430716820228233) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB30_17ManifestNamespace35manifest_from_overwrite_transactions_0E0EB34_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 38430716820228233) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(240) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !88803
  %i.ad = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB2Y_17ManifestNamespace35manifest_from_overwrite_transactions_0E0EB32_.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment7reverseCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.i.i, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB2X_17ManifestNamespace35manifest_from_overwrite_transactions_0E0EB31_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB2X_17ManifestNamespace35manifest_from_overwrite_transactions_0E0EB31_.exit.i.thread ], [ %.sroa.0.0.i.i94101105, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB2Y_17ManifestNamespace35manifest_from_overwrite_transactions_0E0EB32_.exit

bb.q:                                             ; preds = %bb.n
  %i.ah = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88884), !noalias !88883
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88885), !noalias !88883
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment7reverseCsfR8GmIBoxTX_21lance_namespace_impls.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.preheader.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB2X_17ManifestNamespace35manifest_from_overwrite_transactions_0E0EB31_.exit.i.thread96, %bb.q
  %i.ai = phi i64 [ %i.ah, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB2X_17ManifestNamespace35manifest_from_overwrite_transactions_0E0EB31_.exit.i.thread96 ]
  %.sroa.0.0.i.i94101105 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB2X_17ManifestNamespace35manifest_from_overwrite_transactions_0E0EB31_.exit.i.thread96 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [240 x i8], ptr %i.o, i64 %.sroa.0.0.i.i94101105
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.i.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ct, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.i.i ], [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.preheader.i.i ] ; 3 uses
  %i.ak = xor i64 %.sroa.0.016.i.i, -1
  %i.al = getelementptr inbounds nuw [240 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 16 uses
  %i.am = getelementptr [240 x i8], ptr %i.aj, i64 %i.ak ; 16 uses
  %i.an = load <2 x i64>, ptr %i.al, align 8, !alias.scope !88886, !noalias !88887
  %i.ao = load <2 x i64>, ptr %i.am, align 8, !alias.scope !88888, !noalias !88889
  store <2 x i64> %i.ao, ptr %i.al, align 8, !alias.scope !88886, !noalias !88887
  store <2 x i64> %i.an, ptr %i.am, align 8, !alias.scope !88888, !noalias !88889
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ar = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !88890, !noalias !88887
  %i.as = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !88891, !noalias !88889
  store <2 x i64> %i.as, ptr %i.ap, align 8, !alias.scope !88890, !noalias !88887
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !alias.scope !88891, !noalias !88889
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  %i.av = load <2 x i64>, ptr %i.at, align 8, !alias.scope !88892, !noalias !88887
  %i.aw = load <2 x i64>, ptr %i.au, align 8, !alias.scope !88893, !noalias !88889
  store <2 x i64> %i.aw, ptr %i.at, align 8, !alias.scope !88892, !noalias !88887
  store <2 x i64> %i.av, ptr %i.au, align 8, !alias.scope !88893, !noalias !88889
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 48 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 48 ; 2 uses
  %i.az = load <2 x i64>, ptr %i.ax, align 8, !alias.scope !88894, !noalias !88887
  %i.ba = load <2 x i64>, ptr %i.ay, align 8, !alias.scope !88895, !noalias !88889
  store <2 x i64> %i.ba, ptr %i.ax, align 8, !alias.scope !88894, !noalias !88887
  store <2 x i64> %i.az, ptr %i.ay, align 8, !alias.scope !88895, !noalias !88889
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 64 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 64 ; 2 uses
  %i.bd = load <2 x i64>, ptr %i.bb, align 8, !alias.scope !88896, !noalias !88887
  %i.be = load <2 x i64>, ptr %i.bc, align 8, !alias.scope !88897, !noalias !88889
  store <2 x i64> %i.be, ptr %i.bb, align 8, !alias.scope !88896, !noalias !88887
  store <2 x i64> %i.bd, ptr %i.bc, align 8, !alias.scope !88897, !noalias !88889
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 80 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 80 ; 2 uses
  %i.bh = load <2 x i64>, ptr %i.bf, align 8, !alias.scope !88898, !noalias !88887
  %i.bi = load <2 x i64>, ptr %i.bg, align 8, !alias.scope !88899, !noalias !88889
  store <2 x i64> %i.bi, ptr %i.bf, align 8, !alias.scope !88898, !noalias !88887
  store <2 x i64> %i.bh, ptr %i.bg, align 8, !alias.scope !88899, !noalias !88889
  %i.bj = getelementptr inbounds nuw i8, ptr %i.al, i64 96 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 96 ; 2 uses
  %i.bl = load <2 x i64>, ptr %i.bj, align 8, !alias.scope !88900, !noalias !88887
  %i.bm = load <2 x i64>, ptr %i.bk, align 8, !alias.scope !88901, !noalias !88889
  store <2 x i64> %i.bm, ptr %i.bj, align 8, !alias.scope !88900, !noalias !88887
  store <2 x i64> %i.bl, ptr %i.bk, align 8, !alias.scope !88901, !noalias !88889
  %i.bn = getelementptr inbounds nuw i8, ptr %i.al, i64 112 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.am, i64 112 ; 2 uses
  %i.bp = load <2 x i64>, ptr %i.bn, align 8, !alias.scope !88902, !noalias !88887
  %i.bq = load <2 x i64>, ptr %i.bo, align 8, !alias.scope !88903, !noalias !88889
  store <2 x i64> %i.bq, ptr %i.bn, align 8, !alias.scope !88902, !noalias !88887
  store <2 x i64> %i.bp, ptr %i.bo, align 8, !alias.scope !88903, !noalias !88889
  %i.br = getelementptr inbounds nuw i8, ptr %i.al, i64 128 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.am, i64 128 ; 2 uses
  %i.bt = load <2 x i64>, ptr %i.br, align 8, !alias.scope !88904, !noalias !88887
  %i.bu = load <2 x i64>, ptr %i.bs, align 8, !alias.scope !88905, !noalias !88889
  store <2 x i64> %i.bu, ptr %i.br, align 8, !alias.scope !88904, !noalias !88887
  store <2 x i64> %i.bt, ptr %i.bs, align 8, !alias.scope !88905, !noalias !88889
  %i.bv = getelementptr inbounds nuw i8, ptr %i.al, i64 144 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.am, i64 144 ; 2 uses
  %i.bx = load <2 x i64>, ptr %i.bv, align 8, !alias.scope !88906, !noalias !88887
  %i.by = load <2 x i64>, ptr %i.bw, align 8, !alias.scope !88907, !noalias !88889
  store <2 x i64> %i.by, ptr %i.bv, align 8, !alias.scope !88906, !noalias !88887
  store <2 x i64> %i.bx, ptr %i.bw, align 8, !alias.scope !88907, !noalias !88889
  %i.bz = getelementptr inbounds nuw i8, ptr %i.al, i64 160 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.am, i64 160 ; 2 uses
  %i.cb = load <2 x i64>, ptr %i.bz, align 8, !alias.scope !88908, !noalias !88887
  %i.cc = load <2 x i64>, ptr %i.ca, align 8, !alias.scope !88909, !noalias !88889
  store <2 x i64> %i.cc, ptr %i.bz, align 8, !alias.scope !88908, !noalias !88887
  store <2 x i64> %i.cb, ptr %i.ca, align 8, !alias.scope !88909, !noalias !88889
  %i.cd = getelementptr inbounds nuw i8, ptr %i.al, i64 176 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.am, i64 176 ; 2 uses
  %i.cf = load <2 x i64>, ptr %i.cd, align 8, !alias.scope !88910, !noalias !88887
  %i.cg = load <2 x i64>, ptr %i.ce, align 8, !alias.scope !88911, !noalias !88889
  store <2 x i64> %i.cg, ptr %i.cd, align 8, !alias.scope !88910, !noalias !88887
  store <2 x i64> %i.cf, ptr %i.ce, align 8, !alias.scope !88911, !noalias !88889
  %i.ch = getelementptr inbounds nuw i8, ptr %i.al, i64 192 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.am, i64 192 ; 2 uses
  %i.cj = load <2 x i64>, ptr %i.ch, align 8, !alias.scope !88912, !noalias !88887
  %i.ck = load <2 x i64>, ptr %i.ci, align 8, !alias.scope !88913, !noalias !88889
  store <2 x i64> %i.ck, ptr %i.ch, align 8, !alias.scope !88912, !noalias !88887
  store <2 x i64> %i.cj, ptr %i.ci, align 8, !alias.scope !88913, !noalias !88889
  %i.cl = getelementptr inbounds nuw i8, ptr %i.al, i64 208 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.am, i64 208 ; 2 uses
  %i.cn = load <2 x i64>, ptr %i.cl, align 8, !alias.scope !88914, !noalias !88887
  %i.co = load <2 x i64>, ptr %i.cm, align 8, !alias.scope !88915, !noalias !88889
  store <2 x i64> %i.co, ptr %i.cl, align 8, !alias.scope !88914, !noalias !88887
  store <2 x i64> %i.cn, ptr %i.cm, align 8, !alias.scope !88915, !noalias !88889
  %i.cp = getelementptr inbounds nuw i8, ptr %i.al, i64 224 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.am, i64 224 ; 2 uses
  %i.cr = load <2 x i64>, ptr %i.cp, align 8, !alias.scope !88916, !noalias !88887
  %i.cs = load <2 x i64>, ptr %i.cq, align 8, !alias.scope !88917, !noalias !88889
  store <2 x i64> %i.cs, ptr %i.cp, align 8, !alias.scope !88916, !noalias !88887
  store <2 x i64> %i.cr, ptr %i.cq, align 8, !alias.scope !88917, !noalias !88889
  %i.ct = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ct, %i.ai
  br i1 %exitcond.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment7reverseCsfR8GmIBoxTX_21lance_namespace_impls.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment12split_at_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit11.i.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB2Y_17ManifestNamespace35manifest_from_overwrite_transactions_0E0EB32_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment7reverseCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ag, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8Fragment7reverseCsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.cu = lshr i64 %.sroa.023.0, 1
  %i.cv = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.cw = sub nsw i64 %factor, %i.cu
  %i.cx = add nuw nsw i64 %i.cv, %factor
  %i.cy = mul i64 %i.cw, %.sroa.0.0
  %i.cz = mul i64 %i.cx, %.sroa.0.0
  %i.da = xor i64 %i.cz, %i.cy
  %i.db = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.da, i1 false)
  %i.dc = trunc nuw nsw i64 %i.db to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph63, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB31_17ManifestNamespace35manifest_from_overwrite_transactions_0E0EB35_.exit
  %.sroa.02.162 = phi i64 [ %.sroa.02.0, %.lr.ph63 ], [ %i.dd, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB31_17ManifestNamespace35manifest_from_overwrite_transactions_0E0EB35_.exit ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.023.0, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB31_17ManifestNamespace35manifest_from_overwrite_transactions_0E0EB35_.exit ] ; 4 uses
  %i.dd = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !noundef !416
  %.not29 = icmp ult i8 %i.df, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB31_17ManifestNamespace35manifest_from_overwrite_transactions_0E0EB35_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB31_17ManifestNamespace35manifest_from_overwrite_transactions_0E0EB35_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB31_17ManifestNamespace35manifest_from_overwrite_transactions_0E0EB35_.exit ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.dh, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dd
  %i.dj = load i64, ptr %i.di, align 8, !noundef !416 ; 3 uses
  %i.dk = lshr i64 %i.dj, 1                       ; 8 uses
  %i.dl = lshr i64 %.sroa.023.161, 1              ; 6 uses
  %i.dm = add nuw i64 %i.dk, %i.dl                ; 4 uses
  %i.dn = sub i64 %.sroa.09.0, %i.dm
  %i.do = getelementptr inbounds nuw [240 x i8], ptr %0, i64 %i.dn ; 6 uses
  %i.dp = icmp samesign ugt i64 %i.dm, %3
  %i.dq = trunc i64 %.sroa.023.161 to i1
  %i.dr = or i64 %i.dj, %.sroa.023.161
  %i.ds = trunc i64 %i.dr to i1
  %or.cond3.i = or i1 %i.dp, %i.ds
  br i1 %or.cond3.i, label %bb.t, label %bb.u
end_hunk_2
