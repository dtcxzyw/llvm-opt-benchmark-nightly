Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.02?download=true
inline.NumInlined: 716
inline.NumDeleted: 218
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream32BrotliStoreUncompressedMetaBlockNCNvMs2_NtB4_6writerINtB1u_24CompressorWriterCustomIoNtNtNtCskKLDkoKarTP_4core2io5error5ErrorINtNtCsfQhfhXbPrjn_19brotli_decompressor11io_wrappers12IntoIoWriterINtNtCsexYYUdYSQU6_5alloc3vec3VechEEINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxhENtNtB4B_9std_alloc13StandardAllocE14flush_or_close0B5p_ECskeugdADtBsi_12pingora_core:bb.a
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !1109
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 0, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !1109
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i32 1, ptr %.sroa.711.0..sroa_idx.i, align 8, !alias.scope !1109
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr inttoptr (i64 4 to ptr), ptr %i.al, align 8, !alias.scope !1109
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 0, ptr %i.am, align 8, !alias.scope !1109
  call fastcc void @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream12LogMetaBlockNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocNCNvMs2_NtB4_6writerINtB25_24CompressorWriterCustomIoNtNtNtCskKLDkoKarTP_4core2io5error5ErrorINtNtCsfQhfhXbPrjn_19brotli_decompressor11io_wrappers12IntoIoWriterINtNtCsexYYUdYSQU6_5alloc3vec3VechEEINtNtB16_10heap_alloc7WrapBoxhEB12_E14flush_or_close0ECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.b, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @86, ptr noalias nofree noundef align 8 dereferenceable(8) %8, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(152) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %6, i8 noundef -1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.i:                                             ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream18JumpToByteBoundary.exit8, %bb.g
  ret void

bb.j:                                             ; preds = %bb.g
  call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef 1, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %9, ptr noalias nofree noundef nonnull %10, i64 noundef %11)
  call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef 1, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %9, ptr noalias nofree noundef nonnull %10, i64 noundef %11)
  call void @llvm.experimental.noalias.scope.decl(metadata !1110)
  call void @llvm.experimental.noalias.scope.decl(metadata !1111)
  %i.an = load i64, ptr %9, align 8, !alias.scope !1110, !noundef !4
  %i.ao = add i64 %i.an, 7
  %i.ap = and i64 %i.ao, 4294967288               ; 2 uses
  store i64 %i.ap, ptr %9, align 8, !alias.scope !1110
  %i.aq = lshr exact i64 %i.ap, 3                 ; 3 uses
  %i.ar = icmp samesign ult i64 %i.aq, %11
  br i1 %i.ar, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream18JumpToByteBoundary.exit8, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aq, i64 noundef range(i64 0, -9223372036854775808) %11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @200) #22, !noalias !1112
  unreachable

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream18JumpToByteBoundary.exit8: ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 %i.aq
  store i8 0, ptr %i.as, align 1, !alias.scope !1111
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream32BrotliStoreUncompressedMetaBlockNCNvXs4_NtB4_6writerINtB1u_24CompressorWriterCustomIoNtNtNtCskKLDkoKarTP_4core2io5error5ErrorINtNtCsfQhfhXbPrjn_19brotli_decompressor11io_wrappers12IntoIoWriterINtNtCsexYYUdYSQU6_5alloc3vec3VechEEINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxhENtNtB4B_9std_alloc13StandardAllocEINtB2U_11CustomWriteB2d_E5write0B5p_ECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, i32 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %4, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %6, i64 noundef %7, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %8, ptr noalias nofree noundef align 8 dereferenceable(8) %9, ptr noalias nofree noundef nonnull %10, i64 noundef range(i64 0, -9223372036854775808) %11, i1 noundef zeroext %12, ptr noalias nofree noundef nonnull readnone captures(none) %13) unnamed_addr #0 {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 22 uses
  %i.b = alloca [16 x i8], align 4                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream24InputPairFromMaskedInput(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %4, i64 noundef %7, i64 noundef %5)
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.j = load i64, ptr %i.i, align 8, !noundef !4 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream38BrotliStoreUncompressedMetaBlockHeader(i64 noundef %7, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %9, ptr noalias nofree noundef nonnull %10, i64 noundef %11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1122)
  %i.k = load i64, ptr %9, align 8, !alias.scope !1121, !noundef !4
  %i.l = add i64 %i.k, 7
  %i.m = and i64 %i.l, 4294967288                 ; 2 uses
  store i64 %i.m, ptr %9, align 8, !alias.scope !1121
  %i.n = lshr exact i64 %i.m, 3                   ; 6 uses
  %i.o = icmp samesign ult i64 %i.n, %11
  br i1 %i.o, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream18JumpToByteBoundary.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef range(i64 0, -9223372036854775808) %11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @200) #22, !noalias !1123
  unreachable

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream18JumpToByteBoundary.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 %i.n ; 2 uses
  store i8 0, ptr %i.p, align 1, !alias.scope !1122
  %i.q = add i64 %i.n, %i.f                       ; 3 uses
  %i.r = icmp ult i64 %i.q, %i.n
  %.not5 = icmp ugt i64 %i.q, %11
  %or.cond = or i1 %i.r, %.not5
  br i1 %or.cond, label %bb.c, label %bb.d, !prof !5

bb.c:                                             ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream18JumpToByteBoundary.exit
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.n, i64 noundef %i.q, i64 noundef %11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #22
  unreachable

