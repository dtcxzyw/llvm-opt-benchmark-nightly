Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/ring-335c34c9cf309207.ring.40ba2f4c2579a305-cgu.0?download=true
inline.NumInlined: 2615
inline.NumDeleted: 1171
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_RNvMNtNtCs5yxAJGbRKSL_4ring4aead25chacha20_poly1305_opensshNtB2_10SealingKey13seal_in_place:bb.a
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit: ; preds = %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.l = icmp samesign ugt i64 %3, 274877906884
  br i1 %i.l, label %bb.e, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit, !prof !16

bb.e:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #41, !noalias !1848
  unreachable

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit: ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  %i.m = tail call i32 @llvm.bswap.i32(i32 %1)    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1849
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.e, i8 0, i64 32, i1 false), !noalias !1849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1850
  store i32 0, ptr %i.d, align 4, !noalias !1850
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !1850
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !1850
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %i.m, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !noalias !1850
  call void @ring_core_0_17_16000__ChaCha20_ctr32_nohw(ptr noundef nonnull dereferenceable(32) %i.e, ptr noundef nonnull dereferenceable(32) %i.e, i64 noundef 32, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.d) #36, !noalias !1851, !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1850
  %.sroa.1163.sroa.0.0.copyload = load i32, ptr %i.e, align 4, !noalias !1852 ; 2 uses
  %.sroa.1163.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.1163.sroa.4.0.copyload = load i32, ptr %.sroa.1163.sroa.4.0..sroa_idx, align 4, !noalias !1852 ; 2 uses
  %.sroa.1163.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.1163.sroa.5.0.copyload = load i32, ptr %.sroa.1163.sroa.5.0..sroa_idx, align 4, !noalias !1852 ; 2 uses
  %.sroa.1163.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.sroa.1163.sroa.6.0.copyload = load i32, ptr %.sroa.1163.sroa.6.0..sroa_idx, align 4, !noalias !1852 ; 2 uses
  %.sroa.1163.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.1163.sroa.7.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 1, ptr %i.f, align 4
  %.sroa.049.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i64 0, ptr %.sroa.049.sroa.4.0..sroa_idx, align 4
  %.sroa.049.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 %i.m, ptr %.sroa.049.sroa.5.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1853
  store i32 0, ptr %i.c, align 4, !noalias !1853
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !1853
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 4, !noalias !1853
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.m, ptr %.sroa.6.0..sroa_idx.i, align 4, !noalias !1853
  call void @ring_core_0_17_16000__ChaCha20_ctr32_nohw(ptr noundef nonnull dereferenceable(4) %2, ptr noundef nonnull dereferenceable(4) %2, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.c) #36, !noalias !1854, !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1853
  %i.n = icmp samesign ugt i64 %3, 132
  br i1 %i.n, label %bb.f, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit27

bb.f:                                             ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit
  %i.o = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noalias !1855, !noundef !15 ; 3 uses
  %i.p = icmp ne i32 %i.o, 0
  call void @llvm.assume(i1 %i.p)
  %i.q = and i32 %i.o, 256
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.g, label %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_644Avx2Kj81_EB8_.exit

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit27: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit
  %.not3.i = icmp eq i64 %i.i, 0
  br i1 %.not3.i, label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead6chachaNtB4_3Key7encrypt.exit, label %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghEuKj1_EB8_.exit

_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_644Avx2Kj81_EB8_.exit: ; preds = %bb.f
  call void @ring_core_0_17_16000__ChaCha20_ctr32_avx2(ptr noundef nonnull %i.h, ptr noundef nonnull %i.h, i64 noundef %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.f) #36, !noalias !1856, !inline_history !3
  br label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead6chachaNtB4_3Key7encrypt.exit

bb.g:                                             ; preds = %bb.f
  %i.r = and i32 %i.o, 4
  %.not2.i = icmp eq i32 %i.r, 0
  br i1 %.not2.i, label %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghEuKj1_EB8_.exit, label %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_645Ssse3Kj81_EB8_.exit

_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_645Ssse3Kj81_EB8_.exit: ; preds = %bb.g
  call void @ring_core_0_17_16000__ChaCha20_ctr32_ssse3_4x(ptr noundef nonnull %i.h, ptr noundef nonnull %i.h, i64 noundef %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.f) #36, !noalias !1857, !inline_history !4
  br label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead6chachaNtB4_3Key7encrypt.exit

_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghEuKj1_EB8_.exit: ; preds = %bb.g, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit27
  call void @ring_core_0_17_16000__ChaCha20_ctr32_nohw(ptr noundef nonnull %i.h, ptr noundef nonnull %i.h, i64 noundef %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.f) #36, !noalias !1858, !inline_history !2
  br label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead6chachaNtB4_3Key7encrypt.exit

