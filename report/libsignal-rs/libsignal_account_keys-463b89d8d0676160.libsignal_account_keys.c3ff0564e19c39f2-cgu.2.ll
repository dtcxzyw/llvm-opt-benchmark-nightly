Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/libsignal_account_keys-463b89d8d0676160.libsignal_account_keys.c3ff0564e19c39f2-cgu.2?download=true
inline.NumInlined: 179
inline.NumDeleted: 93
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCsh1373Z0TDxr_8protobuf19coded_output_stream13output_target12OutputTargetECsgPhy1OgDtny_22libsignal_account_keys:bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsgPhy1OgDtny_22libsignal_account_keys.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMCsgPhy1OgDtny_22libsignal_account_keysNtB2_18AccountEntropyPool14derive_svr_key(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 1 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [64 x i8], align 1                ; 4 uses
  %i.c = alloca [64 x i8], align 1                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [176 x i8], align 8               ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = alloca [144 x i8], align 8               ; 10 uses
  %i.h = alloca [32 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMs_Cs7QbGsRJVG1P_4hkdfINtB4_11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EE7extractCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.e, ptr noalias nofree noundef readonly captures(address, read_provenance) null, i64 undef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef 64)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.g, ptr noundef nonnull align 8 dereferenceable(144) %i.f, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @6, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 30, ptr %i.i, align 8
  %i.j = invoke noundef zeroext i1 @_RNvMs_Cs7QbGsRJVG1P_4hkdfINtB4_11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EE17expand_multi_infoCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.d, i64 noundef 1, ptr noalias nofree noundef nonnull %i.h, i64 noundef 32)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.c, i8 0, i64 64, i1 false), !noalias !123
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(144) %i.g, ptr nonnull align 1 %i.c, i64 64, i1 true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(144) %i.g) #14, !srcloc !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  invoke void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull %i.l)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCs7QbGsRJVG1P_4hkdf11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EEECsgPhy1OgDtny_22libsignal_account_keys.exit unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.j, label %bb.d, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCs7QbGsRJVG1P_4hkdf6errors13InvalidLengthE6expectCsgPhy1OgDtny_22libsignal_account_keys.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #18
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.d
  unreachable

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCs7QbGsRJVG1P_4hkdf6errors13InvalidLengthE6expectCsgPhy1OgDtny_22libsignal_account_keys.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.b, i8 0, i64 64, i1 false), !noalias !124
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(144) %i.g, ptr nonnull align 1 %i.b, i64 64, i1 true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(144) %i.g) #14, !srcloc !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  call void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) %i.h, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCs7QbGsRJVG1P_4hkdf11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EEECsgPhy1OgDtny_22libsignal_account_keys.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_CsgPhy1OgDtny_22libsignal_account_keysNtB4_6SvrKey18derive_logging_key(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 1 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RNvMs_CsgPhy1OgDtny_22libsignal_account_keysNtB4_6SvrKey6derive(ptr noalias nofree noundef align 1 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 11)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_CsgPhy1OgDtny_22libsignal_account_keysNtB4_6SvrKey24derive_mfa_metadata_keys(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 1 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RNvMs_CsgPhy1OgDtny_22libsignal_account_keysNtB4_6SvrKey6derive(ptr noalias nofree noundef align 1 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 33)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @_RNvMs_CsgPhy1OgDtny_22libsignal_account_keysNtB4_6SvrKey6derive(ptr noalias nofree noundef align 1 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 37)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_CsgPhy1OgDtny_22libsignal_account_keysNtB4_6SvrKey24derive_registration_lock(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 1 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RNvMs_CsgPhy1OgDtny_22libsignal_account_keysNtB4_6SvrKey6derive(ptr noalias nofree noundef align 1 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 17)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_CsgPhy1OgDtny_22libsignal_account_keysNtB4_6SvrKey26derive_storage_service_key(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 1 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RNvMs_CsgPhy1OgDtny_22libsignal_account_keysNtB4_6SvrKey6derive(ptr noalias nofree noundef align 1 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 26)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_CsgPhy1OgDtny_22libsignal_account_keysNtB4_6SvrKey37derive_registration_recovery_password(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 1 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RNvMs_CsgPhy1OgDtny_22libsignal_account_keysNtB4_6SvrKey6derive(ptr noalias nofree noundef align 1 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 21)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_CsgPhy1OgDtny_22libsignal_account_keysNtB4_6SvrKey6derive(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 1 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 11, 38) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
vector.ph:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [64 x i8], align 1                ; 4 uses
  %i.d = alloca [64 x i8], align 1                ; 4 uses
  %i.e = alloca [64 x i8], align 1                ; 4 uses
  %i.f = alloca [32 x i8], align 1                ; 5 uses
  %i.g = alloca [144 x i8], align 8               ; 13 uses
  %i.h = alloca [32 x i8], align 1                ; 5 uses
  %i.i = alloca [64 x i8], align 1                ; 5 uses
  %i.j = alloca [80 x i8], align 8                ; 3 uses
  %i.k = alloca [40 x i8], align 8                ; 6 uses
  %i.l = alloca [40 x i8], align 8                ; 6 uses
  %i.m = alloca [64 x i8], align 16               ; 15 uses
  %i.n = alloca [144 x i8], align 8               ; 6 uses
  %i.o = alloca [32 x i8], align 1                ; 4 uses
  %i.p = alloca [144 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !191
  call void @_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB24_2B0EB2h_EB2h_EB2h_EB2h_EB2h_EE11try_from_fnNtNtCsgxBkk5gSRhY_4core7convert10InfallibleNCINvB2_7from_fnNCNvXsg_B5_BF_NtNtB38_7default7Default7default0E0ECsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull sret([64 x i8]) align 1 captures(none) dereferenceable(64) %i.i, ptr noalias nofree noundef nonnull %i.a), !noalias !191
  call void @_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull %i.i, i64 noundef 32, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4), !noalias !192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.m, ptr noundef nonnull align 1 dereferenceable(64) %i.i, i64 64, i1 false), !noalias !193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !191
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.m, align 16, !alias.scope !194, !noalias !195
  %wide.load18 = load <16 x i8>, ptr %i.q, align 16, !alias.scope !194, !noalias !195
  %i.r = xor <16 x i8> %wide.load, splat (i8 54)
  %i.s = xor <16 x i8> %wide.load18, splat (i8 54)
  store <16 x i8> %i.r, ptr %i.m, align 16, !alias.scope !194, !noalias !195
  store <16 x i8> %i.s, ptr %i.q, align 16, !alias.scope !194, !noalias !195
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  %wide.load.1 = load <16 x i8>, ptr %i.t, align 16, !alias.scope !194, !noalias !195
  %wide.load18.1 = load <16 x i8>, ptr %i.u, align 16, !alias.scope !194, !noalias !195
  %i.v = xor <16 x i8> %wide.load.1, splat (i8 54)
  %i.w = xor <16 x i8> %wide.load18.1, splat (i8 54)
  store <16 x i8> %i.v, ptr %i.t, align 16, !alias.scope !194, !noalias !195
  store <16 x i8> %i.w, ptr %i.u, align 16, !alias.scope !194, !noalias !195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(32) @40, i64 32, i1 false), !noalias !195
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 1, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !196, !noalias !195
  call void @_RNvNtCsj2Wav7G13rI_4sha26sha25611compress256(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef range(i64 1, 144115188075855872) 1)
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %wide.load22 = load <16 x i8>, ptr %i.m, align 16, !alias.scope !197, !noalias !195
  %wide.load23 = load <16 x i8>, ptr %i.x, align 16, !alias.scope !197, !noalias !195
  %i.y = xor <16 x i8> %wide.load22, splat (i8 106)
  %i.z = xor <16 x i8> %wide.load23, splat (i8 106)
  store <16 x i8> %i.y, ptr %i.m, align 16, !alias.scope !197, !noalias !195
  store <16 x i8> %i.z, ptr %i.x, align 16, !alias.scope !197, !noalias !195
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  %wide.load22.1 = load <16 x i8>, ptr %i.aa, align 16, !alias.scope !197, !noalias !195
  %wide.load23.1 = load <16 x i8>, ptr %i.ab, align 16, !alias.scope !197, !noalias !195
  %i.ac = xor <16 x i8> %wide.load22.1, splat (i8 106)
  %i.ad = xor <16 x i8> %wide.load23.1, splat (i8 106)
  store <16 x i8> %i.ac, ptr %i.aa, align 16, !alias.scope !197, !noalias !195
  store <16 x i8> %i.ad, ptr %i.ab, align 16, !alias.scope !197, !noalias !195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(32) @40, i64 32, i1 false), !noalias !195
  %.sroa.42.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i64 1, ptr %.sroa.42.0..sroa_idx.i5, align 8, !alias.scope !198, !noalias !195
  call void @_RNvNtCsj2Wav7G13rI_4sha26sha25611compress256(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef range(i64 1, 144115188075855872) 1)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !190
  %.sroa.5.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 80, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !199)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull readonly align 1 dereferenceable(1) %2, i64 range(i64 11, 38) %3, i1 false), !alias.scope !200
  %i.af = trunc nuw nsw i64 %3 to i8
  %.63..63..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 63
  store i8 %i.af, ptr %.63..63..sroa_idx, align 1, !alias.scope !201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.n, ptr noundef nonnull align 8 dereferenceable(144) %i.p, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !202
  invoke void @_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB20_2B0EB2d_EB2d_EB2d_EB2d_EE11try_from_fnNtNtCsgxBkk5gSRhY_4core7convert10InfallibleNCINvB2_7from_fnNCNvXsg_B5_BF_NtNtB2Z_7default7Default7default0E0ECsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB20_2B0EB2d_EB2d_EB2d_EB2d_EE7from_fnNCNvXsg_B5_BF_NtNtCsgxBkk5gSRhY_4core7default7Default7default0ECsgPhy1OgDtny_22libsignal_account_keys.exit.i unwind label %bb.b, !noalias !202

