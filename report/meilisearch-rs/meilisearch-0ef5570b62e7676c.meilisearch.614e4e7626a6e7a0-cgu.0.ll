inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 148
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 290
begin_hunk_0_@"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$12store_symbol17h640489a63fbb42b3E":bb.a
  unreachable

bb.g:                                             ; preds = %bb.a, %bb.e
  %i.aa = phi i64 [ %i.b, %bb.a ], [ %.pre, %bb.e ]
  %i.ab = add i64 %i.aa, -1
  store i64 %i.ab, ptr %i.a, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !27
  %i.ae = add i64 %i.ad, %1                       ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val7 = load i64, ptr %i.af, align 8, !noundef !27 ; 2 uses
  %i.ag = icmp ult i64 %i.ae, %.val7
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val9 = load i64, ptr %i.ah, align 8, !noundef !27 ; 2 uses
  %i.ai = icmp ult i64 %i.ae, %.val9
  br i1 %i.ai, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.g
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ae, i64 noundef %.val7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1634) #43
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val8 = load ptr, ptr %i.aj, align 8, !nonnull !27, !align !602, !noundef !27
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.ak, align 8, !nonnull !27, !align !206, !noundef !27
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ae
  %i.am = load i8, ptr %i.al, align 1, !noundef !27
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.val8, i64 %i.ae
  %i.ao = load i16, ptr %i.an, align 2, !noundef !27
  %i.ap = zext i16 %i.ao to i64
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.am, i64 noundef %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, ptr noalias noundef nonnull align 1 %3, i64 noundef %4)
  ret void

bb.k:                                             ; preds = %bb.h
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ae, i64 noundef %.val9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1635) #43
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
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !27, !align !206, !noundef !27 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !27 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !27, !align !206, !noundef !27 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.j = load i64, ptr %i.i, align 8, !noundef !27 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_ZN6brotli3enc17brotli_bit_stream38BrotliStoreUncompressedMetaBlockHeader17hc8eba3681d24f8e1E(i64 noundef %7, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull align 1 %10, i64 noundef %11)
  call void @_ZN6brotli3enc17brotli_bit_stream18JumpToByteBoundary17hd530db3bb0615915E(ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull align 1 %10, i64 noundef %11)
  %i.k = load i64, ptr %9, align 8, !noundef !27  ; 2 uses
  %i.l = lshr i64 %i.k, 3                         ; 4 uses
  %i.m = add i64 %i.l, %i.f                       ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %.not22 = icmp ugt i64 %i.m, %11
  %or.cond = or i1 %i.n, %.not22
  br i1 %or.cond, label %bb.b, label %bb.c, !prof !2480

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.l, i64 noundef %i.m, i64 noundef %11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1646) #43
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull readonly align 1 %i.d, i64 %i.f, i1 false), !alias.scope !36295, !noalias !36299
  %i.p = shl i64 %i.f, 3
  %i.q = add i64 %i.k, %i.p                       ; 3 uses
  store i64 %i.q, ptr %9, align 8
  %i.r = lshr i64 %i.q, 3                         ; 4 uses
  %i.s = add i64 %i.r, %i.j                       ; 3 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %.not23 = icmp ugt i64 %i.s, %11
  %or.cond24 = or i1 %i.t, %.not23
  br i1 %or.cond24, label %bb.d, label %bb.e, !prof !2480

bb.d:                                             ; preds = %bb.c
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.r, i64 noundef %i.s, i64 noundef %11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1645) #43
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull readonly align 1 %i.h, i64 %i.j, i1 false), !alias.scope !36301, !noalias !36305
  %i.v = shl i64 %i.j, 3
  %i.w = add i64 %i.q, %i.v                       ; 2 uses
  store i64 %i.w, ptr %9, align 8
  call void @_ZN6brotli3enc17brotli_bit_stream29BrotliWriteBitsPrepareStorage17h3e3bbade587d8cacE(i64 noundef %i.w, ptr noalias noundef nonnull align 1 %10, i64 noundef %11)
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 97
  %i.y = load i8, ptr %i.x, align 1, !range !188, !noundef !27
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
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %._crit_edge.thread, label %.lr.ph.preheader

._crit_edge:                                      ; preds = %bb.bi
  %i.c = icmp ult i64 %.sroa.0.1, 2
  br i1 %i.c, label %._crit_edge.thread, label %bb.b

.lr.ph:                                           ; preds = %bb.bi
  %exitcond.not = icmp eq i64 %i.fp, %1
  br i1 %exitcond.not, label %bb.bg, label %.lr.ph.preheader

bb.b:                                             ; preds = %._crit_edge
  %.not.not = icmp samesign ult i64 %.sroa.010.0137463, %5
  br i1 %.not.not, label %._crit_edge144, label %bb.c, !prof !202

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 4, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  %i.d = trunc i64 %3 to i8
  %i.e = load i64, ptr %i.a, align 8, !noundef !27 ; 7 uses
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.d, i64 noundef %i.e, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  %i.f = icmp ult i64 %i.e, %5
  br i1 %i.f, label %bb.bc, label %bb.bd

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.fp, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1667) #43
  unreachable

._crit_edge144:                                   ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %4, i8 0, i64 %i.fp, i1 false)
  %i.g = shl nuw nsw i64 %i.fp, 1                 ; 14 uses
  %i.h = or disjoint i64 %i.g, 1                  ; 21 uses
  %i.i = shl nuw nsw i64 %i.h, 3                  ; 3 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !36307
  %i.j = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.i, i64 noundef range(i64 1, 9) 4) #38, !noalias !36307 ; 28 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %_ZN6brotli3enc14combined_alloc8alloc_if17hd23791371a41120eE.exit

