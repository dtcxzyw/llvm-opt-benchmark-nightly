Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_file-e8d9b95001b8e5c0.lance_file.7ecd3f6fdfc526a6-cgu.0?download=true
inline.NumInlined: 17611
inline.NumDeleted: 7469
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 132
loop-unroll.NumUnrolled: 155
begin_hunk_0_@_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable14driftsort_mainTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB1X_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB2U_8adapters10filter_map9FilterMapINtNtB3Q_3zip3ZipINtNtNtB1b_3vec9into_iter8IntoIterlEB4I_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0INtB4N_3VecBZ_EEB5v_:bb.a
bb.a:
  %i.a = alloca [4096 x i8], align 4              ; 3 uses
  %i.b = lshr i64 %1, 1
  %i.c = sub nuw nsw i64 %1, %i.b
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 1000000)
  %.sroa.0.0.i11 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.c) ; 2 uses
  %.sroa.0.0.i12 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i11, i64 48) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = icmp samesign ugt i64 %.sroa.0.0.i11, 512 ; 3 uses
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = shl nuw nsw i64 %.sroa.0.0.i12, 3        ; 2 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !16308
  %i.f = tail call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 9) 4) #44, !noalias !16308 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.e) #49
  unreachable

bb.c:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTmmEEECsaSXGKSfiU2E_10lance_file.exit13, label %bb.g

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.6.1 = phi ptr [ undef, %bb.a ], [ %i.f, %bb.b ] ; 4 uses
  %.sroa.4.0 = phi i64 [ 512, %bb.a ], [ %.sroa.0.0.i12, %bb.b ]
  %.pn22 = phi ptr [ %i.a, %bb.a ], [ %i.f, %bb.b ]
  %i.i = icmp samesign ult i64 %1, 65
  invoke fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB1U_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB2R_8adapters10filter_map9FilterMapINtNtB3N_3zip3ZipINtNtNtB18_3vec9into_iter8IntoIterlEB4F_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5s_(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %.pn22, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.i, ptr noalias noundef align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTmmEEECsaSXGKSfiU2E_10lance_file.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTmmEEECsaSXGKSfiU2E_10lance_file.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTmmEEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.e
  %i.j = shl nuw nsw i64 %.sroa.0.0.i12, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.1) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.1, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 4) #44
  br label %bb.f

bb.g:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTmmEEECsaSXGKSfiU2E_10lance_file.exit13, %bb.c
  resume { ptr, i32 } %i.h

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTmmEEECsaSXGKSfiU2E_10lance_file.exit13: ; preds = %bb.c
  %i.k = shl nuw nsw i64 %.sroa.0.0.i12, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.1) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.1, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 4) #44
  br label %bb.g
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable14driftsort_mainTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB1X_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB2U_8adapters3map3MapINtNtB3Q_3zip3ZipINtNtNtB1b_3vec9into_iter8IntoIterlEB4u_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0INtB4z_3VecBZ_EEB5h_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4096 x i8], align 4              ; 3 uses
  %i.b = lshr i64 %1, 1
  %i.c = sub nuw nsw i64 %1, %i.b
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 1000000)
  %.sroa.0.0.i11 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.c) ; 2 uses
  %.sroa.0.0.i12 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i11, i64 48) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = icmp samesign ugt i64 %.sroa.0.0.i11, 512 ; 3 uses
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = shl nuw nsw i64 %.sroa.0.0.i12, 3        ; 2 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !16313
  %i.f = tail call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 9) 4) #44, !noalias !16313 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.e) #49
  unreachable

bb.c:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTmmEEECsaSXGKSfiU2E_10lance_file.exit13, label %bb.g

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.6.1 = phi ptr [ undef, %bb.a ], [ %i.f, %bb.b ] ; 4 uses
  %.sroa.4.0 = phi i64 [ 512, %bb.a ], [ %.sroa.0.0.i12, %bb.b ]
  %.pn22 = phi ptr [ %i.a, %bb.a ], [ %i.f, %bb.b ]
  %i.i = icmp samesign ult i64 %1, 65
  invoke fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB1U_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB2R_8adapters3map3MapINtNtB3N_3zip3ZipINtNtNtB18_3vec9into_iter8IntoIterlEB4r_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5e_(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %.pn22, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.i, ptr noalias noundef align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTmmEEECsaSXGKSfiU2E_10lance_file.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTmmEEECsaSXGKSfiU2E_10lance_file.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTmmEEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.e
  %i.j = shl nuw nsw i64 %.sroa.0.0.i12, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.1) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.1, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 4) #44
  br label %bb.f

bb.g:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTmmEEECsaSXGKSfiU2E_10lance_file.exit13, %bb.c
  resume { ptr, i32 } %i.h

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTmmEEECsaSXGKSfiU2E_10lance_file.exit13: ; preds = %bb.c
  %i.k = shl nuw nsw i64 %.sroa.0.0.i12, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.1) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.1, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 4) #44
  br label %bb.g
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable14driftsort_mainTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB1X_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB2U_8adapters3map3MapINtNtB3Q_3zip3ZipINtNtNtB1b_3vec9into_iter8IntoIterlEB4u_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0INtB4z_3VecBZ_EEB5h_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4096 x i8], align 4              ; 3 uses
  %i.b = lshr i64 %1, 1
  %i.c = sub nuw nsw i64 %1, %i.b
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 1000000)
  %.sroa.0.0.i11 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.c) ; 2 uses
  %.sroa.0.0.i12 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i11, i64 48) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = icmp samesign ugt i64 %.sroa.0.0.i11, 512 ; 3 uses
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = shl nuw nsw i64 %.sroa.0.0.i12, 3        ; 2 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !16318
  %i.f = tail call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 9) 4) #44, !noalias !16318 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.e) #49
  unreachable

bb.c:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTmmEEECsaSXGKSfiU2E_10lance_file.exit13, label %bb.g

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.6.1 = phi ptr [ undef, %bb.a ], [ %i.f, %bb.b ] ; 4 uses
  %.sroa.4.0 = phi i64 [ 512, %bb.a ], [ %.sroa.0.0.i12, %bb.b ]
  %.pn22 = phi ptr [ %i.a, %bb.a ], [ %i.f, %bb.b ]
  %i.i = icmp samesign ult i64 %1, 65
  invoke fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB1U_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB2R_8adapters3map3MapINtNtB3N_3zip3ZipINtNtNtB18_3vec9into_iter8IntoIterlEB4r_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5e_(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %.pn22, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.i, ptr noalias noundef align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTmmEEECsaSXGKSfiU2E_10lance_file.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTmmEEECsaSXGKSfiU2E_10lance_file.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTmmEEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.e
  %i.j = shl nuw nsw i64 %.sroa.0.0.i12, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.1) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.1, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 4) #44
  br label %bb.f

bb.g:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTmmEEECsaSXGKSfiU2E_10lance_file.exit13, %bb.c
  resume { ptr, i32 } %i.h

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTmmEEECsaSXGKSfiU2E_10lance_file.exit13: ; preds = %bb.c
  %i.k = shl nuw nsw i64 %.sroa.0.0.i12, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.1) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.1, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 4) #44
  br label %bb.g
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable7ipnsortmNvYmNtNtB8_3cmp10PartialOrd2ltECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #8 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSm7reverseCsaSXGKSfiU2E_10lance_file.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val6 = load i32, ptr %i.b, align 4, !alias.scope !129, !noalias !130, !noundef !62 ; 3 uses
  %.val7 = load i32, ptr %0, align 4, !alias.scope !130, !noalias !129, !noundef !62
  %i.c = icmp ult i32 %.val6, %.val7              ; 2 uses
  %.not22 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader12

.preheader12:                                     ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph18

.lr.ph:                                           ; preds = %.preheader12, %bb.c
  %.val5 = phi i32 [ %.val4, %bb.c ], [ %.val6, %.preheader12 ]
  %.sroa.01.0.i14 = phi i64 [ %i.f, %bb.c ], [ 2, %.preheader12 ] ; 4 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i14
  %3 = add nsw i64 %.sroa.01.0.i14, -1
  %4 = icmp samesign ult i64 %3, %1
  tail call void @llvm.assume(i1 %4)
  %.val4 = load i32, ptr %i.d, align 4, !alias.scope !129, !noalias !130, !noundef !62 ; 2 uses
  %i.e = icmp ult i32 %.val4, %.val5
  br i1 %i.e, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECsaSXGKSfiU2E_10lance_file.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i64 %.sroa.01.0.i14, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECsaSXGKSfiU2E_10lance_file.exit.thread, label %.lr.ph

.lr.ph18:                                         ; preds = %.preheader, %bb.d
  %.val3 = phi i32 [ %.val, %bb.d ], [ %.val6, %.preheader ]
  %.sroa.01.1.i17 = phi i64 [ %i.i, %bb.d ], [ 2, %.preheader ] ; 4 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.1.i17
  %5 = add nsw i64 %.sroa.01.1.i17, -1
  %6 = icmp samesign ult i64 %5, %1
  tail call void @llvm.assume(i1 %6)
  %.val = load i32, ptr %i.g, align 4, !alias.scope !129, !noalias !130, !noundef !62 ; 2 uses
  %i.h = icmp ult i32 %.val, %.val3
  br i1 %i.h, label %bb.d, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECsaSXGKSfiU2E_10lance_file.exit

bb.d:                                             ; preds = %.lr.ph18
  %i.i = add nuw nsw i64 %.sroa.01.1.i17, 1       ; 2 uses
  %exitcond25.not = icmp eq i64 %i.i, %1
  br i1 %exitcond25.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECsaSXGKSfiU2E_10lance_file.exit.thread, label %.lr.ph18

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECsaSXGKSfiU2E_10lance_file.exit: ; preds = %.lr.ph, %.lr.ph18, %.preheader12, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader12 ], [ 2, %.preheader ], [ %.sroa.01.1.i17, %.lr.ph18 ], [ %.sroa.01.0.i14, %.lr.ph ] ; 2 uses
  %i.j = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.k, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.e

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECsaSXGKSfiU2E_10lance_file.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECsaSXGKSfiU2E_10lance_file.exit
  br i1 %i.c, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSm7reverseCsaSXGKSfiU2E_10lance_file.exit

bb.e:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECsaSXGKSfiU2E_10lance_file.exit
  %i.l = or i64 %1, 1
  %i.m = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = xor i32 %i.o, 126
  tail call fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable9quicksort9quicksortmNvYmNtNtBa_3cmp10PartialOrd2ltECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, i32 noundef %i.p, ptr noalias noundef nonnull %2)
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSm7reverseCsaSXGKSfiU2E_10lance_file.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSm7reverseCsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i, %middle.block, %bb.a, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECsaSXGKSfiU2E_10lance_file.exit.thread, %bb.e
  ret void

