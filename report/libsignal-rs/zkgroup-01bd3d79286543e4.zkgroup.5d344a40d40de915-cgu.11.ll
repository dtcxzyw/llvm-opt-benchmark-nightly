Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/zkgroup-01bd3d79286543e4.zkgroup.5d344a40d40de915-cgu.11?download=true
inline.NumInlined: 184
inline.NumDeleted: 111
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvXsh_Cs7yXBOrgAdI3_6subtleINtB5_8CtOptionAhj20_ENtB5_23ConditionallySelectable18conditional_selectCs807GXlIGG3x_7zkgroup:bb.a
  %i.bm = xor i8 %i.bl, %i.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.bm, ptr %i.bn, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.c:                                             ; preds = %_RNvXsd_Cs7yXBOrgAdI3_6subtleAhj20_NtB5_23ConditionallySelectable18conditional_selectCs807GXlIGG3x_7zkgroup.exit
  call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_neg_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsh_NtNtCs807GXlIGG3x_7zkgroup3api21generic_server_paramsNtB5_25GenericServerSecretParamsNtCs7CX08mopLjc_15partial_default14PartialDefault15partial_default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1640 x i8]) align 8 captures(none) dereferenceable(1640) initializes((0, 1640)) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [1632 x i8], align 8              ; 3 uses
  call void @_RNvXs7_NtCs17t5S1clqUH_12zkcredential11credentialsNtB5_20CredentialPrivateKeyNtCs7CX08mopLjc_15partial_default14PartialDefault15partial_default(ptr noalias nofree noundef nonnull sret([512 x i8]) align 8 captures(none) dereferenceable(512) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  call void @_RNvXs9_NtCs17t5S1clqUH_12zkcredential11credentialsNtB5_19CredentialPublicKeyNtCs7CX08mopLjc_15partial_default14PartialDefault15partial_default(ptr noalias nofree noundef nonnull sret([1120 x i8]) align 8 captures(none) dereferenceable(1120) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1632) %i.c, ptr noundef nonnull align 8 dereferenceable(1632) %i.a, i64 1632, i1 false)
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsl_NtNtCs807GXlIGG3x_7zkgroup3api21generic_server_paramsINtB5_29GenericServerPublicParamsImplKh0_ENtCs7CX08mopLjc_15partial_default14PartialDefault15partial_defaultB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1120 x i8]) align 8 captures(none) dereferenceable(1120) %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs9_NtCs17t5S1clqUH_12zkcredential11credentialsNtB5_19CredentialPublicKeyNtCs7CX08mopLjc_15partial_default14PartialDefault15partial_default(ptr noalias nofree noundef nonnull sret([1120 x i8]) align 8 captures(none) dereferenceable(1120) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsl_NtNtCs807GXlIGG3x_7zkgroup3api21generic_server_paramsINtB5_29GenericServerPublicParamsImplKh1_ENtCs7CX08mopLjc_15partial_default14PartialDefault15partial_defaultB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1120 x i8]) align 8 captures(none) dereferenceable(1120) %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs9_NtCs17t5S1clqUH_12zkcredential11credentialsNtB5_19CredentialPublicKeyNtCs7CX08mopLjc_15partial_default14PartialDefault15partial_default(ptr noalias nofree noundef nonnull sret([1120 x i8]) align 8 captures(none) dereferenceable(1120) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsn_NtNtCs807GXlIGG3x_7zkgroup3api21generic_server_paramsNtB5_25GenericServerPublicParamsNtCs7CX08mopLjc_15partial_default14PartialDefault15partial_default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1128 x i8]) align 8 captures(none) dereferenceable(1128) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs9_NtCs17t5S1clqUH_12zkcredential11credentialsNtB5_19CredentialPublicKeyNtCs7CX08mopLjc_15partial_default14PartialDefault15partial_default(ptr noalias nofree noundef nonnull sret([1120 x i8]) align 8 captures(none) dereferenceable(1120) %i.a)
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCNvNtNtCs807GXlIGG3x_7zkgroup6crypto22profile_key_commitment13SYSTEM_PARAMS0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceuE9call_onceBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([480 x i8]) align 8 captures(none) dereferenceable(480) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [488 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !279
  call void @_RINvNtNtCs807GXlIGG3x_7zkgroup6common13serialization11deserializeNtNtNtB6_6crypto22profile_key_commitment12SystemParamsEB6_(ptr noalias nofree noundef nonnull sret([488 x i8]) align 8 captures(none) dereferenceable(488) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 96), !noalias !279
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  %i.c = load i64, ptr %i.b, align 8, !range !7, !alias.scope !281, !noalias !279, !noundef !5
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RNCNvNtNtCs807GXlIGG3x_7zkgroup6crypto22profile_key_commitment13SYSTEM_PARAMS0B7_.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !282
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !281, !noalias !279, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !281, !noalias !279, !noundef !5
  store ptr %i.f, ptr %i.a, align 8, !noalias !282
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.h, ptr %i.i, align 8, !noalias !282
  call void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 22, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #19, !noalias !282
  unreachable

_RNCNvNtNtCs807GXlIGG3x_7zkgroup6crypto22profile_key_commitment13SYSTEM_PARAMS0B7_.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef nonnull readonly align 8 dereferenceable(480) %i.j, i64 480, i1 false), !alias.scope !283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !279
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvYNtCsj2Wav7G13rI_4sha26Sha256NtCs2KKWnYNkHVH_6digest11FixedOutput14finalize_fixedCs807GXlIGG3x_7zkgroup(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 1 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(104) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [64 x i8], align 1                ; 4 uses
  %i.c = alloca [64 x i8], align 1                ; 4 uses
  %i.d = alloca [64 x i8], align 1                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %i.f = alloca [64 x i8], align 1                ; 4 uses
  %i.g = alloca [64 x i8], align 1                ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [4 x i8], align 4                 ; 4 uses
  %i.j = alloca [72 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 1                ; 6 uses
  %i.l = alloca [104 x i8], align 8               ; 15 uses
  %i.m = alloca [32 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB20_2B0EB2d_EB2d_EB2d_EB2d_EE11try_from_fnNtNtCsgxBkk5gSRhY_4core7convert10InfallibleNCINvB2_7from_fnNCNvXsg_B5_BF_NtNtB2Z_7default7Default7default0E0ECs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(none) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB20_2B0EB2d_EB2d_EB2d_EB2d_EE7from_fnNCNvXsg_B5_BF_NtNtCsgxBkk5gSRhY_4core7default7Default7default0ECs807GXlIGG3x_7zkgroup.exit unwind label %bb.i

_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB20_2B0EB2d_EB2d_EB2d_EB2d_EE7from_fnNCNvXsg_B5_BF_NtNtCsgxBkk5gSRhY_4core7default7Default7default0ECs807GXlIGG3x_7zkgroup.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.l, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 104, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !340)
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !342
  invoke void @_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB20_2B0EB2d_EB2d_EB2d_EB2d_EE11try_from_fnNtNtCsgxBkk5gSRhY_4core7convert10InfallibleNCINvB2_7from_fnNCNvXsg_B5_BF_NtNtB2Z_7default7Default7default0E0ECs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(none) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull %i.a)
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !343

.noexc.i:                                         ; preds = %_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB20_2B0EB2d_EB2d_EB2d_EB2d_EE7from_fnNCNvXsg_B5_BF_NtNtCsgxBkk5gSRhY_4core7default7Default7default0ECs807GXlIGG3x_7zkgroup.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !344)
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 63 ; 3 uses
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !346, !noundef !5 ; 2 uses
  %i.q = zext nneg i8 %i.p to i64                 ; 3 uses
  %i.r = icmp ult i8 %i.p, 64
  call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 96 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !347, !noundef !5
  %i.u = shl i64 %i.t, 9
  %i.v = shl nuw nsw i64 %i.q, 3
  %i.w = or disjoint i64 %i.u, %i.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !348
  %i.x = call i64 @llvm.bswap.i64(i64 %i.w)
  store i64 %i.x, ptr %i.h, align 8, !noalias !348
  %i.y = xor i64 %i.q, 63                         ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.q ; 2 uses
  store i8 -128, ptr %i.z, align 1, !alias.scope !349
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aa, i8 0, i64 %i.y, i1 false), !alias.scope !349
  %i.ab = icmp samesign ult i64 %i.y, 8
  br i1 %i.ab, label %bb.c, label %bb.e