common.resume:                                    ; preds = %.body.i.i, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.aj, %.body.i.i ], [ %i.al, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB20_2B0EB2d_EB2d_EB2d_EB2d_EE7from_fnNCNvXsg_B5_BF_NtNtCsgxBkk5gSRhY_4core7default7Default7default0ECsgPhy1OgDtny_22libsignal_account_keys.exit.i: ; preds = %vector.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.g, ptr noundef nonnull align 8 dereferenceable(144) %i.p, i64 144, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !204
  invoke void @_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB20_2B0EB2d_EB2d_EB2d_EB2d_EE11try_from_fnNtNtCsgxBkk5gSRhY_4core7convert10InfallibleNCINvB2_7from_fnNCNvXsg_B5_BF_NtNtB2Z_7default7Default7default0E0ECsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull %i.a)
          to label %.noexc.i.i unwind label %.body.i.i, !noalias !205

.noexc.i.i:                                       ; preds = %_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB20_2B0EB2d_EB2d_EB2d_EB2d_EE7from_fnNCNvXsg_B5_BF_NtNtCsgxBkk5gSRhY_4core7default7Default7default0ECsgPhy1OgDtny_22libsignal_account_keys.exit.i
  invoke fastcc void @_RNvXs6_NtNtCs2KKWnYNkHVH_6digest9block_api11ct_variableINtB5_12CtOutWrapperNtNtCsj2Wav7G13rI_4sha29block_api13Sha256VarCoreINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1Y_IB1Y_IB1Y_IB1Y_IB1Y_NtB20_5UTermNtNtB22_3bit2B1ENtB3b_2B0EB3p_EB3p_EB3p_EB3p_EENtB7_15FixedOutputCore19finalize_fixed_coreCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.ag, ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.g, ptr noalias nofree noundef dereferenceable(32) %i.f)
          to label %.noexc3.i.i unwind label %.body.i.i, !noalias !206

