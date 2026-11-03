Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontdrasil-bdef820a3e288df5.fontdrasil.bcdef5e85db49d1a-cgu.03?download=true
inline.NumInlined: 239
inline.NumDeleted: 196
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_3ops5range5RangejENCNvNtCsgdm2QMcbaeA_10fontdrasil3agl14uni_to_unicode0ENCB1v_s_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6option6OptionzEEB2v_8try_folduNCINvNvB2v_12try_for_each4callcINtNtB16_12control_flow11ControlFlowcENcNtB4R_5Break0E0B4R_E0IB4S_B4R_EEB1z_:bb.a
  %i.w = zext i8 %i.v to i32                      ; 2 uses
  %i.x = icmp ugt i8 %i.v, 57
  %i.y = add nsw i32 %i.w, -65
  %i.z = and i32 %i.y, -33
  %i.aa = add nuw nsw i32 %i.z, 10
  %i.ab = add nsw i32 %i.w, -48
  %.sroa.02.0.i.i.i.i.i.i = select i1 %i.x, i32 %i.aa, i32 %i.ab ; 2 uses
  %i.ac = icmp ult i32 %.sroa.02.0.i.i.i.i.i.i, 16
  br i1 %i.ac, label %bb.g, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ad = shl i32 %.sroa.045.256.i.i.i.i.i, 4
  %i.ae = add nsw i64 %.sroa.15.257.i.i.i.i.i, -1 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.258.i.i.i.i.i, i64 1
  %i.ag = or disjoint i32 %.sroa.02.0.i.i.i.i.i.i, %i.ad ; 4 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i, label %_RNCNvNtCsgdm2QMcbaeA_10fontdrasil3agl14uni_to_unicode0B5_.exit.i.i.i, label %bb.f

_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i.i.i.i: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35
  store i8 1, ptr %i.a, align 1, !noalias !35
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #15, !noalias !35
  unreachable

_RNCNvNtCsgdm2QMcbaeA_10fontdrasil3agl14uni_to_unicode0B5_.exit.i.i.i: ; preds = %bb.g
  %i.ah = and i32 %.sroa.045.256.i.i.i.i.i, 268435328
  %spec.select.i.i.i.i.i.i = icmp eq i32 %i.ah, 3456
  %i.ai = xor i32 %i.ag, 55296
  %i.aj = add i32 %i.ai, -1114112
  %i.ak = icmp ult i32 %i.aj, -1112064
  %i.al = or i1 %spec.select.i.i.i.i.i.i, %i.ak
  %i.am = icmp eq i32 %i.ag, -1
  %i.an = select i1 %i.al, i1 true, i1 %i.am
  br i1 %i.an, label %bb.h, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtCsgdm2QMcbaeA_10fontdrasil3agl14uni_to_unicode0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldmINtNtBc_6option6OptioncEuINtNtB12_12control_flow11ControlFlowIB3M_cEENCB1r_s_0NCINvXB8_INtB8_12GenericShuntIBO_BN_B4t_EIB3n_zEEB2h_8try_folduNCINvNvB2h_12try_for_each4callcB4l_NcNtB4l_5Break0E0B4l_E0E0B3L_EB1v_.exit

bb.h:                                             ; preds = %_RNCNvNtCsgdm2QMcbaeA_10fontdrasil3agl14uni_to_unicode0B5_.exit.i.i.i
  store i8 1, ptr %2, align 1, !noalias !35
  br label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtCsgdm2QMcbaeA_10fontdrasil3agl14uni_to_unicode0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldmINtNtBc_6option6OptioncEuINtNtB12_12control_flow11ControlFlowIB3M_cEENCB1r_s_0NCINvXB8_INtB8_12GenericShuntIBO_BN_B4t_EIB3n_zEEB2h_8try_folduNCINvNvB2h_12try_for_each4callcB4l_NcNtB4l_5Break0E0B4l_E0E0B3L_EB1v_.exit

