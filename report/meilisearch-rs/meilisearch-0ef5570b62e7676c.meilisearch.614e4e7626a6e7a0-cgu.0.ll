Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 148
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 290
begin_hunk_0_@_ZN6brotli3enc17brotli_bit_stream29store_uncompressed_meta_block17hce9957366ac74809E:bb.a
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
  %exitcond.not = icmp eq i64 %i.fr, %1
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
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.fr, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1667) #43
  unreachable

._crit_edge144:                                   ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %4, i8 0, i64 %i.fr, i1 false)
  %i.g = shl nuw nsw i64 %i.fr, 1                 ; 14 uses
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
  %.sroa.024.0 = phi i32 [ 1, %_ZN6brotli3enc14combined_alloc8alloc_if17hd23791371a41120eE.exit ], [ %i.az, %bb.p ] ; 3 uses
  br label %.lr.ph148

.lr.ph148:                                        ; preds = %.lr.ph148.preheader, %bb.ay
  %.sroa.027.0146 = phi i32 [ %.sroa.027.2, %bb.ay ], [ 0, %.lr.ph148.preheader ] ; 3 uses
  %.sroa.037.0145 = phi i64 [ %i.n, %bb.ay ], [ %i.fr, %.lr.ph148.preheader ]
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
  %.not173.le = icmp ult i32 %i.fd, %.sroa.024.0
  %.433.le = select i1 %.not173.le, ptr @1665, ptr @1666
  br label %.invoke

.invoke:                                          ; preds = %bb.n, %.loopexit42, %.invoke.loopexit481.split.loop.exit509, %.lr.ph148, %bb.l, %.lr.ph66.i, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %.lr.ph157, %._crit_edge.i.loopexit, %.lr.ph62.i, %.lr.ph.i
  %i.an = phi i64 [ %i.n, %.lr.ph148 ], [ %i.aa, %.lr.ph.i ], [ %.sroa.015.0.lcssa.i.ph, %._crit_edge.i.loopexit ], [ %i.ez, %bb.av ], [ %i.h, %.lr.ph66.i ], [ %umax.i, %.lr.ph62.i ], [ %i.eo, %bb.au ], [ %i.em, %bb.at ], [ %i.el, %bb.as ], [ %i.ee, %bb.ar ], [ %i.ed, %bb.aq ], [ %i.dw, %bb.ap ], [ %i.dv, %.lr.ph157 ], [ %.sroa.01.0.i, %bb.l ], [ %i.fg, %.invoke.loopexit481.split.loop.exit509 ], [ %i.aq, %.loopexit42 ], [ %i.as, %bb.n ]
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
  %i.aw = shl i32 %.sroa.027.2, 1                 ; 2 uses
  br label %.lr.ph157

._crit_edge158:                                   ; preds = %bb.aw, %.._crit_edge158_crit_edge
  %.pre-phi275 = phi i32 [ %.pre274, %.._crit_edge158_crit_edge ], [ %i.aw, %bb.aw ]
  %i.ax = add i32 %.pre-phi275, -1
  %i.ay = invoke noundef zeroext i1 @_ZN6brotli3enc14entropy_encode14BrotliSetDepth17h5f5ba8abc19b5273E(i32 noundef %i.ax, ptr noalias noundef nonnull align 4 %i.j, i64 noundef %i.h, ptr noalias noundef nonnull align 1 %4, i64 noundef %5, i32 noundef 14)
          to label %bb.p unwind label %.loopexit44

bb.p:                                             ; preds = %._crit_edge158
  %i.az = shl i32 %.sroa.024.0, 1
  br i1 %i.ay, label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..entropy_encode..HuffmanTree$GT$$GT$17h66adf8cf8f2b9f83E.exit217", label %.lr.ph148.preheader

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..entropy_encode..HuffmanTree$GT$$GT$17h66adf8cf8f2b9f83E.exit217": ; preds = %bb.p
  tail call void @mi_free(ptr noundef nonnull align 4 %i.j) #38
  tail call void @_ZN6brotli3enc14entropy_encode31BrotliConvertBitDepthsToSymbols17hf5dace01f018846fE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %4, i64 noundef %5, i64 noundef %i.fr, ptr noalias noundef nonnull align 2 %6, i64 noundef %7)
  %i.ba = icmp ult i64 %.sroa.0.1, 5
  br i1 %i.ba, label %bb.q, label %.split.preheader