.noexc3.i.i:                                      ; preds = %.noexc.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 63
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.g, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.f, i64 32, i1 false), !alias.scope !208, !noalias !206
  store i8 32, ptr %i.ah, align 1, !alias.scope !209, !noalias !202
  invoke fastcc void @_RNvXs6_NtNtCs2KKWnYNkHVH_6digest9block_api11ct_variableINtB5_12CtOutWrapperNtNtCsj2Wav7G13rI_4sha29block_api13Sha256VarCoreINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1Y_IB1Y_IB1Y_IB1Y_IB1Y_NtB20_5UTermNtNtB22_3bit2B1ENtB3b_2B0EB3p_EB3p_EB3p_EB3p_EENtB7_15FixedOutputCore19finalize_fixed_coreCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ai, ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.g, ptr noalias nofree noundef nonnull dereferenceable(32) %i.h)
          to label %_RNvXs6_Csfkg6qDyjgHi_4hmacINtB5_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest11FixedOutput13finalize_intoCsgPhy1OgDtny_22libsignal_account_keys.exit.i unwind label %.body.i.i, !noalias !202

.body.i.i:                                        ; preds = %.noexc3.i.i, %.noexc.i.i, %_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB20_2B0EB2d_EB2d_EB2d_EB2d_EE7from_fnNCNvXsg_B5_BF_NtNtCsgxBkk5gSRhY_4core7default7Default7default0ECsgPhy1OgDtny_22libsignal_account_keys.exit.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.e, i8 0, i64 64, i1 false), !noalias !210
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(144) %i.g, ptr nonnull align 1 %i.e, i64 64, i1 true), !noalias !202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(144) %i.g) #14, !noalias !202, !srcloc !4
  invoke void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull %i.ag)
          to label %common.resume unwind label %bb.a, !noalias !202

_RNvXs6_Csfkg6qDyjgHi_4hmacINtB5_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest11FixedOutput13finalize_intoCsgPhy1OgDtny_22libsignal_account_keys.exit.i: ; preds = %.noexc3.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.d, i8 0, i64 64, i1 false), !noalias !211
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(144) %i.g, ptr nonnull align 1 %i.d, i64 64, i1 true), !noalias !202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(144) %i.g) #14, !noalias !202, !srcloc !4
  call void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.o, ptr noundef nonnull align 1 dereferenceable(32) %i.h, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.o, ptr %i.b, align 8, !noalias !212
  call void @_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB20_2B0EB2d_EB2d_EB2d_EB2d_EE11try_from_fnNtNtCsgxBkk5gSRhY_4core7convert10InfallibleNCINvB2_7from_fnNCNvXsd_B5_BF_NtNtB2Z_5clone5Clone5clone0E0ECsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  ret void

bb.a:                                             ; preds = %.body.i.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #15, !noalias !202
  unreachable

bb.b:                                             ; preds = %vector.ph
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.c, i8 0, i64 64, i1 false), !noalias !213
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(144) %i.n, ptr nonnull align 1 %i.c, i64 64, i1 true), !noalias !214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(144) %i.n) #14, !noalias !214, !srcloc !4
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  invoke void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull %i.am)
          to label %common.resume unwind label %bb.c, !noalias !214