_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtCsgdm2QMcbaeA_10fontdrasil3agl14uni_to_unicode0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldmINtNtBc_6option6OptioncEuINtNtB12_12control_flow11ControlFlowIB3M_cEENCB1r_s_0NCINvXB8_INtB8_12GenericShuntIBO_BN_B4t_EIB3n_zEEB2h_8try_folduNCINvNvB2h_12try_for_each4callcB4l_NcNtB4l_5Break0E0B4l_E0E0B3L_EB1v_.exit: ; preds = %bb.a, %_RNCNvNtCsgdm2QMcbaeA_10fontdrasil3agl14uni_to_unicode0B5_.exit.i.i.i, %bb.h
  %.sroa.0.0.i.i = phi i32 [ -1, %bb.h ], [ %i.ag, %_RNCNvNtCsgdm2QMcbaeA_10fontdrasil3agl14uni_to_unicode0B5_.exit.i.i.i ], [ -2, %bb.a ]
  ret i32 %.sroa.0.0.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterReEENvMs9_NtCsgdm2QMcbaeA_10fontdrasil5typesNtB1T_4Axis8for_testENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2M_8for_each4callB2r_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB42_3VecB2r_E14extend_trustedBN_E0E0EB1V_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterReEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_NtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisuNvMs9_B2D_B2B_8for_testNCINvNvB1w_8for_each4callB2B_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4g_3VecB2B_E14extend_trustedINtB2f_3MapBP_B3h_EE0E0E0EB2F_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateIBO_INtNtNtBc_5slice4iter4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1W_15NormalizedSpaceEENCNvMs1_NtB1Y_10variationsNtB3b_14VariationModel8new_impls0_0EENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1T_18sort_by_cached_keyNtB3b_15LocationSortKeyB33_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5x_8for_each4callTB51_jENCINvMsk_NtB4c_3vecINtB6Q_3VecB6A_E14extend_trustedBN_E0E0EB1Y_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !59, !noundef !4
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !60 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !60 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !60
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.d = load ptr, ptr %0, align 8, !alias.scope !62, !nonnull !4, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !62, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !62, !nonnull !4, !align !5, !noundef !4
  %i.i = icmp eq ptr %i.d, %i.f
  br i1 %i.i, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1R_15NormalizedSpaceEENCNvMs1_NtB1T_10variationsNtB36_14VariationModel8new_impls0_0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvB1b_8map_foldTjNtB36_15LocationSortKeyETB4X_jEuNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1O_18sort_by_cached_keyB4X_B2Y_Es_0NCINvNvB3Z_8for_each4callB5l_NCINvMsk_NtB5B_3vecINtB7e_3VecB5l_E14extend_trustedIB19_BS_B5t_EE0E0E0EB1T_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 24
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i.i.i = phi i64 [ %.sroa.4.0.copyload.i, %bb.b ], [ %i.q, %bb.d ] ; 3 uses
  %i.n = phi i64 [ %i.c, %bb.b ], [ %i.r, %bb.d ] ; 2 uses
  %.sroa.01.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.s, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.01.0.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !63
  invoke void @_RNvMs2_NtCsgdm2QMcbaeA_10fontdrasil10variationsNtB5_18LocationSortingHat7key_for(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o)
          to label %bb.d unwind label %bb.e, !noalias !64

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw [120 x i8], ptr %.sroa.5.0.copyload.i, i64 %.val10.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !65
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  store i64 %i.n, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !66
  %i.q = add i64 %.val10.i.i.i, 1                 ; 2 uses
  %i.r = add i64 %i.n, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !63
  %i.s = add nuw i64 %.sroa.01.0.i.i.i, 1         ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.m
  br i1 %i.t, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1R_15NormalizedSpaceEENCNvMs1_NtB1T_10variationsNtB36_14VariationModel8new_impls0_0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvB1b_8map_foldTjNtB36_15LocationSortKeyETB4X_jEuNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1O_18sort_by_cached_keyB4X_B2Y_Es_0NCINvNvB3Z_8for_each4callB5l_NCINvMsk_NtB5B_3vecINtB7e_3VecB5l_E14extend_trustedIB19_BS_B5t_EE0E0E0EB1T_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  store i64 %.val10.i.i.i, ptr %.sroa.0.0.copyload.i, align 8, !noalias !64
  resume { ptr, i32 } %i.u

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1R_15NormalizedSpaceEENCNvMs1_NtB1T_10variationsNtB36_14VariationModel8new_impls0_0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvB1b_8map_foldTjNtB36_15LocationSortKeyETB4X_jEuNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1O_18sort_by_cached_keyB4X_B2Y_Es_0NCINvNvB3Z_8for_each4callB5l_NCINvMsk_NtB5B_3vecINtB7e_3VecB5l_E14extend_trustedIB19_BS_B5t_EE0E0E0EB1T_.exit: ; preds = %bb.d, %bb.a
  %storemerge.i.i = phi i64 [ %.sroa.4.0.copyload.i, %bb.a ], [ %i.q, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  store i64 %storemerge.i.i, ptr %.sroa.0.0.copyload.i, align 8, !noalias !64
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisEENCNvMsa_B1R_NtB1R_4Axes3new0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2Z_8for_each4callTNtNtCsbZq13ASDQ8l_10font_types3tag3TagjENCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB4R_7HashMapB43_jNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB33_7collect6ExtendB42_E6extendBN_E0E0EB1T_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !73, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !73, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjRB1y_ETNtNtCsbZq13ASDQ8l_10font_types3tag3TagjEuNCNvMsa_B1A_NtB1A_4Axes3new0NCINvNvB2f_8for_each4callB3o_NCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB59_7HashMapB3p_jNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB2j_7collect6ExtendB3o_E6extendINtB2Y_3MapBS_B44_EE0E0E0EB1C_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !73, !noundef !4
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 296
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.2.0.i.i = phi i64 [ %i.f, %bb.b ], [ %i.n, %bb.c ] ; 2 uses
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw [296 x i8], ptr %i.a, i64 %.sroa.01.0.i.i
  %i.l = getelementptr i8, ptr %i.k, i64 288
  %.val.i.i = load i32, ptr %i.l, align 8, !noalias !73
  %i.m = tail call { i64, i64 } @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagjNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %.val.i.i, i64 noundef %.sroa.2.0.i.i), !noalias !74 ; 0 uses
  %i.n = add i64 %.sroa.2.0.i.i, 1
  %i.o = add nuw i64 %.sroa.01.0.i.i, 1           ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.j
  br i1 %i.p, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjRB1y_ETNtNtCsbZq13ASDQ8l_10font_types3tag3TagjEuNCNvMsa_B1A_NtB1A_4Axes3new0NCINvNvB2f_8for_each4callB3o_NCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB59_7HashMapB3p_jNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB2j_7collect6ExtendB3o_E6extendINtB2Y_3MapBS_B44_EE0E0E0EB1C_.exit, label %bb.c

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjRB1y_ETNtNtCsbZq13ASDQ8l_10font_types3tag3TagjEuNCNvMsa_B1A_NtB1A_4Axes3new0NCINvNvB2f_8for_each4callB3o_NCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB59_7HashMapB3p_jNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB2j_7collect6ExtendB3o_E6extendINtB2Y_3MapBS_B44_EE0E0E0EB1C_.exit: ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3str4iter5SplitcENvNtCsgdm2QMcbaeA_10fontdrasil3agl26glyph_component_to_unicodeENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB3e_13FlattenCompatppE9iter_fold7flattenINtNtCsgCecv3eZDcN_5alloc3vec3VeccEuNCINvNvXsi_B3e_B3r_B2p_4fold7flattenINtNtB4b_9into_iter8IntoItercEuNCINvNvB2p_8for_each4callcNCINvXsd_NtB4d_6stringNtB6m_6StringINtNtB2t_7collect6ExtendcE6extendINtB3e_7FlatMapBX_B48_B1o_EE0E0E0E0EB1s_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [72 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 65 ; 2 uses
  %.promoted.i = load i8, ptr %i.d, align 1, !alias.scope !93
  %.promoted11.i = load i64, ptr %i.c, align 8, !alias.scope !92 ; 4 uses
  %i.e = trunc nuw i8 %.promoted.i to i1
  br i1 %i.e, label %_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBQ_8adapters3map8map_foldReINtNtCsgCecv3eZDcN_5alloc3vec3VeccEuNvNtCsgdm2QMcbaeA_10fontdrasil3agl26glyph_component_to_unicodeNCINvNvMsg_NtB1C_7flattenINtB3Q_13FlattenCompatppE9iter_fold7flattenB25_uNCINvNvXsi_B3Q_B44_BK_4fold7flattenINtNtB28_9into_iter8IntoItercEuNCINvNvBK_8for_each4callcNCINvXsd_NtB2a_6stringNtB6s_6StringINtNtBO_7collect6ExtendcE6extendINtB3Q_7FlatMapB3_B25_B2F_EE0E0E0E0E0EB2J_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !93, !nonnull !4, !noundef !4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.val1.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !93, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !94, !noundef !4 ; 8 uses
  %.not.i.i.i.i = icmp ugt i64 %i.i, %.val1.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.l = load i8, ptr %i.k, align 8, !alias.scope !92 ; 2 uses
  %i.m = zext nneg i8 %i.l to i64                 ; 4 uses
  %i.n = icmp ult i8 %i.l, 5
  %i.o = getelementptr i8, ptr %i.j, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.r = load i8, ptr %i.q, align 8, !range !6, !alias.scope !92
  %i.s = trunc nuw i8 %i.r to i1                  ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre2.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !92 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br i1 %.not.i.i.i.i, label %.lr.ph.split.us.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.promoted15.i = load i64, ptr %i.t, align 8, !alias.scope !94
  br label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %.not.i3.i.i.us.i = icmp ne i64 %.pre2.i.i.i.i, %.promoted11.i
  %or.cond.not.i.i.i.us.i = select i1 %i.s, i1 true, i1 %.not.i3.i.i.us.i
  br i1 %or.cond.not.i.i.i.us.i, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsgdm2QMcbaeA_10fontdrasil.exit.i.i.us.us.i, label %_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBQ_8adapters3map8map_foldReINtNtCsgCecv3eZDcN_5alloc3vec3VeccEuNvNtCsgdm2QMcbaeA_10fontdrasil3agl26glyph_component_to_unicodeNCINvNvMsg_NtB1C_7flattenINtB3Q_13FlattenCompatppE9iter_fold7flattenB25_uNCINvNvXsi_B3Q_B44_BK_4fold7flattenINtNtB28_9into_iter8IntoItercEuNCINvNvBK_8for_each4callcNCINvXsd_NtB2a_6stringNtB6s_6StringINtNtBO_7collect6ExtendcE6extendINtB3Q_7FlatMapB3_B25_B2F_EE0E0E0E0E0EB2J_.exit

_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsgdm2QMcbaeA_10fontdrasil.exit.i.i.us.us.i: ; preds = %.lr.ph.split.us.i
  %.sroa.0.1.i.i.us.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.promoted11.i
  %i.u = sub nuw i64 %.pre2.i.i.i.i, %.promoted11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !98
  call void @_RNvNtCsgdm2QMcbaeA_10fontdrasil3agl26glyph_component_to_unicode(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.us.i, i64 noundef %i.u), !noalias !92
  %.sroa.0.0.copyload.i.us.us.i = load i64, ptr %i.b, align 8, !noalias !98
  %.sroa.4.0.copyload.i.us.us.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !98, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.5.0.copyload.i.us.us.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !98 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !99
  %i.v = icmp ult i64 %.sroa.5.0.copyload.i.us.us.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload.i.us.us.i, i64 %.sroa.5.0.copyload.i.us.us.i
  store ptr %.sroa.4.0.copyload.i.us.us.i, ptr %i.a, align 8, !noalias !99
  store ptr %.sroa.4.0.copyload.i.us.us.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !99
  store i64 %.sroa.0.0.copyload.i.us.us.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !99
  store ptr %i.w, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !99
  call void @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduQNCINvNvBZ_8for_each4callcNCINvXsd_NtBa_6stringNtB2z_6StringINtNtB13_7collect6ExtendcE6extendINtNtNtB15_8adapters7flatten7FlatMapINtNtNtB17_3str4iter5SplitcEINtB8_3VeccENvNtCsgdm2QMcbaeA_10fontdrasil3agl26glyph_component_to_unicodeEE0E0EB4N_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1), !noalias !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !98
  br label %_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBQ_8adapters3map8map_foldReINtNtCsgCecv3eZDcN_5alloc3vec3VeccEuNvNtCsgdm2QMcbaeA_10fontdrasil3agl26glyph_component_to_unicodeNCINvNvMsg_NtB1C_7flattenINtB3Q_13FlattenCompatppE9iter_fold7flattenB25_uNCINvNvXsi_B3Q_B44_BK_4fold7flattenINtNtB28_9into_iter8IntoItercEuNCINvNvBK_8for_each4callcNCINvXsd_NtB2a_6stringNtB6s_6StringINtNtBO_7collect6ExtendcE6extendINtB3Q_7FlatMapB3_B25_B2F_EE0E0E0E0E0EB2J_.exit

