Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 149
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 284
begin_hunk_0_@_ZN6brotli3enc6encode22WriteMetaBlockInternal17h7952d72b2f7e6cd4E:bb.a
  %i.ga = load i32, ptr %i.fz, align 8, !alias.scope !39179, !noundef !52
  call void @_ZN6brotli3enc17brotli_bit_stream30StoreCompressedMetaBlockHeader17he8486a6759b6de05E(i1 noundef zeroext %.sroa.0.0, i64 noundef range(i64 1, 4294967296) %5, ptr noalias noundef nonnull align 8 dereferenceable(8) %19, ptr noalias noundef nonnull align 1 %20, i64 noundef range(i64 2, 0) %21), !noalias !39182
  call void @_ZN6brotli3enc17brotli_bit_stream15BuildHistograms17hf33d4e9a73aed5ffE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef range(i64 0, 4294967296) %i.fl, i64 noundef range(i64 0, 4294967296) %3, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %14, i64 noundef %15, i64 noundef %13, ptr noalias noundef nonnull align 8 dereferenceable(1040) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(2832) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(2192) %i.ag), !noalias !39182
  call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 13, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %19, ptr noalias noundef nonnull align 1 %20, i64 noundef range(i64 2, 0) %21), !noalias !39182
  call void @_ZN6brotli3enc17brotli_bit_stream24BuildAndStoreHuffmanTree17h593bd11fb314b673E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ai, i64 noundef 256, i64 noundef 256, i64 noundef 256, ptr noalias noundef nonnull align 4 %i.z, i64 noundef 1409, ptr noalias noundef nonnull align 1 %i.af, i64 noundef 256, ptr noalias noundef nonnull align 2 %i.ae, i64 noundef 256, ptr noalias noundef nonnull align 8 dereferenceable(8) %19, ptr noalias noundef nonnull align 1 %20, i64 noundef range(i64 2, 0) %21), !noalias !39182
  call void @_ZN6brotli3enc17brotli_bit_stream24BuildAndStoreHuffmanTree17h593bd11fb314b673E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ah, i64 noundef 704, i64 noundef 704, i64 noundef 704, ptr noalias noundef nonnull align 4 %i.z, i64 noundef 1409, ptr noalias noundef nonnull align 1 %i.ad, i64 noundef 704, ptr noalias noundef nonnull align 2 %i.ac, i64 noundef 704, ptr noalias noundef nonnull align 8 dereferenceable(8) %19, ptr noalias noundef nonnull align 1 %20, i64 noundef range(i64 2, 0) %21), !noalias !39182
  %i.gb = zext i32 %i.ga to i64
  call void @_ZN6brotli3enc17brotli_bit_stream24BuildAndStoreHuffmanTree17h593bd11fb314b673E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ag, i64 noundef 544, i64 noundef 140, i64 noundef %i.gb, ptr noalias noundef nonnull align 4 %i.z, i64 noundef 1409, ptr noalias noundef nonnull align 1 %i.ab, i64 noundef 140, ptr noalias noundef nonnull align 2 %i.aa, i64 noundef 140, ptr noalias noundef nonnull align 8 dereferenceable(8) %19, ptr noalias noundef nonnull align 1 %20, i64 noundef range(i64 2, 0) %21), !noalias !39182
  call void @_ZN6brotli3enc17brotli_bit_stream25StoreDataWithHuffmanCodes17hf13a85f2527ecafcE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef range(i64 0, 4294967296) %i.fl, i64 noundef range(i64 0, 4294967296) %3, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %14, i64 noundef %15, i64 noundef %13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.af, i64 noundef 256, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.ae, i64 noundef 256, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ad, i64 noundef 704, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.ac, i64 noundef 704, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ab, i64 noundef 140, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.aa, i64 noundef 140, ptr noalias noundef nonnull align 8 dereferenceable(8) %19, ptr noalias noundef nonnull align 1 %20, i64 noundef range(i64 2, 0) %21), !noalias !39182
  br i1 %.sroa.0.0, label %bb.ae, label %_ZN6brotli3enc17brotli_bit_stream24store_meta_block_trivial17hbd8a41ec8707fdaaE.exit