bb.d:                                             ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream18JumpToByteBoundary.exit
  tail call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %i.p, i64 noundef %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84)
  %i.s = load i64, ptr %9, align 8, !noundef !4
  %i.t = shl i64 %i.f, 3
  %i.u = add i64 %i.s, %i.t                       ; 2 uses
  store i64 %i.u, ptr %9, align 8
  %i.v = lshr i64 %i.u, 3                         ; 4 uses
  %i.w = add i64 %i.v, %i.j                       ; 3 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %.not6 = icmp ugt i64 %i.w, %11
  %or.cond7 = or i1 %i.x, %.not6
  br i1 %or.cond7, label %bb.e, label %bb.f, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.v, i64 noundef %i.w, i64 noundef %11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #22
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 %i.v
  tail call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %i.y, i64 noundef %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85)
  %i.z = load i64, ptr %9, align 8, !noundef !4
  %i.aa = shl i64 %i.j, 3
  %i.ab = add i64 %i.z, %i.aa                     ; 2 uses
  store i64 %i.ab, ptr %9, align 8
  tail call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream29BrotliWriteBitsPrepareStorage(i64 noundef %i.ab, ptr noalias nofree noundef nonnull %10, i64 noundef %11)
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 97
  %i.ad = load i8, ptr %i.ac, align 1, !range !17, !noundef !4
  %i.ae = trunc nuw i8 %i.ad to i1
  %.not = xor i1 %i.ae, true
  %brmerge = or i1 %12, %.not
  br i1 %brmerge, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.h
  %i.af = icmp eq i32 %1, 0
  br i1 %i.af, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ag = trunc i64 %7 to i32
  store i32 %i.ag, ptr %i.b, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.0..sroa_idx, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr inttoptr (i64 1 to ptr), ptr %i.a, align 8, !alias.scope !1124
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1124
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1124
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1124
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 1, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !1124
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr inttoptr (i64 4 to ptr), ptr %i.ah, align 8, !alias.scope !1124
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %i.ai, align 8, !alias.scope !1124
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr inttoptr (i64 1 to ptr), ptr %i.aj, align 8, !alias.scope !1124
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 0, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !1124
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !1124
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 0, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !1124
  %.sroa.75.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i32 1, ptr %.sroa.75.0..sroa_idx.i, align 8, !alias.scope !1124
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr inttoptr (i64 1 to ptr), ptr %i.ak, align 8, !alias.scope !1124
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 0, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !1124
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !1124
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 0, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !1124
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i32 1, ptr %.sroa.711.0..sroa_idx.i, align 8, !alias.scope !1124
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr inttoptr (i64 4 to ptr), ptr %i.al, align 8, !alias.scope !1124
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 0, ptr %i.am, align 8, !alias.scope !1124
  call fastcc void @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream12LogMetaBlockNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocNCNvXs4_NtB4_6writerINtB25_24CompressorWriterCustomIoNtNtNtCskKLDkoKarTP_4core2io5error5ErrorINtNtCsfQhfhXbPrjn_19brotli_decompressor11io_wrappers12IntoIoWriterINtNtCsexYYUdYSQU6_5alloc3vec3VechEEINtNtB16_10heap_alloc7WrapBoxhEB12_EINtB3v_11CustomWriteB2O_E5write0ECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.b, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @86, ptr noalias nofree noundef align 8 dereferenceable(8) %8, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(152) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %6, i8 noundef -1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.i:                                             ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream18JumpToByteBoundary.exit8, %bb.g
  ret void

bb.j:                                             ; preds = %bb.g
  call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef 1, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %9, ptr noalias nofree noundef nonnull %10, i64 noundef %11)
  call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef 1, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %9, ptr noalias nofree noundef nonnull %10, i64 noundef %11)
  call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  %i.an = load i64, ptr %9, align 8, !alias.scope !1125, !noundef !4
  %i.ao = add i64 %i.an, 7
  %i.ap = and i64 %i.ao, 4294967288               ; 2 uses
  store i64 %i.ap, ptr %9, align 8, !alias.scope !1125
  %i.aq = lshr exact i64 %i.ap, 3                 ; 3 uses
  %i.ar = icmp samesign ult i64 %i.aq, %11
  br i1 %i.ar, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream18JumpToByteBoundary.exit8, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aq, i64 noundef range(i64 0, -9223372036854775808) %11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @200) #22, !noalias !1127
  unreachable

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream18JumpToByteBoundary.exit8: ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 %i.aq
  store i8 0, ptr %i.as, align 1, !alias.scope !1126
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFastNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %1, i64 noundef range(i64 0, 2305843009213693952) %2, i64 noundef %3, i64 noundef %4, ptr noalias nofree noundef nonnull captures(address, read_provenance) %5, i64 noundef range(i64 0, -9223372036854775808) %6, ptr noalias nofree noundef nonnull align 2 %7, i64 noundef range(i64 0, 4611686018427387904) %8, ptr noalias nofree noundef align 8 dereferenceable(8) %9, ptr noalias nofree noundef nonnull %10, i64 noundef range(i64 0, -9223372036854775808) %11) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 4                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.c = icmp eq i64 %3, 0
  br i1 %i.c, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %exitcond.not753 = icmp eq i64 %2, 0
  br i1 %exitcond.not753, label %.lr.ph._crit_edge, label %.lr.ph757

._crit_edge:                                      ; preds = %bb.bi
  %i.d = icmp ult i64 %.sroa.02.1, 2
  br i1 %i.d, label %._crit_edge.thread, label %bb.b

.lr.ph:                                           ; preds = %bb.bi
  %exitcond.not = icmp eq i64 %i.gm, %2
  br i1 %exitcond.not, label %.lr.ph._crit_edge, label %.lr.ph757

bb.b:                                             ; preds = %._crit_edge
  %.not.not = icmp samesign ult i64 %.sroa.012.0349756, %6
  br i1 %.not.not, label %._crit_edge356, label %bb.c, !prof !14

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  tail call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef 4, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %9, ptr noalias nofree noundef nonnull %10, i64 noundef %11)
  %i.e = trunc i64 %4 to i8
  %i.f = load i64, ptr %i.b, align 8, !noundef !4 ; 7 uses
  tail call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef %i.e, i64 noundef %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %9, ptr noalias nofree noundef nonnull %10, i64 noundef %11)
  %i.g = icmp ult i64 %i.f, %6
  br i1 %i.g, label %bb.bd, label %bb.be

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.gm, i64 noundef %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #22
  unreachable

._crit_edge356:                                   ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %5, i8 0, i64 %i.gm, i1 false)
  %i.h = shl nuw i64 %i.gm, 1
  %i.i = or disjoint i64 %i.h, 1
  %i.j = tail call { ptr, i64 } @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsiRgJJXJ4lb7_6brotli3enc14entropy_encode11HuffmanTreeE10alloc_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, i64 noundef %i.i) ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0        ; 21 uses
  %i.l = extractvalue { ptr, i64 } %i.j, 1        ; 24 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.first_iter = icmp samesign ult i64 %.sroa.012.0349756, %2
  br label %.lr.ph360.preheader

.lr.ph360.preheader:                              ; preds = %._crit_edge356, %.thread231
  %.sroa.024.0 = phi i32 [ 1, %._crit_edge356 ], [ %i.ar, %.thread231 ] ; 3 uses
  br label %.lr.ph360

.lr.ph360:                                        ; preds = %.lr.ph360.preheader, %bb.ba
  %.sroa.027.0358 = phi i32 [ %.sroa.027.2, %bb.ba ], [ 0, %.lr.ph360.preheader ] ; 3 uses
  %.sroa.037.0357 = phi i64 [ %i.n, %bb.ba ], [ %i.gm, %.lr.ph360.preheader ]
  %i.n = add nsw i64 %.sroa.037.0357, -1          ; 5 uses
  br i1 %.first_iter, label %bb.az, label %.invoke697

