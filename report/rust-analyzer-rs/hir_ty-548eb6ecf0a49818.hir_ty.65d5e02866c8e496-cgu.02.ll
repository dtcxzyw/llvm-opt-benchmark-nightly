Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.02?download=true
inline.NumInlined: 6791
inline.NumDeleted: 2228
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB6_11GenericArgs9fill_restNCNvMNtNtBa_5infer4pathNtB1u_16InferenceContext21resolve_ty_assoc_items_0ANtB6_10GenericArgj1_EBa_:.noexc

.noexc.i:                                         ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7601
  store ptr %i.e, ptr %i.c, align 8, !noalias !7601
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.y, align 8, !noalias !7601
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.z, align 8, !noalias !7601
  invoke void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsEIBP_IBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB3w_3hir8generics19GenericParamDataRefEEIB11_IB11_INtNtB7_6filter6FilterIB11_INtNtB7_9enumerate9EnumerateIB1F_NtB4a_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB6z_5ArenaB60_E4iter0ENCNvMs3_B4a_NtB4a_13GenericParams19iter_early_bound_lt0ENCNvMB26_B24_14iter_lifetimes0ENCNvB8j_4iter0EEIB11_IB11_IB11_IB5u_IB1F_NtB4a_20TypeOrConstParamDataEENCNvMsm_B6z_IB6X_B9p_E4iter0ENCNvB8j_19iter_type_or_consts0ENCNvB8j_30iter_type_or_consts_as_generic0EEIB11_INtNtB7_10filter_map9FilterMapIB53_B5o_NCNvB7p_18iter_late_bound_lt0ENCNvB8j_25iter_late_bound_lifetimes0EB8K_EENCNvMs_B26_NtB26_8Generics4iter0ENCNvMNtNtB28_11next_solver8genericsNtBe3_8Generics4iter0EIB36_TB3u_INtB38_6OptionRB60_EEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_B5w_IB5u_pEBfq_4fold9enumerateBeY_uNCINvNvBfq_8for_each4callTjBeY_ENCINvMss_NtBe5_11generic_argNtBhs_11GenericArgs12fill_builderNCINvBho_9fill_restNCNvMNtNtB28_5infer4pathNtBiI_16InferenceContext21resolve_ty_assoc_items_0ANtBhs_10GenericArgj1_E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBjO_Kja_EE0E0E0EB28_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(376) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.k unwind label %bb.j, !noalias !7599

bb.j:                                             ; preds = %bb.k, %.noexc.i, %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtCs474hSbRjvii_8arrayvec8arrayvecINtB2_8ArrayVecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgKja_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.g)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgKja_EEB1r_.exit.i unwind label %bb.l, !noalias !7599

bb.k:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7598
  %i.ab = load i32, ptr %i.g, align 8, !noalias !7598, !noundef !11
  %i.ac = zext i32 %i.ab to i64
  %i.ad = invoke fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg18GenericArgsStorageE21from_header_and_sliceB14_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.w, i64 noundef range(i64 0, 4294967296) %i.ac) #51
          to label %_RNvMs13_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB6_11GenericArgs14new_from_slice.exit.i unwind label %bb.j, !noalias !7599

_RNvMs13_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB6_11GenericArgs14new_from_slice.exit.i: ; preds = %bb.k
  invoke void @_RNvXNtCs474hSbRjvii_8arrayvec8arrayvecINtB2_8ArrayVecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgKja_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.g)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgKja_EEB1r_.exit11.i unwind label %bb.a, !noalias !7599

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgKja_EEB1r_.exit11.i: ; preds = %_RNvMs13_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB6_11GenericArgs14new_from_slice.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7598
  br label %bb.g

bb.l:                                             ; preds = %bb.j, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgKja_EEB1r_.exit.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45, !noalias !7599
  unreachable

.body:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgKja_EEB1r_.exit.i
  resume { ptr, i32 } %.pn.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB6_11GenericArgs9fill_restNCNvMs_NtNtBa_17method_resolution7confirmNtB1u_14ConfirmContext7confirm0BV_EBa_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 4 captures(address) dead_on_return dereferenceable(16) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [376 x i8], align 8               ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [88 x i8], align 8                ; 8 uses
  %i.h = alloca [96 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %3, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noundef !11
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  store ptr %i.m, ptr %i.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.n, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7614
  call void @_RNvXsg_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver8internerNtB5_10DbInternerNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8interner8Interner11generics_of(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %1), !noalias !7615
  %i.p = invoke noundef i64 @_RNvXs_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4_8GenericsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent10GenericsOfNtNtB6_8interner10DbInternerE5count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.h)
          to label %bb.c unwind label %bb.b, !noalias !7614 ; 3 uses

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgKja_EEB1r_.exit.i: ; preds = %bb.j, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.q, %bb.b ], [ %i.ae, %bb.j ]
  invoke void @_RNvXNtCs474hSbRjvii_8arrayvec8arrayvecINtB2_8ArrayVecNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsKj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.h)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8generics8GenericsEBH_.exit.i unwind label %bb.l, !noalias !7616

bb.b:                                             ; preds = %_RNvMs13_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB6_11GenericArgs14new_from_slice.exit.i, %bb.h, %bb.e, %bb.d, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgKja_EEB1r_.exit.i

bb.c:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %i.p, 0
  br i1 %i.r, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7614
  invoke void @_RNvMs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver8internerNtB5_10DbInterner7conjure(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b)
          to label %.noexc6.i unwind label %bb.b, !noalias !7614

.noexc6.i:                                        ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7614
  %i.s = load <2 x ptr>, ptr %i.b, align 16, !noalias !7614
  store <2 x ptr> %i.s, ptr %i.a, align 16, !noalias !7614
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 0, ptr %i.t, align 16, !noalias !7614
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %i.u, align 8, !noalias !7614
  %i.v = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types5TYPES, i64 2424) acquire, align 8, !noalias !7617
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.g, label %bb.e, !prof !18

bb.e:                                             ; preds = %.noexc6.i
  invoke void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE10initializeNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_(ptr noundef nonnull align 8 @_RNvNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types5TYPES, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.b, !noalias !7614

bb.f:                                             ; preds = %bb.c
  %i.x = icmp ult i64 %i.p, 11
  br i1 %i.x, label %bb.i, label %bb.h, !prof !18

bb.g:                                             ; preds = %bb.e, %.noexc6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7614
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types5TYPES, i64 2304), align 8, !noalias !7614, !nonnull !11, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7614
  br label %_RINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB6_11GenericArgs8for_itemNCINvB2_9fill_restNCNvMs_NtNtBa_17method_resolution7confirmNtB1L_14ConfirmContext7confirm0BV_E0EBa_.exit

bb.h:                                             ; preds = %bb.f
  %i.z = invoke fastcc noundef nonnull ptr @_RINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB6_11GenericArgs16fill_vec_builderNCINvB2_9fill_restNCNvMs_NtNtBa_17method_resolution7confirmNtB1U_14ConfirmContext7confirm0BV_E0EBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.h, i64 noundef %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_RINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB6_11GenericArgs8for_itemNCINvB2_9fill_restNCNvMs_NtNtBa_17method_resolution7confirmNtB1L_14ConfirmContext7confirm0BV_E0EBa_.exit unwind label %bb.b, !noalias !7616

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7614
  store i32 0, ptr %i.g, align 8, !noalias !7614
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7614
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7614
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7614
  store ptr %i.g, ptr %i.f, align 8, !noalias !7618
  store ptr %i.i, ptr %i.e, align 8, !noalias !7618
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.j, ptr %i.ab, align 8, !noalias !7618
  invoke void @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB2_8Generics4iter(ptr noalias nofree noundef nonnull sret([376 x i8]) align 8 captures(address) dereferenceable(376) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.h)
          to label %.noexc.i unwind label %bb.j, !noalias !7616

.noexc.i:                                         ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7618
  store ptr %i.e, ptr %i.c, align 8, !noalias !7618
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.ac, align 8, !noalias !7618
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.ad, align 8, !noalias !7618
  invoke void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsEIBP_IBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB3w_3hir8generics19GenericParamDataRefEEIB11_IB11_INtNtB7_6filter6FilterIB11_INtNtB7_9enumerate9EnumerateIB1F_NtB4a_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB6z_5ArenaB60_E4iter0ENCNvMs3_B4a_NtB4a_13GenericParams19iter_early_bound_lt0ENCNvMB26_B24_14iter_lifetimes0ENCNvB8j_4iter0EEIB11_IB11_IB11_IB5u_IB1F_NtB4a_20TypeOrConstParamDataEENCNvMsm_B6z_IB6X_B9p_E4iter0ENCNvB8j_19iter_type_or_consts0ENCNvB8j_30iter_type_or_consts_as_generic0EEIB11_INtNtB7_10filter_map9FilterMapIB53_B5o_NCNvB7p_18iter_late_bound_lt0ENCNvB8j_25iter_late_bound_lifetimes0EB8K_EENCNvMs_B26_NtB26_8Generics4iter0ENCNvMNtNtB28_11next_solver8genericsNtBe3_8Generics4iter0EIB36_TB3u_INtB38_6OptionRB60_EEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_B5w_IB5u_pEBfq_4fold9enumerateBeY_uNCINvNvBfq_8for_each4callTjBeY_ENCINvMss_NtBe5_11generic_argNtBhs_11GenericArgs12fill_builderNCINvBho_9fill_restNCNvMs_NtNtB28_17method_resolution7confirmNtBiI_14ConfirmContext7confirm0BhL_E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBhs_10GenericArgKja_EE0E0E0EB28_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(376) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.k unwind label %bb.j, !noalias !7616

bb.j:                                             ; preds = %bb.k, %.noexc.i, %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtCs474hSbRjvii_8arrayvec8arrayvecINtB2_8ArrayVecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgKja_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.g)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgKja_EEB1r_.exit.i unwind label %bb.l, !noalias !7616