bb.ab:                                            ; preds = %bb.z
  %.not.i26 = icmp ugt i64 %13, %15
  br i1 %.not.i26, label %bb.ac, label %bb.ad, !prof !54

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !39180
  store ptr @186, ptr %i.y, align 8, !noalias !39180
  %i.gc = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 1, ptr %i.gc, align 8, !noalias !39180
  %i.gd = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr null, ptr %i.gd, align 8, !noalias !39180
  %i.ge = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ge, align 8, !noalias !39180
  %i.gf = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 0, ptr %i.gf, align 8, !noalias !39180
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1625) #43, !noalias !39181
  unreachable

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !39180
  store ptr inttoptr (i64 1 to ptr), ptr %i.aj, align 8, !noalias !39180
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 0, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !39180
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !39180
  %.sroa.6.0..sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx.i27, align 8, !noalias !39180
  %.sroa.7.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store i32 1, ptr %.sroa.7.0..sroa_idx.i28, align 8, !noalias !39180
  %i.gg = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store ptr inttoptr (i64 4 to ptr), ptr %i.gg, align 8, !noalias !39180
  %i.gh = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  store i64 0, ptr %i.gh, align 8, !noalias !39180
  %i.gi = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  store ptr inttoptr (i64 1 to ptr), ptr %i.gi, align 8, !noalias !39180
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  store i64 0, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !39180
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.56.0..sroa_idx.i, align 8, !noalias !39180
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  store i64 0, ptr %.sroa.67.0..sroa_idx.i, align 8, !noalias !39180
  %.sroa.78.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  store i32 1, ptr %.sroa.78.0..sroa_idx.i, align 8, !noalias !39180
  %i.gj = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  store ptr inttoptr (i64 1 to ptr), ptr %i.gj, align 8, !noalias !39180
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 104
  store i64 0, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !39180
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 112
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.512.0..sroa_idx.i, align 8, !noalias !39180
  %.sroa.613.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 120
  store i64 0, ptr %.sroa.613.0..sroa_idx.i, align 8, !noalias !39180
  %.sroa.714.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 128
  store i32 1, ptr %.sroa.714.0..sroa_idx.i, align 8, !noalias !39180
  %i.gk = getelementptr inbounds nuw i8, ptr %i.aj, i64 136
  store ptr inttoptr (i64 4 to ptr), ptr %i.gk, align 8, !noalias !39180
  %i.gl = getelementptr inbounds nuw i8, ptr %i.aj, i64 144
  store i64 0, ptr %i.gl, align 8, !noalias !39180
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream12LogMetaBlock17h8d6ec10e9474062aE(ptr noalias noundef nonnull align 1 %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %14, i64 noundef %13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fm, i64 noundef %i.fo, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fq, i64 noundef %i.fs, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %16, ptr noalias noundef nonnull align 8 dereferenceable(8) %18, ptr noalias noundef readonly align 8 captures(address) dereferenceable(152) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %8, i8 noundef 0), !noalias !39183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !39180
  br label %bb.aa

bb.ae:                                            ; preds = %bb.aa
  call void @_ZN6brotli3enc17brotli_bit_stream18JumpToByteBoundary17hd530db3bb0615915E(ptr noalias noundef nonnull align 8 dereferenceable(8) %19, ptr noalias noundef nonnull align 1 %20, i64 noundef range(i64 2, 0) %21), !noalias !39182
  br label %_ZN6brotli3enc17brotli_bit_stream24store_meta_block_trivial17hbd8a41ec8707fdaaE.exit

_ZN6brotli3enc17brotli_bit_stream24store_meta_block_trivial17hbd8a41ec8707fdaaE.exit: ; preds = %bb.aa, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !39180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !39180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !39180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !39180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !39180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !39180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !39180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !39180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !39180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !39180
  br label %_ZN6brotli3enc17brotli_bit_stream21store_meta_block_fast17h888831025a6a96d9E.exit

bb.af:                                            ; preds = %bb.y
  %i.gm = zext i32 %.sroa.012.0 to i64            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39187)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.bd, i64 99
  %i.go = load i8, ptr %i.gn, align 1, !range !59, !alias.scope !39185, !noundef !52
  %i.gp = trunc nuw i8 %i.go to i1
  br i1 %i.gp, label %bb.ag, label %.lr.ph.i29