bb.d:                                             ; preds = %._crit_edge144
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !36314
  unreachable

_ZN6brotli3enc14combined_alloc8alloc_if17hd23791371a41120eE.exit: ; preds = %._crit_edge144
  %i.l = add nsw i64 %i.i, -8                     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.j, i8 0, i64 %i.l, i1 false), !noalias !36315
  %scevgep.i.i = getelementptr i8, ptr %i.j, i64 %i.l
  store i64 0, ptr %scevgep.i.i, align 4, !noalias !36315
  %.first_iter = icmp samesign ult i64 %.sroa.010.0137463, %1
  %i.m = trunc nuw nsw i64 %i.g to i32            ; 2 uses
  br label %.lr.ph148.preheader

.lr.ph148.preheader:                              ; preds = %_ZN6brotli3enc14combined_alloc8alloc_if17hd23791371a41120eE.exit, %bb.p
  %.sroa.024.0 = phi i32 [ 1, %_ZN6brotli3enc14combined_alloc8alloc_if17hd23791371a41120eE.exit ], [ %i.ay, %bb.p ] ; 3 uses
  br label %.lr.ph148

.lr.ph148:                                        ; preds = %.lr.ph148.preheader, %bb.ay
  %.sroa.027.0146 = phi i32 [ %.sroa.027.2, %bb.ay ], [ 0, %.lr.ph148.preheader ] ; 3 uses
  %.sroa.037.0145 = phi i64 [ %i.n, %bb.ay ], [ %i.fp, %.lr.ph148.preheader ]
  %i.n = add nsw i64 %.sroa.037.0145, -1          ; 5 uses
  br i1 %.first_iter, label %bb.ax, label %.invoke

._crit_edge149:                                   ; preds = %bb.ay
  %i.o = add i32 %.sroa.027.2, 1                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.p = sext i32 %.sroa.027.2 to i64             ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36318)
  %i.q = icmp ult i32 %.sroa.027.2, 13
  br i1 %i.q, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %._crit_edge149
  %i.r = icmp samesign ugt i32 %.sroa.027.2, 1
  br i1 %i.r, label %.lr.ph66.i, label %.loopexit42

bb.e:                                             ; preds = %._crit_edge149
  %i.s = icmp ult i32 %.sroa.027.2, 57
  %i.t = select i1 %i.s, i64 2, i64 0
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge63.i, %bb.e
  %indvars.iv.i = phi i64 [ %i.t, %bb.e ], [ %indvars.iv.next.i, %._crit_edge63.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @_ZN6brotli3enc14entropy_encode20SortHuffmanTreeItems4gaps17ha345c21f8c53bdffE, i64 %indvars.iv.i
  %i.v = load i64, ptr %i.u, align 8, !noalias !36318, !noundef !27 ; 5 uses
  %i.w = icmp ult i64 %i.v, %i.p
  br i1 %i.w, label %.lr.ph62.preheader.i, label %._crit_edge63.i

.lr.ph62.preheader.i:                             ; preds = %bb.f
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 %i.h) ; 2 uses
  br label %.lr.ph62.i

._crit_edge63.i:                                  ; preds = %bb.h, %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond88.not.i = icmp eq i64 %indvars.iv.next.i, 6
  br i1 %exitcond88.not.i, label %.loopexit42, label %bb.f

.lr.ph62.i:                                       ; preds = %bb.h, %.lr.ph62.preheader.i
  %.sroa.025.060.i = phi i64 [ %i.x, %bb.h ], [ %i.v, %.lr.ph62.preheader.i ] ; 4 uses
  %i.x = add i64 %.sroa.025.060.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.025.060.i, %umax.i
  br i1 %exitcond.not.i, label %.invoke, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph62.i
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.025.060.i
  %i.z = load i64, ptr %i.y, align 4, !alias.scope !36318 ; 2 uses
  %.sroa.038.0.extract.trunc.i = trunc i64 %i.z to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.i
  %.sroa.015.057.i = phi i64 [ %i.aa, %bb.i ], [ %.sroa.025.060.i, %.lr.ph.i.preheader ] ; 3 uses
  %i.aa = sub nuw i64 %.sroa.015.057.i, %i.v      ; 6 uses
  %.not26 = icmp ugt i64 %i.aa, %i.g
  br i1 %.not26, label %.invoke, label %bb.g

._crit_edge.i.loopexit:                           ; preds = %bb.g, %bb.i
  %.sroa.015.0.lcssa.i.ph = phi i64 [ %i.aa, %bb.i ], [ %.sroa.015.057.i, %bb.g ] ; 3 uses
  %.not27 = icmp ugt i64 %.sroa.015.0.lcssa.i.ph, %i.g
  br i1 %.not27, label %.invoke, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.aa ; 2 uses
  %.val35.i = load i32, ptr %i.ab, align 4, !alias.scope !36318, !noundef !27
  %i.ac = icmp ugt i32 %.val35.i, %.sroa.038.0.extract.trunc.i
  br i1 %i.ac, label %bb.i, label %._crit_edge.i.loopexit

bb.h:                                             ; preds = %._crit_edge.i.loopexit
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.015.0.lcssa.i.ph
  store i64 %i.z, ptr %i.ad, align 4, !alias.scope !36318
  %exitcond86.not.i = icmp eq i64 %i.x, %i.p
  br i1 %exitcond86.not.i, label %._crit_edge63.i, label %.lr.ph62.i

