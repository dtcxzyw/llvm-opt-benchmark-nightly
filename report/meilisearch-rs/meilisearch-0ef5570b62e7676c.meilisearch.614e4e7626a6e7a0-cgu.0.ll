Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 150
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 285
begin_hunk_0_@"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$12store_symbol17h640489a63fbb42b3E":bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !45 ; 2 uses
  %i.l = icmp ult i64 %i.f, %i.k
  br i1 %i.l, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.f, i64 noundef %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1626) #43
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !45, !align !70, !noundef !45
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.f
  %i.p = load i32, ptr %i.o, align 4, !noundef !45 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !nonnull !45, !align !55, !noundef !45
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.f
  %i.s = load i8, ptr %i.r, align 1, !noundef !45 ; 2 uses
  %i.t = zext i32 %i.p to i64
  store i64 %i.t, ptr %i.a, align 8
  %i.u = zext i8 %i.s to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = load i64, ptr %i.v, align 8, !noundef !45
  %i.x = mul i64 %i.w, %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 976
  store i64 %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZN6brotli3enc17brotli_bit_stream16StoreBlockSwitch17h099ad7a43c193500E(ptr noalias noundef nonnull align 8 dereferenceable(872) %i.z, i32 noundef %i.p, i8 noundef %i.s, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, ptr noalias noundef nonnull align 1 %3, i64 noundef %4)
  %.pre = load i64, ptr %i.a, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.f, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1627) #43
  unreachable

bb.g:                                             ; preds = %bb.a, %bb.e
  %i.aa = phi i64 [ %i.b, %bb.a ], [ %.pre, %bb.e ]
  %i.ab = add i64 %i.aa, -1
  store i64 %i.ab, ptr %i.a, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !45
  %i.ae = add i64 %i.ad, %1                       ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val7 = load i64, ptr %i.af, align 8, !noundef !45 ; 2 uses
  %i.ag = icmp ult i64 %i.ae, %.val7
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val9 = load i64, ptr %i.ah, align 8, !noundef !45 ; 2 uses
  %i.ai = icmp ult i64 %i.ae, %.val9
  br i1 %i.ai, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.g
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ae, i64 noundef %.val7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1628) #43
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val8 = load ptr, ptr %i.aj, align 8, !nonnull !45, !align !69, !noundef !45
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.ak, align 8, !nonnull !45, !align !55, !noundef !45
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ae
  %i.am = load i8, ptr %i.al, align 1, !noundef !45
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.val8, i64 %i.ae
  %i.ao = load i16, ptr %i.an, align 2, !noundef !45
  %i.ap = zext i16 %i.ao to i64
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.am, i64 noundef %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, ptr noalias noundef nonnull align 1 %3, i64 noundef %4)
  ret void

bb.k:                                             ; preds = %bb.h
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ae, i64 noundef %.val9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1629) #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6brotli3enc17brotli_bit_stream29store_uncompressed_meta_block17hce9957366ac74809E(ptr noalias noundef nonnull align 1 %0, i1 noundef zeroext %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %4, i64 noundef range(i64 0, 4294967296) %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %6, i64 noundef %7, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %8, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull align 1 %10, i64 noundef %11, i1 noundef zeroext %12) unnamed_addr #3 {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 22 uses
  %i.b = alloca [16 x i8], align 4                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_ZN6brotli3enc17brotli_bit_stream24InputPairFromMaskedInput17h9911943266a08ad9E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %4, i64 noundef %7, i64 noundef %5)
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !45, !align !55, !noundef !45 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !45 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !45, !align !55, !noundef !45 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.j = load i64, ptr %i.i, align 8, !noundef !45 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_ZN6brotli3enc17brotli_bit_stream38BrotliStoreUncompressedMetaBlockHeader17hc8eba3681d24f8e1E(i64 noundef %7, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull align 1 %10, i64 noundef %11)
  call void @_ZN6brotli3enc17brotli_bit_stream18JumpToByteBoundary17hd530db3bb0615915E(ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull align 1 %10, i64 noundef %11)
  %i.k = load i64, ptr %9, align 8, !noundef !45  ; 2 uses
  %i.l = lshr i64 %i.k, 3                         ; 4 uses
  %i.m = add i64 %i.l, %i.f                       ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %.not22 = icmp ugt i64 %i.m, %11
  %or.cond = or i1 %i.n, %.not22
  br i1 %or.cond, label %bb.b, label %bb.c, !prof !87

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.l, i64 noundef %i.m, i64 noundef %11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1640) #43
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull readonly align 1 %i.d, i64 %i.f, i1 false), !alias.scope !36262, !noalias !36263
  %i.p = shl i64 %i.f, 3
  %i.q = add i64 %i.k, %i.p                       ; 3 uses
  store i64 %i.q, ptr %9, align 8
  %i.r = lshr i64 %i.q, 3                         ; 4 uses
  %i.s = add i64 %i.r, %i.j                       ; 3 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %.not23 = icmp ugt i64 %i.s, %11
  %or.cond24 = or i1 %i.t, %.not23
  br i1 %or.cond24, label %bb.d, label %bb.e, !prof !87

bb.d:                                             ; preds = %bb.c
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.r, i64 noundef %i.s, i64 noundef %11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1639) #43
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull readonly align 1 %i.h, i64 %i.j, i1 false), !alias.scope !36264, !noalias !36265
  %i.v = shl i64 %i.j, 3
  %i.w = add i64 %i.q, %i.v                       ; 2 uses
  store i64 %i.w, ptr %9, align 8
  call void @_ZN6brotli3enc17brotli_bit_stream29BrotliWriteBitsPrepareStorage17h3e3bbade587d8cacE(i64 noundef %i.w, ptr noalias noundef nonnull align 1 %10, i64 noundef %11)
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 97
  %i.y = load i8, ptr %i.x, align 1, !range !52, !noundef !45
  %i.z = trunc nuw i8 %i.y to i1
  %.not = xor i1 %i.z, true
  %brmerge = or i1 %12, %.not
  br i1 %brmerge, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.g
  br i1 %1, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aa = trunc i64 %7 to i32
  store i32 %i.aa, ptr %i.b, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.0..sroa_idx, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr inttoptr (i64 1 to ptr), ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.64.0..sroa_idx, align 8
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 1, ptr %.sroa.75.0..sroa_idx, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr inttoptr (i64 4 to ptr), ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr inttoptr (i64 1 to ptr), ptr %i.ad, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 0, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 0, ptr %.sroa.69.0..sroa_idx, align 8
  %.sroa.710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i32 1, ptr %.sroa.710.0..sroa_idx, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr inttoptr (i64 1 to ptr), ptr %i.ae, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 0, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.514.0..sroa_idx, align 8
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 0, ptr %.sroa.615.0..sroa_idx, align 8
  %.sroa.716.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i32 1, ptr %.sroa.716.0..sroa_idx, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr inttoptr (i64 4 to ptr), ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 0, ptr %i.ag, align 8
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream12LogMetaBlock17h8d6ec10e9474062aE(ptr noalias noundef nonnull align 1 %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.b, i64 noundef 1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.d, i64 noundef %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.h, i64 noundef %i.j, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @197, ptr noalias noundef align 8 dereferenceable(8) %8, ptr noalias noundef readonly align 8 captures(address) dereferenceable(152) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %6, i8 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.h:                                             ; preds = %bb.i, %bb.f
  ret void

bb.i:                                             ; preds = %bb.f
  call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 1, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull align 1 %10, i64 noundef %11)
  call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 1, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull align 1 %10, i64 noundef %11)
  call void @_ZN6brotli3enc17brotli_bit_stream18JumpToByteBoundary17hd530db3bb0615915E(ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull align 1 %10, i64 noundef %11)
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFast17hd0a5c367cceed3c5E(ptr noalias noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 256, 705) %1, i64 noundef %2, i64 noundef range(i64 0, 4294967296) %3, ptr noalias noundef nonnull align 1 %4, i64 noundef range(i64 140, 705) %5, ptr noalias noundef nonnull align 2 %6, i64 noundef range(i64 140, 705) %7, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %._crit_edge.thread, label %.lr.ph.preheader

