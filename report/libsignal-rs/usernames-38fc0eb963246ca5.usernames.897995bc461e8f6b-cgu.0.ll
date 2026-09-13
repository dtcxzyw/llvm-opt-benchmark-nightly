Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/usernames-38fc0eb963246ca5.usernames.897995bc461e8f6b-cgu.0?download=true
inline.NumInlined: 336
inline.NumDeleted: 216
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RINvXs3_NtCs43OB2dM8s8d_5prost8encodingINtNtCs6i54tJFfzR_5alloc3vec3VechENtNtB6_6sealed12BytesAdapter12replace_withNtNtCs17cqnTMcAHA_5bytes5bytes5BytesECsbNM6vbj4kjf_9usernames:bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !181, !nonnull !4, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !181, !noundef !4
  invoke void %i.bb(ptr noundef %i.ay, ptr noundef %i.bd, i64 noundef %.val)
          to label %.body.thread unwind label %bb.l, !inline_history !144

bb.l:                                             ; preds = %bb.k
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvXNvXNtNtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector10scalar_mul6straus9spec_avx2NtB8_6StrausNtNtBi_6traits14MultiscalarMul15multiscalar_mulB1w_NtB5_24___Impl_multiscalar_mul__21__impl_multiscalar_mulINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IterNtNtBi_6scalar6ScalarEINtNtNtNtB3y_4iter8adapters3map3MapIB3s_NtNtBi_9ristretto14RistrettoPointENCINvXsq_B59_B57_B1I_15multiscalar_mulRSB47_B52_E0EE0CsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef nonnull writable align 32 captures(none) dereferenceable(1280) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(160) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvXNvXsj_NtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector4avx27edwardsINtNtBg_6window11LookupTableNtB8_11CachedPointEINtNtCsgxBkk5gSRhY_4core7convert4FromRNtNtBg_7edwards12EdwardsPointE4fromB1e_NtB2_13___Impl_from__10__impl_from(ptr noalias nofree noundef nonnull sret([1280 x i8]) align 32 captures(none) dereferenceable(1280) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %1)
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RNCINvXNvXNtNtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector10scalar_mul6straus9spec_avx2NtB8_6StrausNtNtBi_6traits14MultiscalarMul15multiscalar_mulB1w_NtB5_24___Impl_multiscalar_mul__21__impl_multiscalar_mulINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IterNtNtBi_6scalar6ScalarEINtNtNtNtB3y_4iter8adapters3map3MapIB3s_NtNtBi_9ristretto14RistrettoPointENCINvXsq_B59_B57_B1I_15multiscalar_mulRSB47_B52_E0EEs_0CsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef nonnull writable align 1 captures(none) dereferenceable(64) initializes((0, 64)) %0, ptr noalias nofree noundef nonnull readonly captures(none) dereferenceable(32) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RNvMso_NtCsdRrpXuHtjOb_16curve25519_dalek6scalarNtB5_6Scalar11as_radix_16(ptr noalias nofree noundef align 1 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCsdRrpXuHtjOb_16curve25519_dalek6windowINtB5_11LookupTableNtNtNtNtB7_7backend6serial12curve_models20ProjectiveNielsPointE6selectCsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) initializes((0, 160)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1280) %1, i8 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 4 uses
  %i.b = alloca [160 x i8], align 8               ; 17 uses
  %i.c = sext i8 %2 to i16                        ; 2 uses
  %i.d = ashr i16 %i.c, 7                         ; 3 uses
  %i.e = add nsw i16 %i.d, %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.b, ptr noundef nonnull align 8 dereferenceable(40) @8, i64 40, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) @8, i64 40, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) @8, i64 40, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i8 0, i64 40, i1 false), !alias.scope !186
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 960
  %i.o = insertelement <8 x i16> poison, i16 %i.e, i64 0
  %i.p = insertelement <8 x i16> poison, i16 %i.d, i64 0
  %i.q = xor <8 x i16> %i.o, %i.p
  %i.r = shufflevector <8 x i16> %i.q, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.s = icmp eq <8 x i16> %i.r, <i16 8, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1> ; 8 uses
  %i.t = extractelement <8 x i1> %i.s, i64 7
  %i.u = zext i1 %i.t to i8
  %i.v = tail call noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECsdRrpXuHtjOb_16curve25519_dalek(i8 noundef %i.u) #24
  call void @_RNvXs6_NtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6serial12curve_modelsNtB5_20ProjectiveNielsPointNtCs7yXBOrgAdI3_6subtle23ConditionallySelectable18conditional_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %1, i8 noundef %i.v)
  %i.w = extractelement <8 x i1> %i.s, i64 6
  %i.x = zext i1 %i.w to i8
  %i.y = call noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECsdRrpXuHtjOb_16curve25519_dalek(i8 noundef %i.x) #24
  call void @_RNvXs6_NtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6serial12curve_modelsNtB5_20ProjectiveNielsPointNtCs7yXBOrgAdI3_6subtle23ConditionallySelectable18conditional_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.i, i8 noundef %i.y)
  %i.z = extractelement <8 x i1> %i.s, i64 5
  %i.aa = zext i1 %i.z to i8
  %i.ab = call noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECsdRrpXuHtjOb_16curve25519_dalek(i8 noundef %i.aa) #24
  call void @_RNvXs6_NtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6serial12curve_modelsNtB5_20ProjectiveNielsPointNtCs7yXBOrgAdI3_6subtle23ConditionallySelectable18conditional_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.j, i8 noundef %i.ab)
  %i.ac = extractelement <8 x i1> %i.s, i64 4
  %i.ad = zext i1 %i.ac to i8
  %i.ae = call noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECsdRrpXuHtjOb_16curve25519_dalek(i8 noundef %i.ad) #24
  call void @_RNvXs6_NtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6serial12curve_modelsNtB5_20ProjectiveNielsPointNtCs7yXBOrgAdI3_6subtle23ConditionallySelectable18conditional_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.k, i8 noundef %i.ae)
  %i.af = extractelement <8 x i1> %i.s, i64 3
  %i.ag = zext i1 %i.af to i8
  %i.ah = call noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECsdRrpXuHtjOb_16curve25519_dalek(i8 noundef %i.ag) #24
  call void @_RNvXs6_NtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6serial12curve_modelsNtB5_20ProjectiveNielsPointNtCs7yXBOrgAdI3_6subtle23ConditionallySelectable18conditional_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.l, i8 noundef %i.ah)
  %i.ai = extractelement <8 x i1> %i.s, i64 2
  %i.aj = zext i1 %i.ai to i8
  %i.ak = call noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECsdRrpXuHtjOb_16curve25519_dalek(i8 noundef %i.aj) #24
  call void @_RNvXs6_NtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6serial12curve_modelsNtB5_20ProjectiveNielsPointNtCs7yXBOrgAdI3_6subtle23ConditionallySelectable18conditional_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.m, i8 noundef %i.ak)
  %i.al = extractelement <8 x i1> %i.s, i64 1
  %i.am = zext i1 %i.al to i8
  %i.an = call noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECsdRrpXuHtjOb_16curve25519_dalek(i8 noundef %i.am) #24
  call void @_RNvXs6_NtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6serial12curve_modelsNtB5_20ProjectiveNielsPointNtCs7yXBOrgAdI3_6subtle23ConditionallySelectable18conditional_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.n, i8 noundef %i.an)
  %i.ao = extractelement <8 x i1> %i.s, i64 0
  %i.ap = zext i1 %i.ao to i8
  %i.aq = call noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECsdRrpXuHtjOb_16curve25519_dalek(i8 noundef %i.ap) #24
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 1120
  call void @_RNvXs6_NtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6serial12curve_modelsNtB5_20ProjectiveNielsPointNtCs7yXBOrgAdI3_6subtle23ConditionallySelectable18conditional_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.ar, i8 noundef %i.aq)
  %i.as = trunc nsw i16 %i.d to i8
  %i.at = and i8 %i.as, 1
  %i.au = call noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECsdRrpXuHtjOb_16curve25519_dalek(i8 noundef %i.at) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !187
  call void @_RNvXsf_NtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6serial12curve_modelsRNtB5_20ProjectiveNielsPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith3Neg3neg(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.b)
  call void @_RNvXs6_NtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6serial12curve_modelsNtB5_20ProjectiveNielsPointNtCs7yXBOrgAdI3_6subtle23ConditionallySelectable18conditional_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.a, i8 noundef %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.b, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCsdRrpXuHtjOb_16curve25519_dalek6windowINtB5_11LookupTableNtNtNtNtNtB7_7backend6vector4avx27edwards11CachedPointE6selectCsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 32 captures(none) dereferenceable(160) initializes((0, 160)) %0, ptr noalias nofree noundef readonly align 32 captures(address, read_provenance) dereferenceable(1280) %1, i8 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [160 x i8], align 32              ; 4 uses
  %i.b = alloca [160 x i8], align 32              ; 14 uses
  %i.c = sext i8 %2 to i16                        ; 2 uses
  %i.d = ashr i16 %i.c, 7                         ; 3 uses
  %i.e = add nsw i16 %i.d, %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvXNvXse_NtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector4avx27edwardsNtB8_11CachedPointNtNtBg_6traits8Identity8identityB1e_NtB2_17___Impl_identity__14__impl_identity(ptr noalias nofree noundef nonnull align 32 captures(none) dereferenceable(160) %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 960
  %i.l = insertelement <8 x i16> poison, i16 %i.e, i64 0
  %i.m = insertelement <8 x i16> poison, i16 %i.d, i64 0
  %i.n = xor <8 x i16> %i.l, %i.m
  %i.o = shufflevector <8 x i16> %i.n, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.p = icmp eq <8 x i16> %i.o, <i16 8, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1> ; 8 uses
  %i.q = extractelement <8 x i1> %i.p, i64 7
  %i.r = zext i1 %i.q to i8
  %i.s = tail call noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECsdRrpXuHtjOb_16curve25519_dalek(i8 noundef %i.r) #24
  call void @_RNvXNvXsf_NtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector4avx27edwardsNtB8_11CachedPointNtCs7yXBOrgAdI3_6subtle23ConditionallySelectable18conditional_assignB1e_NtB2_27___Impl_conditional_assign__24__impl_conditional_assign(ptr noalias nofree noundef nonnull align 32 dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 32 captures(address, read_provenance) dereferenceable(160) %1, i8 noundef %i.s)
  %i.t = extractelement <8 x i1> %i.p, i64 6
  %i.u = zext i1 %i.t to i8
  %i.v = call noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECsdRrpXuHtjOb_16curve25519_dalek(i8 noundef %i.u) #24
  call void @_RNvXNvXsf_NtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector4avx27edwardsNtB8_11CachedPointNtCs7yXBOrgAdI3_6subtle23ConditionallySelectable18conditional_assignB1e_NtB2_27___Impl_conditional_assign__24__impl_conditional_assign(ptr noalias nofree noundef nonnull align 32 dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 32 captures(address, read_provenance) dereferenceable(160) %i.f, i8 noundef %i.v)
  %i.w = extractelement <8 x i1> %i.p, i64 5
  %i.x = zext i1 %i.w to i8
  %i.y = call noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECsdRrpXuHtjOb_16curve25519_dalek(i8 noundef %i.x) #24
  call void @_RNvXNvXsf_NtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector4avx27edwardsNtB8_11CachedPointNtCs7yXBOrgAdI3_6subtle23ConditionallySelectable18conditional_assignB1e_NtB2_27___Impl_conditional_assign__24__impl_conditional_assign(ptr noalias nofree noundef nonnull align 32 dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 32 captures(address, read_provenance) dereferenceable(160) %i.g, i8 noundef %i.y)
  %i.z = extractelement <8 x i1> %i.p, i64 4
  %i.aa = zext i1 %i.z to i8
  %i.ab = call noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECsdRrpXuHtjOb_16curve25519_dalek(i8 noundef %i.aa) #24
  call void @_RNvXNvXsf_NtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector4avx27edwardsNtB8_11CachedPointNtCs7yXBOrgAdI3_6subtle23ConditionallySelectable18conditional_assignB1e_NtB2_27___Impl_conditional_assign__24__impl_conditional_assign(ptr noalias nofree noundef nonnull align 32 dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 32 captures(address, read_provenance) dereferenceable(160) %i.h, i8 noundef %i.ab)
  %i.ac = extractelement <8 x i1> %i.p, i64 3
  %i.ad = zext i1 %i.ac to i8
  %i.ae = call noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECsdRrpXuHtjOb_16curve25519_dalek(i8 noundef %i.ad) #24
  call void @_RNvXNvXsf_NtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector4avx27edwardsNtB8_11CachedPointNtCs7yXBOrgAdI3_6subtle23ConditionallySelectable18conditional_assignB1e_NtB2_27___Impl_conditional_assign__24__impl_conditional_assign(ptr noalias nofree noundef nonnull align 32 dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 32 captures(address, read_provenance) dereferenceable(160) %i.i, i8 noundef %i.ae)
  %i.af = extractelement <8 x i1> %i.p, i64 2
  %i.ag = zext i1 %i.af to i8
  %i.ah = call noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECsdRrpXuHtjOb_16curve25519_dalek(i8 noundef %i.ag) #24
  call void @_RNvXNvXsf_NtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector4avx27edwardsNtB8_11CachedPointNtCs7yXBOrgAdI3_6subtle23ConditionallySelectable18conditional_assignB1e_NtB2_27___Impl_conditional_assign__24__impl_conditional_assign(ptr noalias nofree noundef nonnull align 32 dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 32 captures(address, read_provenance) dereferenceable(160) %i.j, i8 noundef %i.ah)
  %i.ai = extractelement <8 x i1> %i.p, i64 1
  %i.aj = zext i1 %i.ai to i8
  %i.ak = call noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECsdRrpXuHtjOb_16curve25519_dalek(i8 noundef %i.aj) #24
  call void @_RNvXNvXsf_NtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector4avx27edwardsNtB8_11CachedPointNtCs7yXBOrgAdI3_6subtle23ConditionallySelectable18conditional_assignB1e_NtB2_27___Impl_conditional_assign__24__impl_conditional_assign(ptr noalias nofree noundef nonnull align 32 dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 32 captures(address, read_provenance) dereferenceable(160) %i.k, i8 noundef %i.ak)
  %i.al = extractelement <8 x i1> %i.p, i64 0
  %i.am = zext i1 %i.al to i8
  %i.an = call noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECsdRrpXuHtjOb_16curve25519_dalek(i8 noundef %i.am) #24
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 1120
  call void @_RNvXNvXsf_NtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector4avx27edwardsNtB8_11CachedPointNtCs7yXBOrgAdI3_6subtle23ConditionallySelectable18conditional_assignB1e_NtB2_27___Impl_conditional_assign__24__impl_conditional_assign(ptr noalias nofree noundef nonnull align 32 dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 32 captures(address, read_provenance) dereferenceable(160) %i.ao, i8 noundef %i.an)
  %i.ap = trunc nsw i16 %i.d to i8
  %i.aq = and i8 %i.ap, 1
  %i.ar = call noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECsdRrpXuHtjOb_16curve25519_dalek(i8 noundef %i.aq) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !190
  call void @_RNvXNvXsg_NtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector4avx27edwardsRNtB8_11CachedPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith3Neg3negB1e_NtB2_12___Impl_neg__9__impl_neg(ptr noalias nofree noundef nonnull sret([160 x i8]) align 32 captures(none) dereferenceable(160) %i.a, ptr noalias nofree noundef nonnull readonly align 32 captures(address, read_provenance) dereferenceable(160) %i.b)
  call void @_RNvXNvXsf_NtNtNtNtCsdRrpXuHtjOb_16curve25519_dalek7backend6vector4avx27edwardsNtB8_11CachedPointNtCs7yXBOrgAdI3_6subtle23ConditionallySelectable18conditional_assignB1e_NtB2_27___Impl_conditional_assign__24__impl_conditional_assign(ptr noalias nofree noundef nonnull align 32 dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 32 captures(address, read_provenance) dereferenceable(160) %i.a, i8 noundef %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(160) %0, ptr noundef nonnull align 32 dereferenceable(160) %i.b, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_Cs7QbGsRJVG1P_4hkdfINtB4_11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EE17expand_multi_infoCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2, ptr noalias nofree noundef nonnull %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 1                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [144 x i8], align 8               ; 4 uses
  %i.f = alloca [32 x i8], align 1                ; 5 uses
  %.sroa.0 = alloca i8, align 1                   ; 4 uses
  %i.g = alloca [144 x i8], align 8               ; 23 uses
  %i.h = alloca [33 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = add nsw i64 %4, -8161
  %or.cond = icmp ult i64 %i.i, -8160
  br i1 %or.cond, label %._crit_edge95, label %_RNvXs1f_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNM6vbj4kjf_9usernames.exit.i.lr.ph

_RNvXs1f_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNM6vbj4kjf_9usernames.exit.i.lr.ph: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 63 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 96 ; 8 uses
  %.idx = shl nuw nsw i64 %2, 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.p = icmp eq i64 %2, 0
  br label %bb.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EECsbNM6vbj4kjf_9usernames.exit: ; preds = %.thread58
  resume { ptr, i32 } %eh.lpad-body61

bb.b:                                             ; preds = %bb.r
  unreachable

bb.c:                                             ; preds = %_RNvXs1f_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNM6vbj4kjf_9usernames.exit.i.lr.ph, %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCsbNM6vbj4kjf_9usernames.exit
  %i.q = phi i1 [ false, %_RNvXs1f_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNM6vbj4kjf_9usernames.exit.i.lr.ph ], [ true, %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCsbNM6vbj4kjf_9usernames.exit ]
  %.sroa.0.094 = phi ptr [ %3, %_RNvXs1f_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNM6vbj4kjf_9usernames.exit.i.lr.ph ], [ %i.r, %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCsbNM6vbj4kjf_9usernames.exit ] ; 2 uses
  %.sroa.5.093 = phi i64 [ %4, %_RNvXs1f_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNM6vbj4kjf_9usernames.exit.i.lr.ph ], [ %i.s, %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCsbNM6vbj4kjf_9usernames.exit ] ; 2 uses
  %.sroa.10.092 = phi i64 [ 0, %_RNvXs1f_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNM6vbj4kjf_9usernames.exit.i.lr.ph ], [ %i.t, %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCsbNM6vbj4kjf_9usernames.exit ] ; 3 uses
  %.sroa.0.0.i.i.i = call noundef i64 @llvm.umin.i64(i64 range(i64 1, 0) %.sroa.5.093, i64 32) ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.094, i64 %.sroa.0.0.i.i.i
  %i.s = sub nuw nsw i64 %.sroa.5.093, %.sroa.0.0.i.i.i ; 2 uses
  %i.t = add nuw nsw i64 %.sroa.10.092, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvXNtCsfkg6qDyjgHi_4hmac9block_apiINtB2_8HmacCoreNtCsj2Wav7G13rI_4sha26Sha256ENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(144) %0, i64 64, i1 false), !alias.scope !254
  br i1 %i.q, label %bb.d, label %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCsbNM6vbj4kjf_9usernames.exit19

._crit_edge95:                                    ; preds = %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCsbNM6vbj4kjf_9usernames.exit, %bb.a
  %i.u = icmp samesign ugt i64 %4, 8160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret i1 %i.u

_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCsbNM6vbj4kjf_9usernames.exit19: ; preds = %bb.e, %.noexc20, %bb.c
  br i1 %i.p, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCsbNM6vbj4kjf_9usernames.exit, label %.lr.ph

.thread68.loopexit:                               ; preds = %_RNCNvXs5_Csfkg6qDyjgHi_4hmacINtB7_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0CsbNM6vbj4kjf_9usernames.exit.i23, %bb.l
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread58

.thread68.loopexit.split-lp.loopexit:             ; preds = %_RNCNvXs5_Csfkg6qDyjgHi_4hmacINtB7_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0CsbNM6vbj4kjf_9usernames.exit.i, %_RNCNvXs5_Csfkg6qDyjgHi_4hmacINtB7_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0CsbNM6vbj4kjf_9usernames.exit.i35
  %lpad.loopexit74 = landingpad { ptr, i32 }
          cleanup
  br label %.thread58

.thread68.loopexit.split-lp.loopexit.split-lp:    ; preds = %bb.r
  %lpad.loopexit.split-lp75 = landingpad { ptr, i32 }
          cleanup
  br label %.thread58

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  call void @llvm.experimental.noalias.scope.decl(metadata !256)
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %.val.i = load i8, ptr %i.m, align 1, !alias.scope !255, !noalias !258, !noundef !4 ; 4 uses
  %i.v = zext nneg i8 %.val.i to i64              ; 4 uses
  %i.w = icmp ult i8 %.val.i, 64
  call void @llvm.assume(i1 %i.w)
  %i.x = sub nuw nsw i64 64, %i.v                 ; 2 uses
  %i.y = icmp samesign ult i8 %.val.i, 32
  br i1 %i.y, label %bb.e, label %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCsbNM6vbj4kjf_9usernames.exit.i

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.z, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.l, i64 32, i1 false), !alias.scope !259, !noalias !257
  %i.aa = or disjoint i8 %.val.i, 32
  store i8 %i.aa, ptr %i.m, align 1, !alias.scope !260, !noalias !258
  br label %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCsbNM6vbj4kjf_9usernames.exit19

.noexc20:                                         ; preds = %_RNCNvXs5_Csfkg6qDyjgHi_4hmacINtB7_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0CsbNM6vbj4kjf_9usernames.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.x
  %i.ac = add nsw i64 %i.v, -32                   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !261
  %i.ad = and i64 %i.ac, 9223372036854775744
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ad
  %i.af = trunc nuw nsw i64 %i.ac to i8
  store i8 %i.af, ptr %i.m, align 1, !alias.scope !262, !noalias !258
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(144) %i.g, ptr nonnull align 1 %i.ae, i64 %i.ac, i1 false), !alias.scope !259, !noalias !257
  br label %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCsbNM6vbj4kjf_9usernames.exit19