bb.i:                                             ; preds = %bb.g
  %.sroa.021.0.copyload.i = load i64, ptr %i.ab, align 4, !alias.scope !36318
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.015.057.i
  store i64 %.sroa.021.0.copyload.i, ptr %i.ae, align 4, !alias.scope !36318
  %.not.i = icmp ult i64 %i.aa, %i.v
  br i1 %.not.i, label %._crit_edge.i.loopexit, label %.lr.ph.i

.lr.ph66.i:                                       ; preds = %.preheader.i, %.thread
  %.sroa.023.065.i = phi i64 [ %i.af, %.thread ], [ 1, %.preheader.i ] ; 4 uses
  %i.af = add nuw nsw i64 %.sroa.023.065.i, 1     ; 2 uses
  %exitcond90.not.i = icmp eq i64 %.sroa.023.065.i, %i.h
  br i1 %exitcond90.not.i, label %.invoke, label %bb.j

bb.j:                                             ; preds = %.lr.ph66.i
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.023.065.i
  %i.ah = load i64, ptr %i.ag, align 4, !alias.scope !36318 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.ah to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j
  %.sroa.01.0.i = phi i64 [ %.sroa.023.065.i, %bb.j ], [ %.sroa.03.0.i, %bb.m ] ; 5 uses
  %.sroa.03.0.i = add nsw i64 %.sroa.01.0.i, -1   ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.03.0.i ; 2 uses
  %.val37.i = load i32, ptr %i.ai, align 4, !alias.scope !36318, !noundef !27
  %i.aj = icmp ugt i32 %.val37.i, %.sroa.0.0.extract.trunc.i
  br i1 %i.aj, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not28 = icmp ugt i64 %.sroa.01.0.i, %i.g
  br i1 %.not28, label %.invoke, label %.thread

bb.m:                                             ; preds = %bb.k
  %.sroa.08.0.copyload.i = load i64, ptr %i.ai, align 4, !alias.scope !36318
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.01.0.i
  store i64 %.sroa.08.0.copyload.i, ptr %i.ak, align 4, !alias.scope !36318
  %i.al = icmp eq i64 %.sroa.03.0.i, 0
  br i1 %i.al, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.m, %bb.l
  %.sroa.01.1.i20 = phi i64 [ %.sroa.01.0.i, %bb.l ], [ 0, %bb.m ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.01.1.i20
  store i64 %i.ah, ptr %i.am, align 4, !alias.scope !36318
  %exitcond91.not.i = icmp eq i64 %i.af, %i.p
  br i1 %exitcond91.not.i, label %.loopexit42, label %.lr.ph66.i

.invoke.loopexit481.split.loop.exit509:           ; preds = %bb.az
  %.not173.le = icmp ult i32 %i.fb, %.sroa.024.0
  %.433.le = select i1 %.not173.le, ptr @1665, ptr @1666
  br label %.invoke

.invoke:                                          ; preds = %bb.n, %.loopexit42, %.invoke.loopexit481.split.loop.exit509, %.lr.ph148, %bb.l, %.lr.ph66.i, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %.lr.ph157, %._crit_edge.i.loopexit, %.lr.ph62.i, %.lr.ph.i
  %i.an = phi i64 [ %i.n, %.lr.ph148 ], [ %i.aa, %.lr.ph.i ], [ %.sroa.015.0.lcssa.i.ph, %._crit_edge.i.loopexit ], [ %12, %bb.av ], [ %i.h, %.lr.ph66.i ], [ %umax.i, %.lr.ph62.i ], [ %i.en, %bb.au ], [ %i.el, %bb.at ], [ %i.ek, %bb.as ], [ %i.ed, %bb.ar ], [ %i.ec, %bb.aq ], [ %i.dv, %bb.ap ], [ %i.du, %.lr.ph157 ], [ %.sroa.01.0.i, %bb.l ], [ %i.fe, %.invoke.loopexit481.split.loop.exit509 ], [ %i.aq, %.loopexit42 ], [ %i.as, %bb.n ]
  %i.ao = phi i64 [ %1, %.lr.ph148 ], [ %i.h, %.lr.ph.i ], [ %i.h, %._crit_edge.i.loopexit ], [ %i.h, %bb.av ], [ %i.h, %bb.l ], [ %i.h, %.lr.ph62.i ], [ %i.h, %.lr.ph157 ], [ %i.h, %bb.ap ], [ %i.h, %bb.aq ], [ %i.h, %bb.ar ], [ %i.h, %bb.as ], [ %i.h, %bb.at ], [ %i.h, %bb.au ], [ %i.h, %.lr.ph66.i ], [ %i.h, %.invoke.loopexit481.split.loop.exit509 ], [ %i.h, %.loopexit42 ], [ %i.h, %bb.n ]
  %i.ap = phi ptr [ @1664, %.lr.ph148 ], [ @1580, %.lr.ph.i ], [ @1581, %._crit_edge.i.loopexit ], [ @1663, %bb.av ], [ @1582, %.lr.ph66.i ], [ @1579, %.lr.ph62.i ], [ @1662, %bb.au ], [ @1661, %bb.at ], [ @1660, %bb.as ], [ @1659, %bb.ar ], [ @1658, %bb.aq ], [ @1657, %bb.ap ], [ @1656, %.lr.ph157 ], [ @1583, %bb.l ], [ %.433.le, %.invoke.loopexit481.split.loop.exit509 ], [ @1647, %.loopexit42 ], [ @1648, %bb.n ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.an, i64 noundef %i.ao, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap) #43
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.loopexit42:                                      ; preds = %._crit_edge63.i, %.thread, %.preheader.i
  %i.aq = zext i32 %i.o to i64                    ; 3 uses
  %.not29 = icmp samesign ult i64 %i.g, %i.aq
  br i1 %.not29, label %.invoke, label %bb.n

bb.n:                                             ; preds = %.loopexit42
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.aq
  %i.as = zext i32 %.sroa.027.2 to i64            ; 3 uses
  %.not30 = icmp samesign ult i64 %i.g, %i.as
  store i64 -1, ptr %i.ar, align 4
  br i1 %.not30, label %.invoke, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.as
  %.sroa.060.0151 = add i32 %.sroa.027.2, -1
  %i.au = icmp sgt i32 %.sroa.060.0151, 0
  store i64 -1, ptr %i.at, align 4
  br i1 %i.au, label %.lr.ph157.preheader, label %.._crit_edge158_crit_edge

.._crit_edge158_crit_edge:                        ; preds = %bb.o
  %.pre274 = shl i32 %.sroa.027.2, 1
  br label %._crit_edge158

.lr.ph157.preheader:                              ; preds = %bb.o
  %i.av = add nuw i32 %.sroa.027.2, 2
  %11 = shl i32 %.sroa.027.2, 1                   ; 2 uses
  br label %.lr.ph157

._crit_edge158:                                   ; preds = %bb.aw, %.._crit_edge158_crit_edge
  %.pre-phi275 = phi i32 [ %.pre274, %.._crit_edge158_crit_edge ], [ %11, %bb.aw ]
  %i.aw = add i32 %.pre-phi275, -1
  %i.ax = invoke noundef zeroext i1 @_ZN6brotli3enc14entropy_encode14BrotliSetDepth17h5f5ba8abc19b5273E(i32 noundef %i.aw, ptr noalias noundef nonnull align 4 %i.j, i64 noundef %i.h, ptr noalias noundef nonnull align 1 %4, i64 noundef %5, i32 noundef 14)
          to label %bb.p unwind label %.loopexit44

bb.p:                                             ; preds = %._crit_edge158
  %i.ay = shl i32 %.sroa.024.0, 1
  br i1 %i.ax, label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..entropy_encode..HuffmanTree$GT$$GT$17h66adf8cf8f2b9f83E.exit217", label %.lr.ph148.preheader

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..entropy_encode..HuffmanTree$GT$$GT$17h66adf8cf8f2b9f83E.exit217": ; preds = %bb.p
  tail call void @mi_free(ptr noundef nonnull align 4 %i.j) #38
  tail call void @_ZN6brotli3enc14entropy_encode31BrotliConvertBitDepthsToSymbols17hf5dace01f018846fE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %4, i64 noundef %5, i64 noundef %i.fp, ptr noalias noundef nonnull align 2 %6, i64 noundef %7)
  %i.az = icmp ult i64 %.sroa.0.1, 5
  br i1 %i.az, label %bb.q, label %.split.preheader