_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead6chachaNtB4_3Key7encrypt.exit: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit27, %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_644Avx2Kj81_EB8_.exit, %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_645Ssse3Kj81_EB8_.exit, %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghEuKj1_EB8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1859
  call void @llvm.experimental.noalias.scope.decl(metadata !1860)
  %i.s = and i32 %.sroa.1163.sroa.0.0.copyload, 67108863
  %i.t = call i32 @llvm.fshl.i32(i32 %.sroa.1163.sroa.4.0.copyload, i32 %.sroa.1163.sroa.0.0.copyload, i32 6)
  %i.u = and i32 %i.t, 67108611                   ; 2 uses
  %i.v = call i32 @llvm.fshl.i32(i32 %.sroa.1163.sroa.5.0.copyload, i32 %.sroa.1163.sroa.4.0.copyload, i32 12)
  %i.w = and i32 %i.v, 67092735                   ; 2 uses
  %i.x = call i32 @llvm.fshl.i32(i32 %.sroa.1163.sroa.6.0.copyload, i32 %.sroa.1163.sroa.5.0.copyload, i32 18)
  %i.y = and i32 %i.x, 66076671                   ; 2 uses
  %i.z = lshr i32 %.sroa.1163.sroa.6.0.copyload, 8
  %i.aa = and i32 %i.z, 1048575                   ; 2 uses
  %i.ab = mul nuw nsw i32 %i.u, 5
  %i.ac = mul nuw nsw i32 %i.w, 5
  %i.ad = mul nuw nsw i32 %i.y, 5
  %i.ae = mul nuw nsw i32 %i.aa, 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7, i64 16, i1 false), !alias.scope !1861, !noalias !1862
  %.sroa.4.0..sroa_idx.i.i42 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.s, ptr %.sroa.4.0..sroa_idx.i.i42, align 16, !alias.scope !1863, !noalias !1864
  %.sroa.5.0..sroa_idx.i.i43 = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %i.u, ptr %.sroa.5.0..sroa_idx.i.i43, align 4, !alias.scope !1863, !noalias !1864
  %.sroa.6.0..sroa_idx.i.i44 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.w, ptr %.sroa.6.0..sroa_idx.i.i44, align 8, !alias.scope !1863, !noalias !1864
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 %i.y, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !alias.scope !1863, !noalias !1864
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %i.aa, ptr %.sroa.8.0..sroa_idx.i.i, align 32, !alias.scope !1863, !noalias !1864
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 %i.ab, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !alias.scope !1863, !noalias !1864
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %i.ac, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !alias.scope !1863, !noalias !1864
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 %i.ad, ptr %.sroa.11.0..sroa_idx.i.i, align 4, !alias.scope !1863, !noalias !1864
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 %i.ae, ptr %.sroa.12.0..sroa_idx.i.i, align 16, !alias.scope !1863, !noalias !1864
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.13.0..sroa_idx.i.i, i8 0, i64 20, i1 false), !alias.scope !1863, !noalias !1864
  call fastcc void @_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead8poly1305NtB4_7Context15update_internal(ptr noalias nofree noundef nonnull align 64 dereferenceable(128) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 4, -9223372036854775808) %3), !noalias !1865
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 64, !alias.scope !1866, !noalias !1867
  %.sroa.4.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i45, align 4, !alias.scope !1866, !noalias !1867
  %.sroa.5.0..sroa_idx.i46 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i46, align 8, !alias.scope !1866, !noalias !1867
  %.sroa.6.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i47, align 4, !alias.scope !1866, !noalias !1867
  %.sroa.71.0.copyload.i = load i32, ptr %.sroa.13.0..sroa_idx.i.i, align 4, !alias.scope !1866, !noalias !1867 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.8.0.copyload.i = load i32, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !1866, !noalias !1867
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %.sroa.9.0.copyload.i = load i32, ptr %.sroa.9.0..sroa_idx.i, align 4, !alias.scope !1866, !noalias !1867
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.10.0.copyload.i = load i32, ptr %.sroa.10.0..sroa_idx.i, align 64, !alias.scope !1866, !noalias !1867
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %.sroa.11.0.copyload.i = load i32, ptr %.sroa.11.0..sroa_idx.i, align 4, !alias.scope !1866, !noalias !1867
  %i.af = lshr i32 %.sroa.71.0.copyload.i, 26
  %i.ag = and i32 %.sroa.71.0.copyload.i, 67108863
  %i.ah = add i32 %.sroa.8.0.copyload.i, %i.af    ; 2 uses
  %i.ai = lshr i32 %i.ah, 26
  %i.aj = and i32 %i.ah, 67108863                 ; 2 uses
  %i.ak = add i32 %i.ai, %.sroa.9.0.copyload.i    ; 2 uses
  %i.al = lshr i32 %i.ak, 26
  %i.am = and i32 %i.ak, 67108863                 ; 2 uses
  %i.an = add i32 %i.al, %.sroa.10.0.copyload.i   ; 2 uses
  %i.ao = lshr i32 %i.an, 26
  %i.ap = and i32 %i.an, 67108863                 ; 2 uses
  %i.aq = add i32 %i.ao, %.sroa.11.0.copyload.i   ; 3 uses
  %i.ar = lshr i32 %i.aq, 26
  %i.as = mul nuw nsw i32 %i.ar, 5
  %i.at = add nuw nsw i32 %i.as, %i.ag            ; 2 uses
  %i.au = add nuw nsw i32 %i.at, 5                ; 2 uses
  %i.av = lshr i32 %i.au, 26
  %i.aw = add nuw nsw i32 %i.av, %i.aj            ; 2 uses
  %i.ax = lshr i32 %i.aw, 26
  %i.ay = add nuw nsw i32 %i.ax, %i.am            ; 2 uses
  %i.az = lshr i32 %i.ay, 26
  %i.ba = add nuw nsw i32 %i.az, %i.ap            ; 2 uses
  %i.bb = lshr i32 %i.ba, 26
  %i.bc = or i32 %i.aq, -67108864
  %i.bd = add nsw i32 %i.bb, %i.bc                ; 3 uses
  %.neg.i.i = ashr i32 %i.bd, 31                  ; 5 uses
  %i.be = lshr i32 %i.bd, 31
  %i.bf = add nsw i32 %i.be, -1                   ; 2 uses
  %i.bg = and i32 %.neg.i.i, %i.at
  %i.bh = and i32 %i.bf, 67108863                 ; 4 uses
  %i.bi = and i32 %i.bh, %i.au
  %i.bj = or i32 %i.bi, %i.bg
  %i.bk = and i32 %.neg.i.i, %i.aj
  %i.bl = and i32 %i.bh, %i.aw
  %i.bm = or i32 %i.bl, %i.bk                     ; 2 uses
  %i.bn = and i32 %.neg.i.i, %i.am
  %i.bo = and i32 %i.bh, %i.ay
  %i.bp = or i32 %i.bo, %i.bn                     ; 2 uses
  %i.bq = and i32 %.neg.i.i, %i.ap
  %i.br = and i32 %i.bh, %i.ba
  %i.bs = or i32 %i.br, %i.bq                     ; 2 uses
  %i.bt = and i32 %.neg.i.i, %i.aq
  %i.bu = and i32 %i.bf, %i.bd
  %i.bv = or i32 %i.bu, %i.bt
  %i.bw = shl i32 %i.bm, 26
  %i.bx = or i32 %i.bj, %i.bw                     ; 2 uses
  %add.narrowed.i.i = add i32 %i.bx, %.sroa.0.0.copyload.i ; 2 uses
  %add.narrowed.overflow.i.i = icmp ult i32 %add.narrowed.i.i, %i.bx
  %i.by = lshr i32 %i.bm, 6
  %i.bz = shl i32 %i.bp, 20
  %i.ca = or disjoint i32 %i.by, %i.bz
  %i.cb = zext i32 %i.ca to i64
  %i.cc = zext i32 %.sroa.4.0.copyload.i to i64
  %i.cd = add nuw nsw i64 %i.cb, %i.cc
  %i.ce = lshr i32 %i.bp, 12
  %i.cf = shl i32 %i.bs, 14
  %i.cg = or disjoint i32 %i.ce, %i.cf
  %i.ch = zext i32 %i.cg to i64
  %i.ci = zext i32 %.sroa.5.0.copyload.i to i64
  %i.cj = add nuw nsw i64 %i.ch, %i.ci
  %i.ck = lshr i32 %i.bs, 18
  %i.cl = shl i32 %i.bv, 8
  %i.cm = zext i1 %add.narrowed.overflow.i.i to i64
  %5 = add nuw nsw i64 %i.cd, %i.cm               ; 2 uses
  %6 = trunc i64 %5 to i32
  %7 = lshr i64 %5, 32
  %i.cn = add nuw nsw i64 %i.cj, %7               ; 2 uses
  %i.co = trunc i64 %i.cn to i32
  %i.cp = lshr i64 %i.cn, 32
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %8 = add i32 %i.cl, %.sroa.6.0.copyload.i
  %9 = add i32 %8, %i.ck
  %10 = add i32 %9, %i.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1859
  store i32 %add.narrowed.i.i, ptr %4, align 1
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %6, ptr %.sroa.496.0..sroa_idx, align 1
  %.sroa.597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.co, ptr %.sroa.597.0..sroa_idx, align 1
  %.sroa.698.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %10, ptr %.sroa.698.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMNtNtCs5yxAJGbRKSL_4ring4aead25chacha20_poly1305_opensshNtB2_10SealingKey3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 4 captures(none) dereferenceable(64) initializes((0, 64)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(64) %1) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.764.0..sroa.6.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.772.0..sroa.0.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <4 x i32>, ptr %i.a, align 1, !alias.scope !1871, !noalias !1872
  store <4 x i32> %i.b, ptr %0, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load <4 x i32>, ptr %.sroa.764.0..sroa.6.16..sroa_idx.i, align 1, !alias.scope !1871, !noalias !1872
  store <4 x i32> %i.c, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load <4 x i32>, ptr %1, align 1, !alias.scope !1871, !noalias !1872
  store <4 x i32> %i.d, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load <4 x i32>, ptr %.sroa.772.0..sroa.0.0..sroa_idx.i, align 1, !alias.scope !1871, !noalias !1872
  store <4 x i32> %i.e, ptr %.sroa.15.0..sroa_idx, align 4
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB2_3Key11open_within(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(448) %1, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dead_on_return dereferenceable(12) %2, ptr noalias nofree noundef nonnull readonly captures(none) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %5, i64 %.0.val, i64 %.8.val) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [16 x i8], align 1                ; 4 uses
  %i.c = alloca [16 x i8], align 1                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 1                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 1                ; 6 uses
  %i.i = alloca [16 x i8], align 1                ; 4 uses
  %i.j = alloca [16 x i8], align 1                ; 4 uses
  %i.k = alloca [16 x i8], align 1                ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 1                ; 4 uses
  %i.n = alloca [16 x i8], align 1                ; 5 uses
  %i.o = alloca [40 x i8], align 8                ; 11 uses
  %i.p = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.12.i.i.i.i.i = alloca [24 x i8], align 8 ; 6 uses
  %i.q = alloca [16 x i8], align 1                ; 5 uses
  %i.r = alloca [16 x i8], align 1                ; 5 uses
  %i.s = alloca [16 x i8], align 1                ; 5 uses
  %i.t = alloca [16 x i8], align 1                ; 5 uses
  %i.u = alloca [16 x i8], align 1                ; 6 uses
  %i.v = alloca [16 x i8], align 1                ; 9 uses
  %i.w = alloca [24 x i8], align 8                ; 14 uses
  %i.x = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2000)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2001)
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !2002, !noalias !2003, !noundef !15 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !2002, !noalias !2003, !noundef !15 ; 9 uses
  %i.ac = icmp ult i64 %i.z, %i.ab
  br i1 %i.ac, label %bb.b, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #41, !noalias !2004
  unreachable

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i: ; preds = %bb.a
  %i.ad = sub nuw i64 %i.z, %i.ab                 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2005)
  %i.ae = load ptr, ptr %5, align 8, !alias.scope !2006, !noalias !2007, !nonnull !15, !noundef !15 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2008
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2009)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2011)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2012
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.v, ptr noundef nonnull align 1 dereferenceable(12) %2, i64 12, i1 false)
  %.sroa.9.0..sroa_idx9.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 16777216, ptr %.sroa.9.0..sroa_idx9.i.i.i.i, align 1, !alias.scope !2013, !noalias !2012
  %i.af = load i64, ptr %1, align 8, !range !41, !alias.scope !2011, !noalias !2014, !noundef !15
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  switch i64 %i.af, label %default.unreachable [
    i64 0, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i
    i64 1, label %bb.i
    i64 2, label %bb.j
    i64 3, label %bb.k
    i64 4, label %bb.l
  ], !prof !42