_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCsbNM6vbj4kjf_9usernames.exit.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !261
  store ptr %i.g, ptr %i.d, align 8, !noalias !261
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull readonly align 1 %i.l, i64 %i.x, i1 false), !alias.scope !259, !noalias !257
  %i.ah = load i64, ptr %i.n, align 8, !alias.scope !263, !noalias !264, !noundef !4
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.n, align 8, !alias.scope !263, !noalias !264
  invoke void @_RNvNtCsj2Wav7G13rI_4sha26sha25611compress256(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.g, i64 noundef range(i64 1, 144115188075855872) 1)
          to label %_RNCNvXs5_Csfkg6qDyjgHi_4hmacINtB7_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0CsbNM6vbj4kjf_9usernames.exit.i unwind label %bb.f, !noalias !256

bb.f:                                             ; preds = %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCsbNM6vbj4kjf_9usernames.exit.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB21_2B0EB2e_EB2e_EB2e_EB2e_EB2e_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.thread58 unwind label %bb.g, !noalias !256

_RNCNvXs5_Csfkg6qDyjgHi_4hmacINtB7_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0CsbNM6vbj4kjf_9usernames.exit.i: ; preds = %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCsbNM6vbj4kjf_9usernames.exit.i
  invoke void @_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB21_2B0EB2e_EB2e_EB2e_EB2e_EB2e_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc20 unwind label %.thread68.loopexit.split-lp.loopexit