bb.b:                                             ; preds = %bb.f, %bb.e, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  store i8 0, ptr %i.o, align 1, !alias.scope !350, !noalias !351
  br label %.body.i

bb.c:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.l, i64 64, i1 false), !noalias !353
  invoke void @_RNvNtCsj2Wav7G13rI_4sha26sha25611compress256(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 1)
          to label %bb.d unwind label %bb.b, !noalias !354

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.l, i8 0, i64 64, i1 false), !alias.scope !346, !noalias !355
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  invoke void @_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull %i.ad, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12)
          to label %bb.f unwind label %bb.b, !noalias !356

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !357
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.l, i64 64, i1 false), !noalias !353
  invoke void @_RNvNtCsj2Wav7G13rI_4sha26sha25611compress256(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 1)
          to label %_RINvMs7_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB3l_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core0ECs807GXlIGG3x_7zkgroup.exit.i.i.i unwind label %bb.b, !noalias !356

_RINvMs7_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB3l_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core0ECs807GXlIGG3x_7zkgroup.exit.i.i.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !357
  store i8 0, ptr %i.o, align 1, !alias.scope !358, !noalias !359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !348
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !360
  store ptr %i.ae, ptr %i.e, align 8, !noalias !361
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !361
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.k, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !361
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 32, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !361
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 4, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !361
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !348
  invoke void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E3newCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull %i.s)
          to label %.noexc1.i unwind label %.loopexit.split-lp.i, !noalias !362