_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECsaSXGKSfiU2E_10lance_file.exit.thread
  %i.q = lshr i64 %1, 1                           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16327)
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %1, 16
  br i1 %min.iters.check, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i
  %n.vec = and i64 %i.q, 1152921504606846968      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = xor i64 %index, -1
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.u = getelementptr [4 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.t, align 4, !alias.scope !16328, !noalias !16327
  %wide.load40 = load <4 x i32>, ptr %i.v, align 4, !alias.scope !16328, !noalias !16327
  %i.w = getelementptr i8, ptr %i.u, i64 -12      ; 2 uses
  %i.x = getelementptr i8, ptr %i.u, i64 -28      ; 2 uses
  %wide.load41 = load <4 x i32>, ptr %i.w, align 4, !alias.scope !16329, !noalias !16326
  %wide.load42 = load <4 x i32>, ptr %i.x, align 4, !alias.scope !16329, !noalias !16326
  %reverse = shufflevector <4 x i32> %wide.load41, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse43 = shufflevector <4 x i32> %wide.load42, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.t, align 4, !alias.scope !16328, !noalias !16327
  store <4 x i32> %reverse43, ptr %i.v, align 4, !alias.scope !16328, !noalias !16327
  %reverse44 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse45 = shufflevector <4 x i32> %wide.load40, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse44, ptr %i.w, align 4, !alias.scope !16329, !noalias !16326
  store <4 x i32> %reverse45, ptr %i.x, align 4, !alias.scope !16329, !noalias !16326
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !16324

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSm7reverseCsaSXGKSfiU2E_10lance_file.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.preheader

_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.preheader: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.preheader, %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ae, %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.preheader ] ; 3 uses
  %i.z = xor i64 %.sroa.0.016.i.i, -1
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ab = getelementptr [4 x i8], ptr %i.r, i64 %i.z ; 2 uses
  %i.ac = load i32, ptr %i.aa, align 4, !alias.scope !16328, !noalias !16327, !noundef !62
  %i.ad = load i32, ptr %i.ab, align 4, !alias.scope !16329, !noalias !16326
  store i32 %i.ad, ptr %i.aa, align 4, !alias.scope !16328, !noalias !16327
  store i32 %i.ac, ptr %i.ab, align 4, !alias.scope !16329, !noalias !16326
  %i.ae = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ae, %i.q
  br i1 %exitcond.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSm7reverseCsaSXGKSfiU2E_10lance_file.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i, !llvm.loop !16325
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task9waker_ref12drop_arc_rawINtB4_4TaskINtNtB8_15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB2o_6future6future6Futurep6OutputINtNtB2o_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB2o_6marker4SendEL_EEEEECsaSXGKSfiU2E_10lance_file(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !16334
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB1g_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEEEECsaSXGKSfiU2E_10lance_file.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB2z_6future6future6Futurep6OutputINtNtB2z_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB2z_6marker4SendEL_EEEEE9drop_slowCsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB1g_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEEEECsaSXGKSfiU2E_10lance_file.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB1g_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEEEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task9waker_ref12drop_arc_rawINtB4_4TaskINtNtB8_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding5plainNtB2v_12PlainDecoder4take000EEEB2D_(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !16339
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB1g_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding5plainNtB3a_12PlainDecoder4take000EEEEB3i_.exit

bb.b:                                             ; preds = %bb.a
  fence acquire, !noalias !16340
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding5plainNtB2G_12PlainDecoder4take000EEE9drop_slowB2O_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a), !inline_history !30
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB1g_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding5plainNtB3a_12PlainDecoder4take000EEEEB3i_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB1g_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding5plainNtB3a_12PlainDecoder4take000EEEEB3i_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task9waker_ref12drop_arc_rawINtB4_4TaskINtNtB8_15futures_ordered12OrderWrapperNCNCNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2v_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE4take0s_00EEEB2D_(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !16345
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB1g_15futures_ordered12OrderWrapperNCNCNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3a_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE4take0s_00EEEEB3i_.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2G_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE4take0s_00EEE9drop_slowB2O_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB1g_15futures_ordered12OrderWrapperNCNCNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3a_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE4take0s_00EEEEB3i_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB1g_15futures_ordered12OrderWrapperNCNCNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3a_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE4take0s_00EEEEB3i_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task9waker_ref12drop_arc_rawINtB4_4TaskINtNtB8_15futures_ordered12OrderWrapperNCNCNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2v_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE4take0s_00EEEB2D_(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !16350
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB1g_15futures_ordered12OrderWrapperNCNCNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3a_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE4take0s_00EEEEB3i_.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2G_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE4take0s_00EEE9drop_slowB2O_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB1g_15futures_ordered12OrderWrapperNCNCNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3a_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE4take0s_00EEEEB3i_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB1g_15futures_ordered12OrderWrapperNCNCNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3a_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE4take0s_00EEEEB3i_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task9waker_ref12drop_arc_rawINtB4_4TaskINtNtB8_15futures_ordered12OrderWrapperNCNCNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2v_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE4take0s_00EEEB2D_(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !16355
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB1g_15futures_ordered12OrderWrapperNCNCNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3a_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE4take0s_00EEEEB3i_.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2G_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE4take0s_00EEE9drop_slowB2O_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB1g_15futures_ordered12OrderWrapperNCNCNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3a_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE4take0s_00EEEEB3i_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB1g_15futures_ordered12OrderWrapperNCNCNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3a_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE4take0s_00EEEEB3i_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task9waker_ref12drop_arc_rawINtB4_4TaskINtNtB8_15futures_ordered12OrderWrapperNCNCNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2v_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE4take0s_00EEEB2D_(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB1m_7sort_byNCINvXs1o_NtNtNtB1y_11collections5btree3mapINtB2l_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1m_E9from_iterINtNtNtB3i_8adapters3map3MapINtNtB4f_3zip3ZipINtNtNtB1y_3vec9into_iter8IntoIterlEB4T_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5G_:.lr.ph.preheader
  %i.d = load i32, ptr %i.c, align 4, !noundef !62
  %i.e = load i64, ptr %.pn3, align 4
  store i64 %i.e, ptr %.sroa.0.04, align 4
  %i.f = icmp eq ptr %.pn3, %0
  br i1 %i.f, label %._crit_edge4, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph3
  %i.g = load i64, ptr %i.i, align 4
  store i64 %i.g, ptr %.sroa.0.0.i1, align 4
  %i.h = icmp eq ptr %i.i, %0
  br i1 %i.h, label %._crit_edge4, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi ptr [ %i.i, %bb.b ], [ %.pn3, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -8 ; 4 uses
  %.val8.i = load i32, ptr %i.i, align 4, !noundef !62
  %i.j = icmp ult i32 %.val9.i, %.val8.i
  br i1 %i.j, label %bb.b, label %._crit_edge4

._crit_edge4:                                     ; preds = %bb.b, %.lr.ph3, %bb.a
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.sroa.0.0.i1, %.lr.ph3 ]
  %.sroa.0.sroa.5.0.insert.ext.i = zext i32 %i.d to i64
  %.sroa.0.sroa.5.0.insert.shift.i = shl nuw i64 %.sroa.0.sroa.5.0.insert.ext.i, 32
  %.sroa.0.sroa.0.0.insert.ext.i = zext i32 %.val9.i to i64
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.5.0.insert.shift.i, %.sroa.0.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.sroa.0.0.insert.insert.i, ptr %.sroa.0.0.i.lcssa, align 4, !noalias !16752
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1k_11collections5btree3mapINtB27_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB34_8adapters3map3MapINtNtB41_3zip3ZipINtNtNtB1k_3vec9into_iter8IntoIterlEB4F_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5s_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1k_11collections5btree3mapINtB27_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB34_8adapters3map3MapINtNtB41_3zip3ZipINtNtNtB1k_3vec9into_iter8IntoIterlEB4F_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5s_.exit: ; preds = %.lr.ph, %._crit_edge4
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB1m_7sort_byNCINvXs1o_NtNtNtB1y_11collections5btree3mapINtB2l_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1m_E9from_iterINtNtNtB3i_8adapters3map3MapINtNtB4f_3zip3ZipINtNtNtB1y_3vec9into_iter8IntoIterlEB4T_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5G_(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 2, 21) %1) unnamed_addr #11 personality ptr @rust_eh_personality {
.lr.ph.preheader:
  %.idx = shl nuw nsw i64 %1, 3
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.sroa.0.01 = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1k_11collections5btree3mapINtB27_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB34_8adapters3map3MapINtNtB41_3zip3ZipINtNtNtB1k_3vec9into_iter8IntoIterlEB4F_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5s_.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1k_11collections5btree3mapINtB27_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB34_8adapters3map3MapINtNtB41_3zip3ZipINtNtNtB1k_3vec9into_iter8IntoIterlEB4F_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5s_.exit
  %.sroa.0.04 = phi ptr [ %.sroa.0.0, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1k_11collections5btree3mapINtB27_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB34_8adapters3map3MapINtNtB41_3zip3ZipINtNtNtB1k_3vec9into_iter8IntoIterlEB4F_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5s_.exit ], [ %.sroa.0.01, %.lr.ph.preheader ] ; 4 uses
  %.pn3 = phi ptr [ %.sroa.0.04, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1k_11collections5btree3mapINtB27_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB34_8adapters3map3MapINtNtB41_3zip3ZipINtNtNtB1k_3vec9into_iter8IntoIterlEB4F_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5s_.exit ], [ %0, %.lr.ph.preheader ] ; 5 uses
  %.val9.i = load i32, ptr %.sroa.0.04, align 4, !noundef !62 ; 3 uses
  %.val10.i = load i32, ptr %.pn3, align 4, !noundef !62
  %i.b = icmp ult i32 %.val9.i, %.val10.i
  br i1 %i.b, label %bb.a, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1k_11collections5btree3mapINtB27_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB34_8adapters3map3MapINtNtB41_3zip3ZipINtNtNtB1k_3vec9into_iter8IntoIterlEB4F_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5s_.exit

bb.a:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %.pn3, i64 12
  %i.d = load i32, ptr %i.c, align 4, !noundef !62
  %i.e = load i64, ptr %.pn3, align 4
  store i64 %i.e, ptr %.sroa.0.04, align 4
  %i.f = icmp eq ptr %.pn3, %0
  br i1 %i.f, label %._crit_edge4, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph3
  %i.g = load i64, ptr %i.i, align 4
  store i64 %i.g, ptr %.sroa.0.0.i1, align 4
  %i.h = icmp eq ptr %i.i, %0
  br i1 %i.h, label %._crit_edge4, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi ptr [ %i.i, %bb.b ], [ %.pn3, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -8 ; 4 uses
  %.val8.i = load i32, ptr %i.i, align 4, !noundef !62
  %i.j = icmp ult i32 %.val9.i, %.val8.i
  br i1 %i.j, label %bb.b, label %._crit_edge4

._crit_edge4:                                     ; preds = %bb.b, %.lr.ph3, %bb.a
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.sroa.0.0.i1, %.lr.ph3 ]
  %.sroa.0.sroa.5.0.insert.ext.i = zext i32 %i.d to i64
  %.sroa.0.sroa.5.0.insert.shift.i = shl nuw i64 %.sroa.0.sroa.5.0.insert.ext.i, 32
  %.sroa.0.sroa.0.0.insert.ext.i = zext i32 %.val9.i to i64
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.5.0.insert.shift.i, %.sroa.0.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.sroa.0.0.insert.insert.i, ptr %.sroa.0.0.i.lcssa, align 4, !noalias !16757
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1k_11collections5btree3mapINtB27_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB34_8adapters3map3MapINtNtB41_3zip3ZipINtNtNtB1k_3vec9into_iter8IntoIterlEB4F_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5s_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1k_11collections5btree3mapINtB27_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB34_8adapters3map3MapINtNtB41_3zip3ZipINtNtNtB1k_3vec9into_iter8IntoIterlEB4F_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5s_.exit: ; preds = %.lr.ph, %._crit_edge4
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftmNvYmNtNtBa_3cmp10PartialOrd2ltECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 1, 32) %1, i64 noundef range(i64 1, 14) %2) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %2, %1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %.not1 = icmp samesign eq i64 %2, %1
  br i1 %.not1, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailmNvYmNtNtBa_3cmp10PartialOrd2ltECsaSXGKSfiU2E_10lance_file.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailmNvYmNtNtBa_3cmp10PartialOrd2ltECsaSXGKSfiU2E_10lance_file.exit
  %.sroa.0.02 = phi ptr [ %i.j, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailmNvYmNtNtBa_3cmp10PartialOrd2ltECsaSXGKSfiU2E_10lance_file.exit ], [ %i.c, %.lr.ph.preheader ] ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.02, i64 -4 ; 3 uses
  %.val9.i = load i32, ptr %.sroa.0.02, align 4, !alias.scope !16765, !noalias !16766, !noundef !62 ; 3 uses
  %.val10.i = load i32, ptr %i.d, align 4, !alias.scope !16766, !noalias !16765, !noundef !62 ; 2 uses
  %i.e = icmp ult i32 %.val9.i, %.val10.i
  br i1 %i.e, label %.preheader.preheader, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailmNvYmNtNtBa_3cmp10PartialOrd2ltECsaSXGKSfiU2E_10lance_file.exit

.preheader.preheader:                             ; preds = %.lr.ph
  store i32 %.val10.i, ptr %.sroa.0.02, align 4
  %i.f = icmp eq ptr %i.d, %0
  br i1 %i.f, label %._crit_edge8, label %.lr.ph7

.preheader:                                       ; preds = %.lr.ph7
  store i32 %.val8.i, ptr %.sroa.0.0.i6, align 4
  %i.g = icmp eq ptr %i.h, %0
  br i1 %i.g, label %._crit_edge8, label %.lr.ph7

.lr.ph7:                                          ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i6 = phi ptr [ %i.h, %.preheader ], [ %i.d, %.preheader.preheader ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.0.i6, i64 -4 ; 3 uses
  %.val8.i = load i32, ptr %i.h, align 4, !alias.scope !16766, !noalias !16765, !noundef !62 ; 2 uses
  %i.i = icmp ult i32 %.val9.i, %.val8.i
  br i1 %i.i, label %.preheader, label %._crit_edge8

._crit_edge8:                                     ; preds = %.preheader, %.lr.ph7, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i6, %.lr.ph7 ]
  store i32 %.val9.i, ptr %.sroa.0.0.i.lcssa, align 4, !noalias !16767
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailmNvYmNtNtBa_3cmp10PartialOrd2ltECsaSXGKSfiU2E_10lance_file.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailmNvYmNtNtBa_3cmp10PartialOrd2ltECsaSXGKSfiU2E_10lance_file.exit: ; preds = %.lr.ph, %._crit_edge8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2t_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2v_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1A_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2v_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dw, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.du, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2B_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2D_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1H_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2D_.exit
  %.sroa.021.0 = phi i8 [ %i.bc, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2B_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2D_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1H_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2D_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2B_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2D_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1H_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2D_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph63, label %._crit_edge

.lr.ph63:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjmINtNtNtB8_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2A_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2C_6format6pbfile14ColumnMetadataEINtNtB8_6result6ResultINtNtB1G_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2C_.exit.i.thread96, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjmINtNtNtB8_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2A_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2C_6format6pbfile14ColumnMetadataEINtNtB8_6result6ResultINtNtB1G_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2C_.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjmINtNtNtB8_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2A_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2C_6format6pbfile14ColumnMetadataEINtNtB8_6result6ResultINtNtB1G_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2C_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjmINtNtNtB4_3ops5range5RangeyEE7reverseCsaSXGKSfiU2E_10lance_file.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 48
  %.val10.i = load i64, ptr %i.q, align 8, !alias.scope !16799, !noalias !16800, !noundef !62 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 16
  %.val11.i = load i64, ptr %i.r, align 8, !alias.scope !16799, !noalias !16800, !noundef !62
  %i.s = icmp ult i64 %.val10.i, %.val11.i        ; 2 uses
  %.not70 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.s, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjmINtNtNtB8_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2A_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2C_6format6pbfile14ColumnMetadataEINtNtB8_6result6ResultINtNtB1G_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2C_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjmINtNtNtB8_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2A_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2C_6format6pbfile14ColumnMetadataEINtNtB8_6result6ResultINtNtB1G_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2C_.exit.i.thread96, label %.lr.ph57

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader48 ]
  %.sroa.01.0.i.i53 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader48 ] ; 4 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.0.i.i53
  %6 = add nsw i64 %.sroa.01.0.i.i53, -1
  %7 = icmp ult i64 %6, %i.n
  tail call void @llvm.assume(i1 %7)
  %i.u = getelementptr i8, ptr %i.t, i64 16
  %.val8.i = load i64, ptr %i.u, align 8, !alias.scope !16799, !noalias !16800, !noundef !62 ; 2 uses
  %i.v = icmp ult i64 %.val8.i, %.val9.i
  br i1 %i.v, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjmINtNtNtB8_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2A_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2C_6format6pbfile14ColumnMetadataEINtNtB8_6result6ResultINtNtB1G_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2C_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i53, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjmINtNtNtB8_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2A_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2C_6format6pbfile14ColumnMetadataEINtNtB8_6result6ResultINtNtB1G_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2C_.exit.i, label %.lr.ph

.lr.ph57:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i56 = phi i64 [ %i.aa, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.1.i.i56
  %8 = add nsw i64 %.sroa.01.1.i.i56, -1
  %9 = icmp ult i64 %8, %i.n
  tail call void @llvm.assume(i1 %9)
  %i.y = getelementptr i8, ptr %i.x, i64 16
  %.val.i = load i64, ptr %i.y, align 8, !alias.scope !16799, !noalias !16800, !noundef !62 ; 2 uses
  %i.z = icmp ult i64 %.val.i, %.val7.i
  br i1 %i.z, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjmINtNtNtB8_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2A_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2C_6format6pbfile14ColumnMetadataEINtNtB8_6result6ResultINtNtB1G_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2C_.exit.i

bb.m:                                             ; preds = %.lr.ph57
  %i.aa = add nuw i64 %.sroa.01.1.i.i56, 1        ; 2 uses
  %exitcond77.not = icmp eq i64 %i.aa, %i.n
  br i1 %exitcond77.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjmINtNtNtB8_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2A_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2C_6format6pbfile14ColumnMetadataEINtNtB8_6result6ResultINtNtB1G_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2C_.exit.i, label %.lr.ph57

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjmINtNtNtB8_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2A_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2C_6format6pbfile14ColumnMetadataEINtNtB8_6result6ResultINtNtB1G_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2C_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph57
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i56, %.lr.ph57 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i53, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ab)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjmINtNtNtB8_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2A_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2C_6format6pbfile14ColumnMetadataEINtNtB8_6result6ResultINtNtB1G_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2C_.exit.i.thread96: ; preds = %.preheader
  br i1 %.not5.i98, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjmINtNtNtB4_3ops5range5RangeyEE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjmINtNtNtB8_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2A_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2C_6format6pbfile14ColumnMetadataEINtNtB8_6result6ResultINtNtB1G_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2C_.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i93, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjmINtNtNtB4_3ops5range5RangeyEE7reverseCsaSXGKSfiU2E_10lance_file.exit

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjmINtNtNtB8_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2A_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2C_6format6pbfile14ColumnMetadataEINtNtB8_6result6ResultINtNtB1G_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2C_.exit.i
  br i1 %i.s, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjmINtNtNtB4_3ops5range5RangeyEE7reverseCsaSXGKSfiU2E_10lance_file.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.n, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2B_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2D_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1H_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2D_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2D_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2F_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1J_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2F_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !16772
  %i.ad = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2B_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2D_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1H_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2D_.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSTjmINtNtNtB4_3ops5range5RangeyEE7reverseCsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjmINtNtNtB4_3ops5range5RangeyEE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjmINtNtNtB8_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2A_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2C_6format6pbfile14ColumnMetadataEINtNtB8_6result6ResultINtNtB1G_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2C_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjmINtNtNtB8_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2A_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2C_6format6pbfile14ColumnMetadataEINtNtB8_6result6ResultINtNtB1G_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2C_.exit.i.thread ], [ %.sroa.0.0.i.i94101105, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjmINtNtNtB4_3ops5range5RangeyEE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2B_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2D_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1H_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2D_.exit

bb.q:                                             ; preds = %bb.n
  %i.ah = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16801), !noalias !16800
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16802), !noalias !16800
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjmINtNtNtB4_3ops5range5RangeyEE7reverseCsaSXGKSfiU2E_10lance_file.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjmINtNtNtB4_3ops5range5RangeyEE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSTjmINtNtNtB4_3ops5range5RangeyEE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjmINtNtNtB8_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2A_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2C_6format6pbfile14ColumnMetadataEINtNtB8_6result6ResultINtNtB1G_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2C_.exit.i.thread96, %bb.q
  %i.ai = phi i64 [ %i.ah, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjmINtNtNtB8_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2A_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2C_6format6pbfile14ColumnMetadataEINtNtB8_6result6ResultINtNtB1G_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2C_.exit.i.thread96 ]
  %.sroa.0.0.i.i94101105 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjmINtNtNtB8_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2A_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2C_6format6pbfile14ColumnMetadataEINtNtB8_6result6ResultINtNtB1G_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2C_.exit.i.thread96 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.0.i.i94101105
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjmINtNtNtB4_3ops5range5RangeyEE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSTjmINtNtNtB4_3ops5range5RangeyEE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjmINtNtNtB4_3ops5range5RangeyEE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjmINtNtNtB4_3ops5range5RangeyEE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.at, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjmINtNtNtB4_3ops5range5RangeyEE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i ], [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjmINtNtNtB4_3ops5range5RangeyEE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i ] ; 3 uses
  %i.ak = xor i64 %.sroa.0.016.i.i, -1
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 3 uses
  %i.am = getelementptr [32 x i8], ptr %i.aj, i64 %i.ak ; 3 uses
  %i.an = load <2 x i64>, ptr %i.al, align 8, !alias.scope !16803, !noalias !16804
  %i.ao = load <2 x i64>, ptr %i.am, align 8, !alias.scope !16805, !noalias !16806
  store <2 x i64> %i.ao, ptr %i.al, align 8, !alias.scope !16803, !noalias !16804
  store <2 x i64> %i.an, ptr %i.am, align 8, !alias.scope !16805, !noalias !16806
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ar = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !16807, !noalias !16804
  %i.as = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !16808, !noalias !16806
  store <2 x i64> %i.as, ptr %i.ap, align 8, !alias.scope !16807, !noalias !16804
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !alias.scope !16808, !noalias !16806
  %i.at = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, %i.ai
  br i1 %exitcond.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjmINtNtNtB4_3ops5range5RangeyEE7reverseCsaSXGKSfiU2E_10lance_file.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjmINtNtNtB4_3ops5range5RangeyEE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2B_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2D_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1H_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2D_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjmINtNtNtB4_3ops5range5RangeyEE7reverseCsaSXGKSfiU2E_10lance_file.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ag, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjmINtNtNtB4_3ops5range5RangeyEE7reverseCsaSXGKSfiU2E_10lance_file.exit ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.au = lshr i64 %.sroa.023.0, 1
  %i.av = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aw = sub nsw i64 %factor, %i.au
  %i.ax = add nuw nsw i64 %i.av, %factor
  %i.ay = mul i64 %i.aw, %.sroa.0.0
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 false)
  %i.bc = trunc nuw nsw i64 %i.bb to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph63, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2E_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2G_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1K_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2G_.exit
  %.sroa.02.162 = phi i64 [ %.sroa.02.0, %.lr.ph63 ], [ %i.bd, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2E_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2G_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1K_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2G_.exit ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.023.0, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2E_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2G_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1K_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2G_.exit ] ; 4 uses
  %i.bd = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noundef !62
  %.not29 = icmp ult i8 %i.bf, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2E_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2G_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1K_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2G_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2E_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2G_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1K_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2G_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2E_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2G_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1K_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2G_.exit ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bh, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bd
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !62 ; 3 uses
  %i.bk = lshr i64 %i.bj, 1                       ; 8 uses
  %i.bl = lshr i64 %.sroa.023.161, 1              ; 6 uses
  %i.bm = add nuw i64 %i.bk, %i.bl                ; 4 uses
  %i.bn = sub i64 %.sroa.09.0, %i.bm
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bn ; 6 uses
  %i.bp = icmp samesign ugt i64 %i.bm, %3
  %i.bq = trunc i64 %.sroa.023.161 to i1
  %i.br = or i64 %i.bj, %.sroa.023.161
  %i.bs = trunc i64 %i.br to i1
  %or.cond3.i = or i1 %i.bp, %i.bs
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bt = trunc i64 %i.bj to i1
  br i1 %i.bt, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bu = shl nuw nsw i64 %i.bm, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2E_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2G_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1K_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2G_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bq, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.bv = or i64 %i.bk, 1
  %i.bw = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2D_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2F_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1J_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2F_(ptr noalias noundef nonnull align 8 %i.bo, i64 noundef range(i64 0, 288230376151711744) %i.bk, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !16787
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16810)
  %i.ca = icmp eq i64 %i.bk, 0
  %i.cb = icmp eq i64 %i.bl, 0
  %or.cond.i = or i1 %i.cb, %i.ca
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2u_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2w_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1B_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2w_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 range(i64 0, -9223372036854775808) %i.bk) ; 2 uses
  %i.cc = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.cc, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2u_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2w_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1B_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2w_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.cd = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %i.bk ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bk, %i.bl  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.cd, ptr %i.bo
  %i.ce = shl nuw nsw i64 %.sroa.0.0.i.i35, 5     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.ce, i1 false), !alias.scope !16811
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 %i.ce ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cg = phi ptr [ %i.cs, %.preheader.i ], [ %i.cf, %.critedge.i ] ; 2 uses
  %i.ch = phi ptr [ %i.cq, %.preheader.i ], [ %i.cd, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.ck, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -32 ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.cg, i64 -32 ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -32 ; 2 uses
  %i.cl = getelementptr i8, ptr %i.cg, i64 -16
  %.val.i.i = load i64, ptr %i.cl, align 8, !alias.scope !16810, !noalias !16812, !noundef !62
  %i.cm = getelementptr i8, ptr %i.ch, i64 -16
  %.val10.i.i = load i64, ptr %i.cm, align 8, !alias.scope !16809, !noalias !16813, !noundef !62
  %i.cn = icmp ult i64 %.val.i.i, %.val10.i.i     ; 3 uses
  %..i.i = select i1 %i.cn, ptr %i.ci, ptr %i.cj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %..i.i, i64 32, i1 false), !alias.scope !16811, !noalias !16814
  %i.co = xor i1 %i.cn, true
  %i.cp = zext i1 %i.co to i64
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %i.ci, i64 %i.cp ; 3 uses
  %i.cr = zext i1 %i.cn to i64
  %i.cs = getelementptr inbounds nuw [32 x i8], ptr %i.cj, i64 %i.cr ; 3 uses
  %i.ct = icmp eq ptr %i.cq, %i.bo
  %i.cu = icmp eq ptr %i.cs, %2
  %or.cond.i.i = select i1 %i.ct, i1 true, i1 %i.cu
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTjmINtNtNtBb_3ops5range5RangeyEEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2V_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2X_6format6pbfile14ColumnMetadataEINtNtBb_6result6ResultINtNtB21_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2X_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.cv = phi ptr [ %i.df, %.lr.ph.i.i ], [ %i.bo, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.de, %.lr.ph.i.i ], [ %i.cd, %.critedge.i ] ; 3 uses
  %i.cw = phi ptr [ %i.dc, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %i.cx = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val.i.i = load i64, ptr %i.cx, align 8, !alias.scope !16809, !noalias !16815, !noundef !62
  %i.cy = getelementptr i8, ptr %i.cw, i64 16
  %.val.i19.i = load i64, ptr %i.cy, align 8, !alias.scope !16810, !noalias !16816, !noundef !62
  %i.cz = icmp ult i64 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.da = xor i1 %i.cz, true
  %spec.select.i.i = select i1 %i.cz, ptr %.sroa.0.02.i.i, ptr %i.cw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %spec.select.i.i, i64 32, i1 false), !alias.scope !16811, !noalias !16817
  %i.db = zext i1 %i.da to i64
  %i.dc = getelementptr inbounds nuw [32 x i8], ptr %i.cw, i64 %i.db ; 3 uses
  %i.dd = zext i1 %i.cz to i64
  %i.de = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.02.i.i, i64 %i.dd ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cv, i64 32 ; 2 uses
  %i.dg = icmp ne ptr %i.dc, %i.cf
  %i.dh = icmp ne ptr %i.de, %i.m
  %or.cond.i20.i = select i1 %i.dg, i1 %i.dh, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTjmINtNtNtBb_3ops5range5RangeyEEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2V_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2X_6format6pbfile14ColumnMetadataEINtNtBb_6result6ResultINtNtB21_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2X_.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTjmINtNtNtBb_3ops5range5RangeyEEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2V_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2X_6format6pbfile14ColumnMetadataEINtNtBb_6result6ResultINtNtB21_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2X_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.cq, %.preheader.i ], [ %i.df, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.cs, %.preheader.i ], [ %i.cf, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.dc, %.lr.ph.i.i ] ; 2 uses
  %i.di = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dj = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dk = sub nuw i64 %i.di, %i.dj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.dk, i1 false), !alias.scope !16811, !noalias !16818
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2u_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2w_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1B_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2w_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2u_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2w_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1B_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2w_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTjmINtNtNtBb_3ops5range5RangeyEEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2V_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2X_6format6pbfile14ColumnMetadataEINtNtBb_6result6ResultINtNtB21_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2X_.exit.i
  %i.dl = shl nuw nsw i64 %i.bm, 1
  %i.dm = or disjoint i64 %i.dl, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2E_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2G_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1K_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2G_.exit