.split.preheader:                                 ; preds = %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..entropy_encode..HuffmanTree$GT$$GT$17h66adf8cf8f2b9f83E.exit217"
  tail call void @_ZN6brotli3enc17brotli_bit_stream25StoreStaticCodeLengthCode17hf918db1678579c13E(ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  br label %.split

bb.q:                                             ; preds = %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..entropy_encode..HuffmanTree$GT$$GT$17h66adf8cf8f2b9f83E.exit217"
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 2, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  %i.bb = add nsw i64 %.sroa.0.1, -1
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 2, i64 noundef %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  br label %.preheader

.split:                                           ; preds = %.split.preheader, %.loopexit40
  %.sroa.085.0171 = phi i8 [ %.sroa.085.1, %.loopexit40 ], [ 8, %.split.preheader ] ; 2 uses
  %.sroa.086.0170 = phi i64 [ %.pre-phi331, %.loopexit40 ], [ 0, %.split.preheader ] ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.086.0170
  %i.bd = load i8, ptr %i.bc, align 1, !noundef !27 ; 11 uses
  %.sroa.0101.0159 = add nuw nsw i64 %.sroa.086.0170, 1 ; 3 uses
  %i.be = icmp ult i64 %.sroa.086.0170, %.sroa.010.0137463
  br i1 %i.be, label %.lr.ph162.preheader, label %._crit_edge163.thread

.lr.ph162.preheader:                              ; preds = %.split
  %i.bf = sub nsw i64 %i.fr, %.sroa.086.0170
  br label %.lr.ph162

.lr.ph162:                                        ; preds = %.lr.ph162.preheader, %bb.r
  %.sroa.0101.0161 = phi i64 [ %.sroa.0101.0, %bb.r ], [ %.sroa.0101.0159, %.lr.ph162.preheader ] ; 3 uses
  %.sroa.090.0160 = phi i64 [ %i.bl, %bb.r ], [ 1, %.lr.ph162.preheader ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.0101.0161
  %i.bh = load i8, ptr %i.bg, align 1, !noundef !27
  %i.bi = icmp eq i8 %i.bh, %i.bd
  br i1 %i.bi, label %bb.r, label %._crit_edge163

._crit_edge163:                                   ; preds = %bb.r, %.lr.ph162
  %.sroa.090.0.lcssa.ph = phi i64 [ %i.bf, %bb.r ], [ %.sroa.090.0160, %.lr.ph162 ] ; 5 uses
  %.pre = add i64 %.sroa.090.0.lcssa.ph, %.sroa.086.0170 ; 2 uses
  %i.bj = icmp eq i8 %i.bd, 0
  br i1 %i.bj, label %bb.s, label %bb.t

._crit_edge163.thread:                            ; preds = %.split
  %i.bk = icmp eq i8 %i.bd, 0
  br i1 %i.bk, label %.thread336, label %bb.t

bb.r:                                             ; preds = %.lr.ph162
  %i.bl = add nuw nsw i64 %.sroa.090.0160, 1
  %.sroa.0101.0 = add i64 %.sroa.0101.0161, 1
  %exitcond272.not = icmp eq i64 %.sroa.0101.0161, %.sroa.010.0137463
  br i1 %exitcond272.not, label %._crit_edge163, label %.lr.ph162

bb.s:                                             ; preds = %._crit_edge163
  %i.bm = icmp ult i64 %.sroa.090.0.lcssa.ph, 704
  br i1 %i.bm, label %.thread336, label %bb.u

bb.t:                                             ; preds = %._crit_edge163.thread, %._crit_edge163
  %.sroa.090.0.lcssa334 = phi i64 [ 1, %._crit_edge163.thread ], [ %.sroa.090.0.lcssa.ph, %._crit_edge163 ] ; 2 uses
  %.pre-phi332 = phi i64 [ %.sroa.0101.0159, %._crit_edge163.thread ], [ %.pre, %._crit_edge163 ] ; 3 uses
  %.not174 = icmp eq i8 %.sroa.085.0171, %i.bd
  br i1 %.not174, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.s
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.090.0.lcssa.ph, i64 noundef 704, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1649) #43
  unreachable

.thread336:                                       ; preds = %._crit_edge163.thread, %bb.s
  %.pre-phi333340 = phi i64 [ %.pre, %bb.s ], [ %.sroa.0101.0159, %._crit_edge163.thread ]
  %.sroa.090.0.lcssa335339 = phi i64 [ %.sroa.090.0.lcssa.ph, %bb.s ], [ 1, %._crit_edge163.thread ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc9constants14kZeroRepsDepth17h008abeb978242173E, i64 %.sroa.090.0.lcssa335339
  %i.bo = load i32, ptr %i.bn, align 4, !noundef !27
  %i.bp = trunc i32 %i.bo to i8
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr @_ZN6brotli3enc9constants13kZeroRepsBits17h8bfdc183adf0dea0E, i64 %.sroa.090.0.lcssa335339
  %i.br = load i64, ptr %i.bq, align 8, !noundef !27
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.bp, i64 noundef %i.br, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  br label %.loopexit40

.loopexit40:                                      ; preds = %.lr.ph168.split, %.preheader39, %bb.ab, %.thread336
  %.pre-phi331 = phi i64 [ %.pre-phi333340, %.thread336 ], [ %.pre-phi332, %bb.ab ], [ %.pre-phi332, %.preheader39 ], [ %.pre-phi332, %.lr.ph168.split ] ; 2 uses
  %.sroa.085.1 = phi i8 [ %.sroa.085.0171, %.thread336 ], [ %i.bd, %bb.ab ], [ %i.bd, %.preheader39 ], [ %i.bd, %.lr.ph168.split ]
  %.not = icmp ugt i64 %.pre-phi331, %.sroa.010.0137463
  br i1 %.not, label %.loopexit41, label %.split

bb.v:                                             ; preds = %bb.t
  %i.bs = zext i8 %i.bd to i64                    ; 3 uses
end_hunk_0