bb.ag:                                            ; preds = %.noexc30, %bb.af
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %.val73.i = load i32, ptr %i.gq, align 8, !alias.scope !39185
  invoke fastcc void @_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %14, i64 noundef %15, i64 noundef %13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef range(i64 0, 4294967296) %i.gm, i64 noundef range(i64 0, 4294967296) %3, i32 %.val73.i, ptr noalias noundef nonnull align 8 dereferenceable(264) %i.bc, ptr noalias noundef align 8 dereferenceable(48) %i.et, ptr noalias noundef align 8 dereferenceable(48) %i.eu)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.ag
  %i.gr = getelementptr inbounds nuw i8, ptr %i.bd, i64 84 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !alias.scope !39185, !noundef !52
  %i.gt = icmp eq i32 %i.gs, 0
  %i.gu = load i64, ptr %.sroa.7.0..sroa_idx.i23, align 8, !alias.scope !39187 ; 18 uses
  br i1 %i.gt, label %bb.ay, label %.loopexit322.i

.lr.ph.i29:                                       ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !39188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.x, ptr noundef nonnull align 8 dereferenceable(112) %8, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !39188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.w, ptr noundef nonnull align 8 dereferenceable(112) %8, i64 112, i1 false)
  %i.gv = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 7 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.gx = load i32, ptr %i.gw, align 8, !noalias !39188 ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  %i.gz = load i32, ptr %i.gy, align 4, !noalias !39188 ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 8 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 6 uses
  %i.hc = icmp ne i32 %i.gx, 0
  br label %bb.al

bb.ah:                                            ; preds = %.loopexit323.3.i, %.split914.i, %bb.ak
  invoke void @_ZN6brotli3enc9metablock25RecomputeDistancePrefixes17he1b1df468e6cb68bE(ptr noalias noundef nonnull align 4 %14, i64 noundef %15, i64 noundef %13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hb)
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !39187

.noexc30:                                         ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !39188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !39188
  br label %bb.ag

bb.ai:                                            ; preds = %.loopexit323.3.i, %.split914.i
  %.sroa.014.1470.3915.i = phi double [ %.sroa.014.1471.3.i, %.split914.i ], [ %.sroa.014.1470.3.i, %.loopexit323.3.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !39188
  store double 0.000000e+00, ptr %i.u, align 8, !noalias !39188
  %i.hd = invoke noundef zeroext i1 @_ZN6brotli3enc9metablock19ComputeDistanceCost17h236488a253e13cbcE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %14, i64 noundef %15, i64 noundef %13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gv, ptr noalias noundef nonnull align 1 %9, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %.noexc31 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !39187 ; 0 uses

.noexc31:                                         ; preds = %bb.ai
  %i.he = load double, ptr %i.u, align 8, !noalias !39188, !noundef !52
  %i.hf = fcmp olt double %i.he, %.sroa.014.1470.3915.i
  br i1 %i.hf, label %bb.aj, label %bb.ak

.split.thread.i:                                  ; preds = %.lr.ph487.i.split.split, %.invoke1180.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.thread143.i

.split.i:                                         ; preds = %.invoke1182.i
  %lpad.thr_comm.split-lp175.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread38.thread.i

bb.aj:                                            ; preds = %.noexc31
  %i.hg = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hb, ptr noundef nonnull align 8 dereferenceable(24) %i.hg, i64 24, i1 false)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.noexc31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !39188
  br label %bb.ah