bb.g:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #21, !noalias !256
  unreachable

.lr.ph:                                           ; preds = %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCsbNM6vbj4kjf_9usernames.exit19, %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCsbNM6vbj4kjf_9usernames.exit18
  %.sroa.03.083 = phi ptr [ %i.bl, %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCsbNM6vbj4kjf_9usernames.exit18 ], [ %1, %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCsbNM6vbj4kjf_9usernames.exit19 ] ; 3 uses
  %i.al = load ptr, ptr %.sroa.03.083, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.03.083, i64 8
  %i.an = load i64, ptr %i.am, align 8, !noundef !4 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !265)
  call void @llvm.experimental.noalias.scope.decl(metadata !266)
  call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %.val.i21 = load i8, ptr %i.m, align 1, !alias.scope !265, !noalias !268, !noundef !4 ; 4 uses
  %i.ao = zext nneg i8 %.val.i21 to i64           ; 3 uses
  %i.ap = icmp ult i8 %.val.i21, 64
  call void @llvm.assume(i1 %i.ap)
  %i.aq = sub nuw nsw i64 64, %i.ao               ; 4 uses
  %i.ar = icmp samesign ult i64 %i.an, %i.aq
  br i1 %i.ar, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.as = icmp eq i8 %.val.i21, 0
  br i1 %i.as, label %bb.j, label %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCsbNM6vbj4kjf_9usernames.exit.i22

