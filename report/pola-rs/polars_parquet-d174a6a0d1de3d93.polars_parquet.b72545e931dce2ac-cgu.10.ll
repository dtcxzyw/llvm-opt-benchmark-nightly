Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.10?download=true
inline.NumInlined: 2534
inline.NumDeleted: 536
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 132
begin_hunk_0_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream29store_uncompressed_meta_blockNCNvXs4_NtB4_6writerINtB1r_24CompressorWriterCustomIoNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorINtNtCsjPfRcqrlXv6_19brotli_decompressor11io_wrappers12IntoIoWriterQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhENtNtB4y_9std_alloc13StandardAllocEINtB2Q_11CustomWriteB2a_E5write0B5m_ECsfISxE4fmY1Y_14polars_parquet:bb.a
  store i64 0, ptr %.sroa.48.0..sroa_idx.i, align 8, !dbg !18365, !alias.scope !18368
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112, !dbg !18365
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.59.0..sroa_idx.i, align 8, !dbg !18365, !alias.scope !18368
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120, !dbg !18365
  store i64 0, ptr %.sroa.610.0..sroa_idx.i, align 8, !dbg !18365, !alias.scope !18368
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128, !dbg !18365
  store i32 1, ptr %.sroa.711.0..sroa_idx.i, align 8, !dbg !18365, !alias.scope !18368
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !18365
  store ptr inttoptr (i64 4 to ptr), ptr %i.ak, align 8, !dbg !18365, !alias.scope !18368
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !18365
  store i64 0, ptr %i.al, align 8, !dbg !18365, !alias.scope !18368
  call fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream12LogMetaBlockNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocNCNvXs4_NtB4_6writerINtB25_24CompressorWriterCustomIoNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorINtNtCsjPfRcqrlXv6_19brotli_decompressor11io_wrappers12IntoIoWriterQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEINtNtB16_10heap_alloc7WrapBoxhEB12_EINtB3u_11CustomWriteB2O_E5write0ECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.b, i64 noundef 1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @169, ptr noalias noundef align 8 dereferenceable(8) %8, ptr noalias noundef readonly align 8 captures(address) dereferenceable(152) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %6, i8 noundef 4), !dbg !18371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18373
  br label %bb.g, !dbg !18374

bb.i:                                             ; preds = %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream18JumpToByteBoundary.exit8, %bb.g
  ret void, !dbg !18375

bb.j:                                             ; preds = %bb.g
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef 1, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull %10, i64 noundef %11), !dbg !18376
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef 1, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull %10, i64 noundef %11), !dbg !18377
  call void @llvm.experimental.noalias.scope.decl(metadata !18378), !dbg !18381
  call void @llvm.experimental.noalias.scope.decl(metadata !18382), !dbg !18381
  %i.am = load i64, ptr %9, align 8, !dbg !18384, !alias.scope !18378, !noalias !18382, !noundef !14
  %i.an = add i64 %i.am, 7, !dbg !18386
  %i.ao = and i64 %i.an, 4294967288, !dbg !18388  ; 2 uses
  store i64 %i.ao, ptr %9, align 8, !dbg !18388, !alias.scope !18378, !noalias !18382
  %i.ap = lshr exact i64 %i.ao, 3, !dbg !18389    ; 3 uses
  %i.aq = icmp samesign ult i64 %i.ap, %11, !dbg !18390
  br i1 %i.aq, label %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream18JumpToByteBoundary.exit8, label %bb.k, !dbg !18390

bb.k:                                             ; preds = %bb.j
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ap, i64 noundef range(i64 0, -9223372036854775808) %11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @516) #18, !dbg !18390, !noalias !18391
  unreachable, !dbg !18390

_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream18JumpToByteBoundary.exit8: ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 %i.ap, !dbg !18390
  store i8 0, ptr %i.ar, align 1, !dbg !18390, !alias.scope !18382, !noalias !18378
  br label %bb.i, !dbg !18381
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFastNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull %0, ptr noalias noundef nonnull readonly align 4 captures(none) %1, i64 noundef range(i64 0, 2305843009213693952) %2, i64 noundef %3, i64 noundef %4, ptr noalias nofree noundef nonnull captures(address, read_provenance) %5, i64 noundef range(i64 0, -9223372036854775808) %6, ptr noalias noundef nonnull align 2 %7, i64 noundef range(i64 0, 4611686018427387904) %8, ptr noalias noundef align 8 dereferenceable(8) %9, ptr noalias noundef nonnull %10, i64 noundef range(i64 0, -9223372036854775808) %11) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18392 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 4                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18393
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false), !dbg !18395
  %i.d = icmp eq i64 %3, 0, !dbg !18396
  br i1 %i.d, label %._crit_edge.thread, label %.lr.ph.preheader, !dbg !18396

.lr.ph.preheader:                                 ; preds = %bb.a
  %exitcond.not764 = icmp eq i64 %2, 0, !dbg !18400
  br i1 %exitcond.not764, label %.lr.ph._crit_edge, label %.lr.ph768, !dbg !18400

._crit_edge:                                      ; preds = %bb.bg
  %i.e = icmp ult i64 %.sroa.02.1, 2, !dbg !18401
  br i1 %i.e, label %._crit_edge.thread, label %bb.b, !dbg !18401

.lr.ph:                                           ; preds = %bb.bg
  %exitcond.not = icmp eq i64 %i.gv, %2, !dbg !18400
  br i1 %exitcond.not, label %.lr.ph._crit_edge, label %.lr.ph768, !dbg !18400

bb.b:                                             ; preds = %._crit_edge
  %.not.not = icmp samesign ult i64 %.sroa.012.0354767, %6
  br i1 %.not.not, label %._crit_edge361, label %bb.c, !dbg !18402, !prof !5881

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  tail call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef 4, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull %10, i64 noundef %11), !dbg !18411
  %i.f = trunc i64 %4 to i8, !dbg !18412
  %i.g = load i64, ptr %i.c, align 8, !dbg !18413, !noundef !14 ; 7 uses
  tail call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef %i.f, i64 noundef %i.g, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull %10, i64 noundef %11), !dbg !18414
  %i.h = icmp ult i64 %i.g, %6, !dbg !18415
  br i1 %i.h, label %bb.bb, label %bb.bc, !dbg !18415

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.gv, i64 noundef %6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #18, !dbg !18416
  unreachable, !dbg !18416

._crit_edge361:                                   ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %5, i8 0, i64 %i.gv, i1 false), !dbg !18417
  %i.i = shl nuw i64 %i.gv, 1, !dbg !18420
  %i.j = or disjoint i64 %i.i, 1, !dbg !18423
  %i.k = tail call { ptr, i64 } @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14combined_alloc8alloc_ifNtNtB4_14entropy_encode11HuffmanTreeNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(i1 noundef zeroext true, ptr noalias noundef nonnull %0, i64 noundef %i.j), !dbg !18426 ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0, !dbg !18426 ; 18 uses
  %i.m = extractvalue { ptr, i64 } %i.k, 1, !dbg !18426 ; 22 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.first_iter = icmp samesign ult i64 %.sroa.012.0354767, %2
  br label %.lr.ph365.preheader, !dbg !18430

.lr.ph365.preheader:                              ; preds = %._crit_edge361, %.thread236
  %.sroa.024.0 = phi i32 [ 1, %._crit_edge361 ], [ %i.as, %.thread236 ], !dbg !18433 ; 3 uses
  br label %.lr.ph365, !dbg !18434

.lr.ph365:                                        ; preds = %.lr.ph365.preheader, %bb.ay
  %.sroa.027.0363 = phi i32 [ %.sroa.027.2, %bb.ay ], [ 0, %.lr.ph365.preheader ] ; 3 uses
  %.sroa.037.0362 = phi i64 [ %i.o, %bb.ay ], [ %i.gv, %.lr.ph365.preheader ]
  %i.o = add nsw i64 %.sroa.037.0362, -1, !dbg !18437 ; 5 uses
  br i1 %.first_iter, label %bb.ax, label %.invoke702, !dbg !18434

.thread:                                          ; preds = %.invoke, %13
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.e, !dbg !18440

.loopexit239:                                     ; preds = %._crit_edge366
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %._crit_edge.i.invoke, %.invoke702, %.split382.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit239
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit239 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.p = icmp eq i64 %i.m, 0, !dbg !18440
  br i1 %i.p, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode11HuffmanTreeEECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !18440

bb.e:                                             ; preds = %.thread, %bb.d
  %lpad.phi234 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread ], [ %lpad.phi, %bb.d ]
  %i.q = shl nuw nsw i64 %i.m, 3, !dbg !18444
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef range(i64 1, 0) %i.q, i64 noundef 4) #19, !dbg !18447
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode11HuffmanTreeEECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !18452

._crit_edge366:                                   ; preds = %bb.ay
  %i.r = add i32 %.sroa.027.2, 1, !dbg !18453     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.s = sext i32 %.sroa.027.2 to i64, !dbg !18456
  invoke void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode20SortHuffmanTreeItemsNtNtB4_17brotli_bit_stream21SimpleSortHuffmanTreeECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 4 %i.l, i64 noundef %i.m, i64 noundef %i.s)
          to label %bb.f unwind label %.loopexit239, !dbg !18459

bb.f:                                             ; preds = %._crit_edge366
  %i.t = zext i32 %i.r to i64, !dbg !18460        ; 3 uses
  %i.u = icmp ugt i64 %i.m, %i.t, !dbg !18462
  br i1 %i.u, label %bb.g, label %.invoke702, !dbg !18462

.invoke702.loopexit780.split.loop.exit856:        ; preds = %bb.az
  %.not171.le = icmp ult i32 %i.gg, %.sroa.024.0
  %.708.le = select i1 %.not171.le, ptr @189, ptr @190
  br label %.invoke702, !dbg !18463

.invoke702:                                       ; preds = %bb.f, %.invoke702.loopexit780.split.loop.exit856, %.lr.ph365, %.lr.ph374
  %i.v = phi i64 [ %i.o, %.lr.ph365 ], [ %i.ep, %.lr.ph374 ], [ %i.gj, %.invoke702.loopexit780.split.loop.exit856 ], [ %i.t, %bb.f ]
  %i.w = phi i64 [ %2, %.lr.ph365 ], [ %i.m, %.lr.ph374 ], [ %i.m, %.invoke702.loopexit780.split.loop.exit856 ], [ %i.m, %bb.f ]
  %i.x = phi ptr [ @188, %.lr.ph365 ], [ @181, %.lr.ph374 ], [ %.708.le, %.invoke702.loopexit780.split.loop.exit856 ], [ @172, %bb.f ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x) #20
          to label %.cont703 unwind label %.loopexit.split-lp, !dbg !18463

.cont703:                                         ; preds = %.invoke702
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.t, !dbg !18462
  %i.z = zext i32 %.sroa.027.2 to i64, !dbg !18464 ; 3 uses
  %i.aa = icmp ugt i64 %i.m, %i.z, !dbg !18465
  store i64 -1, ptr %i.y, align 4, !dbg !18462
  br i1 %i.aa, label %bb.h, label %.invoke, !dbg !18465

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.z, !dbg !18465
  %.sroa.060.0368 = add i32 %.sroa.027.2, -1, !dbg !18466
  %i.ac = icmp sgt i32 %.sroa.060.0368, 0, !dbg !18467
  store i64 -1, ptr %i.ab, align 4, !dbg !18465
  br i1 %i.ac, label %.lr.ph374.preheader, label %.._crit_edge375_crit_edge, !dbg !18467

.._crit_edge375_crit_edge:                        ; preds = %bb.h
  %.pre529 = shl i32 %.sroa.027.2, 1, !dbg !18468
  br label %._crit_edge375, !dbg !18467

.lr.ph374.preheader:                              ; preds = %bb.h
  %i.ad = add nuw i32 %.sroa.027.2, 2, !dbg !18469
  %i.ae = shl i32 %.sroa.027.2, 1, !dbg !18472    ; 2 uses
  br label %.lr.ph374, !dbg !18472