.noexc1.i:                                        ; preds = %_RINvMs7_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB3l_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core0ECs807GXlIGG3x_7zkgroup.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !360
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 2 uses
  %i.ah = load i64, ptr %i.af, align 8, !alias.scope !363, !noalias !348, !noundef !5 ; 2 uses
  %i.ai = load i64, ptr %i.ag, align 8, !alias.scope !363, !noalias !348, !noundef !5
  %i.aj = icmp ult i64 %i.ah, %i.ai
  br i1 %i.aj, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCs807GXlIGG3x_7zkgroup.exit.lr.ph.i.i.i, label %_RNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB5_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core.exit.i.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCs807GXlIGG3x_7zkgroup.exit.lr.ph.i.i.i: ; preds = %.noexc1.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  br label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCs807GXlIGG3x_7zkgroup.exit.i.i.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCs807GXlIGG3x_7zkgroup.exit.i.i.i: ; preds = %.noexc3.i, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCs807GXlIGG3x_7zkgroup.exit.lr.ph.i.i.i
  %i.al = phi i64 [ %i.ah, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCs807GXlIGG3x_7zkgroup.exit.lr.ph.i.i.i ], [ %i.at, %.noexc3.i ] ; 3 uses
  %i.am = add nuw i64 %i.al, 1
  store i64 %i.am, ptr %i.af, align 8, !alias.scope !363, !noalias !348
  %i.an = invoke { ptr, i64 } @_RNvXs1y_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.j, i64 noundef %i.al)
          to label %.noexc2.i unwind label %.loopexit.split-lp.i, !noalias !362 ; 2 uses

.noexc2.i:                                        ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCs807GXlIGG3x_7zkgroup.exit.i.i.i
  %i.ao = extractvalue { ptr, i64 } %i.an, 0      ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i, label %_RNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB5_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.noexc2.i
  %i.ap = extractvalue { ptr, i64 } %i.an, 1
  %.val.i.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !363, !noalias !348, !nonnull !5, !noundef !5
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i, i64 %i.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !348
  %i.ar = load i32, ptr %i.aq, align 4, !noalias !364, !noundef !5
  %i.as = call i32 @llvm.bswap.i32(i32 %i.ar)
  store i32 %i.as, ptr %i.i, align 4, !noalias !348
  invoke void @_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull %i.ao, i64 noundef %i.ap, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79)
          to label %.noexc3.i unwind label %.loopexit.split-lp.i, !noalias !362