bb.i:                                             ; preds = %.lr.ph
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr nonnull readonly align 1 %i.al, i64 range(i64 0, -9223372036854775808) %i.an, i1 false), !alias.scope !269, !noalias !267
  %i.au = trunc nuw nsw i64 %i.an to i8
  %i.av = add nuw nsw i8 %.val.i21, %i.au
  store i8 %i.av, ptr %i.m, align 1, !alias.scope !270, !noalias !268
  br label %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCsbNM6vbj4kjf_9usernames.exit18

bb.j:                                             ; preds = %.noexc29, %bb.h
  %.sroa.8.0.i24 = phi i64 [ %i.an, %bb.h ], [ %i.bg, %.noexc29 ] ; 3 uses
  %.sroa.0.0.i25 = phi ptr [ %i.al, %bb.h ], [ %i.bf, %.noexc29 ] ; 2 uses
  %i.aw = and i64 %.sroa.8.0.i24, 9223372036854775744
  %i.ax = and i64 %.sroa.8.0.i24, 63              ; 2 uses
  %i.ay = lshr i64 %.sroa.8.0.i24, 6              ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i25, i64 %i.aw
  %i.ba = icmp eq i64 %i.ay, 0
  br i1 %i.ba, label %.noexc30, label %bb.l

_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCsbNM6vbj4kjf_9usernames.exit.i22: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !271
  store ptr %i.g, ptr %i.c, align 8, !noalias !271
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bb, ptr nonnull readonly align 1 %i.al, i64 %i.aq, i1 false), !alias.scope !269, !noalias !267
  %i.bc = load i64, ptr %i.n, align 8, !alias.scope !272, !noalias !273, !noundef !4
  %i.bd = add i64 %i.bc, 1
  store i64 %i.bd, ptr %i.n, align 8, !alias.scope !272, !noalias !273
  invoke void @_RNvNtCsj2Wav7G13rI_4sha26sha25611compress256(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.g, i64 noundef range(i64 1, 144115188075855872) 1)
          to label %_RNCNvXs5_Csfkg6qDyjgHi_4hmacINtB7_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0CsbNM6vbj4kjf_9usernames.exit.i23 unwind label %bb.k, !noalias !266