.split.preheader:                                 ; preds = %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..entropy_encode..HuffmanTree$GT$$GT$17h66adf8cf8f2b9f83E.exit217"
  tail call void @_ZN6brotli3enc17brotli_bit_stream25StoreStaticCodeLengthCode17hf918db1678579c13E(ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  br label %.split

bb.q:                                             ; preds = %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..entropy_encode..HuffmanTree$GT$$GT$17h66adf8cf8f2b9f83E.exit217"
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 2, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  %i.ba = add nsw i64 %.sroa.0.1, -1
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 2, i64 noundef %i.ba, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  br label %.preheader

.split:                                           ; preds = %.split.preheader, %.loopexit40
  %.sroa.085.0171 = phi i8 [ %.sroa.085.1, %.loopexit40 ], [ 8, %.split.preheader ] ; 2 uses
  %.sroa.086.0170 = phi i64 [ %.pre-phi331, %.loopexit40 ], [ 0, %.split.preheader ] ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.086.0170
  %i.bc = load i8, ptr %i.bb, align 1, !noundef !27 ; 11 uses
  %.sroa.0101.0159 = add nuw nsw i64 %.sroa.086.0170, 1 ; 3 uses
  %i.bd = icmp ult i64 %.sroa.086.0170, %.sroa.010.0137463
  br i1 %i.bd, label %.lr.ph162.preheader, label %._crit_edge163.thread

.lr.ph162.preheader:                              ; preds = %.split
  %i.be = sub nsw i64 %i.fp, %.sroa.086.0170
  br label %.lr.ph162

.lr.ph162:                                        ; preds = %.lr.ph162.preheader, %bb.r
  %.sroa.0101.0161 = phi i64 [ %.sroa.0101.0, %bb.r ], [ %.sroa.0101.0159, %.lr.ph162.preheader ] ; 3 uses
  %.sroa.090.0160 = phi i64 [ %i.bk, %bb.r ], [ 1, %.lr.ph162.preheader ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.0101.0161
  %i.bg = load i8, ptr %i.bf, align 1, !noundef !27
  %i.bh = icmp eq i8 %i.bg, %i.bc
  br i1 %i.bh, label %bb.r, label %._crit_edge163

._crit_edge163:                                   ; preds = %bb.r, %.lr.ph162
  %.sroa.090.0.lcssa.ph = phi i64 [ %i.be, %bb.r ], [ %.sroa.090.0160, %.lr.ph162 ] ; 5 uses
  %.pre = add i64 %.sroa.090.0.lcssa.ph, %.sroa.086.0170 ; 2 uses
  %i.bi = icmp eq i8 %i.bc, 0
  br i1 %i.bi, label %bb.s, label %bb.t

._crit_edge163.thread:                            ; preds = %.split
  %i.bj = icmp eq i8 %i.bc, 0
  br i1 %i.bj, label %.thread336, label %bb.t

bb.r:                                             ; preds = %.lr.ph162
  %i.bk = add nuw nsw i64 %.sroa.090.0160, 1
  %.sroa.0101.0 = add i64 %.sroa.0101.0161, 1
  %exitcond272.not = icmp eq i64 %.sroa.0101.0161, %.sroa.010.0137463
  br i1 %exitcond272.not, label %._crit_edge163, label %.lr.ph162

bb.s:                                             ; preds = %._crit_edge163
  %i.bl = icmp ult i64 %.sroa.090.0.lcssa.ph, 704
  br i1 %i.bl, label %.thread336, label %bb.u

bb.t:                                             ; preds = %._crit_edge163.thread, %._crit_edge163
  %.sroa.090.0.lcssa334 = phi i64 [ 1, %._crit_edge163.thread ], [ %.sroa.090.0.lcssa.ph, %._crit_edge163 ] ; 2 uses
  %.pre-phi332 = phi i64 [ %.sroa.0101.0159, %._crit_edge163.thread ], [ %.pre, %._crit_edge163 ] ; 3 uses
  %.not174 = icmp eq i8 %.sroa.085.0171, %i.bc
  br i1 %.not174, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.s
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.090.0.lcssa.ph, i64 noundef 704, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1649) #43
  unreachable

.thread336:                                       ; preds = %._crit_edge163.thread, %bb.s
  %.pre-phi333340 = phi i64 [ %.pre, %bb.s ], [ %.sroa.0101.0159, %._crit_edge163.thread ]
  %.sroa.090.0.lcssa335339 = phi i64 [ %.sroa.090.0.lcssa.ph, %bb.s ], [ 1, %._crit_edge163.thread ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc9constants14kZeroRepsDepth17h008abeb978242173E, i64 %.sroa.090.0.lcssa335339
  %i.bn = load i32, ptr %i.bm, align 4, !noundef !27
  %i.bo = trunc i32 %i.bn to i8
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr @_ZN6brotli3enc9constants13kZeroRepsBits17h8bfdc183adf0dea0E, i64 %.sroa.090.0.lcssa335339
  %i.bq = load i64, ptr %i.bp, align 8, !noundef !27
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.bo, i64 noundef %i.bq, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  br label %.loopexit40

.loopexit40:                                      ; preds = %.lr.ph168.split, %.preheader39, %bb.ab, %.thread336
  %.pre-phi331 = phi i64 [ %.pre-phi333340, %.thread336 ], [ %.pre-phi332, %bb.ab ], [ %.pre-phi332, %.preheader39 ], [ %.pre-phi332, %.lr.ph168.split ] ; 2 uses
  %.sroa.085.1 = phi i8 [ %.sroa.085.0171, %.thread336 ], [ %i.bc, %bb.ab ], [ %i.bc, %.preheader39 ], [ %i.bc, %.lr.ph168.split ]
  %.not = icmp ugt i64 %.pre-phi331, %.sroa.010.0137463
  br i1 %.not, label %.loopexit41, label %.split

bb.v:                                             ; preds = %bb.t
  %i.br = zext i8 %i.bc to i64                    ; 3 uses
  %i.bs = icmp ult i8 %i.bc, 18
  br i1 %i.bs, label %bb.x, label %bb.y

bb.w:                                             ; preds = %bb.t, %bb.x
  %.sroa.090.1 = phi i64 [ %i.ce, %bb.x ], [ %.sroa.090.0.lcssa334, %bb.t ] ; 4 uses
  %i.bt = icmp ult i64 %.sroa.090.1, 3
  br i1 %i.bt, label %.preheader39, label %bb.z

.preheader39:                                     ; preds = %bb.w
  %i.bu = icmp eq i64 %.sroa.090.1, 0
  br i1 %i.bu, label %.loopexit40, label %.lr.ph168

.lr.ph168:                                        ; preds = %.preheader39
  %i.bv = zext i8 %i.bc to i64                    ; 3 uses
  %i.bw = icmp ult i8 %i.bc, 18
  %i.bx = getelementptr inbounds nuw i8, ptr @_ZN6brotli3enc9constants16kCodeLengthDepth17he1a3802995d17e02E, i64 %i.bv
  %i.by = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc9constants15kCodeLengthBits17he8d7f9e9cdc65196E, i64 %i.bv
  br i1 %i.bw, label %.lr.ph168.split, label %bb.ac

bb.x:                                             ; preds = %bb.v
  %i.bz = getelementptr inbounds nuw i8, ptr @_ZN6brotli3enc9constants16kCodeLengthDepth17he1a3802995d17e02E, i64 %i.br
  %i.ca = load i8, ptr %i.bz, align 1, !noundef !27
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc9constants15kCodeLengthBits17he8d7f9e9cdc65196E, i64 %i.br
  %i.cc = load i32, ptr %i.cb, align 4, !noundef !27
  %i.cd = zext i32 %i.cc to i64
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.ca, i64 noundef %i.cd, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  %i.ce = add i64 %.sroa.090.0.lcssa334, -1
  br label %bb.w

bb.y:                                             ; preds = %bb.v
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.br, i64 noundef 18, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1650) #43
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.cf = add i64 %.sroa.090.1, -3                ; 4 uses
  %i.cg = icmp ult i64 %i.cf, 704
  br i1 %i.cg, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.cf, i64 noundef 704, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1651) #43
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc9constants17kNonZeroRepsDepth17hf0ed542e139afe71E, i64 %i.cf
  %i.ci = load i32, ptr %i.ch, align 4, !noundef !27
  %i.cj = trunc i32 %i.ci to i8
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr @_ZN6brotli3enc9constants16kNonZeroRepsBits17h7002645b2b70cbe2E, i64 %i.cf
  %i.cl = load i64, ptr %i.ck, align 8, !noundef !27
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.cj, i64 noundef %i.cl, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  br label %.loopexit40

