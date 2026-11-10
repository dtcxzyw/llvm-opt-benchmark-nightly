Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/aes-a073fe0cd62e0915.aes.1c62c5fcee58c035-cgu.1?download=true
inline.NumInlined: 347
inline.NumDeleted: 41
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_RNvNtNtCs2r61lPHg5zl_3aes10autodetect14aes_intrinsics7STORAGE = local_unnamed_addr global [1 x i8] c"\FF", align 1
@0 = private unnamed_addr constant [16 x i8] c"Aes192Dec { .. }", align 1
@1 = private unnamed_addr constant [9 x i8] c"Aes192Dec", align 1
@2 = private unnamed_addr constant [13 x i8] c"Aes256 { .. }", align 1
@3 = private unnamed_addr constant [16 x i8] c"Aes256Dec { .. }", align 1
@4 = private unnamed_addr constant [9 x i8] c"Aes256Dec", align 1
@5 = private unnamed_addr constant [6 x i8] c"Aes256", align 1
@6 = private unnamed_addr constant [16 x i8] c"Aes256Enc { .. }", align 1
@7 = private unnamed_addr constant [9 x i8] c"Aes256Enc", align 1
@8 = private unnamed_addr constant [13 x i8] c"Aes128 { .. }", align 1
@9 = private unnamed_addr constant [6 x i8] c"Aes128", align 1
@10 = private unnamed_addr constant [13 x i8] c"Aes192 { .. }", align 1
@11 = private unnamed_addr constant [6 x i8] c"Aes192", align 1
@12 = private unnamed_addr constant [16 x i8] c"Aes192Enc { .. }", align 1
@13 = private unnamed_addr constant [9 x i8] c"Aes192Enc", align 1
@14 = private unnamed_addr constant [16 x i8] c"Aes128Enc { .. }", align 1
@15 = private unnamed_addr constant [9 x i8] c"Aes128Enc", align 1
@16 = private unnamed_addr constant [16 x i8] c"Aes128Dec { .. }", align 1
@17 = private unnamed_addr constant [9 x i8] c"Aes128Dec", align 1

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implyECs2r61lPHg5zl_3aes(ptr noalias nofree noundef nonnull writeonly align 8 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 1152921504606846976) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCskKLDkoKarTP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.a, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal fastcc void @_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x863aes25__mm_aeskeygenassist_si128Kl0_ECs2r61lPHg5zl_3aes(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(16) initializes((0, 16)) %0, <2 x i64> %.0.val) unnamed_addr #1 {
bb.a:
  %i.a = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %.0.val, i8 0)
  store <2 x i64> %i.a, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal fastcc void @_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x863aes25__mm_aeskeygenassist_si128Kl10_ECs2r61lPHg5zl_3aes(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(16) initializes((0, 16)) %0, <2 x i64> %.0.val) unnamed_addr #1 {
bb.a:
  %i.a = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %.0.val, i8 16)
  store <2 x i64> %i.a, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal fastcc void @_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x863aes25__mm_aeskeygenassist_si128Kl1_ECs2r61lPHg5zl_3aes(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(16) initializes((0, 16)) %0, <2 x i64> %.0.val) unnamed_addr #1 {
bb.a:
  %i.a = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %.0.val, i8 1)
  store <2 x i64> %i.a, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal fastcc void @_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x863aes25__mm_aeskeygenassist_si128Kl20_ECs2r61lPHg5zl_3aes(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(16) initializes((0, 16)) %0, <2 x i64> %.0.val) unnamed_addr #1 {
bb.a:
  %i.a = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %.0.val, i8 32)
  store <2 x i64> %i.a, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal fastcc void @_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x863aes25__mm_aeskeygenassist_si128Kl2_ECs2r61lPHg5zl_3aes(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(16) initializes((0, 16)) %0, <2 x i64> %.0.val) unnamed_addr #1 {
bb.a:
  %i.a = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %.0.val, i8 2)
  store <2 x i64> %i.a, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal fastcc void @_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x863aes25__mm_aeskeygenassist_si128Kl40_ECs2r61lPHg5zl_3aes(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(16) initializes((0, 16)) %0, <2 x i64> %.0.val) unnamed_addr #1 {
bb.a:
  %i.a = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %.0.val, i8 64)
  store <2 x i64> %i.a, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal fastcc void @_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x863aes25__mm_aeskeygenassist_si128Kl4_ECs2r61lPHg5zl_3aes(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(16) initializes((0, 16)) %0, <2 x i64> %.0.val) unnamed_addr #1 {
bb.a:
  %i.a = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %.0.val, i8 4)
  store <2 x i64> %i.a, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal fastcc void @_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x863aes25__mm_aeskeygenassist_si128Kl8_ECs2r61lPHg5zl_3aes(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(16) initializes((0, 16)) %0, <2 x i64> %.0.val) unnamed_addr #1 {