.thread:                                          ; preds = %.invoke, %bb.m
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit234:                                     ; preds = %._crit_edge361
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %._crit_edge.i.invoke, %.invoke697, %.split377.us, %bb.p
  %.sroa.23.0.ph.ph = phi i64 [ %i.l, %.split377.us ], [ %i.l, %._crit_edge.i.invoke ], [ %i.bp, %bb.p ], [ %i.l, %.invoke697 ]
  %.sroa.0.0223.ph.ph = phi ptr [ %i.k, %.split377.us ], [ %i.k, %._crit_edge.i.invoke ], [ %i.bo, %bb.p ], [ %i.k, %.invoke697 ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit234
  %.sroa.23.0.ph = phi i64 [ %i.l, %.loopexit234 ], [ %.sroa.23.0.ph.ph, %.loopexit.split-lp ] ; 2 uses
  %.sroa.0.0223.ph = phi ptr [ %i.k, %.loopexit234 ], [ %.sroa.0.0223.ph.ph, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit234 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.o = icmp eq i64 %.sroa.23.0.ph, 0
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc14entropy_encode11HuffmanTreeEECskeugdADtBsi_12pingora_core.exit, label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %lpad.phi229 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread ], [ %lpad.phi, %bb.d ]
  %.sroa.0.0223228 = phi ptr [ %i.k, %.thread ], [ %.sroa.0.0223.ph, %bb.d ] ; 2 uses
  %.sroa.23.0227 = phi i64 [ %i.l, %.thread ], [ %.sroa.23.0.ph, %bb.d ]
  %i.p = shl nuw nsw i64 %.sroa.23.0227, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0223228) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0223228, i64 noundef range(i64 1, 0) %i.p, i64 noundef 4) #25
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc14entropy_encode11HuffmanTreeEECskeugdADtBsi_12pingora_core.exit

._crit_edge361:                                   ; preds = %bb.ba
  %i.q = add i32 %.sroa.027.2, 1                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.r = sext i32 %.sroa.027.2 to i64
  invoke void @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc14entropy_encode20SortHuffmanTreeItemsNtNtB4_17brotli_bit_stream21SimpleSortHuffmanTreeECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 4 %i.k, i64 noundef %i.l, i64 noundef %i.r)
          to label %bb.f unwind label %.loopexit234

bb.f:                                             ; preds = %._crit_edge361
  %i.s = zext i32 %i.q to i64                     ; 3 uses
  %i.t = icmp ugt i64 %i.l, %i.s
  br i1 %i.t, label %bb.g, label %.invoke697

.invoke697.loopexit.split.loop.exit834:           ; preds = %bb.bb
  %.not162.le = icmp ult i32 %i.fx, %.sroa.024.0
  %.703.le = select i1 %.not162.le, ptr @106, ptr @107
  br label %.invoke697

.invoke697:                                       ; preds = %bb.f, %.invoke697.loopexit.split.loop.exit834, %.lr.ph360
  %i.u = phi i64 [ %i.n, %.lr.ph360 ], [ %i.ga, %.invoke697.loopexit.split.loop.exit834 ], [ %i.s, %bb.f ]
  %i.v = phi i64 [ %2, %.lr.ph360 ], [ %i.l, %.invoke697.loopexit.split.loop.exit834 ], [ %i.l, %bb.f ]
  %i.w = phi ptr [ @105, %.lr.ph360 ], [ %.703.le, %.invoke697.loopexit.split.loop.exit834 ], [ @89, %bb.f ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.u, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w) #20
          to label %.cont698 unwind label %.loopexit.split-lp

.cont698:                                         ; preds = %.invoke697
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.s
  store i64 -1, ptr %i.x, align 4
  %i.y = zext i32 %.sroa.027.2 to i64             ; 3 uses
  %i.z = icmp ugt i64 %i.l, %i.y
  br i1 %i.z, label %bb.h, label %.invoke

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.y
  store i64 -1, ptr %i.aa, align 4
  %.sroa.056.0363 = add i32 %.sroa.027.2, -1
  %i.ab = icmp sgt i32 %.sroa.056.0363, 0
  br i1 %i.ab, label %.lr.ph369.preheader, label %.._crit_edge370_crit_edge

.._crit_edge370_crit_edge:                        ; preds = %bb.h
  %.pre524 = shl i32 %.sroa.027.2, 1
  br label %._crit_edge370

.lr.ph369.preheader:                              ; preds = %bb.h
  %i.ac = add nuw i32 %.sroa.027.2, 2
  %i.ad = shl i32 %.sroa.027.2, 1                 ; 2 uses
  br label %.lr.ph369

._crit_edge370:                                   ; preds = %bb.ay, %.._crit_edge370_crit_edge
  %.pre-phi525 = phi i32 [ %.pre524, %.._crit_edge370_crit_edge ], [ %i.ad, %bb.ay ]
  %i.ae = add i32 %.pre-phi525, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1133
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.m, i8 0, i64 60, i1 false), !noalias !1133
  store i32 -1, ptr %i.a, align 4, !noalias !1133
  %i.af = sext i32 %i.ae to i64                   ; 3 uses
  %i.ag = icmp ugt i64 %i.l, %i.af
  br i1 %i.ag, label %.lr.ph.i, label %._crit_edge.i.invoke

.lr.ph.i:                                         ; preds = %._crit_edge370, %.backedge.i
  %i.ah = phi i64 [ %i.be, %.backedge.i ], [ %i.af, %._crit_edge370 ]
  %.sroa.05.047.i = phi i32 [ %.sroa.05.0.be.i, %.backedge.i ], [ 0, %._crit_edge370 ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ah ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = load i16, ptr %i.aj, align 4, !alias.scope !1131, !noundef !4 ; 2 uses
  %i.al = icmp slt i16 %i.ak, 0
  br i1 %i.al, label %bb.j, label %bb.i

._crit_edge.i.invoke:                             ; preds = %._crit_edge370, %bb.k, %bb.n, %.backedge.i
  %i.am = phi i64 [ %i.be, %.backedge.i ], [ %i.ay, %bb.k ], [ %i.bg, %bb.n ], [ %i.af, %._crit_edge370 ]
  %i.an = phi i64 [ %i.l, %.backedge.i ], [ 16, %bb.k ], [ 16, %bb.n ], [ %i.l, %._crit_edge370 ]
  %i.ao = phi ptr [ @196, %.backedge.i ], [ @198, %bb.k ], [ @199, %bb.n ], [ @196, %._crit_edge370 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.am, i64 noundef %i.an, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao) #22
          to label %._crit_edge.i.cont unwind label %.loopexit.split-lp

._crit_edge.i.cont:                               ; preds = %._crit_edge.i.invoke
  unreachable

bb.i:                                             ; preds = %.lr.ph.i
  %i.ap = add i32 %.sroa.05.047.i, 1              ; 4 uses
  %i.aq = icmp sgt i32 %i.ap, 14
  br i1 %i.aq, label %.thread231, label %bb.n

.thread231:                                       ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1133
  %i.ar = shl i32 %.sroa.024.0, 1
  br label %.lr.ph360.preheader

bb.j:                                             ; preds = %.lr.ph.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 6
  %i.at = load i16, ptr %i.as, align 2, !alias.scope !1131, !noundef !4
  %i.au = sext i16 %i.at to i64                   ; 3 uses
  %i.av = icmp ugt i64 %6, %i.au
  br i1 %i.av, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 %i.au
  %i.ax = trunc i32 %.sroa.05.047.i to i8
  store i8 %i.ax, ptr %i.aw, align 1, !alias.scope !1132
  %.first_iter.i = icmp ult i32 %.sroa.05.047.i, 16
  %i.ay = zext nneg i32 %.sroa.05.047.i to i64    ; 2 uses
  br i1 %.first_iter.i, label %.split.us, label %._crit_edge.i.invoke

.split.us:                                        ; preds = %bb.k, %bb.l
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ %i.ay, %bb.k ] ; 5 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ba = load i32, ptr %i.az, align 4, !noalias !1133, !noundef !4 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, -1
  br i1 %i.bb, label %bb.l, label %.split373.us