.lr.ph168.split:                                  ; preds = %.lr.ph168, %.lr.ph168.split
  %.sroa.090.2167 = phi i64 [ %i.cm, %.lr.ph168.split ], [ %.sroa.090.1, %.lr.ph168 ]
  %i.cm = add nsw i64 %.sroa.090.2167, -1         ; 2 uses
  %i.cn = load i8, ptr %i.bx, align 1, !noundef !27
  %i.co = load i32, ptr %i.by, align 4, !noundef !27
  %i.cp = zext i32 %i.co to i64
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.cn, i64 noundef %i.cp, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  %i.cq = icmp eq i64 %i.cm, 0
  br i1 %i.cq, label %.loopexit40, label %.lr.ph168.split

bb.ac:                                            ; preds = %.lr.ph168
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bv, i64 noundef 18, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1652) #43
  unreachable

.loopexit:                                        ; preds = %bb.an, %.preheader
  %i.cr = icmp ult i64 %.sroa.0105.1175, %.sroa.0.1
  %i.cs = add i64 %.sroa.0105.1175, 1
  br i1 %i.cr, label %.preheader, label %bb.ad

.preheader:                                       ; preds = %bb.q, %.loopexit
  %.sroa.0105.1175 = phi i64 [ 1, %bb.q ], [ %i.cs, %.loopexit ] ; 5 uses
  %.sroa.0105.0174 = phi i64 [ 0, %bb.q ], [ %.sroa.0105.1175, %.loopexit ]
  %i.ct = icmp ult i64 %.sroa.0105.1175, %.sroa.0.1
  br i1 %i.ct, label %.lr.ph173, label %.loopexit