bb.k:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7614
  %i.af = load i32, ptr %i.g, align 8, !noalias !7614, !noundef !11
  %i.ag = zext i32 %i.af to i64
  %i.ah = invoke fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg18GenericArgsStorageE21from_header_and_sliceB14_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.aa, i64 noundef range(i64 0, 4294967296) %i.ag) #51
          to label %_RNvMs13_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB6_11GenericArgs14new_from_slice.exit.i unwind label %bb.j, !noalias !7616

_RNvMs13_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB6_11GenericArgs14new_from_slice.exit.i: ; preds = %bb.k
  invoke void @_RNvXNtCs474hSbRjvii_8arrayvec8arrayvecINtB2_8ArrayVecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgKja_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.g)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgKja_EEB1r_.exit11.i unwind label %bb.b, !noalias !7616

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgKja_EEB1r_.exit11.i: ; preds = %_RNvMs13_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB6_11GenericArgs14new_from_slice.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7614
  br label %_RINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB6_11GenericArgs8for_itemNCINvB2_9fill_restNCNvMs_NtNtBa_17method_resolution7confirmNtB1L_14ConfirmContext7confirm0BV_E0EBa_.exit

bb.l:                                             ; preds = %bb.j, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgKja_EEB1r_.exit.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45, !noalias !7616
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8generics8GenericsEBH_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgKja_EEB1r_.exit.i
  resume { ptr, i32 } %.pn.i

_RINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB6_11GenericArgs8for_itemNCINvB2_9fill_restNCNvMs_NtNtBa_17method_resolution7confirmNtB1L_14ConfirmContext7confirm0BV_E0EBa_.exit: ; preds = %bb.g, %bb.h, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgKja_EEB1r_.exit11.i
  %.sroa.0.0.i = phi ptr [ %i.y, %bb.g ], [ %i.ah, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgKja_EEB1r_.exit11.i ], [ %i.z, %bb.h ]
  call void @_RNvXNtCs474hSbRjvii_8arrayvec8arrayvecINtB2_8ArrayVecNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsKj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.h), !noalias !7616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs8K4cjrcxBsw_6hir_ty5lower29replace_dummy_self_with_errorINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate9AliasTermNtNtNtB4_11next_solver8interner10DbInternerEEB4_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(2424) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %2, ptr %i.b, align 8
  call void @_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesA_1__INtB5_9AliasTermNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_4fold12TypeFoldableB1c_E9fold_withINtNtB1g_4util14BottomUpFolderNCINvNtB1i_5lower29replace_dummy_self_with_errorBW_E0NCB3o_s_0NCB3o_s0_0EEB1i_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RINvNtCshzWfHUSfYae_4core3any9type_nameINtNtCsd9Lm8bEdjjY_5salsa8interned5ValueNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdEEB1j_() unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @61, i64 51 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RINvNtCshzWfHUSfYae_4core3any9type_nameINtNtCsd9Lm8bEdjjY_5salsa8interned5ValueNtNtCs8K4cjrcxBsw_6hir_ty2db17InternedClosureIdEEB1j_() unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @62, i64 57 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RINvNtCshzWfHUSfYae_4core3any9type_nameINtNtCsd9Lm8bEdjjY_5salsa8interned5ValueNtNtCs8K4cjrcxBsw_6hir_ty2db18InternedOpaqueTyIdEEB1j_() unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @63, i64 58 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RINvNtCshzWfHUSfYae_4core3any9type_nameINtNtCsd9Lm8bEdjjY_5salsa8interned5ValueNtNtCs8K4cjrcxBsw_6hir_ty2db19InternedCoroutineIdEEB1j_() unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @64, i64 59 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RINvNtCshzWfHUSfYae_4core3any9type_nameINtNtCsd9Lm8bEdjjY_5salsa8interned5ValueNtNtCs8K4cjrcxBsw_6hir_ty2db26InternedCoroutineClosureIdEEB1j_() unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @65, i64 66 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RINvNtCshzWfHUSfYae_4core3any9type_nameINtNtCsd9Lm8bEdjjY_5salsa8interned5ValueNtNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__32specializes_query_Configuration_EEB1l_() unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @66, i64 83 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RINvNtCshzWfHUSfYae_4core3any9type_nameINtNtCsd9Lm8bEdjjY_5salsa8interned5ValueNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__54resolve_type_param_assoc_type_shorthand_Configuration_EEB1l_() unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @67, i64 96 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RINvNtCshzWfHUSfYae_4core3any9type_nameINtNtCsd9Lm8bEdjjY_5salsa8interned5ValueNtNvNtCs8K4cjrcxBsw_6hir_ty6layout1__33layout_of_ty_query_Configuration_EEB1l_() unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @68, i64 76 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RINvNtCshzWfHUSfYae_4core3any9type_nameINtNtCsd9Lm8bEdjjY_5salsa8interned5ValueNtNvNtNtCs8K4cjrcxBsw_6hir_ty3mir16monomorphization1__43monomorphized_mir_body_query_Configuration_EEB1n_() unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @69, i64 101 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RINvNtCshzWfHUSfYae_4core3any9type_nameINtNtCsd9Lm8bEdjjY_5salsa8interned5ValueNtNvNtNtCs8K4cjrcxBsw_6hir_ty3mir16monomorphizations_1__55monomorphized_mir_body_for_closure_query_Configuration_EEB1n_() unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @70, i64 113 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RINvNtCshzWfHUSfYae_4core3any9type_nameINtNtCsd9Lm8bEdjjY_5salsa8interned5ValueNtNvNtNtCs8K4cjrcxBsw_6hir_ty6layout3adt1__34layout_of_adt_query_Configuration_EEB1n_() unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @71, i64 82 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RINvNtCshzWfHUSfYae_4core3any9type_nameINtNtCsd9Lm8bEdjjY_5salsa8interned5ValueNtNvNvNtCs8K4cjrcxBsw_6hir_ty9consteval10const_eval1__31const_eval_query_Configuration_EEB1n_() unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @72, i64 89 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RINvNtCshzWfHUSfYae_4core3any9type_nameINtNtCsd9Lm8bEdjjY_5salsa8interned5ValueNtNvNvNtCs8K4cjrcxBsw_6hir_ty9consteval15anon_const_eval1__36anon_const_eval_query_Configuration_EEB1n_() unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @73, i64 99 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RINvNtCshzWfHUSfYae_4core3any9type_nameNtNtCs8K4cjrcxBsw_6hir_ty16representability16representabilityEBF_() unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @74, i64 42 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RINvNtCshzWfHUSfYae_4core3any9type_nameNtNtCs8K4cjrcxBsw_6hir_ty5lower27impl_trait_with_diagnosticsEBF_() unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @75, i64 42 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RINvNtCshzWfHUSfYae_4core3any9type_nameNtNtCs8K4cjrcxBsw_6hir_ty5lower28field_types_with_diagnosticsEBF_() unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @76, i64 43 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RINvNtCshzWfHUSfYae_4core3any9type_nameNtNtCs8K4cjrcxBsw_6hir_ty5lower29impl_self_ty_with_diagnosticsEBF_() unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @77, i64 44 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RINvNtCshzWfHUSfYae_4core3any9type_nameNtNtCs8K4cjrcxBsw_6hir_ty5lower31type_for_const_with_diagnosticsEBF_() unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @78, i64 46 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RINvNtCshzWfHUSfYae_4core3any9type_nameNtNtCs8K4cjrcxBsw_6hir_ty5lower32type_for_static_with_diagnosticsEBF_() unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @79, i64 47 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RINvNtCshzWfHUSfYae_4core3any9type_nameNtNtCs8K4cjrcxBsw_6hir_ty5lower33generic_defaults_with_diagnosticsEBF_() unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @80, i64 48 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RINvNtCshzWfHUSfYae_4core3any9type_nameNtNtCs8K4cjrcxBsw_6hir_ty5lower34const_param_types_with_diagnosticsEBF_() unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @81, i64 49 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RINvNtCshzWfHUSfYae_4core3any9type_nameNtNtCs8K4cjrcxBsw_6hir_ty5lower34type_alias_bounds_with_diagnosticsEBF_() unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @82, i64 49 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RINvNtCshzWfHUSfYae_4core3any9type_nameNtNtCs8K4cjrcxBsw_6hir_ty5lower36type_for_type_alias_with_diagnosticsEBF_() unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @83, i64 51 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RINvNtCshzWfHUSfYae_4core3any9type_nameNtNtCs8K4cjrcxBsw_6hir_ty5lower39resolve_type_param_assoc_type_shorthandEBF_() unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @7, i64 54 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RINvNtCshzWfHUSfYae_4core3any9type_nameNtNtCs8K4cjrcxBsw_6hir_ty5lower40callable_item_signature_with_diagnosticsEBF_() unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @84, i64 55 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RINvNtCshzWfHUSfYae_4core3any9type_nameNtNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtBK_10ImplTraits22type_alias_impl_traits23type_alias_impl_traits_EBM_() unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @85, i64 74 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RINvNtCshzWfHUSfYae_4core3any9type_nameNtNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtBK_10ImplTraits23return_type_impl_traits24return_type_impl_traits_EBM_() unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @86, i64 76 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RINvNtCshzWfHUSfYae_4core3any9type_nameNtNvMs1X_NtCs8K4cjrcxBsw_6hir_ty5lowerNtBK_17GenericPredicates22query_with_diagnostics23query_with_diagnostics_EBM_() unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @87, i64 81 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RINvNtCshzWfHUSfYae_4core3any9type_nameNtNvMs8_NtCs8K4cjrcxBsw_6hir_ty5lowerNtBJ_15SupertraitsInfo5query16supertraits_infoEBL_() unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @88, i64 55 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RINvNtCshzWfHUSfYae_4core3any9type_nameNtNvNtCs8K4cjrcxBsw_6hir_ty5lower17trait_environment23trait_environment_queryEBH_() unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @89, i64 57 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RINvNtCshzWfHUSfYae_4core3any9type_nameNtNvNtCs8K4cjrcxBsw_6hir_ty6upvars16upvars_mentioned21body_upvars_mentionedEBH_() unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @90, i64 55 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RINvNtCshzWfHUSfYae_4core3any9type_nameNtNvNtCs8K4cjrcxBsw_6hir_ty6upvars16upvars_mentioned26signature_upvars_mentionedEBH_() unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @91, i64 60 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RINvNtCshzWfHUSfYae_4core3any9type_nameNtNvNtCs8K4cjrcxBsw_6hir_ty6upvars16upvars_mentioned31variant_fields_upvars_mentionedEBH_() unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @92, i64 65 }
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueANtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundj1_ECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i8, ptr %0, align 8, !range !31, !alias.scope !7631, !noundef !11
  switch i8 %i.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundECs8K4cjrcxBsw_6hir_ty.exit [
    i8 1, label %bb.b
    i8 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !alias.scope !7632, !nonnull !11, !noundef !11
  %i.d = icmp eq ptr %i.c, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %i.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundECs8K4cjrcxBsw_6hir_ty.exit, label %bb.c, !prof !18

bb.c:                                             ; preds = %bb.b
  tail call void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #49
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundECs8K4cjrcxBsw_6hir_ty.exit

bb.d:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !alias.scope !7633, !nonnull !11, !noundef !11
  %i.f = icmp eq ptr %i.e, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %i.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundECs8K4cjrcxBsw_6hir_ty.exit, label %bb.e, !prof !18

bb.e:                                             ; preds = %bb.d
  tail call void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9UseArgRefEB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #49
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundECs8K4cjrcxBsw_6hir_ty.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec8IntoIterNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
  %i.b = icmp eq ptr %i.a, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %i.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdEEB1d_.exit2, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNvXsG_CsbdtVtHYmo6x_8thin_vecINtB8_8IntoIterpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdEB1S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #49
          to label %_RNvXsG_CsbdtVtHYmo6x_8thin_vecINtB5_8IntoIterNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBL_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %0, align 8, !alias.scope !7642, !nonnull !11, !noundef !11
  %i.e = icmp eq ptr %i.d, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdEEB1d_.exit, label %bb.d, !prof !18

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdEB1R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #49
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdEEB1d_.exit unwind label %bb.f

_RNvXsG_CsbdtVtHYmo6x_8thin_vecINtB5_8IntoIterNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBL_.exit: ; preds = %bb.b
  %.pr = load ptr, ptr %0, align 8, !alias.scope !7643
  %i.f = icmp eq ptr %.pr, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %i.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdEEB1d_.exit2, label %bb.e, !prof !32

bb.e:                                             ; preds = %_RNvXsG_CsbdtVtHYmo6x_8thin_vecINtB5_8IntoIterNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBL_.exit
  tail call void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdEB1R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #49
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdEEB1d_.exit2

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdEEB1d_.exit2: ; preds = %bb.a, %_RNvXsG_CsbdtVtHYmo6x_8thin_vecINtB5_8IntoIterNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBL_.exit, %bb.e
  ret void

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdEEB1d_.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticEEB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
  %i.b = icmp eq ptr %i.a, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %i.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticEEB1f_.exit2, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNvXsG_CsbdtVtHYmo6x_8thin_vecINtB8_8IntoIterpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticEB1U_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #49
          to label %_RNvXsG_CsbdtVtHYmo6x_8thin_vecINtB5_8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBN_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %0, align 8, !alias.scope !7652, !nonnull !11, !noundef !11
  %i.e = icmp eq ptr %i.d, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticEEB1f_.exit, label %bb.d, !prof !18

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticEB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #49
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticEEB1f_.exit unwind label %bb.f

_RNvXsG_CsbdtVtHYmo6x_8thin_vecINtB5_8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBN_.exit: ; preds = %bb.b
  %.pr = load ptr, ptr %0, align 8, !alias.scope !7653
  %i.f = icmp eq ptr %.pr, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %i.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticEEB1f_.exit2, label %bb.e, !prof !32

bb.e:                                             ; preds = %_RNvXsG_CsbdtVtHYmo6x_8thin_vecINtB5_8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBN_.exit
  tail call void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticEB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #49
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticEEB1f_.exit2

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticEEB1f_.exit2: ; preds = %bb.a, %_RNvXsG_CsbdtVtHYmo6x_8thin_vecINtB5_8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBN_.exit, %bb.e
  ret void

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtNtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnostics20TyLoweringDiagnosticEEB1f_.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbq3eHDLgq0Z_8la_arena5ArenaNtNtCs8K4cjrcxBsw_6hir_ty5lower9ImplTraitEEB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs8K4cjrcxBsw_6hir_ty5lower9ImplTraitENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5lower9ImplTraitEEB1c_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs8K4cjrcxBsw_6hir_ty5lower9ImplTraitENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCs8K4cjrcxBsw_6hir_ty5lower9ImplTraitEEB1j_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCs8K4cjrcxBsw_6hir_ty5lower9ImplTraitEEB1j_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5lower9ImplTraitEEB1c_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs8K4cjrcxBsw_6hir_ty5lower9ImplTraitENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_INtNtCs8K4cjrcxBsw_6hir_ty5lower16TyLoweringResultINtNtNtB16_11next_solver6binder17StoredEarlyBinderNtB1S_14StoredTraitRefEEEEEB16_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = load i64, ptr %0, align 8, !range !23, !noundef !11
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs8K4cjrcxBsw_6hir_ty5lower16TyLoweringResultINtNtNtB12_11next_solver6binder17StoredEarlyBinderNtB1O_14StoredTraitRefEEEEB12_.exit, label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs8K4cjrcxBsw_6hir_ty5lower16TyLoweringResultINtNtNtB12_11next_solver6binder17StoredEarlyBinderNtB1O_14StoredTraitRefEEEEB12_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8K4cjrcxBsw_6hir_ty5lower16TyLoweringResultINtNtNtBG_11next_solver6binder17StoredEarlyBinderNtB1s_14StoredTraitRefEEEBG_.exit.i, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7656)
  %i.e = load i32, ptr %i.d, align 8, !alias.scope !7656, !noundef !11
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs8K4cjrcxBsw_6hir_ty5lower16TyLoweringResultINtNtNtB12_11next_solver6binder17StoredEarlyBinderNtB1O_14StoredTraitRefEEEEB12_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !7656, !nonnull !11, !noundef !11 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.h, align 8, !alias.scope !7656 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7656
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noalias !7656, !noundef !11
  store ptr %.val.i, ptr %i.a, align 8, !noalias !7656
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.j, ptr %i.k, align 8, !noalias !7656
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header30HeaderSliceWithLengthProtecteduNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEE10drop_innerB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8K4cjrcxBsw_6hir_ty5lower16TyLoweringResultINtNtNtBG_11next_solver6binder17StoredEarlyBinderNtB1s_14StoredTraitRefEEEBG_.exit.i unwind label %bb.d, !noalias !7656

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCs8K4cjrcxBsw_6hir_ty5lower20TyLoweringResultInfoEEEB1A_(ptr %.val1.i) #46
          to label %bb.f unwind label %bb.e, !noalias !7656

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45, !noalias !7656
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.l

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8K4cjrcxBsw_6hir_ty5lower16TyLoweringResultINtNtNtBG_11next_solver6binder17StoredEarlyBinderNtB1s_14StoredTraitRefEEEBG_.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7656
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCs8K4cjrcxBsw_6hir_ty5lower20TyLoweringResultInfoEEEB1A_(ptr %.val1.i), !noalias !7656
end_hunk_0
begin_hunk_1_@_RNvXs3_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer2atNtNtB9_11generic_arg10GenericArgNtB5_7ToTrace8to_trace:switch.lookup
bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.91.0 = phi i32 [ 2, %bb.c ], [ 3, %bb.d ], [ 3, %bb.e ]
  %.sroa.6.0 = phi ptr [ %i.l, %bb.c ], [ %i.u, %bb.d ], [ %i.ai, %bb.e ]
  %.sroa.0.0 = phi ptr [ %i.h, %bb.c ], [ %i.q, %bb.d ], [ %i.ab, %bb.e ]
  store <2 x i32> %i.d, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0, ptr %i.aj, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.91.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.sroa.91.0, ptr %.sroa.91.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__NtB5_53resolve_type_param_assoc_type_shorthand_InternedData_NtNtCsd9Lm8bEdjjY_5salsa12salsa_struct15SalsaStructInDb7entries(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) @6, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !16558, !noalias !16559, !noundef !11
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %select.unfold.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.i = call noundef i64 @_RINvYINtNtCshzWfHUSfYae_4core4hash18BuildHasherDefaultNtNtCsd9Lm8bEdjjY_5salsa4hash12TypeIdHasherENtB6_11BuildHasher8hash_oneRNtNtB8_3any6TypeIdECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16560)
  call void @llvm.experimental.noalias.scope.decl(metadata !16561)
  %i.j = lshr i64 %i.i, 57
  %i.k = trunc nuw nsw i64 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !16562, !noalias !16563, !noundef !11 ; 2 uses
  %i.n = load ptr, ptr %i.g, align 8, !alias.scope !16562, !noalias !16563, !nonnull !11, !noundef !11 ; 2 uses
  %i.o = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %i.p = shufflevector <16 x i8> %i.o, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.011.0.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ag, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.i, %bb.b ], [ %i.ah, %bb.e ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.m  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.q, align 1, !noalias !16564 ; 2 uses
  %i.r = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, %i.p
  %i.s = bitcast <16 x i1> %i.r to i16            ; 2 uses
  %.not.i.not30.i.i.i = icmp eq i16 %i.s, 0
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %.sroa.05.0.i31.i.i.i = phi i16 [ %i.af, %bb.d ], [ %i.s, %bb.c ] ; 3 uses
  %i.t = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i, i1 true)
  %i.u = zext nneg i16 %i.t to i64
  %i.v = add i64 %.sroa.01.0.i.i.i.i, %i.u
  %i.w = and i64 %i.v, %i.m
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr inbounds [24 x i8], ptr %i.n, i64 %i.x
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -24
  %.val2.i.i.i.i = load i128, ptr %i.z, align 8, !noalias !16565
  %i.aa = icmp eq i128 %.val2.i.i.i.i, -63865710644049432111816652829075931395
  br i1 %i.aa, label %_RINvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB6_5Zalsa18lookup_jar_by_typeNtNtCs8K4cjrcxBsw_6hir_ty5lower39resolve_type_param_assoc_type_shorthandEB17_.exit, label %bb.d, !prof !18

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.ab = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %i.ad = icmp eq i16 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %select.unfold.i, !prof !16

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ae = add i16 %.sroa.05.0.i31.i.i.i, -1
  %i.af = and i16 %i.ae, %.sroa.05.0.i31.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.af, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ag = add i64 %.sroa.011.0.i.i.i.i, 16        ; 2 uses
  %i.ah = add i64 %.sroa.01.0.i.i.i.i, %i.ag
  br label %bb.c