._crit_edge:                                      ; preds = %bb.bf
  %i.c = icmp ult i64 %.sroa.0.1, 2
  br i1 %i.c, label %._crit_edge.thread, label %bb.b

.lr.ph:                                           ; preds = %bb.bf
  %exitcond.not = icmp eq i64 %i.fp, %1
  br i1 %exitcond.not, label %bb.bd, label %.lr.ph.preheader

bb.b:                                             ; preds = %._crit_edge
  %.not.not = icmp samesign ult i64 %.sroa.010.0137457, %5
  br i1 %.not.not, label %._crit_edge144, label %bb.c, !prof !54

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 4, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  %i.d = trunc i64 %3 to i8
  %i.e = load i64, ptr %i.a, align 8, !noundef !45 ; 7 uses
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.d, i64 noundef %i.e, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  %i.f = icmp ult i64 %i.e, %5
  br i1 %i.f, label %bb.az, label %bb.ba

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.fp, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1661) #43
  unreachable

._crit_edge144:                                   ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %4, i8 0, i64 %i.fp, i1 false)
  %i.g = shl nuw nsw i64 %i.fp, 1                 ; 13 uses
  %i.h = or disjoint i64 %i.g, 1                  ; 20 uses
  %i.i = shl nuw nsw i64 %i.h, 3                  ; 3 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !36276
  %i.j = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.i, i64 noundef range(i64 1, 9) 4) #38, !noalias !36276 ; 28 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %_ZN6brotli3enc14combined_alloc8alloc_if17hd23791371a41120eE.exit

bb.d:                                             ; preds = %._crit_edge144
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !36277
  unreachable

_ZN6brotli3enc14combined_alloc8alloc_if17hd23791371a41120eE.exit: ; preds = %._crit_edge144
  %i.l = add nsw i64 %i.i, -8                     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.j, i8 0, i64 %i.l, i1 false), !noalias !36278
  %scevgep.i.i = getelementptr i8, ptr %i.j, i64 %i.l
  store i64 0, ptr %scevgep.i.i, align 4, !noalias !36278
  %.first_iter = icmp samesign ult i64 %.sroa.010.0137457, %1
  %i.m = trunc nuw nsw i64 %i.g to i32            ; 2 uses
  br label %.lr.ph148.preheader

.lr.ph148.preheader:                              ; preds = %_ZN6brotli3enc14combined_alloc8alloc_if17hd23791371a41120eE.exit, %bb.n
  %.sroa.024.0 = phi i32 [ 1, %_ZN6brotli3enc14combined_alloc8alloc_if17hd23791371a41120eE.exit ], [ %i.az, %bb.n ] ; 3 uses
  br label %.lr.ph148

.lr.ph148:                                        ; preds = %.lr.ph148.preheader, %bb.av
  %.sroa.027.0146 = phi i32 [ %.sroa.027.2, %bb.av ], [ 0, %.lr.ph148.preheader ] ; 3 uses
  %.sroa.037.0145 = phi i64 [ %i.n, %bb.av ], [ %i.fp, %.lr.ph148.preheader ]
  %i.n = add nsw i64 %.sroa.037.0145, -1          ; 5 uses
  br i1 %.first_iter, label %bb.au, label %.invoke

._crit_edge149:                                   ; preds = %bb.av
  %i.o = add i32 %.sroa.027.2, 1                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.p = sext i32 %.sroa.027.2 to i64             ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36279)
  %i.q = icmp ult i32 %.sroa.027.2, 13
  br i1 %i.q, label %.preheader.split.i, label %bb.e

.preheader.split.i:                               ; preds = %._crit_edge149
  %i.r = icmp samesign ugt i32 %.sroa.027.2, 1
  br i1 %i.r, label %.lr.ph66.i, label %.loopexit42

bb.e:                                             ; preds = %._crit_edge149
  %i.s = icmp ult i32 %.sroa.027.2, 57
  %i.t = select i1 %i.s, i64 2, i64 0
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge63.i, %bb.e
  %indvars.iv.i = phi i64 [ %i.t, %bb.e ], [ %indvars.iv.next.i, %._crit_edge63.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @_ZN6brotli3enc14entropy_encode20SortHuffmanTreeItems4gaps17ha345c21f8c53bdffE, i64 %indvars.iv.i
  %i.v = load i64, ptr %i.u, align 8, !noalias !36279, !noundef !45 ; 5 uses
  %i.w = icmp ult i64 %i.v, %i.p
  br i1 %i.w, label %.lr.ph62.preheader.i, label %._crit_edge63.i

.lr.ph62.preheader.i:                             ; preds = %bb.f
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 %i.h) ; 2 uses
  br label %.lr.ph62.i

._crit_edge63.i:                                  ; preds = %bb.h, %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond82.not.i = icmp eq i64 %indvars.iv.next.i, 6
  br i1 %exitcond82.not.i, label %.loopexit42, label %bb.f