bb.k:                                             ; preds = %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCsbNM6vbj4kjf_9usernames.exit.i22
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB21_2B0EB2e_EB2e_EB2e_EB2e_EB2e_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.thread58 unwind label %bb.m, !noalias !266

_RNCNvXs5_Csfkg6qDyjgHi_4hmacINtB7_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0CsbNM6vbj4kjf_9usernames.exit.i23: ; preds = %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCsbNM6vbj4kjf_9usernames.exit.i22
  invoke void @_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB21_2B0EB2e_EB2e_EB2e_EB2e_EB2e_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc29 unwind label %.thread68.loopexit

.noexc29:                                         ; preds = %_RNCNvXs5_Csfkg6qDyjgHi_4hmacINtB7_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0CsbNM6vbj4kjf_9usernames.exit.i23
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aq
  %i.bg = sub nuw nsw i64 %i.an, %i.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !271
  br label %bb.j

bb.l:                                             ; preds = %bb.j
  %i.bh = load i64, ptr %i.n, align 8, !alias.scope !274, !noalias !275, !noundef !4
  %i.bi = add i64 %i.bh, %i.ay
  store i64 %i.bi, ptr %i.n, align 8, !alias.scope !274, !noalias !275
  invoke void @_RNvNtCsj2Wav7G13rI_4sha26sha25611compress256(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i25, i64 noundef range(i64 1, 144115188075855872) %i.ay)
          to label %.noexc30 unwind label %.thread68.loopexit