.lr.ph173:                                        ; preds = %.preheader
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.0105.0174 ; 2 uses
  br label %bb.ai

bb.ad:                                            ; preds = %.loopexit
  %i.cv = trunc i64 %3 to i8                      ; 5 uses
  %i.cw = load i64, ptr %i.a, align 8, !noundef !27 ; 4 uses
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.cv, i64 noundef %i.cw, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !27
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.cv, i64 noundef %i.cy, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  switch i64 %.sroa.0.1, label %bb.af [
    i64 2, label %.loopexit41
    i64 3, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !noundef !27
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.cv, i64 noundef %i.da, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  br label %.loopexit41

bb.af:                                            ; preds = %bb.ad
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !noundef !27
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.cv, i64 noundef %i.dc, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.de = load i64, ptr %i.dd, align 8, !noundef !27
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.cv, i64 noundef %i.de, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  %i.df = icmp ult i64 %i.cw, %5
  br i1 %i.df, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 %i.cw
  %i.dh = load i8, ptr %i.dg, align 1, !noundef !27
  %i.di = icmp eq i8 %i.dh, 1
  %. = zext i1 %i.di to i64
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 1, i64 noundef %., ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  br label %.loopexit41

bb.ah:                                            ; preds = %bb.af
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.cw, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1653) #43
  unreachable

.loopexit41:                                      ; preds = %.loopexit40, %bb.ag, %bb.ae, %bb.ad, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.ai:                                            ; preds = %.lr.ph173, %bb.an
  %.sroa.0107.0172 = phi i64 [ %.sroa.0105.1175, %.lr.ph173 ], [ %i.dj, %bb.an ] ; 2 uses
  %i.dj = add i64 %.sroa.0107.0172, 1             ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.0107.0172 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !noundef !27 ; 4 uses
  %i.dm = icmp ult i64 %i.dl, %5
  br i1 %i.dm, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dn = load i64, ptr %i.cu, align 8, !noundef !27 ; 4 uses
  %i.do = icmp ult i64 %i.dn, %5
  br i1 %i.do, label %bb.al, label %bb.am

bb.ak:                                            ; preds = %bb.ai
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.dl, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1654) #43
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 %i.dl
  %i.dq = load i8, ptr %i.dp, align 1, !noundef !27
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 %i.dn
  %i.ds = load i8, ptr %i.dr, align 1, !noundef !27
  %i.dt = icmp ult i8 %i.dq, %i.ds
  br i1 %i.dt, label %bb.ao, label %bb.an

bb.am:                                            ; preds = %bb.aj
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.dn, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1655) #43
  unreachable

bb.an:                                            ; preds = %bb.al, %bb.ao
  %exitcond273.not = icmp eq i64 %i.dj, %.sroa.0.1
  br i1 %exitcond273.not, label %.loopexit, label %bb.ai

bb.ao:                                            ; preds = %bb.al
  store i64 %i.dn, ptr %i.dk, align 8
  store i64 %i.dl, ptr %i.cu, align 8
  br label %bb.an