bb.l:                                             ; preds = %.split.us
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.i.us = icmp eq i64 %indvars.iv, 0
  br i1 %.not.i.us, label %.split377.us, label %.split.us

.split373.us:                                     ; preds = %.split.us
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.bd = trunc nuw i64 %indvars.iv to i32
  store i32 -1, ptr %i.bc, align 4, !noalias !1133
  br label %.backedge.i

bb.m:                                             ; preds = %bb.j
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.au, i64 noundef range(i64 0, -9223372036854775808) %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @197) #22
          to label %.noexc201 unwind label %.thread

.noexc201:                                        ; preds = %bb.m
  unreachable

.backedge.i:                                      ; preds = %bb.o, %.split373.us
  %.sroa.05.0.be.i = phi i32 [ %i.ap, %bb.o ], [ %i.bd, %.split373.us ]
  %.sroa.0.0.be.i = phi i32 [ %i.bm, %bb.o ], [ %i.ba, %.split373.us ]
  %i.be = sext i32 %.sroa.0.0.be.i to i64         ; 3 uses
  %i.bf = icmp ugt i64 %i.l, %i.be
  br i1 %i.bf, label %.lr.ph.i, label %._crit_edge.i.invoke

bb.n:                                             ; preds = %bb.i
  %i.bg = sext i32 %i.ap to i64                   ; 2 uses
  %i.bh = icmp ult i32 %i.ap, 16
  br i1 %i.bh, label %bb.o, label %._crit_edge.i.invoke

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ai, i64 6
  %i.bj = load i16, ptr %i.bi, align 2, !alias.scope !1131, !noundef !4
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bg
  %i.bl = sext i16 %i.bj to i32
  store i32 %i.bl, ptr %i.bk, align 4, !noalias !1133
  %i.bm = zext nneg i16 %i.ak to i32
  br label %.backedge.i

.split377.us:                                     ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1133
  %i.bn = invoke { ptr, i64 } @_RNvXs0_NtCsc389t4z7aPt_12alloc_stdlib10heap_allocINtB5_7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc14entropy_encode11HuffmanTreeENtNtCskKLDkoKarTP_4core7default7Default7defaultCskeugdADtBsi_12pingora_core()
          to label %bb.p unwind label %.loopexit.split-lp ; 2 uses

bb.p:                                             ; preds = %.split377.us
  %i.bo = extractvalue { ptr, i64 } %i.bn, 0      ; 3 uses
  %i.bp = extractvalue { ptr, i64 } %i.bn, 1      ; 3 uses
  invoke void @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsiRgJJXJ4lb7_6brotli3enc14entropy_encode11HuffmanTreeE9free_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias noundef nonnull align 4 %i.k, i64 noundef %i.l)
          to label %bb.q unwind label %.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc14entropy_encode11HuffmanTreeEECskeugdADtBsi_12pingora_core.exit204, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = shl nuw nsw i64 %i.bp, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bo) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bo, i64 noundef range(i64 1, 0) %i.br, i64 noundef 4) #25
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc14entropy_encode11HuffmanTreeEECskeugdADtBsi_12pingora_core.exit204

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc14entropy_encode11HuffmanTreeEECskeugdADtBsi_12pingora_core.exit204: ; preds = %bb.q, %bb.r
  tail call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc14entropy_encode31BrotliConvertBitDepthsToSymbols(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %i.gm, ptr noalias nofree noundef nonnull align 2 %7, i64 noundef %8)
  %i.bs = icmp ult i64 %.sroa.02.1, 5
  br i1 %i.bs, label %bb.s, label %.split383.preheader

.split383.preheader:                              ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc14entropy_encode11HuffmanTreeEECskeugdADtBsi_12pingora_core.exit204
  tail call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream25StoreStaticCodeLengthCode(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %9, ptr noalias nofree noundef nonnull %10, i64 noundef %11)
  br label %.split383

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc14entropy_encode11HuffmanTreeEECskeugdADtBsi_12pingora_core.exit204
  tail call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef 2, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %9, ptr noalias nofree noundef nonnull %10, i64 noundef %11)
  %i.bt = add nsw i64 %.sroa.02.1, -1
  tail call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef 2, i64 noundef %i.bt, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %9, ptr noalias nofree noundef nonnull %10, i64 noundef %11)
  %.promoted = load i64, ptr %i.b, align 8
  br label %bb.al

.split383:                                        ; preds = %.split383.preheader, %.loopexit232
  %.sroa.075.0396 = phi i8 [ %.sroa.075.1, %.loopexit232 ], [ 8, %.split383.preheader ] ; 2 uses
  %.sroa.076.0395 = phi i64 [ %.pre-phi586, %.loopexit232 ], [ 0, %.split383.preheader ] ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 %.sroa.076.0395
  %i.bv = load i8, ptr %i.bu, align 1, !noundef !4 ; 11 uses
  %.sroa.091.0384 = add nuw nsw i64 %.sroa.076.0395, 1 ; 3 uses
  %i.bw = icmp ult i64 %.sroa.076.0395, %.sroa.012.0349756
  br i1 %i.bw, label %.lr.ph387.preheader, label %._crit_edge388.thread

.lr.ph387.preheader:                              ; preds = %.split383
  %i.bx = sub nsw i64 %i.gm, %.sroa.076.0395
  br label %.lr.ph387

