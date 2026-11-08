Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir-4fc055f1ab98df9a.hir.68581c9154c06fea-cgu.10?download=true
inline.NumInlined: 1122
inline.NumDeleted: 640
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCsileJQcQObtj_7hir_def10visibility19visibility_from_astNtB4_8StructIdECs8Xq8PKFYOms_3hir:bb.a
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %.body, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.ae, %bb.n ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs39E2wp1vf7X_6intern6intern8InternedNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEECs8Xq8PKFYOms_3hir.exit.i: ; preds = %bb.m, %bb.l
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathE10drop_innerCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def9item_tree13RawVisibilityECs8Xq8PKFYOms_3hir.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def9item_tree13RawVisibilityECs8Xq8PKFYOms_3hir.exit: ; preds = %.thread, %bb.k, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs39E2wp1vf7X_6intern6intern8InternedNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEECs8Xq8PKFYOms_3hir.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.p:                                             ; preds = %bb.g, %.body
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.q:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aj = load <2 x i32>, ptr %i.ah, align 4
  store <2 x i32> %i.aj, ptr %i.ai, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.n, ptr %i.ak, align 1
  store i8 0, ptr %0, align 4
  br label %bb.k

_RNvYNtCsileJQcQObtj_7hir_def8StructIdNtB4_9HasModule5krateCs8Xq8PKFYOms_3hir.exit: ; preds = %.noexc
  %i.al = extractvalue { i32, i32 } %i.u, 0
  %i.am = extractvalue { i32, i32 } %i.u, 1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.al, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.am, ptr %i.ao, align 4
  store i8 1, ptr %0, align 4
  br label %bb.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsileJQcQObtj_7hir_def8resolver18resolver_for_scopeNtB4_12GenericDefIdECs8Xq8PKFYOms_3hir(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %2, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %3, i32 noundef range(i32 0, 2) %4, i32 %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !279 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull readonly align 4 dereferenceable(12) %3, i64 12, i1 false)
  store i32 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXsk_NtCsileJQcQObtj_7hir_def8resolverNtB7_22ExpressionStoreOwnerIdNtB5_11HasResolver8resolver(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.b, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  %i.f = invoke noundef nonnull align 8 ptr @_RNvMsi_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ExprScopes15sig_expr_scopes(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @_RNvNtCsileJQcQObtj_7hir_def8resolver19resolver_for_scope_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.f, i32 noundef %4, i32 %5, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.g

bb.d:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def8resolver8ResolverECs8Xq8PKFYOms_3hir(ptr noalias nofree noundef align 8 dereferenceable(48) %i.d) #28
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsileJQcQObtj_7hir_def8resolver18resolver_for_scopeNtB4_13DefWithBodyIdECs8Xq8PKFYOms_3hir(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %2, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %3, i32 noundef range(i32 0, 2) %4, i32 %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !284 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull readonly align 4 dereferenceable(12) %3, i64 12, i1 false)
  store i32 1, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXsk_NtCsileJQcQObtj_7hir_def8resolverNtB7_22ExpressionStoreOwnerIdNtB5_11HasResolver8resolver(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.b, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !285
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  %i.f = invoke noundef nonnull align 8 ptr @_RNvMsi_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ExprScopes16body_expr_scopes(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @_RNvNtCsileJQcQObtj_7hir_def8resolver19resolver_for_scope_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.f, i32 noundef %4, i32 %5, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.g

bb.d:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def8resolver8ResolverECs8Xq8PKFYOms_3hir(ptr noalias nofree noundef align 8 dereferenceable(48) %i.d) #28
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsileJQcQObtj_7hir_def8resolver18resolver_for_scopeNtB4_9VariantIdECs8Xq8PKFYOms_3hir(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %2, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %3, i32 noundef range(i32 0, 2) %4, i32 %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !289 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull readonly align 4 dereferenceable(12) %3, i64 12, i1 false)
  store i32 2, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXsk_NtCsileJQcQObtj_7hir_def8resolverNtB7_22ExpressionStoreOwnerIdNtB5_11HasResolver8resolver(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.b, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  %i.f = invoke noundef nonnull align 8 ptr @_RNvMsi_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB5_10ExprScopes14variant_scopes(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @_RNvNtCsileJQcQObtj_7hir_def8resolver19resolver_for_scope_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.f, i32 noundef %4, i32 %5, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.g

bb.d:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def8resolver8ResolverECs8Xq8PKFYOms_3hir(ptr noalias nofree noundef align 8 dereferenceable(48) %i.d) #28
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2W_INtNtB7_6filter6FilterIB2W_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB2d_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB58_5ArenaB4z_E4iter0ENCNvMs3_B2d_NtB2d_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6T_14SingleGenerics14iter_lifetimes0ENCNvB6S_4iter0EEIB2W_IB2W_IB2W_IB3I_IB4a_NtB2d_20TypeOrConstParamDataEENCNvMsm_B58_IB5w_B8I_E4iter0ENCNvB6S_19iter_type_or_consts0ENCNvB6S_30iter_type_or_consts_as_generic0EEIB2W_INtNtB7_10filter_map9FilterMapIB3h_B3C_NCNvB5Y_18iter_late_bound_lt0ENCNvB6S_25iter_late_bound_lifetimes0EB83_EENtNtNtB9_6traits8iterator8Iterator4folduQNCINvB2Y_8map_foldB1w_TB1x_INtB1b_6OptionRB4z_EEuNCNvMNtNtB6V_11next_solver8genericsNtBeh_8Generics4iter0QNCINvNvXs_B3K_IB3I_pEBcK_4fold9enumerateBdL_uNCINvNvBcK_8for_each4callTjBdL_ENCINvMss_NtBej_11generic_argNtBgv_11GenericArgs12fill_builderNCINvBgr_22for_item_with_defaultsNCNvMsi_Cs8Xq8PKFYOms_3hirNtBi0_3Adt6layout0E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBgv_10GenericArgKja_EE0E0E0E0EBi0_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !300 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [120 x i8], align 8               ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i64, ptr %i.g, align 8, !range !22, !noundef !9
  %.not = icmp eq i64 %i.h, 3
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(120) %i.i, i64 120, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8, !noalias !302
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !23, !alias.scope !301, !noundef !9 ; 3 uses
  %.not.i = icmp eq i64 %i.k, -3
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !303
  %i.m = load <2 x i64>, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !302
  store ptr %i.d, ptr %i.c, align 8, !noalias !304
  %.not.i.i = icmp eq i64 %i.k, -2
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !304
  store ptr %i.c, ptr %i.b, align 8, !noalias !305
  %.not7.i.i.i = icmp eq i64 %i.k, -1
  br i1 %.not7.i.i.i, label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvB7a_22for_item_with_defaultsNCNvMsi_Cs8Xq8PKFYOms_3hirNtB8J_3Adt6layout0E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0EB8J_.exit.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !305
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store <2 x i64> %i.m, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !305
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQQQNCINvNtNtNtBb_4iter8adapters3map8map_foldTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefETB1x_INtNtBb_6option6OptionRNtB2d_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB3T_8Generics4iter0QNCINvNvXs_NtBY_9enumerateINtB5a_9EnumeratepENtNtNtB10_6traits8iterator8Iterator4fold9enumerateB2U_uNCINvNvB5I_8for_each4callTjB2U_ENCINvMss_NtB3V_11generic_argNtB7g_11GenericArgs12fill_builderNCINvB7c_22for_item_with_defaultsNCNvMsi_Cs8Xq8PKFYOms_3hirNtB8L_3Adt6layout0E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7g_10GenericArgKja_EE0E0E0E0INtB7_5FnMutTuB1w_EE8call_mutB8L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !305
  br label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvB7a_22for_item_with_defaultsNCNvMsi_Cs8Xq8PKFYOms_3hirNtB8J_3Adt6layout0E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0EB8J_.exit.i.i

_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvB7a_22for_item_with_defaultsNCNvMsi_Cs8Xq8PKFYOms_3hirNtB8J_3Adt6layout0E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0EB8J_.exit.i.i: ; preds = %.lr.ph.split.us.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !304
  br label %bb.e

bb.e:                                             ; preds = %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvB7a_22for_item_with_defaultsNCNvMsi_Cs8Xq8PKFYOms_3hirNtB8J_3Adt6layout0E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0EB8J_.exit.i.i, %bb.c
  %.not2.i.i = icmp eq i32 %.sroa.3.0.copyload, -1
  br i1 %.not2.i.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvBbU_22for_item_with_defaultsNCNvMsi_Cs8Xq8PKFYOms_3hirNtBdt_3Adt6layout0E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0EBdt_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.c, align 8, !noalias !304, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3r_5ArenaB2j_E4iter0ENCNvMs3_B2l_NtB2l_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5c_14SingleGenerics14iter_lifetimes0ENCNvB5b_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQQQNCINvB6_8map_foldTNtB2p_14GenericParamIdNtB2l_19GenericParamDataRefETB7A_INtNtBc_6option6OptionRB2j_EEuNCNvMNtNtB5e_11next_solver8genericsNtB92_8Generics4iter0QNCINvNvXs_B1u_IB1s_pEB6B_4fold9enumerateB8o_uNCINvNvB6B_8for_each4callTjB8o_ENCINvMss_NtB94_11generic_argNtBbg_11GenericArgs12fill_builderNCINvBbc_22for_item_with_defaultsNCNvMsi_Cs8Xq8PKFYOms_3hirNtBcL_3Adt6layout0E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbg_10GenericArgKja_EE0E0E0E0EBcL_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvBbU_22for_item_with_defaultsNCNvMsi_Cs8Xq8PKFYOms_3hirNtBdt_3Adt6layout0E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0EBdt_.exit.i

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvBbU_22for_item_with_defaultsNCNvMsi_Cs8Xq8PKFYOms_3hirNtBdt_3Adt6layout0E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0EBdt_.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !302
  br label %bb.g

bb.g:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvBbU_22for_item_with_defaultsNCNvMsi_Cs8Xq8PKFYOms_3hirNtBdt_3Adt6layout0E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0EBdt_.exit.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i32, ptr %i.p, align 8, !range !25, !alias.scope !301, !noundef !9
  %.not2.i = icmp eq i32 %i.q, -1
  br i1 %.not2.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvBev_22for_item_with_defaultsNCNvMsi_Cs8Xq8PKFYOms_3hirNtBg4_3, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.d, align 8, !noalias !302, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB38_5ArenaB1X_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3Z_14SingleGenerics19iter_type_or_consts0ENCNvB3Y_30iter_type_or_consts_as_generic0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvB6_8map_foldTNtB23_14GenericParamIdNtB1Z_19GenericParamDataRefETB6S_INtNtBc_6option6OptionRNtB1Z_17LifetimeParamDataEEuNCNvMNtNtB41_11next_solver8genericsNtB8F_8Generics4iter0QNCINvNvXs_B18_IB16_pEB5U_4fold9enumerateB7G_uNCINvNvB5U_8for_each4callTjB7G_ENCINvMss_NtB8H_11generic_argNtBaT_11GenericArgs12fill_builderNCINvBaP_22for_item_with_defaultsNCNvMsi_Cs8Xq8PKFYOms_3hirNtBco_3Adt6layout0E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBaT_10GenericArgKja_EE0E0E0E0EBco_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvBev_22for_item_with_defaultsNCNvMsi_Cs8Xq8PKFYOms_3hirNtBg4_3

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvBev_22for_item_with_defaultsNCNvMsi_Cs8Xq8PKFYOms_3hirNtBg4_3: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.i:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvBev_22for_item_with_defaultsNCNvMsi_Cs8Xq8PKFYOms_3hirNtBg4_3, %bb.a
  %i.s = load i32, ptr %0, align 8, !range !25, !noundef !9
  %.not2 = icmp eq i32 %i.s, -1
  br i1 %.not2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.f, align 8, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3R_5ArenaB2J_E4iter0ENCNvMs3_B2L_NtB2L_13GenericParams18iter_late_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5B_14SingleGenerics25iter_late_bound_lifetimes0ENCNvB5A_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldTNtB2P_14GenericParamIdNtB2L_19GenericParamDataRefETB88_INtNtBc_6option6OptionRB2J_EEuNCNvMNtNtB5D_11next_solver8genericsNtB9A_8Generics4iter0QNCINvNvXs_B1U_IB1S_pEB7b_4fold9enumerateB8W_uNCINvNvB7b_8for_each4callTjB8W_ENCINvMss_NtB9C_11generic_argNtBbO_11GenericArgs12fill_builderNCINvBbK_22for_item_with_defaultsNCNvMsi_Cs8Xq8PKFYOms_3hirNtBdj_3Adt6layout0E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbO_10GenericArgKja_EE0E0E0E0EBdj_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2W_INtNtB7_6filter6FilterIB2W_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB2d_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB58_5ArenaB4z_E4iter0ENCNvMs3_B2d_NtB2d_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6T_14SingleGenerics14iter_lifetimes0ENCNvB6S_4iter0EEIB2W_IB2W_IB2W_IB3I_IB4a_NtB2d_20TypeOrConstParamDataEENCNvMsm_B58_IB5w_B8I_E4iter0ENCNvB6S_19iter_type_or_consts0ENCNvB6S_30iter_type_or_consts_as_generic0EEIB2W_INtNtB7_10filter_map9FilterMapIB3h_B3C_NCNvB5Y_18iter_late_bound_lt0ENCNvB6S_25iter_late_bound_lifetimes0EB83_EENtNtNtB9_6traits8iterator8Iterator4folduQNCINvB2Y_8map_foldB1w_TB1x_INtB1b_6OptionRB4z_EEuNCNvMNtNtB6V_11next_solver8genericsNtBeh_8Generics4iter0QNCINvNvXs_B3K_IB3I_pEBcK_4fold9enumerateBdL_uNCINvNvBcK_8for_each4callTjBdL_ENCINvMss_NtBej_11generic_argNtBgv_11GenericArgs12fill_builderNCINvBgr_22for_item_with_defaultsNCNvMsi_Cs8Xq8PKFYOms_3hirNtBi0_3Adt6layout0E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBgv_10GenericArgEE0E0E0E0EBi0_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !316 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [120 x i8], align 8               ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i64, ptr %i.g, align 8, !range !22, !noundef !9
  %.not = icmp eq i64 %i.h, 3
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(120) %i.i, i64 120, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8, !noalias !318
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !23, !alias.scope !317, !noundef !9 ; 3 uses
  %.not.i = icmp eq i64 %i.k, -3
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !319
  %i.m = load <2 x i64>, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !318
  store ptr %i.d, ptr %i.c, align 8, !noalias !320
  %.not.i.i = icmp eq i64 %i.k, -2
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !320
  store ptr %i.c, ptr %i.b, align 8, !noalias !321
  %.not7.i.i.i = icmp eq i64 %i.k, -1
  br i1 %.not7.i.i.i, label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvB7a_22for_item_with_defaultsNCNvMsi_Cs8Xq8PKFYOms_3hirNtB8J_3Adt6layout0E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB7e_10GenericArgEE0E0E0E0EB8J_.exit.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !321
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store <2 x i64> %i.m, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !321
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQQQNCINvNtNtNtBb_4iter8adapters3map8map_foldTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefETB1x_INtNtBb_6option6OptionRNtB2d_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB3T_8Generics4iter0QNCINvNvXs_NtBY_9enumerateINtB5a_9EnumeratepENtNtNtB10_6traits8iterator8Iterator4fold9enumerateB2U_uNCINvNvB5I_8for_each4callTjB2U_ENCINvMss_NtB3V_11generic_argNtB7g_11GenericArgs12fill_builderNCINvB7c_22for_item_with_defaultsNCNvMsi_Cs8Xq8PKFYOms_3hirNtB8L_3Adt6layout0E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB7g_10GenericArgEE0E0E0E0INtB7_5FnMutTuB1w_EE8call_mutB8L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !321
  br label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvB7a_22for_item_with_defaultsNCNvMsi_Cs8Xq8PKFYOms_3hirNtB8J_3Adt6layout0E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB7e_10GenericArgEE0E0E0E0EB8J_.exit.i.i

_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvB7a_22for_item_with_defaultsNCNvMsi_Cs8Xq8PKFYOms_3hirNtB8J_3Adt6layout0E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB7e_10GenericArgEE0E0E0E0EB8J_.exit.i.i: ; preds = %.lr.ph.split.us.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !320
  br label %bb.e

bb.e:                                             ; preds = %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvB7a_22for_item_with_defaultsNCNvMsi_Cs8Xq8PKFYOms_3hirNtB8J_3Adt6layout0E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB7e_10GenericArgEE0E0E0E0EB8J_.exit.i.i, %bb.c
  %.not2.i.i = icmp eq i32 %.sroa.3.0.copyload, -1
  br i1 %.not2.i.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvBbU_22for_item_with_defaultsNCNvMsi_Cs8Xq8PKFYOms_3hirNtBdt_3Adt6layout0E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbY_10GenericArgEE0E0E0E0EBdt_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.c, align 8, !noalias !320, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3r_5ArenaB2j_E4iter0ENCNvMs3_B2l_NtB2l_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5c_14SingleGenerics14iter_lifetimes0ENCNvB5b_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQQQNCINvB6_8map_foldTNtB2p_14GenericParamIdNtB2l_19GenericParamDataRefETB7A_INtNtBc_6option6OptionRB2j_EEuNCNvMNtNtB5e_11next_solver8genericsNtB92_8Generics4iter0QNCINvNvXs_B1u_IB1s_pEB6B_4fold9enumerateB8o_uNCINvNvB6B_8for_each4callTjB8o_ENCINvMss_NtB94_11generic_argNtBbg_11GenericArgs12fill_builderNCINvBbc_22for_item_with_defaultsNCNvMsi_Cs8Xq8PKFYOms_3hirNtBcL_3Adt6layout0E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbg_10GenericArgEE0E0E0E0EBcL_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvBbU_22for_item_with_defaultsNCNvMsi_Cs8Xq8PKFYOms_3hirNtBdt_3Adt6layout0E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbY_10GenericArgEE0E0E0E0EBdt_.exit.i

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvBbU_22for_item_with_defaultsNCNvMsi_Cs8Xq8PKFYOms_3hirNtBdt_3Adt6layout0E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbY_10GenericArgEE0E0E0E0EBdt_.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !318
  br label %bb.g

bb.g:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvBbU_22for_item_with_defaultsNCNvMsi_Cs8Xq8PKFYOms_3hirNtBdt_3Adt6layout0E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbY_10GenericArgEE0E0E0E0EBdt_.exit.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i32, ptr %i.p, align 8, !range !25, !alias.scope !317, !noundef !9
  %.not2.i = icmp eq i32 %i.q, -1
  br i1 %.not2.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvBev_22for_item_with_defaultsNCNvMsi_Cs8Xq8PKFYOms_3hirNtBg4_3, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.d, align 8, !noalias !318, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB38_5ArenaB1X_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3Z_14SingleGenerics19iter_type_or_consts0ENCNvB3Y_30iter_type_or_consts_as_generic0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvB6_8map_foldTNtB23_14GenericParamIdNtB1Z_19GenericParamDataRefETB6S_INtNtBc_6option6OptionRNtB1Z_17LifetimeParamDataEEuNCNvMNtNtB41_11next_solver8genericsNtB8F_8Generics4iter0QNCINvNvXs_B18_IB16_pEB5U_4fold9enumerateB7G_uNCINvNvB5U_8for_each4callTjB7G_ENCINvMss_NtB8H_11generic_argNtBaT_11GenericArgs12fill_builderNCINvBaP_22for_item_with_defaultsNCNvMsi_Cs8Xq8PKFYOms_3hirNtBco_3Adt6layout0E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBaT_10GenericArgEE0E0E0E0EBco_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvBev_22for_item_with_defaultsNCNvMsi_Cs8Xq8PKFYOms_3hirNtBg4_3

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvBev_22for_item_with_defaultsNCNvMsi_Cs8Xq8PKFYOms_3hirNtBg4_3: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.i:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvBev_22for_item_with_defaultsNCNvMsi_Cs8Xq8PKFYOms_3hirNtBg4_3, %bb.a
  %i.s = load i32, ptr %0, align 8, !range !25, !noundef !9
  %.not2 = icmp eq i32 %i.s, -1
  br i1 %.not2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.f, align 8, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3R_5ArenaB2J_E4iter0ENCNvMs3_B2L_NtB2L_13GenericParams18iter_late_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5B_14SingleGenerics25iter_late_bound_lifetimes0ENCNvB5A_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldTNtB2P_14GenericParamIdNtB2L_19GenericParamDataRefETB88_INtNtBc_6option6OptionRB2J_EEuNCNvMNtNtB5D_11next_solver8genericsNtB9A_8Generics4iter0QNCINvNvXs_B1U_IB1S_pEB7b_4fold9enumerateB8W_uNCINvNvB7b_8for_each4callTjB8W_ENCINvMss_NtB9C_11generic_argNtBbO_11GenericArgs12fill_builderNCINvBbK_22for_item_with_defaultsNCNvMsi_Cs8Xq8PKFYOms_3hirNtBdj_3Adt6layout0E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbO_10GenericArgEE0E0E0E0EBdj_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2W_INtNtB7_6filter6FilterIB2W_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB2d_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB58_5ArenaB4z_E4iter0ENCNvMs3_B2d_NtB2d_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6T_14SingleGenerics14iter_lifetimes0ENCNvB6S_4iter0EEIB2W_IB2W_IB2W_IB3I_IB4a_NtB2d_20TypeOrConstParamDataEENCNvMsm_B58_IB5w_B8I_E4iter0ENCNvB6S_19iter_type_or_consts0ENCNvB6S_30iter_type_or_consts_as_generic0EEIB2W_INtNtB7_10filter_map9FilterMapIB3h_B3C_NCNvB5Y_18iter_late_bound_lt0ENCNvB6S_25iter_late_bound_lifetimes0EB83_EENtNtNtB9_6traits8iterator8Iterator4folduQNCINvB2Y_8map_foldB1w_TB1x_INtB1b_6OptionRB4z_EEuNCNvMNtNtB6V_11next_solver8genericsNtBeh_8Generics4iter0QNCINvNvXs_B3K_IB3I_pEBcK_4fold9enumerateBdL_uNCINvNvBcK_8for_each4callTjBdL_ENCINvMss_NtBej_11generic_argNtBgv_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysIBP_INtCs83ee1IJTiSq_6either6EitherIB2W_IBaX_INtNtB7_6copied6CopiedIB4a_NtBgv_10GenericArgEENCNvBgr_5types0ENCNvMs1x_Bhq_NtBhq_4Type14type_arguments0EIBia_IB2W_IBiP_IB4a_NtNtBej_2ty2TyEENCBjR_s_0EINtNtNtB9_7sources5empty5EmptyBk2_EEEINtNtB7_6cloned6ClonedIB4a_Bk2_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBjf_Kja_EE0E0E0E0EBhq_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !332 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [120 x i8], align 8               ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i64, ptr %i.g, align 8, !range !22, !noundef !9
  %.not = icmp eq i64 %i.h, 3
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(120) %i.i, i64 120, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8, !noalias !334
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !23, !alias.scope !333, !noundef !9 ; 3 uses
  %.not.i = icmp eq i64 %i.k, -3
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !335
  %i.m = load <2 x i64>, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !334
  store ptr %i.d, ptr %i.c, align 8, !noalias !336
  %.not.i.i = icmp eq i64 %i.k, -2
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !336
  store ptr %i.c, ptr %i.b, align 8, !noalias !337
  %.not7.i.i.i = icmp eq i64 %i.k, -1
  br i1 %.not7.i.i.i, label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB31_5chain5ChainINtCs83ee1IJTiSq_6either6EitherINtB2Z_3MapINtNtB31_10filter_map9FilterMapINtNtB31_6copied6CopiedINtNtNtB8_5slice4iter4IterNtB7e_10GenericArgEENCNvB7a_5types0ENCNvMs1x_B89_NtB89_4Type14type_arguments0EIB9a_IB9F_IBal_IBaI_NtNtB4n_2ty2TyEENCBbJ_s_0EINtNtNtB2b_7sources5empty5EmptyBbU_EEEINtNtB31_6cloned6ClonedIBaI_BbU_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBb7_Kja_EE0E0E0E0EB89_.exit.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !337
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store <2 x i64> %i.m, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !337
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQQQNCINvNtNtNtBb_4iter8adapters3map8map_foldTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefETB1x_INtNtBb_6option6OptionRNtB2d_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB3T_8Generics4iter0QNCINvNvXs_NtBY_9enumerateINtB5a_9EnumeratepENtNtNtB10_6traits8iterator8Iterator4fold9enumerateB2U_uNCINvNvB5I_8for_each4callTjB2U_ENCINvMss_NtB3V_11generic_argNtB7g_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtBY_5chain5ChainINtCs83ee1IJTiSq_6either6EitherINtBW_3MapINtNtBY_10filter_map9FilterMapINtNtBY_6copied6CopiedINtNtNtBb_5slice4iter4IterNtB7g_10GenericArgEENCNvB7c_5types0ENCNvMs1x_B8b_NtB8b_4Type14type_arguments0EIB9b_IB9G_IBak_IBaG_NtNtB3V_2ty2TyEENCBbH_s_0EINtNtNtB10_7sources5empty5EmptyBbS_EEEINtNtBY_6cloned6ClonedIBaG_BbS_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBb5_Kja_EE0E0E0E0INtB7_5FnMutTuB1w_EE8call_mutB8b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !337
  br label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB31_5chain5ChainINtCs83ee1IJTiSq_6either6EitherINtB2Z_3MapINtNtB31_10filter_map9FilterMapINtNtB31_6copied6CopiedINtNtNtB8_5slice4iter4IterNtB7e_10GenericArgEENCNvB7a_5types0ENCNvMs1x_B89_NtB89_4Type14type_arguments0EIB9a_IB9F_IBal_IBaI_NtNtB4n_2ty2TyEENCBbJ_s_0EINtNtNtB2b_7sources5empty5EmptyBbU_EEEINtNtB31_6cloned6ClonedIBaI_BbU_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBb7_Kja_EE0E0E0E0EB89_.exit.i.i

_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB31_5chain5ChainINtCs83ee1IJTiSq_6either6EitherINtB2Z_3MapINtNtB31_10filter_map9FilterMapINtNtB31_6copied6CopiedINtNtNtB8_5slice4iter4IterNtB7e_10GenericArgEENCNvB7a_5types0ENCNvMs1x_B89_NtB89_4Type14type_arguments0EIB9a_IB9F_IBal_IBaI_NtNtB4n_2ty2TyEENCBbJ_s_0EINtNtNtB2b_7sources5empty5EmptyBbU_EEEINtNtB31_6cloned6ClonedIBaI_BbU_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBb7_Kja_EE0E0E0E0EB89_.exit.i.i: ; preds = %.lr.ph.split.us.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !336
  br label %bb.e

bb.e:                                             ; preds = %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB31_5chain5ChainINtCs83ee1IJTiSq_6either6EitherINtB2Z_3MapINtNtB31_10filter_map9FilterMapINtNtB31_6copied6CopiedINtNtNtB8_5slice4iter4IterNtB7e_10GenericArgEENCNvB7a_5types0ENCNvMs1x_B89_NtB89_4Type14type_arguments0EIB9a_IB9F_IBal_IBaI_NtNtB4n_2ty2TyEENCBbJ_s_0EINtNtNtB2b_7sources5empty5EmptyBbU_EEEINtNtB31_6cloned6ClonedIBaI_BbU_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBb7_Kja_EE0E0E0E0EB89_.exit.i.i, %bb.c
  %.not2.i.i = icmp eq i32 %.sroa.3.0.copyload, -1
  br i1 %.not2.i.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysIBP_INtCs83ee1IJTiSq_6either6EitherIB2O_INtNtB7_10filter_map9FilterMapINtNtB7_6copied6CopiedIB42_NtBbY_10GenericArgEENCNvBbU_5types0ENCNvMs1x_BcT_NtBcT_4Type14type_arguments0EIBdD_I, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.c, align 8, !noalias !336, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3r_5ArenaB2j_E4iter0ENCNvMs3_B2l_NtB2l_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5c_14SingleGenerics14iter_lifetimes0ENCNvB5b_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQQQNCINvB6_8map_foldTNtB2p_14GenericParamIdNtB2l_19GenericParamDataRefETB7A_INtNtBc_6option6OptionRB2j_EEuNCNvMNtNtB5e_11next_solver8genericsNtB92_8Generics4iter0QNCINvNvXs_B1u_IB1s_pEB6B_4fold9enumerateB8o_uNCINvNvB6B_8for_each4callTjB8o_ENCINvMss_NtB94_11generic_argNtBbg_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB8_5chain5ChainINtCs83ee1IJTiSq_6either6EitherIBO_INtNtB8_10filter_map9FilterMapINtNtB8_6copied6CopiedIB1U_NtBbg_10GenericArgEENCNvBbc_5types0ENCNvMs1x_Bcb_NtBcb_4Type14type_arguments0EIBdb_IBO_IBee_IB1U_NtNtB94_2ty2TyEENCBfg_s_0EINtNtNtBa_7sources5empty5EmptyBfr_EEEINtNtB8_6cloned6ClonedIB1U_Bfr_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBeE_Kja_EE0E0E0E0EBcb_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysIBP_INtCs83ee1IJTiSq_6either6EitherIB2O_INtNtB7_10filter_map9FilterMapINtNtB7_6copied6CopiedIB42_NtBbY_10GenericArgEENCNvBbU_5types0ENCNvMs1x_BcT_NtBcT_4Type14type_arguments0EIBdD_I

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysIBP_INtCs83ee1IJTiSq_6either6EitherIB2O_INtNtB7_10filter_map9FilterMapINtNtB7_6copied6CopiedIB42_NtBbY_10GenericArgEENCNvBbU_5types0ENCNvMs1x_BcT_NtBcT_4Type14type_arguments0EIBdD_I: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !334
  br label %bb.g

bb.g:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysIBP_INtCs83ee1IJTiSq_6either6EitherIB2O_INtNtB7_10filter_map9FilterMapINtNtB7_6copied6CopiedIB42_NtBbY_10GenericArgEENCNvBbU_5types0ENCNvMs1x_BcT_NtBcT_4Type14type_arguments0EIBdD_I, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i32, ptr %i.p, align 8, !range !25, !alias.scope !333, !noundef !9
  %.not2.i = icmp eq i32 %i.q, -1
  br i1 %.not2.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysIBP_INtCs83ee1IJTiSq, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.d, align 8, !noalias !334, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB38_5ArenaB1X_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3Z_14SingleGenerics19iter_type_or_consts0ENCNvB3Y_30iter_type_or_consts_as_generic0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvB6_8map_foldTNtB23_14GenericParamIdNtB1Z_19GenericParamDataRefETB6S_INtNtBc_6option6OptionRNtB1Z_17LifetimeParamDataEEuNCNvMNtNtB41_11next_solver8genericsNtB8F_8Generics4iter0QNCINvNvXs_B18_IB16_pEB5U_4fold9enumerateB7G_uNCINvNvB5U_8for_each4callTjB7G_ENCINvMss_NtB8H_11generic_argNtBaT_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB8_5chain5ChainINtCs83ee1IJTiSq_6either6EitherIBO_INtNtB8_10filter_map9FilterMapINtNtB8_6copied6CopiedIB1y_NtBaT_10GenericArgEENCNvBaP_5types0ENCNvMs1x_BbO_NtBbO_4Type14type_arguments0EIBcO_IBO_IBdR_IB1y_NtNtB8H_2ty2TyEENCBeT_s_0EINtNtNtBa_7sources5empty5EmptyBf4_EEEINtNtB8_6cloned6ClonedIB1y_Bf4_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBeh_Kja_EE0E0E0E0EBbO_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysIBP_INtCs83ee1IJTiSq

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysIBP_INtCs83ee1IJTiSq: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.i:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysIBP_INtCs83ee1IJTiSq, %bb.a
  %i.s = load i32, ptr %0, align 8, !range !25, !noundef !9
  %.not2 = icmp eq i32 %i.s, -1
  br i1 %.not2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.f, align 8, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3R_5ArenaB2J_E4iter0ENCNvMs3_B2L_NtB2L_13GenericParams18iter_late_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5B_14SingleGenerics25iter_late_bound_lifetimes0ENCNvB5A_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldTNtB2P_14GenericParamIdNtB2L_19GenericParamDataRefETB88_INtNtBc_6option6OptionRB2J_EEuNCNvMNtNtB5D_11next_solver8genericsNtB9A_8Generics4iter0QNCINvNvXs_B1U_IB1S_pEB7b_4fold9enumerateB8W_uNCINvNvB7b_8for_each4callTjB8W_ENCINvMss_NtB9C_11generic_argNtBbO_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB8_5chain5ChainINtCs83ee1IJTiSq_6either6EitherIBO_IBY_INtNtB8_6copied6CopiedIB2k_NtBbO_10GenericArgEENCNvBbK_5types0ENCNvMs1x_BcJ_NtBcJ_4Type14type_arguments0EIBdJ_IBO_IBem_IB2k_NtNtB9C_2ty2TyEENCBfo_s_0EINtNtNtBa_7sources5empty5EmptyBfz_EEEINtNtB8_6cloned6ClonedIB2k_Bfz_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBeM_Kja_EE0E0E0E0EBcJ_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2W_INtNtB7_6filter6FilterIB2W_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB2d_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB58_5ArenaB4z_E4iter0ENCNvMs3_B2d_NtB2d_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6T_14SingleGenerics14iter_lifetimes0ENCNvB6S_4iter0EEIB2W_IB2W_IB2W_IB3I_IB4a_NtB2d_20TypeOrConstParamDataEENCNvMsm_B58_IB5w_B8I_E4iter0ENCNvB6S_19iter_type_or_consts0ENCNvB6S_30iter_type_or_consts_as_generic0EEIB2W_INtNtB7_10filter_map9FilterMapIB3h_B3C_NCNvB5Y_18iter_late_bound_lt0ENCNvB6S_25iter_late_bound_lifetimes0EB83_EENtNtNtB9_6traits8iterator8Iterator4folduQNCINvB2Y_8map_foldB1w_TB1x_INtB1b_6OptionRB4z_EEuNCNvMNtNtB6V_11next_solver8genericsNtBeh_8Generics4iter0QNCINvNvXs_B3K_IB3I_pEBcK_4fold9enumerateBdL_uNCINvNvBcK_8for_each4callTjBdL_ENCINvMss_NtBej_11generic_argNtBgv_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysIBP_INtCs83ee1IJTiSq_6either6EitherIB2W_IBaX_INtNtB7_6copied6CopiedIB4a_NtBgv_10GenericArgEENCNvBgr_5types0ENCNvMs1x_Bhq_NtBhq_4Type14type_arguments0EIBia_IB2W_IBiP_IB4a_NtNtBej_2ty2TyEENCBjR_s_0EINtNtNtB9_7sources5empty5EmptyBk2_EEEINtNtB7_6cloned6ClonedIB4a_Bk2_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBjf_EE0E0E0E0EBhq_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !348 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [120 x i8], align 8               ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i64, ptr %i.g, align 8, !range !22, !noundef !9
  %.not = icmp eq i64 %i.h, 3
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(120) %i.i, i64 120, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8, !noalias !350
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !23, !alias.scope !349, !noundef !9 ; 3 uses
  %.not.i = icmp eq i64 %i.k, -3
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !351
  %i.m = load <2 x i64>, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !350
  store ptr %i.d, ptr %i.c, align 8, !noalias !352
  %.not.i.i = icmp eq i64 %i.k, -2
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !352
  store ptr %i.c, ptr %i.b, align 8, !noalias !353
  %.not7.i.i.i = icmp eq i64 %i.k, -1
  br i1 %.not7.i.i.i, label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB31_5chain5ChainINtCs83ee1IJTiSq_6either6EitherINtB2Z_3MapINtNtB31_10filter_map9FilterMapINtNtB31_6copied6CopiedINtNtNtB8_5slice4iter4IterNtB7e_10GenericArgEENCNvB7a_5types0ENCNvMs1x_B89_NtB89_4Type14type_arguments0EIB9a_IB9F_IBal_IBaI_NtNtB4n_2ty2TyEENCBbJ_s_0EINtNtNtB2b_7sources5empty5EmptyBbU_EEEINtNtB31_6cloned6ClonedIBaI_BbU_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBb7_EE0E0E0E0EB89_.exit.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !353
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store <2 x i64> %i.m, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !353
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQQQNCINvNtNtNtBb_4iter8adapters3map8map_foldTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefETB1x_INtNtBb_6option6OptionRNtB2d_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB3T_8Generics4iter0QNCINvNvXs_NtBY_9enumerateINtB5a_9EnumeratepENtNtNtB10_6traits8iterator8Iterator4fold9enumerateB2U_uNCINvNvB5I_8for_each4callTjB2U_ENCINvMss_NtB3V_11generic_argNtB7g_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtBY_5chain5ChainINtCs83ee1IJTiSq_6either6EitherINtBW_3MapINtNtBY_10filter_map9FilterMapINtNtBY_6copied6CopiedINtNtNtBb_5slice4iter4IterNtB7g_10GenericArgEENCNvB7c_5types0ENCNvMs1x_B8b_NtB8b_4Type14type_arguments0EIB9b_IB9G_IBak_IBaG_NtNtB3V_2ty2TyEENCBbH_s_0EINtNtNtB10_7sources5empty5EmptyBbS_EEEINtNtBY_6cloned6ClonedIBaG_BbS_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBb5_EE0E0E0E0INtB7_5FnMutTuB1w_EE8call_mutB8b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !353
  br label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB31_5chain5ChainINtCs83ee1IJTiSq_6either6EitherINtB2Z_3MapINtNtB31_10filter_map9FilterMapINtNtB31_6copied6CopiedINtNtNtB8_5slice4iter4IterNtB7e_10GenericArgEENCNvB7a_5types0ENCNvMs1x_B89_NtB89_4Type14type_arguments0EIB9a_IB9F_IBal_IBaI_NtNtB4n_2ty2TyEENCBbJ_s_0EINtNtNtB2b_7sources5empty5EmptyBbU_EEEINtNtB31_6cloned6ClonedIBaI_BbU_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBb7_EE0E0E0E0EB89_.exit.i.i

_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB31_5chain5ChainINtCs83ee1IJTiSq_6either6EitherINtB2Z_3MapINtNtB31_10filter_map9FilterMapINtNtB31_6copied6CopiedINtNtNtB8_5slice4iter4IterNtB7e_10GenericArgEENCNvB7a_5types0ENCNvMs1x_B89_NtB89_4Type14type_arguments0EIB9a_IB9F_IBal_IBaI_NtNtB4n_2ty2TyEENCBbJ_s_0EINtNtNtB2b_7sources5empty5EmptyBbU_EEEINtNtB31_6cloned6ClonedIBaI_BbU_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBb7_EE0E0E0E0EB89_.exit.i.i: ; preds = %.lr.ph.split.us.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !352
  br label %bb.e

bb.e:                                             ; preds = %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB31_5chain5ChainINtCs83ee1IJTiSq_6either6EitherINtB2Z_3MapINtNtB31_10filter_map9FilterMapINtNtB31_6copied6CopiedINtNtNtB8_5slice4iter4IterNtB7e_10GenericArgEENCNvB7a_5types0ENCNvMs1x_B89_NtB89_4Type14type_arguments0EIB9a_IB9F_IBal_IBaI_NtNtB4n_2ty2TyEENCBbJ_s_0EINtNtNtB2b_7sources5empty5EmptyBbU_EEEINtNtB31_6cloned6ClonedIBaI_BbU_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBb7_EE0E0E0E0EB89_.exit.i.i, %bb.c
  %.not2.i.i = icmp eq i32 %.sroa.3.0.copyload, -1
  br i1 %.not2.i.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysIBP_INtCs83ee1IJTiSq_6either6EitherIB2O_INtNtB7_10filter_map9FilterMapINtNtB7_6copied6CopiedIB42_NtBbY_10GenericArgEENCNvBbU_5types0ENCNvMs1x_BcT_NtBcT_4Type14type_arguments0EIBdD_I, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.c, align 8, !noalias !352, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3r_5ArenaB2j_E4iter0ENCNvMs3_B2l_NtB2l_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5c_14SingleGenerics14iter_lifetimes0ENCNvB5b_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQQQNCINvB6_8map_foldTNtB2p_14GenericParamIdNtB2l_19GenericParamDataRefETB7A_INtNtBc_6option6OptionRB2j_EEuNCNvMNtNtB5e_11next_solver8genericsNtB92_8Generics4iter0QNCINvNvXs_B1u_IB1s_pEB6B_4fold9enumerateB8o_uNCINvNvB6B_8for_each4callTjB8o_ENCINvMss_NtB94_11generic_argNtBbg_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB8_5chain5ChainINtCs83ee1IJTiSq_6either6EitherIBO_INtNtB8_10filter_map9FilterMapINtNtB8_6copied6CopiedIB1U_NtBbg_10GenericArgEENCNvBbc_5types0ENCNvMs1x_Bcb_NtBcb_4Type14type_arguments0EIBdb_IBO_IBee_IB1U_NtNtB94_2ty2TyEENCBfg_s_0EINtNtNtBa_7sources5empty5EmptyBfr_EEEINtNtB8_6cloned6ClonedIB1U_Bfr_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBeE_EE0E0E0E0EBcb_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysIBP_INtCs83ee1IJTiSq_6either6EitherIB2O_INtNtB7_10filter_map9FilterMapINtNtB7_6copied6CopiedIB42_NtBbY_10GenericArgEENCNvBbU_5types0ENCNvMs1x_BcT_NtBcT_4Type14type_arguments0EIBdD_I

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysIBP_INtCs83ee1IJTiSq_6either6EitherIB2O_INtNtB7_10filter_map9FilterMapINtNtB7_6copied6CopiedIB42_NtBbY_10GenericArgEENCNvBbU_5types0ENCNvMs1x_BcT_NtBcT_4Type14type_arguments0EIBdD_I: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !350
  br label %bb.g

bb.g:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysIBP_INtCs83ee1IJTiSq_6either6EitherIB2O_INtNtB7_10filter_map9FilterMapINtNtB7_6copied6CopiedIB42_NtBbY_10GenericArgEENCNvBbU_5types0ENCNvMs1x_BcT_NtBcT_4Type14type_arguments0EIBdD_I, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i32, ptr %i.p, align 8, !range !25, !alias.scope !349, !noundef !9
  %.not2.i = icmp eq i32 %i.q, -1
  br i1 %.not2.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysIBP_INtCs83ee1IJTiSq, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.d, align 8, !noalias !350, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB38_5ArenaB1X_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3Z_14SingleGenerics19iter_type_or_consts0ENCNvB3Y_30iter_type_or_consts_as_generic0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvB6_8map_foldTNtB23_14GenericParamIdNtB1Z_19GenericParamDataRefETB6S_INtNtBc_6option6OptionRNtB1Z_17LifetimeParamDataEEuNCNvMNtNtB41_11next_solver8genericsNtB8F_8Generics4iter0QNCINvNvXs_B18_IB16_pEB5U_4fold9enumerateB7G_uNCINvNvB5U_8for_each4callTjB7G_ENCINvMss_NtB8H_11generic_argNtBaT_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB8_5chain5ChainINtCs83ee1IJTiSq_6either6EitherIBO_INtNtB8_10filter_map9FilterMapINtNtB8_6copied6CopiedIB1y_NtBaT_10GenericArgEENCNvBaP_5types0ENCNvMs1x_BbO_NtBbO_4Type14type_arguments0EIBcO_IBO_IBdR_IB1y_NtNtB8H_2ty2TyEENCBeT_s_0EINtNtNtBa_7sources5empty5EmptyBf4_EEEINtNtB8_6cloned6ClonedIB1y_Bf4_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBeh_EE0E0E0E0EBbO_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysIBP_INtCs83ee1IJTiSq

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysIBP_INtCs83ee1IJTiSq: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.i:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysIBP_INtCs83ee1IJTiSq, %bb.a
  %i.s = load i32, ptr %0, align 8, !range !25, !noundef !9
  %.not2 = icmp eq i32 %i.s, -1
  br i1 %.not2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.f, align 8, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3R_5ArenaB2J_E4iter0ENCNvMs3_B2L_NtB2L_13GenericParams18iter_late_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5B_14SingleGenerics25iter_late_bound_lifetimes0ENCNvB5A_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldTNtB2P_14GenericParamIdNtB2L_19GenericParamDataRefETB88_INtNtBc_6option6OptionRB2J_EEuNCNvMNtNtB5D_11next_solver8genericsNtB9A_8Generics4iter0QNCINvNvXs_B1U_IB1S_pEB7b_4fold9enumerateB8W_uNCINvNvB7b_8for_each4callTjB8W_ENCINvMss_NtB9C_11generic_argNtBbO_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB8_5chain5ChainINtCs83ee1IJTiSq_6either6EitherIBO_IBY_INtNtB8_6copied6CopiedIB2k_NtBbO_10GenericArgEENCNvBbK_5types0ENCNvMs1x_BcJ_NtBcJ_4Type14type_arguments0EIBdJ_IBO_IBem_IB2k_NtNtB9C_2ty2TyEENCBfo_s_0EINtNtNtBa_7sources5empty5EmptyBfz_EEEINtNtB8_6cloned6ClonedIB2k_Bfz_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBeM_EE0E0E0E0EBcJ_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2W_INtNtB7_6filter6FilterIB2W_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB2d_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB58_5ArenaB4z_E4iter0ENCNvMs3_B2d_NtB2d_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6T_14SingleGenerics14iter_lifetimes0ENCNvB6S_4iter0EEIB2W_IB2W_IB2W_IB3I_IB4a_NtB2d_20TypeOrConstParamDataEENCNvMsm_B58_IB5w_B8I_E4iter0ENCNvB6S_19iter_type_or_consts0ENCNvB6S_30iter_type_or_consts_as_generic0EEIB2W_INtNtB7_10filter_map9FilterMapIB3h_B3C_NCNvB5Y_18iter_late_bound_lt0ENCNvB6S_25iter_late_bound_lifetimes0EB83_EENtNtNtB9_6traits8iterator8Iterator4folduQNCINvB2Y_8map_foldB1w_TB1x_INtB1b_6OptionRB4z_EEuNCNvMNtNtB6V_11next_solver8genericsNtBeh_8Generics4iter0QNCINvNvXs_B3K_IB3I_pEBcK_4fold9enumerateBdL_uNCINvNvBcK_8for_each4callTjBdL_ENCINvMss_NtBej_11generic_argNtBgv_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysIBP_INtNtNtB9_7sources4once4OnceRNtBhq_4TypeEIB4a_BiC_EEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBgv_10GenericArgKja_EE0E0E0E0EBhq_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !364 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [120 x i8], align 8               ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i64, ptr %i.g, align 8, !range !22, !noundef !9
  %.not = icmp eq i64 %i.h, 3
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(120) %i.i, i64 120, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8, !noalias !366
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !23, !alias.scope !365, !noundef !9 ; 3 uses
  %.not.i = icmp eq i64 %i.k, -3
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !367
  %i.m = load <2 x i64>, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !366
  store ptr %i.d, ptr %i.c, align 8, !noalias !368
  %.not.i.i = icmp eq i64 %i.k, -2
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !368
  store ptr %i.c, ptr %i.b, align 8, !noalias !369
  %.not7.i.i.i = icmp eq i64 %i.k, -1
  br i1 %.not7.i.i.i, label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB31_5chain5ChainINtNtNtB2b_7sources4once4OnceRNtB89_4TypeEINtNtNtB8_5slice4iter4IterB9D_EEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0EB89_.exit.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !369
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store <2 x i64> %i.m, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !369
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQQQNCINvNtNtNtBb_4iter8adapters3map8map_foldTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefETB1x_INtNtBb_6option6OptionRNtB2d_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB3T_8Generics4iter0QNCINvNvXs_NtBY_9enumerateINtB5a_9EnumeratepENtNtNtB10_6traits8iterator8Iterator4fold9enumerateB2U_uNCINvNvB5I_8for_each4callTjB2U_ENCINvMss_NtB3V_11generic_argNtB7g_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtBY_5chain5ChainINtNtNtB10_7sources4once4OnceRNtB8b_4TypeEINtNtNtBb_5slice4iter4IterB9E_EEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7g_10GenericArgKja_EE0E0E0E0INtB7_5FnMutTuB1w_EE8call_mutB8b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !369
  br label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB31_5chain5ChainINtNtNtB2b_7sources4once4OnceRNtB89_4TypeEINtNtNtB8_5slice4iter4IterB9D_EEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0EB89_.exit.i.i

_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB31_5chain5ChainINtNtNtB2b_7sources4once4OnceRNtB89_4TypeEINtNtNtB8_5slice4iter4IterB9D_EEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0EB89_.exit.i.i: ; preds = %.lr.ph.split.us.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !368
  br label %bb.e

bb.e:                                             ; preds = %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB31_5chain5ChainINtNtNtB2b_7sources4once4OnceRNtB89_4TypeEINtNtNtB8_5slice4iter4IterB9D_EEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0EB89_.exit.i.i, %bb.c
  %.not2.i.i = icmp eq i32 %.sroa.3.0.copyload, -1
  br i1 %.not2.i.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysIBP_INtNtNtB9_7sources4once4OnceRNtBcT_4TypeEIB42_Be5_EEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0EBcT_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.c, align 8, !noalias !368, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3r_5ArenaB2j_E4iter0ENCNvMs3_B2l_NtB2l_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5c_14SingleGenerics14iter_lifetimes0ENCNvB5b_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQQQNCINvB6_8map_foldTNtB2p_14GenericParamIdNtB2l_19GenericParamDataRefETB7A_INtNtBc_6option6OptionRB2j_EEuNCNvMNtNtB5e_11next_solver8genericsNtB92_8Generics4iter0QNCINvNvXs_B1u_IB1s_pEB6B_4fold9enumerateB8o_uNCINvNvB6B_8for_each4callTjB8o_ENCINvMss_NtB94_11generic_argNtBbg_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRNtBcb_4TypeEIB1U_BdD_EEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbg_10GenericArgKja_EE0E0E0E0EBcb_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysIBP_INtNtNtB9_7sources4once4OnceRNtBcT_4TypeEIB42_Be5_EEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0EBcT_.exit.i

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysIBP_INtNtNtB9_7sources4once4OnceRNtBcT_4TypeEIB42_Be5_EEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0EBcT_.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !366
  br label %bb.g

bb.g:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysIBP_INtNtNtB9_7sources4once4OnceRNtBcT_4TypeEIB42_Be5_EEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0EBcT_.exit.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i32, ptr %i.p, align 8, !range !25, !alias.scope !365, !noundef !9
  %.not2.i = icmp eq i32 %i.q, -1
  br i1 %.not2.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysIBP_INtNtNtB9_7sourc, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.d, align 8, !noalias !366, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB38_5ArenaB1X_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3Z_14SingleGenerics19iter_type_or_consts0ENCNvB3Y_30iter_type_or_consts_as_generic0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvB6_8map_foldTNtB23_14GenericParamIdNtB1Z_19GenericParamDataRefETB6S_INtNtBc_6option6OptionRNtB1Z_17LifetimeParamDataEEuNCNvMNtNtB41_11next_solver8genericsNtB8F_8Generics4iter0QNCINvNvXs_B18_IB16_pEB5U_4fold9enumerateB7G_uNCINvNvB5U_8for_each4callTjB7G_ENCINvMss_NtB8H_11generic_argNtBaT_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRNtBbO_4TypeEIB1y_Bdg_EEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBaT_10GenericArgKja_EE0E0E0E0EBbO_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysIBP_INtNtNtB9_7sourc

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysIBP_INtNtNtB9_7sourc: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.i:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysIBP_INtNtNtB9_7sourc, %bb.a
  %i.s = load i32, ptr %0, align 8, !range !25, !noundef !9
  %.not2 = icmp eq i32 %i.s, -1
  br i1 %.not2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.f, align 8, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3R_5ArenaB2J_E4iter0ENCNvMs3_B2L_NtB2L_13GenericParams18iter_late_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5B_14SingleGenerics25iter_late_bound_lifetimes0ENCNvB5A_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldTNtB2P_14GenericParamIdNtB2L_19GenericParamDataRefETB88_INtNtBc_6option6OptionRB2J_EEuNCNvMNtNtB5D_11next_solver8genericsNtB9A_8Generics4iter0QNCINvNvXs_B1U_IB1S_pEB7b_4fold9enumerateB8W_uNCINvNvB7b_8for_each4callTjB8W_ENCINvMss_NtB9C_11generic_argNtBbO_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRNtBcJ_4TypeEIB2k_Beb_EEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbO_10GenericArgKja_EE0E0E0E0EBcJ_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2W_INtNtB7_6filter6FilterIB2W_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB2d_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB58_5ArenaB4z_E4iter0ENCNvMs3_B2d_NtB2d_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6T_14SingleGenerics14iter_lifetimes0ENCNvB6S_4iter0EEIB2W_IB2W_IB2W_IB3I_IB4a_NtB2d_20TypeOrConstParamDataEENCNvMsm_B58_IB5w_B8I_E4iter0ENCNvB6S_19iter_type_or_consts0ENCNvB6S_30iter_type_or_consts_as_generic0EEIB2W_INtNtB7_10filter_map9FilterMapIB3h_B3C_NCNvB5Y_18iter_late_bound_lt0ENCNvB6S_25iter_late_bound_lifetimes0EB83_EENtNtNtB9_6traits8iterator8Iterator4folduQNCINvB2Y_8map_foldB1w_TB1x_INtB1b_6OptionRB4z_EEuNCNvMNtNtB6V_11next_solver8genericsNtBeh_8Generics4iter0QNCINvNvXs_B3K_IB3I_pEBcK_4fold9enumerateBdL_uNCINvNvBcK_8for_each4callTjBdL_ENCINvMss_NtBej_11generic_argNtBgv_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysIBP_INtNtNtB9_7sources4once4OnceRNtBhq_4TypeEIB4a_BiC_EEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBgv_10GenericArgEE0E0E0E0EBhq_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !380 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [120 x i8], align 8               ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i64, ptr %i.g, align 8, !range !22, !noundef !9
  %.not = icmp eq i64 %i.h, 3
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(120) %i.i, i64 120, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8, !noalias !382
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !23, !alias.scope !381, !noundef !9 ; 3 uses
  %.not.i = icmp eq i64 %i.k, -3
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !383
  %i.m = load <2 x i64>, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !382
  store ptr %i.d, ptr %i.c, align 8, !noalias !384
  %.not.i.i = icmp eq i64 %i.k, -2
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !384
  store ptr %i.c, ptr %i.b, align 8, !noalias !385
  %.not7.i.i.i = icmp eq i64 %i.k, -1
  br i1 %.not7.i.i.i, label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB31_5chain5ChainINtNtNtB2b_7sources4once4OnceRNtB89_4TypeEINtNtNtB8_5slice4iter4IterB9D_EEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB7e_10GenericArgEE0E0E0E0EB89_.exit.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !385
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store <2 x i64> %i.m, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !385
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQQQNCINvNtNtNtBb_4iter8adapters3map8map_foldTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefETB1x_INtNtBb_6option6OptionRNtB2d_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB3T_8Generics4iter0QNCINvNvXs_NtBY_9enumerateINtB5a_9EnumeratepENtNtNtB10_6traits8iterator8Iterator4fold9enumerateB2U_uNCINvNvB5I_8for_each4callTjB2U_ENCINvMss_NtB3V_11generic_argNtB7g_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtBY_5chain5ChainINtNtNtB10_7sources4once4OnceRNtB8b_4TypeEINtNtNtBb_5slice4iter4IterB9E_EEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB7g_10GenericArgEE0E0E0E0INtB7_5FnMutTuB1w_EE8call_mutB8b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !385
  br label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB31_5chain5ChainINtNtNtB2b_7sources4once4OnceRNtB89_4TypeEINtNtNtB8_5slice4iter4IterB9D_EEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB7e_10GenericArgEE0E0E0E0EB89_.exit.i.i

_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB31_5chain5ChainINtNtNtB2b_7sources4once4OnceRNtB89_4TypeEINtNtNtB8_5slice4iter4IterB9D_EEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB7e_10GenericArgEE0E0E0E0EB89_.exit.i.i: ; preds = %.lr.ph.split.us.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !384
  br label %bb.e

bb.e:                                             ; preds = %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB31_5chain5ChainINtNtNtB2b_7sources4once4OnceRNtB89_4TypeEINtNtNtB8_5slice4iter4IterB9D_EEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB7e_10GenericArgEE0E0E0E0EB89_.exit.i.i, %bb.c
  %.not2.i.i = icmp eq i32 %.sroa.3.0.copyload, -1
  br i1 %.not2.i.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysIBP_INtNtNtB9_7sources4once4OnceRNtBcT_4TypeEIB42_Be5_EEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbY_10GenericArgEE0E0E0E0EBcT_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.c, align 8, !noalias !384, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3r_5ArenaB2j_E4iter0ENCNvMs3_B2l_NtB2l_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5c_14SingleGenerics14iter_lifetimes0ENCNvB5b_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQQQNCINvB6_8map_foldTNtB2p_14GenericParamIdNtB2l_19GenericParamDataRefETB7A_INtNtBc_6option6OptionRB2j_EEuNCNvMNtNtB5e_11next_solver8genericsNtB92_8Generics4iter0QNCINvNvXs_B1u_IB1s_pEB6B_4fold9enumerateB8o_uNCINvNvB6B_8for_each4callTjB8o_ENCINvMss_NtB94_11generic_argNtBbg_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRNtBcb_4TypeEIB1U_BdD_EEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbg_10GenericArgEE0E0E0E0EBcb_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysIBP_INtNtNtB9_7sources4once4OnceRNtBcT_4TypeEIB42_Be5_EEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbY_10GenericArgEE0E0E0E0EBcT_.exit.i

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysIBP_INtNtNtB9_7sources4once4OnceRNtBcT_4TypeEIB42_Be5_EEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbY_10GenericArgEE0E0E0E0EBcT_.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !382
  br label %bb.g

bb.g:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysIBP_INtNtNtB9_7sources4once4OnceRNtBcT_4TypeEIB42_Be5_EEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbY_10GenericArgEE0E0E0E0EBcT_.exit.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i32, ptr %i.p, align 8, !range !25, !alias.scope !381, !noundef !9
  %.not2.i = icmp eq i32 %i.q, -1
  br i1 %.not2.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysIBP_INtNtNtB9_7sourc, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.d, align 8, !noalias !382, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB38_5ArenaB1X_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3Z_14SingleGenerics19iter_type_or_consts0ENCNvB3Y_30iter_type_or_consts_as_generic0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvB6_8map_foldTNtB23_14GenericParamIdNtB1Z_19GenericParamDataRefETB6S_INtNtBc_6option6OptionRNtB1Z_17LifetimeParamDataEEuNCNvMNtNtB41_11next_solver8genericsNtB8F_8Generics4iter0QNCINvNvXs_B18_IB16_pEB5U_4fold9enumerateB7G_uNCINvNvB5U_8for_each4callTjB7G_ENCINvMss_NtB8H_11generic_argNtBaT_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRNtBbO_4TypeEIB1y_Bdg_EEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBaT_10GenericArgEE0E0E0E0EBbO_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysIBP_INtNtNtB9_7sourc

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysIBP_INtNtNtB9_7sourc: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.i:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysIBP_INtNtNtB9_7sourc, %bb.a
  %i.s = load i32, ptr %0, align 8, !range !25, !noundef !9
  %.not2 = icmp eq i32 %i.s, -1
  br i1 %.not2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.f, align 8, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3R_5ArenaB2J_E4iter0ENCNvMs3_B2L_NtB2L_13GenericParams18iter_late_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5B_14SingleGenerics25iter_late_bound_lifetimes0ENCNvB5A_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldTNtB2P_14GenericParamIdNtB2L_19GenericParamDataRefETB88_INtNtBc_6option6OptionRB2J_EEuNCNvMNtNtB5D_11next_solver8genericsNtB9A_8Generics4iter0QNCINvNvXs_B1U_IB1S_pEB7b_4fold9enumerateB8W_uNCINvNvB7b_8for_each4callTjB8W_ENCINvMss_NtB9C_11generic_argNtBbO_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRNtBcJ_4TypeEIB2k_Beb_EEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbO_10GenericArgEE0E0E0E0EBcJ_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2W_INtNtB7_6filter6FilterIB2W_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB2d_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB58_5ArenaB4z_E4iter0ENCNvMs3_B2d_NtB2d_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6T_14SingleGenerics14iter_lifetimes0ENCNvB6S_4iter0EEIB2W_IB2W_IB2W_IB3I_IB4a_NtB2d_20TypeOrConstParamDataEENCNvMsm_B58_IB5w_B8I_E4iter0ENCNvB6S_19iter_type_or_consts0ENCNvB6S_30iter_type_or_consts_as_generic0EEIB2W_INtNtB7_10filter_map9FilterMapIB3h_B3C_NCNvB5Y_18iter_late_bound_lt0ENCNvB6S_25iter_late_bound_lifetimes0EB83_EENtNtNtB9_6traits8iterator8Iterator4folduQNCINvB2Y_8map_foldB1w_TB1x_INtB1b_6OptionRB4z_EEuNCNvMNtNtB6V_11next_solver8genericsNtBeh_8Generics4iter0QNCINvNvXs_B3K_IB3I_pEBcK_4fold9enumerateBdL_uNCINvNvBcK_8for_each4callTjBdL_ENCINvMss_NtBej_11generic_argNtBgv_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIB2W_IBaX_INtNtB7_6copied6CopiedIB4a_NtBgv_10GenericArgEENCNvBgr_5types0ENCNvMs1x_Bhq_NtBhq_4Type14type_arguments0EIBi6_IB2W_IBiL_IB4a_NtNtBej_2ty2TyEENCBjN_s_0EINtNtNtB9_7sources5empty5EmptyBjY_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBjb_Kja_EE0E0E0E0EBhq_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !396 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [120 x i8], align 8               ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i64, ptr %i.g, align 8, !range !22, !noundef !9
  %.not = icmp eq i64 %i.h, 3
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(120) %i.i, i64 120, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8, !noalias !398
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !23, !alias.scope !397, !noundef !9 ; 3 uses
  %.not.i = icmp eq i64 %i.k, -3
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !399
  %i.m = load <2 x i64>, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !398
  store ptr %i.d, ptr %i.c, align 8, !noalias !400
  %.not.i.i = icmp eq i64 %i.k, -2
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !400
  store ptr %i.c, ptr %i.b, align 8, !noalias !401
  %.not7.i.i.i = icmp eq i64 %i.k, -1
  br i1 %.not7.i.i.i, label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherINtB2Z_3MapINtNtB31_10filter_map9FilterMapINtNtB31_6copied6CopiedINtNtNtB8_5slice4iter4IterNtB7e_10GenericArgEENCNvB7a_5types0ENCNvMs1x_B89_NtB89_4Type14type_arguments0EIB8P_IB9k_IBa0_IBan_NtNtB4n_2ty2TyEENCBbo_s_0EINtNtNtB2b_7sources5empty5EmptyBbz_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBaM_Kja_EE0E0E0E0EB89_.exit.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !401
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store <2 x i64> %i.m, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !401
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQQQNCINvNtNtNtBb_4iter8adapters3map8map_foldTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefETB1x_INtNtBb_6option6OptionRNtB2d_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB3T_8Generics4iter0QNCINvNvXs_NtBY_9enumerateINtB5a_9EnumeratepENtNtNtB10_6traits8iterator8Iterator4fold9enumerateB2U_uNCINvNvB5I_8for_each4callTjB2U_ENCINvMss_NtB3V_11generic_argNtB7g_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherINtBW_3MapINtNtBY_10filter_map9FilterMapINtNtBY_6copied6CopiedINtNtNtBb_5slice4iter4IterNtB7g_10GenericArgEENCNvB7c_5types0ENCNvMs1x_B8b_NtB8b_4Type14type_arguments0EIB8R_IB9m_IBa0_IBam_NtNtB3V_2ty2TyEENCBbn_s_0EINtNtNtB10_7sources5empty5EmptyBby_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBaL_Kja_EE0E0E0E0INtB7_5FnMutTuB1w_EE8call_mutB8b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !401
  br label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherINtB2Z_3MapINtNtB31_10filter_map9FilterMapINtNtB31_6copied6CopiedINtNtNtB8_5slice4iter4IterNtB7e_10GenericArgEENCNvB7a_5types0ENCNvMs1x_B89_NtB89_4Type14type_arguments0EIB8P_IB9k_IBa0_IBan_NtNtB4n_2ty2TyEENCBbo_s_0EINtNtNtB2b_7sources5empty5EmptyBbz_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBaM_Kja_EE0E0E0E0EB89_.exit.i.i

_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherINtB2Z_3MapINtNtB31_10filter_map9FilterMapINtNtB31_6copied6CopiedINtNtNtB8_5slice4iter4IterNtB7e_10GenericArgEENCNvB7a_5types0ENCNvMs1x_B89_NtB89_4Type14type_arguments0EIB8P_IB9k_IBa0_IBan_NtNtB4n_2ty2TyEENCBbo_s_0EINtNtNtB2b_7sources5empty5EmptyBbz_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBaM_Kja_EE0E0E0E0EB89_.exit.i.i: ; preds = %.lr.ph.split.us.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !400
  br label %bb.e

bb.e:                                             ; preds = %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherINtB2Z_3MapINtNtB31_10filter_map9FilterMapINtNtB31_6copied6CopiedINtNtNtB8_5slice4iter4IterNtB7e_10GenericArgEENCNvB7a_5types0ENCNvMs1x_B89_NtB89_4Type14type_arguments0EIB8P_IB9k_IBa0_IBan_NtNtB4n_2ty2TyEENCBbo_s_0EINtNtNtB2b_7sources5empty5EmptyBbz_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBaM_Kja_EE0E0E0E0EB89_.exit.i.i, %bb.c
  %.not2.i.i = icmp eq i32 %.sroa.3.0.copyload, -1
  br i1 %.not2.i.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIB2O_INtNtB7_10filter_map9FilterMapINtNtB7_6copied6CopiedIB42_NtBbY_10GenericArgEENCNvBbU_5types0ENCNvMs1x_BcT_NtBcT_4Type14type_arguments0EIBdz_IB2O_, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.c, align 8, !noalias !400, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3r_5ArenaB2j_E4iter0ENCNvMs3_B2l_NtB2l_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5c_14SingleGenerics14iter_lifetimes0ENCNvB5b_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQQQNCINvB6_8map_foldTNtB2p_14GenericParamIdNtB2l_19GenericParamDataRefETB7A_INtNtBc_6option6OptionRB2j_EEuNCNvMNtNtB5e_11next_solver8genericsNtB92_8Generics4iter0QNCINvNvXs_B1u_IB1s_pEB6B_4fold9enumerateB8o_uNCINvNvB6B_8for_each4callTjB8o_ENCINvMss_NtB94_11generic_argNtBbg_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIBO_INtNtB8_10filter_map9FilterMapINtNtB8_6copied6CopiedIB1U_NtBbg_10GenericArgEENCNvBbc_5types0ENCNvMs1x_Bcb_NtBcb_4Type14type_arguments0EIBcR_IBO_IBdU_IB1U_NtNtB94_2ty2TyEENCBeW_s_0EINtNtNtBa_7sources5empty5EmptyBf7_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBek_Kja_EE0E0E0E0EBcb_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIB2O_INtNtB7_10filter_map9FilterMapINtNtB7_6copied6CopiedIB42_NtBbY_10GenericArgEENCNvBbU_5types0ENCNvMs1x_BcT_NtBcT_4Type14type_arguments0EIBdz_IB2O_

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIB2O_INtNtB7_10filter_map9FilterMapINtNtB7_6copied6CopiedIB42_NtBbY_10GenericArgEENCNvBbU_5types0ENCNvMs1x_BcT_NtBcT_4Type14type_arguments0EIBdz_IB2O_: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !398
  br label %bb.g

bb.g:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIB2O_INtNtB7_10filter_map9FilterMapINtNtB7_6copied6CopiedIB42_NtBbY_10GenericArgEENCNvBbU_5types0ENCNvMs1x_BcT_NtBcT_4Type14type_arguments0EIBdz_IB2O_, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i32, ptr %i.p, align 8, !range !25, !alias.scope !397, !noundef !9
  %.not2.i = icmp eq i32 %i.q, -1
  br i1 %.not2.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6ei, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.d, align 8, !noalias !398, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB38_5ArenaB1X_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3Z_14SingleGenerics19iter_type_or_consts0ENCNvB3Y_30iter_type_or_consts_as_generic0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvB6_8map_foldTNtB23_14GenericParamIdNtB1Z_19GenericParamDataRefETB6S_INtNtBc_6option6OptionRNtB1Z_17LifetimeParamDataEEuNCNvMNtNtB41_11next_solver8genericsNtB8F_8Generics4iter0QNCINvNvXs_B18_IB16_pEB5U_4fold9enumerateB7G_uNCINvNvB5U_8for_each4callTjB7G_ENCINvMss_NtB8H_11generic_argNtBaT_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIBO_INtNtB8_10filter_map9FilterMapINtNtB8_6copied6CopiedIB1y_NtBaT_10GenericArgEENCNvBaP_5types0ENCNvMs1x_BbO_NtBbO_4Type14type_arguments0EIBcu_IBO_IBdx_IB1y_NtNtB8H_2ty2TyEENCBez_s_0EINtNtNtBa_7sources5empty5EmptyBeK_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBdX_Kja_EE0E0E0E0EBbO_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6ei

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6ei: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.i:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6ei, %bb.a
  %i.s = load i32, ptr %0, align 8, !range !25, !noundef !9
  %.not2 = icmp eq i32 %i.s, -1
  br i1 %.not2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.f, align 8, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3R_5ArenaB2J_E4iter0ENCNvMs3_B2L_NtB2L_13GenericParams18iter_late_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5B_14SingleGenerics25iter_late_bound_lifetimes0ENCNvB5A_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldTNtB2P_14GenericParamIdNtB2L_19GenericParamDataRefETB88_INtNtBc_6option6OptionRB2J_EEuNCNvMNtNtB5D_11next_solver8genericsNtB9A_8Generics4iter0QNCINvNvXs_B1U_IB1S_pEB7b_4fold9enumerateB8W_uNCINvNvB7b_8for_each4callTjB8W_ENCINvMss_NtB9C_11generic_argNtBbO_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIBO_IBY_INtNtB8_6copied6CopiedIB2k_NtBbO_10GenericArgEENCNvBbK_5types0ENCNvMs1x_BcJ_NtBcJ_4Type14type_arguments0EIBdp_IBO_IBe2_IB2k_NtNtB9C_2ty2TyEENCBf4_s_0EINtNtNtBa_7sources5empty5EmptyBff_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBes_Kja_EE0E0E0E0EBcJ_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2W_INtNtB7_6filter6FilterIB2W_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB2d_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB58_5ArenaB4z_E4iter0ENCNvMs3_B2d_NtB2d_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6T_14SingleGenerics14iter_lifetimes0ENCNvB6S_4iter0EEIB2W_IB2W_IB2W_IB3I_IB4a_NtB2d_20TypeOrConstParamDataEENCNvMsm_B58_IB5w_B8I_E4iter0ENCNvB6S_19iter_type_or_consts0ENCNvB6S_30iter_type_or_consts_as_generic0EEIB2W_INtNtB7_10filter_map9FilterMapIB3h_B3C_NCNvB5Y_18iter_late_bound_lt0ENCNvB6S_25iter_late_bound_lifetimes0EB83_EENtNtNtB9_6traits8iterator8Iterator4folduQNCINvB2Y_8map_foldB1w_TB1x_INtB1b_6OptionRB4z_EEuNCNvMNtNtB6V_11next_solver8genericsNtBeh_8Generics4iter0QNCINvNvXs_B3K_IB3I_pEBcK_4fold9enumerateBdL_uNCINvNvBcK_8for_each4callTjBdL_ENCINvMss_NtBej_11generic_argNtBgv_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIB2W_IBaX_INtNtB7_6copied6CopiedIB4a_NtBgv_10GenericArgEENCNvBgr_5types0ENCNvMs1x_Bhq_NtBhq_4Type14type_arguments0EIBi6_IB2W_IBiL_IB4a_NtNtBej_2ty2TyEENCBjN_s_0EINtNtNtB9_7sources5empty5EmptyBjY_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBjb_EE0E0E0E0EBhq_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !412 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [120 x i8], align 8               ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i64, ptr %i.g, align 8, !range !22, !noundef !9
  %.not = icmp eq i64 %i.h, 3
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(120) %i.i, i64 120, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8, !noalias !414
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !23, !alias.scope !413, !noundef !9 ; 3 uses
  %.not.i = icmp eq i64 %i.k, -3
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !415
  %i.m = load <2 x i64>, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !414
  store ptr %i.d, ptr %i.c, align 8, !noalias !416
  %.not.i.i = icmp eq i64 %i.k, -2
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !416
  store ptr %i.c, ptr %i.b, align 8, !noalias !417
  %.not7.i.i.i = icmp eq i64 %i.k, -1
  br i1 %.not7.i.i.i, label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherINtB2Z_3MapINtNtB31_10filter_map9FilterMapINtNtB31_6copied6CopiedINtNtNtB8_5slice4iter4IterNtB7e_10GenericArgEENCNvB7a_5types0ENCNvMs1x_B89_NtB89_4Type14type_arguments0EIB8P_IB9k_IBa0_IBan_NtNtB4n_2ty2TyEENCBbo_s_0EINtNtNtB2b_7sources5empty5EmptyBbz_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBaM_EE0E0E0E0EB89_.exit.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !417
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store <2 x i64> %i.m, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !417
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQQQNCINvNtNtNtBb_4iter8adapters3map8map_foldTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefETB1x_INtNtBb_6option6OptionRNtB2d_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB3T_8Generics4iter0QNCINvNvXs_NtBY_9enumerateINtB5a_9EnumeratepENtNtNtB10_6traits8iterator8Iterator4fold9enumerateB2U_uNCINvNvB5I_8for_each4callTjB2U_ENCINvMss_NtB3V_11generic_argNtB7g_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherINtBW_3MapINtNtBY_10filter_map9FilterMapINtNtBY_6copied6CopiedINtNtNtBb_5slice4iter4IterNtB7g_10GenericArgEENCNvB7c_5types0ENCNvMs1x_B8b_NtB8b_4Type14type_arguments0EIB8R_IB9m_IBa0_IBam_NtNtB3V_2ty2TyEENCBbn_s_0EINtNtNtB10_7sources5empty5EmptyBby_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBaL_EE0E0E0E0INtB7_5FnMutTuB1w_EE8call_mutB8b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !417
  br label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherINtB2Z_3MapINtNtB31_10filter_map9FilterMapINtNtB31_6copied6CopiedINtNtNtB8_5slice4iter4IterNtB7e_10GenericArgEENCNvB7a_5types0ENCNvMs1x_B89_NtB89_4Type14type_arguments0EIB8P_IB9k_IBa0_IBan_NtNtB4n_2ty2TyEENCBbo_s_0EINtNtNtB2b_7sources5empty5EmptyBbz_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBaM_EE0E0E0E0EB89_.exit.i.i

_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherINtB2Z_3MapINtNtB31_10filter_map9FilterMapINtNtB31_6copied6CopiedINtNtNtB8_5slice4iter4IterNtB7e_10GenericArgEENCNvB7a_5types0ENCNvMs1x_B89_NtB89_4Type14type_arguments0EIB8P_IB9k_IBa0_IBan_NtNtB4n_2ty2TyEENCBbo_s_0EINtNtNtB2b_7sources5empty5EmptyBbz_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBaM_EE0E0E0E0EB89_.exit.i.i: ; preds = %.lr.ph.split.us.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !416
  br label %bb.e

bb.e:                                             ; preds = %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherINtB2Z_3MapINtNtB31_10filter_map9FilterMapINtNtB31_6copied6CopiedINtNtNtB8_5slice4iter4IterNtB7e_10GenericArgEENCNvB7a_5types0ENCNvMs1x_B89_NtB89_4Type14type_arguments0EIB8P_IB9k_IBa0_IBan_NtNtB4n_2ty2TyEENCBbo_s_0EINtNtNtB2b_7sources5empty5EmptyBbz_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBaM_EE0E0E0E0EB89_.exit.i.i, %bb.c
  %.not2.i.i = icmp eq i32 %.sroa.3.0.copyload, -1
  br i1 %.not2.i.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIB2O_INtNtB7_10filter_map9FilterMapINtNtB7_6copied6CopiedIB42_NtBbY_10GenericArgEENCNvBbU_5types0ENCNvMs1x_BcT_NtBcT_4Type14type_arguments0EIBdz_IB2O_, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.c, align 8, !noalias !416, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3r_5ArenaB2j_E4iter0ENCNvMs3_B2l_NtB2l_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5c_14SingleGenerics14iter_lifetimes0ENCNvB5b_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQQQNCINvB6_8map_foldTNtB2p_14GenericParamIdNtB2l_19GenericParamDataRefETB7A_INtNtBc_6option6OptionRB2j_EEuNCNvMNtNtB5e_11next_solver8genericsNtB92_8Generics4iter0QNCINvNvXs_B1u_IB1s_pEB6B_4fold9enumerateB8o_uNCINvNvB6B_8for_each4callTjB8o_ENCINvMss_NtB94_11generic_argNtBbg_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIBO_INtNtB8_10filter_map9FilterMapINtNtB8_6copied6CopiedIB1U_NtBbg_10GenericArgEENCNvBbc_5types0ENCNvMs1x_Bcb_NtBcb_4Type14type_arguments0EIBcR_IBO_IBdU_IB1U_NtNtB94_2ty2TyEENCBeW_s_0EINtNtNtBa_7sources5empty5EmptyBf7_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBek_EE0E0E0E0EBcb_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIB2O_INtNtB7_10filter_map9FilterMapINtNtB7_6copied6CopiedIB42_NtBbY_10GenericArgEENCNvBbU_5types0ENCNvMs1x_BcT_NtBcT_4Type14type_arguments0EIBdz_IB2O_

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIB2O_INtNtB7_10filter_map9FilterMapINtNtB7_6copied6CopiedIB42_NtBbY_10GenericArgEENCNvBbU_5types0ENCNvMs1x_BcT_NtBcT_4Type14type_arguments0EIBdz_IB2O_: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !414
  br label %bb.g

bb.g:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIB2O_INtNtB7_10filter_map9FilterMapINtNtB7_6copied6CopiedIB42_NtBbY_10GenericArgEENCNvBbU_5types0ENCNvMs1x_BcT_NtBcT_4Type14type_arguments0EIBdz_IB2O_, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i32, ptr %i.p, align 8, !range !25, !alias.scope !413, !noundef !9
  %.not2.i = icmp eq i32 %i.q, -1
  br i1 %.not2.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6ei, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.d, align 8, !noalias !414, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB38_5ArenaB1X_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3Z_14SingleGenerics19iter_type_or_consts0ENCNvB3Y_30iter_type_or_consts_as_generic0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvB6_8map_foldTNtB23_14GenericParamIdNtB1Z_19GenericParamDataRefETB6S_INtNtBc_6option6OptionRNtB1Z_17LifetimeParamDataEEuNCNvMNtNtB41_11next_solver8genericsNtB8F_8Generics4iter0QNCINvNvXs_B18_IB16_pEB5U_4fold9enumerateB7G_uNCINvNvB5U_8for_each4callTjB7G_ENCINvMss_NtB8H_11generic_argNtBaT_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIBO_INtNtB8_10filter_map9FilterMapINtNtB8_6copied6CopiedIB1y_NtBaT_10GenericArgEENCNvBaP_5types0ENCNvMs1x_BbO_NtBbO_4Type14type_arguments0EIBcu_IBO_IBdx_IB1y_NtNtB8H_2ty2TyEENCBez_s_0EINtNtNtBa_7sources5empty5EmptyBeK_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBdX_EE0E0E0E0EBbO_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6ei

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6ei: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.i:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6ei, %bb.a
  %i.s = load i32, ptr %0, align 8, !range !25, !noundef !9
  %.not2 = icmp eq i32 %i.s, -1
  br i1 %.not2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.f, align 8, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3R_5ArenaB2J_E4iter0ENCNvMs3_B2L_NtB2L_13GenericParams18iter_late_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5B_14SingleGenerics25iter_late_bound_lifetimes0ENCNvB5A_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldTNtB2P_14GenericParamIdNtB2L_19GenericParamDataRefETB88_INtNtBc_6option6OptionRB2J_EEuNCNvMNtNtB5D_11next_solver8genericsNtB9A_8Generics4iter0QNCINvNvXs_B1U_IB1S_pEB7b_4fold9enumerateB8W_uNCINvNvB7b_8for_each4callTjB8W_ENCINvMss_NtB9C_11generic_argNtBbO_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIBO_IBY_INtNtB8_6copied6CopiedIB2k_NtBbO_10GenericArgEENCNvBbK_5types0ENCNvMs1x_BcJ_NtBcJ_4Type14type_arguments0EIBdp_IBO_IBe2_IB2k_NtNtB9C_2ty2TyEENCBf4_s_0EINtNtNtBa_7sources5empty5EmptyBff_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBes_EE0E0E0E0EBcJ_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2W_INtNtB7_6filter6FilterIB2W_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB2d_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB58_5ArenaB4z_E4iter0ENCNvMs3_B2d_NtB2d_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6T_14SingleGenerics14iter_lifetimes0ENCNvB6S_4iter0EEIB2W_IB2W_IB2W_IB3I_IB4a_NtB2d_20TypeOrConstParamDataEENCNvMsm_B58_IB5w_B8I_E4iter0ENCNvB6S_19iter_type_or_consts0ENCNvB6S_30iter_type_or_consts_as_generic0EEIB2W_INtNtB7_10filter_map9FilterMapIB3h_B3C_NCNvB5Y_18iter_late_bound_lt0ENCNvB6S_25iter_late_bound_lifetimes0EB83_EENtNtNtB9_6traits8iterator8Iterator4folduQNCINvB2Y_8map_foldB1w_TB1x_INtB1b_6OptionRB4z_EEuNCNvMNtNtB6V_11next_solver8genericsNtBeh_8Generics4iter0QNCINvNvXs_B3K_IB3I_pEBcK_4fold9enumerateBdL_uNCINvNvBcK_8for_each4callTjBdL_ENCINvMss_NtBej_11generic_argNtBgv_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBhq_4TypeEE0IBi7_NtBgv_10GenericArgEE0E0E0E0EBhq_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !428 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [120 x i8], align 8               ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i64, ptr %i.g, align 8, !range !22, !noundef !9
  %.not = icmp eq i64 %i.h, 3
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(120) %i.i, i64 120, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !429)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8, !noalias !430
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !23, !alias.scope !429, !noundef !9 ; 3 uses
  %.not.i = icmp eq i64 %i.k, -3
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !431
  %i.m = load <2 x i64>, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !430
  store ptr %i.d, ptr %i.c, align 8, !noalias !432
  %.not.i.i = icmp eq i64 %i.k, -2
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !432
  store ptr %i.c, ptr %i.b, align 8, !noalias !433
  %.not7.i.i.i = icmp eq i64 %i.k, -1
  br i1 %.not7.i.i.i, label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB89_4TypeEE0IB8Q_NtB7e_10GenericArgEE0E0E0E0EB89_.exit.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !433
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store <2 x i64> %i.m, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !433
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQQQNCINvNtNtNtBb_4iter8adapters3map8map_foldTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefETB1x_INtNtBb_6option6OptionRNtB2d_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB3T_8Generics4iter0QNCINvNvXs_NtBY_9enumerateINtB5a_9EnumeratepENtNtNtB10_6traits8iterator8Iterator4fold9enumerateB2U_uNCINvNvB5I_8for_each4callTjB2U_ENCINvMss_NtB3V_11generic_argNtB7g_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB8b_4TypeEE0IB8S_NtB7g_10GenericArgEE0E0E0E0INtB7_5FnMutTuB1w_EE8call_mutB8b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !433
  br label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB89_4TypeEE0IB8Q_NtB7e_10GenericArgEE0E0E0E0EB89_.exit.i.i

_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB89_4TypeEE0IB8Q_NtB7e_10GenericArgEE0E0E0E0EB89_.exit.i.i: ; preds = %.lr.ph.split.us.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !432
  br label %bb.e

bb.e:                                             ; preds = %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB89_4TypeEE0IB8Q_NtB7e_10GenericArgEE0E0E0E0EB89_.exit.i.i, %bb.c
  %.not2.i.i = icmp eq i32 %.sroa.3.0.copyload, -1
  br i1 %.not2.i.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcT_4TypeEE0IBdA_NtBbY_10GenericArgEE0E0E0E0EBcT_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.c, align 8, !noalias !432, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3r_5ArenaB2j_E4iter0ENCNvMs3_B2l_NtB2l_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5c_14SingleGenerics14iter_lifetimes0ENCNvB5b_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQQQNCINvB6_8map_foldTNtB2p_14GenericParamIdNtB2l_19GenericParamDataRefETB7A_INtNtBc_6option6OptionRB2j_EEuNCNvMNtNtB5e_11next_solver8genericsNtB92_8Generics4iter0QNCINvNvXs_B1u_IB1s_pEB6B_4fold9enumerateB8o_uNCINvNvB6B_8for_each4callTjB8o_ENCINvMss_NtB94_11generic_argNtBbg_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcb_4TypeEE0IBcS_NtBbg_10GenericArgEE0E0E0E0EBcb_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcT_4TypeEE0IBdA_NtBbY_10GenericArgEE0E0E0E0EBcT_.exit.i

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcT_4TypeEE0IBdA_NtBbY_10GenericArgEE0E0E0E0EBcT_.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !430
  br label %bb.g

bb.g:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcT_4TypeEE0IBdA_NtBbY_10GenericArgEE0E0E0E0EBcT_.exit.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i32, ptr %i.p, align 8, !range !25, !alias.scope !429, !noundef !9
  %.not2.i = icmp eq i32 %i.q, -1
  br i1 %.not2.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.d, align 8, !noalias !430, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB38_5ArenaB1X_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3Z_14SingleGenerics19iter_type_or_consts0ENCNvB3Y_30iter_type_or_consts_as_generic0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvB6_8map_foldTNtB23_14GenericParamIdNtB1Z_19GenericParamDataRefETB6S_INtNtBc_6option6OptionRNtB1Z_17LifetimeParamDataEEuNCNvMNtNtB41_11next_solver8genericsNtB8F_8Generics4iter0QNCINvNvXs_B18_IB16_pEB5U_4fold9enumerateB7G_uNCINvNvB5U_8for_each4callTjB7G_ENCINvMss_NtB8H_11generic_argNtBaT_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbO_4TypeEE0IBcv_NtBaT_10GenericArgEE0E0E0E0EBbO_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.i:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_, %bb.a
  %i.s = load i32, ptr %0, align 8, !range !25, !noundef !9
  %.not2 = icmp eq i32 %i.s, -1
  br i1 %.not2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.f, align 8, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3R_5ArenaB2J_E4iter0ENCNvMs3_B2L_NtB2L_13GenericParams18iter_late_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5B_14SingleGenerics25iter_late_bound_lifetimes0ENCNvB5A_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldTNtB2P_14GenericParamIdNtB2L_19GenericParamDataRefETB88_INtNtBc_6option6OptionRB2J_EEuNCNvMNtNtB5D_11next_solver8genericsNtB9A_8Generics4iter0QNCINvNvXs_B1U_IB1S_pEB7b_4fold9enumerateB8W_uNCINvNvB7b_8for_each4callTjB8W_ENCINvMss_NtB9C_11generic_argNtBbO_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcJ_4TypeEE0IBdq_NtBbO_10GenericArgEE0E0E0E0EBcJ_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2W_INtNtB7_6filter6FilterIB2W_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB2d_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB58_5ArenaB4z_E4iter0ENCNvMs3_B2d_NtB2d_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6T_14SingleGenerics14iter_lifetimes0ENCNvB6S_4iter0EEIB2W_IB2W_IB2W_IB3I_IB4a_NtB2d_20TypeOrConstParamDataEENCNvMsm_B58_IB5w_B8I_E4iter0ENCNvB6S_19iter_type_or_consts0ENCNvB6S_30iter_type_or_consts_as_generic0EEIB2W_INtNtB7_10filter_map9FilterMapIB3h_B3C_NCNvB5Y_18iter_late_bound_lt0ENCNvB6S_25iter_late_bound_lifetimes0EB83_EENtNtNtB9_6traits8iterator8Iterator4folduQNCINvB2Y_8map_foldB1w_TB1x_INtB1b_6OptionRB4z_EEuNCNvMNtNtB6V_11next_solver8genericsNtBeh_8Generics4iter0QNCINvNvXs_B3K_IB3I_pEBcK_4fold9enumerateBdL_uNCINvNvBcK_8for_each4callTjBdL_ENCINvMss_NtBej_11generic_argNtBgv_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBhq_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBgv_10GenericArgKja_EE0E0E0E0EBhq_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !444 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [120 x i8], align 8               ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i64, ptr %i.g, align 8, !range !22, !noundef !9
  %.not = icmp eq i64 %i.h, 3
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(120) %i.i, i64 120, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8, !noalias !446
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !23, !alias.scope !445, !noundef !9 ; 3 uses
  %.not.i = icmp eq i64 %i.k, -3
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !447
  %i.m = load <2 x i64>, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !446
  store ptr %i.d, ptr %i.c, align 8, !noalias !448
  %.not.i.i = icmp eq i64 %i.k, -2
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !448
  store ptr %i.c, ptr %i.b, align 8, !noalias !449
  %.not7.i.i.i = icmp eq i64 %i.k, -1
  br i1 %.not7.i.i.i, label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB89_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0EB89_.exit.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !449
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store <2 x i64> %i.m, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !449
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQQQNCINvNtNtNtBb_4iter8adapters3map8map_foldTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefETB1x_INtNtBb_6option6OptionRNtB2d_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB3T_8Generics4iter0QNCINvNvXs_NtBY_9enumerateINtB5a_9EnumeratepENtNtNtB10_6traits8iterator8Iterator4fold9enumerateB2U_uNCINvNvB5I_8for_each4callTjB2U_ENCINvMss_NtB3V_11generic_argNtB7g_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB8b_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7g_10GenericArgKja_EE0E0E0E0INtB7_5FnMutTuB1w_EE8call_mutB8b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !449
  br label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB89_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0EB89_.exit.i.i

_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB89_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0EB89_.exit.i.i: ; preds = %.lr.ph.split.us.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !448
  br label %bb.e

bb.e:                                             ; preds = %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB89_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0EB89_.exit.i.i, %bb.c
  %.not2.i.i = icmp eq i32 %.sroa.3.0.copyload, -1
  br i1 %.not2.i.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcT_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0EBcT_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.c, align 8, !noalias !448, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3r_5ArenaB2j_E4iter0ENCNvMs3_B2l_NtB2l_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5c_14SingleGenerics14iter_lifetimes0ENCNvB5b_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQQQNCINvB6_8map_foldTNtB2p_14GenericParamIdNtB2l_19GenericParamDataRefETB7A_INtNtBc_6option6OptionRB2j_EEuNCNvMNtNtB5e_11next_solver8genericsNtB92_8Generics4iter0QNCINvNvXs_B1u_IB1s_pEB6B_4fold9enumerateB8o_uNCINvNvB6B_8for_each4callTjB8o_ENCINvMss_NtB94_11generic_argNtBbg_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcb_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbg_10GenericArgKja_EE0E0E0E0EBcb_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcT_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0EBcT_.exit.i

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcT_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0EBcT_.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !446
  br label %bb.g

bb.g:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcT_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0EBcT_.exit.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i32, ptr %i.p, align 8, !range !25, !alias.scope !445, !noundef !9
  %.not2.i = icmp eq i32 %i.q, -1
  br i1 %.not2.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.d, align 8, !noalias !446, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB38_5ArenaB1X_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3Z_14SingleGenerics19iter_type_or_consts0ENCNvB3Y_30iter_type_or_consts_as_generic0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvB6_8map_foldTNtB23_14GenericParamIdNtB1Z_19GenericParamDataRefETB6S_INtNtBc_6option6OptionRNtB1Z_17LifetimeParamDataEEuNCNvMNtNtB41_11next_solver8genericsNtB8F_8Generics4iter0QNCINvNvXs_B18_IB16_pEB5U_4fold9enumerateB7G_uNCINvNvB5U_8for_each4callTjB7G_ENCINvMss_NtB8H_11generic_argNtBaT_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbO_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBaT_10GenericArgKja_EE0E0E0E0EBbO_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.i:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_, %bb.a
  %i.s = load i32, ptr %0, align 8, !range !25, !noundef !9
  %.not2 = icmp eq i32 %i.s, -1
  br i1 %.not2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.f, align 8, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3R_5ArenaB2J_E4iter0ENCNvMs3_B2L_NtB2L_13GenericParams18iter_late_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5B_14SingleGenerics25iter_late_bound_lifetimes0ENCNvB5A_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldTNtB2P_14GenericParamIdNtB2L_19GenericParamDataRefETB88_INtNtBc_6option6OptionRB2J_EEuNCNvMNtNtB5D_11next_solver8genericsNtB9A_8Generics4iter0QNCINvNvXs_B1U_IB1S_pEB7b_4fold9enumerateB8W_uNCINvNvB7b_8for_each4callTjB8W_ENCINvMss_NtB9C_11generic_argNtBbO_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcJ_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbO_10GenericArgKja_EE0E0E0E0EBcJ_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2W_INtNtB7_6filter6FilterIB2W_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB2d_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB58_5ArenaB4z_E4iter0ENCNvMs3_B2d_NtB2d_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6T_14SingleGenerics14iter_lifetimes0ENCNvB6S_4iter0EEIB2W_IB2W_IB2W_IB3I_IB4a_NtB2d_20TypeOrConstParamDataEENCNvMsm_B58_IB5w_B8I_E4iter0ENCNvB6S_19iter_type_or_consts0ENCNvB6S_30iter_type_or_consts_as_generic0EEIB2W_INtNtB7_10filter_map9FilterMapIB3h_B3C_NCNvB5Y_18iter_late_bound_lt0ENCNvB6S_25iter_late_bound_lifetimes0EB83_EENtNtNtB9_6traits8iterator8Iterator4folduQNCINvB2Y_8map_foldB1w_TB1x_INtB1b_6OptionRB4z_EEuNCNvMNtNtB6V_11next_solver8genericsNtBeh_8Generics4iter0QNCINvNvXs_B3K_IB3I_pEBcK_4fold9enumerateBdL_uNCINvNvBcK_8for_each4callTjBdL_ENCINvMss_NtBej_11generic_argNtBgv_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtBhx_4Type27instantiate_many_with_inferIBP_INtNtNtB9_7sources4once4OnceRBhP_EIB4a_BhP_EEE00INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBgv_10GenericArgKja_EE0E0E0E0EBhx_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !460 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [120 x i8], align 8               ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i64, ptr %i.g, align 8, !range !22, !noundef !9
  %.not = icmp eq i64 %i.h, 3
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(120) %i.i, i64 120, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8, !noalias !462
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !23, !alias.scope !461, !noundef !9 ; 3 uses
  %.not.i = icmp eq i64 %i.k, -3
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !463
  %i.m = load <2 x i64>, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !462
  store ptr %i.d, ptr %i.c, align 8, !noalias !464
  %.not.i.i = icmp eq i64 %i.k, -2
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !464
  store ptr %i.c, ptr %i.b, align 8, !noalias !465
  %.not7.i.i.i = icmp eq i64 %i.k, -1
  br i1 %.not7.i.i.i, label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtB8g_4Type27instantiate_many_with_inferINtNtB31_5chain5ChainINtNtNtB2b_7sources4once4OnceRB8y_EINtNtNtB8_5slice4iter4IterB8y_EEE00INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0EB8g_.exit.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !465
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store <2 x i64> %i.m, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !465
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQQQNCINvNtNtNtBb_4iter8adapters3map8map_foldTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefETB1x_INtNtBb_6option6OptionRNtB2d_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB3T_8Generics4iter0QNCINvNvXs_NtBY_9enumerateINtB5a_9EnumeratepENtNtNtB10_6traits8iterator8Iterator4fold9enumerateB2U_uNCINvNvB5I_8for_each4callTjB2U_ENCINvMss_NtB3V_11generic_argNtB7g_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtB8i_4Type27instantiate_many_with_inferINtNtBY_5chain5ChainINtNtNtB10_7sources4once4OnceRB8A_EINtNtNtBb_5slice4iter4IterB8A_EEE00INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7g_10GenericArgKja_EE0E0E0E0INtB7_5FnMutTuB1w_EE8call_mutB8i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !465
  br label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtB8g_4Type27instantiate_many_with_inferINtNtB31_5chain5ChainINtNtNtB2b_7sources4once4OnceRB8y_EINtNtNtB8_5slice4iter4IterB8y_EEE00INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0EB8g_.exit.i.i

_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtB8g_4Type27instantiate_many_with_inferINtNtB31_5chain5ChainINtNtNtB2b_7sources4once4OnceRB8y_EINtNtNtB8_5slice4iter4IterB8y_EEE00INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0EB8g_.exit.i.i: ; preds = %.lr.ph.split.us.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !464
  br label %bb.e

bb.e:                                             ; preds = %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtB8g_4Type27instantiate_many_with_inferINtNtB31_5chain5ChainINtNtNtB2b_7sources4once4OnceRB8y_EINtNtNtB8_5slice4iter4IterB8y_EEE00INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0EB8g_.exit.i.i, %bb.c
  %.not2.i.i = icmp eq i32 %.sroa.3.0.copyload, -1
  br i1 %.not2.i.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtBd0_4Type27instantiate_many_with_inferIBP_INtNtNtB9_7sources4once4OnceRBdi_EIB42_Bdi_EEE00INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0EBd0_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.c, align 8, !noalias !464, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3r_5ArenaB2j_E4iter0ENCNvMs3_B2l_NtB2l_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5c_14SingleGenerics14iter_lifetimes0ENCNvB5b_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQQQNCINvB6_8map_foldTNtB2p_14GenericParamIdNtB2l_19GenericParamDataRefETB7A_INtNtBc_6option6OptionRB2j_EEuNCNvMNtNtB5e_11next_solver8genericsNtB92_8Generics4iter0QNCINvNvXs_B1u_IB1s_pEB6B_4fold9enumerateB8o_uNCINvNvB6B_8for_each4callTjB8o_ENCINvMss_NtB94_11generic_argNtBbg_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtBci_4Type27instantiate_many_with_inferINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRBcA_EIB1U_BcA_EEE00INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbg_10GenericArgKja_EE0E0E0E0EBci_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtBd0_4Type27instantiate_many_with_inferIBP_INtNtNtB9_7sources4once4OnceRBdi_EIB42_Bdi_EEE00INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0EBd0_.exit.i

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtBd0_4Type27instantiate_many_with_inferIBP_INtNtNtB9_7sources4once4OnceRBdi_EIB42_Bdi_EEE00INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0EBd0_.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !462
  br label %bb.g

bb.g:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtBd0_4Type27instantiate_many_with_inferIBP_INtNtNtB9_7sources4once4OnceRBdi_EIB42_Bdi_EEE00INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0EBd0_.exit.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i32, ptr %i.p, align 8, !range !25, !alias.scope !461, !noundef !9
  %.not2.i = icmp eq i32 %i.q, -1
  br i1 %.not2.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtBfB_4Type27instantiate_many_with_i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.d, align 8, !noalias !462, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB38_5ArenaB1X_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3Z_14SingleGenerics19iter_type_or_consts0ENCNvB3Y_30iter_type_or_consts_as_generic0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvB6_8map_foldTNtB23_14GenericParamIdNtB1Z_19GenericParamDataRefETB6S_INtNtBc_6option6OptionRNtB1Z_17LifetimeParamDataEEuNCNvMNtNtB41_11next_solver8genericsNtB8F_8Generics4iter0QNCINvNvXs_B18_IB16_pEB5U_4fold9enumerateB7G_uNCINvNvB5U_8for_each4callTjB7G_ENCINvMss_NtB8H_11generic_argNtBaT_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtBbV_4Type27instantiate_many_with_inferINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRBcd_EIB1y_Bcd_EEE00INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBaT_10GenericArgKja_EE0E0E0E0EBbV_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtBfB_4Type27instantiate_many_with_i

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtBfB_4Type27instantiate_many_with_i: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.i:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtBfB_4Type27instantiate_many_with_i, %bb.a
  %i.s = load i32, ptr %0, align 8, !range !25, !noundef !9
  %.not2 = icmp eq i32 %i.s, -1
  br i1 %.not2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.f, align 8, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3R_5ArenaB2J_E4iter0ENCNvMs3_B2L_NtB2L_13GenericParams18iter_late_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5B_14SingleGenerics25iter_late_bound_lifetimes0ENCNvB5A_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldTNtB2P_14GenericParamIdNtB2L_19GenericParamDataRefETB88_INtNtBc_6option6OptionRB2J_EEuNCNvMNtNtB5D_11next_solver8genericsNtB9A_8Generics4iter0QNCINvNvXs_B1U_IB1S_pEB7b_4fold9enumerateB8W_uNCINvNvB7b_8for_each4callTjB8W_ENCINvMss_NtB9C_11generic_argNtBbO_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtBcQ_4Type27instantiate_many_with_inferINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRBd8_EIB2k_Bd8_EEE00INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbO_10GenericArgKja_EE0E0E0E0EBcQ_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2W_INtNtB7_6filter6FilterIB2W_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB2d_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB58_5ArenaB4z_E4iter0ENCNvMs3_B2d_NtB2d_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6T_14SingleGenerics14iter_lifetimes0ENCNvB6S_4iter0EEIB2W_IB2W_IB2W_IB3I_IB4a_NtB2d_20TypeOrConstParamDataEENCNvMsm_B58_IB5w_B8I_E4iter0ENCNvB6S_19iter_type_or_consts0ENCNvB6S_30iter_type_or_consts_as_generic0EEIB2W_INtNtB7_10filter_map9FilterMapIB3h_B3C_NCNvB5Y_18iter_late_bound_lt0ENCNvB6S_25iter_late_bound_lifetimes0EB83_EENtNtNtB9_6traits8iterator8Iterator4folduQNCINvB2Y_8map_foldB1w_TB1x_INtB1b_6OptionRB4z_EEuNCNvMNtNtB6V_11next_solver8genericsNtBeh_8Generics4iter0QNCINvNvXs_B3K_IB3I_pEBcK_4fold9enumerateBdL_uNCINvNvBcK_8for_each4callTjBdL_ENCINvMss_NtBej_11generic_argNtBgv_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtBhx_4Type27instantiate_many_with_inferIBP_INtNtNtB9_7sources4once4OnceRBhP_EIB4a_BhP_EEE00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBgv_10GenericArgEE0E0E0E0EBhx_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !476 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [120 x i8], align 8               ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i64, ptr %i.g, align 8, !range !22, !noundef !9
  %.not = icmp eq i64 %i.h, 3
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(120) %i.i, i64 120, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8, !noalias !478
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !23, !alias.scope !477, !noundef !9 ; 3 uses
  %.not.i = icmp eq i64 %i.k, -3
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !479
  %i.m = load <2 x i64>, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !478
  store ptr %i.d, ptr %i.c, align 8, !noalias !480
  %.not.i.i = icmp eq i64 %i.k, -2
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !480
  store ptr %i.c, ptr %i.b, align 8, !noalias !481
  %.not7.i.i.i = icmp eq i64 %i.k, -1
  br i1 %.not7.i.i.i, label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtB8g_4Type27instantiate_many_with_inferINtNtB31_5chain5ChainINtNtNtB2b_7sources4once4OnceRB8y_EINtNtNtB8_5slice4iter4IterB8y_EEE00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB7e_10GenericArgEE0E0E0E0EB8g_.exit.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !481
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store <2 x i64> %i.m, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !481
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQQQNCINvNtNtNtBb_4iter8adapters3map8map_foldTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefETB1x_INtNtBb_6option6OptionRNtB2d_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB3T_8Generics4iter0QNCINvNvXs_NtBY_9enumerateINtB5a_9EnumeratepENtNtNtB10_6traits8iterator8Iterator4fold9enumerateB2U_uNCINvNvB5I_8for_each4callTjB2U_ENCINvMss_NtB3V_11generic_argNtB7g_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtB8i_4Type27instantiate_many_with_inferINtNtBY_5chain5ChainINtNtNtB10_7sources4once4OnceRB8A_EINtNtNtBb_5slice4iter4IterB8A_EEE00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB7g_10GenericArgEE0E0E0E0INtB7_5FnMutTuB1w_EE8call_mutB8i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !481
  br label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtB8g_4Type27instantiate_many_with_inferINtNtB31_5chain5ChainINtNtNtB2b_7sources4once4OnceRB8y_EINtNtNtB8_5slice4iter4IterB8y_EEE00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB7e_10GenericArgEE0E0E0E0EB8g_.exit.i.i

_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtB8g_4Type27instantiate_many_with_inferINtNtB31_5chain5ChainINtNtNtB2b_7sources4once4OnceRB8y_EINtNtNtB8_5slice4iter4IterB8y_EEE00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB7e_10GenericArgEE0E0E0E0EB8g_.exit.i.i: ; preds = %.lr.ph.split.us.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !480
  br label %bb.e

bb.e:                                             ; preds = %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtB8g_4Type27instantiate_many_with_inferINtNtB31_5chain5ChainINtNtNtB2b_7sources4once4OnceRB8y_EINtNtNtB8_5slice4iter4IterB8y_EEE00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB7e_10GenericArgEE0E0E0E0EB8g_.exit.i.i, %bb.c
  %.not2.i.i = icmp eq i32 %.sroa.3.0.copyload, -1
  br i1 %.not2.i.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtBd0_4Type27instantiate_many_with_inferIBP_INtNtNtB9_7sources4once4OnceRBdi_EIB42_Bdi_EEE00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbY_10GenericArgEE0E0E0E0EBd0_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.c, align 8, !noalias !480, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3r_5ArenaB2j_E4iter0ENCNvMs3_B2l_NtB2l_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5c_14SingleGenerics14iter_lifetimes0ENCNvB5b_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQQQNCINvB6_8map_foldTNtB2p_14GenericParamIdNtB2l_19GenericParamDataRefETB7A_INtNtBc_6option6OptionRB2j_EEuNCNvMNtNtB5e_11next_solver8genericsNtB92_8Generics4iter0QNCINvNvXs_B1u_IB1s_pEB6B_4fold9enumerateB8o_uNCINvNvB6B_8for_each4callTjB8o_ENCINvMss_NtB94_11generic_argNtBbg_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtBci_4Type27instantiate_many_with_inferINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRBcA_EIB1U_BcA_EEE00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbg_10GenericArgEE0E0E0E0EBci_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtBd0_4Type27instantiate_many_with_inferIBP_INtNtNtB9_7sources4once4OnceRBdi_EIB42_Bdi_EEE00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbY_10GenericArgEE0E0E0E0EBd0_.exit.i

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtBd0_4Type27instantiate_many_with_inferIBP_INtNtNtB9_7sources4once4OnceRBdi_EIB42_Bdi_EEE00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbY_10GenericArgEE0E0E0E0EBd0_.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !478
  br label %bb.g

bb.g:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtBd0_4Type27instantiate_many_with_inferIBP_INtNtNtB9_7sources4once4OnceRBdi_EIB42_Bdi_EEE00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbY_10GenericArgEE0E0E0E0EBd0_.exit.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i32, ptr %i.p, align 8, !range !25, !alias.scope !477, !noundef !9
  %.not2.i = icmp eq i32 %i.q, -1
  br i1 %.not2.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtBfB_4Type27instantiate_many_with_i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.d, align 8, !noalias !478, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB38_5ArenaB1X_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3Z_14SingleGenerics19iter_type_or_consts0ENCNvB3Y_30iter_type_or_consts_as_generic0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvB6_8map_foldTNtB23_14GenericParamIdNtB1Z_19GenericParamDataRefETB6S_INtNtBc_6option6OptionRNtB1Z_17LifetimeParamDataEEuNCNvMNtNtB41_11next_solver8genericsNtB8F_8Generics4iter0QNCINvNvXs_B18_IB16_pEB5U_4fold9enumerateB7G_uNCINvNvB5U_8for_each4callTjB7G_ENCINvMss_NtB8H_11generic_argNtBaT_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtBbV_4Type27instantiate_many_with_inferINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRBcd_EIB1y_Bcd_EEE00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBaT_10GenericArgEE0E0E0E0EBbV_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtBfB_4Type27instantiate_many_with_i

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtBfB_4Type27instantiate_many_with_i: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.i:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtBfB_4Type27instantiate_many_with_i, %bb.a
  %i.s = load i32, ptr %0, align 8, !range !25, !noundef !9
  %.not2 = icmp eq i32 %i.s, -1
  br i1 %.not2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.f, align 8, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3R_5ArenaB2J_E4iter0ENCNvMs3_B2L_NtB2L_13GenericParams18iter_late_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5B_14SingleGenerics25iter_late_bound_lifetimes0ENCNvB5A_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldTNtB2P_14GenericParamIdNtB2L_19GenericParamDataRefETB88_INtNtBc_6option6OptionRB2J_EEuNCNvMNtNtB5D_11next_solver8genericsNtB9A_8Generics4iter0QNCINvNvXs_B1U_IB1S_pEB7b_4fold9enumerateB8W_uNCINvNvB7b_8for_each4callTjB8W_ENCINvMss_NtB9C_11generic_argNtBbO_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtBcQ_4Type27instantiate_many_with_inferINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRBd8_EIB2k_Bd8_EEE00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbO_10GenericArgEE0E0E0E0EBcQ_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2W_INtNtB7_6filter6FilterIB2W_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB2d_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB58_5ArenaB4z_E4iter0ENCNvMs3_B2d_NtB2d_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6T_14SingleGenerics14iter_lifetimes0ENCNvB6S_4iter0EEIB2W_IB2W_IB2W_IB3I_IB4a_NtB2d_20TypeOrConstParamDataEENCNvMsm_B58_IB5w_B8I_E4iter0ENCNvB6S_19iter_type_or_consts0ENCNvB6S_30iter_type_or_consts_as_generic0EEIB2W_INtNtB7_10filter_map9FilterMapIB3h_B3C_NCNvB5Y_18iter_late_bound_lt0ENCNvB6S_25iter_late_bound_lifetimes0EB83_EENtNtNtB9_6traits8iterator8Iterator4folduQNCINvB2Y_8map_foldB1w_TB1x_INtB1b_6OptionRB4z_EEuNCNvMNtNtB6V_11next_solver8genericsNtBeh_8Generics4iter0QNCINvNvXs_B3K_IB3I_pEBcK_4fold9enumerateBdL_uNCINvNvBcK_8for_each4callTjBdL_ENCINvMss_NtBej_11generic_argNtBgv_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtBhw_4Type12has_any_impl00INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBgv_10GenericArgKja_EE0E0E0E0EBhw_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !492 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [120 x i8], align 8               ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i64, ptr %i.g, align 8, !range !22, !noundef !9
  %.not = icmp eq i64 %i.h, 3
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(120) %i.i, i64 120, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !493)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8, !noalias !494
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !23, !alias.scope !493, !noundef !9 ; 3 uses
  %.not.i = icmp eq i64 %i.k, -3
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !495
  %i.m = load <2 x i64>, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !494
  store ptr %i.d, ptr %i.c, align 8, !noalias !496
  %.not.i.i = icmp eq i64 %i.k, -2
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !496
  store ptr %i.c, ptr %i.b, align 8, !noalias !497
  %.not7.i.i.i = icmp eq i64 %i.k, -1
  br i1 %.not7.i.i.i, label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB8f_4Type12has_any_impl00INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0EB8f_.exit.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !497
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store <2 x i64> %i.m, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !497
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQQQNCINvNtNtNtBb_4iter8adapters3map8map_foldTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefETB1x_INtNtBb_6option6OptionRNtB2d_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB3T_8Generics4iter0QNCINvNvXs_NtBY_9enumerateINtB5a_9EnumeratepENtNtNtB10_6traits8iterator8Iterator4fold9enumerateB2U_uNCINvNvB5I_8for_each4callTjB2U_ENCINvMss_NtB3V_11generic_argNtB7g_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB8h_4Type12has_any_impl00INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7g_10GenericArgKja_EE0E0E0E0INtB7_5FnMutTuB1w_EE8call_mutB8h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !497
  br label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB8f_4Type12has_any_impl00INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0EB8f_.exit.i.i

_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB8f_4Type12has_any_impl00INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0EB8f_.exit.i.i: ; preds = %.lr.ph.split.us.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !496
  br label %bb.e

bb.e:                                             ; preds = %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB8f_4Type12has_any_impl00INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0EB8f_.exit.i.i, %bb.c
  %.not2.i.i = icmp eq i32 %.sroa.3.0.copyload, -1
  br i1 %.not2.i.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtBcZ_4Type12has_any_impl00INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0EBcZ_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.c, align 8, !noalias !496, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3r_5ArenaB2j_E4iter0ENCNvMs3_B2l_NtB2l_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5c_14SingleGenerics14iter_lifetimes0ENCNvB5b_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQQQNCINvB6_8map_foldTNtB2p_14GenericParamIdNtB2l_19GenericParamDataRefETB7A_INtNtBc_6option6OptionRB2j_EEuNCNvMNtNtB5e_11next_solver8genericsNtB92_8Generics4iter0QNCINvNvXs_B1u_IB1s_pEB6B_4fold9enumerateB8o_uNCINvNvB6B_8for_each4callTjB8o_ENCINvMss_NtB94_11generic_argNtBbg_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtBch_4Type12has_any_impl00INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbg_10GenericArgKja_EE0E0E0E0EBch_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtBcZ_4Type12has_any_impl00INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0EBcZ_.exit.i

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtBcZ_4Type12has_any_impl00INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0EBcZ_.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !494
  br label %bb.g

bb.g:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtBcZ_4Type12has_any_impl00INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0EBcZ_.exit.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i32, ptr %i.p, align 8, !range !25, !alias.scope !493, !noundef !9
  %.not2.i = icmp eq i32 %i.q, -1
  br i1 %.not2.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtBfA_4Type12has_any_impl00INtNtCs474, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.d, align 8, !noalias !494, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB38_5ArenaB1X_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3Z_14SingleGenerics19iter_type_or_consts0ENCNvB3Y_30iter_type_or_consts_as_generic0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvB6_8map_foldTNtB23_14GenericParamIdNtB1Z_19GenericParamDataRefETB6S_INtNtBc_6option6OptionRNtB1Z_17LifetimeParamDataEEuNCNvMNtNtB41_11next_solver8genericsNtB8F_8Generics4iter0QNCINvNvXs_B18_IB16_pEB5U_4fold9enumerateB7G_uNCINvNvB5U_8for_each4callTjB7G_ENCINvMss_NtB8H_11generic_argNtBaT_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtBbU_4Type12has_any_impl00INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBaT_10GenericArgKja_EE0E0E0E0EBbU_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtBfA_4Type12has_any_impl00INtNtCs474

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtBfA_4Type12has_any_impl00INtNtCs474: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.i:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtBfA_4Type12has_any_impl00INtNtCs474, %bb.a
  %i.s = load i32, ptr %0, align 8, !range !25, !noundef !9
  %.not2 = icmp eq i32 %i.s, -1
  br i1 %.not2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.f, align 8, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3R_5ArenaB2J_E4iter0ENCNvMs3_B2L_NtB2L_13GenericParams18iter_late_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5B_14SingleGenerics25iter_late_bound_lifetimes0ENCNvB5A_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldTNtB2P_14GenericParamIdNtB2L_19GenericParamDataRefETB88_INtNtBc_6option6OptionRB2J_EEuNCNvMNtNtB5D_11next_solver8genericsNtB9A_8Generics4iter0QNCINvNvXs_B1U_IB1S_pEB7b_4fold9enumerateB8W_uNCINvNvB7b_8for_each4callTjB8W_ENCINvMss_NtB9C_11generic_argNtBbO_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtBcP_4Type12has_any_impl00INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbO_10GenericArgKja_EE0E0E0E0EBcP_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2W_INtNtB7_6filter6FilterIB2W_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB2d_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB58_5ArenaB4z_E4iter0ENCNvMs3_B2d_NtB2d_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6T_14SingleGenerics14iter_lifetimes0ENCNvB6S_4iter0EEIB2W_IB2W_IB2W_IB3I_IB4a_NtB2d_20TypeOrConstParamDataEENCNvMsm_B58_IB5w_B8I_E4iter0ENCNvB6S_19iter_type_or_consts0ENCNvB6S_30iter_type_or_consts_as_generic0EEIB2W_INtNtB7_10filter_map9FilterMapIB3h_B3C_NCNvB5Y_18iter_late_bound_lt0ENCNvB6S_25iter_late_bound_lifetimes0EB83_EENtNtNtB9_6traits8iterator8Iterator4folduQNCINvB2Y_8map_foldB1w_TB1x_INtB1b_6OptionRB4z_EEuNCNvMNtNtB6V_11next_solver8genericsNtBeh_8Generics4iter0QNCINvNvXs_B3K_IB3I_pEBcK_4fold9enumerateBdL_uNCINvNvBcK_8for_each4callTjBdL_ENCINvMss_NtBej_11generic_argNtBgv_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtBhw_4Type12has_any_impl00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBgv_10GenericArgEE0E0E0E0EBhw_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !508 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [120 x i8], align 8               ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i64, ptr %i.g, align 8, !range !22, !noundef !9
  %.not = icmp eq i64 %i.h, 3
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(120) %i.i, i64 120, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8, !noalias !510
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !23, !alias.scope !509, !noundef !9 ; 3 uses
  %.not.i = icmp eq i64 %i.k, -3
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !511
  %i.m = load <2 x i64>, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !510
  store ptr %i.d, ptr %i.c, align 8, !noalias !512
  %.not.i.i = icmp eq i64 %i.k, -2
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !512
  store ptr %i.c, ptr %i.b, align 8, !noalias !513
  %.not7.i.i.i = icmp eq i64 %i.k, -1
  br i1 %.not7.i.i.i, label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB8f_4Type12has_any_impl00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB7e_10GenericArgEE0E0E0E0EB8f_.exit.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !513
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store <2 x i64> %i.m, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !513
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQQQNCINvNtNtNtBb_4iter8adapters3map8map_foldTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefETB1x_INtNtBb_6option6OptionRNtB2d_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB3T_8Generics4iter0QNCINvNvXs_NtBY_9enumerateINtB5a_9EnumeratepENtNtNtB10_6traits8iterator8Iterator4fold9enumerateB2U_uNCINvNvB5I_8for_each4callTjB2U_ENCINvMss_NtB3V_11generic_argNtB7g_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB8h_4Type12has_any_impl00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB7g_10GenericArgEE0E0E0E0INtB7_5FnMutTuB1w_EE8call_mutB8h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !513
  br label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB8f_4Type12has_any_impl00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB7e_10GenericArgEE0E0E0E0EB8f_.exit.i.i

_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB8f_4Type12has_any_impl00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB7e_10GenericArgEE0E0E0E0EB8f_.exit.i.i: ; preds = %.lr.ph.split.us.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !512
  br label %bb.e

bb.e:                                             ; preds = %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB8f_4Type12has_any_impl00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB7e_10GenericArgEE0E0E0E0EB8f_.exit.i.i, %bb.c
  %.not2.i.i = icmp eq i32 %.sroa.3.0.copyload, -1
  br i1 %.not2.i.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtBcZ_4Type12has_any_impl00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbY_10GenericArgEE0E0E0E0EBcZ_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.c, align 8, !noalias !512, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3r_5ArenaB2j_E4iter0ENCNvMs3_B2l_NtB2l_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5c_14SingleGenerics14iter_lifetimes0ENCNvB5b_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQQQNCINvB6_8map_foldTNtB2p_14GenericParamIdNtB2l_19GenericParamDataRefETB7A_INtNtBc_6option6OptionRB2j_EEuNCNvMNtNtB5e_11next_solver8genericsNtB92_8Generics4iter0QNCINvNvXs_B1u_IB1s_pEB6B_4fold9enumerateB8o_uNCINvNvB6B_8for_each4callTjB8o_ENCINvMss_NtB94_11generic_argNtBbg_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtBch_4Type12has_any_impl00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbg_10GenericArgEE0E0E0E0EBch_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtBcZ_4Type12has_any_impl00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbY_10GenericArgEE0E0E0E0EBcZ_.exit.i

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtBcZ_4Type12has_any_impl00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbY_10GenericArgEE0E0E0E0EBcZ_.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !510
  br label %bb.g

bb.g:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtBcZ_4Type12has_any_impl00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbY_10GenericArgEE0E0E0E0EBcZ_.exit.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i32, ptr %i.p, align 8, !range !25, !alias.scope !509, !noundef !9
  %.not2.i = icmp eq i32 %i.q, -1
  br i1 %.not2.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtBfA_4Type12has_any_impl00INtNtCsbSS, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.d, align 8, !noalias !510, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB38_5ArenaB1X_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3Z_14SingleGenerics19iter_type_or_consts0ENCNvB3Y_30iter_type_or_consts_as_generic0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvB6_8map_foldTNtB23_14GenericParamIdNtB1Z_19GenericParamDataRefETB6S_INtNtBc_6option6OptionRNtB1Z_17LifetimeParamDataEEuNCNvMNtNtB41_11next_solver8genericsNtB8F_8Generics4iter0QNCINvNvXs_B18_IB16_pEB5U_4fold9enumerateB7G_uNCINvNvB5U_8for_each4callTjB7G_ENCINvMss_NtB8H_11generic_argNtBaT_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtBbU_4Type12has_any_impl00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBaT_10GenericArgEE0E0E0E0EBbU_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtBfA_4Type12has_any_impl00INtNtCsbSS

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtBfA_4Type12has_any_impl00INtNtCsbSS: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.i:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtBfA_4Type12has_any_impl00INtNtCsbSS, %bb.a
  %i.s = load i32, ptr %0, align 8, !range !25, !noundef !9
  %.not2 = icmp eq i32 %i.s, -1
  br i1 %.not2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.f, align 8, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3R_5ArenaB2J_E4iter0ENCNvMs3_B2L_NtB2L_13GenericParams18iter_late_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5B_14SingleGenerics25iter_late_bound_lifetimes0ENCNvB5A_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldTNtB2P_14GenericParamIdNtB2L_19GenericParamDataRefETB88_INtNtBc_6option6OptionRB2J_EEuNCNvMNtNtB5D_11next_solver8genericsNtB9A_8Generics4iter0QNCINvNvXs_B1U_IB1S_pEB7b_4fold9enumerateB8W_uNCINvNvB7b_8for_each4callTjB8W_ENCINvMss_NtB9C_11generic_argNtBbO_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtBcP_4Type12has_any_impl00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbO_10GenericArgEE0E0E0E0EBcP_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtB7_6copied6CopiedINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB2p_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9MacroCallEENtB2p_11MacroCallIdEEIB15_IB1r_IB2l_B3a_IB3r_NtB47_4ItemEEB54_EEEINtNtB7_7flatten7FlatMapIB1r_IB2l_B3a_IB3r_NtB47_3AdtEEINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationj1_EEIB68_INtNtNtBb_5slice4iter4IterB7A_EIB68_INtB6a_7FlattenIB15_IB8K_INtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherB54_NtB7E_19BuiltinDeriveImplIdEEEEEIB9J_B54_ENCNCNCNvMs1_B7C_NtB7C_9ItemScope15all_macro_calls000ENCBbn_0ENCBbp_0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvBcr_8for_each4callB54_NCNvMs4_Cs8Xq8PKFYOms_3hirNtBdG_6Module11diagnostics0E0EBdG_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(416) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !587 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = alloca [40 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [80 x i8], align 8                ; 5 uses
  %i.k = load i64, ptr %0, align 8, !range !10, !noundef !9
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.j, ptr noundef nonnull align 8 dereferenceable(80) %i.m, i64 80, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !588)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %1, ptr %i.i, align 8, !noalias !589
  %i.n = load ptr, ptr %i.j, align 8, !alias.scope !588, !noundef !9
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB21_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9MacroCallEENtB21_11MacroCallIdEENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvNvB51_8for_each4callB4G_NCNvMs4_Cs8Xq8PKFYOms_3hirNtB6i_6Module11diagnostics0E0EB6i_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !588, !noundef !9
  %.not2.i = icmp eq ptr %i.p, null
  br i1 %.not2.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtB7_6copied6CopiedINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB2l_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9MacroCallEENtB2l_11MacroCallIdEEIB11_IB1n_IB2h_B36_IB3n_NtB43_4ItemEEB50_EEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB63_8for_each4callB50_NCNvMs4_Cs8Xq8PKFYOms_3hirNtB7j_6Module11diagnostics0E0EB7j_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.i, align 8, !noalias !589, !nonnull !9, !align !24, !noundef !9
  call void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB21_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtB21_11MacroCallIdEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB4W_8for_each4callB4B_NCNvMs4_Cs8Xq8PKFYOms_3hirNtB6c_6Module11diagnostics0E0EB6c_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtB7_6copied6CopiedINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB2l_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9MacroCallEENtB2l_11MacroCallIdEEIB11_IB1n_IB2h_B36_IB3n_NtB43_4ItemEEB50_EEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB63_8for_each4callB50_NCNvMs4_Cs8Xq8PKFYOms_3hirNtB7j_6Module11diagnostics0E0EB7j_.exit

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtB7_6copied6CopiedINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB2l_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9MacroCallEENtB2l_11MacroCallIdEEIB11_IB1n_IB2h_B36_IB3n_NtB43_4ItemEEB50_EEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB63_8for_each4callB50_NCNvMs4_Cs8Xq8PKFYOms_3hirNtB7j_6Module11diagnostics0E0EB7j_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.f

bb.f:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtB7_6copied6CopiedINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB2l_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9MacroCallEENtB2l_11MacroCallIdEEIB11_IB1n_IB2h_B36_IB3n_NtB43_4ItemEEB50_EEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB63_8for_each4callB50_NCNvMs4_Cs8Xq8PKFYOms_3hirNtB7j_6Module11diagnostics0E0EB7j_.exit, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.s = load i32, ptr %i.r, align 4, !range !26, !noundef !9 ; 3 uses
  %.not = icmp eq i32 %i.s, -2
  br i1 %.not, label %bb.u, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.0.0.copyload = load ptr, ptr %i.t, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 172
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 4 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 196
  %.sroa.102.0.copyload = load i32, ptr %.sroa.102.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 236
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.sroa.13.0.copyload = load i64, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 260
  %.sroa.143.0.copyload = load i32, ptr %.sroa.143.0..sroa_idx, align 4 ; 2 uses
  %.sroa.154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.sroa.154.0.copyload = load ptr, ptr %.sroa.154.0..sroa_idx, align 8 ; 2 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.sroa.16.0.copyload = load ptr, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 316
  %.sroa.18.0.copyload = load i32, ptr %.sroa.18.0..sroa_idx, align 4 ; 2 uses
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.sroa.19.0.copyload = load i64, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 340
  %.sroa.205.0.copyload = load i32, ptr %.sroa.205.0..sroa_idx, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 380
  %.sroa.22.0.copyload = load i32, ptr %.sroa.22.0..sroa_idx, align 4 ; 2 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 384
  %.sroa.23.0.copyload = load i64, ptr %.sroa.23.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !590
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.not.i.i.i = icmp eq i32 %.sroa.143.0.copyload, -1
  br i1 %.not.i.i.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !591
  store ptr %i.h, ptr %i.f, align 8, !noalias !592
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.sroa.102.0.copyload, 2
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.8.0.copyload, -2
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %_RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtBa_7FlatMapINtBa_7FlattenINtNtBc_6copied6CopiedINtNtNtBg_5slice4iter4IterINtNtBg_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEEIB3j_B49_ENCNCNCNvMs1_NtB4Q_10item_scopeNtB5Y_9ItemScope15all_macro_calls000EuQNCINvNvB1j_8for_each4callB49_NCNvMs4_Cs8Xq8PKFYOms_3hirNtB7u_6Module11diagnostics0E0E0B7u_.exit.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !593
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.e, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.7.0..sroa_idx, i64 28, i1 false)
  %.sroa.4.0..sroa_idx1.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store i32 %.sroa.8.0.copyload, ptr %.sroa.4.0..sroa_idx1.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !593
  %.sroa.5.0..sroa_idx3.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %.sroa.9.0.copyload, ptr %.sroa.5.0..sroa_idx3.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !593
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_7flatten7FlattenINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEENCNCNCNvMs1_NtB3F_10item_scopeNtB4D_9ItemScope15all_macro_calls000ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB10_11flatten_oneIB28_B2Y_EuQQNCINvNvB5w_8for_each4callB2Y_NCNvMs4_Cs8Xq8PKFYOms_3hirNtB7k_6Module11diagnostics0E0E0EB7k_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f), !noalias !594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !593
  br label %_RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtBa_7FlatMapINtBa_7FlattenINtNtBc_6copied6CopiedINtNtNtBg_5slice4iter4IterINtNtBg_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEEIB3j_B49_ENCNCNCNvMs1_NtB4Q_10item_scopeNtB5Y_9ItemScope15all_macro_calls000EuQNCINvNvB1j_8for_each4callB49_NCNvMs4_Cs8Xq8PKFYOms_3hirNtB7u_6Module11diagnostics0E0E0B7u_.exit.i.i.i.i.i.i.i

_RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtBa_7FlatMapINtBa_7FlattenINtNtBc_6copied6CopiedINtNtNtBg_5slice4iter4IterINtNtBg_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEEIB3j_B49_ENCNCNCNvMs1_NtB4Q_10item_scopeNtB5Y_9ItemScope15all_macro_calls000EuQNCINvNvB1j_8for_each4callB49_NCNvMs4_Cs8Xq8PKFYOms_3hirNtB7u_6Module11diagnostics0E0E0B7u_.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.not5.i.i.i.i.i.i.i = icmp eq ptr %.sroa.5.0.copyload, null
  br i1 %.not5.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtBa_7FlatMapINtBa_7FlattenINtNtBc_6copied6CopiedINtNtNtBg_5slice4iter4IterINtNtBg_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEEIB3j_B49_ENCNCNCNvMs1_NtB4Q_10item_scopeNtB5Y_9ItemScope15all_macro_calls000EuQNCINvNvB1j_8for_each4callB49_NCNvMs4_Cs8Xq8PKFYOms_3hirNtB7u_6Module11diagnostics0E0E0B7u_.exit.i.i.i.i.i.i.i
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationENCNCNvMs1_B1p_NtB1p_9ItemScope15all_macro_calls00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB40_13FlattenCompatppE9iter_fold7flattenINtB40_7FlatMapINtB40_7FlattenINtNtB8_6copied6CopiedIBY_INtNtBc_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtB1r_19BuiltinDeriveImplIdEEEEEIB5P_B6F_ENCNCB2p_00EuNCINvNvXsi_B40_B4d_B3b_4fold7flattenB4U_uQNCINvNvB3b_8for_each4callB6F_NCNvMs4_Cs8Xq8PKFYOms_3hirNtB9t_6Module11diagnostics0E0E0E0EB9t_(ptr noundef nonnull %.sroa.5.0.copyload, ptr noundef %.sroa.6.0.copyload, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f), !noalias !595
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtBa_7FlatMapINtBa_7FlattenINtNtBc_6copied6CopiedINtNtNtBg_5slice4iter4IterINtNtBg_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEEIB3j_B49_ENCNCNCNvMs1_NtB4Q_10item_scopeNtB5Y_9ItemScope15all_macro_calls000EuQNCINvNvB1j_8for_each4callB49_NCNvMs4_Cs8Xq8PKFYOms_3hirNtB7u_6Module11diagnostics0E0E0B7u_.exit.i.i.i.i.i.i.i
  %.not6.i.i.i.i.i.i.i = icmp eq i32 %.sroa.143.0.copyload, 2
  %.not.i.i.i9.i.i.i.i.i.i.i = icmp eq i32 %.sroa.12.0.copyload, -2
  %or.cond3.i.i.i.i.i = select i1 %.not6.i.i.i.i.i.i.i, i1 true, i1 %.not.i.i.i9.i.i.i.i.i.i.i
  br i1 %or.cond3.i.i.i.i.i, label %_RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtBa_7FlatMapINtNtNtBg_5slice4iter4IterNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationEIB25_INtBa_7FlattenINtNtBc_6copied6CopiedIB2j_INtNtBg_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtB2M_19BuiltinDeriveImplIdEEEEEIB4t_B5j_ENCNCNCNvMs1_B2K_NtB2K_9ItemScope15all_macro_calls000ENCB6I_0EuNCINvNvB1j_8for_each4callB5j_NCNvMs4_Cs8Xq8PKFYOms_3hirNtB8f_6Module11diagnostics0E0E0B8f_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !596
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.d, ptr noundef nonnull align 8 dereferenceable(28) %i.u, i64 28, i1 false)
end_hunk_0