.lr.ph157:                                        ; preds = %.lr.ph157.preheader, %bb.aw
  %.sroa.027.1154 = phi i32 [ %i.ez, %bb.aw ], [ %i.av, %.lr.ph157.preheader ] ; 5 uses
  %.sroa.048.0153 = phi i32 [ %.sroa.048.2, %bb.aw ], [ 0, %.lr.ph157.preheader ] ; 3 uses
  %.sroa.054.0152 = phi i32 [ %.sroa.054.2, %bb.aw ], [ %i.o, %.lr.ph157.preheader ] ; 3 uses
  %i.du = sext i32 %.sroa.048.0153 to i64         ; 3 uses
  %.not31 = icmp ult i64 %i.g, %i.du
  br i1 %.not31, label %.invoke, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph157
  %i.dv = sext i32 %.sroa.054.0152 to i64         ; 3 uses
  %.not32 = icmp ult i64 %i.g, %i.dv
  br i1 %.not32, label %.invoke, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.du
  %i.dx = load i32, ptr %i.dw, align 4, !noundef !27
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.dv
  %i.dz = load i32, ptr %i.dy, align 4, !noundef !27
  %.not175 = icmp ugt i32 %i.dx, %i.dz            ; 3 uses
  %.sroa.075.0 = select i1 %.not175, i32 %.sroa.054.0152, i32 %.sroa.048.0153 ; 2 uses
  %i.ea = zext i1 %.not175 to i32
  %.sroa.054.1 = add i32 %.sroa.054.0152, %i.ea   ; 3 uses
  %not..not175 = xor i1 %.not175, true
  %i.eb = zext i1 %not..not175 to i32
  %.sroa.048.1 = add i32 %.sroa.048.0153, %i.eb   ; 3 uses
  %i.ec = sext i32 %.sroa.048.1 to i64            ; 3 uses
  %.not33 = icmp ult i64 %i.g, %i.ec
  br i1 %.not33, label %.invoke, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ed = sext i32 %.sroa.054.1 to i64            ; 3 uses
  %.not34 = icmp ult i64 %i.g, %i.ed
  br i1 %.not34, label %.invoke, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ec
  %i.ef = load i32, ptr %i.ee, align 4, !noundef !27
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ed
  %i.eh = load i32, ptr %i.eg, align 4, !noundef !27
  %.not176 = icmp ugt i32 %i.ef, %i.eh            ; 3 uses
  %.sroa.077.0 = select i1 %.not176, i32 %.sroa.054.1, i32 %.sroa.048.1 ; 2 uses
  %i.ei = zext i1 %.not176 to i32
  %.sroa.054.2 = add i32 %.sroa.054.1, %i.ei
  %not..not176 = xor i1 %.not176, true
  %i.ej = zext i1 %not..not176 to i32
  %.sroa.048.2 = add i32 %.sroa.048.1, %i.ej
  %i.ek = sext i32 %.sroa.075.0 to i64            ; 3 uses
  %.not35 = icmp ult i64 %i.g, %i.ek
  br i1 %.not35, label %.invoke, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.el = sext i32 %.sroa.077.0 to i64            ; 3 uses
  %.not36 = icmp ult i64 %i.g, %i.el
  br i1 %.not36, label %.invoke, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.em = add i32 %.sroa.027.1154, -1             ; 2 uses
  %i.en = zext i32 %i.em to i64                   ; 2 uses
  %.not37 = icmp ugt i32 %i.em, %i.m
  br i1 %.not37, label %.invoke, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ek
  %i.ep = load i32, ptr %i.eo, align 4, !noundef !27
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.el
  %i.er = load i32, ptr %i.eq, align 4, !noundef !27
  %i.es = add i32 %i.er, %i.ep
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.en ; 3 uses
  store i32 %i.es, ptr %i.et, align 4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ev = trunc i32 %.sroa.075.0 to i16
  store i16 %i.ev, ptr %i.eu, align 4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 6
  %i.ex = trunc i32 %.sroa.077.0 to i16
  store i16 %i.ex, ptr %i.ew, align 2
  %12 = zext i32 %.sroa.027.1154 to i64           ; 2 uses
  %.not38 = icmp ugt i32 %.sroa.027.1154, %i.m
  br i1 %.not38, label %.invoke, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %12
  %i.ez = add nuw nsw i32 %.sroa.027.1154, 1
  %exitcond271.not = icmp eq i32 %.sroa.027.1154, %11
  store i64 -1, ptr %i.ey, align 4
  br i1 %exitcond271.not, label %._crit_edge158, label %.lr.ph157

bb.ax:                                            ; preds = %.lr.ph148
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n
  %i.fb = load i32, ptr %i.fa, align 4, !noundef !27 ; 3 uses
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax, %bb.ba
  %.sroa.027.2 = phi i32 [ %.sroa.027.0146, %bb.ax ], [ %i.fh, %bb.ba ] ; 11 uses
  %i.fd = icmp eq i64 %i.n, 0
  br i1 %i.fd, label %._crit_edge149, label %.lr.ph148

bb.az:                                            ; preds = %bb.ax
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.fe = zext i32 %.sroa.027.0146 to i64         ; 3 uses
  %.not25 = icmp samesign ult i64 %i.g, %i.fe
  br i1 %.not25, label %.invoke.loopexit481.split.loop.exit509, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.sroa.024.0. = tail call i32 @llvm.umax.i32(i32 %i.fb, i32 %.sroa.024.0)
  %i.ff = trunc nuw nsw i64 %i.n to i16
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.fe ; 3 uses
  store i32 %.sroa.024.0., ptr %i.fg, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  store i16 -1, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fg, i64 6
  store i16 %i.ff, ptr %.sroa.5.0..sroa_idx, align 2
  %i.fh = add i32 %.sroa.027.0146, 1
  br label %bb.ay

.loopexit44:                                      ; preds = %._crit_edge158
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.bb:                                            ; preds = %.loopexit.split-lp, %.loopexit44
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit44 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  tail call void @mi_free(ptr noundef nonnull %i.j) #38
  resume { ptr, i32 } %lpad.phi