bb.z:                                             ; preds = %bb.v
  %i.dn = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %i.bk
  %i.do = or i64 %i.bl, 1
  %i.dp = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.do, i1 true)
  %i.dq = trunc nuw nsw i64 %i.dp to i32
  %i.dr = shl nuw nsw i32 %i.dq, 1
  %i.ds = xor i32 %i.dr, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2D_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2F_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1J_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2F_(ptr noalias noundef nonnull align 8 %i.dn, i64 noundef range(i64 0, 288230376151711744) %i.bl, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.ds, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !16787
  br label %bb.x

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2E_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2G_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1K_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2G_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2u_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2w_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1B_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2w_.exit
  %.sroa.0.0.i = phi i64 [ %i.dm, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2u_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2w_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1B_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2w_.exit ], [ %i.bu, %bb.u ] ; 2 uses
  %i.dt = icmp ugt i64 %i.bd, 1
  br i1 %i.dt, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.du = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dv = lshr i64 %.sroa.018.0, 1
  %i.dw = add nuw i64 %i.dv, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.dx = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dx, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dy = or i64 %1, 1
  %i.dz = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.dy, i1 true)
  %i.ea = trunc nuw nsw i64 %i.dz to i32
  %i.eb = shl nuw nsw i32 %i.ea, 1
  %i.ec = xor i32 %i.eb, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2D_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2F_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1J_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2F_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.ec, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !16787
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB3p_11collections5btree3mapINtB4b_8BTreeMaplBY_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB5a_8adapters3map3MapINtNtB66_6filter6FilterINtNtNtB5a_7sources7from_fn6FromFnNCNvB1T_12visit_fields0ENCNvMB1T_NtB1T_19StatisticsCollector7try_new0ENCB7O_s_0EE0E0EB21_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 25620477880152156) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 25620477880152156) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ds, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dq, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB3w_11collections5btree3mapINtB4j_8BTreeMaplB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB5j_8adapters3map3MapINtNtB6g_6filter6FilterINtNtNtB5j_7sources7from_fn6FromFnNCNvB20_12visit_fields0ENCNvMB20_NtB20_19StatisticsCollector7try_new0ENCB7Y_s_0EE0E0EB28_.exit
  %.sroa.021.0 = phi i8 [ %i.bc, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB3w_11collections5btree3mapINtB4j_8BTreeMaplB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB5j_8adapters3map3MapINtNtB6g_6filter6FilterINtNtNtB5j_7sources7from_fn6FromFnNCNvB20_12visit_fields0ENCNvMB20_NtB20_19StatisticsCollector7try_new0ENCB7Y_s_0EE0E0EB28_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB3w_11collections5btree3mapINtB4j_8BTreeMaplB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB5j_8adapters3map3MapINtNtB6g_6filter6FilterINtNtNtB5j_7sources7from_fn6FromFnNCNvB20_12visit_fields0ENCNvMB20_NtB20_19StatisticsCollector7try_new0ENCB7Y_s_0EE0E0EB28_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph64, label %._crit_edge

.lr.ph64:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [360 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.o = getelementptr inbounds nuw [360 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i.thread96, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE7reverseB1z_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 360
  %.val10.i = load i32, ptr %i.q, align 8, !alias.scope !16848, !noalias !16849, !noundef !62 ; 3 uses
  %.val11.i = load i32, ptr %i.o, align 8, !alias.scope !16848, !noalias !16849, !noundef !62
  %i.r = icmp slt i32 %.val10.i, %.val11.i        ; 2 uses
  %.not71 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader49

.preheader49:                                     ; preds = %bb.k
  br i1 %.not71, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not71, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i.thread96, label %.lr.ph58

.lr.ph:                                           ; preds = %.preheader49, %bb.l
  %.val9.i = phi i32 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader49 ]
  %.sroa.01.0.i.i54 = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader49 ] ; 4 uses
  %i.s = getelementptr inbounds nuw [360 x i8], ptr %i.o, i64 %.sroa.01.0.i.i54
  %6 = add nsw i64 %.sroa.01.0.i.i54, -1
  %7 = icmp ult i64 %6, %i.n
  tail call void @llvm.assume(i1 %7)
  %.val8.i = load i32, ptr %i.s, align 8, !alias.scope !16848, !noalias !16849, !noundef !62 ; 2 uses
  %i.t = icmp slt i32 %.val8.i, %.val9.i
  br i1 %i.t, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i54, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i, label %.lr.ph

.lr.ph58:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i32 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i57 = phi i64 [ %i.x, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.v = getelementptr inbounds nuw [360 x i8], ptr %i.o, i64 %.sroa.01.1.i.i57
  %8 = add nsw i64 %.sroa.01.1.i.i57, -1
  %9 = icmp ult i64 %8, %i.n
  tail call void @llvm.assume(i1 %9)
  %.val.i = load i32, ptr %i.v, align 8, !alias.scope !16848, !noalias !16849, !noundef !62 ; 2 uses
  %i.w = icmp slt i32 %.val.i, %.val7.i
  br i1 %i.w, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i

bb.m:                                             ; preds = %.lr.ph58
  %i.x = add nuw i64 %.sroa.01.1.i.i57, 1         ; 2 uses
  %exitcond78.not = icmp eq i64 %i.x, %i.n
  br i1 %exitcond78.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i, label %.lr.ph58

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph58
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i57, %.lr.ph58 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i54, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i.thread96: ; preds = %.preheader
  br i1 %.not5.i98, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i.thread: ; preds = %.preheader49
  br i1 %.not5.i93, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE7reverseB1z_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE7reverseB1z_.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 25620477880152156) %i.n, i64 %.sroa.01.0)
  %i.z = shl nuw nsw i64 %.sroa.0.0.i39, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB3w_11collections5btree3mapINtB4j_8BTreeMaplB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB5j_8adapters3map3MapINtNtB6g_6filter6FilterINtNtNtB5j_7sources7from_fn6FromFnNCNvB20_12visit_fields0ENCNvMB20_NtB20_19StatisticsCollector7try_new0ENCB7Y_s_0EE0E0EB28_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 25620477880152156) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB3y_11collections5btree3mapINtB4l_8BTreeMaplB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB5l_8adapters3map3MapINtNtB6i_6filter6FilterINtNtNtB5l_7sources7from_fn6FromFnNCNvB22_12visit_fields0ENCNvMB22_NtB22_19StatisticsCollector7try_new0ENCB80_s_0EE0E0EB2a_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i38, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 25620477880152156) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(360) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !16823
  %i.aa = shl nuw nsw i64 %.sroa.0.0.i38, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB3w_11collections5btree3mapINtB4j_8BTreeMaplB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB5j_8adapters3map3MapINtNtB6g_6filter6FilterINtNtNtB5j_7sources7from_fn6FromFnNCNvB20_12visit_fields0ENCNvMB20_NtB20_19StatisticsCollector7try_new0ENCB7Y_s_0EE0E0EB28_.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE7reverseB1z_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core10intrinsics25typed_swap_nonoverlappingTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB25_.exit.i.i, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4447 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i.thread ], [ %.sroa.0.0.i.i94101105, %_RINvNtCscI6d9CVNmLh_4core10intrinsics25typed_swap_nonoverlappingTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB25_.exit.i.i ]
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i.i4447, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB3w_11collections5btree3mapINtB4j_8BTreeMaplB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB5j_8adapters3map3MapINtNtB6g_6filter6FilterINtNtNtB5j_7sources7from_fn6FromFnNCNvB20_12visit_fields0ENCNvMB20_NtB20_19StatisticsCollector7try_new0ENCB7Y_s_0EE0E0EB28_.exit