.noexc3.i:                                        ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !348
  %i.at = load i64, ptr %i.af, align 8, !alias.scope !363, !noalias !348, !noundef !5 ; 2 uses
  %i.au = load i64, ptr %i.ag, align 8, !alias.scope !363, !noalias !348, !noundef !5
  %i.av = icmp ult i64 %i.at, %i.au
  br i1 %i.av, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCs807GXlIGG3x_7zkgroup.exit.i.i.i, label %_RNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB5_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core.exit.i.i

_RNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB5_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core.exit.i.i: ; preds = %.noexc3.i, %.noexc2.i, %.noexc1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !348
  invoke void @_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull dereferenceable(32) %i.m, i64 noundef 32, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82)
          to label %_RNvXs4_Csj2Wav7G13rI_4sha2NtB5_6Sha256NtCs2KKWnYNkHVH_6digest11FixedOutput13finalize_into.exit unwind label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %bb.g, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCs807GXlIGG3x_7zkgroup.exit.i.i.i, %_RNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB5_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core.exit.i.i, %_RINvMs7_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB3l_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core0ECs807GXlIGG3x_7zkgroup.exit.i.i.i, %_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB20_2B0EB2d_EB2d_EB2d_EB2d_EE7from_fnNCNvXsg_B5_BF_NtNtCsgxBkk5gSRhY_4core7default7Default7default0ECs807GXlIGG3x_7zkgroup.exit
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ac, %bb.b ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.d, i8 0, i64 64, i1 false), !noalias !365
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(104) %i.l, ptr nonnull align 1 %i.d, i64 64, i1 true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(104) %i.l) #22, !srcloc !6
  invoke void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull %i.n)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtCsj2Wav7G13rI_4sha26Sha256ECs807GXlIGG3x_7zkgroup.exit.i unwind label %bb.h

_RNvXs4_Csj2Wav7G13rI_4sha2NtB5_6Sha256NtCs2KKWnYNkHVH_6digest11FixedOutput13finalize_into.exit: ; preds = %_RNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB5_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.c, i8 0, i64 64, i1 false), !noalias !366
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(104) %i.l, ptr nonnull align 1 %i.c, i64 64, i1 true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(104) %i.l) #22, !srcloc !6
  call void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) %i.m, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.h:                                             ; preds = %.body.i
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtCsj2Wav7G13rI_4sha26Sha256ECs807GXlIGG3x_7zkgroup.exit.i: ; preds = %bb.i, %.body.i
  %.pn5 = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.ax, %bb.i ]
  resume { ptr, i32 } %.pn5