bb.bc:                                            ; preds = %._crit_edge.thread
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 %i.e
  store i8 0, ptr %i.fi, align 1
  %i.fj = icmp ult i64 %i.e, %7
  br i1 %i.fj, label %bb.be, label %bb.bf

bb.bd:                                            ; preds = %._crit_edge.thread
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.e, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1668) #43
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.e
  store i16 0, ptr %i.fk, align 2
  br label %.loopexit41

bb.bf:                                            ; preds = %bb.bc
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.e, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1669) #43
  unreachable

.lr.ph.preheader:                                 ; preds = %bb.a, %.lr.ph
  %.sroa.020.0136464 = phi i64 [ %.sroa.020.1, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.sroa.010.0137463 = phi i64 [ %i.fp, %.lr.ph ], [ 0, %bb.a ] ; 8 uses
  %.sroa.0.0138462 = phi i64 [ %.sroa.0.1, %.lr.ph ], [ 0, %bb.a ] ; 4 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.010.0137463
  %i.fm = load i32, ptr %i.fl, align 4, !noundef !27 ; 2 uses
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %bb.bi, label %bb.bh

bb.bg:                                            ; preds = %.lr.ph
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1670) #43
  unreachable

bb.bh:                                            ; preds = %.lr.ph.preheader
  %i.fo = icmp ult i64 %.sroa.0.0138462, 4
  br i1 %i.fo, label %bb.bj, label %bb.bk

bb.bi:                                            ; preds = %.lr.ph.preheader, %bb.bk
  %.sroa.020.1 = phi i64 [ %.sroa.020.0136464, %.lr.ph.preheader ], [ %i.fu, %bb.bk ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.0138462, %.lr.ph.preheader ], [ %i.fs, %bb.bk ] ; 8 uses
  %i.fp = add nuw nsw i64 %.sroa.010.0137463, 1   ; 8 uses
  %i.fq = icmp eq i64 %.sroa.020.1, 0
  br i1 %i.fq, label %._crit_edge, label %.lr.ph

bb.bj:                                            ; preds = %bb.bh
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.0.0138462
  store i64 %.sroa.010.0137463, ptr %i.fr, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bh
  %i.fs = add i64 %.sroa.0.0138462, 1
  %i.ft = zext i32 %i.fm to i64
  %i.fu = sub i64 %.sroa.020.0136464, %i.ft
  br label %bb.bi
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6brotli3enc17compress_fragment22compress_fragment_fast17h6c0d553cad315c42E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr noalias nofree noundef nonnull align 4 captures(none) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 1 %7, ptr noalias noundef nonnull align 2 %8, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull align 1 %10, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %11, align 8, !noundef !27 ; 2 uses
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
  %i.e = load i64, ptr %11, align 8, !noundef !27
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
  %i.h = load i64, ptr %11, align 8, !noundef !27
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
  %i.f = load i64, ptr %11, align 8, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.d, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(512) %i.c, i8 0, i64 512, i1 false)
  %i.g = sub nuw nsw i64 64, %6                   ; 11 uses
  tail call void @_ZN6brotli3enc26compress_fragment_two_pass23store_meta_block_header17he3ba7a5e15937e36E(i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  tail call void @_ZN6brotli3enc26compress_fragment_two_pass15BrotliWriteBits17he01f177c2434efb8E(i64 noundef 13, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  %i.h = call fastcc noundef i64 @_ZN6brotli3enc17compress_fragment30BuildAndStoreLiteralPrefixCode17h8fa20e6563afe892E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %.sroa.0.0.i, ptr noalias noundef nonnull align 1 %i.d, ptr noalias noundef nonnull align 2 %i.c, ptr noalias noundef align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  %i.i = load i64, ptr %9, align 8, !noundef !27  ; 5 uses
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
  %i.q = load i8, ptr %i.p, align 1, !noundef !27
  %i.r = zext i8 %i.q to i64
  call void @_ZN6brotli3enc26compress_fragment_two_pass15BrotliWriteBits17he01f177c2434efb8E(i64 noundef %i.o, i64 noundef %i.r, ptr noalias noundef nonnull align 8 dereferenceable(8) %11, ptr noalias noundef nonnull align 1 %12, i64 noundef %13)
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 256 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %bb.cs, %._crit_edge.thread
  %.sroa.0.01118.ph = phi i64 [ %.sroa.0.2.jt2, %bb.cs ], [ %2, %._crit_edge.thread ]
  %.sroa.016.01113.ph = phi i64 [ %.sroa.016.6.jt2, %bb.cs ], [ 0, %._crit_edge.thread ]
  %.sroa.044.01107.ph = phi i64 [ %.sroa.0.0.i212, %bb.cs ], [ %.sroa.0.0.i, %._crit_edge.thread ] ; 2 uses
  %.sroa.047.01105.ph.in = phi i64 [ %i.jd, %bb.cs ], [ %i.f, %._crit_edge.thread ] ; 3 uses
  %.sroa.050.01103.ph = phi i64 [ %i.jh, %bb.cs ], [ %i.h, %._crit_edge.thread ] ; 2 uses
  %.sroa.052.01100.ph = phi i64 [ %.sroa.052.2.jt2, %bb.cs ], [ 0, %._crit_edge.thread ] ; 9 uses
  %.sroa.047.01105.ph = add i64 %.sroa.047.01105.ph.in, 3
  %i.v = icmp ugt i64 %.sroa.050.01103.ph, 980
  br label %bb.c

end_hunk_0