bb.a:
  %i.a = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %.0.val, i8 8)
  store <2 x i64> %i.a, ptr %0, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvXsg_Cs3LyjtJoE3kL_13generic_arrayINtB6_12GenericArrayIBA_hINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBZ_IBZ_IBZ_IBZ_NtB11_5UTermNtNtB13_3bit2B1ENtB23_2B0EB2h_EB2h_EB2h_EEB1D_EINtNtB6_8sequence15GenericSequenceBT_E8generateNCNvXNtB6_5implsBz_NtNtCskKLDkoKarTP_4core7default7Default7default0ECs2r61lPHg5zl_3aes(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 1 captures(none) dereferenceable(64) initializes((0, 64)) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutINtCs3LyjtJoE3kL_13generic_array12GenericArrayhINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1F_IB1F_IB1F_IB1F_NtB1H_5UTermNtNtB1J_3bit2B1ENtB2N_2B0EB31_EB31_EB31_EEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB3y_8adapters9enumerateINtB4n_9EnumeratepEB3s_4fold9enumerateQBT_uNCINvNvB3s_8for_each4callTjB5q_ENCINvXsg_BW_IBU_BT_B2k_EINtNtBW_8sequence15GenericSequenceBT_E8generateNCNvXNtBW_5implsB6d_NtNtBb_7default7Default7default0E0E0E0ECs2r61lPHg5zl_3aes.exit:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal fastcc void @_RNvNtNtCs2r61lPHg5zl_3aes2ni6aes12810expand_key(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(176) initializes((0, 176)) %0, <2 x i64> %.0.val) unnamed_addr #1 {
bb.a:
  store <2 x i64> %.0.val, ptr %0, align 16
  %i.a = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %.0.val, i8 1)
  %i.b = bitcast <2 x i64> %i.a to <4 x i32>
  %i.c = shufflevector <4 x i32> %i.b, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.d = bitcast <4 x i32> %i.c to <2 x i64>
  %i.e = bitcast <2 x i64> %.0.val to <16 x i8>   ; 3 uses
  %1 = shufflevector <16 x i8> %i.e, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %2 = shufflevector <16 x i8> %i.e, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %3 = shufflevector <16 x i8> %i.e, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3>
  %i.f = xor <16 x i8> %1, %3
  %i.g = xor <16 x i8> %i.f, %2
  %i.h = bitcast <16 x i8> %i.g to <2 x i64>
  %i.i = xor <2 x i64> %i.h, %i.d
  %i.j = xor <2 x i64> %i.i, %.0.val              ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.j, ptr %i.k, align 16
  %i.l = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.j, i8 2)
  %i.m = bitcast <2 x i64> %i.l to <4 x i32>
  %i.n = shufflevector <4 x i32> %i.m, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.o = bitcast <4 x i32> %i.n to <2 x i64>
  %i.p = bitcast <2 x i64> %i.j to <16 x i8>      ; 3 uses
  %4 = shufflevector <16 x i8> %i.p, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %5 = shufflevector <16 x i8> %i.p, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %6 = shufflevector <16 x i8> %i.p, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3>
  %i.q = xor <16 x i8> %4, %6
  %i.r = xor <16 x i8> %i.q, %5
  %i.s = bitcast <16 x i8> %i.r to <2 x i64>
  %i.t = xor <2 x i64> %i.o, %i.s
  %i.u = xor <2 x i64> %i.t, %i.j                 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.u, ptr %i.v, align 16
  %i.w = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.u, i8 4)
  %i.x = bitcast <2 x i64> %i.w to <4 x i32>
  %i.y = shufflevector <4 x i32> %i.x, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.z = bitcast <4 x i32> %i.y to <2 x i64>
  %i.aa = bitcast <2 x i64> %i.u to <16 x i8>     ; 3 uses
  %7 = shufflevector <16 x i8> %i.aa, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %8 = shufflevector <16 x i8> %i.aa, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %9 = shufflevector <16 x i8> %i.aa, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3>
  %i.ab = xor <16 x i8> %7, %9
  %i.ac = xor <16 x i8> %i.ab, %8
  %i.ad = bitcast <16 x i8> %i.ac to <2 x i64>
  %i.ae = xor <2 x i64> %i.z, %i.ad
  %i.af = xor <2 x i64> %i.ae, %i.u               ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %i.af, ptr %i.ag, align 16
  %i.ah = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.af, i8 8)
  %i.ai = bitcast <2 x i64> %i.ah to <4 x i32>
  %i.aj = shufflevector <4 x i32> %i.ai, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ak = bitcast <4 x i32> %i.aj to <2 x i64>
  %i.al = bitcast <2 x i64> %i.af to <16 x i8>    ; 3 uses
  %10 = shufflevector <16 x i8> %i.al, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %11 = shufflevector <16 x i8> %i.al, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %12 = shufflevector <16 x i8> %i.al, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3>
  %i.am = xor <16 x i8> %10, %12
  %i.an = xor <16 x i8> %i.am, %11
  %i.ao = bitcast <16 x i8> %i.an to <2 x i64>
  %i.ap = xor <2 x i64> %i.ak, %i.ao
  %i.aq = xor <2 x i64> %i.ap, %i.af              ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x i64> %i.aq, ptr %i.ar, align 16
  %i.as = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.aq, i8 16)
  %i.at = bitcast <2 x i64> %i.as to <4 x i32>
  %i.au = shufflevector <4 x i32> %i.at, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.av = bitcast <4 x i32> %i.au to <2 x i64>
  %i.aw = bitcast <2 x i64> %i.aq to <16 x i8>    ; 3 uses
  %13 = shufflevector <16 x i8> %i.aw, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %14 = shufflevector <16 x i8> %i.aw, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %15 = shufflevector <16 x i8> %i.aw, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3>
  %i.ax = xor <16 x i8> %13, %15
  %i.ay = xor <16 x i8> %i.ax, %14
  %i.az = bitcast <16 x i8> %i.ay to <2 x i64>
  %i.ba = xor <2 x i64> %i.av, %i.az
  %i.bb = xor <2 x i64> %i.ba, %i.aq              ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x i64> %i.bb, ptr %i.bc, align 16
  %i.bd = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.bb, i8 32)
  %i.be = bitcast <2 x i64> %i.bd to <4 x i32>
  %i.bf = shufflevector <4 x i32> %i.be, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bg = bitcast <4 x i32> %i.bf to <2 x i64>
  %i.bh = bitcast <2 x i64> %i.bb to <16 x i8>    ; 3 uses
  %16 = shufflevector <16 x i8> %i.bh, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %17 = shufflevector <16 x i8> %i.bh, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %18 = shufflevector <16 x i8> %i.bh, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3>
  %i.bi = xor <16 x i8> %16, %18
  %i.bj = xor <16 x i8> %i.bi, %17
  %i.bk = bitcast <16 x i8> %i.bj to <2 x i64>
  %i.bl = xor <2 x i64> %i.bg, %i.bk
  %i.bm = xor <2 x i64> %i.bl, %i.bb              ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x i64> %i.bm, ptr %i.bn, align 16
  %i.bo = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.bm, i8 64)
  %i.bp = bitcast <2 x i64> %i.bo to <4 x i32>
  %i.bq = shufflevector <4 x i32> %i.bp, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.br = bitcast <4 x i32> %i.bq to <2 x i64>
  %i.bs = bitcast <2 x i64> %i.bm to <16 x i8>    ; 3 uses
  %19 = shufflevector <16 x i8> %i.bs, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %20 = shufflevector <16 x i8> %i.bs, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %21 = shufflevector <16 x i8> %i.bs, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3>
  %i.bt = xor <16 x i8> %19, %21
  %i.bu = xor <16 x i8> %i.bt, %20
  %i.bv = bitcast <16 x i8> %i.bu to <2 x i64>
  %i.bw = xor <2 x i64> %i.br, %i.bv
  %i.bx = xor <2 x i64> %i.bw, %i.bm              ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x i64> %i.bx, ptr %i.by, align 16
  %i.bz = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.bx, i8 -128)
  %i.ca = bitcast <2 x i64> %i.bz to <4 x i32>
  %i.cb = shufflevector <4 x i32> %i.ca, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.cc = bitcast <4 x i32> %i.cb to <2 x i64>
  %i.cd = bitcast <2 x i64> %i.bx to <16 x i8>    ; 3 uses
  %22 = shufflevector <16 x i8> %i.cd, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %23 = shufflevector <16 x i8> %i.cd, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %24 = shufflevector <16 x i8> %i.cd, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3>
  %i.ce = xor <16 x i8> %22, %24
  %i.cf = xor <16 x i8> %i.ce, %23
  %i.cg = bitcast <16 x i8> %i.cf to <2 x i64>
  %i.ch = xor <2 x i64> %i.cc, %i.cg
  %i.ci = xor <2 x i64> %i.ch, %i.bx              ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <2 x i64> %i.ci, ptr %i.cj, align 16
  %i.ck = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.ci, i8 27)
  %i.cl = bitcast <2 x i64> %i.ck to <4 x i32>
  %i.cm = shufflevector <4 x i32> %i.cl, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.cn = bitcast <4 x i32> %i.cm to <2 x i64>
  %i.co = bitcast <2 x i64> %i.ci to <16 x i8>    ; 3 uses
  %25 = shufflevector <16 x i8> %i.co, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %26 = shufflevector <16 x i8> %i.co, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %27 = shufflevector <16 x i8> %i.co, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3>
  %i.cp = xor <16 x i8> %25, %27
  %i.cq = xor <16 x i8> %i.cp, %26
  %i.cr = bitcast <16 x i8> %i.cq to <2 x i64>
  %i.cs = xor <2 x i64> %i.cn, %i.cr
  %i.ct = xor <2 x i64> %i.cs, %i.ci              ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <2 x i64> %i.ct, ptr %i.cu, align 16
  %i.cv = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.ct, i8 54)
  %i.cw = bitcast <2 x i64> %i.cv to <4 x i32>
  %i.cx = shufflevector <4 x i32> %i.cw, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.cy = bitcast <4 x i32> %i.cx to <2 x i64>
  %i.cz = bitcast <2 x i64> %i.ct to <16 x i8>    ; 3 uses
  %28 = shufflevector <16 x i8> %i.cz, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %29 = shufflevector <16 x i8> %i.cz, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %30 = shufflevector <16 x i8> %i.cz, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3>
  %i.da = xor <16 x i8> %28, %30
  %i.db = xor <16 x i8> %i.da, %29
  %i.dc = bitcast <16 x i8> %i.db to <2 x i64>
  %i.dd = xor <2 x i64> %i.cy, %i.dc
  %i.de = xor <2 x i64> %i.dd, %i.ct
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <2 x i64> %i.de, ptr %i.df, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_RNvNtNtCs2r61lPHg5zl_3aes2ni6aes12817inv_expanded_keys(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(176) initializes((0, 176)) %0, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(176) %1) unnamed_addr #3 {
bb.a:
  %i.a = load <2 x i64>, ptr %1, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load <2 x i64>, ptr %i.b, align 16
  %i.d = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load <2 x i64>, ptr %i.e, align 16
  %i.g = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load <2 x i64>, ptr %i.h, align 16
  %i.j = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = load <2 x i64>, ptr %i.k, align 16
  %i.m = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.o = load <2 x i64>, ptr %i.n, align 16
  %i.p = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.r = load <2 x i64>, ptr %i.q, align 16
  %i.s = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.u = load <2 x i64>, ptr %i.t, align 16
  %i.v = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.u)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.x = load <2 x i64>, ptr %i.w, align 16
  %i.y = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.aa = load <2 x i64>, ptr %i.z, align 16
  %i.ab = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ad = load <2 x i64>, ptr %i.ac, align 16
  store <2 x i64> %i.a, ptr %0, align 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.d, ptr %i.ae, align 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.g, ptr %i.af, align 16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %i.j, ptr %i.ag, align 16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x i64> %i.m, ptr %i.ah, align 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x i64> %i.p, ptr %i.ai, align 16
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x i64> %i.s, ptr %i.aj, align 16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x i64> %i.v, ptr %i.ak, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <2 x i64> %i.y, ptr %i.al, align 16
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <2 x i64> %i.ab, ptr %i.am, align 16
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <2 x i64> %i.ad, ptr %i.an, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_RNvNtNtCs2r61lPHg5zl_3aes2ni6aes19210expand_key(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(208) initializes((0, 208)) %0, ptr noalias nofree noundef nonnull readonly captures(none) dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %.sroa.0.0.copyload = load <2 x i64>, ptr %1, align 1 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.5.0.vec.insert = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.sroa.5.0.copyload, i64 0 ; 4 uses
  store <2 x i64> %.sroa.0.0.copyload, ptr %0, align 16
  %i.a = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %.sroa.5.0.vec.insert, i8 1)
  %i.b = bitcast <2 x i64> %i.a to <4 x i32>
  %i.c = shufflevector <4 x i32> %i.b, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.d = bitcast <4 x i32> %i.c to <2 x i64>
  %i.e = bitcast <2 x i64> %.sroa.0.0.copyload to <16 x i8> ; 3 uses
  %2 = shufflevector <16 x i8> %i.e, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %3 = shufflevector <16 x i8> %i.e, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %4 = shufflevector <16 x i8> %i.e, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3>
  %i.f = xor <16 x i8> %2, %4
  %i.g = xor <16 x i8> %i.f, %3
  %i.h = bitcast <16 x i8> %i.g to <2 x i64>
  %i.i = xor <2 x i64> %i.d, %i.h
  %i.j = xor <2 x i64> %i.i, %.sroa.0.0.copyload  ; 5 uses
  %i.k = bitcast <2 x i64> %i.j to <4 x i32>
  %i.l = shufflevector <4 x i32> %i.k, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.m = bitcast <4 x i32> %i.l to <2 x i64>
  %i.n = bitcast <2 x i64> %.sroa.5.0.vec.insert to <16 x i8>
  %5 = shufflevector <16 x i8> %i.n, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %i.o = bitcast <16 x i8> %5 to <2 x i64>
  %i.p = xor <2 x i64> %i.o, %i.m
  %i.q = xor <2 x i64> %i.p, %.sroa.5.0.vec.insert ; 4 uses
  %.uncasted = shufflevector <2 x i64> %.sroa.5.0.vec.insert, <2 x i64> %i.j, <2 x i32> <i32 0, i32 2>
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %.uncasted, ptr %i.r, align 16
  %.uncasted581 = shufflevector <2 x i64> %i.j, <2 x i64> %i.q, <2 x i32> <i32 1, i32 2>
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %.uncasted581, ptr %i.s, align 16
  %i.t = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.q, i8 2)
  %i.u = bitcast <2 x i64> %i.t to <4 x i32>
  %i.v = shufflevector <4 x i32> %i.u, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.w = bitcast <4 x i32> %i.v to <2 x i64>
  %i.x = bitcast <2 x i64> %i.j to <16 x i8>      ; 3 uses
  %6 = shufflevector <16 x i8> %i.x, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %7 = shufflevector <16 x i8> %i.x, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %8 = shufflevector <16 x i8> %i.x, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3>
  %i.y = xor <16 x i8> %6, %8
  %i.z = xor <16 x i8> %i.y, %7
  %i.aa = bitcast <16 x i8> %i.z to <2 x i64>
  %i.ab = xor <2 x i64> %i.w, %i.aa
  %i.ac = xor <2 x i64> %i.ab, %i.j               ; 4 uses
  %i.ad = bitcast <2 x i64> %i.ac to <4 x i32>
  %i.ae = shufflevector <4 x i32> %i.ad, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.af = bitcast <4 x i32> %i.ae to <2 x i64>
  %i.ag = bitcast <2 x i64> %i.q to <16 x i8>
  %9 = shufflevector <16 x i8> %i.ag, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %i.ah = bitcast <16 x i8> %9 to <2 x i64>
  %i.ai = xor <2 x i64> %i.ah, %i.af
  %i.aj = xor <2 x i64> %i.ai, %i.q               ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %i.ac, ptr %i.ak, align 16
  %i.al = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.aj, i8 4)
  %i.am = bitcast <2 x i64> %i.al to <4 x i32>
  %i.an = shufflevector <4 x i32> %i.am, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ao = bitcast <4 x i32> %i.an to <2 x i64>
  %i.ap = bitcast <2 x i64> %i.ac to <16 x i8>    ; 3 uses
  %10 = shufflevector <16 x i8> %i.ap, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %11 = shufflevector <16 x i8> %i.ap, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %12 = shufflevector <16 x i8> %i.ap, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3>
  %i.aq = xor <16 x i8> %10, %12
  %i.ar = xor <16 x i8> %i.aq, %11
  %i.as = bitcast <16 x i8> %i.ar to <2 x i64>
  %i.at = xor <2 x i64> %i.ao, %i.as
  %i.au = xor <2 x i64> %i.at, %i.ac              ; 5 uses
  %i.av = bitcast <2 x i64> %i.au to <4 x i32>
  %i.aw = shufflevector <4 x i32> %i.av, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ax = bitcast <4 x i32> %i.aw to <2 x i64>
  %i.ay = bitcast <2 x i64> %i.aj to <16 x i8>
  %13 = shufflevector <16 x i8> %i.ay, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %i.az = bitcast <16 x i8> %13 to <2 x i64>
  %i.ba = xor <2 x i64> %i.az, %i.ax
  %i.bb = xor <2 x i64> %i.ba, %i.aj              ; 4 uses
  %.uncasted582 = shufflevector <2 x i64> %i.aj, <2 x i64> %i.au, <2 x i32> <i32 0, i32 2>
  %.uncasted583 = shufflevector <2 x i64> %i.au, <2 x i64> %i.bb, <2 x i32> <i32 1, i32 2>
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x i64> %.uncasted582, ptr %i.bc, align 16
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x i64> %.uncasted583, ptr %i.bd, align 16
  %i.be = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.bb, i8 8)
  %i.bf = bitcast <2 x i64> %i.be to <4 x i32>
  %i.bg = shufflevector <4 x i32> %i.bf, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bh = bitcast <4 x i32> %i.bg to <2 x i64>
  %i.bi = bitcast <2 x i64> %i.au to <16 x i8>    ; 3 uses
  %14 = shufflevector <16 x i8> %i.bi, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %15 = shufflevector <16 x i8> %i.bi, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %16 = shufflevector <16 x i8> %i.bi, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3>
  %i.bj = xor <16 x i8> %14, %16
  %i.bk = xor <16 x i8> %i.bj, %15
  %i.bl = bitcast <16 x i8> %i.bk to <2 x i64>
  %i.bm = xor <2 x i64> %i.bh, %i.bl
  %i.bn = xor <2 x i64> %i.bm, %i.au              ; 4 uses
  %i.bo = bitcast <2 x i64> %i.bn to <4 x i32>
  %i.bp = shufflevector <4 x i32> %i.bo, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bq = bitcast <4 x i32> %i.bp to <2 x i64>
  %i.br = bitcast <2 x i64> %i.bb to <16 x i8>
  %17 = shufflevector <16 x i8> %i.br, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %i.bs = bitcast <16 x i8> %17 to <2 x i64>
  %i.bt = xor <2 x i64> %i.bs, %i.bq
  %i.bu = xor <2 x i64> %i.bt, %i.bb              ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x i64> %i.bn, ptr %i.bv, align 16
  %i.bw = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.bu, i8 16)
  %i.bx = bitcast <2 x i64> %i.bw to <4 x i32>
  %i.by = shufflevector <4 x i32> %i.bx, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bz = bitcast <4 x i32> %i.by to <2 x i64>
  %i.ca = bitcast <2 x i64> %i.bn to <16 x i8>    ; 3 uses
  %18 = shufflevector <16 x i8> %i.ca, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %19 = shufflevector <16 x i8> %i.ca, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %20 = shufflevector <16 x i8> %i.ca, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3>
  %i.cb = xor <16 x i8> %18, %20
  %i.cc = xor <16 x i8> %i.cb, %19
  %i.cd = bitcast <16 x i8> %i.cc to <2 x i64>
  %i.ce = xor <2 x i64> %i.bz, %i.cd
  %i.cf = xor <2 x i64> %i.ce, %i.bn              ; 5 uses
  %i.cg = bitcast <2 x i64> %i.cf to <4 x i32>
  %i.ch = shufflevector <4 x i32> %i.cg, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ci = bitcast <4 x i32> %i.ch to <2 x i64>
  %i.cj = bitcast <2 x i64> %i.bu to <16 x i8>
  %21 = shufflevector <16 x i8> %i.cj, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %i.ck = bitcast <16 x i8> %21 to <2 x i64>
  %i.cl = xor <2 x i64> %i.ck, %i.ci
  %i.cm = xor <2 x i64> %i.cl, %i.bu              ; 4 uses
  %.uncasted584 = shufflevector <2 x i64> %i.bu, <2 x i64> %i.cf, <2 x i32> <i32 0, i32 2>
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x i64> %.uncasted584, ptr %i.cn, align 16
  %.uncasted585 = shufflevector <2 x i64> %i.cf, <2 x i64> %i.cm, <2 x i32> <i32 1, i32 2>
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <2 x i64> %.uncasted585, ptr %i.co, align 16
  %i.cp = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.cm, i8 32)
  %i.cq = bitcast <2 x i64> %i.cp to <4 x i32>
  %i.cr = shufflevector <4 x i32> %i.cq, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cs = bitcast <4 x i32> %i.cr to <2 x i64>
  %i.ct = bitcast <2 x i64> %i.cf to <16 x i8>    ; 3 uses
  %22 = shufflevector <16 x i8> %i.ct, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %23 = shufflevector <16 x i8> %i.ct, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %24 = shufflevector <16 x i8> %i.ct, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3>
  %i.cu = xor <16 x i8> %22, %24
  %i.cv = xor <16 x i8> %i.cu, %23
  %i.cw = bitcast <16 x i8> %i.cv to <2 x i64>
  %i.cx = xor <2 x i64> %i.cs, %i.cw
  %i.cy = xor <2 x i64> %i.cx, %i.cf              ; 4 uses
  %i.cz = bitcast <2 x i64> %i.cy to <4 x i32>
  %i.da = shufflevector <4 x i32> %i.cz, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.db = bitcast <4 x i32> %i.da to <2 x i64>
  %i.dc = bitcast <2 x i64> %i.cm to <16 x i8>
  %25 = shufflevector <16 x i8> %i.dc, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %i.dd = bitcast <16 x i8> %25 to <2 x i64>
  %i.de = xor <2 x i64> %i.dd, %i.db
  %i.df = xor <2 x i64> %i.de, %i.cm              ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <2 x i64> %i.cy, ptr %i.dg, align 16
  %i.dh = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.df, i8 64)
  %i.di = bitcast <2 x i64> %i.dh to <4 x i32>
  %i.dj = shufflevector <4 x i32> %i.di, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dk = bitcast <4 x i32> %i.dj to <2 x i64>
  %i.dl = bitcast <2 x i64> %i.cy to <16 x i8>    ; 3 uses
  %26 = shufflevector <16 x i8> %i.dl, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %27 = shufflevector <16 x i8> %i.dl, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %28 = shufflevector <16 x i8> %i.dl, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3>
  %i.dm = xor <16 x i8> %26, %28
  %i.dn = xor <16 x i8> %i.dm, %27
  %i.do = bitcast <16 x i8> %i.dn to <2 x i64>
  %i.dp = xor <2 x i64> %i.dk, %i.do
  %i.dq = xor <2 x i64> %i.dp, %i.cy              ; 5 uses
  %i.dr = bitcast <2 x i64> %i.dq to <4 x i32>
  %i.ds = shufflevector <4 x i32> %i.dr, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.dt = bitcast <4 x i32> %i.ds to <2 x i64>
  %i.du = bitcast <2 x i64> %i.df to <16 x i8>
  %29 = shufflevector <16 x i8> %i.du, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %i.dv = bitcast <16 x i8> %29 to <2 x i64>
  %i.dw = xor <2 x i64> %i.dv, %i.dt
  %i.dx = xor <2 x i64> %i.dw, %i.df              ; 2 uses
  %.uncasted586 = shufflevector <2 x i64> %i.df, <2 x i64> %i.dq, <2 x i32> <i32 0, i32 2>
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <2 x i64> %.uncasted586, ptr %i.dy, align 16
  %.uncasted587 = shufflevector <2 x i64> %i.dq, <2 x i64> %i.dx, <2 x i32> <i32 1, i32 2>
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <2 x i64> %.uncasted587, ptr %i.dz, align 16
  %i.ea = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.dx, i8 -128)
  %i.eb = bitcast <2 x i64> %i.ea to <4 x i32>
  %i.ec = shufflevector <4 x i32> %i.eb, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ed = bitcast <4 x i32> %i.ec to <2 x i64>
  %i.ee = bitcast <2 x i64> %i.dq to <16 x i8>    ; 3 uses
  %30 = shufflevector <16 x i8> %i.ee, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %31 = shufflevector <16 x i8> %i.ee, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %32 = shufflevector <16 x i8> %i.ee, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3>
  %i.ef = xor <16 x i8> %30, %32
  %i.eg = xor <16 x i8> %i.ef, %31
  %i.eh = bitcast <16 x i8> %i.eg to <2 x i64>
  %i.ei = xor <2 x i64> %i.ed, %i.eh
  %i.ej = xor <2 x i64> %i.ei, %i.dq
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <2 x i64> %i.ej, ptr %i.ek, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_RNvNtNtCs2r61lPHg5zl_3aes2ni6aes19217inv_expanded_keys(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(208) initializes((0, 208)) %0, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(208) %1) unnamed_addr #3 {
bb.a:
  %i.a = load <2 x i64>, ptr %1, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load <2 x i64>, ptr %i.b, align 16
  %i.d = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load <2 x i64>, ptr %i.e, align 16
  %i.g = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load <2 x i64>, ptr %i.h, align 16
  %i.j = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = load <2 x i64>, ptr %i.k, align 16
  %i.m = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.o = load <2 x i64>, ptr %i.n, align 16
  %i.p = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.r = load <2 x i64>, ptr %i.q, align 16
  %i.s = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.u = load <2 x i64>, ptr %i.t, align 16
  %i.v = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.u)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.x = load <2 x i64>, ptr %i.w, align 16
  %i.y = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.aa = load <2 x i64>, ptr %i.z, align 16
  %i.ab = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ad = load <2 x i64>, ptr %i.ac, align 16
  %i.ae = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.ad)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ag = load <2 x i64>, ptr %i.af, align 16
  %i.ah = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.ag)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.aj = load <2 x i64>, ptr %i.ai, align 16
  store <2 x i64> %i.a, ptr %0, align 16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.d, ptr %i.ak, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.g, ptr %i.al, align 16
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %i.j, ptr %i.am, align 16
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x i64> %i.m, ptr %i.an, align 16
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x i64> %i.p, ptr %i.ao, align 16
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x i64> %i.s, ptr %i.ap, align 16
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x i64> %i.v, ptr %i.aq, align 16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <2 x i64> %i.y, ptr %i.ar, align 16
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <2 x i64> %i.ab, ptr %i.as, align 16
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <2 x i64> %i.ae, ptr %i.at, align 16
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <2 x i64> %i.ah, ptr %i.au, align 16
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <2 x i64> %i.aj, ptr %i.av, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_RNvNtNtCs2r61lPHg5zl_3aes2ni6aes25617inv_expanded_keys(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(240) initializes((0, 240)) %0, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(240) %1) unnamed_addr #3 {
bb.a:
  %i.a = load <2 x i64>, ptr %1, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load <2 x i64>, ptr %i.b, align 16
  %i.d = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load <2 x i64>, ptr %i.e, align 16
  %i.g = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load <2 x i64>, ptr %i.h, align 16
  %i.j = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = load <2 x i64>, ptr %i.k, align 16
  %i.m = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.o = load <2 x i64>, ptr %i.n, align 16
  %i.p = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.r = load <2 x i64>, ptr %i.q, align 16
  %i.s = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.u = load <2 x i64>, ptr %i.t, align 16
  %i.v = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.u)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.x = load <2 x i64>, ptr %i.w, align 16
  %i.y = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.aa = load <2 x i64>, ptr %i.z, align 16
  %i.ab = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ad = load <2 x i64>, ptr %i.ac, align 16
  %i.ae = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.ad)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ag = load <2 x i64>, ptr %i.af, align 16
  %i.ah = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.ag)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.aj = load <2 x i64>, ptr %i.ai, align 16
  %i.ak = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.am = load <2 x i64>, ptr %i.al, align 16
  %i.an = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ap = load <2 x i64>, ptr %i.ao, align 16
  store <2 x i64> %i.a, ptr %0, align 16
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.d, ptr %i.aq, align 16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.g, ptr %i.ar, align 16
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %i.j, ptr %i.as, align 16
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x i64> %i.m, ptr %i.at, align 16
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x i64> %i.p, ptr %i.au, align 16
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x i64> %i.s, ptr %i.av, align 16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x i64> %i.v, ptr %i.aw, align 16
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <2 x i64> %i.y, ptr %i.ax, align 16
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <2 x i64> %i.ab, ptr %i.ay, align 16
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <2 x i64> %i.ae, ptr %i.az, align 16
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <2 x i64> %i.ah, ptr %i.ba, align 16
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <2 x i64> %i.ak, ptr %i.bb, align 16
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x i64> %i.an, ptr %i.bc, align 16
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <2 x i64> %i.ap, ptr %i.bd, align 16
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvNvNtNtCs2r61lPHg5zl_3aes10autodetect14aes_intrinsics8init_get10init_inner() unnamed_addr #4 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 3 uses
  %i.b = alloca [16 x i8], align 4                ; 2 uses
  call fastcc void @_RNvNvNvNtNtCs2r61lPHg5zl_3aes10autodetect14aes_intrinsics8init_get10init_inner5cpuid(ptr noalias nofree noundef align 4 captures(none) dereferenceable(16) %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvNvNvNtNtCs2r61lPHg5zl_3aes10autodetect14aes_intrinsics8init_get10init_inner11cpuid_count(ptr noalias nofree noundef align 4 captures(none) dereferenceable(16) %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 4, !noundef !6
  %i.e = and i32 %i.d, 33554432                   ; 2 uses
  %i.f = icmp ne i32 %i.e, 0
  %.lobit = lshr exact i32 %i.e, 25
  %i.g = trunc nuw nsw i32 %.lobit to i8
  store atomic i8 %i.g, ptr @_RNvNtNtCs2r61lPHg5zl_3aes10autodetect14aes_intrinsics7STORAGE monotonic, align 1
  ret i1 %i.f
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal fastcc void @_RNvNvNvNtNtCs2r61lPHg5zl_3aes10autodetect14aes_intrinsics8init_get10init_inner11cpuid_count(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #5 {
bb.a:
  %i.a = tail call { i32, i32, i32, i32 } asm sideeffect inteldialect "mov ${0:q}, rbx\0Acpuid\0Axchg ${0:q}, rbx", "=&r,=&{ax},=&{cx},=&{dx},1,2,~{memory}"(i32 7, i32 0) #20, !srcloc !4 ; 4 uses
  %i.b = extractvalue { i32, i32, i32, i32 } %i.a, 0
  %i.c = extractvalue { i32, i32, i32, i32 } %i.a, 1
  %i.d = extractvalue { i32, i32, i32, i32 } %i.a, 2
  %i.e = extractvalue { i32, i32, i32, i32 } %i.a, 3
  store i32 %i.c, ptr %0, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.b, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.d, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.e, ptr %i.h, align 4
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal fastcc void @_RNvNvNvNtNtCs2r61lPHg5zl_3aes10autodetect14aes_intrinsics8init_get10init_inner5cpuid(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #5 {
bb.a:
  %i.a = tail call { i32, i32, i32, i32 } asm sideeffect inteldialect "mov ${0:q}, rbx\0Acpuid\0Axchg ${0:q}, rbx", "=&r,=&{ax},=&{cx},=&{dx},1,2,~{memory}"(i32 1, i32 0) #20, !srcloc !4 ; 4 uses
  %i.b = extractvalue { i32, i32, i32, i32 } %i.a, 0
  %i.c = extractvalue { i32, i32, i32, i32 } %i.a, 1
  %i.d = extractvalue { i32, i32, i32, i32 } %i.a, 2
  %i.e = extractvalue { i32, i32, i32, i32 } %i.a, 3
  store i32 %i.c, ptr %0, align 4
end_hunk_0
begin_hunk_1_@_RNvXs1D_NtCs2r61lPHg5zl_3aes2niNtB6_9Aes256DecNtCsjHR7MSmRRVK_13crypto_common7KeyInit3new
define void @_RNvXs1D_NtCs2r61lPHg5zl_3aes2niNtB6_9Aes256DecNtCsjHR7MSmRRVK_13crypto_common7KeyInit3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([240 x i8]) align 16 captures(none) dereferenceable(240) initializes((0, 240)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(32) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [240 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs1u_NtCs2r61lPHg5zl_3aes2niNtB6_9Aes256EncNtCsjHR7MSmRRVK_13crypto_common7KeyInit3new(ptr noalias nofree noundef nonnull sret([240 x i8]) align 16 captures(none) dereferenceable(240) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %1)
  call fastcc void @_RNvNtNtCs2r61lPHg5zl_3aes2ni6aes25617inv_expanded_keys(ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(240) %0, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(240) %i.a), !alias.scope !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1G_NtCs2r61lPHg5zl_3aes4softNtB6_9Aes256DecNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(960) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1H_NtCs2r61lPHg5zl_3aes4softNtB6_9Aes256DecNtCsjHR7MSmRRVK_13crypto_common13AlgorithmName14write_alg_name(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 9)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1I_NtCs2r61lPHg5zl_3aes2niNtB6_9Aes256DecNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(240) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1J_NtCs2r61lPHg5zl_3aes2niNtB6_9Aes256DecNtCsjHR7MSmRRVK_13crypto_common13AlgorithmName14write_alg_name(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 9)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1a_NtCs2r61lPHg5zl_3aes10autodetectNtB6_6Aes256NtCsjHR7MSmRRVK_13crypto_common13AlgorithmName14write_alg_name(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 6)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvXs1e_NtCs2r61lPHg5zl_3aes10autodetectNtB6_9Aes256EncNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([960 x i8]) align 16 captures(none) dereferenceable(960) initializes((0, 960)) %0, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(960) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [960 x i8], align 16              ; 3 uses
  %i.b = load atomic i8, ptr @_RNvNtNtCs2r61lPHg5zl_3aes10autodetect14aes_intrinsics7STORAGE monotonic, align 1
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(960) %i.a, ptr noundef nonnull align 16 dereferenceable(960) %1, i64 960, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.a, ptr noundef nonnull align 16 dereferenceable(240) %1, i64 240, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(960) %0, ptr noundef nonnull align 16 dereferenceable(960) %i.a, i64 960, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1i_NtCs2r61lPHg5zl_3aes10autodetectNtB6_9Aes256EncNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(960) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1j_NtCs2r61lPHg5zl_3aes10autodetectNtB6_9Aes256EncNtCsjHR7MSmRRVK_13crypto_common13AlgorithmName14write_alg_name(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 9)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvXs1n_NtCs2r61lPHg5zl_3aes10autodetectNtB6_9Aes256DecINtNtCskKLDkoKarTP_4core7convert4FromRNtB6_9Aes256EncE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([960 x i8]) align 16 captures(none) dereferenceable(960) initializes((0, 960)) %0, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(960) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [960 x i8], align 16              ; 3 uses
  %i.b = load atomic i8, ptr @_RNvNtNtCs2r61lPHg5zl_3aes10autodetect14aes_intrinsics7STORAGE monotonic, align 1
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(960) %i.a, ptr noundef nonnull align 16 dereferenceable(960) %1, i64 960, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call fastcc void @_RNvNtNtCs2r61lPHg5zl_3aes2ni6aes25617inv_expanded_keys(ptr noalias nofree noundef align 16 captures(none) dereferenceable(240) %i.a, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(240) %1) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(960) %0, ptr noundef nonnull align 16 dereferenceable(960) %i.a, i64 960, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1n_NtCs2r61lPHg5zl_3aes4softNtB6_6Aes256NtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(960) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 13)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1o_NtCs2r61lPHg5zl_3aes4softNtB6_6Aes256NtCsjHR7MSmRRVK_13crypto_common13AlgorithmName14write_alg_name(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 6)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvXs1p_NtCs2r61lPHg5zl_3aes10autodetectNtB6_9Aes256DecNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([960 x i8]) align 16 captures(none) dereferenceable(960) initializes((0, 960)) %0, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(960) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [960 x i8], align 16              ; 3 uses
  %i.b = load atomic i8, ptr @_RNvNtNtCs2r61lPHg5zl_3aes10autodetect14aes_intrinsics7STORAGE monotonic, align 1
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(960) %i.a, ptr noundef nonnull align 16 dereferenceable(960) %1, i64 960, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.a, ptr noundef nonnull align 16 dereferenceable(240) %1, i64 240, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(960) %0, ptr noundef nonnull align 16 dereferenceable(960) %i.a, i64 960, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1p_NtCs2r61lPHg5zl_3aes2niNtB6_6Aes256NtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(480) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 13)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1q_NtCs2r61lPHg5zl_3aes2niNtB6_6Aes256NtCsjHR7MSmRRVK_13crypto_common13AlgorithmName14write_alg_name(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 6)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1t_NtCs2r61lPHg5zl_3aes10autodetectNtB6_9Aes256DecNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(960) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1u_NtCs2r61lPHg5zl_3aes10autodetectNtB6_9Aes256DecNtCsjHR7MSmRRVK_13crypto_common13AlgorithmName14write_alg_name(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 9)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs1u_NtCs2r61lPHg5zl_3aes2niNtB6_9Aes256EncNtCsjHR7MSmRRVK_13crypto_common7KeyInit3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([240 x i8]) align 16 captures(none) dereferenceable(240) initializes((0, 240)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(32) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [16 x i8], align 16               ; 4 uses
  %i.h = alloca [16 x i8], align 16               ; 4 uses
  %i.i = alloca [16 x i8], align 16               ; 4 uses
  %i.j = alloca [16 x i8], align 16               ; 4 uses
  %i.k = alloca [16 x i8], align 16               ; 4 uses
  %i.l = alloca [16 x i8], align 16               ; 4 uses
  %i.m = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %.sroa.0.0.copyload.i = load <2 x i64>, ptr %1, align 1, !noalias !18 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i169 = load <2 x i64>, ptr %i.n, align 1, !noalias !19 ; 4 uses
  call fastcc void @_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x863aes25__mm_aeskeygenassist_si128Kl1_ECs2r61lPHg5zl_3aes(ptr noalias nofree noundef align 16 captures(address) dereferenceable(16) %i.m, <2 x i64> %.sroa.0.0.copyload.i169) #21
  %i.o = load <4 x i32>, ptr %i.m, align 16, !noalias !20
  %i.p = shufflevector <4 x i32> %i.o, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.q = bitcast <4 x i32> %i.p to <2 x i64>
  %i.r = bitcast <2 x i64> %.sroa.0.0.copyload.i to <16 x i8> ; 3 uses
  %2 = shufflevector <16 x i8> %i.r, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %3 = shufflevector <16 x i8> %i.r, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %4 = shufflevector <16 x i8> %i.r, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3>
  %i.s = xor <16 x i8> %2, %4
  %i.t = xor <16 x i8> %i.s, %3
  %i.u = bitcast <16 x i8> %i.t to <2 x i64>
  %i.v = xor <2 x i64> %i.q, %i.u
  %i.w = xor <2 x i64> %i.v, %.sroa.0.0.copyload.i ; 4 uses
  call fastcc void @_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x863aes25__mm_aeskeygenassist_si128Kl0_ECs2r61lPHg5zl_3aes(ptr noalias nofree noundef align 16 captures(address) dereferenceable(16) %i.l, <2 x i64> %i.w) #21
  %i.x = load <3 x i32>, ptr %i.l, align 16, !noalias !20
  %i.y = shufflevector <3 x i32> %i.x, <3 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.z = bitcast <2 x i64> %.sroa.0.0.copyload.i169 to <16 x i8> ; 3 uses
  %5 = shufflevector <16 x i8> %i.z, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %6 = shufflevector <16 x i8> %i.z, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %7 = shufflevector <16 x i8> %i.z, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3>
  %i.aa = xor <16 x i8> %5, %7
  %i.ab = xor <16 x i8> %i.aa, %6
  %i.ac = bitcast <16 x i8> %i.ab to <2 x i64>
  %i.ad = bitcast <4 x i32> %i.y to <2 x i64>
  %i.ae = xor <2 x i64> %i.ad, %i.ac
  %i.af = xor <2 x i64> %i.ae, %.sroa.0.0.copyload.i169 ; 4 uses
  call fastcc void @_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x863aes25__mm_aeskeygenassist_si128Kl2_ECs2r61lPHg5zl_3aes(ptr noalias nofree noundef align 16 captures(address) dereferenceable(16) %i.k, <2 x i64> %i.af) #21
  %i.ag = load <4 x i32>, ptr %i.k, align 16, !noalias !20
  %i.ah = shufflevector <4 x i32> %i.ag, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ai = bitcast <4 x i32> %i.ah to <2 x i64>
  %i.aj = bitcast <2 x i64> %i.w to <16 x i8>     ; 3 uses
  %8 = shufflevector <16 x i8> %i.aj, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %9 = shufflevector <16 x i8> %i.aj, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %10 = shufflevector <16 x i8> %i.aj, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3>
  %i.ak = xor <16 x i8> %8, %10
  %i.al = xor <16 x i8> %i.ak, %9
  %i.am = bitcast <16 x i8> %i.al to <2 x i64>
  %i.an = xor <2 x i64> %i.am, %i.ai
  %i.ao = xor <2 x i64> %i.an, %i.w               ; 4 uses
  call fastcc void @_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x863aes25__mm_aeskeygenassist_si128Kl0_ECs2r61lPHg5zl_3aes(ptr noalias nofree noundef align 16 captures(address) dereferenceable(16) %i.j, <2 x i64> %i.ao) #21
  %i.ap = load <3 x i32>, ptr %i.j, align 16, !noalias !20
  %i.aq = shufflevector <3 x i32> %i.ap, <3 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ar = bitcast <2 x i64> %i.af to <16 x i8>    ; 3 uses
  %11 = shufflevector <16 x i8> %i.ar, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %12 = shufflevector <16 x i8> %i.ar, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %13 = shufflevector <16 x i8> %i.ar, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3>
  %i.as = xor <16 x i8> %11, %13
  %i.at = xor <16 x i8> %i.as, %12
  %i.au = bitcast <16 x i8> %i.at to <2 x i64>
  %i.av = bitcast <4 x i32> %i.aq to <2 x i64>
  %i.aw = xor <2 x i64> %i.av, %i.au
  %i.ax = xor <2 x i64> %i.aw, %i.af              ; 4 uses
  call fastcc void @_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x863aes25__mm_aeskeygenassist_si128Kl4_ECs2r61lPHg5zl_3aes(ptr noalias nofree noundef align 16 captures(address) dereferenceable(16) %i.i, <2 x i64> %i.ax) #21
  %i.ay = load <4 x i32>, ptr %i.i, align 16, !noalias !20
  %i.az = shufflevector <4 x i32> %i.ay, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ba = bitcast <4 x i32> %i.az to <2 x i64>
  %i.bb = bitcast <2 x i64> %i.ao to <16 x i8>    ; 3 uses
  %14 = shufflevector <16 x i8> %i.bb, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %15 = shufflevector <16 x i8> %i.bb, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %16 = shufflevector <16 x i8> %i.bb, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3>
  %i.bc = xor <16 x i8> %14, %16
  %i.bd = xor <16 x i8> %i.bc, %15
  %i.be = bitcast <16 x i8> %i.bd to <2 x i64>
  %i.bf = xor <2 x i64> %i.be, %i.ba
  %i.bg = xor <2 x i64> %i.bf, %i.ao              ; 4 uses
  call fastcc void @_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x863aes25__mm_aeskeygenassist_si128Kl0_ECs2r61lPHg5zl_3aes(ptr noalias nofree noundef align 16 captures(address) dereferenceable(16) %i.h, <2 x i64> %i.bg) #21
  %i.bh = load <3 x i32>, ptr %i.h, align 16, !noalias !20
  %i.bi = shufflevector <3 x i32> %i.bh, <3 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bj = bitcast <2 x i64> %i.ax to <16 x i8>    ; 3 uses
  %17 = shufflevector <16 x i8> %i.bj, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %18 = shufflevector <16 x i8> %i.bj, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %19 = shufflevector <16 x i8> %i.bj, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3>
  %i.bk = xor <16 x i8> %17, %19
  %i.bl = xor <16 x i8> %i.bk, %18
  %i.bm = bitcast <16 x i8> %i.bl to <2 x i64>
  %i.bn = bitcast <4 x i32> %i.bi to <2 x i64>
  %i.bo = xor <2 x i64> %i.bn, %i.bm
  %i.bp = xor <2 x i64> %i.bo, %i.ax              ; 4 uses
  call fastcc void @_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x863aes25__mm_aeskeygenassist_si128Kl8_ECs2r61lPHg5zl_3aes(ptr noalias nofree noundef align 16 captures(address) dereferenceable(16) %i.g, <2 x i64> %i.bp) #21
  %i.bq = load <4 x i32>, ptr %i.g, align 16, !noalias !20
  %i.br = shufflevector <4 x i32> %i.bq, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bs = bitcast <4 x i32> %i.br to <2 x i64>
  %i.bt = bitcast <2 x i64> %i.bg to <16 x i8>    ; 3 uses
  %20 = shufflevector <16 x i8> %i.bt, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %21 = shufflevector <16 x i8> %i.bt, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %22 = shufflevector <16 x i8> %i.bt, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3>
  %i.bu = xor <16 x i8> %20, %22
  %i.bv = xor <16 x i8> %i.bu, %21
  %i.bw = bitcast <16 x i8> %i.bv to <2 x i64>
  %i.bx = xor <2 x i64> %i.bw, %i.bs
  %i.by = xor <2 x i64> %i.bx, %i.bg              ; 4 uses
  call fastcc void @_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x863aes25__mm_aeskeygenassist_si128Kl0_ECs2r61lPHg5zl_3aes(ptr noalias nofree noundef align 16 captures(address) dereferenceable(16) %i.f, <2 x i64> %i.by) #21
  %i.bz = load <3 x i32>, ptr %i.f, align 16, !noalias !20
  %i.ca = shufflevector <3 x i32> %i.bz, <3 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.cb = bitcast <2 x i64> %i.bp to <16 x i8>    ; 3 uses
  %23 = shufflevector <16 x i8> %i.cb, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %24 = shufflevector <16 x i8> %i.cb, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %25 = shufflevector <16 x i8> %i.cb, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3>
  %i.cc = xor <16 x i8> %23, %25
  %i.cd = xor <16 x i8> %i.cc, %24
  %i.ce = bitcast <16 x i8> %i.cd to <2 x i64>
  %i.cf = bitcast <4 x i32> %i.ca to <2 x i64>
  %i.cg = xor <2 x i64> %i.cf, %i.ce
  %i.ch = xor <2 x i64> %i.cg, %i.bp              ; 4 uses
  call fastcc void @_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x863aes25__mm_aeskeygenassist_si128Kl10_ECs2r61lPHg5zl_3aes(ptr noalias nofree noundef align 16 captures(address) dereferenceable(16) %i.e, <2 x i64> %i.ch) #21
  %i.ci = load <4 x i32>, ptr %i.e, align 16, !noalias !20
  %i.cj = shufflevector <4 x i32> %i.ci, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ck = bitcast <4 x i32> %i.cj to <2 x i64>
  %i.cl = bitcast <2 x i64> %i.by to <16 x i8>    ; 3 uses
  %26 = shufflevector <16 x i8> %i.cl, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %27 = shufflevector <16 x i8> %i.cl, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %28 = shufflevector <16 x i8> %i.cl, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3>
  %i.cm = xor <16 x i8> %26, %28
  %i.cn = xor <16 x i8> %i.cm, %27
  %i.co = bitcast <16 x i8> %i.cn to <2 x i64>
  %i.cp = xor <2 x i64> %i.co, %i.ck
  %i.cq = xor <2 x i64> %i.cp, %i.by              ; 4 uses
  call fastcc void @_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x863aes25__mm_aeskeygenassist_si128Kl0_ECs2r61lPHg5zl_3aes(ptr noalias nofree noundef align 16 captures(address) dereferenceable(16) %i.d, <2 x i64> %i.cq) #21
  %i.cr = load <3 x i32>, ptr %i.d, align 16, !noalias !20
  %i.cs = shufflevector <3 x i32> %i.cr, <3 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ct = bitcast <2 x i64> %i.ch to <16 x i8>    ; 3 uses
  %29 = shufflevector <16 x i8> %i.ct, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %30 = shufflevector <16 x i8> %i.ct, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %31 = shufflevector <16 x i8> %i.ct, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3>
  %i.cu = xor <16 x i8> %29, %31
  %i.cv = xor <16 x i8> %i.cu, %30
  %i.cw = bitcast <16 x i8> %i.cv to <2 x i64>
  %i.cx = bitcast <4 x i32> %i.cs to <2 x i64>
  %i.cy = xor <2 x i64> %i.cx, %i.cw
  %i.cz = xor <2 x i64> %i.cy, %i.ch              ; 4 uses
  call fastcc void @_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x863aes25__mm_aeskeygenassist_si128Kl20_ECs2r61lPHg5zl_3aes(ptr noalias nofree noundef align 16 captures(address) dereferenceable(16) %i.c, <2 x i64> %i.cz) #21
  %i.da = load <4 x i32>, ptr %i.c, align 16, !noalias !20
  %i.db = shufflevector <4 x i32> %i.da, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.dc = bitcast <4 x i32> %i.db to <2 x i64>
  %i.dd = bitcast <2 x i64> %i.cq to <16 x i8>    ; 3 uses
  %32 = shufflevector <16 x i8> %i.dd, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %33 = shufflevector <16 x i8> %i.dd, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %34 = shufflevector <16 x i8> %i.dd, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3>
  %i.de = xor <16 x i8> %32, %34
  %i.df = xor <16 x i8> %i.de, %33
  %i.dg = bitcast <16 x i8> %i.df to <2 x i64>
  %i.dh = xor <2 x i64> %i.dg, %i.dc
  %i.di = xor <2 x i64> %i.dh, %i.cq              ; 4 uses
  call fastcc void @_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x863aes25__mm_aeskeygenassist_si128Kl0_ECs2r61lPHg5zl_3aes(ptr noalias nofree noundef align 16 captures(address) dereferenceable(16) %i.b, <2 x i64> %i.di) #21
  %i.dj = load <3 x i32>, ptr %i.b, align 16, !noalias !20
  %i.dk = shufflevector <3 x i32> %i.dj, <3 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.dl = bitcast <2 x i64> %i.cz to <16 x i8>    ; 3 uses
  %35 = shufflevector <16 x i8> %i.dl, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %36 = shufflevector <16 x i8> %i.dl, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %37 = shufflevector <16 x i8> %i.dl, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3>
  %i.dm = xor <16 x i8> %35, %37
  %i.dn = xor <16 x i8> %i.dm, %36
  %i.do = bitcast <16 x i8> %i.dn to <2 x i64>
  %i.dp = bitcast <4 x i32> %i.dk to <2 x i64>
  %i.dq = xor <2 x i64> %i.dp, %i.do
  %i.dr = xor <2 x i64> %i.dq, %i.cz              ; 2 uses
  call fastcc void @_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x863aes25__mm_aeskeygenassist_si128Kl40_ECs2r61lPHg5zl_3aes(ptr noalias nofree noundef align 16 captures(address) dereferenceable(16) %i.a, <2 x i64> %i.dr) #21
  %i.ds = load <4 x i32>, ptr %i.a, align 16, !noalias !20
  %i.dt = shufflevector <4 x i32> %i.ds, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.du = bitcast <4 x i32> %i.dt to <2 x i64>
  %i.dv = bitcast <2 x i64> %i.di to <16 x i8>    ; 3 uses
  %38 = shufflevector <16 x i8> %i.dv, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %39 = shufflevector <16 x i8> %i.dv, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %40 = shufflevector <16 x i8> %i.dv, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3>
  %i.dw = xor <16 x i8> %38, %40
  %i.dx = xor <16 x i8> %i.dw, %39
  %i.dy = bitcast <16 x i8> %i.dx to <2 x i64>
  %i.dz = xor <2 x i64> %i.dy, %i.du
  %i.ea = xor <2 x i64> %i.dz, %i.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store <2 x i64> %.sroa.0.0.copyload.i, ptr %0, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %.sroa.0.0.copyload.i169, ptr %.sroa.6.0..sroa_idx, align 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.w, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %i.af, ptr %.sroa.9.0..sroa_idx, align 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x i64> %i.ao, ptr %.sroa.10.0..sroa_idx, align 16
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x i64> %i.ax, ptr %.sroa.12.0..sroa_idx, align 16
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x i64> %i.bg, ptr %.sroa.13.0..sroa_idx, align 16
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x i64> %i.bp, ptr %.sroa.15.0..sroa_idx, align 16
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <2 x i64> %i.by, ptr %.sroa.16.0..sroa_idx, align 16
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <2 x i64> %i.ch, ptr %.sroa.18.0..sroa_idx, align 16
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <2 x i64> %i.cq, ptr %.sroa.19.0..sroa_idx, align 16
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <2 x i64> %i.cz, ptr %.sroa.21.0..sroa_idx, align 16
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <2 x i64> %i.di, ptr %.sroa.22.0..sroa_idx, align 16
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x i64> %i.dr, ptr %.sroa.24.0..sroa_idx, align 16
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <2 x i64> %i.ea, ptr %.sroa.25.0..sroa_idx, align 16
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1w_NtCs2r61lPHg5zl_3aes4softNtB6_9Aes256EncNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(960) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1x_NtCs2r61lPHg5zl_3aes2niNtB6_9Aes256EncNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(240) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1x_NtCs2r61lPHg5zl_3aes4softNtB6_9Aes256EncNtCsjHR7MSmRRVK_13crypto_common13AlgorithmName14write_alg_name(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 9)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1y_NtCs2r61lPHg5zl_3aes2niNtB6_9Aes256EncNtCsjHR7MSmRRVK_13crypto_common13AlgorithmName14write_alg_name(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 9)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvXs2_NtCs2r61lPHg5zl_3aes10autodetectNtB5_6Aes128NtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([704 x i8]) align 16 captures(none) dereferenceable(704) initializes((0, 704)) %0, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(704) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [704 x i8], align 16              ; 3 uses
  %i.b = load atomic i8, ptr @_RNvNtNtCs2r61lPHg5zl_3aes10autodetect14aes_intrinsics7STORAGE monotonic, align 1
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(704) %i.a, ptr noundef nonnull align 16 dereferenceable(704) %1, i64 704, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(352) %i.a, ptr noundef nonnull align 16 dereferenceable(352) %1, i64 352, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(704) %0, ptr noundef nonnull align 16 dereferenceable(704) %i.a, i64 704, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define hidden void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutyEINtBZ_4IteryEEINtB5_7ZipImplBW_B1r_E3newCs2r61lPHg5zl_3aes(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub nuw i64 %i.a, %i.b
  %i.d = lshr exact i64 %i.c, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %i.e = ptrtoint ptr %4 to i64
  %i.f = ptrtoint ptr %3 to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.h, i64 %i.d)
  store ptr %1, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %..i, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs7_NtCs2r61lPHg5zl_3aes10autodetectNtB5_6Aes128NtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(704) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 13)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs7_NtCs2r61lPHg5zl_3aes2niNtB5_6Aes128NtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(352) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 13)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs7_NtCs2r61lPHg5zl_3aes4softNtB5_6Aes128NtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(704) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 13)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs8_NtCs2r61lPHg5zl_3aes10autodetectNtB5_6Aes128NtCsjHR7MSmRRVK_13crypto_common13AlgorithmName14write_alg_name(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 6)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs8_NtCs2r61lPHg5zl_3aes2niNtB5_6Aes128NtCsjHR7MSmRRVK_13crypto_common13AlgorithmName14write_alg_name(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 6)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs8_NtCs2r61lPHg5zl_3aes4softNtB5_6Aes128NtCsjHR7MSmRRVK_13crypto_common13AlgorithmName14write_alg_name(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 6)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsD_NtCs2r61lPHg5zl_3aes10autodetectNtB5_6Aes192NtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(832) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 13)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsE_NtCs2r61lPHg5zl_3aes10autodetectNtB5_6Aes192NtCsjHR7MSmRRVK_13crypto_common13AlgorithmName14write_alg_name(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 6)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvXsI_NtCs2r61lPHg5zl_3aes10autodetectNtB5_9Aes192EncNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([832 x i8]) align 16 captures(none) dereferenceable(832) initializes((0, 832)) %0, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(832) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [832 x i8], align 16              ; 3 uses
  %i.b = load atomic i8, ptr @_RNvNtNtCs2r61lPHg5zl_3aes10autodetect14aes_intrinsics7STORAGE monotonic, align 1
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(832) %i.a, ptr noundef nonnull align 16 dereferenceable(832) %1, i64 832, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %i.a, ptr noundef nonnull align 16 dereferenceable(208) %1, i64 208, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
end_hunk_1