select.unfold.i:                                  ; preds = %._crit_edge.i.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @7, ptr %i.b, align 8, !captures !50
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 54, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCs8K4cjrcxBsw_6hir_ty, ptr %.sroa.44.0..sroa_idx.i, align 8
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #47
  unreachable

_RINvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB6_5Zalsa18lookup_jar_by_typeNtNtCs8K4cjrcxBsw_6hir_ty5lower39resolve_type_param_assoc_type_shorthandEB17_.exit: ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aj = call noundef nonnull align 8 ptr @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__54resolve_type_param_assoc_type_shorthand_Configuration_EE13get_or_createNCNvMs_B1L_B1J_18intern_ingredient_0EB1P_(ptr noundef nonnull align 4 @_RNvNvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__53resolve_type_param_assoc_type_shorthand_INTERN_CACHE_, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %1)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 328
  call void @_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table8slots_ofINtNtB8_8interned5ValueNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__54resolve_type_param_assoc_type_shorthand_Configuration_EEB1l_(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noundef nonnull align 8 %i.ak)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.aj, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB5_16StoredGenericArgNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = and i64 %i.e, 3
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.d, i64 -2       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16569
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  store ptr %i.g, ptr %i.b, align 8, !noalias !16569
  %i.h = call noundef zeroext i1 @_RNvXs2_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6regionNtB5_6RegionNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !16570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16569
  br label %_RNvXs7_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB5_10GenericArgNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16569
  store ptr %i.d, ptr %i.c, align 8, !noalias !16569
  %i.i = call noundef zeroext i1 @_RNvXs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB5_2TyNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !16570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16569
  br label %_RNvXs7_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB5_10GenericArgNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.d, i64 -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16569
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  store ptr %i.j, ptr %i.a, align 8, !noalias !16569
  %i.k = call noundef zeroext i1 @_RNvXs_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB4_5ConstNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !16570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16569
  br label %_RNvXs7_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB5_10GenericArgNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.exit

_RNvXs7_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB5_10GenericArgNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.h, %bb.c ], [ %i.i, %bb.d ], [ %i.k, %bb.e ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, ptr } @_RNvXs6_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonicalRINtB5_18CanonicalVarValuesNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterB1n_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr %i.e, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binderINtB5_17StoredEarlyBinderNtNtB7_9predicate13StoredClausesENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @612, i64 noundef 17, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @611)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvXs7_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonicalINtB5_18CanonicalVarValuesNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtB7_8BoundVarE5indexB1m_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !11 ; 2 uses
  %i.c = zext i32 %1 to i64                       ; 3 uses
  %i.d = icmp ugt i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.c
  ret ptr %i.f

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.c, i64 noundef %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #47
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa8internedINtB5_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__54resolve_type_param_assoc_type_shorthand_Configuration_ENtNtB7_10ingredient10Ingredient10debug_nameB12_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @613, i64 59 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa8internedINtB5_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__54resolve_type_param_assoc_type_shorthand_Configuration_ENtNtB7_10ingredient10Ingredient14is_persistableB12_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa8internedINtB5_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__54resolve_type_param_assoc_type_shorthand_Configuration_ENtNtB7_10ingredient10Ingredient16ingredient_indexB12_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8, !noundef !11
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa8internedINtB5_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__54resolve_type_param_assoc_type_shorthand_Configuration_ENtNtB7_10ingredient10Ingredient16memo_table_typesB12_(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa8internedINtB5_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__54resolve_type_param_assoc_type_shorthand_Configuration_ENtNtB7_10ingredient10Ingredient20memo_table_types_mutB12_(ptr noalias nofree noundef readnone align 8 captures(ret: address, provenance) dereferenceable(72) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa8internedINtB5_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__54resolve_type_param_assoc_type_shorthand_Configuration_ENtNtB7_10ingredient10Ingredient8jar_kindB12_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa8internedINtB5_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__54resolve_type_param_assoc_type_shorthand_Configuration_ENtNtB7_10ingredient10Ingredient8locationB12_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret ptr @614
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs7_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB5_10GenericArgNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = and i64 %i.e, 3
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.d, i64 -2       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  store ptr %i.g, ptr %i.b, align 8
  %i.h = call noundef zeroext i1 @_RNvXs2_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6regionNtB5_6RegionNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %i.i = call noundef zeroext i1 @_RNvXs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB5_2TyNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.d, i64 -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  store ptr %i.j, ptr %i.a, align 8
  %i.k = call noundef zeroext i1 @_RNvXs_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB4_5ConstNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.c ], [ %i.i, %bb.d ], [ %i.k, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) unnamed_addr #20 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !range !30, !noundef !11 ; 4 uses
  %i.b = icmp samesign ugt i32 %i.a, 2
  %i.c = zext nneg i32 %i.a to i64
  %i.d = add nsw i64 %i.c, -2
  %i.e = select i1 %i.b, i64 %i.d, i64 0          ; 2 uses
  %i.f = load i32, ptr %1, align 4, !range !30, !noundef !11 ; 3 uses
  %i.g = icmp samesign ult i32 %i.f, 3            ; 2 uses
  %i.h = zext nneg i32 %i.f to i64
  %i.i = add nsw i64 %i.h, -2
  %i.j = select i1 %i.g, i64 0, i64 %i.i
  %i.k = icmp eq i64 %i.e, %i.j
  br i1 %i.k, label %bb.b, label %_RNvXs7f_CsileJQcQObtj_7hir_defNtB6_5AdtIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  switch i64 %i.e, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.l
    i64 2, label %bb.m
    i64 3, label %bb.n
    i64 4, label %bb.o
    i64 5, label %bb.p
    i64 6, label %bb.q
  ]

_RNvXs7f_CsileJQcQObtj_7hir_defNtB6_5AdtIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.a, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.q ], [ %i.bo, %bb.r ], [ false, %bb.a ], [ %i.bt, %bb.s ], [ false, %bb.l ], [ %i.by, %bb.t ], [ false, %bb.m ], [ %i.cd, %bb.u ], [ false, %bb.n ], [ %i.ci, %bb.v ], [ false, %bb.o ], [ %i.cn, %bb.w ], [ false, %bb.p ], [ %i.v, %bb.i ], [ false, %bb.d ], [ %i.aa, %bb.j ], [ false, %bb.f ], [ %i.af, %bb.k ], [ false, %bb.g ], [ false, %bb.h ]
  ret i1 %.sroa.0.0.shrunk

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16575)
  %i.l = icmp eq i32 %i.a, %i.f
  br i1 %i.l, label %bb.e, label %_RNvXs7f_CsileJQcQObtj_7hir_defNtB6_5AdtIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 4, !alias.scope !16574, !noalias !16575, !noundef !11
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i32, ptr %i.o, align 4, !alias.scope !16575, !noalias !16574, !noundef !11
  %i.q = icmp eq i32 %i.n, %i.p                   ; 3 uses
  switch i32 %i.a, label %default.unreachable [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  br i1 %i.q, label %bb.i, label %_RNvXs7f_CsileJQcQObtj_7hir_defNtB6_5AdtIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.e
  br i1 %i.q, label %bb.j, label %_RNvXs7f_CsileJQcQObtj_7hir_defNtB6_5AdtIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.e
  br i1 %i.q, label %bb.k, label %_RNvXs7f_CsileJQcQObtj_7hir_defNtB6_5AdtIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !range !45, !alias.scope !16574, !noalias !16575, !noundef !11
  %i.u = load i32, ptr %i.r, align 4, !range !45, !alias.scope !16575, !noalias !16574, !noundef !11
  %i.v = icmp eq i32 %i.t, %i.u
  br label %_RNvXs7f_CsileJQcQObtj_7hir_defNtB6_5AdtIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = load i32, ptr %i.x, align 4, !range !45, !alias.scope !16574, !noalias !16575, !noundef !11
  %i.z = load i32, ptr %i.w, align 4, !range !45, !alias.scope !16575, !noalias !16574, !noundef !11
  %i.aa = icmp eq i32 %i.y, %i.z
  br label %_RNvXs7f_CsileJQcQObtj_7hir_defNtB6_5AdtIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !range !45, !alias.scope !16574, !noalias !16575, !noundef !11
  %i.ae = load i32, ptr %i.ab, align 4, !range !45, !alias.scope !16575, !noalias !16574, !noundef !11
  %i.af = icmp eq i32 %i.ad, %i.ae
  br label %_RNvXs7f_CsileJQcQObtj_7hir_defNtB6_5AdtIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !noundef !11
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load i32, ptr %i.ai, align 4, !noundef !11
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.r, label %_RNvXs7f_CsileJQcQObtj_7hir_defNtB6_5AdtIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load i32, ptr %i.al, align 4, !noundef !11
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load i32, ptr %i.an, align 4, !noundef !11
  %i.ap = icmp eq i32 %i.am, %i.ao
  br i1 %i.ap, label %bb.s, label %_RNvXs7f_CsileJQcQObtj_7hir_defNtB6_5AdtIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !noundef !11
end_hunk_1
begin_hunk_2_@_RNvXsT_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB5_6ClauseINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6upcast10UpcastFromNtNtB7_8interner10DbInternerINtNtB18_6binder6BinderB20_INtNtB18_9predicate19ProjectionPredicateB20_EEE11upcast_from:bb.a
  %i.e = call noundef nonnull ptr @_RNvMs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB5_9Predicate3new(ptr noalias nofree nonnull readonly align 8 captures(none) poison, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a), !noalias !16722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16723
  ret ptr %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvXsU_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB5_6ClauseINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent6ClauseNtNtB7_8interner10DbInternerE22instantiate_supertrait(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 3 uses
  %i.f = alloca [48 x i8], align 8                ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 4 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %0, ptr %i.m, align 8
  %i.n = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.o = icmp ult i64 %i.n, 2
  br i1 %i.o, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.p = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsU_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB7_6ClauseINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent6ClauseNtNtB9_8interner10DbInternerE22instantiate_supertrait10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.p, label %bb.c [
    i8 0, label %bb.e
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !28

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvXsU_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB7_6ClauseINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent6ClauseNtNtB9_8interner10DbInternerE22instantiate_supertrait10___CALLSITE) #49 ; 2 uses
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.06.0 = phi i8 [ %i.q, %bb.c ], [ %i.p, %bb.b ], [ %i.p, %bb.b ]
  %i.s = load ptr, ptr @_RNvNvXsU_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB7_6ClauseINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent6ClauseNtNtB9_8interner10DbInternerE22instantiate_supertrait10___CALLSITE, align 8, !nonnull !11, !align !12, !noundef !11
  %i.t = tail call noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.s, i8 noundef %.sroa.06.0)
  br i1 %i.t, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.h, %bb.d
  %i.u = phi ptr [ %0, %bb.c ], [ %0, %bb.b ], [ %0, %bb.a ], [ %.pre, %bb.h ], [ %0, %bb.d ] ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.u, align 8, !noalias !16732 ; 2 uses
  %i.v = icmp ult i64 %.sroa.0.0.copyload.i, 9
  br i1 %i.v, label %_RNvXsK_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB5_6ClauseNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent8IntoKind4kind.exit, label %bb.f, !prof !18

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @171, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @625) #47, !noalias !16732
  unreachable