bb.c:                                             ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #15, !noalias !214
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_CsgPhy1OgDtny_22libsignal_account_keysNtB5_6SvrKeyNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 6)
  %i.b = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull @26, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @27)
  %i.c = call noundef zeroext i1 @_RNvMs2_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs0_NtNtCsgPhy1OgDtny_22libsignal_account_keys5proto12mfa_metadataNtB5_23MfaKeyMetadataPlaintextNtNtCsh1373Z0TDxr_8protobuf7message7Message10merge_from(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.3.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  %i.k = load ptr, ptr %1, align 8, !alias.scope !229, !nonnull !6, !noundef !6
  %i.l = load i64, ptr %i.d, align 8, !alias.scope !229, !noundef !6 ; 6 uses
  %i.m = load i64, ptr %i.e, align 8, !alias.scope !229, !noundef !6 ; 2 uses
  %i.n = sub nuw i64 %i.m, %i.l                   ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %.not.i15.i = icmp eq i64 %i.m, %i.l
  br i1 %.not.i15.i, label %bb.q, label %bb.d

bb.c:                                             ; preds = %bb.d
  %.not11.i.i = icmp eq i64 %i.n, 1
  br i1 %.not11.i.i, label %.thread48.i, label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !230, !noalias !231, !noundef !6 ; 3 uses
  %i.q = icmp sgt i8 %i.p, -1
  br i1 %i.q, label %bb.n, label %bb.c

bb.e:                                             ; preds = %bb.j
  %i.r = load i8, ptr %i.ai, align 1, !alias.scope !232, !noalias !231, !noundef !6 ; 2 uses
  %i.s = icmp ugt i8 %i.r, 15
  br i1 %i.s, label %bb.o, label %bb.k

bb.f:                                             ; preds = %bb.l
  %i.t = icmp samesign eq i64 %i.n, 2
  br i1 %i.t, label %.thread48.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = and i8 %i.au, 127
  %i.v = zext nneg i8 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 7
  %i.x = zext nneg i8 %i.aw to i32
  %i.y = or disjoint i32 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.ab = load i8, ptr %i.z, align 1, !alias.scope !232, !noalias !231, !noundef !6 ; 2 uses
  %i.ac = and i8 %i.ab, 127
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 14
  %i.af = or disjoint i32 %i.ae, %i.y             ; 2 uses
  %i.ag = icmp sgt i8 %i.ab, -1
  br i1 %i.ag, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = icmp samesign eq i64 %i.n, 3
  br i1 %i.ah, label %.thread48.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.aj = load i8, ptr %i.aa, align 1, !alias.scope !232, !noalias !231, !noundef !6 ; 2 uses
  %i.ak = and i8 %i.aj, 127
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 21
  %i.an = or disjoint i32 %i.am, %i.af            ; 2 uses
  %i.ao = icmp sgt i8 %i.aj, -1
  br i1 %i.ao, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = icmp samesign eq i64 %i.n, 4
  br i1 %i.ap, label %.thread48.i, label %bb.e

bb.k:                                             ; preds = %bb.e
  %i.aq = zext nneg i8 %i.r to i32
  %i.ar = shl nuw i32 %i.aq, 28
  %i.as = or disjoint i32 %i.ar, %i.an
  br label %bb.p

bb.l:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.au = load i8, ptr %i.at, align 1, !alias.scope !230, !noalias !231, !noundef !6 ; 3 uses
  %i.av = icmp sgt i8 %i.au, -1
  %i.aw = and i8 %i.p, 127                        ; 2 uses
  br i1 %i.av, label %bb.m, label %bb.f

bb.m:                                             ; preds = %bb.l
  %i.ax = zext nneg i8 %i.aw to i32
  %i.ay = zext nneg i8 %i.au to i32
  %i.az = shl nuw nsw i32 %i.ay, 7
  %.sroa.10.8.insert.ext21.i = or disjoint i32 %i.az, %i.ax
  br label %bb.p

bb.n:                                             ; preds = %bb.d
  %.sroa.10.8.insert.ext25.i = zext nneg i8 %i.p to i32
  br label %bb.p

bb.o:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !233
end_hunk_0
begin_hunk_1_@_RNvXs6_NtNtCs2KKWnYNkHVH_6digest9block_api11ct_variableINtB5_12CtOutWrapperNtNtCsj2Wav7G13rI_4sha29block_api13Sha256VarCoreINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1Y_IB1Y_IB1Y_IB1Y_IB1Y_NtB20_5UTermNtNtB22_3bit2B1ENtB3b_2B0EB3p_EB3p_EB3p_EB3p_EENtB7_15FixedOutputCore19finalize_fixed_coreCsgPhy1OgDtny_22libsignal_account_keys:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(64) %1, i64 64, i1 false), !noalias !286
  invoke void @_RNvNtCsj2Wav7G13rI_4sha26sha25611compress256(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1)
          to label %_RINvMs7_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB3l_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core0ECsgPhy1OgDtny_22libsignal_account_keys.exit.i unwind label %bb.d, !noalias !287