.lr.ph.split.i:                                   ; preds = %select.unfold.i, %.lr.ph.split.preheader.i
  %i.x = phi i64 [ %i.at, %select.unfold.i ], [ %.promoted15.i, %.lr.ph.split.preheader.i ] ; 3 uses
  %.lcssa91314.i = phi i64 [ %.lcssa912.i, %select.unfold.i ], [ %.promoted11.i, %.lr.ph.split.preheader.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.y = icmp ult i64 %i.i, %i.x
  br i1 %i.y, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsgdm2QMcbaeA_10fontdrasil.exit.i.i.i, label %.lr.ph.split.preheader.i.i.i.i

.lr.ph.split.preheader.i.i.i.i:                   ; preds = %.lr.ph.split.i
  call void @llvm.assume(i1 %i.n)
  %.pre.i.i.i.i = load i8, ptr %i.p, align 1, !alias.scope !94 ; 2 uses
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %bb.d, %.lr.ph.split.preheader.i.i.i.i
  %i.z = phi i64 [ %i.an, %bb.d ], [ %i.x, %.lr.ph.split.preheader.i.i.i.i ] ; 4 uses
  %i.aa = sub nuw i64 %i.i, %i.z                  ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.z ; 2 uses
  %i.ac = icmp samesign ult i64 %i.aa, 16
  br i1 %i.ac, label %.preheader.i.i.i.i.i, label %bb.b

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph.split.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %i.i, %i.z
  br i1 %.not.i.i.i.i.i, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsgdm2QMcbaeA_10fontdrasil.exit.i.i.i, label %.lr.ph.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.i.i
  %i.ad = call { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef range(i64 0, -9223372036854775808) %i.aa), !noalias !101 ; 2 uses
  %i.ae = extractvalue { i64, i64 } %i.ad, 0
  %i.af = extractvalue { i64, i64 } %i.ad, 1
  %i.ag = trunc nuw i64 %i.ae to i1
  br i1 %i.ag, label %.loopexit.i.i.i.i, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsgdm2QMcbaeA_10fontdrasil.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.c
  %.sroa.04.011.i.i.i.i.i = phi i64 [ %i.ak, %bb.c ], [ 0, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.04.011.i.i.i.i.i
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !102, !noalias !101, !noundef !4
  %i.aj = icmp eq i8 %i.ai, %.pre.i.i.i.i
  br i1 %i.aj, label %.loopexit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ak = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ak, %i.aa
  br i1 %exitcond.not.i.i.i.i.i, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsgdm2QMcbaeA_10fontdrasil.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i, %bb.b
  %.sroa.5.0.i.i.i.i.i = phi i64 [ %i.af, %bb.b ], [ %.sroa.04.011.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.al = icmp ult i64 %.sroa.5.0.i.i.i.i.i, %i.aa
  call void @llvm.assume(i1 %i.al)
  %i.am = add i64 %i.z, 1
  %i.an = add i64 %i.am, %.sroa.5.0.i.i.i.i.i     ; 8 uses
  %.not11.i.i.i.i = icmp ult i64 %i.an, %i.m
  %.not12.i.i.i.i = icmp ugt i64 %i.an, %.val1.i.i.i
  %or.cond.i.i.i.i = or i1 %.not11.i.i.i.i, %.not12.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %.loopexit.i.i.i.i
  %i.ao = icmp ult i64 %i.i, %i.an
  br i1 %i.ao, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsgdm2QMcbaeA_10fontdrasil.exit.i.i.i, label %.lr.ph.split.i.i.i.i

bb.e:                                             ; preds = %.loopexit.i.i.i.i
  %i.ap = sub nuw i64 %i.an, %i.m                 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ap
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull %i.aq, ptr nonnull %i.j, i64 %i.m), !noalias !103
  %i.ar = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.ar, label %select.unfold.i, label %bb.d

_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsgdm2QMcbaeA_10fontdrasil.exit.i.i.i: ; preds = %bb.d, %bb.b, %.preheader.i.i.i.i.i, %bb.c, %.lr.ph.split.i
  %i.as = phi i64 [ %i.x, %.lr.ph.split.i ], [ %i.i, %bb.c ], [ %i.i, %.preheader.i.i.i.i.i ], [ %i.i, %bb.b ], [ %i.an, %bb.d ]
  store i8 1, ptr %i.d, align 1, !alias.scope !104
  %.not.i3.i.i.i = icmp ne i64 %.pre2.i.i.i.i, %.lcssa91314.i
  %or.cond.not.i.i.i.i = select i1 %i.s, i1 true, i1 %.not.i3.i.i.i
  br i1 %or.cond.not.i.i.i.i, label %select.unfold.i, label %_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBQ_8adapters3map8map_foldReINtNtCsgCecv3eZDcN_5alloc3vec3VeccEuNvNtCsgdm2QMcbaeA_10fontdrasil3agl26glyph_component_to_unicodeNCINvNvMsg_NtB1C_7flattenINtB3Q_13FlattenCompatppE9iter_fold7flattenB25_uNCINvNvXsi_B3Q_B44_BK_4fold7flattenINtNtB28_9into_iter8IntoItercEuNCINvNvBK_8for_each4callcNCINvXsd_NtB2a_6stringNtB6s_6StringINtNtBO_7collect6ExtendcE6extendINtB3Q_7FlatMapB3_B25_B2F_EE0E0E0E0E0EB2J_.exit

select.unfold.i:                                  ; preds = %bb.e, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsgdm2QMcbaeA_10fontdrasil.exit.i.i.i
  %i.at = phi i64 [ %i.as, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsgdm2QMcbaeA_10fontdrasil.exit.i.i.i ], [ %i.an, %bb.e ]
  %.lcssa912.i = phi i64 [ %.lcssa91314.i, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsgdm2QMcbaeA_10fontdrasil.exit.i.i.i ], [ %i.an, %bb.e ]
  %i.au = phi i1 [ true, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsgdm2QMcbaeA_10fontdrasil.exit.i.i.i ], [ false, %bb.e ]
  %.pn.i = phi i64 [ %.pre2.i.i.i.i, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsgdm2QMcbaeA_10fontdrasil.exit.i.i.i ], [ %i.ap, %bb.e ]
  %.sroa.4.1.i.i.i = sub nuw i64 %.pn.i, %.lcssa91314.i
  %.sroa.0.1.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.lcssa91314.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !98
  call void @_RNvNtCsgdm2QMcbaeA_10fontdrasil3agl26glyph_component_to_unicode(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i, i64 noundef %.sroa.4.1.i.i.i), !noalias !92
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !noalias !98
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !98, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !98 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !99
  %i.av = icmp ult i64 %.sroa.5.0.copyload.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload.i.i, i64 %.sroa.5.0.copyload.i.i
  store ptr %.sroa.4.0.copyload.i.i, ptr %i.a, align 8, !noalias !99
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !99
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !99
  store ptr %i.aw, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !99
  call void @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduQNCINvNvBZ_8for_each4callcNCINvXsd_NtBa_6stringNtB2z_6StringINtNtB13_7collect6ExtendcE6extendINtNtNtB15_8adapters7flatten7FlatMapINtNtNtB17_3str4iter5SplitcEINtB8_3VeccENvNtCsgdm2QMcbaeA_10fontdrasil3agl26glyph_component_to_unicodeEE0E0EB4N_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1), !noalias !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !98
  br i1 %i.au, label %_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBQ_8adapters3map8map_foldReINtNtCsgCecv3eZDcN_5alloc3vec3VeccEuNvNtCsgdm2QMcbaeA_10fontdrasil3agl26glyph_component_to_unicodeNCINvNvMsg_NtB1C_7flattenINtB3Q_13FlattenCompatppE9iter_fold7flattenB25_uNCINvNvXsi_B3Q_B44_BK_4fold7flattenINtNtB28_9into_iter8IntoItercEuNCINvNvBK_8for_each4callcNCINvXsd_NtB2a_6stringNtB6s_6StringINtNtBO_7collect6ExtendcE6extendINtB3Q_7FlatMapB3_B25_B2F_EE0E0E0E0E0EB2J_.exit, label %.lr.ph.split.i

_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBQ_8adapters3map8map_foldReINtNtCsgCecv3eZDcN_5alloc3vec3VeccEuNvNtCsgdm2QMcbaeA_10fontdrasil3agl26glyph_component_to_unicodeNCINvNvMsg_NtB1C_7flattenINtB3Q_13FlattenCompatppE9iter_fold7flattenB25_uNCINvNvXsi_B3Q_B44_BK_4fold7flattenINtNtB28_9into_iter8IntoItercEuNCINvNvBK_8for_each4callcNCINvXsd_NtB2a_6stringNtB6s_6StringINtNtBO_7collect6ExtendcE6extendINtB3Q_7FlatMapB3_B25_B2F_EE0E0E0E0E0EB2J_.exit: ; preds = %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsgdm2QMcbaeA_10fontdrasil.exit.i.i.i, %select.unfold.i, %bb.a, %.lr.ph.split.us.i, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsgdm2QMcbaeA_10fontdrasil.exit.i.i.us.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3str4iter5SplitcENvNtCsgdm2QMcbaeA_10fontdrasil3agl26glyph_component_to_unicodeENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB3e_13FlattenCompatppE9iter_fold7flattenINtNtCsgCecv3eZDcN_5alloc3vec3VeccEuNCINvNvXsi_B3e_B3r_B2p_4fold7flattenINtNtB4b_9into_iter8IntoItercEuNCINvNvB2p_8for_each4callcNCINvXsd_NtB4d_6stringNtB6m_6StringINtNtB2t_7collect6ExtendcE6extendINtNtB8_5chain5ChainNtB10_5CharsINtB3e_7FlatMapBX_B48_B1o_EEE0E0E0E0EB1s_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [72 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 65 ; 2 uses
  %.promoted.i = load i8, ptr %i.d, align 1, !alias.scope !123
  %.promoted11.i = load i64, ptr %i.c, align 8, !alias.scope !122 ; 4 uses
  %i.e = trunc nuw i8 %.promoted.i to i1
  br i1 %i.e, label %_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBQ_8adapters3map8map_foldReINtNtCsgCecv3eZDcN_5alloc3vec3VeccEuNvNtCsgdm2QMcbaeA_10fontdrasil3agl26glyph_component_to_unicodeNCINvNvMsg_NtB1C_7flattenINtB3Q_13FlattenCompatppE9iter_fold7flattenB25_uNCINvNvXsi_B3Q_B44_BK_4fold7flattenINtNtB28_9into_iter8IntoItercEuNCINvNvBK_8for_each4callcNCINvXsd_NtB2a_6stringNtB6s_6StringINtNtBO_7collect6ExtendcE6extendINtNtB1C_5chain5ChainNtB6_5CharsINtB3Q_7FlatMapB3_B25_B2F_EEE0E0E0E0E0EB2J_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !123, !nonnull !4, !noundef !4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.val1.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !123, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !124, !noundef !4 ; 8 uses
  %.not.i.i.i.i = icmp ugt i64 %i.i, %.val1.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.l = load i8, ptr %i.k, align 8, !alias.scope !122 ; 2 uses
  %i.m = zext nneg i8 %i.l to i64                 ; 4 uses
  %i.n = icmp ult i8 %i.l, 5
  %i.o = getelementptr i8, ptr %i.j, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.r = load i8, ptr %i.q, align 8, !range !6, !alias.scope !122
  %i.s = trunc nuw i8 %i.r to i1                  ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre2.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !122 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br i1 %.not.i.i.i.i, label %.lr.ph.split.us.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.promoted15.i = load i64, ptr %i.t, align 8, !alias.scope !124
  br label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %.not.i3.i.i.us.i = icmp ne i64 %.pre2.i.i.i.i, %.promoted11.i
  %or.cond.not.i.i.i.us.i = select i1 %i.s, i1 true, i1 %.not.i3.i.i.us.i
  br i1 %or.cond.not.i.i.i.us.i, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsgdm2QMcbaeA_10fontdrasil.exit.i.i.us.us.i, label %_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBQ_8adapters3map8map_foldReINtNtCsgCecv3eZDcN_5alloc3vec3VeccEuNvNtCsgdm2QMcbaeA_10fontdrasil3agl26glyph_component_to_unicodeNCINvNvMsg_NtB1C_7flattenINtB3Q_13FlattenCompatppE9iter_fold7flattenB25_uNCINvNvXsi_B3Q_B44_BK_4fold7flattenINtNtB28_9into_iter8IntoItercEuNCINvNvBK_8for_each4callcNCINvXsd_NtB2a_6stringNtB6s_6StringINtNtBO_7collect6ExtendcE6extendINtNtB1C_5chain5ChainNtB6_5CharsINtB3Q_7FlatMapB3_B25_B2F_EEE0E0E0E0E0EB2J_.exit

_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsgdm2QMcbaeA_10fontdrasil.exit.i.i.us.us.i: ; preds = %.lr.ph.split.us.i
  %.sroa.0.1.i.i.us.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.promoted11.i
  %i.u = sub nuw i64 %.pre2.i.i.i.i, %.promoted11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !128
  call void @_RNvNtCsgdm2QMcbaeA_10fontdrasil3agl26glyph_component_to_unicode(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.us.i, i64 noundef %i.u), !noalias !122
  %.sroa.0.0.copyload.i.us.us.i = load i64, ptr %i.b, align 8, !noalias !128
  %.sroa.4.0.copyload.i.us.us.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !128, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.5.0.copyload.i.us.us.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !129
  %i.v = icmp ult i64 %.sroa.5.0.copyload.i.us.us.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload.i.us.us.i, i64 %.sroa.5.0.copyload.i.us.us.i
  store ptr %.sroa.4.0.copyload.i.us.us.i, ptr %i.a, align 8, !noalias !129
  store ptr %.sroa.4.0.copyload.i.us.us.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !129
  store i64 %.sroa.0.0.copyload.i.us.us.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !129
  store ptr %i.w, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !129
  call void @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduQNCINvNvBZ_8for_each4callcNCINvXsd_NtBa_6stringNtB2z_6StringINtNtB13_7collect6ExtendcE6extendINtNtNtB15_8adapters5chain5ChainNtNtNtB17_3str4iter5CharsINtNtB3A_7flatten7FlatMapINtB43_5SplitcEINtB8_3VeccENvNtCsgdm2QMcbaeA_10fontdrasil3agl26glyph_component_to_unicodeEEE0E0EB5k_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1), !noalias !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !128
  br label %_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBQ_8adapters3map8map_foldReINtNtCsgCecv3eZDcN_5alloc3vec3VeccEuNvNtCsgdm2QMcbaeA_10fontdrasil3agl26glyph_component_to_unicodeNCINvNvMsg_NtB1C_7flattenINtB3Q_13FlattenCompatppE9iter_fold7flattenB25_uNCINvNvXsi_B3Q_B44_BK_4fold7flattenINtNtB28_9into_iter8IntoItercEuNCINvNvBK_8for_each4callcNCINvXsd_NtB2a_6stringNtB6s_6StringINtNtBO_7collect6ExtendcE6extendINtNtB1C_5chain5ChainNtB6_5CharsINtB3Q_7FlatMapB3_B25_B2F_EEE0E0E0E0E0EB2J_.exit

.lr.ph.split.i:                                   ; preds = %select.unfold.i, %.lr.ph.split.preheader.i
  %i.x = phi i64 [ %i.at, %select.unfold.i ], [ %.promoted15.i, %.lr.ph.split.preheader.i ] ; 3 uses
  %.lcssa91314.i = phi i64 [ %.lcssa912.i, %select.unfold.i ], [ %.promoted11.i, %.lr.ph.split.preheader.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !125)
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.y = icmp ult i64 %i.i, %i.x
  br i1 %i.y, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsgdm2QMcbaeA_10fontdrasil.exit.i.i.i, label %.lr.ph.split.preheader.i.i.i.i

.lr.ph.split.preheader.i.i.i.i:                   ; preds = %.lr.ph.split.i
  call void @llvm.assume(i1 %i.n)
  %.pre.i.i.i.i = load i8, ptr %i.p, align 1, !alias.scope !124 ; 2 uses
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %bb.d, %.lr.ph.split.preheader.i.i.i.i
  %i.z = phi i64 [ %i.an, %bb.d ], [ %i.x, %.lr.ph.split.preheader.i.i.i.i ] ; 4 uses
  %i.aa = sub nuw i64 %i.i, %i.z                  ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.z ; 2 uses
  %i.ac = icmp samesign ult i64 %i.aa, 16
  br i1 %i.ac, label %.preheader.i.i.i.i.i, label %bb.b

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph.split.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %i.i, %i.z
  br i1 %.not.i.i.i.i.i, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsgdm2QMcbaeA_10fontdrasil.exit.i.i.i, label %.lr.ph.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.i.i
  %i.ad = call { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef range(i64 0, -9223372036854775808) %i.aa), !noalias !131 ; 2 uses
  %i.ae = extractvalue { i64, i64 } %i.ad, 0
  %i.af = extractvalue { i64, i64 } %i.ad, 1
  %i.ag = trunc nuw i64 %i.ae to i1
  br i1 %i.ag, label %.loopexit.i.i.i.i, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsgdm2QMcbaeA_10fontdrasil.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.c
  %.sroa.04.011.i.i.i.i.i = phi i64 [ %i.ak, %bb.c ], [ 0, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.04.011.i.i.i.i.i
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !132, !noalias !131, !noundef !4
  %i.aj = icmp eq i8 %i.ai, %.pre.i.i.i.i
  br i1 %i.aj, label %.loopexit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ak = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ak, %i.aa
  br i1 %exitcond.not.i.i.i.i.i, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsgdm2QMcbaeA_10fontdrasil.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i, %bb.b
  %.sroa.5.0.i.i.i.i.i = phi i64 [ %i.af, %bb.b ], [ %.sroa.04.011.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.al = icmp ult i64 %.sroa.5.0.i.i.i.i.i, %i.aa
  call void @llvm.assume(i1 %i.al)
  %i.am = add i64 %i.z, 1
  %i.an = add i64 %i.am, %.sroa.5.0.i.i.i.i.i     ; 8 uses
  %.not11.i.i.i.i = icmp ult i64 %i.an, %i.m
  %.not12.i.i.i.i = icmp ugt i64 %i.an, %.val1.i.i.i
  %or.cond.i.i.i.i = or i1 %.not11.i.i.i.i, %.not12.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %.loopexit.i.i.i.i
  %i.ao = icmp ult i64 %i.i, %i.an
  br i1 %i.ao, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsgdm2QMcbaeA_10fontdrasil.exit.i.i.i, label %.lr.ph.split.i.i.i.i

bb.e:                                             ; preds = %.loopexit.i.i.i.i
  %i.ap = sub nuw i64 %i.an, %i.m                 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ap
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull %i.aq, ptr nonnull %i.j, i64 %i.m), !noalias !133
  %i.ar = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.ar, label %select.unfold.i, label %bb.d

_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsgdm2QMcbaeA_10fontdrasil.exit.i.i.i: ; preds = %bb.d, %bb.b, %.preheader.i.i.i.i.i, %bb.c, %.lr.ph.split.i
  %i.as = phi i64 [ %i.x, %.lr.ph.split.i ], [ %i.i, %bb.c ], [ %i.i, %.preheader.i.i.i.i.i ], [ %i.i, %bb.b ], [ %i.an, %bb.d ]
  store i8 1, ptr %i.d, align 1, !alias.scope !134
  %.not.i3.i.i.i = icmp ne i64 %.pre2.i.i.i.i, %.lcssa91314.i
  %or.cond.not.i.i.i.i = select i1 %i.s, i1 true, i1 %.not.i3.i.i.i
  br i1 %or.cond.not.i.i.i.i, label %select.unfold.i, label %_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBQ_8adapters3map8map_foldReINtNtCsgCecv3eZDcN_5alloc3vec3VeccEuNvNtCsgdm2QMcbaeA_10fontdrasil3agl26glyph_component_to_unicodeNCINvNvMsg_NtB1C_7flattenINtB3Q_13FlattenCompatppE9iter_fold7flattenB25_uNCINvNvXsi_B3Q_B44_BK_4fold7flattenINtNtB28_9into_iter8IntoItercEuNCINvNvBK_8for_each4callcNCINvXsd_NtB2a_6stringNtB6s_6StringINtNtBO_7collect6ExtendcE6extendINtNtB1C_5chain5ChainNtB6_5CharsINtB3Q_7FlatMapB3_B25_B2F_EEE0E0E0E0E0EB2J_.exit

select.unfold.i:                                  ; preds = %bb.e, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsgdm2QMcbaeA_10fontdrasil.exit.i.i.i
  %i.at = phi i64 [ %i.as, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsgdm2QMcbaeA_10fontdrasil.exit.i.i.i ], [ %i.an, %bb.e ]
  %.lcssa912.i = phi i64 [ %.lcssa91314.i, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsgdm2QMcbaeA_10fontdrasil.exit.i.i.i ], [ %i.an, %bb.e ]
  %i.au = phi i1 [ true, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsgdm2QMcbaeA_10fontdrasil.exit.i.i.i ], [ false, %bb.e ]
  %.pn.i = phi i64 [ %.pre2.i.i.i.i, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsgdm2QMcbaeA_10fontdrasil.exit.i.i.i ], [ %i.ap, %bb.e ]
  %.sroa.4.1.i.i.i = sub nuw i64 %.pn.i, %.lcssa91314.i
  %.sroa.0.1.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.lcssa91314.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !128
  call void @_RNvNtCsgdm2QMcbaeA_10fontdrasil3agl26glyph_component_to_unicode(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i, i64 noundef %.sroa.4.1.i.i.i), !noalias !122
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !noalias !128
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !128, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !129
  %i.av = icmp ult i64 %.sroa.5.0.copyload.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload.i.i, i64 %.sroa.5.0.copyload.i.i
  store ptr %.sroa.4.0.copyload.i.i, ptr %i.a, align 8, !noalias !129
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !129
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !129
  store ptr %i.aw, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !129
  call void @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduQNCINvNvBZ_8for_each4callcNCINvXsd_NtBa_6stringNtB2z_6StringINtNtB13_7collect6ExtendcE6extendINtNtNtB15_8adapters5chain5ChainNtNtNtB17_3str4iter5CharsINtNtB3A_7flatten7FlatMapINtB43_5SplitcEINtB8_3VeccENvNtCsgdm2QMcbaeA_10fontdrasil3agl26glyph_component_to_unicodeEEE0E0EB5k_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1), !noalias !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !128
  br i1 %i.au, label %_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBQ_8adapters3map8map_foldReINtNtCsgCecv3eZDcN_5alloc3vec3VeccEuNvNtCsgdm2QMcbaeA_10fontdrasil3agl26glyph_component_to_unicodeNCINvNvMsg_NtB1C_7flattenINtB3Q_13FlattenCompatppE9iter_fold7flattenB25_uNCINvNvXsi_B3Q_B44_BK_4fold7flattenINtNtB28_9into_iter8IntoItercEuNCINvNvBK_8for_each4callcNCINvXsd_NtB2a_6stringNtB6s_6StringINtNtBO_7collect6ExtendcE6extendINtNtB1C_5chain5ChainNtB6_5CharsINtB3Q_7FlatMapB3_B25_B2F_EEE0E0E0E0E0EB2J_.exit, label %.lr.ph.split.i

_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBQ_8adapters3map8map_foldReINtNtCsgCecv3eZDcN_5alloc3vec3VeccEuNvNtCsgdm2QMcbaeA_10fontdrasil3agl26glyph_component_to_unicodeNCINvNvMsg_NtB1C_7flattenINtB3Q_13FlattenCompatppE9iter_fold7flattenB25_uNCINvNvXsi_B3Q_B44_BK_4fold7flattenINtNtB28_9into_iter8IntoItercEuNCINvNvBK_8for_each4callcNCINvXsd_NtB2a_6stringNtB6s_6StringINtNtBO_7collect6ExtendcE6extendINtNtB1C_5chain5ChainNtB6_5CharsINtB3Q_7FlatMapB3_B25_B2F_EEE0E0E0E0E0EB2J_.exit: ; preds = %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsgdm2QMcbaeA_10fontdrasil.exit.i.i.i, %select.unfold.i, %bb.a, %.lr.ph.split.us.i, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsgdm2QMcbaeA_10fontdrasil.exit.i.i.us.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1q_15NormalizedSpaceEENCNvNtB1s_10variations11regions_for0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB38_8for_each4callNtB2B_15VariationRegionNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4H_3VecB4b_E14extend_trustedBN_E0E0EB1s_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 8 uses
  %i.c = alloca [72 x i8], align 8                ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !align !5, !noundef !4 ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.k = icmp eq ptr %i.d, %i.f
  br i1 %i.k, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBT_15NormalizedSpaceEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_NtNtBV_10variations15VariationRegionuNCNvB3p_11regions_for0NCINvNvB1Z_8for_each4callB3n_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4W_3VecB3n_E14extend_trustedINtB2P_3MapBF_B3Y_EE0E0E0EBV_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.d:                                             ; preds = %.loopexit.i, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.br, %.loopexit.i ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.bs, %.loopexit.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !155
  invoke void @_RNvMs3_NtCsgdm2QMcbaeA_10fontdrasil10variationsNtB5_15VariationRegion3new(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b)
          to label %.noexc.i unwind label %bb.c, !noalias !156

.noexc.i:                                         ; preds = %bb.d
  %i.v = load ptr, ptr %i.h, align 8, !noalias !155, !nonnull !4, !noundef !4 ; 2 uses
  %i.w = load i64, ptr %i.p, align 8, !noalias !155, !noundef !4 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.w, 2
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx.i.i.i
  %i.y = icmp eq i64 %i.w, 0
  br i1 %i.y, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc.i, %bb.p
  %.sroa.0.010.i.i.i = phi ptr [ %i.z, %bb.p ], [ %i.v, %.noexc.i ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i, i64 4 ; 2 uses
  %i.aa = load i64, ptr %i.q, align 8, !alias.scope !157, !noalias !158, !noundef !4
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.invoke.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ac = invoke noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCsbZq13ASDQ8l_10font_types3tag3TagECsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %.sroa.0.010.i.i.i)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !159 ; 2 uses

.noexc.i.i.i:                                     ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.ad = lshr i64 %i.ac, 57
  %i.ae = trunc nuw nsw i64 %i.ad to i8
  %i.af = load i64, ptr %i.s, align 8, !alias.scope !162, !noalias !158, !noundef !4 ; 2 uses
  %i.ag = load ptr, ptr %i.j, align 8, !alias.scope !162, !noalias !158, !nonnull !4, !noundef !4 ; 2 uses
  %i.ah = insertelement <16 x i8> poison, i8 %i.ae, i64 0
  %i.ai = shufflevector <16 x i8> %i.ah, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.noexc.i.i.i
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %.noexc.i.i.i ], [ %i.az, %bb.h ]
  %.pn.i.i.i.i.i = phi i64 [ %i.ac, %.noexc.i.i.i ], [ %i.ba, %bb.h ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.af ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.aj, align 1, !noalias !163 ; 2 uses
  %i.ak = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.ai
  %i.al = bitcast <16 x i1> %i.ak to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.al, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %bb.g
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.ay, %bb.g ], [ %i.al, %bb.f ] ; 3 uses
  %i.am = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.an
  %i.ap = and i64 %i.ao, %i.af
  %i.aq = sub nsw i64 0, %i.ap
  %i.ar = getelementptr inbounds [32 x i8], ptr %i.ag, i64 %i.aq ; 3 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -32
  %i.at = invoke noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrownNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB2_10EquivalentBq_E10equivalentCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %.sroa.0.010.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.as)
          to label %.noexc15.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !159