bb.q:                                             ; preds = %bb.n
  %i.ae = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16850), !noalias !16849
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16851), !noalias !16849
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE7reverseB1z_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i.thread96, %bb.q
  %i.af = phi i64 [ %i.ae, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i.thread96 ]
  %.sroa.0.0.i.i94101105 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i.thread96 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [360 x i8], ptr %i.o, i64 %.sroa.0.0.i.i94101105
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %_RINvNtCscI6d9CVNmLh_4core10intrinsics25typed_swap_nonoverlappingTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB25_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.at, %_RINvNtCscI6d9CVNmLh_4core10intrinsics25typed_swap_nonoverlappingTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB25_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ah = xor i64 %.sroa.0.016.i.i, -1
  %i.ai = getelementptr inbounds nuw [360 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 3 uses
  %i.aj = getelementptr [360 x i8], ptr %i.ag, i64 %i.ah ; 3 uses
  br label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i, %.lr.ph.i.i37
  %.sroa.0.04.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i37 ], [ %i.aq, %.preheader.i.i.i.i.i ] ; 5 uses
  %i.ak = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.sroa.0.04.i.i.i.i.i.i ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.sroa.0.04.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16852), !noalias !16849
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16853), !noalias !16849
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !16854, !noalias !16855
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.am, align 8, !alias.scope !16856, !noalias !16857
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i, ptr %i.al, align 8, !alias.scope !16854, !noalias !16855
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %i.am, align 8, !alias.scope !16856, !noalias !16857
  %i.an = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i, 2 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ak ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16858), !noalias !16849
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16859), !noalias !16849
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.ao, align 8, !alias.scope !16860, !noalias !16861
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.ap, align 8, !alias.scope !16862, !noalias !16863
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i.1, ptr %i.ao, align 8, !alias.scope !16860, !noalias !16861
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.1, ptr %i.ap, align 8, !alias.scope !16862, !noalias !16863
  %i.aq = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i, 3 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.an ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.an ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16864), !noalias !16849
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16865), !noalias !16849
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.2 = load i64, ptr %i.ar, align 8, !alias.scope !16866, !noalias !16867
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.2 = load i64, ptr %i.as, align 8, !alias.scope !16868, !noalias !16869
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i.2, ptr %i.ar, align 8, !alias.scope !16866, !noalias !16867
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.2, ptr %i.as, align 8, !alias.scope !16868, !noalias !16869
  %exitcond.not.i.i.i.i.i.i.2 = icmp eq i64 %i.aq, 45
  br i1 %exitcond.not.i.i.i.i.i.i.2, label %_RINvNtCscI6d9CVNmLh_4core10intrinsics25typed_swap_nonoverlappingTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB25_.exit.i.i, label %.preheader.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core10intrinsics25typed_swap_nonoverlappingTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB25_.exit.i.i: ; preds = %.preheader.i.i.i.i.i
  %i.at = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, %i.af
  br i1 %exitcond.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE7reverseB1z_.exit, label %.lr.ph.i.i37

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB3w_11collections5btree3mapINtB4j_8BTreeMaplB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB5j_8adapters3map3MapINtNtB6g_6filter6FilterINtNtNtB5j_7sources7from_fn6FromFnNCNvB20_12visit_fields0ENCNvMB20_NtB20_19StatisticsCollector7try_new0ENCB7Y_s_0EE0E0EB28_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE7reverseB1z_.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ad, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE7reverseB1z_.exit ], [ %i.ab, %bb.p ], [ %i.z, %bb.o ] ; 2 uses
  %i.au = lshr i64 %.sroa.023.0, 1
  %i.av = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aw = sub nsw i64 %factor, %i.au
  %i.ax = add nuw nsw i64 %i.av, %factor
  %i.ay = mul i64 %i.aw, %.sroa.0.0
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 false)
  %i.bc = trunc nuw nsw i64 %i.bb to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph64, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3z_11collections5btree3mapINtB4m_8BTreeMaplB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtNtNtB5m_7sources7from_fn6FromFnNCNvB23_12visit_fields0ENCNvMB23_NtB23_19StatisticsCollector7try_new0ENCB81_s_0EE0E0EB2b_.exit
  %.sroa.02.163 = phi i64 [ %.sroa.02.0, %.lr.ph64 ], [ %i.bd, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3z_11collections5btree3mapINtB4m_8BTreeMaplB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtNtNtB5m_7sources7from_fn6FromFnNCNvB23_12visit_fields0ENCNvMB23_NtB23_19StatisticsCollector7try_new0ENCB81_s_0EE0E0EB2b_.exit ] ; 2 uses
  %.sroa.023.162 = phi i64 [ %.sroa.023.0, %.lr.ph64 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3z_11collections5btree3mapINtB4m_8BTreeMaplB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtNtNtB5m_7sources7from_fn6FromFnNCNvB23_12visit_fields0ENCNvMB23_NtB23_19StatisticsCollector7try_new0ENCB81_s_0EE0E0EB2b_.exit ] ; 4 uses
  %i.bd = add i64 %.sroa.02.163, -1               ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noundef !62
  %.not29 = icmp ult i8 %i.bf, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3z_11collections5btree3mapINtB4m_8BTreeMaplB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtNtNtB5m_7sources7from_fn6FromFnNCNvB23_12visit_fields0ENCNvMB23_NtB23_19StatisticsCollector7try_new0ENCB81_s_0EE0E0EB2b_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.162, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3z_11collections5btree3mapINtB4m_8BTreeMaplB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtNtNtB5m_7sources7from_fn6FromFnNCNvB23_12visit_fields0ENCNvMB23_NtB23_19StatisticsCollector7try_new0ENCB81_s_0EE0E0EB2b_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.163, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3z_11collections5btree3mapINtB4m_8BTreeMaplB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtNtNtB5m_7sources7from_fn6FromFnNCNvB23_12visit_fields0ENCNvMB23_NtB23_19StatisticsCollector7try_new0ENCB81_s_0EE0E0EB2b_.exit ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bh, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bd
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !62 ; 3 uses
  %i.bk = lshr i64 %i.bj, 1                       ; 8 uses
  %i.bl = lshr i64 %.sroa.023.162, 1              ; 6 uses
  %i.bm = add nuw i64 %i.bk, %i.bl                ; 4 uses
  %i.bn = sub i64 %.sroa.09.0, %i.bm
  %i.bo = getelementptr inbounds nuw [360 x i8], ptr %0, i64 %i.bn ; 6 uses
  %i.bp = icmp samesign ugt i64 %i.bm, %3
  %i.bq = trunc i64 %.sroa.023.162 to i1
  %i.br = or i64 %i.bj, %.sroa.023.162
  %i.bs = trunc i64 %i.br to i1
  %or.cond3.i = or i1 %i.bp, %i.bs
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bt = trunc i64 %i.bj to i1
  br i1 %i.bt, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bu = shl nuw nsw i64 %i.bm, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3z_11collections5btree3mapINtB4m_8BTreeMaplB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtNtNtB5m_7sources7from_fn6FromFnNCNvB23_12visit_fields0ENCNvMB23_NtB23_19StatisticsCollector7try_new0ENCB81_s_0EE0E0EB2b_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bq, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.bv = or i64 %i.bk, 1
  %i.bw = tail call range(i64 9, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB3y_11collections5btree3mapINtB4l_8BTreeMaplB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB5l_8adapters3map3MapINtNtB6i_6filter6FilterINtNtNtB5l_7sources7from_fn6FromFnNCNvB22_12visit_fields0ENCNvMB22_NtB22_19StatisticsCollector7try_new0ENCB80_s_0EE0E0EB2a_(ptr noalias noundef nonnull align 8 %i.bo, i64 noundef range(i64 0, 25620477880152156) %i.bk, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 25620477880152156) %3, i32 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(360) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !16836
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16871)
  %i.ca = icmp eq i64 %i.bk, 0
  %i.cb = icmp eq i64 %i.bl, 0
  %or.cond.i = or i1 %i.cb, %i.ca
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB3q_11collections5btree3mapINtB4c_8BTreeMaplBZ_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB5b_8adapters3map3MapINtNtB67_6filter6FilterINtNtNtB5b_7sources7from_fn6FromFnNCNvB1U_12visit_fields0ENCNvMB1U_NtB1U_19StatisticsCollector7try_new0ENCB7P_s_0EE0E0EB22_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 range(i64 0, -9223372036854775808) %i.bk) ; 2 uses
  %i.cc = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.cc, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB3q_11collections5btree3mapINtB4c_8BTreeMaplBZ_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB5b_8adapters3map3MapINtNtB67_6filter6FilterINtNtNtB5b_7sources7from_fn6FromFnNCNvB1U_12visit_fields0ENCNvMB1U_NtB1U_19StatisticsCollector7try_new0ENCB7P_s_0EE0E0EB22_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.cd = getelementptr inbounds nuw [360 x i8], ptr %i.bo, i64 %i.bk ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bk, %i.bl  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.cd, ptr %i.bo
  %i.ce = mul nuw nsw i64 %.sroa.0.0.i.i35, 360   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.ce, i1 false), !alias.scope !16872
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 %i.ce ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cg = phi ptr [ %i.cq, %.preheader.i ], [ %i.cf, %.critedge.i ]
  %i.ch = phi ptr [ %i.co, %.preheader.i ], [ %i.cd, %.critedge.i ]
  %.sroa.0.0.i17.i = phi ptr [ %i.ck, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -360 ; 3 uses
  %i.cj = getelementptr inbounds i8, ptr %i.cg, i64 -360 ; 3 uses
  %i.ck = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -360 ; 2 uses
  %.val.i.i = load i32, ptr %i.cj, align 4, !alias.scope !16871, !noalias !16873, !noundef !62
  %.val10.i.i = load i32, ptr %i.ci, align 4, !alias.scope !16870, !noalias !16874, !noundef !62
  %i.cl = icmp slt i32 %.val.i.i, %.val10.i.i     ; 3 uses
  %..i.i = select i1 %i.cl, ptr %i.ci, ptr %i.cj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.ck, ptr noundef nonnull align 8 dereferenceable(360) %..i.i, i64 360, i1 false), !alias.scope !16872, !noalias !16875
  %i.cm = xor i1 %i.cl, true
  %i.cn = zext i1 %i.cm to i64
  %i.co = getelementptr inbounds nuw [360 x i8], ptr %i.ci, i64 %i.cn ; 3 uses
  %i.cp = zext i1 %i.cl to i64
  %i.cq = getelementptr inbounds nuw [360 x i8], ptr %i.cj, i64 %i.cp ; 3 uses
  %i.cr = icmp eq ptr %i.co, %i.bo
  %i.cs = icmp eq ptr %i.cq, %2
  %or.cond.i.i = select i1 %i.cr, i1 true, i1 %i.cs
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB3Q_11collections5btree3mapINtB4D_8BTreeMaplB1c_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB5D_8adapters3map3MapINtNtB6A_6filter6FilterINtNtNtB5D_7sources7from_fn6FromFnNCNvB27_12visit_fields0ENCNvMB27_NtB27_19StatisticsCollector7try_new0ENCB8i_s_0EE0E0EB2f_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.ct = phi ptr [ %i.db, %.lr.ph.i.i ], [ %i.bo, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.da, %.lr.ph.i.i ], [ %i.cd, %.critedge.i ] ; 3 uses
  %i.cu = phi ptr [ %i.cy, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %.sroa.0.0.val.i.i = load i32, ptr %.sroa.0.02.i.i, align 4, !alias.scope !16870, !noalias !16876, !noundef !62
  %.val.i19.i = load i32, ptr %i.cu, align 4, !alias.scope !16871, !noalias !16877, !noundef !62
  %i.cv = icmp slt i32 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.cw = xor i1 %i.cv, true
  %spec.select.i.i = select i1 %i.cv, ptr %.sroa.0.02.i.i, ptr %i.cu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.ct, ptr noundef nonnull align 8 dereferenceable(360) %spec.select.i.i, i64 360, i1 false), !alias.scope !16872, !noalias !16878
  %i.cx = zext i1 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [360 x i8], ptr %i.cu, i64 %i.cx ; 3 uses
  %i.cz = zext i1 %i.cv to i64
  %i.da = getelementptr inbounds nuw [360 x i8], ptr %.sroa.0.02.i.i, i64 %i.cz ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 360 ; 2 uses
  %i.dc = icmp ne ptr %i.cy, %i.cf
  %i.dd = icmp ne ptr %i.da, %i.m
  %or.cond.i20.i = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB3Q_11collections5btree3mapINtB4D_8BTreeMaplB1c_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB5D_8adapters3map3MapINtNtB6A_6filter6FilterINtNtNtB5D_7sources7from_fn6FromFnNCNvB27_12visit_fields0ENCNvMB27_NtB27_19StatisticsCollector7try_new0ENCB8i_s_0EE0E0EB2f_.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB3Q_11collections5btree3mapINtB4D_8BTreeMaplB1c_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB5D_8adapters3map3MapINtNtB6A_6filter6FilterINtNtNtB5D_7sources7from_fn6FromFnNCNvB27_12visit_fields0ENCNvMB27_NtB27_19StatisticsCollector7try_new0ENCB8i_s_0EE0E0EB2f_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.co, %.preheader.i ], [ %i.db, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.cq, %.preheader.i ], [ %i.cf, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.cy, %.lr.ph.i.i ] ; 2 uses
  %i.de = ptrtoint ptr %.sroa.7.0.i to i64
  %i.df = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dg = sub nuw i64 %i.de, %i.df
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.dg, i1 false), !alias.scope !16872, !noalias !16879
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB3q_11collections5btree3mapINtB4c_8BTreeMaplBZ_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB5b_8adapters3map3MapINtNtB67_6filter6FilterINtNtNtB5b_7sources7from_fn6FromFnNCNvB1U_12visit_fields0ENCNvMB1U_NtB1U_19StatisticsCollector7try_new0ENCB7P_s_0EE0E0EB22_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB3q_11collections5btree3mapINtB4c_8BTreeMaplBZ_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB5b_8adapters3map3MapINtNtB67_6filter6FilterINtNtNtB5b_7sources7from_fn6FromFnNCNvB1U_12visit_fields0ENCNvMB1U_NtB1U_19StatisticsCollector7try_new0ENCB7P_s_0EE0E0EB22_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB3Q_11collections5btree3mapINtB4D_8BTreeMaplB1c_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB5D_8adapters3map3MapINtNtB6A_6filter6FilterINtNtNtB5D_7sources7from_fn6FromFnNCNvB27_12visit_fields0ENCNvMB27_NtB27_19StatisticsCollector7try_new0ENCB8i_s_0EE0E0EB2f_.exit.i
  %i.dh = shl nuw nsw i64 %i.bm, 1
  %i.di = or disjoint i64 %i.dh, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3z_11collections5btree3mapINtB4m_8BTreeMaplB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtNtNtB5m_7sources7from_fn6FromFnNCNvB23_12visit_fields0ENCNvMB23_NtB23_19StatisticsCollector7try_new0ENCB81_s_0EE0E0EB2b_.exit