.lr.ph62.i:                                       ; preds = %bb.h, %.lr.ph62.preheader.i
  %.sroa.025.060.i = phi i64 [ %i.x, %bb.h ], [ %i.v, %.lr.ph62.preheader.i ] ; 4 uses
  %i.x = add i64 %.sroa.025.060.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.025.060.i, %umax.i
  br i1 %exitcond.not.i, label %.invoke, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph62.i
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.025.060.i
  %i.z = load i64, ptr %i.y, align 4, !alias.scope !36279 ; 2 uses
  %.sroa.038.0.extract.trunc.i = trunc i64 %i.z to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.preheader.i
  %.sroa.015.057.i = phi i64 [ %i.aa, %bb.i ], [ %.sroa.025.060.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.aa = sub nuw i64 %.sroa.015.057.i, %i.v      ; 6 uses
  %.not26 = icmp ugt i64 %i.aa, %i.g
  br i1 %.not26, label %.invoke, label %bb.g

._crit_edge.i:                                    ; preds = %bb.i, %bb.g
  %.sroa.015.0.lcssa.ph.i = phi i64 [ %i.aa, %bb.i ], [ %.sroa.015.057.i, %bb.g ] ; 3 uses
  %.not27 = icmp ugt i64 %.sroa.015.0.lcssa.ph.i, %i.g
  br i1 %.not27, label %.invoke, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.aa ; 2 uses
  %.val35.i = load i32, ptr %i.ab, align 4, !alias.scope !36279, !noundef !45
  %i.ac = icmp ugt i32 %.val35.i, %.sroa.038.0.extract.trunc.i
  br i1 %i.ac, label %bb.i, label %._crit_edge.i

bb.h:                                             ; preds = %._crit_edge.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.015.0.lcssa.ph.i
  store i64 %i.z, ptr %i.ad, align 4, !alias.scope !36279
  %exitcond80.not.i = icmp eq i64 %i.x, %i.p
  br i1 %exitcond80.not.i, label %._crit_edge63.i, label %.lr.ph62.i

bb.i:                                             ; preds = %bb.g
  %.sroa.021.0.copyload.i = load i64, ptr %i.ab, align 4, !alias.scope !36279
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.015.057.i
  store i64 %.sroa.021.0.copyload.i, ptr %i.ae, align 4, !alias.scope !36279
  %.not.i = icmp ult i64 %i.aa, %i.v
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph66.i:                                       ; preds = %.preheader.split.i, %.thread
  %.sroa.023.065.i = phi i64 [ %i.af, %.thread ], [ 1, %.preheader.split.i ] ; 4 uses
  %i.af = add nuw nsw i64 %.sroa.023.065.i, 1     ; 2 uses
  %exitcond84.not.i = icmp eq i64 %.sroa.023.065.i, %i.h
  br i1 %exitcond84.not.i, label %.invoke, label %.split.i

.split.i:                                         ; preds = %.lr.ph66.i
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.023.065.i
  %i.ah = load i64, ptr %i.ag, align 4, !alias.scope !36279 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.ah to i32
  br label %bb.j

.invoke.loopexit473.split.loop.exit526:           ; preds = %bb.aw
  %.not173.le = icmp ult i32 %i.fb, %.sroa.024.0
  %.430.le = select i1 %.not173.le, ptr @1659, ptr @1660
  br label %.invoke

.invoke:                                          ; preds = %bb.l, %.loopexit42, %.invoke.loopexit473.split.loop.exit526, %.lr.ph148, %.lr.ph66.i, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %.lr.ph157, %._crit_edge.i, %.lr.ph62.i, %.lr.ph.i
  %i.ai = phi i64 [ %i.aa, %.lr.ph.i ], [ %.sroa.015.0.lcssa.ph.i, %._crit_edge.i ], [ %i.ex, %bb.as ], [ %i.n, %.lr.ph148 ], [ %i.h, %.lr.ph66.i ], [ %umax.i, %.lr.ph62.i ], [ %i.em, %bb.ar ], [ %i.ek, %bb.aq ], [ %i.ej, %bb.ap ], [ %i.ec, %bb.ao ], [ %i.eb, %bb.an ], [ %i.du, %bb.am ], [ %i.dt, %.lr.ph157 ], [ %i.fe, %.invoke.loopexit473.split.loop.exit526 ], [ %i.as, %bb.l ], [ %i.aq, %.loopexit42 ]
  %i.aj = phi i64 [ %i.h, %.lr.ph.i ], [ %i.h, %._crit_edge.i ], [ %i.h, %bb.as ], [ %1, %.lr.ph148 ], [ %i.h, %.lr.ph66.i ], [ %i.h, %.lr.ph62.i ], [ %i.h, %.lr.ph157 ], [ %i.h, %bb.am ], [ %i.h, %bb.an ], [ %i.h, %bb.ao ], [ %i.h, %bb.ap ], [ %i.h, %bb.aq ], [ %i.h, %bb.ar ], [ %i.h, %.invoke.loopexit473.split.loop.exit526 ], [ %i.h, %.loopexit42 ], [ %i.h, %bb.l ]
  %i.ak = phi ptr [ @1575, %.lr.ph.i ], [ @1576, %._crit_edge.i ], [ @1657, %bb.as ], [ @1658, %.lr.ph148 ], [ @1577, %.lr.ph66.i ], [ @1574, %.lr.ph62.i ], [ @1656, %bb.ar ], [ @1655, %bb.aq ], [ @1654, %bb.ap ], [ @1653, %bb.ao ], [ @1652, %bb.an ], [ @1651, %bb.am ], [ @1650, %.lr.ph157 ], [ %.430.le, %.invoke.loopexit473.split.loop.exit526 ], [ @1642, %bb.l ], [ @1641, %.loopexit42 ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ai, i64 noundef %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ak) #43
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.k, %.split.i
  %.sroa.01.0.i = phi i64 [ %.sroa.023.065.i, %.split.i ], [ %.sroa.03.0.i, %bb.k ] ; 3 uses
  %.sroa.03.0.i = add nsw i64 %.sroa.01.0.i, -1   ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.03.0.i ; 2 uses
  %.val37.i = load i32, ptr %i.al, align 4, !alias.scope !36279, !noundef !45
  %i.am = icmp ugt i32 %.val37.i, %.sroa.0.0.extract.trunc.i
  br i1 %i.am, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %.sroa.08.0.copyload.i = load i64, ptr %i.al, align 4, !alias.scope !36279
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.01.0.i
  store i64 %.sroa.08.0.copyload.i, ptr %i.an, align 4, !alias.scope !36279
  %i.ao = icmp eq i64 %.sroa.03.0.i, 0
  br i1 %i.ao, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.k, %bb.j
  %.sroa.01.1.i20 = phi i64 [ %.sroa.01.0.i, %bb.j ], [ 0, %bb.k ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.01.1.i20
  store i64 %i.ah, ptr %i.ap, align 4, !alias.scope !36279
  %exitcond85.not.i = icmp eq i64 %i.af, %i.p
  br i1 %exitcond85.not.i, label %.loopexit42, label %.lr.ph66.i

.loopexit42:                                      ; preds = %._crit_edge63.i, %.thread, %.preheader.split.i
  %i.aq = zext i32 %i.o to i64                    ; 3 uses
  %.not29 = icmp samesign ult i64 %i.g, %i.aq
  br i1 %.not29, label %.invoke, label %bb.l

bb.l:                                             ; preds = %.loopexit42
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.aq
  %i.as = zext i32 %.sroa.027.2 to i64            ; 3 uses
  %.not30 = icmp samesign ult i64 %i.g, %i.as
  store i64 -1, ptr %i.ar, align 4
  br i1 %.not30, label %.invoke, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.as
  %.sroa.060.0151 = add i32 %.sroa.027.2, -1
  %i.au = icmp sgt i32 %.sroa.060.0151, 0
  store i64 -1, ptr %i.at, align 4
  br i1 %i.au, label %.lr.ph157.preheader, label %.._crit_edge158_crit_edge

.._crit_edge158_crit_edge:                        ; preds = %bb.m
  %.pre273 = shl i32 %.sroa.027.2, 1
  br label %._crit_edge158

.lr.ph157.preheader:                              ; preds = %bb.m
  %i.av = add nuw i32 %.sroa.027.2, 2
  %i.aw = shl i32 %.sroa.027.2, 1                 ; 2 uses
  br label %.lr.ph157

._crit_edge158:                                   ; preds = %bb.at, %.._crit_edge158_crit_edge
  %.pre-phi274 = phi i32 [ %.pre273, %.._crit_edge158_crit_edge ], [ %i.aw, %bb.at ]
  %i.ax = add i32 %.pre-phi274, -1
  %i.ay = invoke noundef zeroext i1 @_ZN6brotli3enc14entropy_encode14BrotliSetDepth17h5f5ba8abc19b5273E(i32 noundef %i.ax, ptr noalias noundef nonnull align 4 %i.j, i64 noundef %i.h, ptr noalias noundef nonnull align 1 %4, i64 noundef %5, i32 noundef 14)
          to label %bb.n unwind label %.loopexit44

bb.n:                                             ; preds = %._crit_edge158
  %i.az = shl i32 %.sroa.024.0, 1
  br i1 %i.ay, label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..entropy_encode..HuffmanTree$GT$$GT$17h66adf8cf8f2b9f83E.exit217", label %.lr.ph148.preheader

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..entropy_encode..HuffmanTree$GT$$GT$17h66adf8cf8f2b9f83E.exit217": ; preds = %bb.n
  tail call void @mi_free(ptr noundef nonnull align 4 %i.j) #38
  tail call void @_ZN6brotli3enc14entropy_encode31BrotliConvertBitDepthsToSymbols17hf5dace01f018846fE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %4, i64 noundef %5, i64 noundef %i.fp, ptr noalias noundef nonnull align 2 %6, i64 noundef %7)
  %i.ba = icmp ult i64 %.sroa.0.1, 5
  br i1 %i.ba, label %.preheader.a, label %.split.preheader

.split.preheader:                                 ; preds = %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..entropy_encode..HuffmanTree$GT$$GT$17h66adf8cf8f2b9f83E.exit217"
  tail call void @_ZN6brotli3enc17brotli_bit_stream25StoreStaticCodeLengthCode17hf918db1678579c13E(ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  br label %.split

.preheader.a:                                     ; preds = %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..entropy_encode..HuffmanTree$GT$$GT$17h66adf8cf8f2b9f83E.exit217"
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 2, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  %i.bb = add nsw i64 %.sroa.0.1, -1
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 2, i64 noundef %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  br label %bb.ah

.split:                                           ; preds = %.split.preheader, %.loopexit40
  %.sroa.085.0171 = phi i8 [ %.sroa.085.1, %.loopexit40 ], [ 8, %.split.preheader ] ; 2 uses
  %.sroa.086.0170 = phi i64 [ %.pre-phi329, %.loopexit40 ], [ 0, %.split.preheader ] ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.086.0170
  %i.bd = load i8, ptr %i.bc, align 1, !noundef !45 ; 11 uses
  %.sroa.0101.0159 = add nuw nsw i64 %.sroa.086.0170, 1 ; 3 uses
  %i.be = icmp ult i64 %.sroa.086.0170, %.sroa.010.0137457
  br i1 %i.be, label %.lr.ph162.preheader, label %._crit_edge163.thread

.lr.ph162.preheader:                              ; preds = %.split
  %i.bf = sub nsw i64 %i.fp, %.sroa.086.0170
  br label %.lr.ph162

.lr.ph162:                                        ; preds = %.lr.ph162.preheader, %bb.o
  %.sroa.0101.0161 = phi i64 [ %.sroa.0101.0, %bb.o ], [ %.sroa.0101.0159, %.lr.ph162.preheader ] ; 3 uses
  %.sroa.090.0160 = phi i64 [ %i.bl, %bb.o ], [ 1, %.lr.ph162.preheader ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.0101.0161
  %i.bh = load i8, ptr %i.bg, align 1, !noundef !45
  %i.bi = icmp eq i8 %i.bh, %i.bd
  br i1 %i.bi, label %bb.o, label %._crit_edge163

._crit_edge163:                                   ; preds = %bb.o, %.lr.ph162
  %.sroa.090.0.lcssa.ph = phi i64 [ %i.bf, %bb.o ], [ %.sroa.090.0160, %.lr.ph162 ] ; 5 uses
  %.pre = add i64 %.sroa.090.0.lcssa.ph, %.sroa.086.0170 ; 2 uses
  %i.bj = icmp eq i8 %i.bd, 0
  br i1 %i.bj, label %bb.p, label %bb.q

._crit_edge163.thread:                            ; preds = %.split
  %i.bk = icmp eq i8 %i.bd, 0
  br i1 %i.bk, label %.thread334, label %bb.q

bb.o:                                             ; preds = %.lr.ph162
  %i.bl = add nuw nsw i64 %.sroa.090.0160, 1
  %.sroa.0101.0 = add i64 %.sroa.0101.0161, 1
  %exitcond271.not = icmp eq i64 %.sroa.0101.0161, %.sroa.010.0137457
  br i1 %exitcond271.not, label %._crit_edge163, label %.lr.ph162

bb.p:                                             ; preds = %._crit_edge163
  %i.bm = icmp ult i64 %.sroa.090.0.lcssa.ph, 704
  br i1 %i.bm, label %.thread334, label %bb.r

bb.q:                                             ; preds = %._crit_edge163.thread, %._crit_edge163
  %.sroa.090.0.lcssa332 = phi i64 [ 1, %._crit_edge163.thread ], [ %.sroa.090.0.lcssa.ph, %._crit_edge163 ] ; 2 uses
  %.pre-phi330 = phi i64 [ %.sroa.0101.0159, %._crit_edge163.thread ], [ %.pre, %._crit_edge163 ] ; 3 uses
  %.not174 = icmp eq i8 %.sroa.085.0171, %i.bd
  br i1 %.not174, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.p
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.090.0.lcssa.ph, i64 noundef 704, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1643) #43
  unreachable

.thread334:                                       ; preds = %._crit_edge163.thread, %bb.p
  %.pre-phi331338 = phi i64 [ %.pre, %bb.p ], [ %.sroa.0101.0159, %._crit_edge163.thread ]
  %.sroa.090.0.lcssa333337 = phi i64 [ %.sroa.090.0.lcssa.ph, %bb.p ], [ 1, %._crit_edge163.thread ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc9constants14kZeroRepsDepth17h008abeb978242173E, i64 %.sroa.090.0.lcssa333337
  %i.bo = load i32, ptr %i.bn, align 4, !noundef !45
  %i.bp = trunc i32 %i.bo to i8
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr @_ZN6brotli3enc9constants13kZeroRepsBits17h8bfdc183adf0dea0E, i64 %.sroa.090.0.lcssa333337
  %i.br = load i64, ptr %i.bq, align 8, !noundef !45
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.bp, i64 noundef %i.br, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  br label %.loopexit40

.loopexit40:                                      ; preds = %.lr.ph168.split, %.preheader39, %bb.y, %.thread334
  %.pre-phi329 = phi i64 [ %.pre-phi331338, %.thread334 ], [ %.pre-phi330, %bb.y ], [ %.pre-phi330, %.preheader39 ], [ %.pre-phi330, %.lr.ph168.split ] ; 2 uses
  %.sroa.085.1 = phi i8 [ %.sroa.085.0171, %.thread334 ], [ %i.bd, %bb.y ], [ %i.bd, %.preheader39 ], [ %i.bd, %.lr.ph168.split ]
  %.not = icmp ugt i64 %.pre-phi329, %.sroa.010.0137457
  br i1 %.not, label %.loopexit41, label %.split

bb.s:                                             ; preds = %bb.q
  %i.bs = zext i8 %i.bd to i64                    ; 3 uses
  %i.bt = icmp ult i8 %i.bd, 18
  br i1 %i.bt, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.q, %bb.u
  %.sroa.090.1 = phi i64 [ %i.cf, %bb.u ], [ %.sroa.090.0.lcssa332, %bb.q ] ; 4 uses
  %i.bu = icmp ult i64 %.sroa.090.1, 3
  br i1 %i.bu, label %.preheader39, label %bb.w

.preheader39:                                     ; preds = %bb.t
  %i.bv = icmp eq i64 %.sroa.090.1, 0
  br i1 %i.bv, label %.loopexit40, label %.lr.ph168

.lr.ph168:                                        ; preds = %.preheader39
  %i.bw = zext i8 %i.bd to i64                    ; 3 uses
  %i.bx = icmp ult i8 %i.bd, 18
  %i.by = getelementptr inbounds nuw i8, ptr @_ZN6brotli3enc9constants16kCodeLengthDepth17he1a3802995d17e02E, i64 %i.bw
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc9constants15kCodeLengthBits17he8d7f9e9cdc65196E, i64 %i.bw
  br i1 %i.bx, label %.lr.ph168.split, label %bb.z

bb.u:                                             ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr @_ZN6brotli3enc9constants16kCodeLengthDepth17he1a3802995d17e02E, i64 %i.bs
  %i.cb = load i8, ptr %i.ca, align 1, !noundef !45
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc9constants15kCodeLengthBits17he8d7f9e9cdc65196E, i64 %i.bs
  %i.cd = load i32, ptr %i.cc, align 4, !noundef !45
  %i.ce = zext i32 %i.cd to i64
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.cb, i64 noundef %i.ce, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  %i.cf = add nsw i64 %.sroa.090.0.lcssa332, -1
  br label %bb.t

bb.v:                                             ; preds = %bb.s
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bs, i64 noundef 18, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1644) #43
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.cg = add i64 %.sroa.090.1, -3                ; 4 uses
  %i.ch = icmp ult i64 %i.cg, 704
  br i1 %i.ch, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.cg, i64 noundef 704, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1645) #43
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc9constants17kNonZeroRepsDepth17hf0ed542e139afe71E, i64 %i.cg
  %i.cj = load i32, ptr %i.ci, align 4, !noundef !45
  %i.ck = trunc i32 %i.cj to i8
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr @_ZN6brotli3enc9constants16kNonZeroRepsBits17h7002645b2b70cbe2E, i64 %i.cg
  %i.cm = load i64, ptr %i.cl, align 8, !noundef !45
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.ck, i64 noundef %i.cm, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  br label %.loopexit40

.lr.ph168.split:                                  ; preds = %.lr.ph168, %.lr.ph168.split
  %.sroa.090.2167 = phi i64 [ %i.cn, %.lr.ph168.split ], [ %.sroa.090.1, %.lr.ph168 ]
  %i.cn = add nsw i64 %.sroa.090.2167, -1         ; 2 uses
  %i.co = load i8, ptr %i.by, align 1, !noundef !45
  %i.cp = load i32, ptr %i.bz, align 4, !noundef !45
  %i.cq = zext i32 %i.cp to i64
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.co, i64 noundef %i.cq, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  %i.cr = icmp eq i64 %i.cn, 0
  br i1 %i.cr, label %.loopexit40, label %.lr.ph168.split

bb.z:                                             ; preds = %.lr.ph168
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bw, i64 noundef 18, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1646) #43
  unreachable