bb.h:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #15, !noalias !287
  unreachable

_RINvMs7_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB3l_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core0ECsgPhy1OgDtny_22libsignal_account_keys.exit.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !289
  call void @_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB21_2B0EB2e_EB2e_EB2e_EB2e_EB2e_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e), !noalias !287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !281
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !290
  store ptr %i.aa, ptr %i.b, align 8, !noalias !291
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !291
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !291
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 32, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !291
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 4, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !291
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !281
  call void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E3newCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !290
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  %i.ad = load i64, ptr %i.ab, align 8, !alias.scope !292, !noalias !281, !noundef !6 ; 2 uses
  %i.ae = load i64, ptr %i.ac, align 8, !alias.scope !292, !noalias !281, !noundef !6
  %i.af = icmp ult i64 %i.ad, %i.ae
  br i1 %i.af, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsgPhy1OgDtny_22libsignal_account_keys.exit.lr.ph.i, label %_RNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB5_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core.exit

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsgPhy1OgDtny_22libsignal_account_keys.exit.lr.ph.i: ; preds = %_RINvMs7_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB3l_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core0ECsgPhy1OgDtny_22libsignal_account_keys.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  br label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsgPhy1OgDtny_22libsignal_account_keys.exit.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsgPhy1OgDtny_22libsignal_account_keys.exit.i: ; preds = %bb.i, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsgPhy1OgDtny_22libsignal_account_keys.exit.lr.ph.i
  %i.ah = phi i64 [ %i.ad, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsgPhy1OgDtny_22libsignal_account_keys.exit.lr.ph.i ], [ %i.ap, %bb.i ] ; 3 uses
  %i.ai = add nuw i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ab, align 8, !alias.scope !292, !noalias !281
  %i.aj = call { ptr, i64 } @_RNvXs1y_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.h, i64 noundef %i.ah), !noalias !293 ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0      ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %_RNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB5_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core.exit, label %bb.i

bb.i:                                             ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsgPhy1OgDtny_22libsignal_account_keys.exit.i
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  %.val.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !292, !noalias !281, !nonnull !6, !noundef !6
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !281
  %i.an = load i32, ptr %i.am, align 4, !noundef !6
  %i.ao = call i32 @llvm.bswap.i32(i32 %i.an)
  store i32 %i.ao, ptr %i.g, align 4, !noalias !281
  call void @_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull %i.ak, i64 noundef %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !281
  %i.ap = load i64, ptr %i.ab, align 8, !alias.scope !292, !noalias !281, !noundef !6 ; 2 uses
  %i.aq = load i64, ptr %i.ac, align 8, !alias.scope !292, !noalias !281, !noundef !6
  %i.ar = icmp ult i64 %i.ap, %i.aq
  br i1 %i.ar, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsgPhy1OgDtny_22libsignal_account_keys.exit.i, label %_RNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB5_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core.exit

_RNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB5_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core.exit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsgPhy1OgDtny_22libsignal_account_keys.exit.i, %bb.i, %_RINvMs7_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB3l_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core0ECsgPhy1OgDtny_22libsignal_account_keys.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !281
  call void @_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull %2, i64 noundef 32, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCs7QbGsRJVG1P_4hkdf6errorsNtB5_13InvalidLengthNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 13)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtNtCsgxBkk5gSRhY_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 11, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @45, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @46)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCsgxBkk5gSRhY_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXs6_NtNtCsgxBkk5gSRhY_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCsgxBkk5gSRhY_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXs8_NtNtCsgxBkk5gSRhY_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCsgPhy1OgDtny_22libsignal_account_keys5proto12mfa_metadata23MfaKeyMetadataPlaintextNtNtCsh1373Z0TDxr_8protobuf7message7Message14write_to_bytesB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 9 uses
  %i.c = alloca [72 x i8], align 8                ; 20 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = tail call noundef i64 @_RNvXs0_NtNtCsgPhy1OgDtny_22libsignal_account_keys5proto12mfa_metadataNtB5_23MfaKeyMetadataPlaintextNtNtCsh1373Z0TDxr_8protobuf7message7Message12compute_size(ptr noundef nonnull align 8 %1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.e, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.f = load i64, ptr %i.a, align 8, !range !11, !noundef !6
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !304, !noundef !6 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  tail call void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.i, ptr %i.d, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.l, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 -9223372036854775808, ptr %i.c, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.d, ptr %.sroa.412.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.l, ptr %i.p, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.r = load i64, ptr %i.q, align 8, !noalias !305, !noundef !6 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = invoke noundef align 8 ptr @_RNvMNtCsh1373Z0TDxr_8protobuf19coded_output_streamNtB2_17CodedOutputStream12write_uint64(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c, i32 noundef 1, i64 noundef %i.r)
          to label %.noexc unwind label %bb.aa    ; 2 uses

.noexc:                                           ; preds = %bb.d
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.e, label %_RNvXs0_NtNtCsgPhy1OgDtny_22libsignal_account_keys5proto12mfa_metadataNtB5_23MfaKeyMetadataPlaintextNtNtCsh1373Z0TDxr_8protobuf7message7Message26write_to_with_cached_sizes.exit.thread

bb.e:                                             ; preds = %.noexc, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noalias !305, !noundef !6 ; 3 uses
  %i.w = icmp sgt i64 %i.v, -1
  call void @llvm.assume(i1 %i.w)
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !noalias !305, !nonnull !6, !noundef !6
  %i.aa = invoke noundef align 8 ptr @_RNvMNtCsh1373Z0TDxr_8protobuf19coded_output_streamNtB2_17CodedOutputStream12write_string(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c, i32 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef %i.v)
          to label %.noexc17 unwind label %bb.aa  ; 2 uses

.noexc17:                                         ; preds = %bb.f
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.g, label %_RNvXs0_NtNtCsgPhy1OgDtny_22libsignal_account_keys5proto12mfa_metadataNtB5_23MfaKeyMetadataPlaintextNtNtCsh1373Z0TDxr_8protobuf7message7Message26write_to_with_cached_sizes.exit.thread

bb.g:                                             ; preds = %.noexc17, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = invoke noundef align 8 ptr @_RNvMNtCsh1373Z0TDxr_8protobuf19coded_output_streamNtB2_17CodedOutputStream20write_unknown_fields(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ab)
          to label %_RNvXs0_NtNtCsgPhy1OgDtny_22libsignal_account_keys5proto12mfa_metadataNtB5_23MfaKeyMetadataPlaintextNtNtCsh1373Z0TDxr_8protobuf7message7Message26write_to_with_cached_sizes.exit unwind label %bb.aa ; 2 uses

_RNvXs0_NtNtCsgPhy1OgDtny_22libsignal_account_keys5proto12mfa_metadataNtB5_23MfaKeyMetadataPlaintextNtNtCsh1373Z0TDxr_8protobuf7message7Message26write_to_with_cached_sizes.exit: ; preds = %bb.g
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.h, label %_RNvXs0_NtNtCsgPhy1OgDtny_22libsignal_account_keys5proto12mfa_metadataNtB5_23MfaKeyMetadataPlaintextNtNtCsh1373Z0TDxr_8protobuf7message7Message26write_to_with_cached_sizes.exit.thread

bb.h:                                             ; preds = %_RNvXs0_NtNtCsgPhy1OgDtny_22libsignal_account_keys5proto12mfa_metadataNtB5_23MfaKeyMetadataPlaintextNtNtCsh1373Z0TDxr_8protobuf7message7Message26write_to_with_cached_sizes.exit
  %i.ad = invoke noundef align 8 ptr @_RNvMNtCsh1373Z0TDxr_8protobuf19coded_output_streamNtB2_17CodedOutputStream5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %bb.i unwind label %bb.aa      ; 2 uses

bb.i:                                             ; preds = %bb.h
  %.not15 = icmp eq ptr %i.ad, null
  br i1 %.not15, label %bb.j, label %_RNvXs0_NtNtCsgPhy1OgDtny_22libsignal_account_keys5proto12mfa_metadataNtB5_23MfaKeyMetadataPlaintextNtNtCsh1373Z0TDxr_8protobuf7message7Message26write_to_with_cached_sizes.exit.thread

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  invoke void @_RNvXs0_NtCsh1373Z0TDxr_8protobuf19coded_output_streamNtB5_17CodedOutputStreamNtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCsh1373Z0TDxr_8protobuf19coded_output_stream13output_target12OutputTargetECsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b) #16
          to label %.body.thread unwind label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.af = load i64, ptr %i.b, align 8, !range !7, !alias.scope !306, !noundef !6
  %i.ag = icmp sgt i64 %i.af, -1
  br i1 %i.ag, label %bb.m, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf19coded_output_stream17CodedOutputStreamECsgPhy1OgDtny_22libsignal_account_keys.exit

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsgPhy1OgDtny_22libsignal_account_keys.exit.i.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %.body.thread unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsgPhy1OgDtny_22libsignal_account_keys.exit.i.i: ; preds = %bb.m
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf19coded_output_stream17CodedOutputStreamECsgPhy1OgDtny_22libsignal_account_keys.exit unwind label %bb.x

bb.p:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf19coded_output_stream17CodedOutputStreamECsgPhy1OgDtny_22libsignal_account_keys.exit: ; preds = %bb.l, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsgPhy1OgDtny_22libsignal_account_keys.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.q

bb.q:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsgPhy1OgDtny_22libsignal_account_keys.exit, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf19coded_output_stream17CodedOutputStreamECsgPhy1OgDtny_22libsignal_account_keys.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