bb.z:                                             ; preds = %bb.v
  %i.dj = getelementptr inbounds nuw [360 x i8], ptr %i.bo, i64 %i.bk
  %i.dk = or i64 %i.bl, 1
  %i.dl = tail call range(i64 9, 64) i64 @llvm.ctlz.i64(i64 %i.dk, i1 true)
  %i.dm = trunc nuw nsw i64 %i.dl to i32
  %i.dn = shl nuw nsw i32 %i.dm, 1
  %i.do = xor i32 %i.dn, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB3y_11collections5btree3mapINtB4l_8BTreeMaplB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB5l_8adapters3map3MapINtNtB6i_6filter6FilterINtNtNtB5l_7sources7from_fn6FromFnNCNvB22_12visit_fields0ENCNvMB22_NtB22_19StatisticsCollector7try_new0ENCB80_s_0EE0E0EB2a_(ptr noalias noundef nonnull align 8 %i.dj, i64 noundef range(i64 0, 25620477880152156) %i.bl, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 25620477880152156) %3, i32 noundef %i.do, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(360) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !16836
  br label %bb.x

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3z_11collections5btree3mapINtB4m_8BTreeMaplB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtNtNtB5m_7sources7from_fn6FromFnNCNvB23_12visit_fields0ENCNvMB23_NtB23_19StatisticsCollector7try_new0ENCB81_s_0EE0E0EB2b_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB3q_11collections5btree3mapINtB4c_8BTreeMaplBZ_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB5b_8adapters3map3MapINtNtB67_6filter6FilterINtNtNtB5b_7sources7from_fn6FromFnNCNvB1U_12visit_fields0ENCNvMB1U_NtB1U_19StatisticsCollector7try_new0ENCB7P_s_0EE0E0EB22_.exit
  %.sroa.0.0.i = phi i64 [ %i.di, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB3q_11collections5btree3mapINtB4c_8BTreeMaplBZ_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB5b_8adapters3map3MapINtNtB67_6filter6FilterINtNtNtB5b_7sources7from_fn6FromFnNCNvB1U_12visit_fields0ENCNvMB1U_NtB1U_19StatisticsCollector7try_new0ENCB7P_s_0EE0E0EB22_.exit ], [ %i.bu, %bb.u ] ; 2 uses
  %i.dp = icmp ugt i64 %i.bd, 1
  br i1 %i.dp, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.dq = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dr = lshr i64 %.sroa.018.0, 1
  %i.ds = add nuw i64 %i.dr, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.dt = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dt, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.du = or i64 %1, 1
  %i.dv = tail call range(i64 9, 64) i64 @llvm.ctlz.i64(i64 %i.du, i1 true)
  %i.dw = trunc nuw nsw i64 %i.dv to i32
  %i.dx = shl nuw nsw i32 %i.dw, 1
  %i.dy = xor i32 %i.dx, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB3y_11collections5btree3mapINtB4l_8BTreeMaplB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB5l_8adapters3map3MapINtNtB6i_6filter6FilterINtNtNtB5l_7sources7from_fn6FromFnNCNvB22_12visit_fields0ENCNvMB22_NtB22_19StatisticsCollector7try_new0ENCB80_s_0EE0E0EB2a_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 25620477880152156) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 25620477880152156) %3, i32 noundef %i.dy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(360) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !16836
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB1U_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB2R_8adapters10filter_map9FilterMapINtNtB3N_3zip3ZipINtNtNtB18_3vec9into_iter8IntoIterlEB4F_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5s_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %.not5.i91 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i96 = icmp ugt i64 %.sroa.01.0, 2
  %scevgep = getelementptr i8, ptr %0, i64 -8
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.em, %bb.aa ] ; 8 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ek, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters10filter_map9FilterMapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4O_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5B_.exit
  %.sroa.021.0 = phi i8 [ %i.bu, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters10filter_map9FilterMapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4O_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5B_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters10filter_map9FilterMapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4O_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5B_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph63, label %._crit_edge

.lr.ph63:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 10 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i.thread94, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val10.i = load i32, ptr %i.q, align 4, !alias.scope !16904, !noalias !16905, !noundef !62 ; 3 uses
  %.val11.i = load i32, ptr %i.o, align 4, !alias.scope !16904, !noalias !16905, !noundef !62
  %i.r = icmp ult i32 %.val10.i, %.val11.i        ; 2 uses
  %.not70 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i.thread94, label %.lr.ph57

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.val9.i = phi i32 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader48 ]
  %.sroa.01.0.i.i53 = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader48 ] ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i53
  %6 = add nsw i64 %.sroa.01.0.i.i53, -1
  %7 = icmp ult i64 %6, %i.n
  tail call void @llvm.assume(i1 %7)
  %.val8.i = load i32, ptr %i.s, align 4, !alias.scope !16904, !noalias !16905, !noundef !62 ; 2 uses
  %i.t = icmp ult i32 %.val8.i, %.val9.i
  br i1 %i.t, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i53, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i, label %.lr.ph

.lr.ph57:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i32 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i56 = phi i64 [ %i.x, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i56
  %8 = add nsw i64 %.sroa.01.1.i.i56, -1
  %9 = icmp ult i64 %8, %i.n
  tail call void @llvm.assume(i1 %9)
  %.val.i = load i32, ptr %i.v, align 4, !alias.scope !16904, !noalias !16905, !noundef !62 ; 2 uses
  %i.w = icmp ult i32 %.val.i, %.val7.i
  br i1 %i.w, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i

bb.m:                                             ; preds = %.lr.ph57
  %i.x = add nuw i64 %.sroa.01.1.i.i56, 1         ; 2 uses
  %exitcond77.not = icmp eq i64 %i.x, %i.n
  br i1 %exitcond77.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i, label %.lr.ph57

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph57
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i56, %.lr.ph57 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i53, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i.thread94: ; preds = %.preheader
  br i1 %.not5.i96, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i91, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0)
  %i.z = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters10filter_map9FilterMapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4O_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5B_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1h_11collections5btree3mapINtB24_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB31_8adapters10filter_map9FilterMapINtNtB3Y_3zip3ZipINtNtNtB1h_3vec9into_iter8IntoIterlEB4Q_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5D_(ptr noalias noundef nonnull align 4 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !16884
  %i.aa = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters10filter_map9FilterMapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4O_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5B_.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.prol.loopexit, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i, %middle.block, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i.thread ], [ %.sroa.0.0.i.i9299103, %middle.block ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.prol.loopexit ]
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters10filter_map9FilterMapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4O_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5B_.exit