.preheader.1:                                     ; preds = %bb.ak
  %cond = icmp eq i64 %.sroa.0.1, 2
  br i1 %cond, label %.loopexit.3, label %.lr.ph173.1

.lr.ph173.1:                                      ; preds = %.preheader.1
  %11 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %25, %.lr.ph173.1
  %.sroa.0107.0172.1 = phi i64 [ 2, %.lr.ph173.1 ], [ %i.cs, %25 ] ; 2 uses
  %i.cs = add i64 %.sroa.0107.0172.1, 1           ; 2 uses
  %12 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.0107.0172.1 ; 2 uses
  %13 = load i64, ptr %12, align 8, !noundef !45  ; 4 uses
  %14 = icmp ult i64 %13, %5
  br i1 %14, label %15, label %.loopexit486

15:                                               ; preds = %bb.aa
  %16 = load i64, ptr %11, align 8, !noundef !45  ; 4 uses
  %17 = icmp ult i64 %16, %5
  br i1 %17, label %18, label %.loopexit487

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %4, i64 %13
  %20 = load i8, ptr %19, align 1, !noundef !45
  %21 = getelementptr inbounds nuw i8, ptr %4, i64 %16
  %22 = load i8, ptr %21, align 1, !noundef !45
  %23 = icmp ult i8 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i64 %16, ptr %12, align 8
  store i64 %13, ptr %11, align 8
  br label %25