_RNvXs0_NtNtCsgPhy1OgDtny_22libsignal_account_keys5proto12mfa_metadataNtB5_23MfaKeyMetadataPlaintextNtNtCsh1373Z0TDxr_8protobuf7message7Message26write_to_with_cached_sizes.exit.thread: ; preds = %bb.i, %_RNvXs0_NtNtCsgPhy1OgDtny_22libsignal_account_keys5proto12mfa_metadataNtB5_23MfaKeyMetadataPlaintextNtNtCsh1373Z0TDxr_8protobuf7message7Message26write_to_with_cached_sizes.exit, %.noexc17, %.noexc
  %.sink = phi ptr [ %i.aa, %.noexc17 ], [ %i.ac, %_RNvXs0_NtNtCsgPhy1OgDtny_22libsignal_account_keys5proto12mfa_metadataNtB5_23MfaKeyMetadataPlaintextNtNtCsh1373Z0TDxr_8protobuf7message7Message26write_to_with_cached_sizes.exit ], [ %i.t, %.noexc ], [ %i.ad, %bb.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ak, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXs0_NtCsh1373Z0TDxr_8protobuf19coded_output_streamNtB5_17CodedOutputStreamNtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %_RNvXs0_NtNtCsgPhy1OgDtny_22libsignal_account_keys5proto12mfa_metadataNtB5_23MfaKeyMetadataPlaintextNtNtCsh1373Z0TDxr_8protobuf7message7Message26write_to_with_cached_sizes.exit.thread
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCsh1373Z0TDxr_8protobuf19coded_output_stream13output_target12OutputTargetECsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c) #16
          to label %.body.thread unwind label %bb.w

bb.s:                                             ; preds = %_RNvXs0_NtNtCsgPhy1OgDtny_22libsignal_account_keys5proto12mfa_metadataNtB5_23MfaKeyMetadataPlaintextNtNtCsh1373Z0TDxr_8protobuf7message7Message26write_to_with_cached_sizes.exit.thread
  %i.am = load i64, ptr %i.c, align 8, !range !7, !alias.scope !307, !noundef !6
  %i.an = icmp sgt i64 %i.am, -1
  br i1 %i.an, label %bb.t, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf19coded_output_stream17CodedOutputStreamECsgPhy1OgDtny_22libsignal_account_keys.exit26

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsgPhy1OgDtny_22libsignal_account_keys.exit.i.i22 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %.body.thread unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsgPhy1OgDtny_22libsignal_account_keys.exit.i.i22: ; preds = %bb.t
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf19coded_output_stream17CodedOutputStreamECsgPhy1OgDtny_22libsignal_account_keys.exit26 unwind label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #15
  unreachable

.body.thread:                                     ; preds = %bb.x, %bb.u, %bb.r, %bb.n, %bb.k, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.k ], [ %lpad.thr_comm, %bb.aa ], [ %i.al, %bb.r ], [ %i.ah, %bb.n ], [ %i.ar, %bb.x ], [ %i.ao, %bb.u ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #16
          to label %common.resume unwind label %bb.ab

bb.x:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsgPhy1OgDtny_22libsignal_account_keys.exit.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsgPhy1OgDtny_22libsignal_account_keys.exit.i.i22
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf19coded_output_stream17CodedOutputStreamECsgPhy1OgDtny_22libsignal_account_keys.exit26: ; preds = %bb.s, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsgPhy1OgDtny_22libsignal_account_keys.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsgPhy1OgDtny_22libsignal_account_keys.exit unwind label %bb.y

bb.y:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf19coded_output_stream17CodedOutputStreamECsgPhy1OgDtny_22libsignal_account_keys.exit26
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume:                                    ; preds = %.body.thread, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.as, %bb.y ], [ %.pn, %.body.thread ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsgPhy1OgDtny_22libsignal_account_keys.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf19coded_output_stream17CodedOutputStreamECsgPhy1OgDtny_22libsignal_account_keys.exit26
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.q

bb.aa:                                            ; preds = %bb.h, %bb.g, %bb.d, %bb.f
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf19coded_output_stream17CodedOutputStreamECsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef align 8 dereferenceable(72) %i.c) #16
          to label %.body.thread unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.body.thread
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCsgPhy1OgDtny_22libsignal_account_keys5proto12mfa_metadata23MfaKeyMetadataPlaintextNtNtCsh1373Z0TDxr_8protobuf7message7Message16parse_from_bytesB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 12 uses
  %.sroa.10 = alloca [32 x i8], align 8           ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [112 x i8], align 8               ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8
  %.sroa.09.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %2, ptr %.sroa.09.sroa.4.0..sroa_idx, align 8
  %.sroa.09.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.09.sroa.5.0..sroa_idx, align 8
  %.sroa.09.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %2, ptr %.sroa.09.sroa.6.0..sroa_idx, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 -1, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  store ptr %1, ptr %.sroa.612.0..sroa_idx, align 8
  %.sroa.612.sroa.4.0..sroa.612.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 5 uses
  store i64 %2, ptr %.sroa.612.sroa.4.0..sroa.612.0..sroa_idx.sroa_idx, align 8
  %.sroa.612.sroa.6.0..sroa.612.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 5 uses
  store i8 -1, ptr %.sroa.612.sroa.6.0..sroa.612.0..sroa_idx.sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store i32 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  store i32 100, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !329
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.f, align 8, !alias.scope !330, !noalias !329
  store i64 0, ptr %i.a, align 8, !alias.scope !330, !noalias !329
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.44.0..sroa_idx.i.i, align 8, !alias.scope !330, !noalias !329
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !alias.scope !330, !noalias !329
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false), !alias.scope !330, !noalias !329
  %i.h = invoke noundef align 8 ptr @_RNvXs0_NtNtCsgPhy1OgDtny_22libsignal_account_keys5proto12mfa_metadataNtB5_23MfaKeyMetadataPlaintextNtNtCsh1373Z0TDxr_8protobuf7message7Message10merge_from(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.c)
          to label %bb.c unwind label %bb.b, !noalias !331 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCsgPhy1OgDtny_22libsignal_account_keys5proto12mfa_metadata23MfaKeyMetadataPlaintextEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.a) #16
          to label %.body unwind label %bb.e, !noalias !331

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCsgPhy1OgDtny_22libsignal_account_keys5proto12mfa_metadata23MfaKeyMetadataPlaintextEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.a)
          to label %.thread unwind label %bb.f

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !329
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #15, !noalias !331
  unreachable