.lr.ph387:                                        ; preds = %.lr.ph387.preheader, %bb.t
  %.sroa.091.0386 = phi i64 [ %.sroa.091.0, %bb.t ], [ %.sroa.091.0384, %.lr.ph387.preheader ] ; 3 uses
  %.sroa.080.0385 = phi i64 [ %i.cd, %bb.t ], [ 1, %.lr.ph387.preheader ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 %.sroa.091.0386
  %i.bz = load i8, ptr %i.by, align 1, !noundef !4
  %i.ca = icmp eq i8 %i.bz, %i.bv
  br i1 %i.ca, label %bb.t, label %._crit_edge388

._crit_edge388:                                   ; preds = %bb.t, %.lr.ph387
  %.sroa.080.0.lcssa.ph = phi i64 [ %i.bx, %bb.t ], [ %.sroa.080.0385, %.lr.ph387 ] ; 5 uses
  %.pre = add i64 %.sroa.080.0.lcssa.ph, %.sroa.076.0395 ; 2 uses
  %i.cb = icmp eq i8 %i.bv, 0
  br i1 %i.cb, label %bb.u, label %bb.v

._crit_edge388.thread:                            ; preds = %.split383
  %i.cc = icmp eq i8 %i.bv, 0
  br i1 %i.cc, label %.thread591, label %bb.v

bb.t:                                             ; preds = %.lr.ph387
  %i.cd = add nuw nsw i64 %.sroa.080.0385, 1
  %.sroa.091.0 = add i64 %.sroa.091.0386, 1
  %exitcond520.not = icmp eq i64 %.sroa.091.0386, %.sroa.012.0349756
  br i1 %exitcond520.not, label %._crit_edge388, label %.lr.ph387

bb.u:                                             ; preds = %._crit_edge388
  %i.ce = icmp ult i64 %.sroa.080.0.lcssa.ph, 704
  br i1 %i.ce, label %.thread591, label %bb.w

bb.v:                                             ; preds = %._crit_edge388.thread, %._crit_edge388
  %.sroa.080.0.lcssa589 = phi i64 [ 1, %._crit_edge388.thread ], [ %.sroa.080.0.lcssa.ph, %._crit_edge388 ] ; 2 uses
  %.pre-phi587 = phi i64 [ %.sroa.091.0384, %._crit_edge388.thread ], [ %.pre, %._crit_edge388 ] ; 3 uses
  %.not163 = icmp eq i8 %.sroa.075.0396, %i.bv
  br i1 %.not163, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.u
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.080.0.lcssa.ph, i64 noundef 704, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #22
  unreachable

.thread591:                                       ; preds = %._crit_edge388.thread, %bb.u
  %.pre-phi588595 = phi i64 [ %.pre, %bb.u ], [ %.sroa.091.0384, %._crit_edge388.thread ]
  %.sroa.080.0.lcssa590594 = phi i64 [ %.sroa.080.0.lcssa.ph, %bb.u ], [ 1, %._crit_edge388.thread ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc9constants14kZeroRepsDepth, i64 %.sroa.080.0.lcssa590594
  %i.cg = load i32, ptr %i.cf, align 4, !noundef !4
  %i.ch = trunc i32 %i.cg to i8
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc9constants13kZeroRepsBits, i64 %.sroa.080.0.lcssa590594
  %i.cj = load i64, ptr %i.ci, align 8, !noundef !4
  tail call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef %i.ch, i64 noundef %i.cj, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %9, ptr noalias nofree noundef nonnull %10, i64 noundef %11)
  br label %.loopexit232

.loopexit232:                                     ; preds = %.lr.ph393.split, %.preheader, %bb.ad, %.thread591
  %.pre-phi586 = phi i64 [ %.pre-phi588595, %.thread591 ], [ %.pre-phi587, %bb.ad ], [ %.pre-phi587, %.preheader ], [ %.pre-phi587, %.lr.ph393.split ] ; 2 uses
  %.sroa.075.1 = phi i8 [ %.sroa.075.0396, %.thread591 ], [ %i.bv, %bb.ad ], [ %i.bv, %.preheader ], [ %i.bv, %.lr.ph393.split ]
  %.not = icmp ugt i64 %.pre-phi586, %.sroa.012.0349756
  br i1 %.not, label %.loopexit233, label %.split383

bb.x:                                             ; preds = %bb.v
  %i.ck = zext i8 %i.bv to i64                    ; 3 uses
  %i.cl = icmp ult i8 %i.bv, 18
  br i1 %i.cl, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %bb.v, %bb.z
  %.sroa.080.1 = phi i64 [ %i.cx, %bb.z ], [ %.sroa.080.0.lcssa589, %bb.v ] ; 4 uses
  %i.cm = icmp ult i64 %.sroa.080.1, 3
  br i1 %i.cm, label %.preheader, label %bb.ab

.preheader:                                       ; preds = %bb.y
  %i.cn = icmp eq i64 %.sroa.080.1, 0
  br i1 %i.cn, label %.loopexit232, label %.lr.ph393

.lr.ph393:                                        ; preds = %.preheader
  %i.co = zext i8 %i.bv to i64                    ; 3 uses
  %i.cp = icmp ult i8 %i.bv, 18
  %i.cq = getelementptr inbounds nuw i8, ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc9constants16kCodeLengthDepth, i64 %i.co
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc9constants15kCodeLengthBits, i64 %i.co
  br i1 %i.cp, label %.lr.ph393.split, label %bb.ae

bb.z:                                             ; preds = %bb.x
  %i.cs = getelementptr inbounds nuw i8, ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc9constants16kCodeLengthDepth, i64 %i.ck
  %i.ct = load i8, ptr %i.cs, align 1, !noundef !4
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc9constants15kCodeLengthBits, i64 %i.ck
  %i.cv = load i32, ptr %i.cu, align 4, !noundef !4
  %i.cw = zext i32 %i.cv to i64
  tail call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef %i.ct, i64 noundef %i.cw, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %9, ptr noalias nofree noundef nonnull %10, i64 noundef %11)
  %i.cx = add nsw i64 %.sroa.080.0.lcssa589, -1
  br label %bb.y

bb.aa:                                            ; preds = %bb.x
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ck, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #22
  unreachable

bb.ab:                                            ; preds = %bb.y
  %i.cy = add i64 %.sroa.080.1, -3                ; 4 uses
  %i.cz = icmp ult i64 %i.cy, 704
  br i1 %i.cz, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cy, i64 noundef 704, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #22
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.da = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc9constants17kNonZeroRepsDepth, i64 %i.cy
  %i.db = load i32, ptr %i.da, align 4, !noundef !4
  %i.dc = trunc i32 %i.db to i8
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc9constants16kNonZeroRepsBits, i64 %i.cy
  %i.de = load i64, ptr %i.dd, align 8, !noundef !4
  tail call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef %i.dc, i64 noundef %i.de, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %9, ptr noalias nofree noundef nonnull %10, i64 noundef %11)
  br label %.loopexit232

.lr.ph393.split:                                  ; preds = %.lr.ph393, %.lr.ph393.split
  %.sroa.080.2392 = phi i64 [ %i.df, %.lr.ph393.split ], [ %.sroa.080.1, %.lr.ph393 ]
  %i.df = add nsw i64 %.sroa.080.2392, -1         ; 2 uses
  %i.dg = load i8, ptr %i.cq, align 1, !noundef !4
  %i.dh = load i32, ptr %i.cr, align 4, !noundef !4
  %i.di = zext i32 %i.dh to i64
  tail call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef %i.dg, i64 noundef %i.di, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %9, ptr noalias nofree noundef nonnull %10, i64 noundef %11)
  %i.dj = icmp eq i64 %i.df, 0
  br i1 %i.dj, label %.loopexit232, label %.lr.ph393.split

bb.ae:                                            ; preds = %.lr.ph393
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.co, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #22
  unreachable

.loopexit:                                        ; preds = %bb.aq
  store i64 %46, ptr %i.b, align 8
  %exitcond522.not = icmp eq i64 %.sroa.02.1, 2
  br i1 %exitcond522.not, label %.loopexit.3, label %.lr.ph399.1

.lr.ph399.1:                                      ; preds = %.loopexit
  %12 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %13