25:                                               ; preds = %24, %18
  %exitcond272.not.1 = icmp eq i64 %i.cs, %.sroa.0.1
  br i1 %exitcond272.not.1, label %.loopexit.1, label %bb.aa

.loopexit.1:                                      ; preds = %25
  %cond531 = icmp eq i64 %.sroa.0.1, 4
  br i1 %cond531, label %.lr.ph173.2, label %.loopexit.3

.lr.ph173.2:                                      ; preds = %.loopexit.1
  %26 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %39, %.lr.ph173.2
  %.sroa.0107.0172.2 = phi i64 [ 3, %.lr.ph173.2 ], [ %27, %39 ] ; 2 uses
  %27 = add i64 %.sroa.0107.0172.2, 1             ; 2 uses
  %28 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.0107.0172.2 ; 2 uses
  %29 = load i64, ptr %28, align 8, !noundef !45  ; 4 uses
  %i.ct = icmp ult i64 %29, %5
  br i1 %i.ct, label %30, label %.loopexit486

30:                                               ; preds = %bb.ab
  %31 = load i64, ptr %26, align 8, !noundef !45  ; 4 uses
  %32 = icmp ult i64 %31, %5
  br i1 %32, label %33, label %.loopexit487

33:                                               ; preds = %30
  %34 = getelementptr inbounds nuw i8, ptr %4, i64 %29
  %35 = load i8, ptr %34, align 1, !noundef !45
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 %31
  %37 = load i8, ptr %36, align 1, !noundef !45
  %38 = icmp ult i8 %35, %37
  br i1 %38, label %bb.ac, label %39

bb.ac:                                            ; preds = %33
  store i64 %31, ptr %28, align 8
  store i64 %29, ptr %26, align 8
  br label %39

39:                                               ; preds = %bb.ac, %33
  %exitcond272.not.2 = icmp eq i64 %27, %.sroa.0.1
  br i1 %exitcond272.not.2, label %.loopexit.3, label %bb.ab

.loopexit.3:                                      ; preds = %39, %.loopexit.1, %.preheader.1
  %i.cu = trunc i64 %3 to i8                      ; 5 uses
  %i.cv = load i64, ptr %i.a, align 8, !noundef !45 ; 4 uses
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.cu, i64 noundef %i.cv, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !noundef !45
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.cu, i64 noundef %i.cx, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  switch i64 %.sroa.0.1, label %bb.ae [
    i64 2, label %.loopexit41
    i64 3, label %bb.ad
  ]

bb.ad:                                            ; preds = %.loopexit.3
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !noundef !45
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.cu, i64 noundef %i.cz, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  br label %.loopexit41

bb.ae:                                            ; preds = %.loopexit.3
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.db = load i64, ptr %i.da, align 8, !noundef !45
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.cu, i64 noundef %i.db, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.dd = load i64, ptr %i.dc, align 8, !noundef !45
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.cu, i64 noundef %i.dd, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  %i.de = icmp ult i64 %i.cv, %5
  br i1 %i.de, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 %i.cv
  %i.dg = load i8, ptr %i.df, align 1, !noundef !45
  %i.dh = icmp eq i8 %i.dg, 1
  %. = zext i1 %i.dh to i64
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 1, i64 noundef %., ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  br label %.loopexit41

bb.ag:                                            ; preds = %bb.ae
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.cv, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1647) #43
  unreachable