bb.al:                                            ; preds = %bb.ax, %.lr.ph.i29
  %.sroa.08.1473.i = phi i32 [ 0, %.lr.ph.i29 ], [ %i.io, %bb.ax ] ; 4 uses
  %.sroa.013.1472.i = phi i1 [ true, %.lr.ph.i29 ], [ %spec.select.i, %bb.ax ]
  %.sroa.014.1471.i = phi double [ f0x547D42AEA2879F2E, %.lr.ph.i29 ], [ %i.im, %bb.ax ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !39188
  store double 0.000000e+00, ptr %i.v, align 8, !noalias !39188
  invoke void @_ZN6brotli3enc9metablock24BrotliInitDistanceParams17hec63d00aadbafeaaE(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.w, i32 noundef 0, i32 noundef %.sroa.08.1473.i)
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !39187

.noexc32:                                         ; preds = %bb.al
  %i.hh = icmp ne i32 %.sroa.08.1473.i, %i.gz
  %or.cond.not.i = select i1 %i.hc, i1 true, i1 %i.hh
  %spec.select.i = select i1 %or.cond.not.i, i1 %.sroa.013.1472.i, i1 false ; 2 uses
  %i.hi = invoke noundef zeroext i1 @_ZN6brotli3enc9metablock19ComputeDistanceCost17h236488a253e13cbcE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %14, i64 noundef %15, i64 noundef %13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ha, ptr noalias noundef nonnull align 1 %9, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !39187

.noexc33:                                         ; preds = %.noexc32
  br i1 %i.hi, label %bb.aw, label %.loopexit323.i

.loopexit323.i:                                   ; preds = %bb.aw, %.noexc33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !39188
  %i.hj = call i32 @llvm.usub.sat.i32(i32 %.sroa.08.1473.i, i32 1)
  %i.hk = lshr i32 %i.hj, 1
  br label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %bb.ax, %.loopexit323.i
  %.sroa.08.1467913.i = phi i32 [ %i.hk, %.loopexit323.i ], [ 7, %bb.ax ]
  %.sroa.014.1470912.i = phi double [ %.sroa.014.1471.i, %.loopexit323.i ], [ %i.im, %bb.ax ]
  %i.hl = icmp ne i32 %i.gx, 1
  br label %bb.am

bb.am:                                            ; preds = %bb.ao, %.lr.ph.1.i
  %.sroa.08.1473.1.i = phi i32 [ %.sroa.08.1467913.i, %.lr.ph.1.i ], [ %i.hr, %bb.ao ] ; 3 uses
  %.sroa.013.1472.1.i = phi i1 [ %spec.select.i, %.lr.ph.1.i ], [ %spec.select.1.i, %bb.ao ]
  %.sroa.014.1471.1.i = phi double [ %.sroa.014.1470912.i, %.lr.ph.1.i ], [ %i.hp, %bb.ao ] ; 3 uses
  %i.hm = shl nuw nsw i32 %.sroa.08.1473.1.i, 1   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !39188
  store double 0.000000e+00, ptr %i.v, align 8, !noalias !39188
  invoke void @_ZN6brotli3enc9metablock24BrotliInitDistanceParams17hec63d00aadbafeaaE(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.w, i32 noundef 1, i32 noundef %i.hm)
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !39187

.noexc34:                                         ; preds = %bb.am
  %i.hn = icmp ne i32 %i.hm, %i.gz
  %or.cond.not.1.i = select i1 %i.hl, i1 true, i1 %i.hn
  %spec.select.1.i = select i1 %or.cond.not.1.i, i1 %.sroa.013.1472.1.i, i1 false ; 3 uses
  %i.ho = invoke noundef zeroext i1 @_ZN6brotli3enc9metablock19ComputeDistanceCost17h236488a253e13cbcE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %14, i64 noundef %15, i64 noundef %13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ha, ptr noalias noundef nonnull align 1 %9, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !39187

.noexc35:                                         ; preds = %.noexc34
  br i1 %i.ho, label %bb.an, label %.loopexit323.1.i

bb.an:                                            ; preds = %.noexc35
  %i.hp = load double, ptr %i.v, align 8, !noalias !39188, !noundef !52 ; 3 uses
  %i.hq = fcmp ogt double %i.hp, %.sroa.014.1471.1.i
  br i1 %i.hq, label %.loopexit323.1.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hb, ptr noundef nonnull align 8 dereferenceable(24) %i.ha, i64 24, i1 false), !noalias !39189
  %i.hr = add nuw nsw i32 %.sroa.08.1473.1.i, 1   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !39188
  %exitcond.1.not.i = icmp eq i32 %i.hr, 16
  br i1 %exitcond.1.not.i, label %.lr.ph.2.i, label %bb.am