default.unreachable:                              ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i
  unreachable

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2012
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.u, ptr noundef nonnull align 1 dereferenceable(12) %2, i64 12, i1 false)
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 12 ; 3 uses
  store i32 33554432, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 1, !noalias !2012
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2015)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2016)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2012
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i.i.i.i)
  %i.ai = icmp ugt i64 %i.ad, 68719476704
  br i1 %i.ai, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread.i.i.i.i.i, label %bb.c, !prof !16

bb.c:                                             ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i
  %i.aj = icmp ugt i64 %4, 2305843009213693951
  br i1 %i.aj, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread.i.i.i.i.i, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.ak = shl nuw nsw i64 %i.ad, 3
  %i.al = shl nuw i64 %4, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2017
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false), !noalias !2018
  store ptr %i.ag, ptr %i.o, align 8, !noalias !2017
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 %i.al, ptr %i.an, align 8, !noalias !2017
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i64 %i.ak, ptr %i.ao, align 8, !noalias !2017
  %i.ap = icmp eq i64 %4, 0
  br i1 %i.ap, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread36.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i.i

_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread36.i.i.i.i.i: ; preds = %bb.d
  %.sroa.516.0..sroa_idx39.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.516.0..sroa_idx39.i.i.i.i.i, i64 24, i1 false), !noalias !2018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2017
  br label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i:                   ; preds = %bb.d, %.lr.ph.i.preheader.i.i.i.i.i.i
  %.sroa.011.026.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.preheader.i.i.i.i.i.i ], [ %3, %bb.d ] ; 2 uses
  %.sroa.512.025.i.i.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.preheader.i.i.i.i.i.i ], [ %4, %bb.d ] ; 3 uses
  %..i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.512.025.i.i.i.i.i, i64 16) ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.011.026.i.i.i.i.i, i64 %..i.i.i.i.i.i.i
  %i.ar = sub nuw nsw i64 %.sroa.512.025.i.i.i.i.i, %..i.i.i.i.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2018
  %i.as = icmp ugt i64 %.sroa.512.025.i.i.i.i.i, 15
  %i.at = sub nuw nsw i64 16, %..i.i.i.i.i.i.i
  %i.au = select i1 %i.as, i64 0, i64 %i.at
  %i.av = getelementptr i8, ptr %i.n, i64 %..i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.av, i8 0, i64 %i.au, i1 false), !noalias !2018
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.011.026.i.i.i.i.i, i64 %..i.i.i.i.i.i.i, i1 false), !alias.scope !2019, !noalias !2020
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2017
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.m, ptr noundef nonnull align 1 dereferenceable(16) %i.n, i64 16, i1 false), !noalias !2017
  %i.aw = load ptr, ptr %i.o, align 8, !noalias !2017, !nonnull !15, !align !17, !noundef !15
  call void @ring_core_0_17_16000__gcm_ghash_vpclmulqdq_avx2_16(ptr noalias nofree noundef nonnull dereferenceable(16) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.aw, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.m, i64 noundef range(i64 1, 9223372036854775793) 16) #36, !noalias !2021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2018
  %i.ax = icmp eq i64 %i.ar, 0
  br i1 %i.ax, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i.i

_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.preheader.i.i.i.i.i.i
  %.sroa.014.0.copyload.pre.i.i.i.i.i = load ptr, ptr %i.o, align 8, !noalias !2017 ; 2 uses
  %.sroa.415.0.copyload.pre.i.i.i.i.i = load i64, ptr %i.am, align 8, !noalias !2017 ; 2 uses
  %.sroa.516.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.516.0..sroa_idx.i.i.i.i.i, i64 24, i1 false), !noalias !2018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2017
  %i.ay = icmp eq ptr %.sroa.014.0.copyload.pre.i.i.i.i.i, null
  br i1 %i.ay, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread.i.i.i.i.i, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i.i

_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread.i.i.i.i.i: ; preds = %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.i.i.i.i.i, %bb.c, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i
  %.sroa.88.024.i.i.i.i.i = phi i64 [ %.sroa.415.0.copyload.pre.i.i.i.i.i, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.i.i.i.i.i ], [ %i.ad, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i ], [ %4, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i.i.i)
  %i.az = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %.sroa.88.024.i.i.i.i.i, ptr %i.az, align 8, !alias.scope !2022, !noalias !2023
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm18open_whole_partialNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm10vclmulavx23KeyNvNtB2_13vaesclmulavx226open_whole_vaes_clmul_avx2EB6_.exit.i.i.i.i

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i.i: ; preds = %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.i.i.i.i.i, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread36.i.i.i.i.i
  %.sroa.014.0.copyload41.i.i.i.i.i = phi ptr [ %i.ag, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread36.i.i.i.i.i ], [ %.sroa.014.0.copyload.pre.i.i.i.i.i, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.415.0.copyload40.i.i.i.i.i = phi i64 [ 0, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread36.i.i.i.i.i ], [ %.sroa.415.0.copyload.pre.i.i.i.i.i, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %.sroa.8.0..sroa_idx4.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx4.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.i.i.i.i.i, i64 24, i1 false), !noalias !2018
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i.i.i)
  store ptr %.sroa.014.0.copyload41.i.i.i.i.i, ptr %i.p, align 8, !noalias !2018
  %.sroa.6.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store i64 %.sroa.415.0.copyload40.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i, align 8, !noalias !2018
  call void @llvm.experimental.noalias.scope.decl(metadata !2024)
  %i.bb = and i64 %i.ad, 68719476720              ; 5 uses
  %i.bc = add i64 %i.bb, %i.ab                    ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.ab
  %.not.i.i7.i.i.i.i.i = icmp ugt i64 %i.bc, %i.z
  %or.cond.i.i.i.i.i.i = or i1 %i.bd, %.not.i.i7.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.h, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i.i.i.i.i.i, !prof !29

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i.i
  %.sroa.6.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i = lshr i64 %i.ad, 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.6.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm23open_whole_partial_tailNtNtNtB6_3aes2hw3KeyNtNtNtB6_3gcm10vclmulavx23KeyNvNtB4_13vaesclmulavx226open_whole_vaes_clmul_avx2E0B8_.exit.i.i.i.i.i.i.i, label %_RINvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB6_11OverlappinghE21with_input_output_lenuNCNvNtNtBa_7aes_gcm13vaesclmulavx226open_whole_vaes_clmul_avx20EBc_.exit.i.i.i.i.i.i.i.i.i.i

_RINvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB6_11OverlappinghE21with_input_output_lenuNCNvNtNtBa_7aes_gcm13vaesclmulavx226open_whole_vaes_clmul_avx20EBc_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i to i32
  call void @ring_core_0_17_16000__aes_gcm_dec_update_vaes_avx2(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ae, i64 noundef %i.bb, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.ba, ptr noalias nofree noundef nonnull align 1 dereferenceable(16) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.sroa.014.0.copyload41.i.i.i.i.i, ptr noalias nofree noundef nonnull dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i.i) #36, !noalias !2025
  %i.be = load i32, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 1, !alias.scope !2026, !noalias !2027
  %i.bf = call i32 @llvm.bswap.i32(i32 %i.be)
  %i.bg = add i32 %i.bf, %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i
  %i.bh = call i32 @llvm.bswap.i32(i32 %i.bg)
  store i32 %i.bh, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 1, !alias.scope !2026, !noalias !2027
  br label %_RNCINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm23open_whole_partial_tailNtNtNtB6_3aes2hw3KeyNtNtNtB6_3gcm10vclmulavx23KeyNvNtB4_13vaesclmulavx226open_whole_vaes_clmul_avx2E0B8_.exit.i.i.i.i.i.i.i