.loopexit41:                                      ; preds = %.loopexit40, %bb.af, %bb.ad, %.loopexit.3, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.ah:                                            ; preds = %.preheader.a, %bb.ak
  %.sroa.0107.0172 = phi i64 [ 1, %.preheader.a ], [ %i.di, %bb.ak ] ; 2 uses
  %i.di = add i64 %.sroa.0107.0172, 1             ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.0107.0172 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !noundef !45 ; 4 uses
  %i.dl = icmp ult i64 %i.dk, %5
  br i1 %i.dl, label %bb.ai, label %.loopexit486

bb.ai:                                            ; preds = %bb.ah
  %i.dm = load i64, ptr %i.a, align 8, !noundef !45 ; 4 uses
  %i.dn = icmp ult i64 %i.dm, %5
  br i1 %i.dn, label %bb.aj, label %.loopexit487

.loopexit486:                                     ; preds = %bb.ab, %bb.aa, %bb.ah
  %.lcssa = phi i64 [ %13, %bb.aa ], [ %i.dk, %bb.ah ], [ %29, %bb.ab ]
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.lcssa, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1648) #43
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 %i.dk
  %i.dp = load i8, ptr %i.do, align 1, !noundef !45
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 %i.dm
  %i.dr = load i8, ptr %i.dq, align 1, !noundef !45
  %i.ds = icmp ult i8 %i.dp, %i.dr
  br i1 %i.ds, label %bb.al, label %bb.ak

.loopexit487:                                     ; preds = %30, %15, %bb.ai
  %.lcssa461 = phi i64 [ %16, %15 ], [ %i.dm, %bb.ai ], [ %31, %30 ]
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.lcssa461, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1649) #43
  unreachable

bb.ak:                                            ; preds = %bb.aj, %bb.al
  %exitcond272.not = icmp eq i64 %i.di, %.sroa.0.1
  br i1 %exitcond272.not, label %.preheader.1, label %bb.ah

bb.al:                                            ; preds = %bb.aj
  store i64 %i.dm, ptr %i.dj, align 8
  store i64 %i.dk, ptr %i.a, align 8
  br label %bb.ak

.lr.ph157:                                        ; preds = %.lr.ph157.preheader, %bb.at
  %.sroa.027.1154 = phi i32 [ %i.ez, %bb.at ], [ %i.av, %.lr.ph157.preheader ] ; 5 uses
  %.sroa.048.0153 = phi i32 [ %.sroa.048.2, %bb.at ], [ 0, %.lr.ph157.preheader ] ; 3 uses
  %.sroa.054.0152 = phi i32 [ %.sroa.054.2, %bb.at ], [ %i.o, %.lr.ph157.preheader ] ; 3 uses
  %i.dt = sext i32 %.sroa.048.0153 to i64         ; 3 uses
  %.not31 = icmp ult i64 %i.g, %i.dt
  br i1 %.not31, label %.invoke, label %bb.am

bb.am:                                            ; preds = %.lr.ph157
  %i.du = sext i32 %.sroa.054.0152 to i64         ; 3 uses
  %.not32 = icmp ult i64 %i.g, %i.du
  br i1 %.not32, label %.invoke, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.dt
  %i.dw = load i32, ptr %i.dv, align 4, !noundef !45
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.du
  %i.dy = load i32, ptr %i.dx, align 4, !noundef !45
  %.not175 = icmp ugt i32 %i.dw, %i.dy            ; 3 uses
  %.sroa.075.0 = select i1 %.not175, i32 %.sroa.054.0152, i32 %.sroa.048.0153 ; 2 uses
  %i.dz = zext i1 %.not175 to i32
  %.sroa.054.1 = add i32 %.sroa.054.0152, %i.dz   ; 3 uses
  %not..not175 = xor i1 %.not175, true
  %i.ea = zext i1 %not..not175 to i32
  %.sroa.048.1 = add i32 %.sroa.048.0153, %i.ea   ; 3 uses
  %i.eb = sext i32 %.sroa.048.1 to i64            ; 3 uses
  %.not33 = icmp ult i64 %i.g, %i.eb
  br i1 %.not33, label %.invoke, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ec = sext i32 %.sroa.054.1 to i64            ; 3 uses
  %.not34 = icmp ult i64 %i.g, %i.ec
  br i1 %.not34, label %.invoke, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.eb
  %i.ee = load i32, ptr %i.ed, align 4, !noundef !45
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ec
  %i.eg = load i32, ptr %i.ef, align 4, !noundef !45
  %.not176 = icmp ugt i32 %i.ee, %i.eg            ; 3 uses
  %.sroa.077.0 = select i1 %.not176, i32 %.sroa.054.1, i32 %.sroa.048.1 ; 2 uses
  %i.eh = zext i1 %.not176 to i32
  %.sroa.054.2 = add i32 %.sroa.054.1, %i.eh
  %not..not176 = xor i1 %.not176, true
  %i.ei = zext i1 %not..not176 to i32
  %.sroa.048.2 = add i32 %.sroa.048.1, %i.ei
  %i.ej = sext i32 %.sroa.075.0 to i64            ; 3 uses
  %.not35 = icmp ult i64 %i.g, %i.ej
  br i1 %.not35, label %.invoke, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ek = sext i32 %.sroa.077.0 to i64            ; 3 uses
  %.not36 = icmp ult i64 %i.g, %i.ek
  br i1 %.not36, label %.invoke, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.el = add i32 %.sroa.027.1154, -1             ; 2 uses
  %i.em = zext i32 %i.el to i64                   ; 2 uses
  %.not37 = icmp ugt i32 %i.el, %i.m
  br i1 %.not37, label %.invoke, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ej
  %i.eo = load i32, ptr %i.en, align 4, !noundef !45
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ek
  %i.eq = load i32, ptr %i.ep, align 4, !noundef !45
  %i.er = add i32 %i.eq, %i.eo
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.em ; 3 uses
  store i32 %i.er, ptr %i.es, align 4
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.eu = trunc i32 %.sroa.075.0 to i16
  store i16 %i.eu, ptr %i.et, align 4
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 6
  %i.ew = trunc i32 %.sroa.077.0 to i16
  store i16 %i.ew, ptr %i.ev, align 2
  %i.ex = zext i32 %.sroa.027.1154 to i64         ; 2 uses
  %.not38 = icmp ugt i32 %.sroa.027.1154, %i.m
  br i1 %.not38, label %.invoke, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ex
  %i.ez = add nuw nsw i32 %.sroa.027.1154, 1
  %exitcond270.not = icmp eq i32 %.sroa.027.1154, %i.aw
  store i64 -1, ptr %i.ey, align 4
  br i1 %exitcond270.not, label %._crit_edge158, label %.lr.ph157

bb.au:                                            ; preds = %.lr.ph148
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n
  %i.fb = load i32, ptr %i.fa, align 4, !noundef !45 ; 3 uses
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au, %bb.ax
  %.sroa.027.2 = phi i32 [ %.sroa.027.0146, %bb.au ], [ %i.fh, %bb.ax ] ; 11 uses
  %i.fd = icmp eq i64 %i.n, 0
  br i1 %i.fd, label %._crit_edge149, label %.lr.ph148