13:                                               ; preds = %25, %.lr.ph399.1
  %.sroa.070.0397.1 = phi i64 [ 2, %.lr.ph399.1 ], [ %26, %25 ] ; 2 uses
  %14 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.070.0397.1 ; 2 uses
  %15 = load i64, ptr %14, align 8, !noundef !4   ; 4 uses
  %16 = icmp ult i64 %15, %6
  br i1 %16, label %17, label %bb.an

17:                                               ; preds = %13
  %18 = load i64, ptr %12, align 8, !noundef !4   ; 4 uses
  %19 = icmp ult i64 %18, %6
  br i1 %19, label %bb.af, label %bb.ap

bb.af:                                            ; preds = %17
  %20 = getelementptr inbounds nuw i8, ptr %5, i64 %15
  %21 = load i8, ptr %20, align 1, !noundef !4
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 %18
  %22 = load i8, ptr %i.dk, align 1, !noundef !4
  %23 = icmp ult i8 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %bb.af
  store i64 %18, ptr %14, align 8
  store i64 %15, ptr %12, align 8
  br label %25

25:                                               ; preds = %24, %bb.af
  %26 = add nuw i64 %.sroa.070.0397.1, 1          ; 2 uses
  %exitcond521.not.1 = icmp eq i64 %26, %.sroa.02.1
  br i1 %exitcond521.not.1, label %.loopexit.1, label %13

.loopexit.1:                                      ; preds = %25
  %cond868 = icmp eq i64 %.sroa.02.1, 4
  br i1 %cond868, label %.lr.ph399.2, label %.loopexit.3

.lr.ph399.2:                                      ; preds = %.loopexit.1
  %27 = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %39, %.lr.ph399.2
  %.sroa.065.0400 = phi i64 [ 3, %.lr.ph399.2 ], [ %40, %39 ] ; 2 uses
  %28 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.065.0400 ; 2 uses
  %29 = load i64, ptr %28, align 8, !noundef !4   ; 4 uses
  %i.dl = icmp ult i64 %29, %6
  br i1 %i.dl, label %30, label %bb.an

30:                                               ; preds = %bb.ag
  %31 = load i64, ptr %27, align 8, !noundef !4   ; 4 uses
  %32 = icmp ult i64 %31, %6
  br i1 %32, label %33, label %bb.ap

33:                                               ; preds = %30
  %34 = getelementptr inbounds nuw i8, ptr %5, i64 %29
  %35 = load i8, ptr %34, align 1, !noundef !4
  %36 = getelementptr inbounds nuw i8, ptr %5, i64 %31
  %37 = load i8, ptr %36, align 1, !noundef !4
  %38 = icmp ult i8 %35, %37
  br i1 %38, label %.lr.ph399, label %39

.lr.ph399:                                        ; preds = %33
  store i64 %31, ptr %28, align 8
  store i64 %29, ptr %27, align 8
  br label %39

39:                                               ; preds = %.lr.ph399, %33
  %40 = add nuw i64 %.sroa.065.0400, 1            ; 2 uses
  %exitcond521.not.2 = icmp eq i64 %40, %.sroa.02.1
  br i1 %exitcond521.not.2, label %.loopexit.3, label %bb.ag

.loopexit.3:                                      ; preds = %39, %.loopexit.1, %.loopexit
  %41 = trunc i64 %4 to i8                        ; 5 uses
  %42 = load i64, ptr %i.b, align 8, !noundef !4  ; 4 uses
  tail call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef %41, i64 noundef %42, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %9, ptr noalias nofree noundef nonnull %10, i64 noundef %11)
  %43 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %44 = load i64, ptr %43, align 8, !noundef !4
  tail call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef %41, i64 noundef %44, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %9, ptr noalias nofree noundef nonnull %10, i64 noundef %11)
  switch i64 %.sroa.02.1, label %bb.ai [
    i64 2, label %.loopexit233
    i64 3, label %bb.ah
  ]

bb.ah:                                            ; preds = %.loopexit.3
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dn = load i64, ptr %i.dm, align 8, !noundef !4
  tail call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef %41, i64 noundef %i.dn, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %9, ptr noalias nofree noundef nonnull %10, i64 noundef %11)
  br label %.loopexit233

bb.ai:                                            ; preds = %.loopexit.3
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !noundef !4
  tail call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef %41, i64 noundef %i.dp, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %9, ptr noalias nofree noundef nonnull %10, i64 noundef %11)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dr = load i64, ptr %i.dq, align 8, !noundef !4
  tail call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef %41, i64 noundef %i.dr, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %9, ptr noalias nofree noundef nonnull %10, i64 noundef %11)
  %i.ds = icmp ult i64 %42, %6
  br i1 %i.ds, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 %42
  %i.du = load i8, ptr %i.dt, align 1, !noundef !4
  %i.dv = icmp eq i8 %i.du, 1
  %. = zext i1 %i.dv to i64
  tail call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef 1, i64 noundef %., ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %9, ptr noalias nofree noundef nonnull %10, i64 noundef %11)
  br label %.loopexit233

bb.ak:                                            ; preds = %bb.ai
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %42, i64 noundef %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #22
  unreachable

.loopexit233:                                     ; preds = %.loopexit232, %bb.aj, %bb.ah, %.loopexit.3, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.al:                                            ; preds = %bb.s, %bb.aq
  %45 = phi i64 [ %.promoted, %bb.s ], [ %46, %bb.aq ] ; 7 uses
  %.sroa.070.0397 = phi i64 [ 1, %bb.s ], [ %i.ef, %bb.aq ] ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.070.0397 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !noundef !4 ; 4 uses
  %i.dy = icmp ult i64 %i.dx, %6
  br i1 %i.dy, label %bb.am, label %.loopexit801

bb.am:                                            ; preds = %bb.al
  %i.dz = icmp ult i64 %45, %6
  br i1 %i.dz, label %bb.ao, label %.loopexit802