end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed18compute_public_key:bb.a
  br i1 %i.f, label %bb.c, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.e, i64 noundef 97, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @162) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !15, !noundef !15
  %i.i = call noundef zeroext i1 %i.h(ptr noalias nofree noundef nonnull %i.b, i64 noundef %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.j, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi i64 [ 0, %bb.d ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, i64 } @_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead25chacha20_poly1305_opensshNtB4_10OpeningKey13open_in_place(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(64) %0, i32 noundef %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly captures(none) dereferenceable(16) %4) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [128 x i8], align 64              ; 22 uses
  %i.c = alloca [16 x i8], align 4                ; 7 uses
  %i.d = alloca [32 x i8], align 4                ; 10 uses
  %i.e = alloca [16 x i8], align 4                ; 6 uses
  %i.f = icmp samesign ugt i64 %3, 3
  br i1 %i.f, label %bb.b, label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead6chachaNtB4_3Key7encrypt.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 10 uses
  %i.h = add nsw i64 %3, -4                       ; 7 uses
  %i.i = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.c, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit: ; preds = %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.k = icmp samesign ugt i64 %3, 274877906884
  br i1 %i.k, label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead6chachaNtB4_3Key7encrypt.exit, label %.lr.ph.i.i.i, !prof !16

_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead6chachaNtB4_3Key7encrypt.exit: ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit, %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghEuKj1_EB8_.exit, %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_645Ssse3Kj81_EB8_.exit, %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_644Avx2Kj81_EB8_.exit, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit33, %.lr.ph.i.i.i, %bb.a
  %.sroa.5.0 = phi i64 [ %i.h, %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghEuKj1_EB8_.exit ], [ undef, %bb.a ], [ undef, %.lr.ph.i.i.i ], [ 0, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit33 ], [ %i.h, %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_644Avx2Kj81_EB8_.exit ], [ %i.h, %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_645Ssse3Kj81_EB8_.exit ], [ undef, %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit ]
  %.sroa.0.0 = phi ptr [ %i.g, %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghEuKj1_EB8_.exit ], [ null, %bb.a ], [ null, %.lr.ph.i.i.i ], [ %i.g, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit33 ], [ %i.g, %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_644Avx2Kj81_EB8_.exit ], [ %i.g, %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_645Ssse3Kj81_EB8_.exit ], [ null, %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit ]
  %i.l = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.m = insertvalue { ptr, i64 } %i.l, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %i.m

.lr.ph.i.i.i:                                     ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  %i.n = tail call i32 @llvm.bswap.i32(i32 %1)    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3883
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.d, i8 0, i64 32, i1 false), !noalias !3883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3884
  store i32 0, ptr %i.c, align 4, !noalias !3884
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !3884
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !3884
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.n, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !noalias !3884
  call void @ring_core_0_17_16000__ChaCha20_ctr32_nohw(ptr noundef nonnull dereferenceable(32) %i.d, ptr noundef nonnull dereferenceable(32) %i.d, i64 noundef 32, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.c) #36, !noalias !3885, !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3884
  %.sroa.12.sroa.0.0.copyload = load i32, ptr %i.d, align 4, !noalias !3886 ; 2 uses
  %.sroa.12.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.12.sroa.5.0.copyload = load i32, ptr %.sroa.12.sroa.5.0..sroa_idx, align 4, !noalias !3886 ; 2 uses
  %.sroa.12.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.12.sroa.6.0.copyload = load i32, ptr %.sroa.12.sroa.6.0..sroa_idx, align 4, !noalias !3886 ; 2 uses
  %.sroa.12.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.sroa.12.sroa.7.0.copyload = load i32, ptr %.sroa.12.sroa.7.0..sroa_idx, align 4, !noalias !3886 ; 2 uses
  %.sroa.12.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3887
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.12.sroa.8.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3883
  store i32 1, ptr %i.e, align 4
  %.sroa.4.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa_idx, align 4
  %.sroa.4.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 %i.n, ptr %.sroa.4.sroa.6.0..sroa_idx, align 4
  %i.o = and i32 %.sroa.12.sroa.0.0.copyload, 67108863
  %i.p = call i32 @llvm.fshl.i32(i32 %.sroa.12.sroa.5.0.copyload, i32 %.sroa.12.sroa.0.0.copyload, i32 6)
  %i.q = and i32 %i.p, 67108611                   ; 2 uses
  %i.r = call i32 @llvm.fshl.i32(i32 %.sroa.12.sroa.6.0.copyload, i32 %.sroa.12.sroa.5.0.copyload, i32 12)
  %i.s = and i32 %i.r, 67092735                   ; 2 uses
  %i.t = call i32 @llvm.fshl.i32(i32 %.sroa.12.sroa.7.0.copyload, i32 %.sroa.12.sroa.6.0.copyload, i32 18)
  %i.u = and i32 %i.t, 66076671                   ; 2 uses
  %i.v = lshr i32 %.sroa.12.sroa.7.0.copyload, 8
  %i.w = and i32 %i.v, 1048575                    ; 2 uses
  %i.x = mul nuw nsw i32 %i.q, 5
  %i.y = mul nuw nsw i32 %i.s, 5
  %i.z = mul nuw nsw i32 %i.u, 5
  %i.aa = mul nuw nsw i32 %i.w, 5
  %.sroa.4.0..sroa_idx.i.i29 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.o, ptr %.sroa.4.0..sroa_idx.i.i29, align 16, !alias.scope !3888, !noalias !3889
  %.sroa.5.0..sroa_idx.i.i30 = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %i.q, ptr %.sroa.5.0..sroa_idx.i.i30, align 4, !alias.scope !3888, !noalias !3889
  %.sroa.6.0..sroa_idx.i.i31 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.s, ptr %.sroa.6.0..sroa_idx.i.i31, align 8, !alias.scope !3888, !noalias !3889
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 %i.u, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !alias.scope !3888, !noalias !3889
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %i.w, ptr %.sroa.8.0..sroa_idx.i.i, align 32, !alias.scope !3888, !noalias !3889
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 %i.x, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !alias.scope !3888, !noalias !3889
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %i.y, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !alias.scope !3888, !noalias !3889
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 %i.z, ptr %.sroa.11.0..sroa_idx.i.i, align 4, !alias.scope !3888, !noalias !3889
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 %i.aa, ptr %.sroa.12.0..sroa_idx.i.i, align 16, !alias.scope !3888, !noalias !3889
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.13.0..sroa_idx.i.i, i8 0, i64 20, i1 false), !alias.scope !3888, !noalias !3889
  call fastcc void @_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead8poly1305NtB4_7Context15update_internal(ptr noalias nofree noundef nonnull align 64 dereferenceable(128) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 4, -9223372036854775808) %3), !noalias !3890
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 64, !alias.scope !3891, !noalias !3892
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !3891, !noalias !3892
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !3891, !noalias !3892
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4, !alias.scope !3891, !noalias !3892
  %.sroa.71.0.copyload.i = load i32, ptr %.sroa.13.0..sroa_idx.i.i, align 4, !alias.scope !3891, !noalias !3892 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.8.0.copyload.i = load i32, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !3891, !noalias !3892
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %.sroa.9.0.copyload.i = load i32, ptr %.sroa.9.0..sroa_idx.i, align 4, !alias.scope !3891, !noalias !3892
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.10.0.copyload.i = load i32, ptr %.sroa.10.0..sroa_idx.i, align 64, !alias.scope !3891, !noalias !3892
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %.sroa.11.0.copyload.i = load i32, ptr %.sroa.11.0..sroa_idx.i, align 4, !alias.scope !3891, !noalias !3892
  %i.ab = lshr i32 %.sroa.71.0.copyload.i, 26
  %i.ac = and i32 %.sroa.71.0.copyload.i, 67108863
  %i.ad = add i32 %.sroa.8.0.copyload.i, %i.ab    ; 2 uses
  %i.ae = lshr i32 %i.ad, 26
  %i.af = and i32 %i.ad, 67108863                 ; 2 uses
  %i.ag = add i32 %i.ae, %.sroa.9.0.copyload.i    ; 2 uses
  %i.ah = lshr i32 %i.ag, 26
  %i.ai = and i32 %i.ag, 67108863                 ; 2 uses
  %i.aj = add i32 %i.ah, %.sroa.10.0.copyload.i   ; 2 uses
  %i.ak = lshr i32 %i.aj, 26
  %i.al = and i32 %i.aj, 67108863                 ; 2 uses
  %i.am = add i32 %i.ak, %.sroa.11.0.copyload.i   ; 3 uses
  %i.an = lshr i32 %i.am, 26
  %i.ao = mul nuw nsw i32 %i.an, 5
  %i.ap = add nuw nsw i32 %i.ao, %i.ac            ; 2 uses
  %i.aq = add nuw nsw i32 %i.ap, 5                ; 2 uses
  %i.ar = lshr i32 %i.aq, 26
  %i.as = add nuw nsw i32 %i.ar, %i.af            ; 2 uses
  %i.at = lshr i32 %i.as, 26
  %i.au = add nuw nsw i32 %i.at, %i.ai            ; 2 uses
  %i.av = lshr i32 %i.au, 26
  %i.aw = add nuw nsw i32 %i.av, %i.al            ; 2 uses
  %i.ax = lshr i32 %i.aw, 26
  %i.ay = or i32 %i.am, -67108864
  %i.az = add nsw i32 %i.ax, %i.ay                ; 3 uses
  %.neg.i.i = ashr i32 %i.az, 31                  ; 5 uses
  %i.ba = lshr i32 %i.az, 31
  %i.bb = add nsw i32 %i.ba, -1                   ; 2 uses
  %i.bc = and i32 %.neg.i.i, %i.ap
  %i.bd = and i32 %i.bb, 67108863                 ; 4 uses
  %i.be = and i32 %i.bd, %i.aq
  %i.bf = or i32 %i.be, %i.bc
  %i.bg = and i32 %.neg.i.i, %i.af
  %i.bh = and i32 %i.bd, %i.as
  %i.bi = or i32 %i.bh, %i.bg                     ; 2 uses
  %i.bj = and i32 %.neg.i.i, %i.ai
  %i.bk = and i32 %i.bd, %i.au
  %i.bl = or i32 %i.bk, %i.bj                     ; 2 uses
  %i.bm = and i32 %.neg.i.i, %i.al
  %i.bn = and i32 %i.bd, %i.aw
  %i.bo = or i32 %i.bn, %i.bm                     ; 2 uses
  %i.bp = and i32 %.neg.i.i, %i.am
  %i.bq = and i32 %i.bb, %i.az
  %i.br = or i32 %i.bq, %i.bp
  %i.bs = shl i32 %i.bi, 26
  %i.bt = or i32 %i.bf, %i.bs                     ; 2 uses
  %add.narrowed.i.i = add i32 %i.bt, %.sroa.0.0.copyload.i ; 2 uses
  %add.narrowed.overflow.i.i = icmp ult i32 %add.narrowed.i.i, %i.bt
  %i.bu = lshr i32 %i.bi, 6
  %i.bv = shl i32 %i.bl, 20
  %i.bw = or disjoint i32 %i.bu, %i.bv
  %i.bx = zext i32 %i.bw to i64
  %i.by = zext i32 %.sroa.4.0.copyload.i to i64
  %i.bz = add nuw nsw i64 %i.bx, %i.by
  %i.ca = lshr i32 %i.bl, 12
  %i.cb = shl i32 %i.bo, 14
  %i.cc = or disjoint i32 %i.ca, %i.cb
  %i.cd = zext i32 %i.cc to i64
  %i.ce = zext i32 %.sroa.5.0.copyload.i to i64
  %i.cf = add nuw nsw i64 %i.cd, %i.ce
  %i.cg = lshr i32 %i.bo, 18
  %i.ch = shl i32 %i.br, 8
  %5 = zext i1 %add.narrowed.overflow.i.i to i64
  %6 = add nuw nsw i64 %i.bz, %5                  ; 2 uses
  %7 = lshr i64 %6, 32
  %i.ci = add nuw nsw i64 %i.cf, %7               ; 2 uses
  %8 = lshr i64 %i.ci, 32
  %9 = trunc nuw nsw i64 %8 to i32
  %10 = add i32 %i.ch, %.sroa.6.0.copyload.i
  %11 = add i32 %10, %i.cg
  %12 = add i32 %11, %9
  %.sroa.0.0.insert.ext = zext i32 %add.narrowed.i.i to i64
  %.sroa.0.4.insert.ext = shl i64 %6, 32
  %.sroa.0.4.insert.insert = or disjoint i64 %.sroa.0.4.insert.ext, %.sroa.0.0.insert.ext
  %.sroa.6.8.insert.ext = and i64 %i.ci, 4294967295
  %.sroa.6.12.insert.ext = zext i32 %12 to i64
  %i.cj = shl nuw i64 %.sroa.6.12.insert.ext, 32
  %.sroa.6.12.insert.insert = or disjoint i64 %.sroa.6.8.insert.ext, %i.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3887
  call void @llvm.experimental.noalias.scope.decl(metadata !3893)
  call void @llvm.experimental.noalias.scope.decl(metadata !3894)
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i = load i64, ptr %4, align 1, !alias.scope !3895, !noalias !3896
  %i.ck = xor i64 %.sroa.0.0.copyload.i.i.i2.i.i.i.i, %.sroa.0.4.insert.insert
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.1 = load i64, ptr %i.cl, align 1, !alias.scope !3895, !noalias !3896
  %i.cm = xor i64 %.sroa.0.0.copyload.i.i.i2.i.i.i.i.1, %.sroa.6.12.insert.insert
  %i.cn = or i64 %i.cm, %i.ck
  %i.co = call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %i.cn) #36, !noalias !3897
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3898
  store i64 %i.co, ptr %i.a, align 8, !noalias !3898
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.a) #36, !noalias !3898, !srcloc !37
  %i.cp = load i64, ptr %i.a, align 8, !noalias !3898, !noundef !15
  %.not.i32 = icmp eq i64 %i.cp, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3898
  br i1 %.not.i32, label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead6chachaNtB4_3Key7encrypt.exit, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit: ; preds = %.lr.ph.i.i.i
  %i.cq = icmp samesign ugt i64 %3, 132
  br i1 %i.cq, label %bb.d, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit33