bb.aw:                                            ; preds = %bb.au
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.fe = zext i32 %.sroa.027.0146 to i64         ; 3 uses
  %.not25 = icmp samesign ult i64 %i.g, %i.fe
  br i1 %.not25, label %.invoke.loopexit473.split.loop.exit526, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.sroa.024.0. = tail call i32 @llvm.umax.i32(i32 %i.fb, i32 %.sroa.024.0)
  %i.ff = trunc nuw nsw i64 %i.n to i16
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.fe ; 3 uses
  store i32 %.sroa.024.0., ptr %i.fg, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  store i16 -1, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fg, i64 6
  store i16 %i.ff, ptr %.sroa.5.0..sroa_idx, align 2
  %i.fh = add i32 %.sroa.027.0146, 1
  br label %bb.av

.loopexit44:                                      ; preds = %._crit_edge158
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ay:                                            ; preds = %.loopexit.split-lp, %.loopexit44
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit44 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  tail call void @mi_free(ptr noundef nonnull %i.j) #38
  resume { ptr, i32 } %lpad.phi

bb.az:                                            ; preds = %._crit_edge.thread
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 %i.e
  store i8 0, ptr %i.fi, align 1
  %i.fj = icmp ult i64 %i.e, %7
  br i1 %i.fj, label %bb.bb, label %bb.bc

bb.ba:                                            ; preds = %._crit_edge.thread
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.e, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1662) #43
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.e
  store i16 0, ptr %i.fk, align 2
  br label %.loopexit41

bb.bc:                                            ; preds = %bb.az
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.e, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1663) #43
  unreachable

.lr.ph.preheader:                                 ; preds = %bb.a, %.lr.ph
  %.sroa.020.0136458 = phi i64 [ %.sroa.020.1, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.sroa.010.0137457 = phi i64 [ %i.fp, %.lr.ph ], [ 0, %bb.a ] ; 8 uses
  %.sroa.0.0138456 = phi i64 [ %.sroa.0.1, %.lr.ph ], [ 0, %bb.a ] ; 4 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.010.0137457
  %i.fm = load i32, ptr %i.fl, align 4, !noundef !45 ; 2 uses
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %bb.bf, label %bb.be

bb.bd:                                            ; preds = %.lr.ph
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1664) #43
  unreachable

bb.be:                                            ; preds = %.lr.ph.preheader
  %i.fo = icmp ult i64 %.sroa.0.0138456, 4
  br i1 %i.fo, label %bb.bg, label %bb.bh

bb.bf:                                            ; preds = %.lr.ph.preheader, %bb.bh
  %.sroa.020.1 = phi i64 [ %.sroa.020.0136458, %.lr.ph.preheader ], [ %i.fu, %bb.bh ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.0138456, %.lr.ph.preheader ], [ %i.fs, %bb.bh ] ; 10 uses
  %i.fp = add nuw nsw i64 %.sroa.010.0137457, 1   ; 8 uses
  %i.fq = icmp eq i64 %.sroa.020.1, 0
  br i1 %i.fq, label %._crit_edge, label %.lr.ph

bb.bg:                                            ; preds = %bb.be
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.0.0138456
  store i64 %.sroa.010.0137457, ptr %i.fr, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.be
  %i.fs = add i64 %.sroa.0.0138456, 1
  %i.ft = zext i32 %i.fm to i64
  %i.fu = sub i64 %.sroa.020.0136458, %i.ft
  br label %bb.bf
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6brotli3enc17compress_fragment22compress_fragment_fast17h6c0d553cad315c42E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr noalias nofree noundef nonnull align 4 captures(none) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 1 %7, ptr noalias noundef nonnull align 2 %8, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull align 1 %10, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %11, align 8, !noundef !45 ; 2 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %6, i1 false)
  %switch.tableidx = add nsw i64 %i.c, -48        ; 3 uses
  %i.d = icmp ult i64 %switch.tableidx, 7
  %switch.maskindex = trunc i64 %switch.tableidx to i8
  %switch.shifted = lshr i8 85, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.d, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.d