bb.q:                                             ; preds = %bb.n
  %i.ae = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16906), !noalias !16905
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16907), !noalias !16905
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i.thread94, %bb.q
  %i.af = phi i64 [ %i.ae, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i.thread94 ] ; 7 uses
  %.sroa.0.0.i.i9299103 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i.thread94 ] ; 5 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i9299103 ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.af, 18
  br i1 %min.iters.check, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i
  %i.ah = add nsw i64 %i.af, -1                   ; 2 uses
  %i.ai = add i64 %.sroa.0.0.i.i9299103, %.sroa.09.0
  %i.aj = shl i64 %i.ai, 3
  %scevgep116 = getelementptr i8, ptr %scevgep, i64 %i.aj ; 2 uses
  %mul.result.neg = mul i64 %i.ah, -8
  %mul.overflow = icmp ugt i64 %i.ah, 2305843009213693951
  %i.ak = getelementptr i8, ptr %scevgep116, i64 %mul.result.neg
  %i.al = icmp ugt ptr %i.ak, %scevgep116
  %i.am = or i1 %i.al, %mul.overflow
  br i1 %i.am, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.af, 4611686018427387902     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = xor i64 %index, -1
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %i.ag, i64 %i.an ; 2 uses
  %wide.vec = load <4 x i32>, ptr %i.ao, align 4, !alias.scope !16908, !noalias !16909
  %i.aq = getelementptr i8, ptr %i.ap, i64 -8
  %wide.load = load <2 x i64>, ptr %i.aq, align 4, !alias.scope !16910, !noalias !16911
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.ao, align 4, !alias.scope !16908, !noalias !16909
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -8
  %interleaved.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec, ptr %i.ar, align 4, !alias.scope !16910, !noalias !16911
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !16890

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.preheader

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.preheader: ; preds = %vector.scevcheck, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.016.i.i.ph, 1
  %xtraiter = and i64 %i.af, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.prol.loopexit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.prol

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.prol: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.preheader
  %i.at = xor i64 %.sroa.0.016.i.i.ph, -1
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.ph ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %i.ag, i64 %i.at ; 2 uses
  %i.aw = load i64, ptr %i.av, align 4, !alias.scope !16910, !noalias !16911
  %i.ax = load <2 x i32>, ptr %i.au, align 4, !alias.scope !16908, !noalias !16909
  store i64 %i.aw, ptr %i.au, align 4, !alias.scope !16908, !noalias !16909
  store <2 x i32> %i.ax, ptr %i.av, align 4, !alias.scope !16910, !noalias !16911
  %i.ay = or disjoint i64 %.sroa.0.016.i.i.ph, 1
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.prol.loopexit

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.prol.loopexit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.prol, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.preheader
  %.sroa.0.016.i.i.unr = phi i64 [ %.sroa.0.016.i.i.ph, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.preheader ], [ %i.ay, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.prol ]
  %i.az = icmp eq i64 %i.af, %.neg
  br i1 %i.az, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.prol.loopexit, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.bl, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i ], [ %.sroa.0.016.i.i.unr, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.prol.loopexit ] ; 5 uses
  %i.ba = xor i64 %.sroa.0.016.i.i, -1
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.bc = getelementptr [8 x i8], ptr %i.ag, i64 %i.ba ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 4, !alias.scope !16910, !noalias !16911
  %i.be = load <2 x i32>, ptr %i.bb, align 4, !alias.scope !16908, !noalias !16909
  store i64 %i.bd, ptr %i.bb, align 4, !alias.scope !16908, !noalias !16909
  store <2 x i32> %i.be, ptr %i.bc, align 4, !alias.scope !16910, !noalias !16911
  %i.bf = sub i64 -2, %.sroa.0.016.i.i
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bi = getelementptr [8 x i8], ptr %i.ag, i64 %i.bf ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 4, !alias.scope !16910, !noalias !16911
  %i.bk = load <2 x i32>, ptr %i.bh, align 4, !alias.scope !16908, !noalias !16909
  store i64 %i.bj, ptr %i.bh, align 4, !alias.scope !16908, !noalias !16909
  store <2 x i32> %i.bk, ptr %i.bi, align 4, !alias.scope !16910, !noalias !16911
  %i.bl = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.bl, %i.af
  br i1 %exitcond.not.i.i.1, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i, !llvm.loop !16891

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters10filter_map9FilterMapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4O_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5B_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ad, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit ], [ %i.ab, %bb.p ], [ %i.z, %bb.o ] ; 2 uses
  %i.bm = lshr i64 %.sroa.023.0, 1
  %i.bn = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bo = sub nsw i64 %factor, %i.bm
  %i.bp = add nuw nsw i64 %i.bn, %factor
  %i.bq = mul i64 %i.bo, %.sroa.0.0
  %i.br = mul i64 %i.bp, %.sroa.0.0
  %i.bs = xor i64 %i.br, %i.bq
  %i.bt = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bs, i1 false)
  %i.bu = trunc nuw nsw i64 %i.bt to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph63, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4R_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5E_.exit
  %.sroa.02.162 = phi i64 [ %.sroa.02.0, %.lr.ph63 ], [ %i.bv, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4R_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5E_.exit ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.023.0, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4R_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5E_.exit ] ; 4 uses
  %i.bv = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noundef !62
  %.not29 = icmp ult i8 %i.bx, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4R_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5E_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4R_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5E_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4R_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5E_.exit ] ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bz, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bv
  %i.cb = load i64, ptr %i.ca, align 8, !noundef !62 ; 3 uses
  %i.cc = lshr i64 %i.cb, 1                       ; 8 uses
  %i.cd = lshr i64 %.sroa.023.161, 1              ; 6 uses
  %i.ce = add nuw i64 %i.cc, %i.cd                ; 4 uses
  %i.cf = sub i64 %.sroa.09.0, %i.ce
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cf ; 6 uses
  %i.ch = icmp samesign ugt i64 %i.ce, %3
  %i.ci = trunc i64 %.sroa.023.161 to i1
  %i.cj = or i64 %i.cb, %.sroa.023.161
  %i.ck = trunc i64 %i.cj to i1
  %or.cond3.i = or i1 %i.ch, %i.ck
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cl = trunc i64 %i.cb to i1
  br i1 %i.cl, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cm = shl nuw nsw i64 %i.ce, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4R_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5E_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.ci, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.cn = or i64 %i.cc, 1
  %i.co = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cn, i1 true)
  %i.cp = trunc nuw nsw i64 %i.co to i32
  %i.cq = shl nuw nsw i32 %i.cp, 1
  %i.cr = xor i32 %i.cq, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1h_11collections5btree3mapINtB24_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB31_8adapters10filter_map9FilterMapINtNtB3Y_3zip3ZipINtNtNtB1h_3vec9into_iter8IntoIterlEB4Q_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5D_(ptr noalias noundef nonnull align 4 %i.cg, i64 noundef range(i64 0, 1152921504606846976) %i.cc, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cr, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !16892
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16913)
  %i.cs = icmp eq i64 %i.cc, 0
  %i.ct = icmp eq i64 %i.cd, 0
  %or.cond.i = or i1 %i.ct, %i.cs
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters10filter_map9FilterMapINtNtB3O_3zip3ZipINtNtNtB19_3vec9into_iter8IntoIterlEB4G_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5t_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.cd, i64 range(i64 0, -9223372036854775808) %i.cc) ; 2 uses
  %i.cu = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.cu, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters10filter_map9FilterMapINtNtB3O_3zip3ZipINtNtNtB19_3vec9into_iter8IntoIterlEB4G_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5t_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cc ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.cc, %i.cd  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.cv, ptr %i.cg
  %i.cw = shl nuw nsw i64 %.sroa.0.0.i.i35, 3     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %spec.select.i, i64 %i.cw, i1 false), !alias.scope !16914
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 %i.cw ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cy = phi ptr [ %i.dj, %.preheader.i ], [ %i.cx, %.critedge.i ]
  %i.cz = phi ptr [ %i.dh, %.preheader.i ], [ %i.cv, %.critedge.i ]
  %.sroa.0.0.i17.i = phi ptr [ %i.dc, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -8 ; 3 uses
  %i.db = getelementptr inbounds i8, ptr %i.cy, i64 -8 ; 3 uses
  %i.dc = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -8 ; 2 uses
  %.val.i.i = load i32, ptr %i.db, align 4, !alias.scope !16913, !noalias !16915, !noundef !62
  %.val10.i.i = load i32, ptr %i.da, align 4, !alias.scope !16912, !noalias !16916, !noundef !62
  %i.dd = icmp ult i32 %.val.i.i, %.val10.i.i     ; 3 uses
  %..i.i = select i1 %i.dd, ptr %i.da, ptr %i.db
  %i.de = load i64, ptr %..i.i, align 4, !alias.scope !16914, !noalias !16917
  store i64 %i.de, ptr %i.dc, align 4, !alias.scope !16912, !noalias !16916
  %i.df = xor i1 %i.dd, true
  %i.dg = zext i1 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dg ; 3 uses
  %i.di = zext i1 %i.dd to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.di ; 3 uses
  %i.dk = icmp eq ptr %i.dh, %i.cg
  %i.dl = icmp eq ptr %i.dj, %2
  %or.cond.i.i = select i1 %i.dk, i1 true, i1 %i.dl
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTmmEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1z_11collections5btree3mapINtB2m_8BTreeMapmmEINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3j_8adapters10filter_map9FilterMapINtNtB4g_3zip3ZipINtNtNtB1z_3vec9into_iter8IntoIterlEB58_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5V_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.dm = phi ptr [ %i.dv, %.lr.ph.i.i ], [ %i.cg, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.du, %.lr.ph.i.i ], [ %i.cv, %.critedge.i ] ; 3 uses
  %i.dn = phi ptr [ %i.ds, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %.sroa.0.0.val.i.i = load i32, ptr %.sroa.0.02.i.i, align 4, !alias.scope !16912, !noalias !16918, !noundef !62
  %.val.i19.i = load i32, ptr %i.dn, align 4, !alias.scope !16913, !noalias !16919, !noundef !62
  %i.do = icmp ult i32 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.dp = xor i1 %i.do, true
  %spec.select.i.i = select i1 %i.do, ptr %.sroa.0.02.i.i, ptr %i.dn
  %i.dq = load i64, ptr %spec.select.i.i, align 4, !alias.scope !16914, !noalias !16920
  store i64 %i.dq, ptr %i.dm, align 4, !alias.scope !16912, !noalias !16918
  %i.dr = zext i1 %i.dp to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dr ; 3 uses
  %i.dt = zext i1 %i.do to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i.i, i64 %i.dt ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  %i.dw = icmp ne ptr %i.ds, %i.cx
  %i.dx = icmp ne ptr %i.du, %i.m
  %or.cond.i20.i = select i1 %i.dw, i1 %i.dx, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTmmEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1z_11collections5btree3mapINtB2m_8BTreeMapmmEINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3j_8adapters10filter_map9FilterMapINtNtB4g_3zip3ZipINtNtNtB1z_3vec9into_iter8IntoIterlEB58_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5V_.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTmmEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1z_11collections5btree3mapINtB2m_8BTreeMapmmEINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3j_8adapters10filter_map9FilterMapINtNtB4g_3zip3ZipINtNtNtB1z_3vec9into_iter8IntoIterlEB58_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5V_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dh, %.preheader.i ], [ %i.dv, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dj, %.preheader.i ], [ %i.cx, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.ds, %.lr.ph.i.i ] ; 2 uses
  %i.dy = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dz = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ea = sub nuw i64 %i.dy, %i.dz
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.1.i, ptr align 4 %.sroa.0.1.i, i64 %i.ea, i1 false), !alias.scope !16914, !noalias !16921
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters10filter_map9FilterMapINtNtB3O_3zip3ZipINtNtNtB19_3vec9into_iter8IntoIterlEB4G_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5t_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters10filter_map9FilterMapINtNtB3O_3zip3ZipINtNtNtB19_3vec9into_iter8IntoIterlEB4G_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5t_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTmmEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1z_11collections5btree3mapINtB2m_8BTreeMapmmEINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3j_8adapters10filter_map9FilterMapINtNtB4g_3zip3ZipINtNtNtB1z_3vec9into_iter8IntoIterlEB58_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5V_.exit.i
  %i.eb = shl nuw nsw i64 %i.ce, 1
  %i.ec = or disjoint i64 %i.eb, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4R_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5E_.exit