.loopexit801:                                     ; preds = %bb.al
  store i64 %45, ptr %i.b, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.ag, %13, %.loopexit801
  %.lcssa = phi i64 [ %15, %13 ], [ %i.dx, %.loopexit801 ], [ %29, %bb.ag ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa, i64 noundef %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #22
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 %i.dx
  %i.eb = load i8, ptr %i.ea, align 1, !noundef !4
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 %45
  %i.ed = load i8, ptr %i.ec, align 1, !noundef !4
  %i.ee = icmp ult i8 %i.eb, %i.ed
  br i1 %i.ee, label %bb.ar, label %bb.aq

.loopexit802:                                     ; preds = %bb.am
  store i64 %45, ptr %i.b, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %30, %17, %.loopexit802
  %.lcssa760 = phi i64 [ %18, %17 ], [ %45, %.loopexit802 ], [ %31, %30 ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa760, i64 noundef %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #22
  unreachable

bb.aq:                                            ; preds = %bb.ao, %bb.ar
  %46 = phi i64 [ %45, %bb.ao ], [ %i.dx, %bb.ar ] ; 2 uses
  %i.ef = add nuw i64 %.sroa.070.0397, 1          ; 2 uses
  %exitcond521.not = icmp eq i64 %i.ef, %.sroa.02.1
  br i1 %exitcond521.not, label %.loopexit, label %bb.al

bb.ar:                                            ; preds = %bb.ao
  store i64 %45, ptr %i.dw, align 8
  br label %bb.aq

.lr.ph369:                                        ; preds = %.lr.ph369.preheader, %bb.ay
  %.sroa.027.1366 = phi i32 [ %i.ft, %bb.ay ], [ %i.ac, %.lr.ph369.preheader ] ; 4 uses
  %.sroa.044.0365 = phi i32 [ %.sroa.044.2, %bb.ay ], [ 0, %.lr.ph369.preheader ] ; 3 uses
  %.sroa.050.0364 = phi i32 [ %.sroa.050.2, %bb.ay ], [ %i.q, %.lr.ph369.preheader ] ; 3 uses
  %i.eg = sext i32 %.sroa.044.0365 to i64         ; 3 uses
  %i.eh = icmp ugt i64 %i.l, %i.eg
  br i1 %i.eh, label %bb.as, label %.invoke

bb.as:                                            ; preds = %.lr.ph369
  %i.ei = sext i32 %.sroa.050.0364 to i64         ; 3 uses
  %i.ej = icmp ugt i64 %i.l, %i.ei
  br i1 %i.ej, label %bb.at, label %.invoke

bb.at:                                            ; preds = %bb.as
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.eg
  %i.el = load i32, ptr %i.ek, align 4, !noundef !4
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ei
  %i.en = load i32, ptr %i.em, align 4, !noundef !4
  %.not164 = icmp ugt i32 %i.el, %i.en            ; 3 uses
  %.sroa.061.0 = select i1 %.not164, i32 %.sroa.050.0364, i32 %.sroa.044.0365 ; 2 uses
  %i.eo = zext i1 %.not164 to i32
  %.sroa.050.1 = add i32 %.sroa.050.0364, %i.eo   ; 3 uses
  %not..not164 = xor i1 %.not164, true
  %i.ep = zext i1 %not..not164 to i32
  %.sroa.044.1 = add i32 %.sroa.044.0365, %i.ep   ; 3 uses
  %i.eq = sext i32 %.sroa.044.1 to i64            ; 3 uses
  %i.er = icmp ugt i64 %i.l, %i.eq
  br i1 %i.er, label %bb.au, label %.invoke

bb.au:                                            ; preds = %bb.at
  %i.es = sext i32 %.sroa.050.1 to i64            ; 3 uses
  %i.et = icmp ugt i64 %i.l, %i.es
  br i1 %i.et, label %bb.av, label %.invoke

bb.av:                                            ; preds = %bb.au
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.eq
  %i.ev = load i32, ptr %i.eu, align 4, !noundef !4
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.es
  %i.ex = load i32, ptr %i.ew, align 4, !noundef !4
  %.not165 = icmp ugt i32 %i.ev, %i.ex            ; 3 uses
  %.sroa.063.0 = select i1 %.not165, i32 %.sroa.050.1, i32 %.sroa.044.1 ; 2 uses
  %i.ey = zext i1 %.not165 to i32
  %.sroa.050.2 = add i32 %.sroa.050.1, %i.ey
  %not..not165 = xor i1 %.not165, true
  %i.ez = zext i1 %not..not165 to i32
  %.sroa.044.2 = add i32 %.sroa.044.1, %i.ez
  %i.fa = sext i32 %.sroa.061.0 to i64            ; 3 uses
  %i.fb = icmp ugt i64 %i.l, %i.fa
  br i1 %i.fb, label %bb.aw, label %.invoke

bb.aw:                                            ; preds = %bb.av
  %i.fc = sext i32 %.sroa.063.0 to i64            ; 3 uses
  %i.fd = icmp ugt i64 %i.l, %i.fc
  br i1 %i.fd, label %bb.ax, label %.invoke

bb.ax:                                            ; preds = %bb.aw
  %i.fe = add i32 %.sroa.027.1366, -1
  %i.ff = zext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.fa
  %i.fh = load i32, ptr %i.fg, align 4, !noundef !4
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.fc
  %i.fj = load i32, ptr %i.fi, align 4, !noundef !4
  %i.fk = add i32 %i.fj, %i.fh
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ff ; 3 uses
  store i32 %i.fk, ptr %i.fl, align 4
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.fn = trunc i32 %.sroa.061.0 to i16
  store i16 %i.fn, ptr %i.fm, align 4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 6
  %i.fp = trunc i32 %.sroa.063.0 to i16
  store i16 %i.fp, ptr %i.fo, align 2
  %i.fq = zext i32 %.sroa.027.1366 to i64         ; 3 uses
  %i.fr = icmp ugt i64 %i.l, %i.fq
  br i1 %i.fr, label %bb.ay, label %.invoke

bb.ay:                                            ; preds = %bb.ax
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.fq
  store i64 -1, ptr %i.fs, align 4
  %i.ft = add i32 %.sroa.027.1366, 1
  %exitcond518.not = icmp eq i32 %.sroa.027.1366, %i.ad
  br i1 %exitcond518.not, label %._crit_edge370, label %.lr.ph369

.invoke:                                          ; preds = %bb.g, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %.lr.ph369
  %i.fu = phi i64 [ %i.fc, %bb.aw ], [ %i.fa, %bb.av ], [ %i.es, %bb.au ], [ %i.eq, %bb.at ], [ %i.ei, %bb.as ], [ %i.eg, %.lr.ph369 ], [ %i.fq, %bb.ax ], [ %i.y, %bb.g ]
  %i.fv = phi ptr [ @103, %bb.aw ], [ @102, %bb.av ], [ @101, %bb.au ], [ @100, %bb.at ], [ @99, %bb.as ], [ @98, %.lr.ph369 ], [ @104, %bb.ax ], [ @90, %bb.g ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.fu, i64 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fv) #20
          to label %.cont unwind label %.thread

.cont:                                            ; preds = %.invoke
  unreachable

bb.az:                                            ; preds = %.lr.ph360
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.n
  %i.fx = load i32, ptr %i.fw, align 4, !noundef !4 ; 3 uses
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az, %bb.bc
  %.sroa.027.2 = phi i32 [ %.sroa.027.0358, %bb.az ], [ %i.ge, %bb.bc ] ; 8 uses
  %i.fz = icmp eq i64 %i.n, 0
  br i1 %i.fz, label %._crit_edge361, label %.lr.ph360

bb.bb:                                            ; preds = %bb.az
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.ga = zext i32 %.sroa.027.0358 to i64         ; 3 uses
  %i.gb = icmp ugt i64 %i.l, %i.ga
  br i1 %i.gb, label %bb.bc, label %.invoke697.loopexit.split.loop.exit834

bb.bc:                                            ; preds = %bb.bb
  %.sroa.024.0. = tail call i32 @llvm.umax.i32(i32 %i.fx, i32 %.sroa.024.0)
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ga ; 3 uses
  %i.gd = trunc i64 %i.n to i16
  store i32 %.sroa.024.0., ptr %i.gc, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  store i16 -1, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gc, i64 6
  store i16 %i.gd, ptr %.sroa.5.0..sroa_idx, align 2
  %i.ge = add i32 %.sroa.027.0358, 1
  br label %bb.ba

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc14entropy_encode11HuffmanTreeEECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.e, %bb.d
  %lpad.phi230 = phi { ptr, i32 } [ %lpad.phi, %bb.d ], [ %lpad.phi229, %bb.e ]
  resume { ptr, i32 } %lpad.phi230

bb.bd:                                            ; preds = %._crit_edge.thread
  %i.gf = getelementptr inbounds nuw i8, ptr %5, i64 %i.f
  store i8 0, ptr %i.gf, align 1
  %i.gg = icmp ult i64 %i.f, %8
  br i1 %i.gg, label %bb.bf, label %bb.bg

bb.be:                                            ; preds = %._crit_edge.thread
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.f, i64 noundef %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #22
  unreachable

bb.bf:                                            ; preds = %bb.bd
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %i.f
  store i16 0, ptr %i.gh, align 2
  br label %.loopexit233

bb.bg:                                            ; preds = %bb.bd
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.f, i64 noundef %8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #22
  unreachable

.lr.ph757:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.012.0349756 = phi i64 [ %i.gm, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 8 uses
  %.sroa.02.0350755 = phi i64 [ %.sroa.02.1, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %.sroa.0.0351754 = phi i64 [ %.sroa.0.1, %.lr.ph ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.sroa.012.0349756
  %i.gj = load i32, ptr %i.gi, align 4, !noundef !4 ; 2 uses
  %i.gk = icmp eq i32 %i.gj, 0
  br i1 %i.gk, label %bb.bi, label %bb.bh

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #22
  unreachable

bb.bh:                                            ; preds = %.lr.ph757
  %i.gl = icmp ult i64 %.sroa.02.0350755, 4
  br i1 %i.gl, label %bb.bj, label %bb.bk

bb.bi:                                            ; preds = %.lr.ph757, %bb.bk
  %.sroa.02.1 = phi i64 [ %.sroa.02.0350755, %.lr.ph757 ], [ %i.gp, %bb.bk ] ; 10 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.0351754, %.lr.ph757 ], [ %i.gr, %bb.bk ] ; 2 uses
  %i.gm = add nuw nsw i64 %.sroa.012.0349756, 1   ; 8 uses
  %i.gn = icmp eq i64 %.sroa.0.1, 0
  br i1 %i.gn, label %._crit_edge, label %.lr.ph

bb.bj:                                            ; preds = %bb.bh
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.0350755
  store i64 %.sroa.012.0349756, ptr %i.go, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bh
  %i.gp = add i64 %.sroa.02.0350755, 1
  %i.gq = zext i32 %i.gj to i64
  %i.gr = sub i64 %.sroa.0.0351754, %i.gq
  br label %bb.bi
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCskeugdADtBsi_12pingora_core6server11transfer_fdNtB2_3Fds11deserialize(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [80 x i8], align 8                ; 13 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 6 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.h = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !4 ; 3 uses
  store i64 %i.j, ptr %i.d, align 8
  %i.k = icmp ult i64 %i.j, 2305843009213693952
  tail call void @llvm.assume(i1 %i.k)
  %.not = icmp eq i64 %i.g, %i.j                  ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #20
          to label %bb.d unwind label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterlEECskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.k, %bb.c
  %eh.lpad-body6 = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.ac, %bb.k ] ; 2 uses
  br i1 %.not, label %.critedge, label %bb.o

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECskeugdADtBsi_12pingora_core.exit.i, %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterlEECskeugdADtBsi_12pingora_core.exit.i

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.o = load i64, ptr %1, align 8, !range !1147, !noundef !4
  %.idx = mul nuw nsw i64 %i.g, 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  %.sroa.0.0.copyload = load i64, ptr %2, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.411.0.copyload = load ptr, ptr %.sroa.411.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.sroa.411.0.copyload, i64 %i.g
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %i.n, ptr %i.c, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.n, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.o, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store ptr %i.p, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  store ptr %.sroa.411.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  store ptr %.sroa.411.0.copyload, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 %.sroa.0.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  store ptr %i.q, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1148
  %i.r = icmp eq i64 %i.g, 0
  br i1 %i.r, label %.loopexit, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit.i.lr.ph

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit.i.lr.ph: ; preds = %bb.e
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit.i

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit.i: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit.i.lr.ph, %bb.m
  %i.s = phi ptr [ %i.n, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit.i.lr.ph ], [ %i.af, %bb.m ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.t, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !alias.scope !1151
  %.sroa.0.0.copyload8.i = load i64, ptr %i.s, align 8, !noalias !1152 ; 3 uses
  %.not.i = icmp eq i64 %.sroa.0.0.copyload8.i, -1
  br i1 %.not.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit.i
  %.sroa.7.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.413.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx9.i, i64 16, i1 false), !noalias !1153
  store i64 %.sroa.0.0.copyload8.i, ptr %i.a, align 8, !noalias !1153
  call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  %i.u = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1155, !nonnull !4, !noundef !4
  %i.v = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !1155, !nonnull !4, !noundef !4 ; 3 uses
  %i.w = icmp eq ptr %i.v, %i.u
  br i1 %i.w, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i unwind label %bb.h, !noalias !1153

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.i, !noalias !1153

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !1153
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.loopexit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i
  %lpad.loopexit.split-lp29 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.h ], [ %lpad.loopexit.split-lp29, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1g_6string6StringEIB1a_lEEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(80) %i.c) #21
          to label %.critedge unwind label %bb.n

bb.j:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store ptr %i.z, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !1155
  %i.aa = load i32, ptr %i.v, align 4, !noalias !1156, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx9.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1153
  store i64 %.sroa.0.0.copyload8.i, ptr %i.b, align 8
  %i.ab = invoke { i32, i32 } @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringlNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i32 noundef %i.aa)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit:                                        ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit.i, %bb.m, %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1153
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECskeugdADtBsi_12pingora_core.exit.i unwind label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterlENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.2.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterlEECskeugdADtBsi_12pingora_core.exit.i unwind label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECskeugdADtBsi_12pingora_core.exit.i: ; preds = %.loopexit
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterlENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.2.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1g_6string6StringEIB1a_lEEECskeugdADtBsi_12pingora_core.exit unwind label %bb.c

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1g_6string6StringEIB1a_lEEECskeugdADtBsi_12pingora_core.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECskeugdADtBsi_12pingora_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1158
  %i.ae = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !alias.scope !1159, !nonnull !4, !noundef !4
  %i.af = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !alias.scope !1159, !nonnull !4, !noundef !4 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.ae
  br i1 %i.ag, label %.loopexit, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit.i

bb.n:                                             ; preds = %bb.p, %bb.o, %.body
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterlEECskeugdADtBsi_12pingora_core.exit.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VeclEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #21
          to label %bb.p unwind label %bb.n

end_hunk_0