._crit_edge375:                                   ; preds = %bb.aw, %.._crit_edge375_crit_edge
  %.pre-phi530 = phi i32 [ %.pre529, %.._crit_edge375_crit_edge ], [ %i.ae, %bb.aw ], !dbg !18468
  %i.af = add i32 %.pre-phi530, -1, !dbg !18468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18475), !dbg !18478
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18479), !dbg !18478
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18481, !noalias !18486
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.n, i8 0, i64 60, i1 false), !dbg !18487, !noalias !18486
  store i32 -1, ptr %i.b, align 4, !dbg !18488, !noalias !18486
  %i.ag = sext i32 %i.af to i64, !dbg !18492      ; 3 uses
  %i.ah = icmp ugt i64 %i.m, %i.ag, !dbg !18493
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge.i.invoke, !dbg !18493

.lr.ph.i:                                         ; preds = %._crit_edge375, %.backedge.i
  %i.ai = phi i64 [ %i.be, %.backedge.i ], [ %i.ag, %._crit_edge375 ]
  %.sroa.05.047.i = phi i32 [ %.sroa.05.0.be.i, %.backedge.i ], [ 0, %._crit_edge375 ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ai, !dbg !18493 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4, !dbg !18493
  %i.al = load i16, ptr %i.ak, align 4, !dbg !18493, !alias.scope !18475, !noalias !18479, !noundef !14 ; 2 uses
  %i.am = icmp slt i16 %i.al, 0, !dbg !18493
  br i1 %i.am, label %bb.j, label %bb.i, !dbg !18493

._crit_edge.i.invoke:                             ; preds = %._crit_edge375, %bb.m, %bb.k, %.backedge.i
  %i.an = phi i64 [ %12, %bb.k ], [ %i.be, %.backedge.i ], [ %i.bg, %bb.m ], [ %i.ag, %._crit_edge375 ]
  %i.ao = phi i64 [ 16, %bb.k ], [ %i.m, %.backedge.i ], [ 16, %bb.m ], [ %i.m, %._crit_edge375 ]
  %i.ap = phi ptr [ @514, %bb.k ], [ @512, %.backedge.i ], [ @515, %bb.m ], [ @512, %._crit_edge375 ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.an, i64 noundef %i.ao, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap) #18
          to label %._crit_edge.i.cont unwind label %.loopexit.split-lp, !dbg !18494

._crit_edge.i.cont:                               ; preds = %._crit_edge.i.invoke
  unreachable

bb.i:                                             ; preds = %.lr.ph.i
  %i.aq = add i32 %.sroa.05.047.i, 1, !dbg !18495 ; 4 uses
  %i.ar = icmp sgt i32 %i.aq, 14, !dbg !18496
  br i1 %i.ar, label %.thread236, label %bb.m, !dbg !18496

.thread236:                                       ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18497, !noalias !18486
  %i.as = shl i32 %.sroa.024.0, 1, !dbg !18498
  br label %.lr.ph365.preheader, !dbg !18430

bb.j:                                             ; preds = %.lr.ph.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 6, !dbg !18501
  %i.au = load i16, ptr %i.at, align 2, !dbg !18501, !alias.scope !18475, !noalias !18479, !noundef !14
  %i.av = sext i16 %i.au to i64, !dbg !18502      ; 3 uses
  %i.aw = icmp ugt i64 %6, %i.av, !dbg !18504
  br i1 %i.aw, label %bb.k, label %13, !dbg !18504

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 %i.av, !dbg !18504
  %i.ay = trunc i32 %.sroa.05.047.i to i8, !dbg !18504
  store i8 %i.ay, ptr %i.ax, align 1, !dbg !18504, !alias.scope !18479, !noalias !18475
  %12 = zext i32 %.sroa.05.047.i to i64, !dbg !18505 ; 2 uses
  %.first_iter.i = icmp ult i32 %.sroa.05.047.i, 16, !dbg !18505
  br i1 %.first_iter.i, label %.split.us, label %._crit_edge.i.invoke, !dbg !18506

13:                                               ; preds = %bb.j
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.av, i64 noundef range(i64 0, -9223372036854775808) %6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @513) #18
          to label %.noexc210 unwind label %.thread, !dbg !18504

.noexc210:                                        ; preds = %13
  unreachable, !dbg !18504

.split.us:                                        ; preds = %bb.k, %bb.l
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ %12, %bb.k ] ; 5 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv, !dbg !18506
  %i.ba = load i32, ptr %i.az, align 4, !dbg !18506, !noalias !18486, !noundef !14 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, -1, !dbg !18507
  br i1 %i.bb, label %bb.l, label %.split378.us, !dbg !18507

bb.l:                                             ; preds = %.split.us
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !18508
  %.not.i.us = icmp eq i64 %indvars.iv, 0, !dbg !18505
  br i1 %.not.i.us, label %.split382.us, label %.split.us, !dbg !18505

.split378.us:                                     ; preds = %.split.us
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.bd = trunc nuw i64 %indvars.iv to i32, !dbg !18509
  store i32 -1, ptr %i.bc, align 4, !dbg !18510, !noalias !18486
  br label %.backedge.i, !dbg !18511

.backedge.i:                                      ; preds = %bb.n, %.split378.us
  %.sroa.05.0.be.i = phi i32 [ %i.aq, %bb.n ], [ %i.bd, %.split378.us ]
  %.sroa.0.0.be.i = phi i32 [ %i.bm, %bb.n ], [ %i.ba, %.split378.us ]
  %i.be = sext i32 %.sroa.0.0.be.i to i64, !dbg !18492 ; 3 uses
  %i.bf = icmp ugt i64 %i.m, %i.be, !dbg !18493
  br i1 %i.bf, label %.lr.ph.i, label %._crit_edge.i.invoke, !dbg !18493

bb.m:                                             ; preds = %bb.i
  %i.bg = sext i32 %i.aq to i64, !dbg !18512      ; 2 uses
  %i.bh = icmp ult i32 %i.aq, 16, !dbg !18513
  br i1 %i.bh, label %bb.n, label %._crit_edge.i.invoke, !dbg !18513

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 6, !dbg !18514
  %i.bj = load i16, ptr %i.bi, align 2, !dbg !18514, !alias.scope !18475, !noalias !18479, !noundef !14
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bg, !dbg !18513
  %i.bl = sext i16 %i.bj to i32, !dbg !18513
  store i32 %i.bl, ptr %i.bk, align 4, !dbg !18513, !noalias !18486
  %i.bm = zext nneg i16 %i.al to i32, !dbg !18515
  br label %.backedge.i, !dbg !18516

.split382.us:                                     ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18497, !noalias !18486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18518
  store i64 0, ptr %i.a, align 8, !dbg !18518
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !18518
  store ptr inttoptr (i64 4 to ptr), ptr %i.bn, align 8, !dbg !18518
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !18518
  store i64 0, ptr %i.bo, align 8, !dbg !18518
  %i.bp = invoke { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode11HuffmanTreeE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.o unwind label %.loopexit.split-lp, !dbg !18523 ; 2 uses

bb.o:                                             ; preds = %.split382.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18524
  %i.bq = extractvalue { ptr, i64 } %i.bp, 1, !dbg !18525 ; 2 uses
  %i.br = shl nuw nsw i64 %i.m, 3, !dbg !18526
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.l, i64 noundef range(i64 1, 0) %i.br, i64 noundef 4) #19, !dbg !18533
  %i.bs = icmp eq i64 %i.bq, 0, !dbg !18538
  br i1 %i.bs, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode11HuffmanTreeEECsfISxE4fmY1Y_14polars_parquet.exit214, label %bb.p, !dbg !18538

bb.p:                                             ; preds = %bb.o
  %i.bt = extractvalue { ptr, i64 } %i.bp, 0, !dbg !18525 ; 2 uses
  %i.bu = shl nuw nsw i64 %i.bq, 3, !dbg !18542
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bt) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bt, i64 noundef range(i64 1, 0) %i.bu, i64 noundef 4) #19, !dbg !18545
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode11HuffmanTreeEECsfISxE4fmY1Y_14polars_parquet.exit214, !dbg !18550

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode11HuffmanTreeEECsfISxE4fmY1Y_14polars_parquet.exit214: ; preds = %bb.o, %bb.p
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode31BrotliConvertBitDepthsToSymbols(ptr noalias noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %i.gv, ptr noalias noundef nonnull align 2 %7, i64 noundef %8), !dbg !18551
  %i.bv = icmp ult i64 %.sroa.02.1, 5, !dbg !18552
  br i1 %i.bv, label %bb.q, label %.split388.preheader, !dbg !18552

.split388.preheader:                              ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode11HuffmanTreeEECsfISxE4fmY1Y_14polars_parquet.exit214
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream25StoreStaticCodeLengthCode(ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull %10, i64 noundef %11), !dbg !18553
  br label %.split388, !dbg !18556

bb.q:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode11HuffmanTreeEECsfISxE4fmY1Y_14polars_parquet.exit214
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef 2, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull %10, i64 noundef %11), !dbg !18560
  %i.bw = add nsw i64 %.sroa.02.1, -1, !dbg !18561
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef 2, i64 noundef %i.bw, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull %10, i64 noundef %11), !dbg !18563
  br label %bb.ae, !dbg !18564

.split388:                                        ; preds = %.split388.preheader, %.loopexit237
  %.sroa.084.0401 = phi i8 [ %.sroa.084.1, %.loopexit237 ], [ 8, %.split388.preheader ] ; 2 uses
  %.sroa.085.0400 = phi i64 [ %.pre-phi591, %.loopexit237 ], [ 0, %.split388.preheader ] ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 %.sroa.085.0400, !dbg !18571
  %i.by = load i8, ptr %i.bx, align 1, !dbg !18571, !noundef !14 ; 11 uses
  %.sroa.0100.0389 = add nuw nsw i64 %.sroa.085.0400, 1, !dbg !18572 ; 3 uses
  %i.bz = icmp ult i64 %.sroa.085.0400, %.sroa.012.0354767, !dbg !18556
  br i1 %i.bz, label %.lr.ph392.preheader, label %._crit_edge393.thread, !dbg !18556

.lr.ph392.preheader:                              ; preds = %.split388
  %i.ca = sub nsw i64 %i.gv, %.sroa.085.0400, !dbg !18574
  br label %.lr.ph392, !dbg !18574

.lr.ph392:                                        ; preds = %.lr.ph392.preheader, %bb.r
  %.sroa.0100.0391 = phi i64 [ %.sroa.0100.0, %bb.r ], [ %.sroa.0100.0389, %.lr.ph392.preheader ] ; 3 uses
  %.sroa.089.0390 = phi i64 [ %i.cg, %bb.r ], [ 1, %.lr.ph392.preheader ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 %.sroa.0100.0391, !dbg !18575
  %i.cc = load i8, ptr %i.cb, align 1, !dbg !18575, !noundef !14
  %i.cd = icmp eq i8 %i.cc, %i.by, !dbg !18574
  br i1 %i.cd, label %bb.r, label %._crit_edge393, !dbg !18574

._crit_edge393:                                   ; preds = %bb.r, %.lr.ph392
  %.sroa.089.0.lcssa.ph = phi i64 [ %i.ca, %bb.r ], [ %.sroa.089.0390, %.lr.ph392 ] ; 5 uses
  %.pre = add i64 %.sroa.089.0.lcssa.ph, %.sroa.085.0400, !dbg !18576 ; 2 uses
  %i.ce = icmp eq i8 %i.by, 0, !dbg !18578
  br i1 %i.ce, label %bb.s, label %bb.t, !dbg !18578

._crit_edge393.thread:                            ; preds = %.split388
  %i.cf = icmp eq i8 %i.by, 0, !dbg !18578
  br i1 %i.cf, label %.thread596, label %bb.t, !dbg !18578

bb.r:                                             ; preds = %.lr.ph392
  %i.cg = add nuw nsw i64 %.sroa.089.0390, 1, !dbg !18579
  %.sroa.0100.0 = add i64 %.sroa.0100.0391, 1, !dbg !18572
  %exitcond525.not = icmp eq i64 %.sroa.0100.0391, %.sroa.012.0354767, !dbg !18556
  br i1 %exitcond525.not, label %._crit_edge393, label %.lr.ph392, !dbg !18556

bb.s:                                             ; preds = %._crit_edge393
  %i.ch = icmp ult i64 %.sroa.089.0.lcssa.ph, 704, !dbg !18581
  br i1 %i.ch, label %.thread596, label %bb.u, !dbg !18581

bb.t:                                             ; preds = %._crit_edge393.thread, %._crit_edge393
  %.sroa.089.0.lcssa594 = phi i64 [ 1, %._crit_edge393.thread ], [ %.sroa.089.0.lcssa.ph, %._crit_edge393 ] ; 2 uses
  %.pre-phi592 = phi i64 [ %.sroa.0100.0389, %._crit_edge393.thread ], [ %.pre, %._crit_edge393 ] ; 3 uses
  %.not172 = icmp eq i8 %.sroa.084.0401, %i.by, !dbg !18582
  br i1 %.not172, label %bb.w, label %bb.v, !dbg !18582

bb.u:                                             ; preds = %bb.s
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.089.0.lcssa.ph, i64 noundef 704, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @174) #18, !dbg !18581
  unreachable, !dbg !18581