.loopexit323.1.i:                                 ; preds = %.noexc35, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !39188
  %i.hs = call i32 @llvm.usub.sat.i32(i32 %.sroa.08.1473.1.i, i32 1) ; 2 uses
  %i.ht = lshr i32 %i.hs, 1                       ; 2 uses
  %i.hu = icmp samesign ult i32 %i.hs, 32
  br i1 %i.hu, label %.lr.ph.2.i, label %.loopexit323.2.i

.lr.ph.2.i:                                       ; preds = %bb.ao, %.loopexit323.1.i
  %i.hv = phi i32 [ %i.ht, %.loopexit323.1.i ], [ 7, %bb.ao ]
  %.sroa.014.1470.1.i800 = phi double [ %.sroa.014.1471.1.i, %.loopexit323.1.i ], [ %i.hp, %bb.ao ]
  %i.hw = icmp ne i32 %i.gx, 2
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ar, %.lr.ph.2.i
  %.sroa.08.1473.2.i = phi i32 [ %i.hv, %.lr.ph.2.i ], [ %i.ic, %bb.ar ] ; 3 uses
  %.sroa.013.1472.2.i = phi i1 [ %spec.select.1.i, %.lr.ph.2.i ], [ %spec.select.2.i, %bb.ar ]
  %.sroa.014.1471.2.i = phi double [ %.sroa.014.1470.1.i800, %.lr.ph.2.i ], [ %i.ia, %bb.ar ] ; 2 uses
  %i.hx = shl nuw nsw i32 %.sroa.08.1473.2.i, 2   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !39188
  store double 0.000000e+00, ptr %i.v, align 8, !noalias !39188
  invoke void @_ZN6brotli3enc9metablock24BrotliInitDistanceParams17hec63d00aadbafeaaE(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.w, i32 noundef 2, i32 noundef %i.hx)
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !39187

.noexc36:                                         ; preds = %bb.ap
  %i.hy = icmp ne i32 %i.hx, %i.gz
  %or.cond.not.2.i = select i1 %i.hw, i1 true, i1 %i.hy
  %spec.select.2.i = select i1 %or.cond.not.2.i, i1 %.sroa.013.1472.2.i, i1 false ; 3 uses
  %i.hz = invoke noundef zeroext i1 @_ZN6brotli3enc9metablock19ComputeDistanceCost17h236488a253e13cbcE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %14, i64 noundef %15, i64 noundef %13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ha, ptr noalias noundef nonnull align 1 %9, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !39187

.noexc37:                                         ; preds = %.noexc36
  br i1 %i.hz, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %.noexc37
  %i.ia = load double, ptr %i.v, align 8, !noalias !39188, !noundef !52 ; 3 uses
  %i.ib = fcmp ogt double %i.ia, %.sroa.014.1471.2.i
  br i1 %i.ib, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hb, ptr noundef nonnull align 8 dereferenceable(24) %i.ha, i64 24, i1 false), !noalias !39189
  %i.ic = add nuw nsw i32 %.sroa.08.1473.2.i, 1   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !39188
  %exitcond.2.not.i = icmp eq i32 %i.ic, 16
  br i1 %exitcond.2.not.i, label %.loopexit323.2.i, label %bb.ap

bb.as:                                            ; preds = %bb.aq, %.noexc37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !39188
  br label %.loopexit323.2.i

.loopexit323.2.i:                                 ; preds = %bb.ar, %bb.as, %.loopexit323.1.i
  %.sroa.014.1470.2.i = phi double [ %.sroa.014.1471.2.i, %bb.as ], [ %.sroa.014.1471.1.i, %.loopexit323.1.i ], [ %i.ia, %bb.ar ] ; 2 uses
  %.sroa.08.1467.2.i = phi i32 [ %.sroa.08.1473.2.i, %bb.as ], [ %i.ht, %.loopexit323.1.i ], [ 16, %bb.ar ]
  %.sroa.013.2.2.i = phi i1 [ %spec.select.2.i, %bb.as ], [ %spec.select.1.i, %.loopexit323.1.i ], [ %spec.select.2.i, %bb.ar ] ; 2 uses
  %22 = call i32 @llvm.usub.sat.i32(i32 %.sroa.08.1467.2.i, i32 1) ; 2 uses
  %i.id = icmp ult i32 %22, 32
  br i1 %i.id, label %.lr.ph.3.i, label %.loopexit323.3.i