bb.d:                                             ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit
  %i.cr = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noalias !3899, !noundef !15 ; 3 uses
  %i.cs = icmp ne i32 %i.cr, 0
  call void @llvm.assume(i1 %i.cs)
  %i.ct = and i32 %i.cr, 256
  %.not.i = icmp eq i32 %i.ct, 0
  br i1 %.not.i, label %bb.e, label %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_644Avx2Kj81_EB8_.exit

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit33: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit
  %.not3.i = icmp eq i64 %i.h, 0
  br i1 %.not3.i, label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead6chachaNtB4_3Key7encrypt.exit, label %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghEuKj1_EB8_.exit

_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_644Avx2Kj81_EB8_.exit: ; preds = %bb.d
  call void @ring_core_0_17_16000__ChaCha20_ctr32_avx2(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g, i64 noundef %i.h, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.e) #36, !noalias !3900, !inline_history !3
  br label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead6chachaNtB4_3Key7encrypt.exit

bb.e:                                             ; preds = %bb.d
  %i.cu = and i32 %i.cr, 4
  %.not2.i = icmp eq i32 %i.cu, 0
  br i1 %.not2.i, label %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghEuKj1_EB8_.exit, label %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_645Ssse3Kj81_EB8_.exit

_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_645Ssse3Kj81_EB8_.exit: ; preds = %bb.e
  call void @ring_core_0_17_16000__ChaCha20_ctr32_ssse3_4x(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g, i64 noundef %i.h, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.e) #36, !noalias !3901, !inline_history !4
  br label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead6chachaNtB4_3Key7encrypt.exit