bb.z:                                             ; preds = %bb.v
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cc
  %i.ee = or i64 %i.cd, 1
  %i.ef = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ee, i1 true)
  %i.eg = trunc nuw nsw i64 %i.ef to i32
  %i.eh = shl nuw nsw i32 %i.eg, 1
  %i.ei = xor i32 %i.eh, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1h_11collections5btree3mapINtB24_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB31_8adapters10filter_map9FilterMapINtNtB3Y_3zip3ZipINtNtNtB1h_3vec9into_iter8IntoIterlEB4Q_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5D_(ptr noalias noundef nonnull align 4 %i.ed, i64 noundef range(i64 0, 1152921504606846976) %i.cd, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ei, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !16892
  br label %bb.x

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4R_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5E_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters10filter_map9FilterMapINtNtB3O_3zip3ZipINtNtNtB19_3vec9into_iter8IntoIterlEB4G_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5t_.exit
  %.sroa.0.0.i = phi i64 [ %i.ec, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters10filter_map9FilterMapINtNtB3O_3zip3ZipINtNtNtB19_3vec9into_iter8IntoIterlEB4G_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5t_.exit ], [ %i.cm, %bb.u ] ; 2 uses
  %i.ej = icmp ugt i64 %i.bv, 1
  br i1 %i.ej, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.ek = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.el = lshr i64 %.sroa.018.0, 1
  %i.em = add nuw i64 %i.el, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.en = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.en, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eo = or i64 %1, 1
  %i.ep = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.eo, i1 true)
  %i.eq = trunc nuw nsw i64 %i.ep to i32
  %i.er = shl nuw nsw i32 %i.eq, 1
  %i.es = xor i32 %i.er, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1h_11collections5btree3mapINtB24_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB31_8adapters10filter_map9FilterMapINtNtB3Y_3zip3ZipINtNtNtB1h_3vec9into_iter8IntoIterlEB4Q_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5D_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.es, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !16892
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB1U_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB2R_8adapters3map3MapINtNtB3N_3zip3ZipINtNtNtB18_3vec9into_iter8IntoIterlEB4r_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5e_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %.not5.i91 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i96 = icmp ugt i64 %.sroa.01.0, 2
  %scevgep = getelementptr i8, ptr %0, i64 -8
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.em, %bb.aa ] ; 8 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ek, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters3map3MapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4A_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5n_.exit
  %.sroa.021.0 = phi i8 [ %i.bu, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters3map3MapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4A_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5n_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters3map3MapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4A_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5n_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph63, label %._crit_edge

.lr.ph63:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 10 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5m_.exit.i.thread94, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5m_.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5m_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val10.i = load i32, ptr %i.q, align 4, !alias.scope !16946, !noalias !16947, !noundef !62 ; 3 uses
  %.val11.i = load i32, ptr %i.o, align 4, !alias.scope !16946, !noalias !16947, !noundef !62
  %i.r = icmp ult i32 %.val10.i, %.val11.i        ; 2 uses
  %.not70 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5m_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5m_.exit.i.thread94, label %.lr.ph57

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.val9.i = phi i32 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader48 ]
  %.sroa.01.0.i.i53 = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader48 ] ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i53
  %6 = add nsw i64 %.sroa.01.0.i.i53, -1
  %7 = icmp ult i64 %6, %i.n
  tail call void @llvm.assume(i1 %7)
  %.val8.i = load i32, ptr %i.s, align 4, !alias.scope !16946, !noalias !16947, !noundef !62 ; 2 uses
  %i.t = icmp ult i32 %.val8.i, %.val9.i
  br i1 %i.t, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5m_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i53, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5m_.exit.i, label %.lr.ph

.lr.ph57:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i32 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i56 = phi i64 [ %i.x, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i56
  %8 = add nsw i64 %.sroa.01.1.i.i56, -1
  %9 = icmp ult i64 %8, %i.n
  tail call void @llvm.assume(i1 %9)
  %.val.i = load i32, ptr %i.v, align 4, !alias.scope !16946, !noalias !16947, !noundef !62 ; 2 uses
  %i.w = icmp ult i32 %.val.i, %.val7.i
  br i1 %i.w, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5m_.exit.i

bb.m:                                             ; preds = %.lr.ph57
  %i.x = add nuw i64 %.sroa.01.1.i.i56, 1         ; 2 uses
  %exitcond77.not = icmp eq i64 %i.x, %i.n
  br i1 %exitcond77.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5m_.exit.i, label %.lr.ph57

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5m_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph57
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i56, %.lr.ph57 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i53, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5m_.exit.i.thread94: ; preds = %.preheader
  br i1 %.not5.i96, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5m_.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i91, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5m_.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0)
  %i.z = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters3map3MapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4A_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5n_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1h_11collections5btree3mapINtB24_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB31_8adapters3map3MapINtNtB3Y_3zip3ZipINtNtNtB1h_3vec9into_iter8IntoIterlEB4C_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5p_(ptr noalias noundef nonnull align 4 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !16926
  %i.aa = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters3map3MapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4A_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5n_.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.prol.loopexit, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i, %middle.block, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5m_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5m_.exit.i.thread ], [ %.sroa.0.0.i.i9299103, %middle.block ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.prol.loopexit ]
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters3map3MapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4A_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5n_.exit

bb.q:                                             ; preds = %bb.n
  %i.ae = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16948), !noalias !16947
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16949), !noalias !16947
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5m_.exit.i.thread94, %bb.q
  %i.af = phi i64 [ %i.ae, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5m_.exit.i.thread94 ] ; 7 uses
  %.sroa.0.0.i.i9299103 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5m_.exit.i.thread94 ] ; 5 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i9299103 ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.af, 18
  br i1 %min.iters.check, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i
  %i.ah = add nsw i64 %i.af, -1                   ; 2 uses
  %i.ai = add i64 %.sroa.0.0.i.i9299103, %.sroa.09.0
  %i.aj = shl i64 %i.ai, 3
  %scevgep116 = getelementptr i8, ptr %scevgep, i64 %i.aj ; 2 uses
  %mul.result.neg = mul i64 %i.ah, -8
  %mul.overflow = icmp ugt i64 %i.ah, 2305843009213693951
  %i.ak = getelementptr i8, ptr %scevgep116, i64 %mul.result.neg
  %i.al = icmp ugt ptr %i.ak, %scevgep116
  %i.am = or i1 %i.al, %mul.overflow
  br i1 %i.am, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.af, 4611686018427387902     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = xor i64 %index, -1
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %i.ag, i64 %i.an ; 2 uses
  %wide.vec = load <4 x i32>, ptr %i.ao, align 4, !alias.scope !16950, !noalias !16951
  %i.aq = getelementptr i8, ptr %i.ap, i64 -8
  %wide.load = load <2 x i64>, ptr %i.aq, align 4, !alias.scope !16952, !noalias !16953
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.ao, align 4, !alias.scope !16950, !noalias !16951
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -8
  %interleaved.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec, ptr %i.ar, align 4, !alias.scope !16952, !noalias !16953
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !16932

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.preheader

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.preheader: ; preds = %vector.scevcheck, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.016.i.i.ph, 1
  %xtraiter = and i64 %i.af, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.prol.loopexit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.prol

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.prol: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.preheader
  %i.at = xor i64 %.sroa.0.016.i.i.ph, -1
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.ph ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %i.ag, i64 %i.at ; 2 uses
  %i.aw = load i64, ptr %i.av, align 4, !alias.scope !16952, !noalias !16953
  %i.ax = load <2 x i32>, ptr %i.au, align 4, !alias.scope !16950, !noalias !16951
  store i64 %i.aw, ptr %i.au, align 4, !alias.scope !16950, !noalias !16951
  store <2 x i32> %i.ax, ptr %i.av, align 4, !alias.scope !16952, !noalias !16953
  %i.ay = or disjoint i64 %.sroa.0.016.i.i.ph, 1
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.prol.loopexit

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.prol.loopexit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.prol, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.preheader
  %.sroa.0.016.i.i.unr = phi i64 [ %.sroa.0.016.i.i.ph, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.preheader ], [ %i.ay, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.prol ]
  %i.az = icmp eq i64 %i.af, %.neg
  br i1 %i.az, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.prol.loopexit, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.bl, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i ], [ %.sroa.0.016.i.i.unr, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.prol.loopexit ] ; 5 uses
  %i.ba = xor i64 %.sroa.0.016.i.i, -1
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.bc = getelementptr [8 x i8], ptr %i.ag, i64 %i.ba ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 4, !alias.scope !16952, !noalias !16953
  %i.be = load <2 x i32>, ptr %i.bb, align 4, !alias.scope !16950, !noalias !16951
  store i64 %i.bd, ptr %i.bb, align 4, !alias.scope !16950, !noalias !16951
  store <2 x i32> %i.be, ptr %i.bc, align 4, !alias.scope !16952, !noalias !16953
  %i.bf = sub i64 -2, %.sroa.0.016.i.i
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bi = getelementptr [8 x i8], ptr %i.ag, i64 %i.bf ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 4, !alias.scope !16952, !noalias !16953
  %i.bk = load <2 x i32>, ptr %i.bh, align 4, !alias.scope !16950, !noalias !16951
  store i64 %i.bj, ptr %i.bh, align 4, !alias.scope !16950, !noalias !16951
  store <2 x i32> %i.bk, ptr %i.bi, align 4, !alias.scope !16952, !noalias !16953
  %i.bl = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.bl, %i.af
  br i1 %exitcond.not.i.i.1, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i, !llvm.loop !16933

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters3map3MapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4A_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5n_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ad, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit ], [ %i.ab, %bb.p ], [ %i.z, %bb.o ] ; 2 uses
  %i.bm = lshr i64 %.sroa.023.0, 1
  %i.bn = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bo = sub nsw i64 %factor, %i.bm
  %i.bp = add nuw nsw i64 %i.bn, %factor
  %i.bq = mul i64 %i.bo, %.sroa.0.0
  %i.br = mul i64 %i.bp, %.sroa.0.0
  %i.bs = xor i64 %i.br, %i.bq
  %i.bt = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bs, i1 false)
  %i.bu = trunc nuw nsw i64 %i.bt to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph63, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4D_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5q_.exit
  %.sroa.02.162 = phi i64 [ %.sroa.02.0, %.lr.ph63 ], [ %i.bv, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4D_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5q_.exit ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.023.0, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4D_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5q_.exit ] ; 4 uses
  %i.bv = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noundef !62
  %.not29 = icmp ult i8 %i.bx, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4D_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5q_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4D_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5q_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4D_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5q_.exit ] ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bz, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bv
  %i.cb = load i64, ptr %i.ca, align 8, !noundef !62 ; 3 uses
  %i.cc = lshr i64 %i.cb, 1                       ; 8 uses
  %i.cd = lshr i64 %.sroa.023.161, 1              ; 6 uses
  %i.ce = add nuw i64 %i.cc, %i.cd                ; 4 uses
  %i.cf = sub i64 %.sroa.09.0, %i.ce
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cf ; 6 uses
  %i.ch = icmp samesign ugt i64 %i.ce, %3
  %i.ci = trunc i64 %.sroa.023.161 to i1
  %i.cj = or i64 %i.cb, %.sroa.023.161
  %i.ck = trunc i64 %i.cj to i1
  %or.cond3.i = or i1 %i.ch, %i.ck
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cl = trunc i64 %i.cb to i1
  br i1 %i.cl, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cm = shl nuw nsw i64 %i.ce, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4D_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5q_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.ci, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.cn = or i64 %i.cc, 1
  %i.co = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cn, i1 true)
  %i.cp = trunc nuw nsw i64 %i.co to i32
  %i.cq = shl nuw nsw i32 %i.cp, 1
  %i.cr = xor i32 %i.cq, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1h_11collections5btree3mapINtB24_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB31_8adapters3map3MapINtNtB3Y_3zip3ZipINtNtNtB1h_3vec9into_iter8IntoIterlEB4C_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5p_(ptr noalias noundef nonnull align 4 %i.cg, i64 noundef range(i64 0, 1152921504606846976) %i.cc, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cr, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !16934
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16954)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16955)
  %i.cs = icmp eq i64 %i.cc, 0
  %i.ct = icmp eq i64 %i.cd, 0
  %or.cond.i = or i1 %i.ct, %i.cs
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters3map3MapINtNtB3O_3zip3ZipINtNtNtB19_3vec9into_iter8IntoIterlEB4s_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5f_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.cd, i64 range(i64 0, -9223372036854775808) %i.cc) ; 2 uses
  %i.cu = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.cu, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters3map3MapINtNtB3O_3zip3ZipINtNtNtB19_3vec9into_iter8IntoIterlEB4s_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5f_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cc ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.cc, %i.cd  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.cv, ptr %i.cg
  %i.cw = shl nuw nsw i64 %.sroa.0.0.i.i35, 3     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %spec.select.i, i64 %i.cw, i1 false), !alias.scope !16956
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 %i.cw ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cy = phi ptr [ %i.dj, %.preheader.i ], [ %i.cx, %.critedge.i ]
  %i.cz = phi ptr [ %i.dh, %.preheader.i ], [ %i.cv, %.critedge.i ]
  %.sroa.0.0.i17.i = phi ptr [ %i.dc, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -8 ; 3 uses
  %i.db = getelementptr inbounds i8, ptr %i.cy, i64 -8 ; 3 uses
  %i.dc = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -8 ; 2 uses
  %.val.i.i = load i32, ptr %i.db, align 4, !alias.scope !16955, !noalias !16957, !noundef !62
  %.val10.i.i = load i32, ptr %i.da, align 4, !alias.scope !16954, !noalias !16958, !noundef !62
  %i.dd = icmp ult i32 %.val.i.i, %.val10.i.i     ; 3 uses
  %..i.i = select i1 %i.dd, ptr %i.da, ptr %i.db
  %i.de = load i64, ptr %..i.i, align 4, !alias.scope !16956, !noalias !16959
  store i64 %i.de, ptr %i.dc, align 4, !alias.scope !16954, !noalias !16958
  %i.df = xor i1 %i.dd, true
  %i.dg = zext i1 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dg ; 3 uses
  %i.di = zext i1 %i.dd to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.di ; 3 uses
  %i.dk = icmp eq ptr %i.dh, %i.cg
  %i.dl = icmp eq ptr %i.dj, %2
  %or.cond.i.i = select i1 %i.dk, i1 true, i1 %i.dl
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTmmEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1z_11collections5btree3mapINtB2m_8BTreeMapmmEINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3j_8adapters3map3MapINtNtB4g_3zip3ZipINtNtNtB1z_3vec9into_iter8IntoIterlEB4U_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5H_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.dm = phi ptr [ %i.dv, %.lr.ph.i.i ], [ %i.cg, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.du, %.lr.ph.i.i ], [ %i.cv, %.critedge.i ] ; 3 uses
  %i.dn = phi ptr [ %i.ds, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %.sroa.0.0.val.i.i = load i32, ptr %.sroa.0.02.i.i, align 4, !alias.scope !16954, !noalias !16960, !noundef !62
  %.val.i19.i = load i32, ptr %i.dn, align 4, !alias.scope !16955, !noalias !16961, !noundef !62
  %i.do = icmp ult i32 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.dp = xor i1 %i.do, true
  %spec.select.i.i = select i1 %i.do, ptr %.sroa.0.02.i.i, ptr %i.dn
  %i.dq = load i64, ptr %spec.select.i.i, align 4, !alias.scope !16956, !noalias !16962
  store i64 %i.dq, ptr %i.dm, align 4, !alias.scope !16954, !noalias !16960
  %i.dr = zext i1 %i.dp to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dr ; 3 uses
  %i.dt = zext i1 %i.do to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i.i, i64 %i.dt ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  %i.dw = icmp ne ptr %i.ds, %i.cx
  %i.dx = icmp ne ptr %i.du, %i.m
  %or.cond.i20.i = select i1 %i.dw, i1 %i.dx, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTmmEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1z_11collections5btree3mapINtB2m_8BTreeMapmmEINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3j_8adapters3map3MapINtNtB4g_3zip3ZipINtNtNtB1z_3vec9into_iter8IntoIterlEB4U_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5H_.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTmmEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1z_11collections5btree3mapINtB2m_8BTreeMapmmEINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3j_8adapters3map3MapINtNtB4g_3zip3ZipINtNtNtB1z_3vec9into_iter8IntoIterlEB4U_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5H_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dh, %.preheader.i ], [ %i.dv, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dj, %.preheader.i ], [ %i.cx, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.ds, %.lr.ph.i.i ] ; 2 uses
  %i.dy = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dz = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ea = sub nuw i64 %i.dy, %i.dz
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.1.i, ptr align 4 %.sroa.0.1.i, i64 %i.ea, i1 false), !alias.scope !16956, !noalias !16963
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters3map3MapINtNtB3O_3zip3ZipINtNtNtB19_3vec9into_iter8IntoIterlEB4s_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5f_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters3map3MapINtNtB3O_3zip3ZipINtNtNtB19_3vec9into_iter8IntoIterlEB4s_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5f_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTmmEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1z_11collections5btree3mapINtB2m_8BTreeMapmmEINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3j_8adapters3map3MapINtNtB4g_3zip3ZipINtNtNtB1z_3vec9into_iter8IntoIterlEB4U_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5H_.exit.i
  %i.eb = shl nuw nsw i64 %i.ce, 1
  %i.ec = or disjoint i64 %i.eb, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4D_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5q_.exit