.lr.ph.3.i:                                       ; preds = %.loopexit323.2.i
  %i.ie = lshr i32 %22, 1
  %i.if = icmp ne i32 %i.gx, 3
  br label %bb.at

bb.at:                                            ; preds = %bb.av, %.lr.ph.3.i
  %.sroa.08.1473.3.i = phi i32 [ %i.ie, %.lr.ph.3.i ], [ %i.il, %bb.av ] ; 2 uses
  %.sroa.013.1472.3.i = phi i1 [ %.sroa.013.2.2.i, %.lr.ph.3.i ], [ %spec.select.3.i, %bb.av ]
  %.sroa.014.1471.3.i = phi double [ %.sroa.014.1470.2.i, %.lr.ph.3.i ], [ %i.ij, %bb.av ] ; 2 uses
  %i.ig = shl nuw nsw i32 %.sroa.08.1473.3.i, 3   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !39188
  store double 0.000000e+00, ptr %i.v, align 8, !noalias !39188
  invoke void @_ZN6brotli3enc9metablock24BrotliInitDistanceParams17hec63d00aadbafeaaE(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.w, i32 noundef 3, i32 noundef %i.ig)
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !39187

.noexc38:                                         ; preds = %bb.at
  %i.ih = icmp ne i32 %i.ig, %i.gz
  %or.cond.not.3.i = select i1 %i.if, i1 true, i1 %i.ih
  %spec.select.3.i = select i1 %or.cond.not.3.i, i1 %.sroa.013.1472.3.i, i1 false ; 3 uses
  %i.ii = invoke noundef zeroext i1 @_ZN6brotli3enc9metablock19ComputeDistanceCost17h236488a253e13cbcE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %14, i64 noundef %15, i64 noundef %13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ha, ptr noalias noundef nonnull align 1 %9, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !39187

.noexc39:                                         ; preds = %.noexc38
  br i1 %i.ii, label %bb.au, label %.split914.i

bb.au:                                            ; preds = %.noexc39
  %i.ij = load double, ptr %i.v, align 8, !noalias !39188, !noundef !52 ; 3 uses
  %i.ik = fcmp ogt double %i.ij, %.sroa.014.1471.3.i
  br i1 %i.ik, label %.split914.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hb, ptr noundef nonnull align 8 dereferenceable(24) %i.ha, i64 24, i1 false), !noalias !39189
  %i.il = add nuw nsw i32 %.sroa.08.1473.3.i, 1   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !39188
  %exitcond.3.not.i = icmp eq i32 %i.il, 16
  br i1 %exitcond.3.not.i, label %.loopexit323.3.i, label %bb.at

.split914.i:                                      ; preds = %bb.au, %.noexc39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !39188
  br i1 %spec.select.3.i, label %bb.ai, label %bb.ah

.loopexit323.3.i:                                 ; preds = %bb.av, %.loopexit323.2.i
  %.sroa.014.1470.3.i = phi double [ %.sroa.014.1470.2.i, %.loopexit323.2.i ], [ %i.ij, %bb.av ]
  %.sroa.013.2.3.i = phi i1 [ %.sroa.013.2.2.i, %.loopexit323.2.i ], [ %spec.select.3.i, %bb.av ]
  br i1 %.sroa.013.2.3.i, label %bb.ai, label %bb.ah

bb.aw:                                            ; preds = %.noexc33
  %i.im = load double, ptr %i.v, align 8, !noalias !39188, !noundef !52 ; 3 uses
  %i.in = fcmp ogt double %i.im, %.sroa.014.1471.i
  br i1 %i.in, label %.loopexit323.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hb, ptr noundef nonnull align 8 dereferenceable(24) %i.ha, i64 24, i1 false), !noalias !39189
  %i.io = add nuw nsw i32 %.sroa.08.1473.i, 1     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !39188
  %exitcond.not.i = icmp eq i32 %i.io, 16
  br i1 %exitcond.not.i, label %.lr.ph.1.i, label %bb.al