_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghEuKj1_EB8_.exit: ; preds = %bb.e, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit33
  call void @ring_core_0_17_16000__ChaCha20_ctr32_nohw(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g, i64 noundef %i.h, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.e) #36, !noalias !3902, !inline_history !2
  br label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead6chachaNtB4_3Key7encrypt.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef i32 @_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead25chacha20_poly1305_opensshNtB4_10OpeningKey21decrypt_packet_length(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(64) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 7 uses
  %i.b = alloca [4 x i8], align 4                 ; 6 uses
  %i.c = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.b, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %2, ptr %i.b, align 4
  %i.d = tail call i32 @llvm.bswap.i32(i32 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3915
  store i32 0, ptr %i.a, align 4, !noalias !3915
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !3915
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 4, !noalias !3915
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.d, ptr %.sroa.6.0..sroa_idx.i, align 4, !noalias !3915
  call void @ring_core_0_17_16000__ChaCha20_ctr32_nohw(ptr noundef nonnull dereferenceable(4) %i.b, ptr noundef nonnull dereferenceable(4) %i.b, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.a) #36, !noalias !3916, !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3915
  %.sroa.03.0.copyload = load i32, ptr %i.b, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i32 %.sroa.03.0.copyload
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead25chacha20_poly1305_opensshNtB4_10OpeningKey3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 4 captures(none) dereferenceable(64) initializes((0, 64)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(64) %1) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.764.0..sroa.6.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.772.0..sroa.0.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <4 x i32>, ptr %i.a, align 1, !alias.scope !3920, !noalias !3921
  store <4 x i32> %i.b, ptr %0, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load <4 x i32>, ptr %.sroa.764.0..sroa.6.16..sroa_idx.i, align 1, !alias.scope !3920, !noalias !3921
  store <4 x i32> %i.c, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load <4 x i32>, ptr %1, align 1, !alias.scope !3920, !noalias !3921
  store <4 x i32> %i.d, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load <4 x i32>, ptr %.sroa.772.0..sroa.0.0..sroa_idx.i, align 1, !alias.scope !3920, !noalias !3921
  store <4 x i32> %i.e, ptr %.sroa.15.0..sroa_idx, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead4quicNtB4_19HeaderProtectionKey3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([264 x i8]) align 8 captures(none) dereferenceable(264) initializes((0, 4)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %1, align 8, !nonnull !15, !noundef !15
  %i.c = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.b, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit: ; preds = %bb.a, %bb.b
  call void %i.b(ptr noalias nofree noundef nonnull sret([256 x i8]) align 8 captures(address) dereferenceable(256) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.d = load i32, ptr %i.a, align 8, !range !49, !noundef !15
  %i.e = icmp eq i32 %i.d, -2
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 -2, ptr %0, align 8
  br label %bb.e

bb.d:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define range(i48 0, -254) i48 @_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead4quicNtB4_19HeaderProtectionKey8new_mask(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 1                ; 4 uses
  %i.b = icmp eq i64 %2, 16
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !15, !align !17, !noundef !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  %i.g = call i40 %i.f(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %0, ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.sroa.0.0 = phi i40 [ %i.g, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ 1, %bb.a ]
  %.sroa.3.0.insert.ext = zext i40 %.sroa.3.sroa.0.0 to i48
  %.sroa.3.0.insert.shift = shl nuw i48 %.sroa.3.0.insert.ext, 8
  %.sroa.0.0.insert.ext = zext nneg i8 %.sroa.0.0 to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.3.0.insert.shift, %.sroa.0.0.insert.ext
  ret i48 %.sroa.0.0.insert.insert
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB4_6DynKey12new_fallback(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(448) initializes((0, 272)) %0, i64 noundef range(i64 0, 2) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 1                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [248 x i8], align 8               ; 3 uses
  call fastcc void @_RNvMs2_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_3Key3new(ptr noalias nofree noundef align 8 captures(address) dereferenceable(248) %i.d, i64 noundef %1, ptr noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3931
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !noalias !3932
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3931
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3931
  store ptr %i.c, ptr %i.a, align 8, !noalias !3931
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 16, ptr %i.e, align 8, !noalias !3931
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.f, align 8, !noalias !3931
  call void @_RNvXs4_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_3KeyNtB7_12EncryptCtr3220ctr32_encrypt_within(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull dereferenceable(16) %i.b) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3931
  %.sroa.017.0.copyload = load i64, ptr %i.c, align 8, !noalias !3933
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.418.0.copyload = load i64, ptr %.sroa.418.0..sroa_idx, align 8, !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3931
  %i.g = call noundef i64 @llvm.bswap.i64(i64 %.sroa.017.0.copyload) ; 3 uses
  %i.h = call noundef i64 @llvm.bswap.i64(i64 %.sroa.418.0.copyload) ; 2 uses
  %i.i = call i64 @llvm.fshl.i64(i64 %i.g, i64 %i.h, i64 1)
  %i.j = call i64 @llvm.fshl.i64(i64 %i.h, i64 %i.g, i64 1)
  %isneg = icmp slt i64 %i.g, 0
  %i.k = select i1 %isneg, i64 -4467570830351532032, i64 0
  %i.l = xor i64 %i.i, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.m, ptr noundef nonnull align 8 dereferenceable(248) %i.d, i64 248, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 %i.j, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 4, ptr %0, align 8
  ret void
end_hunk_1
begin_hunk_2_@_RNvNtNtCs5yxAJGbRKSL_4ring3rsa7padding4mgf1:bb.a
  br i1 %i.au, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.03542, i64 32 ; 2 uses
  %wide.load.1 = load <16 x i8>, ptr %i.w, align 8, !alias.scope !4832, !noalias !4833
  %wide.load48.1 = load <16 x i8>, ptr %i.x, align 8, !alias.scope !4832, !noalias !4833
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.03542, i64 48 ; 2 uses
  %wide.load49.1 = load <16 x i8>, ptr %i.av, align 1, !alias.scope !4834, !noalias !4835
  %wide.load50.1 = load <16 x i8>, ptr %i.aw, align 1, !alias.scope !4834, !noalias !4835
  %i.ax = xor <16 x i8> %wide.load49.1, %wide.load.1
  %i.ay = xor <16 x i8> %wide.load50.1, %wide.load48.1
  store <16 x i8> %i.ax, ptr %i.av, align 1, !alias.scope !4834, !noalias !4835
  store <16 x i8> %i.ay, ptr %i.aw, align 1, !alias.scope !4834, !noalias !4835
  br label %middle.block

middle.block:                                     ; preds = %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %..i.i.i15, %n.vec
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCINvNtNtCs5yxAJGbRKSL_4ring2bb5bytes25xor_assign_at_start_bytesQShRB4b_E0E0EB3h_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec51 = and i64 %..i.i.i15, 124              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index52 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next55, %vec.epilog.vector.body ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.03542, i64 %index52 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.6.0..sroa_idx2.i, i64 %index52
  %wide.load53 = load <4 x i8>, ptr %i.ba, align 4, !alias.scope !4832, !noalias !4833
  %wide.load54 = load <4 x i8>, ptr %i.az, align 1, !alias.scope !4834, !noalias !4835
  %i.bb = xor <4 x i8> %wide.load54, %wide.load53
  store <4 x i8> %i.bb, ptr %i.az, align 1, !alias.scope !4834, !noalias !4835
  %index.next55 = add nuw i64 %index52, 4         ; 2 uses
  %i.bc = icmp eq i64 %index.next55, %n.vec51
  br i1 %i.bc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4817

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n56 = icmp eq i64 %..i.i.i15, %n.vec51
  br i1 %cmp.n56, label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCINvNtNtCs5yxAJGbRKSL_4ring2bb5bytes25xor_assign_at_start_bytesQShRB4b_E0E0EB3h_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec51, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %..i.i.i15, 3               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.0.08.i.prol = phi i64 [ %i.bd, %.lr.ph.i.prol ], [ %.sroa.0.08.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bd = add nuw i64 %.sroa.0.08.i.prol, 1       ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.03542, i64 %.sroa.0.08.i.prol ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.6.0..sroa_idx2.i, i64 %.sroa.0.08.i.prol
  %.val7.i.prol = load i8, ptr %i.bf, align 1, !noalias !4833, !noundef !15
  %i.bg = load i8, ptr %i.be, align 1, !alias.scope !4836, !noalias !4833, !noundef !15
  %i.bh = xor i8 %i.bg, %.val7.i.prol
  store i8 %i.bh, ptr %i.be, align 1, !alias.scope !4836, !noalias !4833
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !4818

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.0.08.i.unr = phi i64 [ %.sroa.0.08.i.ph, %.lr.ph.i.preheader ], [ %i.bd, %.lr.ph.i.prol ]
  %i.bi = sub nsw i64 %.sroa.0.08.i.ph, %..i.i.i15
  %i.bj = icmp ugt i64 %i.bi, -4
  br i1 %i.bj, label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCINvNtNtCs5yxAJGbRKSL_4ring2bb5bytes25xor_assign_at_start_bytesQShRB4b_E0E0EB3h_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.0.08.i = phi i64 [ %i.bz, %.lr.ph.i ], [ %.sroa.0.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.bk = add nuw i64 %.sroa.0.08.i, 1            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.03542, i64 %.sroa.0.08.i ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.6.0..sroa_idx2.i, i64 %.sroa.0.08.i
  %.val7.i = load i8, ptr %i.bm, align 1, !noalias !4833, !noundef !15
  %i.bn = load i8, ptr %i.bl, align 1, !alias.scope !4836, !noalias !4833, !noundef !15
  %i.bo = xor i8 %i.bn, %.val7.i
  store i8 %i.bo, ptr %i.bl, align 1, !alias.scope !4836, !noalias !4833
  %i.bp = add nuw i64 %.sroa.0.08.i, 2            ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.03542, i64 %i.bk ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.6.0..sroa_idx2.i, i64 %i.bk
  %.val7.i.1 = load i8, ptr %i.br, align 1, !noalias !4833, !noundef !15
  %i.bs = load i8, ptr %i.bq, align 1, !alias.scope !4836, !noalias !4833, !noundef !15
  %i.bt = xor i8 %i.bs, %.val7.i.1
  store i8 %i.bt, ptr %i.bq, align 1, !alias.scope !4836, !noalias !4833
  %i.bu = add nuw i64 %.sroa.0.08.i, 3            ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.03542, i64 %i.bp ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.6.0..sroa_idx2.i, i64 %i.bp
  %.val7.i.2 = load i8, ptr %i.bw, align 1, !noalias !4833, !noundef !15
  %i.bx = load i8, ptr %i.bv, align 1, !alias.scope !4836, !noalias !4833, !noundef !15
  %i.by = xor i8 %i.bx, %.val7.i.2
  store i8 %i.by, ptr %i.bv, align 1, !alias.scope !4836, !noalias !4833
  %i.bz = add nuw i64 %.sroa.0.08.i, 4            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.03542, i64 %i.bu ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.6.0..sroa_idx2.i, i64 %i.bu
  %.val7.i.3 = load i8, ptr %i.cb, align 1, !noalias !4833, !noundef !15
  %i.cc = load i8, ptr %i.ca, align 1, !alias.scope !4836, !noalias !4833, !noundef !15
  %i.cd = xor i8 %i.cc, %.val7.i.3
  store i8 %i.cd, ptr %i.ca, align 1, !alias.scope !4836, !noalias !4833
  %exitcond.not.i.3 = icmp eq i64 %i.bz, %..i.i.i15
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCINvNtNtCs5yxAJGbRKSL_4ring2bb5bytes25xor_assign_at_start_bytesQShRB4b_E0E0EB3h_.exit, label %.lr.ph.i, !llvm.loop !4819

_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCINvNtNtCs5yxAJGbRKSL_4ring2bb5bytes25xor_assign_at_start_bytesQShRB4b_E0E0EB3h_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ce = icmp eq i64 %i.ab, 0
  br i1 %i.ce, label %._crit_edge, label %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvNtNtCs5yxAJGbRKSL_4ring4aead17chacha20_poly13056finish(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 1 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree noundef nonnull align 64 captures(none) dead_on_return dereferenceable(128) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.a, align 8, !alias.scope !4852, !noalias !4853
  store i64 %3, ptr %i.b, align 8, !alias.scope !4854, !noalias !4855
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4857)
  call fastcc void @_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead8poly1305NtB4_7Context15update_internal(ptr noalias nofree noundef nonnull align 64 dereferenceable(128) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 16), !noalias !4856
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 64, !alias.scope !4857, !noalias !4858
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !4857, !noalias !4858
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !4857, !noalias !4858
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4, !alias.scope !4857, !noalias !4858
  %.sroa.71.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.71.0.copyload.i = load i32, ptr %.sroa.71.0..sroa_idx.i, align 4, !alias.scope !4857, !noalias !4858 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.8.0.copyload.i = load i32, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !4857, !noalias !4858
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.9.0.copyload.i = load i32, ptr %.sroa.9.0..sroa_idx.i, align 4, !alias.scope !4857, !noalias !4858
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.10.0.copyload.i = load i32, ptr %.sroa.10.0..sroa_idx.i, align 64, !alias.scope !4857, !noalias !4858
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 68
  %.sroa.11.0.copyload.i = load i32, ptr %.sroa.11.0..sroa_idx.i, align 4, !alias.scope !4857, !noalias !4858
  %i.c = lshr i32 %.sroa.71.0.copyload.i, 26
  %i.d = and i32 %.sroa.71.0.copyload.i, 67108863
  %i.e = add i32 %.sroa.8.0.copyload.i, %i.c      ; 2 uses
  %i.f = lshr i32 %i.e, 26
  %i.g = and i32 %i.e, 67108863                   ; 2 uses
  %i.h = add i32 %i.f, %.sroa.9.0.copyload.i      ; 2 uses
  %i.i = lshr i32 %i.h, 26
  %i.j = and i32 %i.h, 67108863                   ; 2 uses
  %i.k = add i32 %i.i, %.sroa.10.0.copyload.i     ; 2 uses
  %i.l = lshr i32 %i.k, 26
  %i.m = and i32 %i.k, 67108863                   ; 2 uses
  %i.n = add i32 %i.l, %.sroa.11.0.copyload.i     ; 3 uses
  %i.o = lshr i32 %i.n, 26
  %i.p = mul nuw nsw i32 %i.o, 5
  %i.q = add nuw nsw i32 %i.p, %i.d               ; 2 uses
  %i.r = add nuw nsw i32 %i.q, 5                  ; 2 uses
  %i.s = lshr i32 %i.r, 26
  %i.t = add nuw nsw i32 %i.s, %i.g               ; 2 uses
  %i.u = lshr i32 %i.t, 26
  %i.v = add nuw nsw i32 %i.u, %i.j               ; 2 uses
  %i.w = lshr i32 %i.v, 26
  %i.x = add nuw nsw i32 %i.w, %i.m               ; 2 uses
  %i.y = lshr i32 %i.x, 26
  %i.z = or i32 %i.n, -67108864
  %i.aa = add nsw i32 %i.y, %i.z                  ; 3 uses
  %.neg.i.i = ashr i32 %i.aa, 31                  ; 5 uses
  %i.ab = lshr i32 %i.aa, 31
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  %i.ad = and i32 %.neg.i.i, %i.q
  %i.ae = and i32 %i.ac, 67108863                 ; 4 uses
  %i.af = and i32 %i.ae, %i.r
  %i.ag = or i32 %i.af, %i.ad
  %i.ah = and i32 %.neg.i.i, %i.g
  %i.ai = and i32 %i.ae, %i.t
  %i.aj = or i32 %i.ai, %i.ah                     ; 2 uses
  %i.ak = and i32 %.neg.i.i, %i.j
  %i.al = and i32 %i.ae, %i.v
  %i.am = or i32 %i.al, %i.ak                     ; 2 uses
  %i.an = and i32 %.neg.i.i, %i.m
  %i.ao = and i32 %i.ae, %i.x
  %i.ap = or i32 %i.ao, %i.an                     ; 2 uses
  %i.aq = and i32 %.neg.i.i, %i.n
  %i.ar = and i32 %i.ac, %i.aa
  %i.as = or i32 %i.ar, %i.aq
  %i.at = shl i32 %i.aj, 26
  %i.au = or i32 %i.ag, %i.at                     ; 2 uses
  %add.narrowed.i.i = add i32 %i.au, %.sroa.0.0.copyload.i ; 2 uses
  %add.narrowed.overflow.i.i = icmp ult i32 %add.narrowed.i.i, %i.au
  %i.av = lshr i32 %i.aj, 6
  %i.aw = shl i32 %i.am, 20
  %i.ax = or disjoint i32 %i.av, %i.aw
  %i.ay = zext i32 %i.ax to i64
  %i.az = zext i32 %.sroa.4.0.copyload.i to i64
  %i.ba = add nuw nsw i64 %i.ay, %i.az
  %i.bb = lshr i32 %i.am, 12
  %i.bc = shl i32 %i.ap, 14
  %i.bd = or disjoint i32 %i.bb, %i.bc
  %i.be = zext i32 %i.bd to i64
  %i.bf = zext i32 %.sroa.5.0.copyload.i to i64
  %i.bg = add nuw nsw i64 %i.be, %i.bf
  %i.bh = lshr i32 %i.ap, 18
  %i.bi = shl i32 %i.as, 8
  %i.bj = zext i1 %add.narrowed.overflow.i.i to i64
  %4 = add nuw nsw i64 %i.ba, %i.bj               ; 2 uses
  %5 = trunc i64 %4 to i32
  %6 = lshr i64 %4, 32
  %i.bk = add nuw nsw i64 %i.bg, %6               ; 2 uses
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = lshr i64 %i.bk, 32
  %i.bn = trunc nuw nsw i64 %i.bm to i32
  %7 = add i32 %i.bi, %.sroa.6.0.copyload.i
  %8 = add i32 %7, %i.bh
  %9 = add i32 %8, %i.bn
  store i32 %add.narrowed.i.i, ptr %0, align 1, !alias.scope !4859, !noalias !4860
  %.sroa.5.0..sroa_idx39.i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %5, ptr %.sroa.5.0..sroa_idx39.i.i, align 1, !alias.scope !4859, !noalias !4860
  %.sroa.6.0..sroa_idx41.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bl, ptr %.sroa.6.0..sroa_idx41.i.i, align 1, !alias.scope !4859, !noalias !4860
  %.sroa.7.0..sroa_idx43.i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %9, ptr %.sroa.7.0..sroa_idx43.i.i, align 1, !alias.scope !4859, !noalias !4860
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtNtCs5yxAJGbRKSL_4ring4aead4quic12aes_init_128(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 8 captures(none) dereferenceable(256) initializes((0, 4)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [244 x i8], align 4               ; 5 uses
  %i.b = alloca [256 x i8], align 8               ; 7 uses
  %i.c = icmp eq i64 %2, 16
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4865)
  %i.d = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noalias !4865, !noundef !15 ; 4 uses
  %i.e = icmp ne i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = and i32 %i.d, 36
  %brmerge.i.not.i = icmp eq i32 %i.f, 36
  br i1 %brmerge.i.not.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = and i32 %i.d, 64
  %.not7.not.i = icmp eq i32 %i.g, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4866
  br i1 %.not7.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call noundef i32 @ring_core_0_17_16000__aes_hw_set_encrypt_key_alt(ptr noundef nonnull %1, i32 noundef 128, ptr noundef nonnull %i.a) #36, !noalias !4866 ; 0 uses
  br label %_RNvMs_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes2hwNtB4_3Key3new.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = call noundef i32 @ring_core_0_17_16000__aes_hw_set_encrypt_key_base(ptr noundef nonnull %1, i32 noundef 128, ptr noundef nonnull %i.a) #36, !noalias !4866 ; 0 uses
  br label %_RNvMs_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes2hwNtB4_3Key3new.exit.i

_RNvMs_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes2hwNtB4_3Key3new.exit.i: ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(244) %i.j, ptr noundef nonnull align 4 dereferenceable(244) %i.a, i64 244, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4866
  br label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3aesNtB2_3Key3new.exit

bb.f:                                             ; preds = %bb.b
  %i.k = and i32 %i.d, 4
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.m = call noundef i32 @ring_core_0_17_16000__vpaes_set_encrypt_key(ptr noundef nonnull %1, i32 noundef 128, ptr noundef nonnull align 4 dereferenceable(244) %i.l) #36 ; 0 uses
  br label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3aesNtB2_3Key3new.exit

bb.h:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call fastcc void @_RNvMs2_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_3Key3new(ptr noalias nofree noundef align 8 captures(address) dereferenceable(248) %i.n, i64 noundef 0, ptr noundef nonnull %1)
  br label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3aesNtB2_3Key3new.exit

_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3aesNtB2_3Key3new.exit: ; preds = %_RNvMs_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes2hwNtB4_3Key3new.exit.i, %bb.g, %bb.h
  %.sink = phi i32 [ 0, %_RNvMs_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes2hwNtB4_3Key3new.exit.i ], [ 1, %bb.g ], [ 2, %bb.h ]
  store i32 %.sink, ptr %i.b, align 8, !alias.scope !4865
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(256) %i.b, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  store i32 -2, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3aesNtB2_3Key3new.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtNtCs5yxAJGbRKSL_4ring4aead4quic12aes_init_256(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 8 captures(none) dereferenceable(256) initializes((0, 4)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [244 x i8], align 4               ; 5 uses
  %i.b = alloca [256 x i8], align 8               ; 7 uses
  %i.c = icmp eq i64 %2, 32
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4871)
  %i.d = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noalias !4871, !noundef !15 ; 4 uses
  %i.e = icmp ne i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = and i32 %i.d, 36
  %brmerge.i.not.i = icmp eq i32 %i.f, 36
  br i1 %brmerge.i.not.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = and i32 %i.d, 64
  %.not7.not.i = icmp eq i32 %i.g, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4872
  br i1 %.not7.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call noundef i32 @ring_core_0_17_16000__aes_hw_set_encrypt_key_alt(ptr noundef nonnull %1, i32 noundef 256, ptr noundef nonnull %i.a) #36, !noalias !4872 ; 0 uses
  br label %_RNvMs_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes2hwNtB4_3Key3new.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = call noundef i32 @ring_core_0_17_16000__aes_hw_set_encrypt_key_base(ptr noundef nonnull %1, i32 noundef 256, ptr noundef nonnull %i.a) #36, !noalias !4872 ; 0 uses
  br label %_RNvMs_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes2hwNtB4_3Key3new.exit.i

_RNvMs_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes2hwNtB4_3Key3new.exit.i: ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(244) %i.j, ptr noundef nonnull align 4 dereferenceable(244) %i.a, i64 244, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4872
  br label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3aesNtB2_3Key3new.exit

bb.f:                                             ; preds = %bb.b
  %i.k = and i32 %i.d, 4
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.m = call noundef i32 @ring_core_0_17_16000__vpaes_set_encrypt_key(ptr noundef nonnull %1, i32 noundef 256, ptr noundef nonnull align 4 dereferenceable(244) %i.l) #36 ; 0 uses
  br label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3aesNtB2_3Key3new.exit

bb.h:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call fastcc void @_RNvMs2_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_3Key3new(ptr noalias nofree noundef align 8 captures(address) dereferenceable(248) %i.n, i64 noundef 1, ptr noundef nonnull %1)
  br label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3aesNtB2_3Key3new.exit

_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3aesNtB2_3Key3new.exit: ; preds = %_RNvMs_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes2hwNtB4_3Key3new.exit.i, %bb.g, %bb.h
  %.sink = phi i32 [ 0, %_RNvMs_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes2hwNtB4_3Key3new.exit.i ], [ 1, %bb.g ], [ 2, %bb.h ]
  store i32 %.sink, ptr %i.b, align 8, !alias.scope !4871
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(256) %i.b, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  store i32 -2, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3aesNtB2_3Key3new.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define i40 @_RNvNtNtCs5yxAJGbRKSL_4ring4aead4quic12aes_new_mask(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %0, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 1                ; 4 uses
  %i.c = alloca [16 x i8], align 4                ; 6 uses
  %i.d = alloca [16 x i8], align 1                ; 4 uses
  %i.e = alloca [16 x i8], align 4                ; 7 uses
  %i.f = alloca [16 x i8], align 1                ; 4 uses
  %i.g = alloca [16 x i8], align 4                ; 7 uses
  %i.h = load i32, ptr %0, align 8, !range !51, !noundef !15
  switch i32 %i.h, label %default.unreachable [
    i32 -1, label %bb.b
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ], !prof !4921

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @213) #41
  unreachable

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4922
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, i8 0, i64 16, i1 false), !noalias !4923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4922
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.f, ptr noundef nonnull readonly align 1 dereferenceable(16) %1, i64 16, i1 false), !noalias !4924
  call void @ring_core_0_17_16000__aes_hw_ctr32_encrypt_blocks(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.f) #36, !noalias !4925, !inline_history !1
  %i.j = load i32, ptr %i.g, align 4, !noalias !4926
  %.sroa.9.0..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %.sroa.9.0.copyload18.i = load i8, ptr %.sroa.9.0..sroa_idx17.i, align 4, !noalias !4926
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4922
  br label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3aesNtB2_3Key8new_mask.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4927
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !4928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4927
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.d, ptr noundef nonnull readonly align 1 dereferenceable(16) %1, i64 16, i1 false), !noalias !4929
  call void @ring_core_0_17_16000__vpaes_ctr32_encrypt_blocks(ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.d) #36, !noalias !4930, !inline_history !1
  %i.l = load i32, ptr %i.e, align 4, !noalias !4931
  %.sroa.9.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.9.0.copyload16.i = load i8, ptr %.sroa.9.0..sroa_idx15.i, align 4, !noalias !4931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4927
  br label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3aesNtB2_3Key8new_mask.exit

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4932
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !noalias !4933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4932
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(16) %1, i64 16, i1 false), !noalias !4934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4932
end_hunk_2