.noexc15.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.at, label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusiveINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECsgdm2QMcbaeA_10fontdrasil.exit.i.i.i, label %bb.g, !prof !164

._crit_edge.i.i.i.i.i:                            ; preds = %bb.g, %bb.f
  %i.au = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.av = bitcast <16 x i1> %i.au to i16
  %i.aw = icmp eq i16 %i.av, 0
  br i1 %i.aw, label %bb.h, label %.invoke.i.i.i, !prof !165

bb.g:                                             ; preds = %.noexc15.i.i.i
  %i.ax = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.ay = and i16 %i.ax, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.ay, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.az = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.ba = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.az
  br label %bb.f

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i.i, %bb.e, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusiveINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECsgdm2QMcbaeA_10fontdrasil.exit.i.i.i, %bb.n, %bb.o, %.invoke.i.i.i
  %lpad.loopexit.split-lp56 = landingpad { ptr, i32 }
          cleanup
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentEEB2g_.exit.i.i.i.i unwind label %bb.i, !noalias !159

bb.i:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsbZq13ASDQ8l_10font_types3tag3TaguEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %.body.i.i.i unwind label %bb.j, !noalias !159

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentEEB2g_.exit.i.i.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsbZq13ASDQ8l_10font_types3tag3TaguEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %bb.r unwind label %bb.q, !noalias !159