bb.ay:                                            ; preds = %.noexc
  %i.ip = icmp slt i64 %i.gu, 0
  br i1 %i.ip, label %.noexc.i76.invoke, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !97

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.ay
  %i.iq = icmp eq i64 %i.gu, 0
  br i1 %i.iq, label %._crit_edge.i.i.i83.thread.i, label %bb.az

bb.az:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !39190
  %i.ir = call noundef ptr @mi_malloc_aligned(i64 noundef %i.gu, i64 noundef range(i64 1, 9) 1) #38, !noalias !39190 ; 6 uses
  %i.is = icmp eq ptr %i.ir, null
  br i1 %i.is, label %.noexc.i76.invoke, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he15aefe39cdda893E.exit.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he15aefe39cdda893E.exit.i.i.i.i": ; preds = %bb.az
  %.not.i.i.i = icmp eq i64 %i.gu, 1
  br i1 %.not.i.i.i, label %.lr.ph483.preheader.i, label %._crit_edge.thread.i.i.i.i

._crit_edge.thread.i.i.i.i:                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he15aefe39cdda893E.exit.i.i.i.i"
  %i.it = add nsw i64 %i.gu, -1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ir, i8 range(i8 0, 4) 0, i64 %i.it, i1 false), !noalias !39191
  %i.iu = getelementptr i8, ptr %i.ir, i64 %i.gu
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.iu, i64 -1
  br label %.lr.ph483.preheader.i

.lr.ph483.preheader.i:                            ; preds = %._crit_edge.thread.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he15aefe39cdda893E.exit.i.i.i.i"
  %.sroa.0.0.lcssa16.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.thread.i.i.i.i ], [ %i.ir, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he15aefe39cdda893E.exit.i.i.i.i" ]
  store i8 0, ptr %.sroa.0.0.lcssa16.i.i.i.i, align 1, !noalias !39191
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ir, i8 range(i8 0, 4) %7, i64 %i.gu, i1 false), !noalias !39187
  %i.iv = shl i64 %i.gu, 6
  br label %.loopexit322.i

.loopexit322.i:                                   ; preds = %.lr.ph483.preheader.i, %.noexc
  %i.iw = phi i64 [ %i.iv, %.lr.ph483.preheader.i ], [ %i.gu, %.noexc ] ; 10 uses
  %.sroa.10.3.i = phi i64 [ %i.gu, %.lr.ph483.preheader.i ], [ 0, %.noexc ] ; 3 uses
  %.sroa.09.3.i = phi ptr [ %i.ir, %.lr.ph483.preheader.i ], [ inttoptr (i64 1 to ptr), %.noexc ] ; 3 uses
  %i.ix = mul i64 %i.iw, 1040                     ; 3 uses
  %or.cond.i.i.i.i.i.i = icmp ugt i64 %i.iw, 8868626958514207
  br i1 %or.cond.i.i.i.i.i.i, label %bb.bb, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i82.i, !prof !39192

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i82.i: ; preds = %.loopexit322.i
  %i.iy = icmp eq i64 %i.ix, 0
  br i1 %i.iy, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i", label %bb.ba

bb.ba:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i82.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !39193
  %i.iz = call noundef ptr @mi_malloc_aligned(i64 noundef %i.ix, i64 noundef range(i64 1, 9) 8) #38, !noalias !39193 ; 2 uses
  %i.ja = icmp eq ptr %i.iz, null
  br i1 %i.ja, label %bb.bb, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i"

