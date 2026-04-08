inline.NumInlined: 132
inline.NumDeleted: 66
begin_hunk_0_@_RNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyEE5force0E0Csa5Qem16B4JI_15deltalake_azure:bb.a
_RNCNvMNtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB4_8LazyLockINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyEE5force0Csa5Qem16B4JI_15deltalake_azure.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %i.f(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
end_hunk_0
begin_hunk_1_@_RNSNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyEE5force0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCsa5Qem16B4JI_15deltalake_azure:bb.a
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !43, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !51, !noalias !54, !align !43, !noundef !4 ; 3 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !51, !noalias !54
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val.i.i = load i8, ptr %i.d, align 4, !range !50, !noalias !57, !noundef !4
  %i.e = trunc nuw i8 %.val.i.i to i1
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyEE5force0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCsa5Qem16B4JI_15deltalake_azure.exit, !prof !23

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std4sync9lazy_lock14panic_poisoned() #17, !noalias !57
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #17, !noalias !57
  unreachable

_RNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyEE5force0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCsa5Qem16B4JI_15deltalake_azure.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !noalias !57, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !57
  call void %i.f(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a), !noalias !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !57
  ret void
}

end_hunk_1
begin_hunk_2_@_RNvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4_17AzureConfigHelper5build:bb.a
.lr.ph296:                                        ; preds = %bb.d, %bb.e
  %.sroa.03.0294 = phi ptr [ %i.ah, %bb.e ], [ %i.z, %bb.d ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.03.0294, i64 1 ; 2 uses
  %.sroa.03.0.val = load i8, ptr %.sroa.03.0294, align 1, !range !58, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !59
  invoke fastcc void @_RNvMNtCsa5Qem16B4JI_15deltalake_azure6configNtB2_15AzureCredential4keys(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, i8 %.sroa.03.0.val)
          to label %.noexc unwind label %.thread158.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %.lr.ph296
  %i.ai = load ptr, ptr %i.ad, align 8, !noalias !59, !nonnull !4, !noundef !4 ; 2 uses
  %i.aj = load i64, ptr %i.ae, align 8, !noalias !59, !noundef !4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  %i.al = icmp samesign eq i64 %i.aj, 0
  br i1 %i.al, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB2J_17AzureConfigHelper15has_full_config0EB2L_.exit.i, label %.lr.ph292
end_hunk_2
begin_hunk_3_@_RNvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4_17AzureConfigHelper5build:bb.a
  unreachable

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyEECsa5Qem16B4JI_15deltalake_azure.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !59
  br i1 %.lcssa, label %.loopexit204, label %bb.e

._crit_edge297:                                   ; preds = %bb.e, %bb.d
end_hunk_3
begin_hunk_4_@_RNvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4_17AzureConfigHelper5build:bb.a
bb.k:                                             ; preds = %.lr.ph, %bb.r
  %.sroa.05.0219 = phi ptr [ %i.au, %.lr.ph ], [ %i.ba, %bb.r ] ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.05.0219, i64 1 ; 2 uses
  %.sroa.05.0.val77 = load i8, ptr %.sroa.05.0219, align 1, !range !58, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !62
  invoke fastcc void @_RNvMNtCsa5Qem16B4JI_15deltalake_azure6configNtB2_15AzureCredential4keys(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, i8 %.sroa.05.0.val77)
          to label %.noexc85 unwind label %.thread158.loopexit.split-lp.loopexit

.noexc85:                                         ; preds = %bb.k
  %i.bb = load ptr, ptr %i.ay, align 8, !noalias !62, !nonnull !4, !noundef !4 ; 2 uses
  %i.bc = load i64, ptr %i.az, align 8, !noalias !62, !noundef !4 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bc
  %.not.not.not.i.not.not.not.i.not298 = icmp samesign eq i64 %i.bc, 0
  br i1 %.not.not.not.i.not.not.not.i.not298, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB2J_17AzureConfigHelper14has_any_config0EB2L_.exit.i, label %.lr.ph300
end_hunk_4
begin_hunk_5_@_RNvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4_17AzureConfigHelper5build:bb.a
  unreachable

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyEECsa5Qem16B4JI_15deltalake_azure.exit.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !62
  br i1 %.not.not.not.i.not.not.not.i.not.lcssa, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.05.0.val79 = load i8, ptr %.sroa.05.0219, align 1, !range !58, !noundef !4
  %i.bl = invoke fastcc noundef zeroext i1 @_RNvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4_17AzureConfigHelper24has_full_config_with_env(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1, i8 %.sroa.05.0.val79)
          to label %bb.s unwind label %.thread158.loopexit.split-lp.loopexit

end_hunk_5
begin_hunk_6_@_RNvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4_17AzureConfigHelper5build:bb.a

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %.sroa.05.0.val = load i8, ptr %.sroa.05.0219, align 1, !range !58, !noundef !4
  invoke fastcc void @_RNvMNtCsa5Qem16B4JI_15deltalake_azure6configNtB2_15AzureCredential4keys(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.v, i8 %.sroa.05.0.val)
          to label %bb.u unwind label %.thread158.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

end_hunk_6
begin_hunk_7_@_RNvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4_17AzureConfigHelper5build:bb.a

bb.v:                                             ; preds = %.lr.ph221, %bb.ad
  %i.cb = phi ptr [ %i.bo, %.lr.ph221 ], [ %i.dh, %bb.ad ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  store ptr %i.cc, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !65
  %i.cd = load i8, ptr %i.cb, align 1, !range !36, !noalias !65, !noundef !4 ; 2 uses
  store i8 %i.cd, ptr %i.t, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMNtCs3gpiEk3WpjL_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entryCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.w, i8 noundef %i.cd)
end_hunk_7
begin_hunk_8_@_RNvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4_17AzureConfigHelper5build:bb.a
  br label %.loopexit204

bb.w:                                             ; preds = %bb.v
  %i.ce = load i8, ptr %i.bv, align 8, !range !68, !noundef !4 ; 2 uses
  %.not67 = icmp eq i8 %i.ce, 41
  br i1 %.not67, label %bb.ac, label %bb.x

end_hunk_8
begin_hunk_9_@_RNvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4_17AzureConfigHelper5build:bb.a
  %.sroa.544.0.copyload = load i64, ptr %.sroa.544.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.cf = load i64, ptr %i.bx, align 8, !alias.scope !69, !noalias !72, !noundef !4
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %select.unfold, label %bb.y

end_hunk_9
begin_hunk_10_@_RNvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4_17AzureConfigHelper5build:bb.a
          to label %.noexc94 unwind label %.loopexit.split-lp191.loopexit ; 2 uses

.noexc94:                                         ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.ci = lshr i64 %i.ch, 57
  %i.cj = trunc nuw nsw i64 %i.ci to i8
  %i.ck = load i64, ptr %i.bz, align 8, !alias.scope !80, !noalias !81, !noundef !4 ; 2 uses
  %i.cl = load ptr, ptr %i.bw, align 8, !alias.scope !80, !noalias !81, !nonnull !4, !noundef !4 ; 2 uses
  %i.cm = insertelement <16 x i8> poison, i8 %i.cj, i64 0
  %i.cn = shufflevector <16 x i8> %i.cm, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.z
end_hunk_10
begin_hunk_11_@_RNvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4_17AzureConfigHelper5build:bb.a
  %.pn.i.i.i = phi i64 [ %i.ch, %.noexc94 ], [ %i.df, %bb.ab ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.ck   ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i21.i.i = load <16 x i8>, ptr %i.co, align 1, !noalias !83 ; 2 uses
  %i.cp = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i, %i.cn
  %i.cq = bitcast <16 x i1> %i.cp to i16          ; 2 uses
  %.not.i.not27.i.i = icmp eq i16 %i.cq, 0
end_hunk_11
begin_hunk_12_@_RNvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4_17AzureConfigHelper5build:bb.a
          to label %.noexc95 unwind label %.loopexit190

.noexc95:                                         ; preds = %.lr.ph.i.i
  br i1 %i.cy, label %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECsa5Qem16B4JI_15deltalake_azure.exit, label %bb.aa, !prof !86

._crit_edge.i.i:                                  ; preds = %bb.aa, %bb.z
  %i.cz = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i, splat (i8 -1)
end_hunk_12
begin_hunk_13_@_RNvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4_17AzureConfigHelper5build:bb.a
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ag, %bb.ac
  %i.dg = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !87, !nonnull !4, !noundef !4
  %i.dh = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !87, !nonnull !4, !noundef !4 ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.dg
  br i1 %i.di, label %._crit_edge222, label %bb.v

end_hunk_13
begin_hunk_14_@_RNvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4_17AzureConfigHelper5build:bb.a

.lr.ph304:                                        ; preds = %._crit_edge, %bb.ai
  %.sroa.016.0303 = phi ptr [ %i.dq, %bb.ai ], [ %i.dn, %._crit_edge ] ; 3 uses
  %.sroa.016.0.val78 = load i8, ptr %.sroa.016.0303, align 1, !range !58, !noundef !4
  %i.ds = invoke fastcc noundef zeroext i1 @_RNvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4_17AzureConfigHelper24has_full_config_with_env(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1, i8 %.sroa.016.0.val78)
          to label %bb.aj unwind label %.thread158.loopexit

end_hunk_14
begin_hunk_15_@_RNvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4_17AzureConfigHelper5build:bb.a

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %.sroa.016.0.val = load i8, ptr %.sroa.016.0303, align 1, !range !58, !noundef !4
  invoke fastcc void @_RNvMNtCsa5Qem16B4JI_15deltalake_azure6configNtB2_15AzureCredential4keys(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.r, i8 %.sroa.016.0.val)
          to label %bb.al unwind label %.thread158.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

end_hunk_15
begin_hunk_16_@_RNvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4_17AzureConfigHelper5build:bb.a

bb.am:                                            ; preds = %.lr.ph224, %bb.av
  %i.ej = phi ptr [ %i.dw, %.lr.ph224 ], [ %i.fr, %bb.av ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  store ptr %i.ek, ptr %.sroa.420.0..sroa_idx, align 8, !alias.scope !89
  %i.el = load i8, ptr %i.ej, align 1, !range !36, !noalias !89, !noundef !4 ; 2 uses
  store i8 %i.el, ptr %i.p, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMNtCs3gpiEk3WpjL_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entryCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.w, i8 noundef %i.el)
end_hunk_16
begin_hunk_17_@_RNvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4_17AzureConfigHelper5build:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.em = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsa5Qem16B4JI_15deltalake_azure6config15CREDENTIAL_KEYS, i64 24) acquire, align 8
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyEE5force0ECsa5Qem16B4JI_15deltalake_azure.exit, label %bb.an, !prof !86

bb.an:                                            ; preds = %.loopexit204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
end_hunk_17
begin_hunk_18_@_RNvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4_17AzureConfigHelper5build:bb.a
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyEE5force0ECsa5Qem16B4JI_15deltalake_azure.exit

bb.ao:                                            ; preds = %bb.am
  %i.eo = load i8, ptr %i.ed, align 8, !range !68, !noundef !4 ; 2 uses
  %.not70 = icmp eq i8 %i.eo, 41
  br i1 %.not70, label %bb.au, label %bb.ap

end_hunk_18
begin_hunk_19_@_RNvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4_17AzureConfigHelper5build:bb.a
  %.sroa.552.0.copyload = load i64, ptr %.sroa.552.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ep = load i64, ptr %i.ef, align 8, !alias.scope !92, !noalias !95, !noundef !4
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %select.unfold167, label %bb.aq

end_hunk_19
begin_hunk_20_@_RNvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4_17AzureConfigHelper5build:bb.a
          to label %.noexc116 unwind label %.loopexit.split-lp181.loopexit ; 2 uses

.noexc116:                                        ; preds = %bb.aq
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.es = lshr i64 %i.er, 57
  %i.et = trunc nuw nsw i64 %i.es to i8
  %i.eu = load i64, ptr %i.eh, align 8, !alias.scope !103, !noalias !104, !noundef !4 ; 2 uses
  %i.ev = load ptr, ptr %i.ee, align 8, !alias.scope !103, !noalias !104, !nonnull !4, !noundef !4 ; 2 uses
  %i.ew = insertelement <16 x i8> poison, i8 %i.et, i64 0
  %i.ex = shufflevector <16 x i8> %i.ew, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ar
end_hunk_20
begin_hunk_21_@_RNvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4_17AzureConfigHelper5build:bb.a
  %.pn.i.i.i104 = phi i64 [ %i.er, %.noexc116 ], [ %i.fp, %bb.at ]
  %.sroa.01.0.i.i.i105 = and i64 %.pn.i.i.i104, %i.eu ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 %.sroa.01.0.i.i.i105
  %.sroa.0.0.copyload.i21.i.i106 = load <16 x i8>, ptr %i.ey, align 1, !noalias !106 ; 2 uses
  %i.ez = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i106, %i.ex
  %i.fa = bitcast <16 x i1> %i.ez to i16          ; 2 uses
  %.not.i.not27.i.i107 = icmp eq i16 %i.fa, 0
end_hunk_21
begin_hunk_22_@_RNvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4_17AzureConfigHelper5build:bb.a
          to label %.noexc117 unwind label %.loopexit180

.noexc117:                                        ; preds = %.lr.ph.i.i108
  br i1 %i.fi, label %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECsa5Qem16B4JI_15deltalake_azure.exit118, label %bb.as, !prof !86

._crit_edge.i.i111:                               ; preds = %bb.as, %bb.ar
  %i.fj = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i106, splat (i8 -1)
end_hunk_22
begin_hunk_23_@_RNvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4_17AzureConfigHelper5build:bb.a
  br label %bb.av

bb.av:                                            ; preds = %bb.ax, %bb.au
  %i.fq = load ptr, ptr %.sroa.622.0..sroa_idx, align 8, !alias.scope !109, !nonnull !4, !noundef !4
  %i.fr = load ptr, ptr %.sroa.420.0..sroa_idx, align 8, !alias.scope !109, !nonnull !4, !noundef !4 ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.fq
  br i1 %i.fs, label %._crit_edge225, label %bb.am

end_hunk_23
begin_hunk_24_@_RNvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4_17AzureConfigHelper5build:bb.a
          to label %bb.bm unwind label %.loopexit.split-lp.loopexit

bb.bm:                                            ; preds = %bb.bl
  %i.gp = load i8, ptr %i.fy, align 8, !range !68, !noundef !4 ; 2 uses
  %.not73 = icmp eq i8 %i.gp, 41
  br i1 %.not73, label %bb.bs, label %bb.bn

end_hunk_24
begin_hunk_25_@_RNvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4_17AzureConfigHelper5build:bb.a
  %.sroa.563.0.copyload = load i64, ptr %.sroa.563.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.gq = load i64, ptr %i.fz, align 8, !alias.scope !111, !noalias !114, !noundef !4
  %i.gr = icmp eq i64 %i.gq, 0
  br i1 %i.gr, label %select.unfold170, label %bb.bo

end_hunk_25
begin_hunk_26_@_RNvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4_17AzureConfigHelper5build:bb.a
          to label %.noexc137 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc137:                                        ; preds = %bb.bo
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.gt = lshr i64 %i.gs, 57
  %i.gu = trunc nuw nsw i64 %i.gt to i8
  %i.gv = load i64, ptr %i.gb, align 8, !alias.scope !122, !noalias !123, !noundef !4 ; 2 uses
  %i.gw = load ptr, ptr %i.fv, align 8, !alias.scope !122, !noalias !123, !nonnull !4, !noundef !4 ; 2 uses
  %i.gx = insertelement <16 x i8> poison, i8 %i.gu, i64 0
  %i.gy = shufflevector <16 x i8> %i.gx, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bp
end_hunk_26
begin_hunk_27_@_RNvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4_17AzureConfigHelper5build:bb.a
  %.pn.i.i.i125 = phi i64 [ %i.gs, %.noexc137 ], [ %i.hq, %bb.br ]
  %.sroa.01.0.i.i.i126 = and i64 %.pn.i.i.i125, %i.gv ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.sroa.01.0.i.i.i126
  %.sroa.0.0.copyload.i21.i.i127 = load <16 x i8>, ptr %i.gz, align 1, !noalias !125 ; 2 uses
  %i.ha = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i127, %i.gy
  %i.hb = bitcast <16 x i1> %i.ha to i16          ; 2 uses
  %.not.i.not27.i.i128 = icmp eq i16 %i.hb, 0
end_hunk_27
begin_hunk_28_@_RNvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4_17AzureConfigHelper5build:bb.a
          to label %.noexc138 unwind label %.loopexit

.noexc138:                                        ; preds = %.lr.ph.i.i129
  br i1 %i.hj, label %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECsa5Qem16B4JI_15deltalake_azure.exit139, label %bb.bq, !prof !86

._crit_edge.i.i132:                               ; preds = %bb.bq, %bb.bp
  %i.hk = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i127, splat (i8 -1)
end_hunk_28
begin_hunk_29_@_RNvYNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsa5Qem16B4JI_15deltalake_azure:bb.a
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !50, !noalias !128, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Csa5Qem16B4JI_15deltalake_azure.exit, label %bb.b, !prof !86

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsa5Qem16B4JI_15deltalake_azure(ptr noundef nonnull align 8 %i.a, ptr noalias noundef align 8 dereferenceable_or_null(24) %0)
end_hunk_29
begin_hunk_30_@_RNvYNCNvNtCsa5Qem16B4JI_15deltalake_azure6config15CREDENTIAL_KEYS0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceB8_
define internal void @_RNvYNCNvNtCsa5Qem16B4JI_15deltalake_azure6config15CREDENTIAL_KEYS0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceB8_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !133
  store i64 0, ptr %i.a, align 8, !noalias !133
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 8, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !133
  %.sroa.529.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <8 x i8> <i8 20, i8 21, i8 32, i8 24, i8 25, i8 29, i8 30, i8 31>, ptr %.sroa.529.0..sroa_idx.i, align 8, !noalias !133
  call void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyEINtB4_18SpecFromIterNestedB13_INtNtNtCsbvkFyIu7lgC_4core5array4iter8IntoIterB13_Kj8_EE9from_iterCsa5Qem16B4JI_15deltalake_azure(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !133
  ret void
}

end_hunk_30
begin_hunk_31_@llvm.experimental.noalias.scope.decl
!48 = distinct !{!48, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECsa5Qem16B4JI_15deltalake_azure"}
!49 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!50 = !{i8 0, i8 2}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_RNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyEE5force0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCsa5Qem16B4JI_15deltalake_azure: argument 0"}
!53 = distinct !{!53, !"_RNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyEE5force0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCsa5Qem16B4JI_15deltalake_azure"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_RNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyEE5force0E0Csa5Qem16B4JI_15deltalake_azure: argument 0"}
!56 = distinct !{!56, !"_RNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyEE5force0E0Csa5Qem16B4JI_15deltalake_azure"}
!57 = !{!55, !52}
!58 = !{i8 0, i8 6}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_RNvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4_17AzureConfigHelper15has_full_config: argument 0"}
!61 = distinct !{!61, !"_RNvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4_17AzureConfigHelper15has_full_config"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_RNvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4_17AzureConfigHelper14has_any_config: argument 0"}
!64 = distinct !{!64, !"_RNvMs_NtCsa5Qem16B4JI_15deltalake_azure6configNtB4_17AzureConfigHelper14has_any_config"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsa5Qem16B4JI_15deltalake_azure: argument 0"}
!67 = distinct !{!67, !"_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsa5Qem16B4JI_15deltalake_azure"}
!68 = !{i8 0, i8 42}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECsa5Qem16B4JI_15deltalake_azure: argument 0"}
!71 = distinct !{!71, !"_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECsa5Qem16B4JI_15deltalake_azure"}
!72 = !{!73}
!73 = distinct !{!73, !71, !"_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECsa5Qem16B4JI_15deltalake_azure: argument 1"}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1S_E0ECsa5Qem16B4JI_15deltalake_azure: argument 0"}
!76 = distinct !{!76, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1S_E0ECsa5Qem16B4JI_15deltalake_azure"}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!79 = distinct !{!79, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!80 = !{!78, !75, !70}
!81 = !{!82, !73}
!82 = distinct !{!82, !76, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1S_E0ECsa5Qem16B4JI_15deltalake_azure: argument 1"}
!83 = !{!84, !78, !75}
!84 = distinct !{!84, !85, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!85 = distinct !{!85, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128"}
!86 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!87 = !{!88}
!88 = distinct !{!88, !67, !"_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsa5Qem16B4JI_15deltalake_azure: argument 0:h.rot"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsa5Qem16B4JI_15deltalake_azure: argument 0"}
!91 = distinct !{!91, !"_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsa5Qem16B4JI_15deltalake_azure"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECsa5Qem16B4JI_15deltalake_azure: argument 0"}
!94 = distinct !{!94, !"_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECsa5Qem16B4JI_15deltalake_azure"}
!95 = !{!96}
!96 = distinct !{!96, !94, !"_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECsa5Qem16B4JI_15deltalake_azure: argument 1"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1S_E0ECsa5Qem16B4JI_15deltalake_azure: argument 0"}
!99 = distinct !{!99, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1S_E0ECsa5Qem16B4JI_15deltalake_azure"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!102 = distinct !{!102, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!103 = !{!101, !98, !93}
!104 = !{!105, !96}
!105 = distinct !{!105, !99, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1S_E0ECsa5Qem16B4JI_15deltalake_azure: argument 1"}
!106 = !{!107, !101, !98}
!107 = distinct !{!107, !108, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!108 = distinct !{!108, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128"}
!109 = !{!110}
!110 = distinct !{!110, !91, !"_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsa5Qem16B4JI_15deltalake_azure: argument 0:h.rot"}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECsa5Qem16B4JI_15deltalake_azure: argument 0"}
!113 = distinct !{!113, !"_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECsa5Qem16B4JI_15deltalake_azure"}
!114 = !{!115}
!115 = distinct !{!115, !113, !"_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECsa5Qem16B4JI_15deltalake_azure: argument 1"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1S_E0ECsa5Qem16B4JI_15deltalake_azure: argument 0"}
!118 = distinct !{!118, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1S_E0ECsa5Qem16B4JI_15deltalake_azure"}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!121 = distinct !{!121, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!122 = !{!120, !117, !112}
!123 = !{!124, !115}
!124 = distinct !{!124, !118, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store5azure7builder14AzureConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1S_E0ECsa5Qem16B4JI_15deltalake_azure: argument 1"}
!125 = !{!126, !120, !117}
!126 = distinct !{!126, !127, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!127 = distinct !{!127, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128"}
!128 = !{!129, !131}
!129 = distinct !{!129, !130, !"_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECsa5Qem16B4JI_15deltalake_azure: argument 0"}
!130 = distinct !{!130, !"_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECsa5Qem16B4JI_15deltalake_azure"}
!131 = distinct !{!131, !132, !"_RNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Csa5Qem16B4JI_15deltalake_azure: argument 0"}
!132 = distinct !{!132, !"_RNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Csa5Qem16B4JI_15deltalake_azure"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_RNCNvNtCsa5Qem16B4JI_15deltalake_azure6config15CREDENTIAL_KEYS0B5_: argument 0"}
!135 = distinct !{!135, !"_RNCNvNtCsa5Qem16B4JI_15deltalake_azure6config15CREDENTIAL_KEYS0B5_"}
end_hunk_31