.thread596:                                       ; preds = %._crit_edge393.thread, %bb.s
  %.pre-phi593600 = phi i64 [ %.pre, %bb.s ], [ %.sroa.0100.0389, %._crit_edge393.thread ]
  %.sroa.089.0.lcssa595599 = phi i64 [ %.sroa.089.0.lcssa.ph, %bb.s ], [ 1, %._crit_edge393.thread ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc9constants14kZeroRepsDepth, i64 %.sroa.089.0.lcssa595599, !dbg !18581
  %i.cj = load i32, ptr %i.ci, align 4, !dbg !18581, !noundef !14
  %i.ck = trunc i32 %i.cj to i8, !dbg !18581
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc9constants13kZeroRepsBits, i64 %.sroa.089.0.lcssa595599, !dbg !18583
  %i.cm = load i64, ptr %i.cl, align 8, !dbg !18583, !noundef !14
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef %i.ck, i64 noundef %i.cm, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull %10, i64 noundef %11), !dbg !18584
  br label %.loopexit237, !dbg !18585

.loopexit237:                                     ; preds = %.lr.ph398.split, %.preheader, %bb.ab, %.thread596
  %.pre-phi591 = phi i64 [ %.pre-phi593600, %.thread596 ], [ %.pre-phi592, %bb.ab ], [ %.pre-phi592, %.preheader ], [ %.pre-phi592, %.lr.ph398.split ] ; 2 uses
  %.sroa.084.1 = phi i8 [ %.sroa.084.0401, %.thread596 ], [ %i.by, %bb.ab ], [ %i.by, %.preheader ], [ %i.by, %.lr.ph398.split ], !dbg !18586
  %.not = icmp ugt i64 %.pre-phi591, %.sroa.012.0354767, !dbg !18587
  br i1 %.not, label %.loopexit238, label %.split388, !dbg !18587

bb.v:                                             ; preds = %bb.t
  %i.cn = zext i8 %i.by to i64, !dbg !18588       ; 3 uses
  %i.co = icmp ult i8 %i.by, 18, !dbg !18589
  br i1 %i.co, label %bb.x, label %bb.y, !dbg !18589

bb.w:                                             ; preds = %bb.t, %bb.x
  %.sroa.089.1 = phi i64 [ %i.da, %bb.x ], [ %.sroa.089.0.lcssa594, %bb.t ], !dbg !18590 ; 4 uses
  %i.cp = icmp ult i64 %.sroa.089.1, 3, !dbg !18591
  br i1 %i.cp, label %.preheader, label %bb.z, !dbg !18591

.preheader:                                       ; preds = %bb.w
  %i.cq = icmp eq i64 %.sroa.089.1, 0, !dbg !18592
  br i1 %i.cq, label %.loopexit237, label %.lr.ph398, !dbg !18592

.lr.ph398:                                        ; preds = %.preheader
  %i.cr = zext i8 %i.by to i64                    ; 3 uses
  %i.cs = icmp ult i8 %i.by, 18
  %i.ct = getelementptr inbounds nuw i8, ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc9constants16kCodeLengthDepth, i64 %i.cr
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc9constants15kCodeLengthBits, i64 %i.cr
  br i1 %i.cs, label %.lr.ph398.split, label %bb.ac, !dbg !18593

bb.x:                                             ; preds = %bb.v
  %i.cv = getelementptr inbounds nuw i8, ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc9constants16kCodeLengthDepth, i64 %i.cn, !dbg !18589
  %i.cw = load i8, ptr %i.cv, align 1, !dbg !18589, !noundef !14
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc9constants15kCodeLengthBits, i64 %i.cn, !dbg !18594
  %i.cy = load i32, ptr %i.cx, align 4, !dbg !18594, !noundef !14
  %i.cz = zext i32 %i.cy to i64, !dbg !18594
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef %i.cw, i64 noundef %i.cz, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull %10, i64 noundef %11), !dbg !18595
  %i.da = add i64 %.sroa.089.0.lcssa594, -1, !dbg !18596
  br label %bb.w, !dbg !18598

bb.y:                                             ; preds = %bb.v
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.cn, i64 noundef 18, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @175) #18, !dbg !18589
  unreachable, !dbg !18589

bb.z:                                             ; preds = %bb.w
  %i.db = add i64 %.sroa.089.1, -3, !dbg !18599   ; 4 uses
  %i.dc = icmp ult i64 %i.db, 704, !dbg !18601
  br i1 %i.dc, label %bb.ab, label %bb.aa, !dbg !18601

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.db, i64 noundef 704, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @176) #18, !dbg !18601
  unreachable, !dbg !18601

bb.ab:                                            ; preds = %bb.z
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc9constants17kNonZeroRepsDepth, i64 %i.db, !dbg !18601
  %i.de = load i32, ptr %i.dd, align 4, !dbg !18601, !noundef !14
  %i.df = trunc i32 %i.de to i8, !dbg !18601
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc9constants16kNonZeroRepsBits, i64 %i.db, !dbg !18602
  %i.dh = load i64, ptr %i.dg, align 8, !dbg !18602, !noundef !14
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef %i.df, i64 noundef %i.dh, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull %10, i64 noundef %11), !dbg !18603
  br label %.loopexit237, !dbg !18604

.lr.ph398.split:                                  ; preds = %.lr.ph398, %.lr.ph398.split
  %.sroa.089.2397 = phi i64 [ %i.di, %.lr.ph398.split ], [ %.sroa.089.1, %.lr.ph398 ]
  %i.di = add nsw i64 %.sroa.089.2397, -1, !dbg !18605 ; 2 uses
  %i.dj = load i8, ptr %i.ct, align 1, !dbg !18593, !noundef !14
  %i.dk = load i32, ptr %i.cu, align 4, !dbg !18607, !noundef !14
  %i.dl = zext i32 %i.dk to i64, !dbg !18607
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef %i.dj, i64 noundef %i.dl, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull %10, i64 noundef %11), !dbg !18608
  %i.dm = icmp eq i64 %i.di, 0, !dbg !18592
  br i1 %i.dm, label %.loopexit237, label %.lr.ph398.split, !dbg !18592

bb.ac:                                            ; preds = %.lr.ph398
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.cr, i64 noundef 18, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @177) #18, !dbg !18593
  unreachable, !dbg !18593

.loopexit:                                        ; preds = %bb.ap, %bb.ae
  %exitcond527.not = icmp eq i64 %i.dr, %.sroa.02.1, !dbg !18609
  br i1 %exitcond527.not, label %bb.ad, label %bb.ae, !dbg !18564
end_hunk_0
begin_hunk_1_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock31ContextBlockSplitterFinishBlockNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB1c_ECsfISxE4fmY1Y_14polars_parquet:bb.a
  %i.kl = add nuw nsw i64 %i.d, 9, !dbg !32294    ; 2 uses
  %exitcond335.9.not = icmp eq i64 %i.gs, 9, !dbg !32216
  br i1 %exitcond335.9.not, label %.invoke424, label %bb.bx, !dbg !32216

bb.bx:                                            ; preds = %bb.bw
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 116, !dbg !32288 ; 2 uses
  %i.kn = load float, ptr %i.km, align 4, !dbg !32288, !noundef !14
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.kl, !dbg !32216
  store float %i.kn, ptr %i.ko, align 4, !dbg !32216
  %i.kp = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !32289
  %i.kq = load float, ptr %i.kp, align 4, !dbg !32289, !noundef !14
  store float %i.kq, ptr %i.km, align 4, !dbg !32290
  %exitcond337.9.not = icmp eq i64 %i.d, 10, !dbg !32291
  br i1 %exitcond337.9.not, label %._crit_edge236, label %bb.by, !dbg !32210

bb.by:                                            ; preds = %bb.bx
  %i.kr = add nuw nsw i64 %i.d, 10, !dbg !32294   ; 2 uses
  %exitcond335.10.not = icmp eq i64 %i.gs, 10, !dbg !32216
  br i1 %exitcond335.10.not, label %.invoke424, label %bb.bz, !dbg !32216

bb.bz:                                            ; preds = %bb.by
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !32288 ; 2 uses
  %i.kt = load float, ptr %i.ks, align 8, !dbg !32288, !noundef !14
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.kr, !dbg !32216
  store float %i.kt, ptr %i.ku, align 4, !dbg !32216
  %i.kv = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !32289
  %i.kw = load float, ptr %i.kv, align 4, !dbg !32289, !noundef !14
  store float %i.kw, ptr %i.ks, align 8, !dbg !32290
  %exitcond337.10.not = icmp eq i64 %i.d, 11, !dbg !32291
  br i1 %exitcond337.10.not, label %._crit_edge236, label %bb.ca, !dbg !32210

bb.ca:                                            ; preds = %bb.bz
  %i.kx = add nuw nsw i64 %i.d, 11, !dbg !32294   ; 2 uses
  %exitcond335.11.not = icmp eq i64 %i.gs, 11, !dbg !32216
  br i1 %exitcond335.11.not, label %.invoke424, label %bb.cb, !dbg !32216

bb.cb:                                            ; preds = %bb.ca
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 124, !dbg !32288 ; 2 uses
  %i.kz = load float, ptr %i.ky, align 4, !dbg !32288, !noundef !14
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.kx, !dbg !32216
  store float %i.kz, ptr %i.la, align 4, !dbg !32216
  %i.lb = getelementptr inbounds nuw i8, ptr %i.b, i64 44, !dbg !32289
  %i.lc = load float, ptr %i.lb, align 4, !dbg !32289, !noundef !14
  store float %i.lc, ptr %i.ky, align 4, !dbg !32290
  %exitcond337.11.not = icmp eq i64 %i.d, 12, !dbg !32291
  br i1 %exitcond337.11.not, label %._crit_edge236, label %bb.cc, !dbg !32210

bb.cc:                                            ; preds = %bb.cb
  %i.ld = add nuw nsw i64 %i.d, 12, !dbg !32294   ; 2 uses
  %exitcond335.12.not = icmp eq i64 %i.gs, 12, !dbg !32216
  br i1 %exitcond335.12.not, label %.invoke424, label %bb.cd, !dbg !32216

bb.cd:                                            ; preds = %bb.cc
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !32288 ; 2 uses
  %i.lf = load float, ptr %i.le, align 8, !dbg !32288, !noundef !14
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.ld, !dbg !32216
  store float %i.lf, ptr %i.lg, align 4, !dbg !32216
  %i.lh = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !32289
  %i.li = load float, ptr %i.lh, align 4, !dbg !32289, !noundef !14
  store float %i.li, ptr %i.le, align 8, !dbg !32290
  %exitcond337.12.not = icmp eq i64 %i.d, 13, !dbg !32291
  br i1 %exitcond337.12.not, label %._crit_edge236, label %bb.ce, !dbg !32210

bb.ce:                                            ; preds = %bb.cd
  %i.lj = add nuw nsw i64 %i.d, 13, !dbg !32294   ; 2 uses
  %exitcond335.13.not = icmp eq i64 %i.gs, 13, !dbg !32216
  br i1 %exitcond335.13.not, label %.invoke424, label %bb.cf, !dbg !32216

bb.cf:                                            ; preds = %bb.ce
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 132, !dbg !32288
  %i.ll = load float, ptr %i.lk, align 4, !dbg !32288, !noundef !14
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.lj, !dbg !32216
  store float %i.ll, ptr %i.lm, align 4, !dbg !32216
  br label %.invoke424, !dbg !32289