_RNvXsK_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB5_6ClauseNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent8IntoKind4kind.exit: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !noalias !16732, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.4.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i, i64 32, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !11, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.aa = getelementptr i8, ptr %i.z, i64 8       ; 2 uses
  %.val = load i64, ptr %i.aa, align 8, !noundef !11
  store i64 %.sroa.0.0.copyload.i, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RINvMsh_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver8internerNtB6_10DbInterner23shift_bound_var_indicesINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kind10ClauseKindBR_EEBa_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.d, i64 noundef %.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RINvMsq_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB6_11EarlyBinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB8_14predicate_kind10ClauseKindB17_EE11instantiateNtNtB1b_11generic_arg11GenericArgsEB1d_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ad = load i64, ptr %i.aa, align 8, !noundef !11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw [20 x i8], ptr %i.ae, i64 %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !11
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw [20 x i8], ptr %i.ai, i64 %i.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16733
  store ptr %i.ae, ptr %i.c, align 8, !alias.scope !16734
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.af, ptr %.sroa.415.0..sroa_idx, align 8, !alias.scope !16734
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ai, ptr %.sroa.516.0..sroa_idx, align 8, !alias.scope !16734
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.aj, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !16734
  %i.ak = call noundef nonnull ptr @_RINvXNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8internerINtNtB5_6binder17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB3_15CollectAndApplyBN_NtB1n_13BoundVarKindsE17collect_and_applyINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB3v_6copied6CopiedINtNtNtB3z_5slice4iter4IterBN_EEB4i_ENCINvMso_B1n_B2L_13new_from_iterB3q_BN_E0EB1r_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c), !noalias !16733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16733
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %i.ak, ptr %i.al, align 8
  %i.am = call noundef nonnull ptr @_RNvMs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB5_9Predicate3new(ptr noalias nofree nonnull readonly align 8 captures(none) poison, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.f) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.am, ptr %i.b, align 8
  %.sroa.03.0.copyload.i = load i64, ptr %i.am, align 8
  %i.an = icmp ult i64 %.sroa.03.0.copyload.i, 9
  br i1 %i.an, label %_RNvMsH_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB5_9Predicate13expect_clause.exit, label %bb.g, !prof !18

bb.g:                                             ; preds = %_RNvXsK_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB5_6ClauseNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent8IntoKind4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB5_9PredicateNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @243, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @245) #47
  unreachable