.body:                                            ; preds = %bb.f, %bb.b, %bb.j
  %.pn = phi { ptr, i32 } [ %i.o, %bb.j ], [ %i.k, %bb.f ], [ %i.i, %bb.b ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf18coded_input_stream16CodedInputStreamECsgPhy1OgDtny_22libsignal_account_keys(ptr noalias nofree noundef align 8 dereferenceable(112) %i.c) #16
          to label %common.resume unwind label %bb.w

bb.f:                                             ; preds = %bb.d, %bb.l
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.c
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8, !noalias !332 ; 2 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !noalias !332 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.55.0..sroa_idx.i.i, i64 32, i1 false), !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !329
  %i.l = icmp eq i64 %.sroa.0.0.copyload, -1
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread, %bb.g
  %.sroa.7.041 = phi ptr [ %i.h, %.thread ], [ %.sroa.7.0.copyload, %bb.g ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.041) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.041, ptr %i.m, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  store i64 %.sroa.0.0.copyload, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.7.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %i.n = invoke noundef align 8 ptr @_RNvMNtCsh1373Z0TDxr_8protobuf18coded_input_streamNtB2_16CodedInputStream9check_eof(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.c)
          to label %bb.k unwind label %bb.j       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCsgPhy1OgDtny_22libsignal_account_keys5proto12mfa_metadata23MfaKeyMetadataPlaintextEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.b) #16
          to label %.body unwind label %bb.w

bb.k:                                             ; preds = %bb.i
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.p, align 8
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCsgPhy1OgDtny_22libsignal_account_keys5proto12mfa_metadata23MfaKeyMetadataPlaintextEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.b)
          to label %bb.r unwind label %bb.f

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXNtNtCsh1373Z0TDxr_8protobuf18coded_input_stream13buf_read_iterNtB2_11BufReadIterNtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.c)
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.r = load i8, ptr %.sroa.612.sroa.6.0..sroa.612.0..sroa_idx.sroa_idx, align 8, !range !5, !alias.scope !333, !noundef !6 ; 2 uses
  %.not.i33 = icmp eq i8 %i.r, -1
  br i1 %.not.i33, label %common.resume, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.i.i = icmp eq i8 %i.r, 2
  %.val1.i.i = load i64, ptr %.sroa.612.sroa.4.0..sroa.612.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %i.s = icmp eq i64 %.val1.i.i, 0
  %or.cond47 = select i1 %.not.i.i, i1 true, i1 %i.s
  br i1 %or.cond47, label %common.resume, label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %bb.o, %bb.t
  %.val1.i.i36.sink = phi i64 [ %.val1.i.i36, %bb.t ], [ %.val1.i.i, %bb.o ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.v, %bb.t ], [ %i.q, %bb.o ]
  %.val.i.i37 = load ptr, ptr %.sroa.612.0..sroa_idx, align 8, !nonnull !6, !noundef !6
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i37, i64 noundef range(i64 1, 0) %.val1.i.i36.sink, i64 noundef 1) #17, !noalias !6
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %.body, %bb.t, %bb.s, %bb.o, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %common.resume.op.ph, %common.resume.sink.split ], [ %.pn, %.body ], [ %i.q, %bb.n ], [ %i.q, %bb.o ], [ %i.v, %bb.t ], [ %i.v, %bb.s ]
  resume { ptr, i32 } %common.resume.op

bb.p:                                             ; preds = %bb.m
  %i.t = load i8, ptr %.sroa.612.sroa.6.0..sroa.612.0..sroa_idx.sroa_idx, align 8, !range !5, !alias.scope !334, !noundef !6 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.t, -1
  br i1 %.not.i.i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf18coded_input_stream16CodedInputStreamECsgPhy1OgDtny_22libsignal_account_keys.exit32, label %bb.q

end_hunk_1