bb.cg:                                            ; preds = %bb.w
  %i.ln = getelementptr inbounds nuw [1040 x i8], ptr %3, i64 %i.cn, !dbg !32038 ; 3 uses
  %i.lo = load i64, ptr %i.bx, align 8, !dbg !32296, !noundef !14
  %i.lp = invoke { float, i64 } @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc8bit_cost15shannon_entropy(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ln, i64 noundef 256, i64 noundef %i.lo)
          to label %bb.ch unwind label %.loopexit.split-lp.loopexit, !dbg !32297 ; 2 uses

bb.ch:                                            ; preds = %bb.cg
  %i.lq = extractvalue { float, i64 } %i.lp, 0, !dbg !32297 ; 2 uses
  %i.lr = extractvalue { float, i64 } %i.lp, 1, !dbg !32297
  %i.ls = uitofp i64 %i.lr to float, !dbg !32299  ; 2 uses
  %i.lt = fcmp olt float %i.lq, %i.ls, !dbg !32301
  %.sroa.010.0 = select i1 %i.lt, float %i.ls, float %i.lq, !dbg !32301 ; 3 uses
  %exitcond311.not = icmp eq i64 %.sroa.023.0222, 13, !dbg !32302
  br i1 %exitcond311.not, label %.invoke424, label %bb.ci, !dbg !32302

bb.ci:                                            ; preds = %bb.ch
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.sroa.023.0222, !dbg !32302
  store float %.sroa.010.0, ptr %i.lu, align 4, !dbg !32302
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bu) ]
  %i.lv = load i64, ptr %0, align 8, !dbg !32303, !noundef !14
  %i.lw = add i64 %i.lv, %.sroa.023.0222, !dbg !32305 ; 3 uses
  %exitcond312.not = icmp eq i64 %.sroa.023.0222, %i.bv, !dbg !32307
  br i1 %exitcond312.not, label %.invoke424, label %bb.cj, !dbg !32307

bb.cj:                                            ; preds = %bb.ci
  %i.lx = getelementptr inbounds nuw [1040 x i8], ptr %i.bu, i64 %.sroa.023.0222, !dbg !32307 ; 9 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.lx, ptr noundef nonnull align 8 dereferenceable(1040) %i.ln, i64 1040, i1 false), !dbg !32307
  %i.ly = icmp ult i64 %i.lw, %4, !dbg !32309
  br i1 %i.ly, label %.noexc117, label %.invoke, !dbg !32309

.noexc117:                                        ; preds = %bb.cj
  %i.lz = getelementptr inbounds nuw [1040 x i8], ptr %3, i64 %i.lw, !dbg !32310 ; 8 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 1024, !dbg !32311 ; 2 uses
  %i.mb = load i64, ptr %i.ma, align 8, !dbg !32311, !alias.scope !32314, !noundef !14
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 1024, !dbg !32317 ; 2 uses
  %i.md = load i64, ptr %i.mc, align 8, !dbg !32317, !alias.scope !32319, !noundef !14
  %i.me = add i64 %i.md, %i.mb, !dbg !32322
  store i64 %i.me, ptr %i.ma, align 8, !dbg !32323, !alias.scope !32325
  %bound0451 = icmp ult ptr %i.bu, %i.mc, !dbg !32328
  %bound1452 = icmp ult ptr %i.lz, %scevgep450, !dbg !32328
  %found.conflict453 = and i1 %bound0451, %bound1452, !dbg !32328
  br i1 %found.conflict453, label %scalar.ph454, label %vector.body456, !dbg !32331

vector.body456:                                   ; preds = %.noexc117, %vector.body456
  %index457 = phi i64 [ %index.next462.1, %vector.body456 ], [ 0, %.noexc117 ], !dbg !32331 ; 4 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %index457, !dbg !32334 ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16, !dbg !32335 ; 2 uses
  %wide.load458 = load <4 x i32>, ptr %i.mf, align 4, !dbg !32335, !alias.scope !32336, !noalias !32339
  %wide.load459 = load <4 x i32>, ptr %i.mg, align 4, !dbg !32335, !alias.scope !32336, !noalias !32339
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %index457, !dbg !32341 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 16, !dbg !32341
  %wide.load460 = load <4 x i32>, ptr %i.mh, align 8, !dbg !32341, !alias.scope !32339
  %wide.load461 = load <4 x i32>, ptr %i.mi, align 8, !dbg !32341, !alias.scope !32339
  %i.mj = add <4 x i32> %wide.load460, %wide.load458, !dbg !32342
  %i.mk = add <4 x i32> %wide.load461, %wide.load459, !dbg !32342
  store <4 x i32> %i.mj, ptr %i.mf, align 4, !dbg !32344, !alias.scope !32336, !noalias !32339
  store <4 x i32> %i.mk, ptr %i.mg, align 4, !dbg !32344, !alias.scope !32336, !noalias !32339
  %index.next462 = or disjoint i64 %index457, 8, !dbg !32331 ; 2 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %index.next462, !dbg !32334 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 16, !dbg !32335 ; 2 uses
  %wide.load458.1 = load <4 x i32>, ptr %i.ml, align 4, !dbg !32335, !alias.scope !32336, !noalias !32339
  %wide.load459.1 = load <4 x i32>, ptr %i.mm, align 4, !dbg !32335, !alias.scope !32336, !noalias !32339
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %index.next462, !dbg !32341 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16, !dbg !32341
  %wide.load460.1 = load <4 x i32>, ptr %i.mn, align 8, !dbg !32341, !alias.scope !32339
  %wide.load461.1 = load <4 x i32>, ptr %i.mo, align 8, !dbg !32341, !alias.scope !32339
  %i.mp = add <4 x i32> %wide.load460.1, %wide.load458.1, !dbg !32342
  %i.mq = add <4 x i32> %wide.load461.1, %wide.load459.1, !dbg !32342
  store <4 x i32> %i.mp, ptr %i.ml, align 4, !dbg !32344, !alias.scope !32336, !noalias !32339
  store <4 x i32> %i.mq, ptr %i.mm, align 4, !dbg !32344, !alias.scope !32336, !noalias !32339
  %index.next462.1 = add nuw nsw i64 %index457, 16, !dbg !32331 ; 2 uses
  %i.mr = icmp eq i64 %index.next462.1, 256, !dbg !32328
  br i1 %i.mr, label %middle.block463, label %vector.body456, !dbg !32328, !llvm.loop !32345

scalar.ph454:                                     ; preds = %.noexc117, %scalar.ph454
  %.sroa.01.0.i220 = phi i64 [ %i.nk, %scalar.ph454 ], [ 0, %.noexc117 ] ; 6 uses
  %i.ms = or disjoint i64 %.sroa.01.0.i220, 1, !dbg !32331 ; 2 uses
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %.sroa.01.0.i220, !dbg !32334 ; 2 uses
  %i.mu = load i32, ptr %i.mt, align 4, !dbg !32335, !noundef !14
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %.sroa.01.0.i220, !dbg !32341
  %i.mw = load i32, ptr %i.mv, align 8, !dbg !32341, !noundef !14
  %i.mx = add i32 %i.mw, %i.mu, !dbg !32342
  store i32 %i.mx, ptr %i.mt, align 4, !dbg !32344
  %i.my = or disjoint i64 %.sroa.01.0.i220, 2, !dbg !32331 ; 2 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.ms, !dbg !32334 ; 2 uses
  %i.na = load i32, ptr %i.mz, align 4, !dbg !32335, !noundef !14
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %i.ms, !dbg !32341
  %i.nc = load i32, ptr %i.nb, align 4, !dbg !32341, !noundef !14
  %i.nd = add i32 %i.nc, %i.na, !dbg !32342
  store i32 %i.nd, ptr %i.mz, align 4, !dbg !32344
  %i.ne = or disjoint i64 %.sroa.01.0.i220, 3, !dbg !32331 ; 2 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.my, !dbg !32334 ; 2 uses
  %i.ng = load i32, ptr %i.nf, align 4, !dbg !32335, !noundef !14
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %i.my, !dbg !32341
  %i.ni = load i32, ptr %i.nh, align 8, !dbg !32341, !noundef !14
  %i.nj = add i32 %i.ni, %i.ng, !dbg !32342
  store i32 %i.nj, ptr %i.nf, align 4, !dbg !32344
  %i.nk = add nuw nsw i64 %.sroa.01.0.i220, 4, !dbg !32331 ; 2 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.ne, !dbg !32334 ; 2 uses
  %i.nm = load i32, ptr %i.nl, align 4, !dbg !32335, !noundef !14
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %i.ne, !dbg !32341
  %i.no = load i32, ptr %i.nn, align 4, !dbg !32341, !noundef !14
  %i.np = add i32 %i.no, %i.nm, !dbg !32342
  store i32 %i.np, ptr %i.nl, align 4, !dbg !32344
  %exitcond.not.3 = icmp eq i64 %i.nk, 256, !dbg !32346
  br i1 %exitcond.not.3, label %middle.block463, label %scalar.ph454, !dbg !32328, !llvm.loop !32348

middle.block463:                                  ; preds = %vector.body456, %scalar.ph454
  %i.nq = load i64, ptr %i.bx, align 8, !dbg !32349, !noundef !14
  %i.nr = invoke { float, i64 } @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc8bit_cost15shannon_entropy(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.lx, i64 noundef 256, i64 noundef %i.nq)
          to label %bb.ck unwind label %.loopexit161, !dbg !32350 ; 2 uses

bb.ck:                                            ; preds = %middle.block463
  %i.ns = extractvalue { float, i64 } %i.nr, 0, !dbg !32350 ; 2 uses
  %i.nt = extractvalue { float, i64 } %i.nr, 1, !dbg !32350
  %i.nu = uitofp i64 %i.nt to float, !dbg !32352  ; 2 uses
  %i.nv = fcmp olt float %i.ns, %i.nu, !dbg !32354
  %.sroa.012.0 = select i1 %i.nv, float %i.nu, float %i.ns, !dbg !32354 ; 2 uses
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.023.0222, !dbg !32355
  store float %.sroa.012.0, ptr %i.nw, align 4, !dbg !32355
  %i.nx = fsub float %.sroa.012.0, %.sroa.010.0, !dbg !32356
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.sroa.023.0222, !dbg !32357
  %i.nz = load float, ptr %i.ny, align 4, !dbg !32357, !noundef !14
  %i.oa = fsub float %i.nx, %i.nz, !dbg !32356
  %i.ob = fadd float %.sroa.0.1, %i.oa, !dbg !32358 ; 2 uses
  %i.oc = add nuw i64 %i.d, %.sroa.023.0222, !dbg !32359 ; 5 uses
  %i.od = load i64, ptr %i.cb, align 8, !dbg !32303, !noundef !14
  %i.oe = add i64 %i.od, %.sroa.023.0222, !dbg !32305 ; 3 uses
  %exitcond313.not = icmp eq i64 %.sroa.023.0222, %i.bz, !dbg !32307
  br i1 %exitcond313.not, label %.invoke424, label %bb.cl, !dbg !32307

bb.cl:                                            ; preds = %bb.ck
  %i.of = getelementptr inbounds nuw [1040 x i8], ptr %i.bu, i64 %i.oc, !dbg !32307 ; 9 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.of, ptr noundef nonnull align 8 dereferenceable(1040) %i.ln, i64 1040, i1 false), !dbg !32307
  %i.og = icmp ult i64 %i.oe, %4, !dbg !32309
  br i1 %i.og, label %.noexc117.1, label %.invoke, !dbg !32309

.noexc117.1:                                      ; preds = %bb.cl
  %i.oh = getelementptr inbounds nuw [1040 x i8], ptr %3, i64 %i.oe, !dbg !32310 ; 8 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.of, i64 1024, !dbg !32311 ; 2 uses
  %i.oj = load i64, ptr %i.oi, align 8, !dbg !32311, !alias.scope !32314, !noundef !14
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oh, i64 1024, !dbg !32317 ; 2 uses
  %i.ol = load i64, ptr %i.ok, align 8, !dbg !32317, !alias.scope !32319, !noundef !14
  %i.om = add i64 %i.ol, %i.oj, !dbg !32322
  store i64 %i.om, ptr %i.oi, align 8, !dbg !32323, !alias.scope !32325
  %bound0 = icmp ult ptr %scevgep, %i.ok, !dbg !32328
  %bound1 = icmp ult ptr %i.oh, %scevgep445, !dbg !32328
  %found.conflict = and i1 %bound0, %bound1, !dbg !32328
  br i1 %found.conflict, label %scalar.ph, label %vector.body, !dbg !32331