_RNvMsH_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB5_9Predicate13expect_clause.exit: ; preds = %_RNvXsK_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB5_6ClauseNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent8IntoKind4kind.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret ptr %i.am

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ao = load ptr, ptr @_RNvNvXsU_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB7_6ClauseINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent6ClauseNtNtB9_8interner10DbInternerE22instantiate_supertrait10___CALLSITE, align 8, !nonnull !11, !align !12, !noundef !11 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.m, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %2, ptr %i.i, align 8
  store ptr %i.j, ptr %i.k, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @626, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.i, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @627, ptr %i.as, align 8
  store i64 1, ptr %i.l, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.k, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 2, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.ap, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.pre = load ptr, ptr %i.m, align 8
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsV_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB5_26BoundExistentialPredicatesNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = tail call noundef zeroext i1 @_RNvXsr_NtCshzWfHUSfYae_4core3fmtSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBA_9predicate20ExistentialPredicateB1n_EENtB5_5Debug3fmtB1t_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.d, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsW_NtNtCshzWfHUSfYae_4core3fmt3nummNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !11 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsu_NtNtCshzWfHUSfYae_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXs8_NtNtNtCshzWfHUSfYae_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsw_NtNtCshzWfHUSfYae_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCsaMQbKjKCVRW_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #25 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !12, !noundef !11
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty16representability1__31representability_Configuration_ENtNtB6_10ingredient10Ingredient10debug_nameB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @628, i64 16 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty16representability1__31representability_Configuration_ENtNtB6_10ingredient10Ingredient14is_persistableB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty16representability1__31representability_Configuration_ENtNtB6_10ingredient10Ingredient16ingredient_indexB11_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.b = load i32, ptr %i.a, align 8, !noundef !11
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty16representability1__31representability_Configuration_ENtNtB6_10ingredient10Ingredient19remove_stale_outputB11_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 4 captures(none) dead_on_return %2, i32 range(i32 1, 0) %3, i32 %4) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty16representability1__31representability_Configuration_ENtNtB6_10ingredient10Ingredient31requires_reset_for_new_revisionB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty16representability1__31representability_Configuration_ENtNtB6_10ingredient10Ingredient8jar_kindB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty16representability1__31representability_Configuration_ENtNtB6_10ingredient10Ingredient8locationB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret ptr @630
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lower1__42impl_trait_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient10debug_nameB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @631, i64 27 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lower1__42impl_trait_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient14is_persistableB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lower1__42impl_trait_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient16ingredient_indexB11_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.b = load i32, ptr %i.a, align 8, !noundef !11
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lower1__42impl_trait_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient19remove_stale_outputB11_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 4 captures(none) dead_on_return %2, i32 range(i32 1, 0) %3, i32 %4) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lower1__42impl_trait_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient31requires_reset_for_new_revisionB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lower1__42impl_trait_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient8jar_kindB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lower1__42impl_trait_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient8locationB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret ptr @632
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers0_1__46type_for_const_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient10debug_nameB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @633, i64 31 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers0_1__46type_for_const_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient14is_persistableB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers0_1__46type_for_const_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient16ingredient_indexB11_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.b = load i32, ptr %i.a, align 8, !noundef !11
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers0_1__46type_for_const_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient19remove_stale_outputB11_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 4 captures(none) dead_on_return %2, i32 range(i32 1, 0) %3, i32 %4) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers0_1__46type_for_const_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient31requires_reset_for_new_revisionB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers0_1__46type_for_const_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient8jar_kindB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers0_1__46type_for_const_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient8locationB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret ptr @634
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers1_1__47type_for_static_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient10debug_nameB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @635, i64 32 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers1_1__47type_for_static_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient14is_persistableB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers1_1__47type_for_static_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient16ingredient_indexB11_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.b = load i32, ptr %i.a, align 8, !noundef !11
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers1_1__47type_for_static_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient19remove_stale_outputB11_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 4 captures(none) dead_on_return %2, i32 range(i32 1, 0) %3, i32 %4) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers1_1__47type_for_static_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient31requires_reset_for_new_revisionB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers1_1__47type_for_static_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient8jar_kindB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers1_1__47type_for_static_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient8locationB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret ptr @636
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers2_1__51type_for_type_alias_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient10debug_nameB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @637, i64 36 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers2_1__51type_for_type_alias_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient14is_persistableB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers2_1__51type_for_type_alias_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient16ingredient_indexB11_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.b = load i32, ptr %i.a, align 8, !noundef !11
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers2_1__51type_for_type_alias_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient19remove_stale_outputB11_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 4 captures(none) dead_on_return %2, i32 range(i32 1, 0) %3, i32 %4) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers2_1__51type_for_type_alias_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient31requires_reset_for_new_revisionB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers2_1__51type_for_type_alias_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient8jar_kindB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers2_1__51type_for_type_alias_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient8locationB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret ptr @638
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers3_1__44impl_self_ty_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient10debug_nameB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @639, i64 29 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers3_1__44impl_self_ty_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient14is_persistableB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers3_1__44impl_self_ty_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient16ingredient_indexB11_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.b = load i32, ptr %i.a, align 8, !noundef !11
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers3_1__44impl_self_ty_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient19remove_stale_outputB11_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 4 captures(none) dead_on_return %2, i32 range(i32 1, 0) %3, i32 %4) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers3_1__44impl_self_ty_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient31requires_reset_for_new_revisionB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers3_1__44impl_self_ty_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient8jar_kindB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers3_1__44impl_self_ty_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient8locationB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret ptr @640
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers4_1__49const_param_types_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient10debug_nameB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @641, i64 34 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers4_1__49const_param_types_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient14is_persistableB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers4_1__49const_param_types_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient16ingredient_indexB11_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.b = load i32, ptr %i.a, align 8, !noundef !11
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers4_1__49const_param_types_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient19remove_stale_outputB11_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 4 captures(none) dead_on_return %2, i32 range(i32 1, 0) %3, i32 %4) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers4_1__49const_param_types_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient31requires_reset_for_new_revisionB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers4_1__49const_param_types_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient8jar_kindB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers4_1__49const_param_types_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient8locationB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret ptr @642
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers5_1__43field_types_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient10debug_nameB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @643, i64 28 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers5_1__43field_types_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient14is_persistableB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers5_1__43field_types_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient16ingredient_indexB11_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.b = load i32, ptr %i.a, align 8, !noundef !11
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers5_1__43field_types_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient19remove_stale_outputB11_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 4 captures(none) dead_on_return %2, i32 range(i32 1, 0) %3, i32 %4) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers5_1__43field_types_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient31requires_reset_for_new_revisionB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers5_1__43field_types_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient8jar_kindB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers5_1__43field_types_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient8locationB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret ptr @644
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__54resolve_type_param_assoc_type_shorthand_Configuration_ENtNtB6_10ingredient10Ingredient10debug_nameB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @347, i64 39 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__54resolve_type_param_assoc_type_shorthand_Configuration_ENtNtB6_10ingredient10Ingredient14is_persistableB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__54resolve_type_param_assoc_type_shorthand_Configuration_ENtNtB6_10ingredient10Ingredient16ingredient_indexB11_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.b = load i32, ptr %i.a, align 8, !noundef !11
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__54resolve_type_param_assoc_type_shorthand_Configuration_ENtNtB6_10ingredient10Ingredient19remove_stale_outputB11_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 4 captures(none) dead_on_return %2, i32 range(i32 1, 0) %3, i32 %4) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__54resolve_type_param_assoc_type_shorthand_Configuration_ENtNtB6_10ingredient10Ingredient31requires_reset_for_new_revisionB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__54resolve_type_param_assoc_type_shorthand_Configuration_ENtNtB6_10ingredient10Ingredient8jar_kindB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__54resolve_type_param_assoc_type_shorthand_Configuration_ENtNtB6_10ingredient10Ingredient8locationB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret ptr @614
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers7_1__49type_alias_bounds_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient10debug_nameB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @645, i64 34 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers7_1__49type_alias_bounds_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient14is_persistableB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers7_1__49type_alias_bounds_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient16ingredient_indexB11_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.b = load i32, ptr %i.a, align 8, !noundef !11
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers7_1__49type_alias_bounds_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient19remove_stale_outputB11_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 4 captures(none) dead_on_return %2, i32 range(i32 1, 0) %3, i32 %4) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers7_1__49type_alias_bounds_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient31requires_reset_for_new_revisionB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers7_1__49type_alias_bounds_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient8jar_kindB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers7_1__49type_alias_bounds_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient8locationB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret ptr @646
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers8_1__48generic_defaults_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient10debug_nameB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @647, i64 33 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers8_1__48generic_defaults_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient14is_persistableB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers8_1__48generic_defaults_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient16ingredient_indexB11_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.b = load i32, ptr %i.a, align 8, !noundef !11
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers8_1__48generic_defaults_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient19remove_stale_outputB11_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 4 captures(none) dead_on_return %2, i32 range(i32 1, 0) %3, i32 %4) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers8_1__48generic_defaults_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient31requires_reset_for_new_revisionB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers8_1__48generic_defaults_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient8jar_kindB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers8_1__48generic_defaults_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient8locationB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret ptr @648
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers9_1__55callable_item_signature_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient10debug_nameB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @649, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers9_1__55callable_item_signature_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient14is_persistableB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers9_1__55callable_item_signature_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient16ingredient_indexB11_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.b = load i32, ptr %i.a, align 8, !noundef !11
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers9_1__55callable_item_signature_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient19remove_stale_outputB11_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 4 captures(none) dead_on_return %2, i32 range(i32 1, 0) %3, i32 %4) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers9_1__55callable_item_signature_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient31requires_reset_for_new_revisionB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers9_1__55callable_item_signature_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient8jar_kindB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers9_1__55callable_item_signature_with_diagnostics_Configuration_ENtNtB6_10ingredient10Ingredient8locationB11_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret ptr @650
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB16_10ImplTraits22type_alias_impl_traits1__38type_alias_impl_traits__Configuration_ENtNtB6_10ingredient10Ingredient10debug_nameB18_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @651, i64 35 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB16_10ImplTraits22type_alias_impl_traits1__38type_alias_impl_traits__Configuration_ENtNtB6_10ingredient10Ingredient14is_persistableB18_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB16_10ImplTraits22type_alias_impl_traits1__38type_alias_impl_traits__Configuration_ENtNtB6_10ingredient10Ingredient16ingredient_indexB18_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.b = load i32, ptr %i.a, align 8, !noundef !11
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB16_10ImplTraits22type_alias_impl_traits1__38type_alias_impl_traits__Configuration_ENtNtB6_10ingredient10Ingredient19remove_stale_outputB18_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 4 captures(none) dead_on_return %2, i32 range(i32 1, 0) %3, i32 %4) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB16_10ImplTraits22type_alias_impl_traits1__38type_alias_impl_traits__Configuration_ENtNtB6_10ingredient10Ingredient31requires_reset_for_new_revisionB18_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB16_10ImplTraits22type_alias_impl_traits1__38type_alias_impl_traits__Configuration_ENtNtB6_10ingredient10Ingredient8jar_kindB18_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB16_10ImplTraits22type_alias_impl_traits1__38type_alias_impl_traits__Configuration_ENtNtB6_10ingredient10Ingredient8locationB18_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret ptr @652
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB16_10ImplTraits23return_type_impl_traits1__39return_type_impl_traits__Configuration_ENtNtB6_10ingredient10Ingredient10debug_nameB18_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @653, i64 36 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB16_10ImplTraits23return_type_impl_traits1__39return_type_impl_traits__Configuration_ENtNtB6_10ingredient10Ingredient14is_persistableB18_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB16_10ImplTraits23return_type_impl_traits1__39return_type_impl_traits__Configuration_ENtNtB6_10ingredient10Ingredient16ingredient_indexB18_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.b = load i32, ptr %i.a, align 8, !noundef !11
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB16_10ImplTraits23return_type_impl_traits1__39return_type_impl_traits__Configuration_ENtNtB6_10ingredient10Ingredient19remove_stale_outputB18_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 4 captures(none) dead_on_return %2, i32 range(i32 1, 0) %3, i32 %4) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB16_10ImplTraits23return_type_impl_traits1__39return_type_impl_traits__Configuration_ENtNtB6_10ingredient10Ingredient31requires_reset_for_new_revisionB18_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB16_10ImplTraits23return_type_impl_traits1__39return_type_impl_traits__Configuration_ENtNtB6_10ingredient10Ingredient8jar_kindB18_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvMs12_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB16_10ImplTraits23return_type_impl_traits1__39return_type_impl_traits__Configuration_ENtNtB6_10ingredient10Ingredient8locationB18_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret ptr @654
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvMs1X_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB16_17GenericPredicates22query_with_diagnostics1__38query_with_diagnostics__Configuration_ENtNtB6_10ingredient10Ingredient10debug_nameB18_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @655, i64 42 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvMs1X_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB16_17GenericPredicates22query_with_diagnostics1__38query_with_diagnostics__Configuration_ENtNtB6_10ingredient10Ingredient14is_persistableB18_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvMs1X_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB16_17GenericPredicates22query_with_diagnostics1__38query_with_diagnostics__Configuration_ENtNtB6_10ingredient10Ingredient16ingredient_indexB18_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.b = load i32, ptr %i.a, align 8, !noundef !11
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvMs1X_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB16_17GenericPredicates22query_with_diagnostics1__38query_with_diagnostics__Configuration_ENtNtB6_10ingredient10Ingredient19remove_stale_outputB18_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 4 captures(none) dead_on_return %2, i32 range(i32 1, 0) %3, i32 %4) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvMs1X_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB16_17GenericPredicates22query_with_diagnostics1__38query_with_diagnostics__Configuration_ENtNtB6_10ingredient10Ingredient31requires_reset_for_new_revisionB18_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvMs1X_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB16_17GenericPredicates22query_with_diagnostics1__38query_with_diagnostics__Configuration_ENtNtB6_10ingredient10Ingredient8jar_kindB18_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvMs1X_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB16_17GenericPredicates22query_with_diagnostics1__38query_with_diagnostics__Configuration_ENtNtB6_10ingredient10Ingredient8locationB18_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret ptr @656
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvMs8_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB15_15SupertraitsInfo5query1__31supertraits_info_Configuration_ENtNtB6_10ingredient10Ingredient10debug_nameB17_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @657, i64 16 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvMs8_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB15_15SupertraitsInfo5query1__31supertraits_info_Configuration_ENtNtB6_10ingredient10Ingredient14is_persistableB17_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvMs8_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB15_15SupertraitsInfo5query1__31supertraits_info_Configuration_ENtNtB6_10ingredient10Ingredient16ingredient_indexB17_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.b = load i32, ptr %i.a, align 8, !noundef !11
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvMs8_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB15_15SupertraitsInfo5query1__31supertraits_info_Configuration_ENtNtB6_10ingredient10Ingredient19remove_stale_outputB17_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 4 captures(none) dead_on_return %2, i32 range(i32 1, 0) %3, i32 %4) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvMs8_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB15_15SupertraitsInfo5query1__31supertraits_info_Configuration_ENtNtB6_10ingredient10Ingredient31requires_reset_for_new_revisionB17_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvMs8_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB15_15SupertraitsInfo5query1__31supertraits_info_Configuration_ENtNtB6_10ingredient10Ingredient8jar_kindB17_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvMs8_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB15_15SupertraitsInfo5query1__31supertraits_info_Configuration_ENtNtB6_10ingredient10Ingredient8locationB17_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret ptr @658
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvNtCs8K4cjrcxBsw_6hir_ty5lower17trait_environment1__38trait_environment_query_Configuration_ENtNtB6_10ingredient10Ingredient10debug_nameB13_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @659, i64 23 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvNtCs8K4cjrcxBsw_6hir_ty5lower17trait_environment1__38trait_environment_query_Configuration_ENtNtB6_10ingredient10Ingredient14is_persistableB13_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvNtCs8K4cjrcxBsw_6hir_ty5lower17trait_environment1__38trait_environment_query_Configuration_ENtNtB6_10ingredient10Ingredient16ingredient_indexB13_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.b = load i32, ptr %i.a, align 8, !noundef !11
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvNtCs8K4cjrcxBsw_6hir_ty5lower17trait_environment1__38trait_environment_query_Configuration_ENtNtB6_10ingredient10Ingredient19remove_stale_outputB13_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 4 captures(none) dead_on_return %2, i32 range(i32 1, 0) %3, i32 %4) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvNtCs8K4cjrcxBsw_6hir_ty5lower17trait_environment1__38trait_environment_query_Configuration_ENtNtB6_10ingredient10Ingredient31requires_reset_for_new_revisionB13_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvNtCs8K4cjrcxBsw_6hir_ty5lower17trait_environment1__38trait_environment_query_Configuration_ENtNtB6_10ingredient10Ingredient8jar_kindB13_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvNtCs8K4cjrcxBsw_6hir_ty5lower17trait_environment1__38trait_environment_query_Configuration_ENtNtB6_10ingredient10Ingredient8locationB13_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret ptr @660
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvNtCs8K4cjrcxBsw_6hir_ty6upvars16upvars_mentioned1__41signature_upvars_mentioned_Configuration_ENtNtB6_10ingredient10Ingredient10debug_nameB13_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @661, i64 26 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvNtCs8K4cjrcxBsw_6hir_ty6upvars16upvars_mentioned1__41signature_upvars_mentioned_Configuration_ENtNtB6_10ingredient10Ingredient14is_persistableB13_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvNtCs8K4cjrcxBsw_6hir_ty6upvars16upvars_mentioned1__41signature_upvars_mentioned_Configuration_ENtNtB6_10ingredient10Ingredient16ingredient_indexB13_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.b = load i32, ptr %i.a, align 8, !noundef !11
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvNtCs8K4cjrcxBsw_6hir_ty6upvars16upvars_mentioned1__41signature_upvars_mentioned_Configuration_ENtNtB6_10ingredient10Ingredient19remove_stale_outputB13_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 4 captures(none) dead_on_return %2, i32 range(i32 1, 0) %3, i32 %4) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvNtCs8K4cjrcxBsw_6hir_ty6upvars16upvars_mentioned1__41signature_upvars_mentioned_Configuration_ENtNtB6_10ingredient10Ingredient31requires_reset_for_new_revisionB13_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvNtCs8K4cjrcxBsw_6hir_ty6upvars16upvars_mentioned1__41signature_upvars_mentioned_Configuration_ENtNtB6_10ingredient10Ingredient8jar_kindB13_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvNtCs8K4cjrcxBsw_6hir_ty6upvars16upvars_mentioned1__41signature_upvars_mentioned_Configuration_ENtNtB6_10ingredient10Ingredient8locationB13_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret ptr @663
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvNtCs8K4cjrcxBsw_6hir_ty6upvars16upvars_mentioneds0_1__46variant_fields_upvars_mentioned_Configuration_ENtNtB6_10ingredient10Ingredient10debug_nameB13_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @664, i64 31 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvNtCs8K4cjrcxBsw_6hir_ty6upvars16upvars_mentioneds0_1__46variant_fields_upvars_mentioned_Configuration_ENtNtB6_10ingredient10Ingredient14is_persistableB13_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvNtCs8K4cjrcxBsw_6hir_ty6upvars16upvars_mentioneds0_1__46variant_fields_upvars_mentioned_Configuration_ENtNtB6_10ingredient10Ingredient16ingredient_indexB13_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.b = load i32, ptr %i.a, align 8, !noundef !11
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvNtCs8K4cjrcxBsw_6hir_ty6upvars16upvars_mentioneds0_1__46variant_fields_upvars_mentioned_Configuration_ENtNtB6_10ingredient10Ingredient19remove_stale_outputB13_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 4 captures(none) dead_on_return %2, i32 range(i32 1, 0) %3, i32 %4) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvNtCs8K4cjrcxBsw_6hir_ty6upvars16upvars_mentioneds0_1__46variant_fields_upvars_mentioned_Configuration_ENtNtB6_10ingredient10Ingredient31requires_reset_for_new_revisionB13_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvNtCs8K4cjrcxBsw_6hir_ty6upvars16upvars_mentioneds0_1__46variant_fields_upvars_mentioned_Configuration_ENtNtB6_10ingredient10Ingredient8jar_kindB13_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvNtCs8K4cjrcxBsw_6hir_ty6upvars16upvars_mentioneds0_1__46variant_fields_upvars_mentioned_Configuration_ENtNtB6_10ingredient10Ingredient8locationB13_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret ptr @665
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvNtCs8K4cjrcxBsw_6hir_ty6upvars16upvars_mentioneds_1__36body_upvars_mentioned_Configuration_ENtNtB6_10ingredient10Ingredient10debug_nameB13_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @666, i64 21 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvNtCs8K4cjrcxBsw_6hir_ty6upvars16upvars_mentioneds_1__36body_upvars_mentioned_Configuration_ENtNtB6_10ingredient10Ingredient14is_persistableB13_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvNtCs8K4cjrcxBsw_6hir_ty6upvars16upvars_mentioneds_1__36body_upvars_mentioned_Configuration_ENtNtB6_10ingredient10Ingredient16ingredient_indexB13_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.b = load i32, ptr %i.a, align 8, !noundef !11
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvNtCs8K4cjrcxBsw_6hir_ty6upvars16upvars_mentioneds_1__36body_upvars_mentioned_Configuration_ENtNtB6_10ingredient10Ingredient19remove_stale_outputB13_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 4 captures(none) dead_on_return %2, i32 range(i32 1, 0) %3, i32 %4) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvNtCs8K4cjrcxBsw_6hir_ty6upvars16upvars_mentioneds_1__36body_upvars_mentioned_Configuration_ENtNtB6_10ingredient10Ingredient31requires_reset_for_new_revisionB13_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvNtCs8K4cjrcxBsw_6hir_ty6upvars16upvars_mentioneds_1__36body_upvars_mentioned_Configuration_ENtNtB6_10ingredient10Ingredient8jar_kindB13_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvNtCs8K4cjrcxBsw_6hir_ty6upvars16upvars_mentioneds_1__36body_upvars_mentioned_Configuration_ENtNtB6_10ingredient10Ingredient8locationB13_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret ptr @667
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_3map3MapIB14_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12unnormalizedINtB3a_12UnnormalizedNtNtB2e_8interner10DbInternerB2a_E3newENvB39_13skip_norm_wipEIB14_INtNtB6_6filter6FilterIB14_INtNtB6_9enumerate9EnumerateIB1L_NtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB7x_5ArenaB6m_E4iter0ENCNvNtB2g_14builtin_derive23simple_trait_predicates0ENCB8l_s_0EEINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterB2a_EENtNtNtB8_6traits8iterator8Iterator4nextB2g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 4                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16769)
  %i.g = load i64, ptr %0, align 8, !range !23, !alias.scope !16769, !noundef !11
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16770)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16771)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !16772, !noundef !11
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef ptr @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENtNtNtB8_6traits8iterator8Iterator4nextB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i) ; 2 uses
  %.not3.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not3.i.i.i.i, label %bb.d, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3map3MapIB15_INtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12unnormalizedINtB3b_12UnnormalizedNtNtB2f_8interner10DbInternerB2b_E3newENvB3a_13skip_norm_wipEB2b_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2h_.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.i, align 8, !alias.scope !16772
  br label %bb.e

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3map3MapIB15_INtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12unnormalizedINtB3b_12UnnormalizedNtNtB2f_8interner10DbInternerB2b_E3newENvB3a_13skip_norm_wipEB2b_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2h_.exit.i.i.i: ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16773)
  br label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB4_3map3MapIB1h_INtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12unnormalizedINtB3n_12UnnormalizedNtNtB2r_8interner10DbInternerB2n_E3newENvB3m_13skip_norm_wipEIB1h_INtNtB4_6filter6FilterIB1h_INtNtB4_9enumerate9EnumerateIB1Y_NtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB7K_5ArenaB6z_E4iter0ENCNvNtB2t_14builtin_derive23simple_trait_predicates0ENCB8y_s_0EEB2n_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2t_.exit

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16774)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !16775, !noundef !11
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16776)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.o = tail call { i32, ptr } @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB30_5ArenaB1P_E4iter0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3M_4find5checkTINtB30_3IdxB1P_ERB1P_EQNCNvNtCs8K4cjrcxBsw_6hir_ty14builtin_derive23simple_trait_predicates0E0INtNtNtBc_3ops12control_flow11ControlFlowB4Q_EEB5k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.l, ptr noalias nofree noundef nonnull %i.n) ; 2 uses
  %i.p = extractvalue { i32, ptr } %i.o, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = extractvalue { i32, ptr } %i.o, 0        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16777)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !16778
  %i.r = load ptr, ptr %i.n, align 8, !alias.scope !16778, !nonnull !11, !align !21, !noundef !11 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.f, ptr noundef nonnull align 4 dereferenceable(12) %i.r, i64 12, i1 false), !noalias !16777
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 %i.q, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !16778
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !16778, !nonnull !11, !align !12, !noundef !11 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load i64, ptr %i.u, align 8, !noalias !16777, !noundef !11 ; 4 uses
  %i.w = icmp ult i64 %i.v, 576460752303423488
  tail call void @llvm.assume(i1 %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16778
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !noalias !16777, !nonnull !11, !noundef !11 ; 2 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.v
  store ptr %i.y, ptr %i.c, align 8, !noalias !16778
  %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.z, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !16778
  %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !16778
  %i.aa = call noundef range(i64 0, 1152921504606846976) i64 @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB2X_5ArenaB1P_E4iter0ENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldTINtB2X_3IdxB1P_ERB1P_EjjNCINvNvXs1_NtB8_6filterINtB5e_6FilterppEB3J_5count8to_usizeB4E_NCNvMs3_B1R_NtB1R_13GenericParams24len_late_bound_lifetimes0E0NCINvXsK_NtB3N_5accumjNtB7d_3Sum3sumIBO_BN_B53_EE0E0ECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 0), !noalias !16777 ; 2 uses
  %i.ab = icmp samesign ule i64 %i.aa, %i.v
  tail call void @llvm.assume(i1 %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16778
  %i.ac = sub nuw nsw i64 %i.v, %i.aa
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = add i32 %i.q, %i.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !16778
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !16778, !nonnull !11, !align !12, !noundef !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !noalias !16777
  %i.ah = call noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty9new_param(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.f, i32 noundef %i.ae), !noalias !16777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16778
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.aj = load i8, ptr %i.ai, align 4, !range !16779, !noalias !16777, !noundef !11
  %i.ak = tail call noundef nonnull ptr @_RNvNtCs8K4cjrcxBsw_6hir_ty14builtin_derive10trait_args(i8 noundef %i.aj, ptr noundef nonnull %i.ah), !noalias !16777
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !16778
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !16778, !nonnull !11, !align !21, !noundef !11
  %i.an = load <2 x i32>, ptr %i.am, align 4, !noalias !16777
  store <2 x i32> %i.an, ptr %i.d, align 8, !noalias !16778
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ak, ptr %i.ao, align 8, !noalias !16778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16780
  call void @_RNvMs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_9predicate8TraitRefB10_EE5dummyB16_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @716), !noalias !16781
  call void @llvm.experimental.noalias.scope.decl(metadata !16782)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !16782, !noalias !16783, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16784
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 16, i1 false), !noalias !16785
  %.sroa.6.8..sroa.42.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 0, ptr %.sroa.6.8..sroa.42.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !16786
  store i64 0, ptr %i.a, align 8, !noalias !16784
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.aq, ptr %i.ar, align 8, !noalias !16784
  %i.as = call noundef nonnull ptr @_RNvMs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB5_9Predicate3new(ptr noalias nofree nonnull readonly align 8 captures(none) poison, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a), !noalias !16787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !16778
  br label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB4_3map3MapIB1h_INtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12unnormalizedINtB3n_12UnnormalizedNtNtB2r_8interner10DbInternerB2n_E3newENvB3m_13skip_norm_wipEIB1h_INtNtB4_6filter6FilterIB1h_INtNtB4_9enumerate9EnumerateIB1Y_NtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB7K_5ArenaB6z_E4iter0ENCNvNtB2t_14builtin_derive23simple_trait_predicates0ENCB8y_s_0EEB2n_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2t_.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  store i64 0, ptr %0, align 8, !alias.scope !16769
  br label %bb.i

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB4_3map3MapIB1h_INtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12unnormalizedINtB3n_12UnnormalizedNtNtB2r_8interner10DbInternerB2n_E3newENvB3m_13skip_norm_wipEIB1h_INtNtB4_6filter6FilterIB1h_INtNtB4_9enumerate9EnumerateIB1Y_NtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB7K_5ArenaB6z_E4iter0ENCNvNtB2t_14builtin_derive23simple_trait_predicates0ENCB8y_s_0EEB2n_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2t_.exit: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3map3MapIB15_INtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12unnormalizedINtB3b_12UnnormalizedNtNtB2f_8interner10DbInternerB2b_E3newENvB3a_13skip_norm_wipEB2b_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2h_.exit.i.i.i, %bb.g
  %.sroa.0.0.i = phi ptr [ %i.k, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3map3MapIB15_INtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12unnormalizedINtB3b_12UnnormalizedNtNtB2f_8interner10DbInternerB2b_E3newENvB3a_13skip_norm_wipEB2b_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2h_.exit.i.i.i ], [ %i.as, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !16788)
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1T_5ChainIB2n_INtNtB1V_3map3MapIB2F_INtNtB1V_6copied6CopiedINtNtNtB5_5slice4iter4IterBI_EENvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12unnormalizedINtB3V_12UnnormalizedNtNtBM_8interner10DbInternerBI_E3newENvB3U_13skip_norm_wipEIB2F_INtNtB1V_6filter6FilterIB2F_INtNtB1V_9enumerate9EnumerateIB3o_NtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB8i_5ArenaB77_E4iter0ENCNvNtBO_14builtin_derive23simple_trait_predicates0ENCB96_s_0EEINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterBI_EENtNtNtB1X_6traits8iterator8Iterator4next0EBO_.exit