bb.i:                                             ; preds = %bb.a
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.b, i8 0, i64 64, i1 false), !noalias !367
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(104) %1, ptr nonnull align 1 %i.b, i64 64, i1 true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(104) %1) #22, !srcloc !6
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull %i.ay)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtCsj2Wav7G13rI_4sha26Sha256ECs807GXlIGG3x_7zkgroup.exit.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB20_2B0EB2d_EB2d_EB2d_EB2d_EE11try_from_fnNtNtCsgxBkk5gSRhY_4core7convert10InfallibleNCINvB2_7from_fnNCNvXsg_B5_BF_NtNtB2Z_7default7Default7default0E0ECs807GXlIGG3x_7zkgroup(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 1 captures(none) dereferenceable(32), ptr noalias nofree noundef nonnull) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsP_NtCsgxBkk5gSRhY_4core5arrayAhj10_NtNtB7_7default7Default7defaultCs807GXlIGG3x_7zkgroup(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 1 captures(none) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsdRrpXuHtjOb_16curve25519_dalek6lizard16lizard_ristrettoNtNtB6_9ristretto14RistrettoPoint34elligator_ristretto_flavor_inverse(ptr dead_on_unwind noalias nofree noundef writable sret([768 x i8]) align 8 captures(none) dereferenceable(768), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs8_NtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6serial3u645fieldNtB5_14FieldElement518to_bytes(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 1 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsz_NtCsgxBkk5gSRhY_4core5arrayAhj20_NtNtB7_7default7Default7defaultCs807GXlIGG3x_7zkgroup(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 1 captures(none) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECs5xjgei055gZ_13password_hash(i8 noundef) unnamed_addr #10

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_neg_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsdRrpXuHtjOb_16curve25519_dalek6lizard16lizard_ristrettoNtNtB6_9ristretto14RistrettoPoint23map_to_curve_restricted(ptr dead_on_unwind noalias nofree noundef writable sret([160 x i8]) align 8 captures(address) dereferenceable(160), ptr noalias nofree noundef align 1 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs0_NtNtNtNtCs9k3SxhrAWiO_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4, i1 noundef zeroext, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs6i54tJFfzR_5alloc3vec14spec_from_iterINtB4_3VecNtNvMs9_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB11_14RistrettoPoint25double_and_compress_batch18BatchCompressStateEINtB2_12SpecFromIterBT_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapIB3f_INtNtNtB3n_5slice4iter4IterTjB1J_EENCNvMs_NtNtNtCs807GXlIGG3x_7zkgroup3api6groups22group_send_endorsementNtB4N_29GroupSendEndorsementsResponse11sort_points0ENvYBT_INtNtB3n_7convert4FromRB1J_E4fromEE9from_iterB4T_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs6i54tJFfzR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6serial3u645field14FieldElement51EINtB2_12SpecFromIterBT_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapINtNtNtB2L_5slice4iter4IterNtNvMs9_NtB13_9ristrettoNtB3Z_14RistrettoPoint25double_and_compress_batch18BatchCompressStateENCIB3T_IB2D_IB3r_TjB4f_EENCNvMs_NtNtNtCs807GXlIGG3x_7zkgroup3api6groups22group_send_endorsementNtB5T_29GroupSendEndorsementsResponse11sort_points0EE0EE9from_iterB5Z_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCsdRrpXuHtjOb_16curve25519_dalek5fieldNtNtNtNtNtB7_7backend6serial3u645field14FieldElement5118invert_batch_alloc(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs6i54tJFfzR_5alloc3vec14spec_from_iterINtB4_3VecNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto19CompressedRistrettoEINtB2_12SpecFromIterBT_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapINtNtB2r_3zip3ZipINtNtNtB2v_5slice4iter4IterNtNvMs9_BV_NtBV_14RistrettoPoint25double_and_compress_batch18BatchCompressStateEIB3s_NtNtNtNtNtBX_7backend6serial3u645field14FieldElement51EENCIB3U_IB2n_IB3s_TjB43_EENCNvMs_NtNtNtCs807GXlIGG3x_7zkgroup3api6groups22group_send_endorsementNtB6F_29GroupSendEndorsementsResponse11sort_points0EEs_0EE9from_iterB6L_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6serial3u645field14FieldElement51ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNvMs9_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtBM_14RistrettoPoint25double_and_compress_batch18BatchCompressStateENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6serial3u645field14FieldElement51ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNvMs9_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtBT_14RistrettoPoint25double_and_compress_batch18BatchCompressStateENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsm_NtCsgxBkk5gSRhY_4core5arrayAlj4_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarENCINvMBN_BK_10wrap_mut_1lNCINvXNtNtCs807GXlIGG3x_7zkgroup6common11array_utilsAB1r_Bz_INtB2L_9ArrayLikeB1r_E6createNCNvMs5_NtNtB2P_6crypto11credentialsINtB4e_7KeyPairNtB4e_14AuthCredentialE8generate0E0E0EB2P_(ptr dead_on_unwind noalias nofree noundef writable sret([128 x i8]) align 1 captures(address) dereferenceable(128), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsm_NtCsgxBkk5gSRhY_4core5arrayAlj4_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarENCINvMBN_BK_10wrap_mut_1lNCINvXNtNtCs807GXlIGG3x_7zkgroup6common11array_utilsAB1r_Bz_INtB2L_9ArrayLikeB1r_E6createNCNvMs5_NtNtB2P_6crypto11credentialsINtB4e_7KeyPairNtB4e_17ReceiptCredentialE8generate0E0E0EB2P_(ptr dead_on_unwind noalias nofree noundef writable sret([128 x i8]) align 1 captures(address) dereferenceable(128), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsm_NtCsgxBkk5gSRhY_4core5arrayAlj4_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarENCINvMBN_BK_10wrap_mut_1lNCINvXNtNtCs807GXlIGG3x_7zkgroup6common11array_utilsAB1r_Bz_INtB2L_9ArrayLikeB1r_E6createNCNvMs5_NtNtB2P_6crypto11credentialsINtB4e_7KeyPairNtB4e_20ProfileKeyCredentialE8generate0E0E0EB2P_(ptr dead_on_unwind noalias nofree noundef writable sret([128 x i8]) align 1 captures(address) dereferenceable(128), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsm_NtCsgxBkk5gSRhY_4core5arrayAlj5_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarENCINvMBN_BK_10wrap_mut_1lNCINvXNtNtCs807GXlIGG3x_7zkgroup6common11array_utilsAB1r_Bz_INtB2L_9ArrayLikeB1r_E6createNCNvMs5_NtNtB2P_6crypto11credentialsINtB4e_7KeyPairNtB4e_21AuthCredentialWithPniE8generate0E0E0EB2P_(ptr dead_on_unwind noalias nofree noundef writable sret([160 x i8]) align 1 captures(address) dereferenceable(160), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(20), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsm_NtCsgxBkk5gSRhY_4core5arrayAlj5_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarENCINvMBN_BK_10wrap_mut_1lNCINvXNtNtCs807GXlIGG3x_7zkgroup6common11array_utilsAB1r_Bz_INtB2L_9ArrayLikeB1r_E6createNCNvMs5_NtNtB2P_6crypto11credentialsINtB4e_7KeyPairNtB4e_28ExpiringProfileKeyCredentialE8generate0E0E0EB2P_(ptr dead_on_unwind noalias nofree noundef writable sret([160 x i8]) align 1 captures(address) dereferenceable(160), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(20), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsm_NtCsgxBkk5gSRhY_4core5arrayAlj6_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarENCINvMBN_BK_10wrap_mut_1lNCINvXNtNtCs807GXlIGG3x_7zkgroup6common11array_utilsAB1r_Bz_INtB2L_9ArrayLikeB1r_E6createNCNvMs5_NtNtB2P_6crypto11credentialsINtB4e_7KeyPairNtB4e_13PniCredentialE8generate0E0E0EB2P_(ptr dead_on_unwind noalias nofree noundef writable sret([192 x i8]) align 1 captures(address) dereferenceable(192), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1_NtCsfzLoC2LLPWN_7bincode2deQINtB6_12DeserializerNtNtB6_4read11SliceReaderINtNtB8_6config17WithOtherTrailingINtB1k_15WithOtherEndianINtB1k_20WithOtherIntEncodingNtB1k_14DefaultOptionsNtNtB1k_3int14FixintEncodingENtNtB1k_6endian12LittleEndianENtNtB1k_8trailing14RejectTrailingEENtNtCs6yNvtpc0TEA_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs807GXlIGG3x_7zkgroup3api21generic_server_paramss1_1__NtB5K_33GenericServerSecretParamsStandardNtB4A_11Deserialize11deserialize9___VisitorEB5O_(ptr dead_on_unwind noalias nofree noundef writable sret([1640 x i8]) align 8 captures(address) dereferenceable(1640), ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1_NtCsfzLoC2LLPWN_7bincode2deQINtB6_12DeserializerNtNtB6_4read11SliceReaderINtNtB8_6config17WithOtherTrailingINtB1k_15WithOtherEndianINtB1k_20WithOtherIntEncodingNtB1k_14DefaultOptionsNtNtB1k_3int14FixintEncodingENtNtB1k_6endian12LittleEndianENtNtB1k_8trailing14RejectTrailingEENtNtCs6yNvtpc0TEA_10serde_core2de12Deserializer18deserialize_structINtNvXNvNtNtCs807GXlIGG3x_7zkgroup3api21generic_server_paramss4_1__INtB5L_29GenericServerPublicParamsImplKpENtB4A_11Deserialize11deserialize9___VisitorKh0_EEB5P_(ptr dead_on_unwind noalias nofree noundef writable sret([1128 x i8]) align 8 captures(address) dereferenceable(1128), ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1_NtCsfzLoC2LLPWN_7bincode2deQINtB6_12DeserializerNtNtB6_4read11SliceReaderINtNtB8_6config17WithOtherTrailingINtB1k_15WithOtherEndianINtB1k_20WithOtherIntEncodingNtB1k_14DefaultOptionsNtNtB1k_3int14FixintEncodingENtNtB1k_6endian12LittleEndianENtNtB1k_8trailing14RejectTrailingEENtNtCs6yNvtpc0TEA_10serde_core2de12Deserializer18deserialize_structINtNvXNvNtNtCs807GXlIGG3x_7zkgroup3api21generic_server_paramss4_1__INtB5L_29GenericServerPublicParamsImplKpENtB4A_11Deserialize11deserialize9___VisitorKh1_EEB5P_(ptr dead_on_unwind noalias nofree noundef writable sret([1128 x i8]) align 8 captures(address) dereferenceable(1128), ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1_NtCsfzLoC2LLPWN_7bincode2deQINtB6_12DeserializerNtNtB6_4read11SliceReaderINtNtB8_6config17WithOtherTrailingINtB1k_15WithOtherEndianINtB1k_20WithOtherIntEncodingNtB1k_14DefaultOptionsNtNtB1k_3int14FixintEncodingENtNtB1k_6endian12LittleEndianENtNtB1k_8trailing14RejectTrailingEENtNtCs6yNvtpc0TEA_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs807GXlIGG3x_7zkgroup3api21generic_server_paramss_1__NtB5K_31GenericServerSecretParamsLegacyNtB4A_11Deserialize11deserialize9___VisitorEB5O_(ptr dead_on_unwind noalias nofree noundef writable sret([1640 x i8]) align 8 captures(address) dereferenceable(1640), ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1_NtCsfzLoC2LLPWN_7bincode2deQINtB6_12DeserializerNtNtB6_4read11SliceReaderINtNtB8_6config17WithOtherTrailingINtB1k_15WithOtherEndianINtB1k_20WithOtherIntEncodingNtB1k_14DefaultOptionsNtNtB1k_3int14FixintEncodingENtNtB1k_6endian12LittleEndianENtNtB1k_8trailing14RejectTrailingEENtNtCs6yNvtpc0TEA_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs807GXlIGG3x_7zkgroup6crypto22profile_key_commitments_1__NtB5K_12SystemParamsNtB4A_11Deserialize11deserialize9___VisitorEB5O_(ptr dead_on_unwind noalias nofree noundef writable sret([488 x i8]) align 8 captures(address) dereferenceable(488), ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_19CompressedRistretto10decompress(ptr dead_on_unwind noalias nofree noundef writable sret([168 x i8]) align 8 captures(none) dereferenceable(168), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvXs1_NtCsfzLoC2LLPWN_7bincode5errorINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtB6_9ErrorKindENtNtCs6yNvtpc0TEA_10serde_core2de5Error6customReECs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCs6yNvtpc0TEA_10serde_core2deReNtB5_8Expected3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvYINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCsfzLoC2LLPWN_7bincode5error9ErrorKindENtNtCs6yNvtpc0TEA_10serde_core2de5Error14invalid_lengthCs807GXlIGG3x_7zkgroup(i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsdRrpXuHtjOb_16curve25519_dalek6scalarNtB2_6Scalar20from_canonical_bytes(ptr dead_on_unwind noalias nofree noundef writable sret([33 x i8]) align 1 captures(none) dereferenceable(33), ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1_NtCsfzLoC2LLPWN_7bincode2deQINtB6_12DeserializerNtNtB6_4read11SliceReaderINtNtB8_6config17WithOtherTrailingINtB1k_15WithOtherEndianINtB1k_20WithOtherIntEncodingNtB1k_14DefaultOptionsNtNtB1k_3int14FixintEncodingENtNtB1k_6endian12LittleEndianENtNtB1k_8trailing14RejectTrailingEENtNtCs6yNvtpc0TEA_10serde_core2de12Deserializer17deserialize_tupleINtNtB4A_5impls12ArrayVisitorANtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto14RistrettoPointj6_EECs807GXlIGG3x_7zkgroup(ptr dead_on_unwind noalias nofree noundef writable sret([968 x i8]) align 8 captures(address) dereferenceable(968), ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1_NtCsfzLoC2LLPWN_7bincode2deQINtB6_12DeserializerNtNtB6_4read11SliceReaderINtNtB8_6config17WithOtherTrailingINtB1k_15WithOtherEndianINtB1k_20WithOtherIntEncodingNtB1k_14DefaultOptionsNtNtB1k_3int14FixintEncodingENtNtB1k_6endian12LittleEndianENtNtB1k_8trailing14RejectTrailingEENtNtCs6yNvtpc0TEA_10serde_core2de12Deserializer17deserialize_tupleINtNtB4A_5impls12ArrayVisitorANtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6Scalarj7_EECs807GXlIGG3x_7zkgroup(ptr dead_on_unwind noalias nofree noundef writable sret([232 x i8]) align 8 captures(address) dereferenceable(232), ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs9_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPoint8compress(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 1 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1_NtCsfzLoC2LLPWN_7bincode2deQINtB6_12DeserializerNtNtB6_4read11SliceReaderINtNtB8_6config17WithOtherTrailingINtB1k_15WithOtherEndianINtB1k_20WithOtherIntEncodingNtB1k_14DefaultOptionsNtNtB1k_3int14FixintEncodingENtNtB1k_6endian12LittleEndianENtNtB1k_8trailing14RejectTrailingEENtNtCs6yNvtpc0TEA_10serde_core2de12Deserializer17deserialize_tupleNtNvXs7_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5K_14RistrettoPointNtB4A_11Deserialize11deserialize21RistrettoPointVisitorECs807GXlIGG3x_7zkgroup(ptr dead_on_unwind noalias nofree noundef writable sret([168 x i8]) align 8 captures(address) dereferenceable(168), ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvXs_NtCsfzLoC2LLPWN_7bincode3serQINtB4_10SerializerQINtNtCs6i54tJFfzR_5alloc3vec3VechEINtNtB6_6config14WithOtherLimitINtB1r_17WithOtherTrailingINtB1r_15WithOtherEndianINtB1r_20WithOtherIntEncodingNtB1r_14DefaultOptionsNtNtB1r_3int14FixintEncodingENtNtB1r_6endian12LittleEndianENtNtB1r_8trailing14RejectTrailingENtNtB1r_5limit8InfiniteEENtNtCs6yNvtpc0TEA_10serde_core3ser10Serializer12serialize_u8Cs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef align 8 dereferenceable(8), i8 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvXs1_NtCsfzLoC2LLPWN_7bincode3serQINtB5_11SizeCheckerQINtNtB7_6config14WithOtherLimitINtBV_17WithOtherTrailingINtBV_15WithOtherEndianINtBV_20WithOtherIntEncodingNtBV_14DefaultOptionsNtNtBV_3int14FixintEncodingENtNtBV_6endian12LittleEndianENtNtBV_8trailing14RejectTrailingENtNtBV_5limit8InfiniteEENtNtCs6yNvtpc0TEA_10serde_core3ser10Serializer12serialize_u8Cs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef align 8 dereferenceable(16), i8 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvXs1_NtCsfzLoC2LLPWN_7bincode3serQINtB5_11SizeCheckerQINtNtB7_6config17WithOtherTrailingINtBV_15WithOtherEndianINtBV_20WithOtherIntEncodingNtBV_14DefaultOptionsNtNtBV_3int14FixintEncodingENtNtBV_6endian12LittleEndianENtNtBV_8trailing14RejectTrailingEENtNtCs6yNvtpc0TEA_10serde_core3ser10Serializer12serialize_u8Cs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef align 8 dereferenceable(16), i8 noundef) unnamed_addr #1

end_hunk_0