vector.body:                                      ; preds = %.noexc117.1, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %.noexc117.1 ], !dbg !32331 ; 4 uses
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %index, !dbg !32334 ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 16, !dbg !32335 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.on, align 4, !dbg !32335, !alias.scope !32361, !noalias !32364
  %wide.load446 = load <4 x i32>, ptr %i.oo, align 4, !dbg !32335, !alias.scope !32361, !noalias !32364
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %index, !dbg !32341 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 16, !dbg !32341
  %wide.load447 = load <4 x i32>, ptr %i.op, align 8, !dbg !32341, !alias.scope !32364
  %wide.load448 = load <4 x i32>, ptr %i.oq, align 8, !dbg !32341, !alias.scope !32364
  %i.or = add <4 x i32> %wide.load447, %wide.load, !dbg !32342
  %i.os = add <4 x i32> %wide.load448, %wide.load446, !dbg !32342
  store <4 x i32> %i.or, ptr %i.on, align 4, !dbg !32344, !alias.scope !32361, !noalias !32364
  store <4 x i32> %i.os, ptr %i.oo, align 4, !dbg !32344, !alias.scope !32361, !noalias !32364
  %index.next = or disjoint i64 %index, 8, !dbg !32331 ; 2 uses
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %index.next, !dbg !32334 ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 16, !dbg !32335 ; 2 uses
  %wide.load.1 = load <4 x i32>, ptr %i.ot, align 4, !dbg !32335, !alias.scope !32361, !noalias !32364
  %wide.load446.1 = load <4 x i32>, ptr %i.ou, align 4, !dbg !32335, !alias.scope !32361, !noalias !32364
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %index.next, !dbg !32341 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 16, !dbg !32341
  %wide.load447.1 = load <4 x i32>, ptr %i.ov, align 8, !dbg !32341, !alias.scope !32364
  %wide.load448.1 = load <4 x i32>, ptr %i.ow, align 8, !dbg !32341, !alias.scope !32364
  %i.ox = add <4 x i32> %wide.load447.1, %wide.load.1, !dbg !32342
  %i.oy = add <4 x i32> %wide.load448.1, %wide.load446.1, !dbg !32342
  store <4 x i32> %i.ox, ptr %i.ot, align 4, !dbg !32344, !alias.scope !32361, !noalias !32364
  store <4 x i32> %i.oy, ptr %i.ou, align 4, !dbg !32344, !alias.scope !32361, !noalias !32364
  %index.next.1 = add nuw nsw i64 %index, 16, !dbg !32331 ; 2 uses
  %i.oz = icmp eq i64 %index.next.1, 256, !dbg !32328
  br i1 %i.oz, label %middle.block, label %vector.body, !dbg !32328, !llvm.loop !32366

scalar.ph:                                        ; preds = %.noexc117.1, %scalar.ph
  %.sroa.01.0.i220.1 = phi i64 [ %i.ps, %scalar.ph ], [ 0, %.noexc117.1 ] ; 6 uses
  %i.pa = or disjoint i64 %.sroa.01.0.i220.1, 1, !dbg !32331 ; 2 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %.sroa.01.0.i220.1, !dbg !32334 ; 2 uses
  %i.pc = load i32, ptr %i.pb, align 4, !dbg !32335, !noundef !14
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %.sroa.01.0.i220.1, !dbg !32341
  %i.pe = load i32, ptr %i.pd, align 8, !dbg !32341, !noundef !14
  %i.pf = add i32 %i.pe, %i.pc, !dbg !32342
  store i32 %i.pf, ptr %i.pb, align 4, !dbg !32344
  %i.pg = or disjoint i64 %.sroa.01.0.i220.1, 2, !dbg !32331 ; 2 uses
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.pa, !dbg !32334 ; 2 uses
  %i.pi = load i32, ptr %i.ph, align 4, !dbg !32335, !noundef !14
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %i.pa, !dbg !32341
  %i.pk = load i32, ptr %i.pj, align 4, !dbg !32341, !noundef !14
  %i.pl = add i32 %i.pk, %i.pi, !dbg !32342
  store i32 %i.pl, ptr %i.ph, align 4, !dbg !32344
  %i.pm = or disjoint i64 %.sroa.01.0.i220.1, 3, !dbg !32331 ; 2 uses
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.pg, !dbg !32334 ; 2 uses
  %i.po = load i32, ptr %i.pn, align 4, !dbg !32335, !noundef !14
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %i.pg, !dbg !32341
  %i.pq = load i32, ptr %i.pp, align 8, !dbg !32341, !noundef !14
  %i.pr = add i32 %i.pq, %i.po, !dbg !32342
  store i32 %i.pr, ptr %i.pn, align 4, !dbg !32344
  %i.ps = add nuw nsw i64 %.sroa.01.0.i220.1, 4, !dbg !32331 ; 2 uses
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.pm, !dbg !32334 ; 2 uses
  %i.pu = load i32, ptr %i.pt, align 4, !dbg !32335, !noundef !14
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %i.pm, !dbg !32341
  %i.pw = load i32, ptr %i.pv, align 4, !dbg !32341, !noundef !14
  %i.px = add i32 %i.pw, %i.pu, !dbg !32342
  store i32 %i.px, ptr %i.pt, align 4, !dbg !32344
  %exitcond.1.not.3 = icmp eq i64 %i.ps, 256, !dbg !32346
  br i1 %exitcond.1.not.3, label %middle.block, label %scalar.ph, !dbg !32328, !llvm.loop !32367

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %i.py = load i64, ptr %i.bx, align 8, !dbg !32349, !noundef !14
  %i.pz = invoke { float, i64 } @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc8bit_cost15shannon_entropy(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.of, i64 noundef 256, i64 noundef %i.py)
          to label %bb.cm unwind label %.loopexit161, !dbg !32350 ; 2 uses

bb.cm:                                            ; preds = %middle.block
  %exitcond315.not = icmp eq i64 %.sroa.023.0222, %i.ca, !dbg !32355
  br i1 %exitcond315.not, label %.invoke424, label %.loopexit, !dbg !32355

.loopexit:                                        ; preds = %bb.cm
  %i.qa = extractvalue { float, i64 } %i.pz, 0, !dbg !32350 ; 2 uses
  %i.qb = extractvalue { float, i64 } %i.pz, 1, !dbg !32350
  %i.qc = uitofp i64 %i.qb to float, !dbg !32352  ; 2 uses
  %i.qd = fcmp olt float %i.qa, %i.qc, !dbg !32354
  %.sroa.012.0.1 = select i1 %i.qd, float %i.qc, float %i.qa, !dbg !32354 ; 2 uses
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.oc, !dbg !32355
  store float %.sroa.012.0.1, ptr %i.qe, align 4, !dbg !32355
  %i.qf = fsub float %.sroa.012.0.1, %.sroa.010.0, !dbg !32356
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.oc, !dbg !32357
  %i.qh = load float, ptr %i.qg, align 4, !dbg !32357, !noundef !14
  %i.qi = fsub float %i.qf, %i.qh, !dbg !32356
  %i.qj = fadd float %.sroa.7.1, %i.qi, !dbg !32358 ; 2 uses
  %exitcond316.not = icmp eq i64 %i.cl, %i.d, !dbg !32015
  br i1 %exitcond316.not, label %._crit_edge, label %bb.w, !dbg !32025

bb.cn:                                            ; preds = %bb.co, %.loopexit.split-lp
  %lpad.phi160 = phi { ptr, i32 } [ %lpad.phi159, %bb.co ], [ %lpad.phi, %.loopexit.split-lp ]
  resume { ptr, i32 } %lpad.phi160, !dbg !32368

.thread:                                          ; preds = %.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.co, !dbg !32369

.loopexit161:                                     ; preds = %middle.block, %middle.block463
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.cg
  %lpad.loopexit162 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke424, %bb.bc, %bb.bb
  %lpad.loopexit.split-lp163 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit161
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit161 ], [ %lpad.loopexit162, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp163, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.qk = icmp eq i64 %i.bv, 0, !dbg !32369
  br i1 %i.qk, label %bb.cn, label %bb.co, !dbg !32369

bb.co:                                            ; preds = %.thread, %.loopexit.split-lp
  %lpad.phi159 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread ], [ %lpad.phi, %.loopexit.split-lp ]
  %i.ql = mul nuw nsw i64 %i.bv, 1040, !dbg !32373
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bu) ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bu, i64 noundef range(i64 1, 0) %i.ql, i64 noundef 8) #19, !dbg !32376
  br label %bb.cn, !dbg !32381
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock34BrotliBuildMetaBlockGreedyInternalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, 4294967296) %3, i64 noundef range(i64 0, 4294967296) %4, i8 noundef %5, i8 noundef %6, i8 noundef range(i8 0, 4) %7, i64 noundef %8, ptr noalias noundef nonnull readonly align 4 captures(none) %9, i64 noundef range(i64 0, 2305843009213693952) %10, ptr noalias noundef nonnull readonly align 4 captures(none) %11, i64 noundef range(i64 0, 576460752303423488) %12, i64 noundef %13, ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %14) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !32382 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5.sroa.0 = alloca [16 x i8], align 8     ; 5 uses
  %.sroa.5.sroa.9.sroa.6 = alloca [16 x i8], align 8 ; 5 uses
  %.sroa.5.sroa.12.sroa.0 = alloca [96 x i8], align 8 ; 4 uses
  %i.s = alloca [88 x i8], align 8                ; 12 uses
  %i.t = alloca [88 x i8], align 8                ; 12 uses
  %i.u = alloca [208 x i8], align 8               ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !32383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !32384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !32386
  %.not = icmp eq i64 %13, 0, !dbg !32388         ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader, !dbg !32390

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.v = add i64 %13, -1, !dbg !32399
  %.not398.not = icmp ugt i64 %12, %i.v, !dbg !32399
  br i1 %.not398.not, label %.lr.ph.preheader614, label %bb.en, !dbg !32399

.lr.ph.preheader614:                              ; preds = %.lr.ph.preheader
  %xtraiter = and i64 %13, 3, !dbg !32390         ; 3 uses
  %i.w = icmp ult i64 %13, 4, !dbg !32390
  br i1 %i.w, label %.lr.ph.epil.preheader, label %.lr.ph.preheader614.new, !dbg !32390