bb.i:                                             ; preds = %bb.a, %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16789)
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !16790, !noundef !11
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1T_5ChainIB2n_INtNtB1V_3map3MapIB2F_INtNtB1V_6copied6CopiedINtNtNtB5_5slice4iter4IterBI_EENvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12unnormalizedINtB3V_12UnnormalizedNtNtBM_8interner10DbInternerBI_E3newENvB3U_13skip_norm_wipEIB2F_INtNtB1V_6filter6FilterIB2F_INtNtB1V_9enumerate9EnumerateIB3o_NtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB8i_5ArenaB77_E4iter0ENCNvNtBO_14builtin_derive23simple_trait_predicates0ENCB96_s_0EEINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterBI_EENtNtNtB1X_6traits8iterator8Iterator4next0EBO_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16791)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !16792, !nonnull !11, !noundef !11
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !16792, !nonnull !11, !noundef !11 ; 3 uses
  %i.az = icmp eq ptr %i.ay, %i.aw
  br i1 %i.az, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1T_5ChainIB2n_INtNtB1V_3map3MapIB2F_INtNtB1V_6copied6CopiedINtNtNtB5_5slice4iter4IterBI_EENvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12unnormalizedINtB3V_12UnnormalizedNtNtBM_8interner10DbInternerBI_E3newENvB3U_13skip_norm_wipEIB2F_INtNtB1V_6filter6FilterIB2F_INtNtB1V_9enumerate9EnumerateIB3o_NtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB8i_5ArenaB77_E4iter0ENCNvNtBO_14builtin_derive23simple_trait_predicates0ENCB96_s_0EEINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterBI_EENtNtNtB1X_6traits8iterator8Iterator4next0EBO_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.ba, ptr %i.ax, align 8, !alias.scope !16792
  %i.bb = load ptr, ptr %i.ay, align 8, !noalias !16792, !nonnull !11, !noundef !11
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1T_5ChainIB2n_INtNtB1V_3map3MapIB2F_INtNtB1V_6copied6CopiedINtNtNtB5_5slice4iter4IterBI_EENvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12unnormalizedINtB3V_12UnnormalizedNtNtBM_8interner10DbInternerBI_E3newENvB3U_13skip_norm_wipEIB2F_INtNtB1V_6filter6FilterIB2F_INtNtB1V_9enumerate9EnumerateIB3o_NtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB8i_5ArenaB77_E4iter0ENCNvNtBO_14builtin_derive23simple_trait_predicates0ENCB96_s_0EEINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterBI_EENtNtNtB1X_6traits8iterator8Iterator4next0EBO_.exit

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1T_5ChainIB2n_INtNtB1V_3map3MapIB2F_INtNtB1V_6copied6CopiedINtNtNtB5_5slice4iter4IterBI_EENvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12unnormalizedINtB3V_12UnnormalizedNtNtBM_8interner10DbInternerBI_E3newENvB3U_13skip_norm_wipEIB2F_INtNtB1V_6filter6FilterIB2F_INtNtB1V_9enumerate9EnumerateIB3o_NtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB8i_5ArenaB77_E4iter0ENCNvNtBO_14builtin_derive23simple_trait_predicates0ENCB96_s_0EEINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterBI_EENtNtNtB1X_6traits8iterator8Iterator4next0EBO_.exit: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB4_3map3MapIB1h_INtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12unnormalizedINtB3n_12UnnormalizedNtNtB2r_8interner10DbInternerB2n_E3newENvB3m_13skip_norm_wipEIB1h_INtNtB4_6filter6FilterIB1h_INtNtB4_9enumerate9EnumerateIB1Y_NtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB7K_5ArenaB6z_E4iter0ENCNvNtB2t_14builtin_derive23simple_trait_predicates0ENCB8y_s_0EEB2n_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2t_.exit, %bb.i, %bb.j, %bb.k
  %.sroa.0.0.i1 = phi ptr [ %.sroa.0.0.i, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB4_3map3MapIB1h_INtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENvMNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12unnormalizedINtB3n_12UnnormalizedNtNtB2r_8interner10DbInternerB2n_E3newENvB3m_13skip_norm_wipEIB1h_INtNtB4_6filter6FilterIB1h_INtNtB4_9enumerate9EnumerateIB1Y_NtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB7K_5ArenaB6z_E4iter0ENCNvNtB2t_14builtin_derive23simple_trait_predicates0ENCB8y_s_0EEB2n_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2t_.exit ], [ null, %bb.i ], [ %i.bb, %bb.k ], [ null, %bb.j ]
  ret ptr %.sroa.0.0.i1
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsa_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB5_4TermNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 2 uses
end_hunk_2