bb.j:                                             ; preds = %bb.i
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #16, !noalias !159
  unreachable

_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusiveINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECsgdm2QMcbaeA_10fontdrasil.exit.i.i.i: ; preds = %.noexc15.i.i.i
  %i.be = getelementptr inbounds i8, ptr %i.ar, i64 -24
  %.sroa.06.0.copyload.i.i.i = load i32, ptr %.sroa.0.010.i.i.i, align 1, !noalias !159 ; 2 uses
  %i.bf = invoke { i64, double } @_RNvMs8_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB5_8LocationNtB5_15NormalizedSpaceE3getB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u, i32 noundef %.sroa.06.0.copyload.i.i.i)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !159 ; 2 uses

bb.k:                                             ; preds = %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusiveINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECsgdm2QMcbaeA_10fontdrasil.exit.i.i.i
  %i.bg = extractvalue { i64, double } %i.bf, 0
  %i.bh = extractvalue { i64, double } %i.bf, 1   ; 2 uses
  %i.bi = trunc nuw i64 %i.bg to i1
  br i1 %i.bi, label %bb.l, label %.invoke.i.i.i, !prof !164

bb.l:                                             ; preds = %bb.k
  %i.bj = fcmp oeq double %i.bh, 0.000000e+00
  br i1 %i.bj, label %bb.n, label %bb.m