.noexc30:                                         ; preds = %bb.l, %bb.j
  %i.bj = trunc nuw nsw i64 %i.ax to i8
  store i8 %i.bj, ptr %i.m, align 1, !alias.scope !276, !noalias !268
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(144) %i.g, ptr nonnull align 1 %i.az, i64 %i.ax, i1 false), !alias.scope !269, !noalias !267
  br label %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCsbNM6vbj4kjf_9usernames.exit18

bb.m:                                             ; preds = %bb.k
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #21, !noalias !266
  unreachable

_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCsbNM6vbj4kjf_9usernames.exit18: ; preds = %bb.i, %.noexc30
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.03.083, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.o
  br i1 %i.bm, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCsbNM6vbj4kjf_9usernames.exit, label %.lr.ph

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCsbNM6vbj4kjf_9usernames.exit: ; preds = %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCsbNM6vbj4kjf_9usernames.exit18, %_RNvXNtCs7QbGsRJVG1P_4hkdf9hmac_implINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtB2_8HmacImpl6updateCsbNM6vbj4kjf_9usernames.exit19
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.bn = icmp eq i64 %.sroa.10.092, 255
  br i1 %i.bn, label %bb.r, label %bb.n

bb.n:                                             ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCsbNM6vbj4kjf_9usernames.exit
  %i.bo = trunc nuw i64 %.sroa.10.092 to i8
  %i.bp = add nuw i8 %i.bo, 1                     ; 2 uses
  store i8 %i.bp, ptr %.sroa.0, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !277)
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %.val.i33 = load i8, ptr %i.m, align 1, !alias.scope !277, !noalias !280, !noundef !4 ; 4 uses
  %i.bq = zext nneg i8 %.val.i33 to i64           ; 3 uses
  %i.br = icmp ult i8 %.val.i33, 64
  call void @llvm.assume(i1 %i.br)
  %.not = icmp eq i8 %.val.i33, 63
  br i1 %.not, label %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCsbNM6vbj4kjf_9usernames.exit.i34, label %bb.o
end_hunk_0