bb.bb:                                            ; preds = %bb.ba, %.loopexit322.i
  %.sroa.4.0.ph.i.i.i85.i = phi i64 [ 8, %bb.ba ], [ 0, %.loopexit322.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i85.i, i64 %i.ix, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc86.i unwind label %bb.gt, !noalias !39194

.noexc86.i:                                       ; preds = %bb.bb
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i": ; preds = %bb.ba, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i82.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i82.i ], [ %i.iz, %bb.ba ] ; 5 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i82.i ], [ %i.iw, %bb.ba ]
  %i.jb = icmp samesign ule i64 %i.iw, %.sroa.4.0.i.i.i.i
  call void @llvm.assume(i1 %i.jb)
  %i.jc = icmp samesign ugt i64 %i.iw, 1
  br i1 %i.jc, label %.lr.ph.i.i.i.i.preheader, label %._crit_edge.i.i.i83.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i"
  %i.jd = add nsw i64 %i.iw, -1                   ; 2 uses
  %i.je = add nsw i64 %i.iw, -2
  %xtraiter = and i64 %i.jd, 7                    ; 3 uses
  %i.jf = icmp ult i64 %i.je, 7
  br i1 %i.jf, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.jd, -8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i83.i:                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i"
  %.not.i.i.i.i = icmp eq i64 %i.iw, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i83.thread.i, label %._crit_edge.thread.i.i.i84.i

._crit_edge.thread.i.i.i84.i.loopexit.unr-lcssa:  ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread.i.i.i84.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %._crit_edge.thread.i.i.i84.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.08.i.i.i.i.epil.init = phi ptr [ %.sroa.10.0.i.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.jo, %._crit_edge.thread.i.i.i84.i.loopexit.unr-lcssa ]
  %lcmp.mod1633 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1633)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %.sroa.0.08.i.i.i.i.epil = phi ptr [ %i.jg, %.lr.ph.i.i.i.i.epil ], [ %.sroa.0.08.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.epil, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.i.epil, i8 0, i64 1032, i1 false), !noalias !39187
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.epil, align 8, !noalias !39195
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.epil, i64 1040 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread.i.i.i84.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !38745

._crit_edge.thread.i.i.i84.i:                     ; preds = %._crit_edge.thread.i.i.i84.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %._crit_edge.i.i.i83.i
  %.sroa.0.0.lcssa15.i.i.i.i = phi ptr [ %.sroa.10.0.i.i.i.i, %._crit_edge.i.i.i83.i ], [ %i.jo, %._crit_edge.thread.i.i.i84.i.loopexit.unr-lcssa ], [ %i.jg, %.lr.ph.i.i.i.i.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i.i, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.0.lcssa15.i.i.i.i, i8 0, i64 1032, i1 false), !noalias !39187
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i, align 8, !noalias !39195
  br label %._crit_edge.i.i.i83.thread.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.0.08.i.i.i.i = phi ptr [ %.sroa.10.0.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new ], [ %i.jo, %.lr.ph.i.i.i.i ] ; 17 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.i, i8 0, i64 1032, i1 false), !noalias !39187
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i, align 8, !noalias !39195
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 1040
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 2072
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jh, i8 0, i64 1032, i1 false), !noalias !39187
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.1, align 8, !noalias !39195
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 2080
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 3112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ji, i8 0, i64 1032, i1 false), !noalias !39187
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.2, align 8, !noalias !39195
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 3120
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 4152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jj, i8 0, i64 1032, i1 false), !noalias !39187
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.3, align 8, !noalias !39195
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 4160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 5192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jk, i8 0, i64 1032, i1 false), !noalias !39187
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.4, align 8, !noalias !39195
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 5200
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 6232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jl, i8 0, i64 1032, i1 false), !noalias !39187
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.5, align 8, !noalias !39195
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 6240
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 7272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jm, i8 0, i64 1032, i1 false), !noalias !39187
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.6, align 8, !noalias !39195
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 7280
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 8312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jn, i8 0, i64 1032, i1 false), !noalias !39187
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.7, align 8, !noalias !39195
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 8320 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.thread.i.i.i84.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i83.thread.i:                     ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, %._crit_edge.thread.i.i.i84.i, %._crit_edge.i.i.i83.i
  %.sroa.10.0.i.i.i943.i = phi ptr [ %.sroa.10.0.i.i.i.i, %._crit_edge.thread.i.i.i84.i ], [ %.sroa.10.0.i.i.i.i, %._crit_edge.i.i.i83.i ], [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ] ; 15 uses
  %.sroa.09.3924929939.i = phi ptr [ %.sroa.09.3.i, %._crit_edge.thread.i.i.i84.i ], [ %.sroa.09.3.i, %._crit_edge.i.i.i83.i ], [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ] ; 6 uses
end_hunk_0