bb.z:                                             ; preds = %bb.v
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cc
  %i.ee = or i64 %i.cd, 1
  %i.ef = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ee, i1 true)
  %i.eg = trunc nuw nsw i64 %i.ef to i32
  %i.eh = shl nuw nsw i32 %i.eg, 1
  %i.ei = xor i32 %i.eh, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1h_11collections5btree3mapINtB24_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB31_8adapters3map3MapINtNtB3Y_3zip3ZipINtNtNtB1h_3vec9into_iter8IntoIterlEB4C_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5p_(ptr noalias noundef nonnull align 4 %i.ed, i64 noundef range(i64 0, 1152921504606846976) %i.cd, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ei, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !16934
  br label %bb.x

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4D_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5q_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters3map3MapINtNtB3O_3zip3ZipINtNtNtB19_3vec9into_iter8IntoIterlEB4s_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5f_.exit
  %.sroa.0.0.i = phi i64 [ %i.ec, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters3map3MapINtNtB3O_3zip3ZipINtNtNtB19_3vec9into_iter8IntoIterlEB4s_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5f_.exit ], [ %i.cm, %bb.u ] ; 2 uses
  %i.ej = icmp ugt i64 %i.bv, 1
  br i1 %i.ej, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.ek = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.el = lshr i64 %.sroa.018.0, 1
  %i.em = add nuw i64 %i.el, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.en = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.en, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eo = or i64 %1, 1
  %i.ep = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.eo, i1 true)
  %i.eq = trunc nuw nsw i64 %i.ep to i32
  %i.er = shl nuw nsw i32 %i.eq, 1
  %i.es = xor i32 %i.er, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1h_11collections5btree3mapINtB24_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB31_8adapters3map3MapINtNtB3Y_3zip3ZipINtNtNtB1h_3vec9into_iter8IntoIterlEB4C_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5p_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.es, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !16934
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB1U_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB2R_8adapters3map3MapINtNtB3N_3zip3ZipINtNtNtB18_3vec9into_iter8IntoIterlEB4r_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5e_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %.not5.i91 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i96 = icmp ugt i64 %.sroa.01.0, 2
  %scevgep = getelementptr i8, ptr %0, i64 -8
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.em, %bb.aa ] ; 8 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ek, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters3map3MapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4A_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5n_.exit
  %.sroa.021.0 = phi i8 [ %i.bu, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters3map3MapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4A_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5n_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters3map3MapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4A_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5n_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph63, label %._crit_edge

.lr.ph63:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 10 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5m_.exit.i.thread94, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5m_.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5m_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val10.i = load i32, ptr %i.q, align 4, !alias.scope !16988, !noalias !16989, !noundef !62 ; 3 uses
  %.val11.i = load i32, ptr %i.o, align 4, !alias.scope !16988, !noalias !16989, !noundef !62
  %i.r = icmp ult i32 %.val10.i, %.val11.i        ; 2 uses
  %.not70 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5m_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5m_.exit.i.thread94, label %.lr.ph57

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.val9.i = phi i32 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader48 ]
  %.sroa.01.0.i.i53 = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader48 ] ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i53
  %6 = add nsw i64 %.sroa.01.0.i.i53, -1
  %7 = icmp ult i64 %6, %i.n
  tail call void @llvm.assume(i1 %7)
  %.val8.i = load i32, ptr %i.s, align 4, !alias.scope !16988, !noalias !16989, !noundef !62 ; 2 uses
  %i.t = icmp ult i32 %.val8.i, %.val9.i
  br i1 %i.t, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5m_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i53, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5m_.exit.i, label %.lr.ph

.lr.ph57:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i32 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i56 = phi i64 [ %i.x, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i56
  %8 = add nsw i64 %.sroa.01.1.i.i56, -1
  %9 = icmp ult i64 %8, %i.n
  tail call void @llvm.assume(i1 %9)
  %.val.i = load i32, ptr %i.v, align 4, !alias.scope !16988, !noalias !16989, !noundef !62 ; 2 uses
  %i.w = icmp ult i32 %.val.i, %.val7.i
  br i1 %i.w, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5m_.exit.i

bb.m:                                             ; preds = %.lr.ph57
  %i.x = add nuw i64 %.sroa.01.1.i.i56, 1         ; 2 uses
  %exitcond77.not = icmp eq i64 %i.x, %i.n
  br i1 %exitcond77.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5m_.exit.i, label %.lr.ph57

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5m_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph57
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i56, %.lr.ph57 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i53, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5m_.exit.i.thread94: ; preds = %.preheader
  br i1 %.not5.i96, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5m_.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i91, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5m_.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0)
  %i.z = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters3map3MapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4A_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5n_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1h_11collections5btree3mapINtB24_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB31_8adapters3map3MapINtNtB3Y_3zip3ZipINtNtNtB1h_3vec9into_iter8IntoIterlEB4C_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5p_(ptr noalias noundef nonnull align 4 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !16968
  %i.aa = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters3map3MapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4A_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5n_.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.prol.loopexit, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i, %middle.block, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5m_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5m_.exit.i.thread ], [ %.sroa.0.0.i.i9299103, %middle.block ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.prol.loopexit ]
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters3map3MapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4A_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5n_.exit

bb.q:                                             ; preds = %bb.n
  %i.ae = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16990), !noalias !16989
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16991), !noalias !16989
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5m_.exit.i.thread94, %bb.q
  %i.af = phi i64 [ %i.ae, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5m_.exit.i.thread94 ] ; 7 uses
  %.sroa.0.0.i.i9299103 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5m_.exit.i.thread94 ] ; 5 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i9299103 ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.af, 18
  br i1 %min.iters.check, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i
  %i.ah = add nsw i64 %i.af, -1                   ; 2 uses
  %i.ai = add i64 %.sroa.0.0.i.i9299103, %.sroa.09.0
  %i.aj = shl i64 %i.ai, 3
  %scevgep116 = getelementptr i8, ptr %scevgep, i64 %i.aj ; 2 uses
  %mul.result.neg = mul i64 %i.ah, -8
  %mul.overflow = icmp ugt i64 %i.ah, 2305843009213693951
  %i.ak = getelementptr i8, ptr %scevgep116, i64 %mul.result.neg
  %i.al = icmp ugt ptr %i.ak, %scevgep116
  %i.am = or i1 %i.al, %mul.overflow
  br i1 %i.am, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.af, 4611686018427387902     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = xor i64 %index, -1
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %i.ag, i64 %i.an ; 2 uses
  %wide.vec = load <4 x i32>, ptr %i.ao, align 4, !alias.scope !16992, !noalias !16993
  %i.aq = getelementptr i8, ptr %i.ap, i64 -8
  %wide.load = load <2 x i64>, ptr %i.aq, align 4, !alias.scope !16994, !noalias !16995
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.ao, align 4, !alias.scope !16992, !noalias !16993
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -8
  %interleaved.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec, ptr %i.ar, align 4, !alias.scope !16994, !noalias !16995
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !16974

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.preheader

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.preheader: ; preds = %vector.scevcheck, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.016.i.i.ph, 1
  %xtraiter = and i64 %i.af, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.prol.loopexit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.prol

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.prol: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.preheader
  %i.at = xor i64 %.sroa.0.016.i.i.ph, -1
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.ph ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %i.ag, i64 %i.at ; 2 uses
  %i.aw = load i64, ptr %i.av, align 4, !alias.scope !16994, !noalias !16995
  %i.ax = load <2 x i32>, ptr %i.au, align 4, !alias.scope !16992, !noalias !16993
  store i64 %i.aw, ptr %i.au, align 4, !alias.scope !16992, !noalias !16993
  store <2 x i32> %i.ax, ptr %i.av, align 4, !alias.scope !16994, !noalias !16995
  %i.ay = or disjoint i64 %.sroa.0.016.i.i.ph, 1
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.prol.loopexit

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.prol.loopexit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.prol, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.preheader
  %.sroa.0.016.i.i.unr = phi i64 [ %.sroa.0.016.i.i.ph, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.preheader ], [ %i.ay, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.prol ]
  %i.az = icmp eq i64 %i.af, %.neg
  br i1 %i.az, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.prol.loopexit, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.bl, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i ], [ %.sroa.0.016.i.i.unr, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.prol.loopexit ] ; 5 uses
  %i.ba = xor i64 %.sroa.0.016.i.i, -1
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.bc = getelementptr [8 x i8], ptr %i.ag, i64 %i.ba ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 4, !alias.scope !16994, !noalias !16995
  %i.be = load <2 x i32>, ptr %i.bb, align 4, !alias.scope !16992, !noalias !16993
  store i64 %i.bd, ptr %i.bb, align 4, !alias.scope !16992, !noalias !16993
  store <2 x i32> %i.be, ptr %i.bc, align 4, !alias.scope !16994, !noalias !16995
  %i.bf = sub i64 -2, %.sroa.0.016.i.i
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bi = getelementptr [8 x i8], ptr %i.ag, i64 %i.bf ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 4, !alias.scope !16994, !noalias !16995
  %i.bk = load <2 x i32>, ptr %i.bh, align 4, !alias.scope !16992, !noalias !16993
  store i64 %i.bj, ptr %i.bh, align 4, !alias.scope !16992, !noalias !16993
  store <2 x i32> %i.bk, ptr %i.bi, align 4, !alias.scope !16994, !noalias !16995
  %i.bl = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.bl, %i.af
  br i1 %exitcond.not.i.i.1, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i, !llvm.loop !16975

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters3map3MapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4A_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5n_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ad, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit ], [ %i.ab, %bb.p ], [ %i.z, %bb.o ] ; 2 uses
  %i.bm = lshr i64 %.sroa.023.0, 1
  %i.bn = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bo = sub nsw i64 %factor, %i.bm
  %i.bp = add nuw nsw i64 %i.bn, %factor
  %i.bq = mul i64 %i.bo, %.sroa.0.0
  %i.br = mul i64 %i.bp, %.sroa.0.0
  %i.bs = xor i64 %i.br, %i.bq
  %i.bt = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bs, i1 false)
  %i.bu = trunc nuw nsw i64 %i.bt to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph63, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4D_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5q_.exit
  %.sroa.02.162 = phi i64 [ %.sroa.02.0, %.lr.ph63 ], [ %i.bv, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4D_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5q_.exit ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.023.0, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4D_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5q_.exit ] ; 4 uses
  %i.bv = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noundef !62
  %.not29 = icmp ult i8 %i.bx, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4D_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5q_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4D_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5q_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4D_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5q_.exit ] ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bz, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bv
  %i.cb = load i64, ptr %i.ca, align 8, !noundef !62 ; 3 uses
  %i.cc = lshr i64 %i.cb, 1                       ; 8 uses
  %i.cd = lshr i64 %.sroa.023.161, 1              ; 6 uses
  %i.ce = add nuw i64 %i.cc, %i.cd                ; 4 uses
  %i.cf = sub i64 %.sroa.09.0, %i.ce
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cf ; 6 uses
  %i.ch = icmp samesign ugt i64 %i.ce, %3
  %i.ci = trunc i64 %.sroa.023.161 to i1
  %i.cj = or i64 %i.cb, %.sroa.023.161
  %i.ck = trunc i64 %i.cj to i1
  %or.cond3.i = or i1 %i.ch, %i.ck
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cl = trunc i64 %i.cb to i1
  br i1 %i.cl, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cm = shl nuw nsw i64 %i.ce, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4D_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5q_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.ci, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.cn = or i64 %i.cc, 1
  %i.co = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cn, i1 true)
  %i.cp = trunc nuw nsw i64 %i.co to i32
end_hunk_1