.sink.split:                                      ; preds = %bb.a, %bb.f
  tail call void @_ZN6brotli3enc26compress_fragment_two_pass15BrotliWriteBits17he01f177c2434efb8E(i64 noundef 1, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  tail call void @_ZN6brotli3enc26compress_fragment_two_pass15BrotliWriteBits17he01f177c2434efb8E(i64 noundef 1, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  %i.e = load i64, ptr %11, align 8, !noundef !45
  %i.f = add i64 %i.e, 7
  %i.g = and i64 %i.f, 4294967288
  store i64 %i.g, ptr %11, align 8
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.f
  ret void

switch.lookup:                                    ; preds = %bb.b
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN6brotli3enc17compress_fragment22compress_fragment_fast17h6c0d553cad315c42E, i64 %switch.tableidx
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  tail call fastcc void @_ZN6brotli3enc17compress_fragment27compress_fragment_fast_impl17hd0d02f7715f5873dE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr noalias noundef nonnull align 4 %4, i64 noundef %5, i64 noundef %switch.ext, ptr noalias noundef nonnull align 1 %7, ptr noalias noundef nonnull align 2 %8, ptr noalias noundef align 8 dereferenceable(8) %9, ptr noalias noundef nonnull align 1 %10, ptr noalias noundef align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %switch.lookup
  %i.h = load i64, ptr %11, align 8, !noundef !45
  %i.i = sub i64 %i.h, %i.a
  %i.j = shl i64 %2, 3
  %i.k = add i64 %i.j, 31
  %i.l = icmp ugt i64 %i.i, %i.k
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN6brotli3enc17compress_fragment25EmitUncompressedMetaBlock17hf552acd2bee8cbffE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %2, i64 noundef %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  br i1 %3, label %.sink.split, label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6brotli3enc17compress_fragment27compress_fragment_fast_impl17hd0d02f7715f5873dE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef range(i64 1, 0) %2, i1 noundef zeroext %3, ptr noalias nofree noundef nonnull align 4 captures(none) %4, i64 noundef %5, i64 noundef range(i64 9, 16) %6, ptr noalias noundef nonnull align 1 %7, ptr noalias noundef nonnull align 2 %8, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull align 1 %10, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [512 x i8], align 2               ; 8 uses
  %i.d = alloca [256 x i8], align 1               ; 9 uses
  %i.e = alloca [512 x i8], align 4               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %i.e, i8 0, i64 512, i1 false)
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 98304) ; 3 uses
  %i.f = load i64, ptr %11, align 8, !noundef !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.d, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(512) %i.c, i8 0, i64 512, i1 false)
  %i.g = sub nuw nsw i64 64, %6                   ; 11 uses
  tail call void @_ZN6brotli3enc26compress_fragment_two_pass23store_meta_block_header17he3ba7a5e15937e36E(i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  tail call void @_ZN6brotli3enc26compress_fragment_two_pass15BrotliWriteBits17he01f177c2434efb8E(i64 noundef 13, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  %i.h = call fastcc noundef i64 @_ZN6brotli3enc17compress_fragment30BuildAndStoreLiteralPrefixCode17h8fa20e6563afe892E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %.sroa.0.0.i, ptr noalias noundef nonnull align 1 %i.d, ptr noalias noundef nonnull align 2 %i.c, ptr noalias noundef align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  %i.i = load i64, ptr %9, align 8, !noundef !45  ; 5 uses
  %i.j = icmp ugt i64 %i.i, 7
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge.thread

._crit_edge:                                      ; preds = %.lr.ph.preheader
  %i.k = lshr i64 %i.i, 3                         ; 2 uses
  %i.l = icmp samesign ult i64 %i.i, 4096
  br i1 %i.l, label %._crit_edge.thread, label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader
  %i.m = icmp samesign ult i64 %.sroa.065.0522419, 4088
  br i1 %i.m, label %.lr.ph.preheader, label %bb.cu

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %i.n = phi i64 [ %i.k, %._crit_edge ], [ 0, %bb.a ]
  %i.o = and i64 %i.i, 7
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 %i.n
  %i.q = load i8, ptr %i.p, align 1, !noundef !45
  %i.r = zext i8 %i.q to i64
  call void @_ZN6brotli3enc26compress_fragment_two_pass15BrotliWriteBits17he01f177c2434efb8E(i64 noundef %i.o, i64 noundef %i.r, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 256 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %bb.cs, %._crit_edge.thread
  %.sroa.0.01119.ph = phi i64 [ %.sroa.0.2.jt2, %bb.cs ], [ %2, %._crit_edge.thread ]
  %.sroa.016.01114.ph = phi i64 [ %.sroa.016.6.jt2, %bb.cs ], [ 0, %._crit_edge.thread ]
  %.sroa.044.01108.ph = phi i64 [ %.sroa.0.0.i212, %bb.cs ], [ %.sroa.0.0.i, %._crit_edge.thread ] ; 2 uses
  %.sroa.047.01106.ph.in = phi i64 [ %i.jd, %bb.cs ], [ %i.f, %._crit_edge.thread ] ; 3 uses
  %.sroa.050.01104.ph = phi i64 [ %i.jh, %bb.cs ], [ %i.h, %._crit_edge.thread ] ; 2 uses
  %.sroa.052.01101.ph = phi i64 [ %.sroa.052.2.jt2, %bb.cs ], [ 0, %._crit_edge.thread ] ; 9 uses
  %.sroa.047.01106.ph = add i64 %.sroa.047.01106.ph.in, 3
  %i.v = icmp ugt i64 %.sroa.050.01104.ph, 980
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.k, i64 noundef 512, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1666) #43
  unreachable

bb.c:                                             ; preds = %.outer, %bb.cd
  %.sroa.0.01119 = phi i64 [ %i.ie, %bb.cd ], [ %.sroa.0.01119.ph, %.outer ] ; 3 uses
  %.sroa.016.01114 = phi i64 [ %.sroa.016.6.jt0, %bb.cd ], [ %.sroa.016.01114.ph, %.outer ] ; 3 uses
  %.sroa.030.01110 = phi i64 [ %.sroa.0.0.i211, %bb.cd ], [ %.sroa.044.01108.ph, %.outer ] ; 5 uses
  %.sroa.044.01108 = phi i64 [ %i.if, %bb.cd ], [ %.sroa.044.01108.ph, %.outer ]
  %.sroa.052.01101 = phi i64 [ %i.id, %bb.cd ], [ %.sroa.052.01101.ph, %.outer ] ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %i.e, ptr noundef nonnull align 4 dereferenceable(512) @_ZN6brotli3enc17compress_fragment13kCmdHistoSeed17he90956d4a1e1dba6E, i64 512, i1 false), !alias.scope !36296, !noalias !36297
  %i.w = add i64 %.sroa.030.01110, %.sroa.052.01101 ; 8 uses
  %i.x = icmp samesign ugt i64 %.sroa.030.01110, 15
  br i1 %i.x, label %bb.d, label %.thread22.loopexit

bb.d:                                             ; preds = %bb.c
  %i.y = add nsw i64 %.sroa.030.01110, -5
  %i.z = add i64 %.sroa.0.01119, -16
  %.sroa.0.0.i210 = call noundef i64 @llvm.umin.i64(i64 %i.z, i64 %i.y)
  %i.aa = add i64 %.sroa.0.0.i210, %.sroa.052.01101 ; 5 uses
  %i.ab = add i64 %.sroa.052.01101, 1             ; 5 uses
  %i.ac = icmp ugt i64 %i.ab, %1
  br i1 %i.ac, label %bb.f, label %bb.e, !prof !47

bb.e:                                             ; preds = %bb.d
  %i.ad = sub nuw i64 %1, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  %i.af = call noundef i32 @_ZN6brotli3enc17compress_fragment4Hash17h93c93efbd25e78c7E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ae, i64 noundef %i.ad, i64 noundef %i.g)
  %i.ag = add i64 %.sroa.052.01101, 2             ; 2 uses
  %i.ah = icmp ugt i64 %i.ag, %i.aa
  br i1 %i.ah, label %.thread22.loopexit, label %.lr.ph526.lr.ph

.lr.ph526.lr.ph:                                  ; preds = %bb.e
  %i.ai = add i64 %i.w, -5                        ; 2 uses
  br label %.lr.ph526

bb.f:                                             ; preds = %bb.d
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.ab, i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1694) #43
  unreachable

.lr.ph526:                                        ; preds = %.lr.ph526.lr.ph, %bb.bw
  %i.aj = phi i64 [ %i.ag, %.lr.ph526.lr.ph ], [ %i.ib, %bb.bw ]
  %.sroa.016.2543 = phi i64 [ %.sroa.016.01114, %.lr.ph526.lr.ph ], [ %.sroa.016.4532, %bb.bw ] ; 7 uses
  %.sroa.062.0542 = phi i32 [ -1, %.lr.ph526.lr.ph ], [ %.sroa.062.2531, %bb.bw ] ; 3 uses
  %.sroa.075.0541 = phi i64 [ %i.ab, %.lr.ph526.lr.ph ], [ %i.hw, %bb.bw ]
  %.sroa.0114.0540 = phi i32 [ %i.af, %.lr.ph526.lr.ph ], [ %i.ia, %bb.bw ]
  %i.ak = sext i32 %.sroa.062.0542 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph526, %.backedge
  %i.al = phi i64 [ %i.aj, %.lr.ph526 ], [ %i.bn, %.backedge ] ; 6 uses
  %i.am = phi i32 [ 33, %.lr.ph526 ], [ %i.bl, %.backedge ] ; 2 uses
  %.sroa.0114.1524 = phi i32 [ %.sroa.0114.0540, %.lr.ph526 ], [ %i.aq, %.backedge ]
  %.sroa.0117.0523 = phi i64 [ %.sroa.075.0541, %.lr.ph526 ], [ %i.al, %.backedge ] ; 17 uses
  %i.an = icmp ugt i64 %i.al, %1
  br i1 %i.an, label %bb.i, label %bb.h, !prof !47

bb.h:                                             ; preds = %bb.g
  %i.ao = sub nuw i64 %1, %i.al
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.al
  %i.aq = call noundef i32 @_ZN6brotli3enc17compress_fragment4Hash17h93c93efbd25e78c7E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ap, i64 noundef %i.ao, i64 noundef %i.g)
  %i.ar = sub i64 %.sroa.0117.0523, %i.ak         ; 6 uses
  %i.as = icmp ugt i64 %.sroa.0117.0523, %1
  br i1 %i.as, label %bb.k, label %bb.j, !prof !47

bb.i:                                             ; preds = %bb.g
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.al, i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1672) #43
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.at = sub nuw i64 %1, %.sroa.0117.0523        ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0117.0523 ; 2 uses
  %i.av = icmp ugt i64 %i.ar, %1
  br i1 %i.av, label %bb.m, label %bb.l, !prof !47

bb.k:                                             ; preds = %bb.h
end_hunk_0