.invoke.i.i.i:                                    ; preds = %bb.k, %.lr.ph.i.i.i, %._crit_edge.i.i.i.i.i
  %i.bk = phi ptr [ @2, %._crit_edge.i.i.i.i.i ], [ @2, %.lr.ph.i.i.i ], [ @3, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bk) #17
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !159

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.bl = load double, ptr %i.be, align 8, !noalias !159, !noundef !4
  %i.bm = getelementptr inbounds i8, ptr %i.ar, i64 -16
  %i.bn = load double, ptr %i.bm, align 8, !noalias !159, !noundef !4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.010.0.i.i.i = phi double [ %i.bn, %bb.m ], [ 0.000000e+00, %bb.l ]
  %.sroa.09.0.i.i.i = phi double [ %i.bl, %bb.m ], [ 0.000000e+00, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !155
  invoke void @_RNvMs4_NtCsgdm2QMcbaeA_10fontdrasil10variationsNtB5_4Tent3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, double noundef %.sroa.09.0.i.i.i, double noundef %i.bh, double noundef %.sroa.010.0.i.i.i)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !159

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvMs3_NtCsgdm2QMcbaeA_10fontdrasil10variationsNtB5_15VariationRegion6insert(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, i32 noundef %.sroa.06.0.copyload.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !159

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !155
  %i.bo = icmp eq ptr %i.z, %i.x
  br i1 %i.bo, label %.loopexit.i, label %.lr.ph.i.i.i

bb.q:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentEEB2g_.exit.i.i.i.i
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.q, %bb.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #16, !noalias !159
  unreachable
end_hunk_0