.lr.ph.preheader614.new:                          ; preds = %.lr.ph.preheader614
  %unroll_iter = and i64 %13, -4, !dbg !32390
  br label %.lr.ph, !dbg !32390

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !32390
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader, !dbg !32390
end_hunk_1
begin_hunk_2_@llvm.vector.reduce.fmin.v4f32
!18306 = distinct !DILocation(line: 2798, column: 5, scope: !18298)
!18307 = !DILocation(line: 2511, column: 13, scope: !1225, inlinedAt: !18308)
!18308 = distinct !DILocation(line: 2031, column: 30, scope: !1220, inlinedAt: !18306)
!18309 = !DILocation(line: 2031, column: 5, scope: !1220, inlinedAt: !18306)
!18310 = !DILocation(line: 2032, column: 13, scope: !1220, inlinedAt: !18306)
!18311 = !DILocation(line: 2032, column: 5, scope: !1220, inlinedAt: !18306)
!18312 = !{!18300, !18304}
!18313 = !DILocation(line: 2800, column: 25, scope: !18314)
!18314 = distinct !DILexicalBlock(scope: !18298, file: !49, line: 2799, column: 5)
!18315 = !DILocation(line: 977, column: 16, scope: !18316, inlinedAt: !18317)
!18316 = distinct !DISubprogram(name: "checked_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj11checked_sub", scope: !58, file: !57, line: 971, type: !13, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18317 = !DILocation(line: 450, column: 32, scope: !18318, inlinedAt: !18319)
!18318 = distinct !DISubprogram(name: "index_mut<u8>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE9index_mutCsfISxE4fmY1Y_14polars_parquet", scope: !743, file: !160, line: 448, type: !13, scopeLine: 448, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18319 = !DILocation(line: 31, column: 15, scope: !18320, inlinedAt: !18321)
!18320 = distinct !DISubprogram(name: "index_mut<u8, core::ops::range::Range<usize>>", linkageName: "_RNvXs_NtNtCscgRAwXFJnXP_4core5slice5indexShINtNtNtB8_3ops5index8IndexMutINtNtBK_5range5RangejEE9index_mutCsfISxE4fmY1Y_14polars_parquet", scope: !166, file: !160, line: 30, type: !13, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18321 = !DILocation(line: 2800, column: 12, scope: !18314)
!18322 = !DILocation(line: 456, column: 13, scope: !18318, inlinedAt: !18319)
!18323 = !DILocation(line: 5621, column: 13, scope: !18324, inlinedAt: !18325)
!18324 = distinct !DISubprogram(name: "spec_clone_from<u8>", linkageName: "_RNvXs4_NtCscgRAwXFJnXP_4core5sliceShINtB5_13CloneFromSpechE15spec_clone_fromCsfISxE4fmY1Y_14polars_parquet", scope: !764, file: !763, line: 5618, type: !13, scopeLine: 5618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18325 = !DILocation(line: 4258, column: 14, scope: !18326, inlinedAt: !18327)
!18326 = distinct !DISubprogram(name: "clone_from_slice<u8>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSh16clone_from_sliceCsfISxE4fmY1Y_14polars_parquet", scope: !767, file: !763, line: 4254, type: !13, scopeLine: 4254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18327 = !DILocation(line: 2800, column: 54, scope: !18314)
!18328 = !DILocation(line: 2801, column: 19, scope: !18314)
!18329 = !DILocation(line: 2801, column: 43, scope: !18314)
!18330 = !DILocation(line: 2511, column: 13, scope: !18331, inlinedAt: !18332)
!18331 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !58, file: !57, line: 2510, type: !13, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18332 = !DILocation(line: 2801, column: 30, scope: !18314)
!18333 = !DILocation(line: 2801, column: 5, scope: !18314)
!18334 = !DILocation(line: 2802, column: 22, scope: !18314)
!18335 = !DILocation(line: 2803, column: 25, scope: !18336)
!18336 = distinct !DILexicalBlock(scope: !18314, file: !49, line: 2802, column: 5)
!18337 = !DILocation(line: 977, column: 16, scope: !18316, inlinedAt: !18338)
!18338 = !DILocation(line: 450, column: 32, scope: !18339, inlinedAt: !18340)
!18339 = !DILexicalBlockFile(scope: !18318, file: !160, discriminator: 2)
!18340 = !DILocation(line: 31, column: 15, scope: !18341, inlinedAt: !18342)
!18341 = !DILexicalBlockFile(scope: !18320, file: !160, discriminator: 2)
!18342 = !DILocation(line: 2803, column: 12, scope: !18336)
!18343 = !DILocation(line: 456, column: 13, scope: !18318, inlinedAt: !18340)
!18344 = !DILocation(line: 101, column: 24, scope: !18345, inlinedAt: !18347)
!18345 = distinct !DILexicalBlock(scope: !18346, file: !160, line: 99, column: 5)
!18346 = distinct !DISubprogram(name: "get_offset_len_mut_noubcheck<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index28get_offset_len_mut_noubcheckhECsfISxE4fmY1Y_14polars_parquet", scope: !162, file: !160, line: 94, type: !13, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18347 = !DILocation(line: 454, column: 28, scope: !18339, inlinedAt: !18340)
!18348 = !DILocation(line: 5621, column: 13, scope: !18324, inlinedAt: !18349)
!18349 = !DILocation(line: 4258, column: 14, scope: !18350, inlinedAt: !18351)
!18350 = !DILexicalBlockFile(scope: !18326, file: !763, discriminator: 2)
!18351 = !DILocation(line: 2803, column: 54, scope: !18336)
!18352 = !DILocation(line: 2804, column: 19, scope: !18336)
!18353 = !DILocation(line: 2804, column: 43, scope: !18336)
!18354 = !DILocation(line: 2511, column: 13, scope: !18331, inlinedAt: !18355)
!18355 = !DILocation(line: 2804, column: 30, scope: !18336)
!18356 = !DILocation(line: 2804, column: 5, scope: !18336)
!18357 = !DILocation(line: 2805, column: 5, scope: !18336)
!18358 = !DILocation(line: 2806, column: 8, scope: !18336)
!18359 = !DILocation(line: 2828, column: 8, scope: !18336)
!18360 = !DILocation(line: 2807, column: 13, scope: !18336)
!18361 = !DILocation(line: 2808, column: 26, scope: !18336)
!18362 = !DILocation(line: 2807, column: 20, scope: !18336)
!18363 = !DILocation(line: 2822, column: 13, scope: !18364)
!18364 = distinct !DILexicalBlock(scope: !18336, file: !49, line: 2807, column: 9)
!18365 = !DILocation(line: 2492, column: 10, scope: !1087, inlinedAt: !18366)
!18366 = distinct !DILocation(line: 2502, column: 5, scope: !1090, inlinedAt: !18367)
!18367 = distinct !DILocation(line: 2822, column: 13, scope: !18364)
!18368 = !{!18369}
!18369 = distinct !{!18369, !18370, !"_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream15block_split_nop: argument 0"}
!18370 = distinct !{!18370, !"_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream15block_split_nop"}
!18371 = !DILocation(line: 2815, column: 9, scope: !18364)
!18372 = !DILocation(line: 2826, column: 9, scope: !18364)
!18373 = !DILocation(line: 2827, column: 5, scope: !18336)
!18374 = !DILocation(line: 2806, column: 5, scope: !18336)
!18375 = !DILocation(line: 2833, column: 2, scope: !18292)
!18376 = !DILocation(line: 2829, column: 9, scope: !18336)
!18377 = !DILocation(line: 2830, column: 9, scope: !18336)
!18378 = !{!18379}
!18379 = distinct !{!18379, !18380, !"_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream18JumpToByteBoundary: argument 0"}
!18380 = distinct !{!18380, !"_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream18JumpToByteBoundary"}
!18381 = !DILocation(line: 2831, column: 9, scope: !18336)
!18382 = !{!18383}
!18383 = distinct !{!18383, !18380, !"_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream18JumpToByteBoundary: argument 1"}
!18384 = !DILocation(line: 2031, column: 19, scope: !1220, inlinedAt: !18385)
!18385 = distinct !DILocation(line: 2831, column: 9, scope: !18336)
!18386 = !DILocation(line: 2511, column: 13, scope: !1225, inlinedAt: !18387)
!18387 = distinct !DILocation(line: 2031, column: 30, scope: !1220, inlinedAt: !18385)
!18388 = !DILocation(line: 2031, column: 5, scope: !1220, inlinedAt: !18385)
!18389 = !DILocation(line: 2032, column: 13, scope: !1220, inlinedAt: !18385)
!18390 = !DILocation(line: 2032, column: 5, scope: !1220, inlinedAt: !18385)
!18391 = !{!18379, !18383}
!18392 = distinct !DISubprogram(name: "BrotliBuildAndStoreHuffmanTreeFast<alloc_stdlib::std_alloc::StandardAlloc>", linkageName: "_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFastNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet", scope: !51, file: !49, line: 925, type: !13, scopeLine: 925, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18393 = !DILocation(line: 936, column: 9, scope: !18394)
!18394 = distinct !DILexicalBlock(scope: !18392, file: !49, line: 935, column: 5)
!18395 = !DILocation(line: 936, column: 33, scope: !18394)
!18396 = !DILocation(line: 939, column: 11, scope: !18397)
!18397 = distinct !DILexicalBlock(scope: !18398, file: !49, line: 938, column: 5)
!18398 = distinct !DILexicalBlock(scope: !18399, file: !49, line: 937, column: 5)
!18399 = distinct !DILexicalBlock(scope: !18394, file: !49, line: 936, column: 5)
!18400 = !DILocation(line: 940, column: 12, scope: !18397)
!18401 = !DILocation(line: 949, column: 8, scope: !18397)
!18402 = !DILocation(line: 977, column: 16, scope: !18403, inlinedAt: !18404)
!18403 = distinct !DISubprogram(name: "checked_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj11checked_sub", scope: !58, file: !57, line: 971, type: !13, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18404 = !DILocation(line: 450, column: 32, scope: !18405, inlinedAt: !18406)
!18405 = distinct !DISubprogram(name: "index_mut<u8>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE9index_mutCsfISxE4fmY1Y_14polars_parquet", scope: !743, file: !160, line: 448, type: !13, scopeLine: 448, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18406 = !DILocation(line: 534, column: 23, scope: !18407, inlinedAt: !18408)
!18407 = distinct !DISubprogram(name: "index_mut<u8>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range7RangeTojEINtB5_10SliceIndexShE9index_mutCsfISxE4fmY1Y_14polars_parquet", scope: !746, file: !160, line: 533, type: !13, scopeLine: 533, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18408 = !DILocation(line: 31, column: 15, scope: !18409, inlinedAt: !18410)
!18409 = distinct !DISubprogram(name: "index_mut<u8, core::ops::range::RangeTo<usize>>", linkageName: "_RNvXs_NtNtCscgRAwXFJnXP_4core5slice5indexShINtNtNtB8_3ops5index8IndexMutINtNtBK_5range7RangeTojEE9index_mutCsfISxE4fmY1Y_14polars_parquet", scope: !166, file: !160, line: 30, type: !13, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18410 = !DILocation(line: 956, column: 28, scope: !18397)
!18411 = !DILocation(line: 950, column: 9, scope: !18397)
!18412 = !DILocation(line: 951, column: 25, scope: !18397)
!18413 = !DILocation(line: 951, column: 41, scope: !18397)
!18414 = !DILocation(line: 951, column: 9, scope: !18397)
!18415 = !DILocation(line: 952, column: 9, scope: !18397)
!18416 = !DILocation(line: 456, column: 13, scope: !18405, inlinedAt: !18406)
!18417 = !DILocation(line: 957, column: 9, scope: !18418)
!18418 = distinct !DILexicalBlock(scope: !18419, file: !49, line: 956, column: 5)
!18419 = distinct !DILexicalBlock(scope: !18397, file: !49, line: 956, column: 5)
!18420 = !DILocation(line: 2587, column: 13, scope: !18421, inlinedAt: !18422)
!18421 = distinct !DISubprogram(name: "wrapping_mul", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core3numy12wrapping_mul", scope: !370, file: !57, line: 2586, type: !13, scopeLine: 2586, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18422 = !DILocation(line: 961, column: 41, scope: !18397)
!18423 = !DILocation(line: 2511, column: 13, scope: !18424, inlinedAt: !18425)
!18424 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core3numy12wrapping_add", scope: !370, file: !57, line: 2510, type: !13, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18425 = !DILocation(line: 961, column: 62, scope: !18397)
!18426 = !DILocation(line: 551, column: 5, scope: !18427, inlinedAt: !18428)
!18427 = distinct !DISubprogram(name: "alloc_or_default<brotli::enc::entropy_encode::HuffmanTree, alloc_stdlib::std_alloc::StandardAlloc>", linkageName: "_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14combined_alloc16alloc_or_defaultNtNtB4_14entropy_encode11HuffmanTreeNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet", scope: !64, file: !63, line: 547, type: !13, scopeLine: 547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18428 = !DILocation(line: 963, column: 24, scope: !18429)
!18429 = distinct !DILexicalBlock(scope: !18397, file: !49, line: 961, column: 9)
!18430 = !DILocation(line: 966, column: 9, scope: !18431)
!18431 = distinct !DILexicalBlock(scope: !18432, file: !49, line: 964, column: 9)
!18432 = distinct !DILexicalBlock(scope: !18429, file: !49, line: 963, column: 9)
!18433 = !DILocation(line: 0, scope: !18431)
!18434 = !DILocation(line: 973, column: 24, scope: !18435)
!18435 = distinct !DILexicalBlock(scope: !18436, file: !49, line: 969, column: 17)
!18436 = distinct !DILexicalBlock(scope: !18431, file: !49, line: 968, column: 17)
!18437 = !DILocation(line: 2548, column: 13, scope: !18438, inlinedAt: !18439)
!18438 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core3numy12wrapping_sub", scope: !370, file: !57, line: 2547, type: !13, scopeLine: 2547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18439 = !DILocation(line: 972, column: 27, scope: !18435)
!18440 = !DILocation(line: 1920, column: 16, scope: !1494, inlinedAt: !18441)
!18441 = distinct !DILocation(line: 810, column: 1, scope: !1498, inlinedAt: !18442)
!18442 = distinct !DILocation(line: 810, column: 1, scope: !1500, inlinedAt: !18443)
!18443 = distinct !DILocation(line: 1040, column: 5, scope: !18429)
!18444 = !DILocation(line: 457, column: 14, scope: !1503, inlinedAt: !18445)
!18445 = distinct !DILocation(line: 255, column: 43, scope: !1505, inlinedAt: !18446)
!18446 = distinct !DILocation(line: 1919, column: 26, scope: !1495, inlinedAt: !18441)
!18447 = !DILocation(line: 128, column: 14, scope: !84, inlinedAt: !18448)
!18448 = distinct !DILocation(line: 229, column: 22, scope: !88, inlinedAt: !18449)
!18449 = distinct !DILocation(line: 344, column: 9, scope: !91, inlinedAt: !18450)
!18450 = distinct !DILocation(line: 462, column: 23, scope: !93, inlinedAt: !18451)
!18451 = distinct !DILocation(line: 1921, column: 24, scope: !1494, inlinedAt: !18441)
!18452 = !DILocation(line: 1920, column: 13, scope: !1494, inlinedAt: !18441)
!18453 = !DILocation(line: 988, column: 38, scope: !18454)
!18454 = distinct !DILexicalBlock(scope: !18455, file: !49, line: 987, column: 21)
!18455 = distinct !DILexicalBlock(scope: !18435, file: !49, line: 985, column: 21)
!18456 = !DILocation(line: 990, column: 60, scope: !18457)
!18457 = distinct !DILexicalBlock(scope: !18458, file: !49, line: 989, column: 21)
!18458 = distinct !DILexicalBlock(scope: !18454, file: !49, line: 988, column: 21)
!18459 = !DILocation(line: 990, column: 21, scope: !18457)
!18460 = !DILocation(line: 992, column: 38, scope: !18461)
!18461 = distinct !DILexicalBlock(scope: !18457, file: !49, line: 991, column: 21)
!18462 = !DILocation(line: 992, column: 21, scope: !18461)
!18463 = !DILocation(line: 0, scope: !18435)
!18464 = !DILocation(line: 993, column: 38, scope: !18461)
!18465 = !DILocation(line: 993, column: 21, scope: !18461)
!18466 = !DILocation(line: 0, scope: !18461)
!18467 = !DILocation(line: 996, column: 27, scope: !18461)
!18468 = !DILocation(line: 1030, column: 39, scope: !18461)
!18469 = !DILocation(line: 2511, column: 13, scope: !18470, inlinedAt: !18471)
!18470 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs6_NtCscgRAwXFJnXP_4core3numm12wrapping_add", scope: !602, file: !57, line: 2510, type: !13, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18471 = !DILocation(line: 994, column: 45, scope: !18461)
!18472 = !DILocation(line: 1000, column: 32, scope: !18473)
!18473 = distinct !DILexicalBlock(scope: !18474, file: !49, line: 999, column: 29)
!18474 = distinct !DILexicalBlock(scope: !18461, file: !49, line: 998, column: 29)
!18475 = !{!18476}
!18476 = distinct !{!18476, !18477, !"_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode14BrotliSetDepth: argument 0"}
!18477 = distinct !{!18477, !"_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode14BrotliSetDepth"}
!18478 = !DILocation(line: 1030, column: 24, scope: !18461)
!18479 = !{!18480}
!18480 = distinct !{!18480, !18477, !"_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode14BrotliSetDepth: argument 1"}
!18481 = !DILocation(line: 28, column: 9, scope: !18482, inlinedAt: !18485)
!18482 = distinct !DISubprogram(name: "BrotliSetDepth", linkageName: "_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode14BrotliSetDepth", scope: !18484, file: !18483, line: 27, type: !13, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18483 = !DIFile(filename: "src/enc/entropy_encode.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/brotli-8.0.3", checksumkind: CSK_MD5, checksum: "a1e0c0b127d065291095f6f58557ecc2")
!18484 = !DINamespace(name: "entropy_encode", scope: !52)
!18485 = distinct !DILocation(line: 1030, column: 24, scope: !18461)
!18486 = !{!18476, !18480}
!18487 = !DILocation(line: 28, column: 32, scope: !18482, inlinedAt: !18485)
!18488 = !DILocation(line: 31, column: 5, scope: !18489, inlinedAt: !18485)
!18489 = distinct !DILexicalBlock(scope: !18490, file: !18483, line: 30, column: 5)
!18490 = distinct !DILexicalBlock(scope: !18491, file: !18483, line: 29, column: 5)
!18491 = distinct !DILexicalBlock(scope: !18482, file: !18483, line: 28, column: 5)
!18492 = !DILocation(line: 33, column: 18, scope: !18489, inlinedAt: !18485)
!18493 = !DILocation(line: 33, column: 12, scope: !18489, inlinedAt: !18485)
!18494 = !DILocation(line: 0, scope: !18489, inlinedAt: !18485)
!18495 = !DILocation(line: 34, column: 13, scope: !18489, inlinedAt: !18485)
!18496 = !DILocation(line: 35, column: 16, scope: !18489, inlinedAt: !18485)
!18497 = !DILocation(line: 56, column: 1, scope: !18482, inlinedAt: !18485)
!18498 = !DILocation(line: 2587, column: 13, scope: !18499, inlinedAt: !18500)
!18499 = distinct !DISubprogram(name: "wrapping_mul", linkageName: "_RNvMs6_NtCscgRAwXFJnXP_4core3numm12wrapping_mul", scope: !602, file: !57, line: 2586, type: !13, scopeLine: 2586, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18500 = !DILocation(line: 1035, column: 39, scope: !18431)
!18501 = !DILocation(line: 44, column: 22, scope: !18489, inlinedAt: !18485)
!18502 = !DILocation(line: 45, column: 19, scope: !18503, inlinedAt: !18485)
!18503 = distinct !DILexicalBlock(scope: !18489, file: !18483, line: 44, column: 13)
!18504 = !DILocation(line: 45, column: 13, scope: !18503, inlinedAt: !18485)
!18505 = !DILocation(line: 47, column: 15, scope: !18489, inlinedAt: !18485)
!18506 = !DILocation(line: 47, column: 33, scope: !18489, inlinedAt: !18485)
!18507 = !DILocation(line: 47, column: 32, scope: !18489, inlinedAt: !18485)
!18508 = !DILocation(line: 48, column: 13, scope: !18489, inlinedAt: !18485)
!18509 = !DILocation(line: 53, column: 19, scope: !18489, inlinedAt: !18485)
!18510 = !DILocation(line: 54, column: 9, scope: !18489, inlinedAt: !18485)
!18511 = !DILocation(line: 32, column: 5, scope: !18489, inlinedAt: !18485)
!18512 = !DILocation(line: 38, column: 19, scope: !18489, inlinedAt: !18485)
!18513 = !DILocation(line: 38, column: 13, scope: !18489, inlinedAt: !18485)
!18514 = !DILocation(line: 38, column: 37, scope: !18489, inlinedAt: !18485)
!18515 = !DILocation(line: 39, column: 13, scope: !18489, inlinedAt: !18485)
!18516 = !DILocation(line: 0, scope: !18517, inlinedAt: !18485)
!18517 = !DILexicalBlockFile(scope: !18489, file: !622, discriminator: 0)
!18518 = !DILocation(line: 464, column: 9, scope: !1729, inlinedAt: !18519)
!18519 = distinct !DILocation(line: 26, column: 35, scope: !1731, inlinedAt: !18520)
!18520 = distinct !DILocation(line: 849, column: 19, scope: !18521, inlinedAt: !18522)
!18521 = distinct !DISubprogram(name: "take<alloc_stdlib::heap_alloc::WrapBox<brotli::enc::entropy_encode::HuffmanTree>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem4takeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode11HuffmanTreeEECsfISxE4fmY1Y_14polars_parquet", scope: !113, file: !112, line: 848, type: !13, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18522 = !DILocation(line: 1038, column: 25, scope: !18431)
!18523 = !DILocation(line: 27, column: 18, scope: !1736, inlinedAt: !18520)
!18524 = !DILocation(line: 29, column: 6, scope: !1731, inlinedAt: !18520)
!18525 = !DILocation(line: 849, column: 19, scope: !18521, inlinedAt: !18522)
!18526 = !DILocation(line: 457, column: 14, scope: !1503, inlinedAt: !18527)
!18527 = distinct !DILocation(line: 255, column: 43, scope: !1505, inlinedAt: !18528)
!18528 = distinct !DILocation(line: 1919, column: 26, scope: !1495, inlinedAt: !18529)
!18529 = distinct !DILocation(line: 810, column: 1, scope: !1498, inlinedAt: !18530)
!18530 = distinct !DILocation(line: 810, column: 1, scope: !1500, inlinedAt: !18531)
!18531 = distinct !DILocation(line: 13, column: 4, scope: !1743, inlinedAt: !18532)
!18532 = distinct !DILocation(line: 1038, column: 15, scope: !18431)
!18533 = !DILocation(line: 128, column: 14, scope: !84, inlinedAt: !18534)
!18534 = distinct !DILocation(line: 229, column: 22, scope: !88, inlinedAt: !18535)
!18535 = distinct !DILocation(line: 344, column: 9, scope: !91, inlinedAt: !18536)
!18536 = distinct !DILocation(line: 462, column: 23, scope: !93, inlinedAt: !18537)
!18537 = distinct !DILocation(line: 1921, column: 24, scope: !1494, inlinedAt: !18529)
!18538 = !DILocation(line: 1920, column: 16, scope: !1494, inlinedAt: !18539)
!18539 = distinct !DILocation(line: 810, column: 1, scope: !1498, inlinedAt: !18540)
!18540 = distinct !DILocation(line: 810, column: 1, scope: !1500, inlinedAt: !18541)
!18541 = distinct !DILocation(line: 1040, column: 5, scope: !18429)
!18542 = !DILocation(line: 457, column: 14, scope: !1503, inlinedAt: !18543)
!18543 = distinct !DILocation(line: 255, column: 43, scope: !1505, inlinedAt: !18544)
!18544 = distinct !DILocation(line: 1919, column: 26, scope: !1495, inlinedAt: !18539)
!18545 = !DILocation(line: 128, column: 14, scope: !84, inlinedAt: !18546)
!18546 = distinct !DILocation(line: 229, column: 22, scope: !88, inlinedAt: !18547)
!18547 = distinct !DILocation(line: 344, column: 9, scope: !91, inlinedAt: !18548)
!18548 = distinct !DILocation(line: 462, column: 23, scope: !93, inlinedAt: !18549)
!18549 = distinct !DILocation(line: 1921, column: 24, scope: !1494, inlinedAt: !18539)
!18550 = !DILocation(line: 1920, column: 13, scope: !1494, inlinedAt: !18539)
!18551 = !DILocation(line: 1041, column: 5, scope: !18397)
!18552 = !DILocation(line: 1042, column: 8, scope: !18397)
!18553 = !DILocation(line: 1078, column: 9, scope: !18554)
!18554 = distinct !DILexicalBlock(scope: !18555, file: !49, line: 1077, column: 9)
!18555 = distinct !DILexicalBlock(scope: !18397, file: !49, line: 1076, column: 9)
!18556 = !DILocation(line: 1085, column: 19, scope: !18557)
!18557 = distinct !DILexicalBlock(scope: !18558, file: !49, line: 1083, column: 13)
!18558 = distinct !DILexicalBlock(scope: !18559, file: !49, line: 1082, column: 13)
!18559 = distinct !DILexicalBlock(scope: !18554, file: !49, line: 1081, column: 13)
!18560 = !DILocation(line: 1043, column: 9, scope: !18397)
!18561 = !DILocation(line: 2548, column: 13, scope: !18438, inlinedAt: !18562)
!18562 = !DILocation(line: 1044, column: 34, scope: !18397)
!18563 = !DILocation(line: 1044, column: 9, scope: !18397)
!18564 = !DILocation(line: 781, column: 12, scope: !18565, inlinedAt: !18566)
!18565 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCsfISxE4fmY1Y_14polars_parquet", scope: !136, file: !135, line: 780, type: !13, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18566 = !DILocation(line: 866, column: 14, scope: !18567, inlinedAt: !18568)
!18567 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet", scope: !141, file: !135, line: 865, type: !13, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18568 = !DILocation(line: 1045, column: 18, scope: !18569)
!18569 = !DILexicalBlockFile(scope: !18570, file: !49, discriminator: 2)
!18570 = distinct !DILexicalBlock(scope: !18397, file: !49, line: 1045, column: 9)
!18571 = !DILocation(line: 1081, column: 29, scope: !18554)
!18572 = !DILocation(line: 2511, column: 13, scope: !18424, inlinedAt: !18573)
!18573 = !DILocation(line: 0, scope: !18557)
!18574 = !DILocation(line: 1085, column: 33, scope: !18557)
!18575 = !DILocation(line: 1085, column: 34, scope: !18557)
!18576 = !DILocation(line: 2511, column: 13, scope: !18424, inlinedAt: !18577)
!18577 = !DILocation(line: 1091, column: 19, scope: !18557)
!18578 = !DILocation(line: 1092, column: 16, scope: !18557)
!18579 = !DILocation(line: 2511, column: 13, scope: !18424, inlinedAt: !18580)
!18580 = !DILocation(line: 1087, column: 33, scope: !18557)
!18581 = !DILocation(line: 1094, column: 21, scope: !18557)
!18582 = !DILocation(line: 1100, column: 20, scope: !18557)
!18583 = !DILocation(line: 1095, column: 21, scope: !18557)
!18584 = !DILocation(line: 1093, column: 17, scope: !18557)
!18585 = !DILocation(line: 1092, column: 13, scope: !18557)
!18586 = !DILocation(line: 0, scope: !18397)
!18587 = !DILocation(line: 1080, column: 15, scope: !18554)
!18588 = !DILocation(line: 1102, column: 42, scope: !18557)
!18589 = !DILocation(line: 1102, column: 25, scope: !18557)
!18590 = !DILocation(line: 0, scope: !18559)
!18591 = !DILocation(line: 1109, column: 20, scope: !18557)
!18592 = !DILocation(line: 1110, column: 27, scope: !18557)
!18593 = !DILocation(line: 1113, column: 29, scope: !18557)
!18594 = !DILocation(line: 1103, column: 25, scope: !18557)
!18595 = !DILocation(line: 1101, column: 21, scope: !18557)
!18596 = !DILocation(line: 2548, column: 13, scope: !18438, inlinedAt: !18597)
!18597 = !DILocation(line: 1107, column: 33, scope: !18557)
!18598 = !DILocation(line: 1100, column: 17, scope: !18557)
!18599 = !DILocation(line: 2548, column: 13, scope: !18438, inlinedAt: !18600)
!18600 = !DILocation(line: 1120, column: 33, scope: !18557)
!18601 = !DILocation(line: 1122, column: 25, scope: !18557)
!18602 = !DILocation(line: 1123, column: 25, scope: !18557)
!18603 = !DILocation(line: 1121, column: 21, scope: !18557)
!18604 = !DILocation(line: 1109, column: 17, scope: !18557)
!18605 = !DILocation(line: 2548, column: 13, scope: !18438, inlinedAt: !18606)
!18606 = !DILocation(line: 1111, column: 37, scope: !18557)
!18607 = !DILocation(line: 1114, column: 29, scope: !18557)
!18608 = !DILocation(line: 1112, column: 25, scope: !18557)
!18609 = !DILocation(line: 1917, column: 50, scope: !18610, inlinedAt: !18564)
!18610 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !130, file: !129, line: 1917, type: !13, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18611 = !DILocation(line: 1052, column: 12, scope: !18397)
!18612 = !DILocation(line: 898, column: 17, scope: !18613, inlinedAt: !18614)
!18613 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !58, file: !57, line: 886, type: !13, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18614 = !DILocation(line: 214, column: 28, scope: !18615, inlinedAt: !18616)
!18615 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !150, file: !135, line: 212, type: !13, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18616 = !DILocation(line: 784, column: 35, scope: !18617, inlinedAt: !18566)
!18617 = distinct !DILexicalBlock(scope: !18565, file: !135, line: 782, column: 13)
!18618 = !DILocation(line: 1917, column: 50, scope: !18610, inlinedAt: !18619)
!18619 = !DILocation(line: 781, column: 12, scope: !18620, inlinedAt: !18621)
!18620 = !DILexicalBlockFile(scope: !18565, file: !135, discriminator: 2)
!18621 = !DILocation(line: 866, column: 14, scope: !18622, inlinedAt: !18623)
!18622 = !DILexicalBlockFile(scope: !18567, file: !135, discriminator: 2)
!18623 = !DILocation(line: 1046, column: 22, scope: !18624)
!18624 = !DILexicalBlockFile(scope: !18625, file: !49, discriminator: 2)
!18625 = distinct !DILexicalBlock(scope: !18626, file: !49, line: 1046, column: 13)
!18626 = distinct !DILexicalBlock(scope: !18570, file: !49, line: 1045, column: 9)
!18627 = !DILocation(line: 781, column: 12, scope: !18565, inlinedAt: !18621)
!18628 = !DILocation(line: 1058, column: 45, scope: !18397)
!18629 = !DILocation(line: 1058, column: 13, scope: !18397)
!18630 = !DILocation(line: 1055, column: 16, scope: !18397)
!18631 = !DILocation(line: 1062, column: 45, scope: !18397)
!18632 = !DILocation(line: 1062, column: 13, scope: !18397)
!18633 = !DILocation(line: 1063, column: 45, scope: !18397)
!18634 = !DILocation(line: 1063, column: 13, scope: !18397)
!18635 = !DILocation(line: 1066, column: 20, scope: !18397)
!18636 = !DILocation(line: 1066, column: 17, scope: !18397)
!18637 = !DILocation(line: 1064, column: 13, scope: !18397)
!18638 = !DILocation(line: 1132, column: 1, scope: !18394)
!18639 = !DILocation(line: 1132, column: 2, scope: !18392)
!18640 = !DILocation(line: 898, column: 17, scope: !18613, inlinedAt: !18641)
!18641 = !DILocation(line: 214, column: 28, scope: !18642, inlinedAt: !18643)
!18642 = !DILexicalBlockFile(scope: !18615, file: !135, discriminator: 2)
!18643 = !DILocation(line: 784, column: 35, scope: !18644, inlinedAt: !18621)
!18644 = !DILexicalBlockFile(scope: !18645, file: !135, discriminator: 2)
!18645 = distinct !DILexicalBlock(scope: !18565, file: !135, line: 782, column: 13)
!18646 = !DILocation(line: 1047, column: 26, scope: !18647)
!18647 = distinct !DILexicalBlock(scope: !18625, file: !49, line: 1046, column: 13)
!18648 = !DILocation(line: 1047, column: 20, scope: !18647)
!18649 = !DILocation(line: 1047, column: 55, scope: !18647)
!18650 = !DILocation(line: 1047, column: 49, scope: !18647)
!18651 = !DILocation(line: 643, column: 9, scope: !18652, inlinedAt: !18653)
!18652 = distinct !DISubprogram(name: "copy<u64>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4copyyECsfISxE4fmY1Y_14polars_parquet", scope: !26, file: !79, line: 628, type: !13, scopeLine: 628, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18653 = !DILocation(line: 1316, column: 9, scope: !18654, inlinedAt: !18656)
!18654 = distinct !DILexicalBlock(scope: !18655, file: !79, line: 1307, column: 5)
!18655 = distinct !DISubprogram(name: "swap<u64>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4swapyECsfISxE4fmY1Y_14polars_parquet", scope: !26, file: !79, line: 1304, type: !13, scopeLine: 1304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18656 = !DILocation(line: 915, column: 13, scope: !18657, inlinedAt: !18660)
!18657 = distinct !DILexicalBlock(scope: !18658, file: !763, line: 909, column: 9)
!18658 = distinct !DILexicalBlock(scope: !18659, file: !763, line: 908, column: 9)
!18659 = distinct !DISubprogram(name: "swap<u64>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSy4swapCsfISxE4fmY1Y_14polars_parquet", scope: !767, file: !763, line: 905, type: !13, scopeLine: 905, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18660 = !DILocation(line: 1048, column: 29, scope: !18647)
!18661 = !DILocation(line: 552, column: 14, scope: !18662, inlinedAt: !18663)
!18662 = distinct !DISubprogram(name: "copy_nonoverlapping<u64>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappingyECsfISxE4fmY1Y_14polars_parquet", scope: !26, file: !79, line: 531, type: !13, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18663 = !DILocation(line: 1317, column: 9, scope: !18654, inlinedAt: !18656)
!18664 = !DILocation(line: 1047, column: 17, scope: !18647)
!18665 = !DILocation(line: 1000, column: 46, scope: !18473)
!18666 = !DILocation(line: 1001, column: 50, scope: !18473)
!18667 = !DILocation(line: 1001, column: 36, scope: !18473)
!18668 = !DILocation(line: 1009, column: 46, scope: !18473)
!18669 = !DILocation(line: 1009, column: 32, scope: !18473)
!18670 = !DILocation(line: 1010, column: 50, scope: !18473)
!18671 = !DILocation(line: 1010, column: 36, scope: !18473)
!18672 = !DILocation(line: 1018, column: 59, scope: !18473)
!18673 = !DILocation(line: 1018, column: 45, scope: !18473)
!18674 = !DILocation(line: 1020, column: 61, scope: !18473)
!18675 = !DILocation(line: 1020, column: 47, scope: !18473)
!18676 = !DILocation(line: 2548, column: 13, scope: !18677, inlinedAt: !18678)
!18677 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_RNvMs6_NtCscgRAwXFJnXP_4core3numm12wrapping_sub", scope: !602, file: !57, line: 2547, type: !13, scopeLine: 2547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18678 = !DILocation(line: 1021, column: 56, scope: !18679)
!18679 = distinct !DILexicalBlock(scope: !18473, file: !49, line: 1018, column: 29)
!18680 = !DILocation(line: 1021, column: 44, scope: !18679)
!18681 = !DILocation(line: 2511, column: 13, scope: !18470, inlinedAt: !18682)
!18682 = !DILocation(line: 1020, column: 34, scope: !18473)
!18683 = !DILocation(line: 1022, column: 29, scope: !18684)
!18684 = distinct !DILexicalBlock(scope: !18679, file: !49, line: 1021, column: 29)
!18685 = !DILocation(line: 1023, column: 29, scope: !18684)
!18686 = !DILocation(line: 1024, column: 29, scope: !18684)
!18687 = !DILocation(line: 1025, column: 46, scope: !18684)
!18688 = !DILocation(line: 1025, column: 29, scope: !18684)
!18689 = !DILocation(line: 2511, column: 13, scope: !18470, inlinedAt: !18690)
!18690 = !DILocation(line: 1026, column: 53, scope: !18684)
!18691 = !DILocation(line: 971, column: 23, scope: !18435)
!18692 = !DILocation(line: 2511, column: 13, scope: !18470, inlinedAt: !18693)
!18693 = !DILocation(line: 981, column: 49, scope: !18435)
!18694 = !DILocation(line: 973, column: 21, scope: !18435)
!18695 = !DILocation(line: 925, column: 1, scope: !18392)
!18696 = !DILocation(line: 953, column: 9, scope: !18397)
!18697 = !DILocation(line: 941, column: 16, scope: !18397)
!18698 = !DILocation(line: 0, scope: !18392)
!18699 = !DILocation(line: 2511, column: 13, scope: !18424, inlinedAt: !18700)
!18700 = !DILocation(line: 947, column: 25, scope: !18397)
!18701 = !DILocation(line: 942, column: 17, scope: !18397)
!18702 = !DILocation(line: 941, column: 13, scope: !18397)
!18703 = !DILocation(line: 2511, column: 13, scope: !18424, inlinedAt: !18704)
!18704 = !DILocation(line: 944, column: 27, scope: !18397)
!18705 = !DILocation(line: 945, column: 40, scope: !18397)
!18706 = !DILocation(line: 2548, column: 13, scope: !18707, inlinedAt: !18708)
!18707 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_sub", scope: !58, file: !57, line: 2547, type: !13, scopeLine: 2547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18708 = !DILocation(line: 945, column: 27, scope: !18397)
!18709 = !DILocation(line: 940, column: 9, scope: !18397)
end_hunk_2
