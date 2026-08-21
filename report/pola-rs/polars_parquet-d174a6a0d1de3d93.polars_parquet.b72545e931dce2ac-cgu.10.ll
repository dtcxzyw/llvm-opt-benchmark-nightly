inline.NumInlined: 2534
inline.NumDeleted: 536
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 132
begin_hunk_0_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream29store_uncompressed_meta_blockNCNvXs4_NtB4_6writerINtB1r_24CompressorWriterCustomIoNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorINtNtCsjPfRcqrlXv6_19brotli_decompressor11io_wrappers12IntoIoWriterQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhENtNtB4y_9std_alloc13StandardAllocEINtB2Q_11CustomWriteB2a_E5write0B5m_ECsfISxE4fmY1Y_14polars_parquet:bb.a
  store i64 0, ptr %.sroa.48.0..sroa_idx.i, align 8, !dbg !18383, !alias.scope !18386
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112, !dbg !18383
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.59.0..sroa_idx.i, align 8, !dbg !18383, !alias.scope !18386
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120, !dbg !18383
  store i64 0, ptr %.sroa.610.0..sroa_idx.i, align 8, !dbg !18383, !alias.scope !18386
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128, !dbg !18383
  store i32 1, ptr %.sroa.711.0..sroa_idx.i, align 8, !dbg !18383, !alias.scope !18386
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !18383
  store ptr inttoptr (i64 4 to ptr), ptr %i.ak, align 8, !dbg !18383, !alias.scope !18386
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !18383
  store i64 0, ptr %i.al, align 8, !dbg !18383, !alias.scope !18386
  call fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream12LogMetaBlockNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocNCNvXs4_NtB4_6writerINtB25_24CompressorWriterCustomIoNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorINtNtCsjPfRcqrlXv6_19brotli_decompressor11io_wrappers12IntoIoWriterQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEINtNtB16_10heap_alloc7WrapBoxhEB12_EINtB3u_11CustomWriteB2O_E5write0ECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.b, i64 noundef 1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @169, ptr noalias noundef align 8 dereferenceable(8) %8, ptr noalias noundef readonly align 8 captures(address) dereferenceable(152) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %6, i8 noundef 4), !dbg !18389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18391
  br label %bb.g, !dbg !18392

bb.i:                                             ; preds = %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream18JumpToByteBoundary.exit8, %bb.g
  ret void, !dbg !18393

bb.j:                                             ; preds = %bb.g
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef 1, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull %10, i64 noundef %11), !dbg !18394
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef 1, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull %10, i64 noundef %11), !dbg !18395
  call void @llvm.experimental.noalias.scope.decl(metadata !18396), !dbg !18399
  call void @llvm.experimental.noalias.scope.decl(metadata !18400), !dbg !18399
  %i.am = load i64, ptr %9, align 8, !dbg !18402, !alias.scope !18396, !noalias !18400, !noundef !14
  %i.an = add i64 %i.am, 7, !dbg !18404
  %i.ao = and i64 %i.an, 4294967288, !dbg !18406  ; 2 uses
  store i64 %i.ao, ptr %9, align 8, !dbg !18406, !alias.scope !18396, !noalias !18400
  %i.ap = lshr exact i64 %i.ao, 3, !dbg !18407    ; 3 uses
  %i.aq = icmp samesign ult i64 %i.ap, %11, !dbg !18408
  br i1 %i.aq, label %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream18JumpToByteBoundary.exit8, label %bb.k, !dbg !18408

bb.k:                                             ; preds = %bb.j
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ap, i64 noundef range(i64 0, -9223372036854775808) %11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @516) #18, !dbg !18408, !noalias !18409
  unreachable, !dbg !18408

_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream18JumpToByteBoundary.exit8: ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 %i.ap, !dbg !18408
  store i8 0, ptr %i.ar, align 1, !dbg !18408, !alias.scope !18400, !noalias !18396
  br label %bb.i, !dbg !18399
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFastNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull %0, ptr noalias noundef nonnull readonly align 4 captures(none) %1, i64 noundef range(i64 0, 2305843009213693952) %2, i64 noundef %3, i64 noundef %4, ptr noalias nofree noundef nonnull captures(address, read_provenance) %5, i64 noundef range(i64 0, -9223372036854775808) %6, ptr noalias noundef nonnull align 2 %7, i64 noundef range(i64 0, 4611686018427387904) %8, ptr noalias noundef align 8 dereferenceable(8) %9, ptr noalias noundef nonnull %10, i64 noundef range(i64 0, -9223372036854775808) %11) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18410 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 4                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18411
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false), !dbg !18413
  %i.d = icmp eq i64 %3, 0, !dbg !18414
  br i1 %i.d, label %._crit_edge.thread, label %.lr.ph.preheader, !dbg !18414

.lr.ph.preheader:                                 ; preds = %bb.a
  %exitcond.not762 = icmp eq i64 %2, 0, !dbg !18418
  br i1 %exitcond.not762, label %.lr.ph._crit_edge, label %.lr.ph766, !dbg !18418

._crit_edge:                                      ; preds = %bb.bg
  %i.e = icmp ult i64 %.sroa.02.1, 2, !dbg !18419
  br i1 %i.e, label %._crit_edge.thread, label %bb.b, !dbg !18419

.lr.ph:                                           ; preds = %bb.bg
  %exitcond.not = icmp eq i64 %i.gv, %2, !dbg !18418
  br i1 %exitcond.not, label %.lr.ph._crit_edge, label %.lr.ph766, !dbg !18418

bb.b:                                             ; preds = %._crit_edge
  %.not.not = icmp samesign ult i64 %.sroa.012.0354765, %6
  br i1 %.not.not, label %._crit_edge361, label %bb.c, !dbg !18420, !prof !5881

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  tail call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef 4, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull %10, i64 noundef %11), !dbg !18429
  %i.f = trunc i64 %4 to i8, !dbg !18430
  %i.g = load i64, ptr %i.c, align 8, !dbg !18431, !noundef !14 ; 7 uses
  tail call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef %i.f, i64 noundef %i.g, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull %10, i64 noundef %11), !dbg !18432
  %i.h = icmp ult i64 %i.g, %6, !dbg !18433
  br i1 %i.h, label %bb.bb, label %bb.bc, !dbg !18433

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.gv, i64 noundef %6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #18, !dbg !18434
  unreachable, !dbg !18434

._crit_edge361:                                   ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %5, i8 0, i64 %i.gv, i1 false), !dbg !18435
  %i.i = shl nuw i64 %i.gv, 1, !dbg !18438
  %i.j = or disjoint i64 %i.i, 1, !dbg !18441
  %i.k = tail call { ptr, i64 } @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14combined_alloc8alloc_ifNtNtB4_14entropy_encode11HuffmanTreeNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(i1 noundef zeroext true, ptr noalias noundef nonnull %0, i64 noundef %i.j), !dbg !18444 ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0, !dbg !18444 ; 18 uses
  %i.m = extractvalue { ptr, i64 } %i.k, 1, !dbg !18444 ; 22 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.first_iter = icmp samesign ult i64 %.sroa.012.0354765, %2
  br label %.lr.ph365.preheader, !dbg !18448

.lr.ph365.preheader:                              ; preds = %._crit_edge361, %.thread236
  %.sroa.024.0 = phi i32 [ 1, %._crit_edge361 ], [ %i.as, %.thread236 ], !dbg !18451 ; 3 uses
  br label %.lr.ph365, !dbg !18452

.lr.ph365:                                        ; preds = %.lr.ph365.preheader, %bb.ay
  %.sroa.027.0363 = phi i32 [ %.sroa.027.2, %bb.ay ], [ 0, %.lr.ph365.preheader ] ; 3 uses
  %.sroa.037.0362 = phi i64 [ %i.o, %bb.ay ], [ %i.gv, %.lr.ph365.preheader ]
  %i.o = add nsw i64 %.sroa.037.0362, -1, !dbg !18455 ; 5 uses
  br i1 %.first_iter, label %bb.ax, label %.invoke700, !dbg !18452

.thread:                                          ; preds = %.invoke, %13
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.e, !dbg !18458

.loopexit239:                                     ; preds = %._crit_edge366
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %._crit_edge.i.invoke, %.invoke700, %.split382.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit239
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit239 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.p = icmp eq i64 %i.m, 0, !dbg !18458
  br i1 %i.p, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode11HuffmanTreeEECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.e, !dbg !18458

bb.e:                                             ; preds = %.thread, %bb.d
  %lpad.phi234 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread ], [ %lpad.phi, %bb.d ]
  %i.q = shl nuw nsw i64 %i.m, 3, !dbg !18462
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef range(i64 1, 0) %i.q, i64 noundef 4) #19, !dbg !18465
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode11HuffmanTreeEECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !18470

._crit_edge366:                                   ; preds = %bb.ay
  %i.r = add i32 %.sroa.027.2, 1, !dbg !18471     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.s = sext i32 %.sroa.027.2 to i64, !dbg !18474
  invoke void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode20SortHuffmanTreeItemsNtNtB4_17brotli_bit_stream21SimpleSortHuffmanTreeECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 4 %i.l, i64 noundef %i.m, i64 noundef %i.s)
          to label %bb.f unwind label %.loopexit239, !dbg !18477

bb.f:                                             ; preds = %._crit_edge366
  %i.t = zext i32 %i.r to i64, !dbg !18478        ; 3 uses
  %i.u = icmp ugt i64 %i.m, %i.t, !dbg !18480
  br i1 %i.u, label %bb.g, label %.invoke700, !dbg !18480

.invoke700.loopexit778.split.loop.exit854:        ; preds = %bb.az
  %.not171.le = icmp ult i32 %i.gg, %.sroa.024.0
  %.706.le = select i1 %.not171.le, ptr @189, ptr @190
  br label %.invoke700, !dbg !18481

.invoke700:                                       ; preds = %bb.f, %.invoke700.loopexit778.split.loop.exit854, %.lr.ph365, %.lr.ph374
  %i.v = phi i64 [ %i.o, %.lr.ph365 ], [ %i.ep, %.lr.ph374 ], [ %i.gj, %.invoke700.loopexit778.split.loop.exit854 ], [ %i.t, %bb.f ]
  %i.w = phi i64 [ %2, %.lr.ph365 ], [ %i.m, %.lr.ph374 ], [ %i.m, %.invoke700.loopexit778.split.loop.exit854 ], [ %i.m, %bb.f ]
  %i.x = phi ptr [ @188, %.lr.ph365 ], [ @181, %.lr.ph374 ], [ %.706.le, %.invoke700.loopexit778.split.loop.exit854 ], [ @172, %bb.f ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x) #20
          to label %.cont701 unwind label %.loopexit.split-lp, !dbg !18481

.cont701:                                         ; preds = %.invoke700
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.t, !dbg !18480
  %i.z = zext i32 %.sroa.027.2 to i64, !dbg !18482 ; 3 uses
  %i.aa = icmp ugt i64 %i.m, %i.z, !dbg !18483
  store i64 -1, ptr %i.y, align 4, !dbg !18480
  br i1 %i.aa, label %bb.h, label %.invoke, !dbg !18483

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.z, !dbg !18483
  %.sroa.060.0368 = add i32 %.sroa.027.2, -1, !dbg !18484
  %i.ac = icmp sgt i32 %.sroa.060.0368, 0, !dbg !18485
  store i64 -1, ptr %i.ab, align 4, !dbg !18483
  br i1 %i.ac, label %.lr.ph374.preheader, label %.._crit_edge375_crit_edge, !dbg !18485

.._crit_edge375_crit_edge:                        ; preds = %bb.h
  %.pre529 = shl i32 %.sroa.027.2, 1, !dbg !18486
  br label %._crit_edge375, !dbg !18485

.lr.ph374.preheader:                              ; preds = %bb.h
  %i.ad = add nuw i32 %.sroa.027.2, 2, !dbg !18487
  %i.ae = shl i32 %.sroa.027.2, 1, !dbg !18490    ; 2 uses
  br label %.lr.ph374, !dbg !18490

._crit_edge375:                                   ; preds = %bb.aw, %.._crit_edge375_crit_edge
  %.pre-phi530 = phi i32 [ %.pre529, %.._crit_edge375_crit_edge ], [ %i.ae, %bb.aw ], !dbg !18486
  %i.af = add i32 %.pre-phi530, -1, !dbg !18486
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18493), !dbg !18496
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18497), !dbg !18496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18499, !noalias !18504
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.n, i8 0, i64 60, i1 false), !dbg !18505, !noalias !18504
  store i32 -1, ptr %i.b, align 4, !dbg !18506, !noalias !18504
  %i.ag = sext i32 %i.af to i64, !dbg !18510      ; 3 uses
  %i.ah = icmp ugt i64 %i.m, %i.ag, !dbg !18511
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge.i.invoke, !dbg !18511

.lr.ph.i:                                         ; preds = %._crit_edge375, %.backedge.i
  %i.ai = phi i64 [ %i.be, %.backedge.i ], [ %i.ag, %._crit_edge375 ]
  %.sroa.05.047.i = phi i32 [ %.sroa.05.0.be.i, %.backedge.i ], [ 0, %._crit_edge375 ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ai, !dbg !18511 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4, !dbg !18511
  %i.al = load i16, ptr %i.ak, align 4, !dbg !18511, !alias.scope !18493, !noalias !18497, !noundef !14 ; 2 uses
  %i.am = icmp slt i16 %i.al, 0, !dbg !18511
  br i1 %i.am, label %bb.j, label %bb.i, !dbg !18511

._crit_edge.i.invoke:                             ; preds = %._crit_edge375, %bb.m, %bb.k, %.backedge.i
  %i.an = phi i64 [ %12, %bb.k ], [ %i.be, %.backedge.i ], [ %i.bg, %bb.m ], [ %i.ag, %._crit_edge375 ]
  %i.ao = phi i64 [ 16, %bb.k ], [ %i.m, %.backedge.i ], [ 16, %bb.m ], [ %i.m, %._crit_edge375 ]
  %i.ap = phi ptr [ @514, %bb.k ], [ @512, %.backedge.i ], [ @515, %bb.m ], [ @512, %._crit_edge375 ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.an, i64 noundef %i.ao, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap) #18
          to label %._crit_edge.i.cont unwind label %.loopexit.split-lp, !dbg !18512

._crit_edge.i.cont:                               ; preds = %._crit_edge.i.invoke
  unreachable

bb.i:                                             ; preds = %.lr.ph.i
  %i.aq = add i32 %.sroa.05.047.i, 1, !dbg !18513 ; 4 uses
  %i.ar = icmp sgt i32 %i.aq, 14, !dbg !18514
  br i1 %i.ar, label %.thread236, label %bb.m, !dbg !18514

.thread236:                                       ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18515, !noalias !18504
  %i.as = shl i32 %.sroa.024.0, 1, !dbg !18516
  br label %.lr.ph365.preheader, !dbg !18448

bb.j:                                             ; preds = %.lr.ph.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 6, !dbg !18519
  %i.au = load i16, ptr %i.at, align 2, !dbg !18519, !alias.scope !18493, !noalias !18497, !noundef !14
  %i.av = sext i16 %i.au to i64, !dbg !18520      ; 3 uses
  %i.aw = icmp ugt i64 %6, %i.av, !dbg !18522
  br i1 %i.aw, label %bb.k, label %13, !dbg !18522

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 %i.av, !dbg !18522
  %i.ay = trunc i32 %.sroa.05.047.i to i8, !dbg !18522
  store i8 %i.ay, ptr %i.ax, align 1, !dbg !18522, !alias.scope !18497, !noalias !18493
  %12 = zext i32 %.sroa.05.047.i to i64, !dbg !18523 ; 2 uses
  %.first_iter.i = icmp ult i32 %.sroa.05.047.i, 16, !dbg !18523
  br i1 %.first_iter.i, label %.split.us, label %._crit_edge.i.invoke, !dbg !18524

13:                                               ; preds = %bb.j
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.av, i64 noundef range(i64 0, -9223372036854775808) %6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @513) #18
          to label %.noexc210 unwind label %.thread, !dbg !18522

.noexc210:                                        ; preds = %13
  unreachable, !dbg !18522

.split.us:                                        ; preds = %bb.k, %bb.l
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ %12, %bb.k ] ; 5 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv, !dbg !18524
  %i.ba = load i32, ptr %i.az, align 4, !dbg !18524, !noalias !18504, !noundef !14 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, -1, !dbg !18525
  br i1 %i.bb, label %bb.l, label %.split378.us, !dbg !18525

bb.l:                                             ; preds = %.split.us
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !18526
  %.not.i.us = icmp eq i64 %indvars.iv, 0, !dbg !18523
  br i1 %.not.i.us, label %.split382.us, label %.split.us, !dbg !18523

.split378.us:                                     ; preds = %.split.us
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.bd = trunc nuw i64 %indvars.iv to i32, !dbg !18527
  store i32 -1, ptr %i.bc, align 4, !dbg !18528, !noalias !18504
  br label %.backedge.i, !dbg !18529

.backedge.i:                                      ; preds = %bb.n, %.split378.us
  %.sroa.05.0.be.i = phi i32 [ %i.aq, %bb.n ], [ %i.bd, %.split378.us ]
  %.sroa.0.0.be.i = phi i32 [ %i.bm, %bb.n ], [ %i.ba, %.split378.us ]
  %i.be = sext i32 %.sroa.0.0.be.i to i64, !dbg !18510 ; 3 uses
  %i.bf = icmp ugt i64 %i.m, %i.be, !dbg !18511
  br i1 %i.bf, label %.lr.ph.i, label %._crit_edge.i.invoke, !dbg !18511

bb.m:                                             ; preds = %bb.i
  %i.bg = sext i32 %i.aq to i64, !dbg !18530      ; 2 uses
  %i.bh = icmp ult i32 %i.aq, 16, !dbg !18531
  br i1 %i.bh, label %bb.n, label %._crit_edge.i.invoke, !dbg !18531

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 6, !dbg !18532
  %i.bj = load i16, ptr %i.bi, align 2, !dbg !18532, !alias.scope !18493, !noalias !18497, !noundef !14
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bg, !dbg !18531
  %i.bl = sext i16 %i.bj to i32, !dbg !18531
  store i32 %i.bl, ptr %i.bk, align 4, !dbg !18531, !noalias !18504
  %i.bm = zext nneg i16 %i.al to i32, !dbg !18533
  br label %.backedge.i, !dbg !18534

.split382.us:                                     ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18515, !noalias !18504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18536
  store i64 0, ptr %i.a, align 8, !dbg !18536
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !18536
  store ptr inttoptr (i64 4 to ptr), ptr %i.bn, align 8, !dbg !18536
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !18536
  store i64 0, ptr %i.bo, align 8, !dbg !18536
  %i.bp = invoke { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode11HuffmanTreeE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.o unwind label %.loopexit.split-lp, !dbg !18541 ; 2 uses

bb.o:                                             ; preds = %.split382.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18542
  %i.bq = extractvalue { ptr, i64 } %i.bp, 1, !dbg !18543 ; 2 uses
  %i.br = shl nuw nsw i64 %i.m, 3, !dbg !18544
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.l, i64 noundef range(i64 1, 0) %i.br, i64 noundef 4) #19, !dbg !18551
  %i.bs = icmp eq i64 %i.bq, 0, !dbg !18556
  br i1 %i.bs, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode11HuffmanTreeEECsfISxE4fmY1Y_14polars_parquet.exit214, label %bb.p, !dbg !18556

bb.p:                                             ; preds = %bb.o
  %i.bt = extractvalue { ptr, i64 } %i.bp, 0, !dbg !18543 ; 2 uses
  %i.bu = shl nuw nsw i64 %i.bq, 3, !dbg !18560
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bt) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bt, i64 noundef range(i64 1, 0) %i.bu, i64 noundef 4) #19, !dbg !18563
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode11HuffmanTreeEECsfISxE4fmY1Y_14polars_parquet.exit214, !dbg !18568

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode11HuffmanTreeEECsfISxE4fmY1Y_14polars_parquet.exit214: ; preds = %bb.o, %bb.p
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode31BrotliConvertBitDepthsToSymbols(ptr noalias noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %i.gv, ptr noalias noundef nonnull align 2 %7, i64 noundef %8), !dbg !18569
  %i.bv = icmp ult i64 %.sroa.02.1, 5, !dbg !18570
  br i1 %i.bv, label %bb.q, label %.split388.preheader, !dbg !18570

.split388.preheader:                              ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode11HuffmanTreeEECsfISxE4fmY1Y_14polars_parquet.exit214
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream25StoreStaticCodeLengthCode(ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull %10, i64 noundef %11), !dbg !18571
  br label %.split388, !dbg !18574

bb.q:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode11HuffmanTreeEECsfISxE4fmY1Y_14polars_parquet.exit214
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef 2, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull %10, i64 noundef %11), !dbg !18578
  %i.bw = add nsw i64 %.sroa.02.1, -1, !dbg !18579
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef 2, i64 noundef %i.bw, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull %10, i64 noundef %11), !dbg !18581
  br label %bb.ae, !dbg !18582

.split388:                                        ; preds = %.split388.preheader, %.loopexit237
  %.sroa.084.0401 = phi i8 [ %.sroa.084.1, %.loopexit237 ], [ 8, %.split388.preheader ] ; 2 uses
  %.sroa.085.0400 = phi i64 [ %.pre-phi589, %.loopexit237 ], [ 0, %.split388.preheader ] ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 %.sroa.085.0400, !dbg !18589
  %i.by = load i8, ptr %i.bx, align 1, !dbg !18589, !noundef !14 ; 11 uses
  %.sroa.0100.0389 = add nuw nsw i64 %.sroa.085.0400, 1, !dbg !18590 ; 3 uses
  %i.bz = icmp ult i64 %.sroa.085.0400, %.sroa.012.0354765, !dbg !18574
  br i1 %i.bz, label %.lr.ph392.preheader, label %._crit_edge393.thread, !dbg !18574

.lr.ph392.preheader:                              ; preds = %.split388
  %i.ca = sub nsw i64 %i.gv, %.sroa.085.0400, !dbg !18592
  br label %.lr.ph392, !dbg !18592

.lr.ph392:                                        ; preds = %.lr.ph392.preheader, %bb.r
  %.sroa.0100.0391 = phi i64 [ %.sroa.0100.0, %bb.r ], [ %.sroa.0100.0389, %.lr.ph392.preheader ] ; 3 uses
  %.sroa.089.0390 = phi i64 [ %i.cg, %bb.r ], [ 1, %.lr.ph392.preheader ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 %.sroa.0100.0391, !dbg !18593
  %i.cc = load i8, ptr %i.cb, align 1, !dbg !18593, !noundef !14
  %i.cd = icmp eq i8 %i.cc, %i.by, !dbg !18592
  br i1 %i.cd, label %bb.r, label %._crit_edge393, !dbg !18592

._crit_edge393:                                   ; preds = %bb.r, %.lr.ph392
  %.sroa.089.0.lcssa.ph = phi i64 [ %i.ca, %bb.r ], [ %.sroa.089.0390, %.lr.ph392 ] ; 5 uses
  %.pre = add i64 %.sroa.089.0.lcssa.ph, %.sroa.085.0400, !dbg !18594 ; 2 uses
  %i.ce = icmp eq i8 %i.by, 0, !dbg !18596
  br i1 %i.ce, label %bb.s, label %bb.t, !dbg !18596

._crit_edge393.thread:                            ; preds = %.split388
  %i.cf = icmp eq i8 %i.by, 0, !dbg !18596
  br i1 %i.cf, label %.thread594, label %bb.t, !dbg !18596

bb.r:                                             ; preds = %.lr.ph392
  %i.cg = add nuw nsw i64 %.sroa.089.0390, 1, !dbg !18597
  %.sroa.0100.0 = add i64 %.sroa.0100.0391, 1, !dbg !18590
  %exitcond525.not = icmp eq i64 %.sroa.0100.0391, %.sroa.012.0354765, !dbg !18574
  br i1 %exitcond525.not, label %._crit_edge393, label %.lr.ph392, !dbg !18574

bb.s:                                             ; preds = %._crit_edge393
  %i.ch = icmp ult i64 %.sroa.089.0.lcssa.ph, 704, !dbg !18599
  br i1 %i.ch, label %.thread594, label %bb.u, !dbg !18599

bb.t:                                             ; preds = %._crit_edge393.thread, %._crit_edge393
  %.sroa.089.0.lcssa592 = phi i64 [ 1, %._crit_edge393.thread ], [ %.sroa.089.0.lcssa.ph, %._crit_edge393 ] ; 2 uses
  %.pre-phi590 = phi i64 [ %.sroa.0100.0389, %._crit_edge393.thread ], [ %.pre, %._crit_edge393 ] ; 3 uses
  %.not172 = icmp eq i8 %.sroa.084.0401, %i.by, !dbg !18600
  br i1 %.not172, label %bb.w, label %bb.v, !dbg !18600

bb.u:                                             ; preds = %bb.s
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.089.0.lcssa.ph, i64 noundef 704, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @174) #18, !dbg !18599
  unreachable, !dbg !18599

.thread594:                                       ; preds = %._crit_edge393.thread, %bb.s
  %.pre-phi591598 = phi i64 [ %.pre, %bb.s ], [ %.sroa.0100.0389, %._crit_edge393.thread ]
  %.sroa.089.0.lcssa593597 = phi i64 [ %.sroa.089.0.lcssa.ph, %bb.s ], [ 1, %._crit_edge393.thread ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc9constants14kZeroRepsDepth, i64 %.sroa.089.0.lcssa593597, !dbg !18599
  %i.cj = load i32, ptr %i.ci, align 4, !dbg !18599, !noundef !14
  %i.ck = trunc i32 %i.cj to i8, !dbg !18599
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc9constants13kZeroRepsBits, i64 %.sroa.089.0.lcssa593597, !dbg !18601
  %i.cm = load i64, ptr %i.cl, align 8, !dbg !18601, !noundef !14
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef %i.ck, i64 noundef %i.cm, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull %10, i64 noundef %11), !dbg !18602
  br label %.loopexit237, !dbg !18603

.loopexit237:                                     ; preds = %.lr.ph398.split, %.preheader, %bb.ab, %.thread594
  %.pre-phi589 = phi i64 [ %.pre-phi591598, %.thread594 ], [ %.pre-phi590, %bb.ab ], [ %.pre-phi590, %.preheader ], [ %.pre-phi590, %.lr.ph398.split ] ; 2 uses
  %.sroa.084.1 = phi i8 [ %.sroa.084.0401, %.thread594 ], [ %i.by, %bb.ab ], [ %i.by, %.preheader ], [ %i.by, %.lr.ph398.split ], !dbg !18604
  %.not = icmp ugt i64 %.pre-phi589, %.sroa.012.0354765, !dbg !18605
  br i1 %.not, label %.loopexit238, label %.split388, !dbg !18605

bb.v:                                             ; preds = %bb.t
  %i.cn = zext i8 %i.by to i64, !dbg !18606       ; 3 uses
  %i.co = icmp ult i8 %i.by, 18, !dbg !18607
  br i1 %i.co, label %bb.x, label %bb.y, !dbg !18607

bb.w:                                             ; preds = %bb.t, %bb.x
  %.sroa.089.1 = phi i64 [ %i.da, %bb.x ], [ %.sroa.089.0.lcssa592, %bb.t ], !dbg !18608 ; 4 uses
  %i.cp = icmp ult i64 %.sroa.089.1, 3, !dbg !18609
  br i1 %i.cp, label %.preheader, label %bb.z, !dbg !18609

.preheader:                                       ; preds = %bb.w
  %i.cq = icmp eq i64 %.sroa.089.1, 0, !dbg !18610
  br i1 %i.cq, label %.loopexit237, label %.lr.ph398, !dbg !18610

.lr.ph398:                                        ; preds = %.preheader
  %i.cr = zext i8 %i.by to i64                    ; 3 uses
  %i.cs = icmp ult i8 %i.by, 18
  %i.ct = getelementptr inbounds nuw i8, ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc9constants16kCodeLengthDepth, i64 %i.cr
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc9constants15kCodeLengthBits, i64 %i.cr
  br i1 %i.cs, label %.lr.ph398.split, label %bb.ac, !dbg !18611

bb.x:                                             ; preds = %bb.v
  %i.cv = getelementptr inbounds nuw i8, ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc9constants16kCodeLengthDepth, i64 %i.cn, !dbg !18607
  %i.cw = load i8, ptr %i.cv, align 1, !dbg !18607, !noundef !14
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc9constants15kCodeLengthBits, i64 %i.cn, !dbg !18612
  %i.cy = load i32, ptr %i.cx, align 4, !dbg !18612, !noundef !14
  %i.cz = zext i32 %i.cy to i64, !dbg !18612
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef %i.cw, i64 noundef %i.cz, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull %10, i64 noundef %11), !dbg !18613
  %i.da = add i64 %.sroa.089.0.lcssa592, -1, !dbg !18614
  br label %bb.w, !dbg !18616

bb.y:                                             ; preds = %bb.v
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.cn, i64 noundef 18, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @175) #18, !dbg !18607
  unreachable, !dbg !18607

bb.z:                                             ; preds = %bb.w
  %i.db = add i64 %.sroa.089.1, -3, !dbg !18617   ; 4 uses
  %i.dc = icmp ult i64 %i.db, 704, !dbg !18619
  br i1 %i.dc, label %bb.ab, label %bb.aa, !dbg !18619

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.db, i64 noundef 704, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @176) #18, !dbg !18619
  unreachable, !dbg !18619

bb.ab:                                            ; preds = %bb.z
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc9constants17kNonZeroRepsDepth, i64 %i.db, !dbg !18619
  %i.de = load i32, ptr %i.dd, align 4, !dbg !18619, !noundef !14
  %i.df = trunc i32 %i.de to i8, !dbg !18619
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc9constants16kNonZeroRepsBits, i64 %i.db, !dbg !18620
  %i.dh = load i64, ptr %i.dg, align 8, !dbg !18620, !noundef !14
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef %i.df, i64 noundef %i.dh, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull %10, i64 noundef %11), !dbg !18621
  br label %.loopexit237, !dbg !18622

.lr.ph398.split:                                  ; preds = %.lr.ph398, %.lr.ph398.split
  %.sroa.089.2397 = phi i64 [ %i.di, %.lr.ph398.split ], [ %.sroa.089.1, %.lr.ph398 ]
  %i.di = add nsw i64 %.sroa.089.2397, -1, !dbg !18623 ; 2 uses
  %i.dj = load i8, ptr %i.ct, align 1, !dbg !18611, !noundef !14
  %i.dk = load i32, ptr %i.cu, align 4, !dbg !18625, !noundef !14
  %i.dl = zext i32 %i.dk to i64, !dbg !18625
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef %i.dj, i64 noundef %i.dl, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull %10, i64 noundef %11), !dbg !18626
  %i.dm = icmp eq i64 %i.di, 0, !dbg !18610
  br i1 %i.dm, label %.loopexit237, label %.lr.ph398.split, !dbg !18610

bb.ac:                                            ; preds = %.lr.ph398
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.cr, i64 noundef 18, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @177) #18, !dbg !18611
  unreachable, !dbg !18611

.loopexit:                                        ; preds = %bb.ap, %bb.ae
  %exitcond527.not = icmp eq i64 %i.dr, %.sroa.02.1, !dbg !18627
  br i1 %exitcond527.not, label %bb.ad, label %bb.ae, !dbg !18582
end_hunk_0
begin_hunk_1_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock31ContextBlockSplitterFinishBlockNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB1c_ECsfISxE4fmY1Y_14polars_parquet:bb.a
  %i.kr = add nuw nsw i64 %i.d, 9, !dbg !32320    ; 2 uses
  %exitcond336.9.not = icmp eq i64 %i.gy, 9, !dbg !32242
  br i1 %exitcond336.9.not, label %.invoke425, label %bb.bx, !dbg !32242

bb.bx:                                            ; preds = %bb.bw
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 116, !dbg !32314 ; 2 uses
  %i.kt = load float, ptr %i.ks, align 4, !dbg !32314, !noundef !14
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.kr, !dbg !32242
  store float %i.kt, ptr %i.ku, align 4, !dbg !32242
  %i.kv = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !32315
  %i.kw = load float, ptr %i.kv, align 4, !dbg !32315, !noundef !14
  store float %i.kw, ptr %i.ks, align 4, !dbg !32316
  %exitcond338.9.not = icmp eq i64 %i.d, 10, !dbg !32317
  br i1 %exitcond338.9.not, label %._crit_edge236, label %bb.by, !dbg !32236

bb.by:                                            ; preds = %bb.bx
  %i.kx = add nuw nsw i64 %i.d, 10, !dbg !32320   ; 2 uses
  %exitcond336.10.not = icmp eq i64 %i.gy, 10, !dbg !32242
  br i1 %exitcond336.10.not, label %.invoke425, label %bb.bz, !dbg !32242

bb.bz:                                            ; preds = %bb.by
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !32314 ; 2 uses
  %i.kz = load float, ptr %i.ky, align 8, !dbg !32314, !noundef !14
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.kx, !dbg !32242
  store float %i.kz, ptr %i.la, align 4, !dbg !32242
  %i.lb = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !32315
  %i.lc = load float, ptr %i.lb, align 4, !dbg !32315, !noundef !14
  store float %i.lc, ptr %i.ky, align 8, !dbg !32316
  %exitcond338.10.not = icmp eq i64 %i.d, 11, !dbg !32317
  br i1 %exitcond338.10.not, label %._crit_edge236, label %bb.ca, !dbg !32236

bb.ca:                                            ; preds = %bb.bz
  %i.ld = add nuw nsw i64 %i.d, 11, !dbg !32320   ; 2 uses
  %exitcond336.11.not = icmp eq i64 %i.gy, 11, !dbg !32242
  br i1 %exitcond336.11.not, label %.invoke425, label %bb.cb, !dbg !32242

bb.cb:                                            ; preds = %bb.ca
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 124, !dbg !32314 ; 2 uses
  %i.lf = load float, ptr %i.le, align 4, !dbg !32314, !noundef !14
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.ld, !dbg !32242
  store float %i.lf, ptr %i.lg, align 4, !dbg !32242
  %i.lh = getelementptr inbounds nuw i8, ptr %i.b, i64 44, !dbg !32315
  %i.li = load float, ptr %i.lh, align 4, !dbg !32315, !noundef !14
  store float %i.li, ptr %i.le, align 4, !dbg !32316
  %exitcond338.11.not = icmp eq i64 %i.d, 12, !dbg !32317
  br i1 %exitcond338.11.not, label %._crit_edge236, label %bb.cc, !dbg !32236

bb.cc:                                            ; preds = %bb.cb
  %i.lj = add nuw nsw i64 %i.d, 12, !dbg !32320   ; 2 uses
  %exitcond336.12.not = icmp eq i64 %i.gy, 12, !dbg !32242
  br i1 %exitcond336.12.not, label %.invoke425, label %bb.cd, !dbg !32242

bb.cd:                                            ; preds = %bb.cc
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !32314 ; 2 uses
  %i.ll = load float, ptr %i.lk, align 8, !dbg !32314, !noundef !14
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.lj, !dbg !32242
  store float %i.ll, ptr %i.lm, align 4, !dbg !32242
  %i.ln = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !32315
  %i.lo = load float, ptr %i.ln, align 4, !dbg !32315, !noundef !14
  store float %i.lo, ptr %i.lk, align 8, !dbg !32316
  %exitcond338.12.not = icmp eq i64 %i.d, 13, !dbg !32317
  br i1 %exitcond338.12.not, label %._crit_edge236, label %bb.ce, !dbg !32236

bb.ce:                                            ; preds = %bb.cd
  %i.lp = add nuw nsw i64 %i.d, 13, !dbg !32320   ; 2 uses
  %exitcond336.13.not = icmp eq i64 %i.gy, 13, !dbg !32242
  br i1 %exitcond336.13.not, label %.invoke425, label %bb.cf, !dbg !32242

bb.cf:                                            ; preds = %bb.ce
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 132, !dbg !32314
  %i.lr = load float, ptr %i.lq, align 4, !dbg !32314, !noundef !14
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.lp, !dbg !32242
  store float %i.lr, ptr %i.ls, align 4, !dbg !32242
  br label %.invoke425, !dbg !32315

bb.cg:                                            ; preds = %bb.w
  %i.lt = getelementptr inbounds nuw [1040 x i8], ptr %3, i64 %i.cn, !dbg !32056 ; 3 uses
  %i.lu = load i64, ptr %i.bx, align 8, !dbg !32322, !noundef !14
  %i.lv = invoke { float, i64 } @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc8bit_cost15shannon_entropy(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.lt, i64 noundef 256, i64 noundef %i.lu)
          to label %bb.ch unwind label %.loopexit.split-lp.loopexit, !dbg !32323 ; 2 uses

bb.ch:                                            ; preds = %bb.cg
  %i.lw = extractvalue { float, i64 } %i.lv, 0, !dbg !32323 ; 2 uses
  %i.lx = extractvalue { float, i64 } %i.lv, 1, !dbg !32323
  %i.ly = uitofp i64 %i.lx to float, !dbg !32325  ; 2 uses
  %i.lz = fcmp olt float %i.lw, %i.ly, !dbg !32327
  %.sroa.010.0 = select i1 %i.lz, float %i.ly, float %i.lw, !dbg !32327 ; 3 uses
  %exitcond311.not = icmp eq i64 %.sroa.023.0222, 13, !dbg !32328
  br i1 %exitcond311.not, label %.invoke425, label %bb.ci, !dbg !32328

bb.ci:                                            ; preds = %bb.ch
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.sroa.023.0222, !dbg !32328
  store float %.sroa.010.0, ptr %i.ma, align 4, !dbg !32328
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bu) ]
  %i.mb = load i64, ptr %0, align 8, !dbg !32329, !noundef !14
  %i.mc = add i64 %i.mb, %.sroa.023.0222, !dbg !32331 ; 3 uses
  %exitcond312.not = icmp eq i64 %.sroa.023.0222, %i.bv, !dbg !32333
  br i1 %exitcond312.not, label %.invoke425, label %bb.cj, !dbg !32333

bb.cj:                                            ; preds = %bb.ci
  %i.md = getelementptr inbounds nuw [1040 x i8], ptr %i.bu, i64 %.sroa.023.0222, !dbg !32333 ; 9 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.md, ptr noundef nonnull align 8 dereferenceable(1040) %i.lt, i64 1040, i1 false), !dbg !32333
  %i.me = icmp ult i64 %i.mc, %4, !dbg !32335
  br i1 %i.me, label %.noexc117, label %.invoke, !dbg !32335

.noexc117:                                        ; preds = %bb.cj
  %i.mf = getelementptr inbounds nuw [1040 x i8], ptr %3, i64 %i.mc, !dbg !32336 ; 8 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.md, i64 1024, !dbg !32337 ; 2 uses
  %i.mh = load i64, ptr %i.mg, align 8, !dbg !32337, !alias.scope !32340, !noundef !14
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 1024, !dbg !32343 ; 2 uses
  %i.mj = load i64, ptr %i.mi, align 8, !dbg !32343, !alias.scope !32345, !noundef !14
  %i.mk = add i64 %i.mj, %i.mh, !dbg !32348
  store i64 %i.mk, ptr %i.mg, align 8, !dbg !32349, !alias.scope !32351
  %bound0453 = icmp ult ptr %i.bu, %i.mi, !dbg !32354
  %bound1454 = icmp ult ptr %i.mf, %scevgep452, !dbg !32354
  %found.conflict455 = and i1 %bound0453, %bound1454, !dbg !32354
  br i1 %found.conflict455, label %scalar.ph456, label %vector.body458, !dbg !32357

vector.body458:                                   ; preds = %.noexc117, %vector.body458
  %index459 = phi i64 [ %index.next464.1, %vector.body458 ], [ 0, %.noexc117 ], !dbg !32357 ; 4 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %index459, !dbg !32360 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 16, !dbg !32361 ; 2 uses
  %wide.load460 = load <4 x i32>, ptr %i.ml, align 4, !dbg !32361, !alias.scope !32362, !noalias !32365
  %wide.load461 = load <4 x i32>, ptr %i.mm, align 4, !dbg !32361, !alias.scope !32362, !noalias !32365
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %index459, !dbg !32367 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16, !dbg !32367
  %wide.load462 = load <4 x i32>, ptr %i.mn, align 8, !dbg !32367, !alias.scope !32365
  %wide.load463 = load <4 x i32>, ptr %i.mo, align 8, !dbg !32367, !alias.scope !32365
  %i.mp = add <4 x i32> %wide.load462, %wide.load460, !dbg !32368
  %i.mq = add <4 x i32> %wide.load463, %wide.load461, !dbg !32368
  store <4 x i32> %i.mp, ptr %i.ml, align 4, !dbg !32370, !alias.scope !32362, !noalias !32365
  store <4 x i32> %i.mq, ptr %i.mm, align 4, !dbg !32370, !alias.scope !32362, !noalias !32365
  %index.next464 = or disjoint i64 %index459, 8, !dbg !32357 ; 2 uses
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %index.next464, !dbg !32360 ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 16, !dbg !32361 ; 2 uses
  %wide.load460.1 = load <4 x i32>, ptr %i.mr, align 4, !dbg !32361, !alias.scope !32362, !noalias !32365
  %wide.load461.1 = load <4 x i32>, ptr %i.ms, align 4, !dbg !32361, !alias.scope !32362, !noalias !32365
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %index.next464, !dbg !32367 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 16, !dbg !32367
  %wide.load462.1 = load <4 x i32>, ptr %i.mt, align 8, !dbg !32367, !alias.scope !32365
  %wide.load463.1 = load <4 x i32>, ptr %i.mu, align 8, !dbg !32367, !alias.scope !32365
  %i.mv = add <4 x i32> %wide.load462.1, %wide.load460.1, !dbg !32368
  %i.mw = add <4 x i32> %wide.load463.1, %wide.load461.1, !dbg !32368
  store <4 x i32> %i.mv, ptr %i.mr, align 4, !dbg !32370, !alias.scope !32362, !noalias !32365
  store <4 x i32> %i.mw, ptr %i.ms, align 4, !dbg !32370, !alias.scope !32362, !noalias !32365
  %index.next464.1 = add nuw nsw i64 %index459, 16, !dbg !32357 ; 2 uses
  %i.mx = icmp eq i64 %index.next464.1, 256, !dbg !32354
  br i1 %i.mx, label %middle.block465, label %vector.body458, !dbg !32354, !llvm.loop !32371

scalar.ph456:                                     ; preds = %.noexc117, %scalar.ph456
  %.sroa.01.0.i220 = phi i64 [ %i.nq, %scalar.ph456 ], [ 0, %.noexc117 ] ; 6 uses
  %i.my = or disjoint i64 %.sroa.01.0.i220, 1, !dbg !32357 ; 2 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %.sroa.01.0.i220, !dbg !32360 ; 2 uses
  %i.na = load i32, ptr %i.mz, align 4, !dbg !32361, !noundef !14
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %.sroa.01.0.i220, !dbg !32367
  %i.nc = load i32, ptr %i.nb, align 8, !dbg !32367, !noundef !14
  %i.nd = add i32 %i.nc, %i.na, !dbg !32368
  store i32 %i.nd, ptr %i.mz, align 4, !dbg !32370
  %i.ne = or disjoint i64 %.sroa.01.0.i220, 2, !dbg !32357 ; 2 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.my, !dbg !32360 ; 2 uses
  %i.ng = load i32, ptr %i.nf, align 4, !dbg !32361, !noundef !14
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %i.my, !dbg !32367
  %i.ni = load i32, ptr %i.nh, align 4, !dbg !32367, !noundef !14
  %i.nj = add i32 %i.ni, %i.ng, !dbg !32368
  store i32 %i.nj, ptr %i.nf, align 4, !dbg !32370
  %i.nk = or disjoint i64 %.sroa.01.0.i220, 3, !dbg !32357 ; 2 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.ne, !dbg !32360 ; 2 uses
  %i.nm = load i32, ptr %i.nl, align 4, !dbg !32361, !noundef !14
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %i.ne, !dbg !32367
  %i.no = load i32, ptr %i.nn, align 8, !dbg !32367, !noundef !14
  %i.np = add i32 %i.no, %i.nm, !dbg !32368
  store i32 %i.np, ptr %i.nl, align 4, !dbg !32370
  %i.nq = add nuw nsw i64 %.sroa.01.0.i220, 4, !dbg !32357 ; 2 uses
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.nk, !dbg !32360 ; 2 uses
  %i.ns = load i32, ptr %i.nr, align 4, !dbg !32361, !noundef !14
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %i.nk, !dbg !32367
  %i.nu = load i32, ptr %i.nt, align 4, !dbg !32367, !noundef !14
  %i.nv = add i32 %i.nu, %i.ns, !dbg !32368
  store i32 %i.nv, ptr %i.nr, align 4, !dbg !32370
  %exitcond.not.3 = icmp eq i64 %i.nq, 256, !dbg !32372
  br i1 %exitcond.not.3, label %middle.block465, label %scalar.ph456, !dbg !32354, !llvm.loop !32374

middle.block465:                                  ; preds = %vector.body458, %scalar.ph456
  %i.nw = load i64, ptr %i.bx, align 8, !dbg !32375, !noundef !14
  %i.nx = invoke { float, i64 } @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc8bit_cost15shannon_entropy(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.md, i64 noundef 256, i64 noundef %i.nw)
          to label %bb.ck unwind label %.loopexit161, !dbg !32376 ; 2 uses

bb.ck:                                            ; preds = %middle.block465
  %i.ny = extractvalue { float, i64 } %i.nx, 0, !dbg !32376 ; 2 uses
  %i.nz = extractvalue { float, i64 } %i.nx, 1, !dbg !32376
  %i.oa = uitofp i64 %i.nz to float, !dbg !32378  ; 2 uses
  %i.ob = fcmp olt float %i.ny, %i.oa, !dbg !32380
  %.sroa.012.0 = select i1 %i.ob, float %i.oa, float %i.ny, !dbg !32380 ; 2 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.023.0222, !dbg !32381
  store float %.sroa.012.0, ptr %i.oc, align 4, !dbg !32381
  %i.od = fsub float %.sroa.012.0, %.sroa.010.0, !dbg !32382
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.sroa.023.0222, !dbg !32383
  %i.of = load float, ptr %i.oe, align 4, !dbg !32383, !noundef !14
  %i.og = fsub float %i.od, %i.of, !dbg !32382
  %i.oh = fadd float %.sroa.0.1, %i.og, !dbg !32384 ; 2 uses
  %i.oi = add nuw i64 %i.d, %.sroa.023.0222, !dbg !32385 ; 5 uses
  %i.oj = load i64, ptr %i.cb, align 8, !dbg !32329, !noundef !14
  %i.ok = add i64 %i.oj, %.sroa.023.0222, !dbg !32331 ; 3 uses
  %exitcond313.not = icmp eq i64 %.sroa.023.0222, %i.bz, !dbg !32333
  br i1 %exitcond313.not, label %.invoke425, label %bb.cl, !dbg !32333

bb.cl:                                            ; preds = %bb.ck
  %i.ol = getelementptr inbounds nuw [1040 x i8], ptr %i.bu, i64 %i.oi, !dbg !32333 ; 9 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.ol, ptr noundef nonnull align 8 dereferenceable(1040) %i.lt, i64 1040, i1 false), !dbg !32333
  %i.om = icmp ult i64 %i.ok, %4, !dbg !32335
  br i1 %i.om, label %.noexc117.1, label %.invoke, !dbg !32335

.noexc117.1:                                      ; preds = %bb.cl
  %i.on = getelementptr inbounds nuw [1040 x i8], ptr %3, i64 %i.ok, !dbg !32336 ; 8 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ol, i64 1024, !dbg !32337 ; 2 uses
  %i.op = load i64, ptr %i.oo, align 8, !dbg !32337, !alias.scope !32340, !noundef !14
  %i.oq = getelementptr inbounds nuw i8, ptr %i.on, i64 1024, !dbg !32343 ; 2 uses
  %i.or = load i64, ptr %i.oq, align 8, !dbg !32343, !alias.scope !32345, !noundef !14
  %i.os = add i64 %i.or, %i.op, !dbg !32348
  store i64 %i.os, ptr %i.oo, align 8, !dbg !32349, !alias.scope !32351
  %bound0 = icmp ult ptr %scevgep446, %i.oq, !dbg !32354
  %bound1 = icmp ult ptr %i.on, %scevgep447, !dbg !32354
  %found.conflict = and i1 %bound0, %bound1, !dbg !32354
  br i1 %found.conflict, label %scalar.ph, label %vector.body, !dbg !32357

vector.body:                                      ; preds = %.noexc117.1, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %.noexc117.1 ], !dbg !32357 ; 4 uses
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %index, !dbg !32360 ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 16, !dbg !32361 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ot, align 4, !dbg !32361, !alias.scope !32387, !noalias !32390
  %wide.load448 = load <4 x i32>, ptr %i.ou, align 4, !dbg !32361, !alias.scope !32387, !noalias !32390
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %index, !dbg !32367 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 16, !dbg !32367
  %wide.load449 = load <4 x i32>, ptr %i.ov, align 8, !dbg !32367, !alias.scope !32390
  %wide.load450 = load <4 x i32>, ptr %i.ow, align 8, !dbg !32367, !alias.scope !32390
  %i.ox = add <4 x i32> %wide.load449, %wide.load, !dbg !32368
  %i.oy = add <4 x i32> %wide.load450, %wide.load448, !dbg !32368
  store <4 x i32> %i.ox, ptr %i.ot, align 4, !dbg !32370, !alias.scope !32387, !noalias !32390
  store <4 x i32> %i.oy, ptr %i.ou, align 4, !dbg !32370, !alias.scope !32387, !noalias !32390
  %index.next = or disjoint i64 %index, 8, !dbg !32357 ; 2 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %index.next, !dbg !32360 ; 3 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 16, !dbg !32361 ; 2 uses
  %wide.load.1 = load <4 x i32>, ptr %i.oz, align 4, !dbg !32361, !alias.scope !32387, !noalias !32390
  %wide.load448.1 = load <4 x i32>, ptr %i.pa, align 4, !dbg !32361, !alias.scope !32387, !noalias !32390
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %index.next, !dbg !32367 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 16, !dbg !32367
  %wide.load449.1 = load <4 x i32>, ptr %i.pb, align 8, !dbg !32367, !alias.scope !32390
  %wide.load450.1 = load <4 x i32>, ptr %i.pc, align 8, !dbg !32367, !alias.scope !32390
  %i.pd = add <4 x i32> %wide.load449.1, %wide.load.1, !dbg !32368
  %i.pe = add <4 x i32> %wide.load450.1, %wide.load448.1, !dbg !32368
  store <4 x i32> %i.pd, ptr %i.oz, align 4, !dbg !32370, !alias.scope !32387, !noalias !32390
  store <4 x i32> %i.pe, ptr %i.pa, align 4, !dbg !32370, !alias.scope !32387, !noalias !32390
  %index.next.1 = add nuw nsw i64 %index, 16, !dbg !32357 ; 2 uses
  %i.pf = icmp eq i64 %index.next.1, 256, !dbg !32354
  br i1 %i.pf, label %middle.block, label %vector.body, !dbg !32354, !llvm.loop !32392

scalar.ph:                                        ; preds = %.noexc117.1, %scalar.ph
  %.sroa.01.0.i220.1 = phi i64 [ %i.py, %scalar.ph ], [ 0, %.noexc117.1 ] ; 6 uses
  %i.pg = or disjoint i64 %.sroa.01.0.i220.1, 1, !dbg !32357 ; 2 uses
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %.sroa.01.0.i220.1, !dbg !32360 ; 2 uses
  %i.pi = load i32, ptr %i.ph, align 4, !dbg !32361, !noundef !14
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %.sroa.01.0.i220.1, !dbg !32367
  %i.pk = load i32, ptr %i.pj, align 8, !dbg !32367, !noundef !14
  %i.pl = add i32 %i.pk, %i.pi, !dbg !32368
  store i32 %i.pl, ptr %i.ph, align 4, !dbg !32370
  %i.pm = or disjoint i64 %.sroa.01.0.i220.1, 2, !dbg !32357 ; 2 uses
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %i.pg, !dbg !32360 ; 2 uses
  %i.po = load i32, ptr %i.pn, align 4, !dbg !32361, !noundef !14
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.pg, !dbg !32367
  %i.pq = load i32, ptr %i.pp, align 4, !dbg !32367, !noundef !14
  %i.pr = add i32 %i.pq, %i.po, !dbg !32368
  store i32 %i.pr, ptr %i.pn, align 4, !dbg !32370
  %i.ps = or disjoint i64 %.sroa.01.0.i220.1, 3, !dbg !32357 ; 2 uses
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %i.pm, !dbg !32360 ; 2 uses
  %i.pu = load i32, ptr %i.pt, align 4, !dbg !32361, !noundef !14
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.pm, !dbg !32367
  %i.pw = load i32, ptr %i.pv, align 8, !dbg !32367, !noundef !14
  %i.px = add i32 %i.pw, %i.pu, !dbg !32368
  store i32 %i.px, ptr %i.pt, align 4, !dbg !32370
  %i.py = add nuw nsw i64 %.sroa.01.0.i220.1, 4, !dbg !32357 ; 2 uses
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %i.ps, !dbg !32360 ; 2 uses
  %i.qa = load i32, ptr %i.pz, align 4, !dbg !32361, !noundef !14
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.ps, !dbg !32367
  %i.qc = load i32, ptr %i.qb, align 4, !dbg !32367, !noundef !14
  %i.qd = add i32 %i.qc, %i.qa, !dbg !32368
  store i32 %i.qd, ptr %i.pz, align 4, !dbg !32370
  %exitcond.1.not.3 = icmp eq i64 %i.py, 256, !dbg !32372
  br i1 %exitcond.1.not.3, label %middle.block, label %scalar.ph, !dbg !32354, !llvm.loop !32393

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %i.qe = load i64, ptr %i.bx, align 8, !dbg !32375, !noundef !14
  %i.qf = invoke { float, i64 } @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc8bit_cost15shannon_entropy(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ol, i64 noundef 256, i64 noundef %i.qe)
          to label %bb.cm unwind label %.loopexit161, !dbg !32376 ; 2 uses

bb.cm:                                            ; preds = %middle.block
  %exitcond315.not = icmp eq i64 %.sroa.023.0222, %i.ca, !dbg !32381
  br i1 %exitcond315.not, label %.invoke425, label %.loopexit, !dbg !32381

.loopexit:                                        ; preds = %bb.cm
  %i.qg = extractvalue { float, i64 } %i.qf, 0, !dbg !32376 ; 2 uses
  %i.qh = extractvalue { float, i64 } %i.qf, 1, !dbg !32376
  %i.qi = uitofp i64 %i.qh to float, !dbg !32378  ; 2 uses
  %i.qj = fcmp olt float %i.qg, %i.qi, !dbg !32380
  %.sroa.012.0.1 = select i1 %i.qj, float %i.qi, float %i.qg, !dbg !32380 ; 2 uses
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.oi, !dbg !32381
  store float %.sroa.012.0.1, ptr %i.qk, align 4, !dbg !32381
  %i.ql = fsub float %.sroa.012.0.1, %.sroa.010.0, !dbg !32382
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.oi, !dbg !32383
  %i.qn = load float, ptr %i.qm, align 4, !dbg !32383, !noundef !14
  %i.qo = fsub float %i.ql, %i.qn, !dbg !32382
  %i.qp = fadd float %.sroa.7.1, %i.qo, !dbg !32384 ; 2 uses
  %exitcond316.not = icmp eq i64 %i.cl, %i.d, !dbg !32033
  br i1 %exitcond316.not, label %._crit_edge, label %bb.w, !dbg !32043

bb.cn:                                            ; preds = %bb.co, %.loopexit.split-lp
  %lpad.phi160 = phi { ptr, i32 } [ %lpad.phi159, %bb.co ], [ %lpad.phi, %.loopexit.split-lp ]
  resume { ptr, i32 } %lpad.phi160, !dbg !32394

.thread:                                          ; preds = %.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.co, !dbg !32395

.loopexit161:                                     ; preds = %middle.block, %middle.block465
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.cg
  %lpad.loopexit162 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke425, %bb.bc, %bb.bb
  %lpad.loopexit.split-lp163 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit161
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit161 ], [ %lpad.loopexit162, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp163, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.qq = icmp eq i64 %i.bv, 0, !dbg !32395
  br i1 %i.qq, label %bb.cn, label %bb.co, !dbg !32395

bb.co:                                            ; preds = %.thread, %.loopexit.split-lp
  %lpad.phi159 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread ], [ %lpad.phi, %.loopexit.split-lp ]
  %i.qr = mul nuw nsw i64 %i.bv, 1040, !dbg !32399
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bu) ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bu, i64 noundef range(i64 1, 0) %i.qr, i64 noundef 8) #19, !dbg !32402
  br label %bb.cn, !dbg !32407
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock34BrotliBuildMetaBlockGreedyInternalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, 4294967296) %3, i64 noundef range(i64 0, 4294967296) %4, i8 noundef %5, i8 noundef %6, i8 noundef range(i8 0, 4) %7, i64 noundef %8, ptr noalias noundef nonnull readonly align 4 captures(none) %9, i64 noundef range(i64 0, 2305843009213693952) %10, ptr noalias noundef nonnull readonly align 4 captures(none) %11, i64 noundef range(i64 0, 576460752303423488) %12, i64 noundef %13, ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %14) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !32408 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !32409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !32410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !32412
  %.not = icmp eq i64 %13, 0, !dbg !32414         ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader, !dbg !32416

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.v = add i64 %13, -1, !dbg !32425
  %.not398.not = icmp ugt i64 %12, %i.v, !dbg !32425
  br i1 %.not398.not, label %.lr.ph.preheader614, label %bb.en, !dbg !32425

.lr.ph.preheader614:                              ; preds = %.lr.ph.preheader
  %xtraiter = and i64 %13, 3, !dbg !32416         ; 3 uses
  %i.w = icmp ult i64 %13, 4, !dbg !32416
  br i1 %i.w, label %.lr.ph.epil.preheader, label %.lr.ph.preheader614.new, !dbg !32416

.lr.ph.preheader614.new:                          ; preds = %.lr.ph.preheader614
  %unroll_iter = and i64 %13, -4, !dbg !32416
  br label %.lr.ph, !dbg !32416

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !32416
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader, !dbg !32416
end_hunk_1
begin_hunk_2_@llvm.vector.reduce.fmin.v4f32
!18324 = distinct !DILocation(line: 2798, column: 5, scope: !18316)
!18325 = !DILocation(line: 2511, column: 13, scope: !1225, inlinedAt: !18326)
!18326 = distinct !DILocation(line: 2031, column: 30, scope: !1220, inlinedAt: !18324)
!18327 = !DILocation(line: 2031, column: 5, scope: !1220, inlinedAt: !18324)
!18328 = !DILocation(line: 2032, column: 13, scope: !1220, inlinedAt: !18324)
!18329 = !DILocation(line: 2032, column: 5, scope: !1220, inlinedAt: !18324)
!18330 = !{!18318, !18322}
!18331 = !DILocation(line: 2800, column: 25, scope: !18332)
!18332 = distinct !DILexicalBlock(scope: !18316, file: !49, line: 2799, column: 5)
!18333 = !DILocation(line: 977, column: 16, scope: !18334, inlinedAt: !18335)
!18334 = distinct !DISubprogram(name: "checked_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj11checked_sub", scope: !58, file: !57, line: 971, type: !13, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18335 = !DILocation(line: 450, column: 32, scope: !18336, inlinedAt: !18337)
!18336 = distinct !DISubprogram(name: "index_mut<u8>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE9index_mutCsfISxE4fmY1Y_14polars_parquet", scope: !743, file: !160, line: 448, type: !13, scopeLine: 448, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18337 = !DILocation(line: 31, column: 15, scope: !18338, inlinedAt: !18339)
!18338 = distinct !DISubprogram(name: "index_mut<u8, core::ops::range::Range<usize>>", linkageName: "_RNvXs_NtNtCscgRAwXFJnXP_4core5slice5indexShINtNtNtB8_3ops5index8IndexMutINtNtBK_5range5RangejEE9index_mutCsfISxE4fmY1Y_14polars_parquet", scope: !166, file: !160, line: 30, type: !13, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18339 = !DILocation(line: 2800, column: 12, scope: !18332)
!18340 = !DILocation(line: 456, column: 13, scope: !18336, inlinedAt: !18337)
!18341 = !DILocation(line: 5621, column: 13, scope: !18342, inlinedAt: !18343)
!18342 = distinct !DISubprogram(name: "spec_clone_from<u8>", linkageName: "_RNvXs4_NtCscgRAwXFJnXP_4core5sliceShINtB5_13CloneFromSpechE15spec_clone_fromCsfISxE4fmY1Y_14polars_parquet", scope: !764, file: !763, line: 5618, type: !13, scopeLine: 5618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18343 = !DILocation(line: 4258, column: 14, scope: !18344, inlinedAt: !18345)
!18344 = distinct !DISubprogram(name: "clone_from_slice<u8>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSh16clone_from_sliceCsfISxE4fmY1Y_14polars_parquet", scope: !767, file: !763, line: 4254, type: !13, scopeLine: 4254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18345 = !DILocation(line: 2800, column: 54, scope: !18332)
!18346 = !DILocation(line: 2801, column: 19, scope: !18332)
!18347 = !DILocation(line: 2801, column: 43, scope: !18332)
!18348 = !DILocation(line: 2511, column: 13, scope: !18349, inlinedAt: !18350)
!18349 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !58, file: !57, line: 2510, type: !13, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18350 = !DILocation(line: 2801, column: 30, scope: !18332)
!18351 = !DILocation(line: 2801, column: 5, scope: !18332)
!18352 = !DILocation(line: 2802, column: 22, scope: !18332)
!18353 = !DILocation(line: 2803, column: 25, scope: !18354)
!18354 = distinct !DILexicalBlock(scope: !18332, file: !49, line: 2802, column: 5)
!18355 = !DILocation(line: 977, column: 16, scope: !18334, inlinedAt: !18356)
!18356 = !DILocation(line: 450, column: 32, scope: !18357, inlinedAt: !18358)
!18357 = !DILexicalBlockFile(scope: !18336, file: !160, discriminator: 2)
!18358 = !DILocation(line: 31, column: 15, scope: !18359, inlinedAt: !18360)
!18359 = !DILexicalBlockFile(scope: !18338, file: !160, discriminator: 2)
!18360 = !DILocation(line: 2803, column: 12, scope: !18354)
!18361 = !DILocation(line: 456, column: 13, scope: !18336, inlinedAt: !18358)
!18362 = !DILocation(line: 101, column: 24, scope: !18363, inlinedAt: !18365)
!18363 = distinct !DILexicalBlock(scope: !18364, file: !160, line: 99, column: 5)
!18364 = distinct !DISubprogram(name: "get_offset_len_mut_noubcheck<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index28get_offset_len_mut_noubcheckhECsfISxE4fmY1Y_14polars_parquet", scope: !162, file: !160, line: 94, type: !13, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18365 = !DILocation(line: 454, column: 28, scope: !18357, inlinedAt: !18358)
!18366 = !DILocation(line: 5621, column: 13, scope: !18342, inlinedAt: !18367)
!18367 = !DILocation(line: 4258, column: 14, scope: !18368, inlinedAt: !18369)
!18368 = !DILexicalBlockFile(scope: !18344, file: !763, discriminator: 2)
!18369 = !DILocation(line: 2803, column: 54, scope: !18354)
!18370 = !DILocation(line: 2804, column: 19, scope: !18354)
!18371 = !DILocation(line: 2804, column: 43, scope: !18354)
!18372 = !DILocation(line: 2511, column: 13, scope: !18349, inlinedAt: !18373)
!18373 = !DILocation(line: 2804, column: 30, scope: !18354)
!18374 = !DILocation(line: 2804, column: 5, scope: !18354)
!18375 = !DILocation(line: 2805, column: 5, scope: !18354)
!18376 = !DILocation(line: 2806, column: 8, scope: !18354)
!18377 = !DILocation(line: 2828, column: 8, scope: !18354)
!18378 = !DILocation(line: 2807, column: 13, scope: !18354)
!18379 = !DILocation(line: 2808, column: 26, scope: !18354)
!18380 = !DILocation(line: 2807, column: 20, scope: !18354)
!18381 = !DILocation(line: 2822, column: 13, scope: !18382)
!18382 = distinct !DILexicalBlock(scope: !18354, file: !49, line: 2807, column: 9)
!18383 = !DILocation(line: 2492, column: 10, scope: !1087, inlinedAt: !18384)
!18384 = distinct !DILocation(line: 2502, column: 5, scope: !1090, inlinedAt: !18385)
!18385 = distinct !DILocation(line: 2822, column: 13, scope: !18382)
!18386 = !{!18387}
!18387 = distinct !{!18387, !18388, !"_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream15block_split_nop: argument 0"}
!18388 = distinct !{!18388, !"_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream15block_split_nop"}
!18389 = !DILocation(line: 2815, column: 9, scope: !18382)
!18390 = !DILocation(line: 2826, column: 9, scope: !18382)
!18391 = !DILocation(line: 2827, column: 5, scope: !18354)
!18392 = !DILocation(line: 2806, column: 5, scope: !18354)
!18393 = !DILocation(line: 2833, column: 2, scope: !18310)
!18394 = !DILocation(line: 2829, column: 9, scope: !18354)
!18395 = !DILocation(line: 2830, column: 9, scope: !18354)
!18396 = !{!18397}
!18397 = distinct !{!18397, !18398, !"_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream18JumpToByteBoundary: argument 0"}
!18398 = distinct !{!18398, !"_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream18JumpToByteBoundary"}
!18399 = !DILocation(line: 2831, column: 9, scope: !18354)
!18400 = !{!18401}
!18401 = distinct !{!18401, !18398, !"_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream18JumpToByteBoundary: argument 1"}
!18402 = !DILocation(line: 2031, column: 19, scope: !1220, inlinedAt: !18403)
!18403 = distinct !DILocation(line: 2831, column: 9, scope: !18354)
!18404 = !DILocation(line: 2511, column: 13, scope: !1225, inlinedAt: !18405)
!18405 = distinct !DILocation(line: 2031, column: 30, scope: !1220, inlinedAt: !18403)
!18406 = !DILocation(line: 2031, column: 5, scope: !1220, inlinedAt: !18403)
!18407 = !DILocation(line: 2032, column: 13, scope: !1220, inlinedAt: !18403)
!18408 = !DILocation(line: 2032, column: 5, scope: !1220, inlinedAt: !18403)
!18409 = !{!18397, !18401}
!18410 = distinct !DISubprogram(name: "BrotliBuildAndStoreHuffmanTreeFast<alloc_stdlib::std_alloc::StandardAlloc>", linkageName: "_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFastNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet", scope: !51, file: !49, line: 925, type: !13, scopeLine: 925, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18411 = !DILocation(line: 936, column: 9, scope: !18412)
!18412 = distinct !DILexicalBlock(scope: !18410, file: !49, line: 935, column: 5)
!18413 = !DILocation(line: 936, column: 33, scope: !18412)
!18414 = !DILocation(line: 939, column: 11, scope: !18415)
!18415 = distinct !DILexicalBlock(scope: !18416, file: !49, line: 938, column: 5)
!18416 = distinct !DILexicalBlock(scope: !18417, file: !49, line: 937, column: 5)
!18417 = distinct !DILexicalBlock(scope: !18412, file: !49, line: 936, column: 5)
!18418 = !DILocation(line: 940, column: 12, scope: !18415)
!18419 = !DILocation(line: 949, column: 8, scope: !18415)
!18420 = !DILocation(line: 977, column: 16, scope: !18421, inlinedAt: !18422)
!18421 = distinct !DISubprogram(name: "checked_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj11checked_sub", scope: !58, file: !57, line: 971, type: !13, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18422 = !DILocation(line: 450, column: 32, scope: !18423, inlinedAt: !18424)
!18423 = distinct !DISubprogram(name: "index_mut<u8>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE9index_mutCsfISxE4fmY1Y_14polars_parquet", scope: !743, file: !160, line: 448, type: !13, scopeLine: 448, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18424 = !DILocation(line: 534, column: 23, scope: !18425, inlinedAt: !18426)
!18425 = distinct !DISubprogram(name: "index_mut<u8>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range7RangeTojEINtB5_10SliceIndexShE9index_mutCsfISxE4fmY1Y_14polars_parquet", scope: !746, file: !160, line: 533, type: !13, scopeLine: 533, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18426 = !DILocation(line: 31, column: 15, scope: !18427, inlinedAt: !18428)
!18427 = distinct !DISubprogram(name: "index_mut<u8, core::ops::range::RangeTo<usize>>", linkageName: "_RNvXs_NtNtCscgRAwXFJnXP_4core5slice5indexShINtNtNtB8_3ops5index8IndexMutINtNtBK_5range7RangeTojEE9index_mutCsfISxE4fmY1Y_14polars_parquet", scope: !166, file: !160, line: 30, type: !13, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18428 = !DILocation(line: 956, column: 28, scope: !18415)
!18429 = !DILocation(line: 950, column: 9, scope: !18415)
!18430 = !DILocation(line: 951, column: 25, scope: !18415)
!18431 = !DILocation(line: 951, column: 41, scope: !18415)
!18432 = !DILocation(line: 951, column: 9, scope: !18415)
!18433 = !DILocation(line: 952, column: 9, scope: !18415)
!18434 = !DILocation(line: 456, column: 13, scope: !18423, inlinedAt: !18424)
!18435 = !DILocation(line: 957, column: 9, scope: !18436)
!18436 = distinct !DILexicalBlock(scope: !18437, file: !49, line: 956, column: 5)
!18437 = distinct !DILexicalBlock(scope: !18415, file: !49, line: 956, column: 5)
!18438 = !DILocation(line: 2587, column: 13, scope: !18439, inlinedAt: !18440)
!18439 = distinct !DISubprogram(name: "wrapping_mul", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core3numy12wrapping_mul", scope: !370, file: !57, line: 2586, type: !13, scopeLine: 2586, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18440 = !DILocation(line: 961, column: 41, scope: !18415)
!18441 = !DILocation(line: 2511, column: 13, scope: !18442, inlinedAt: !18443)
!18442 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core3numy12wrapping_add", scope: !370, file: !57, line: 2510, type: !13, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18443 = !DILocation(line: 961, column: 62, scope: !18415)
!18444 = !DILocation(line: 551, column: 5, scope: !18445, inlinedAt: !18446)
!18445 = distinct !DISubprogram(name: "alloc_or_default<brotli::enc::entropy_encode::HuffmanTree, alloc_stdlib::std_alloc::StandardAlloc>", linkageName: "_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14combined_alloc16alloc_or_defaultNtNtB4_14entropy_encode11HuffmanTreeNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet", scope: !64, file: !63, line: 547, type: !13, scopeLine: 547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18446 = !DILocation(line: 963, column: 24, scope: !18447)
!18447 = distinct !DILexicalBlock(scope: !18415, file: !49, line: 961, column: 9)
!18448 = !DILocation(line: 966, column: 9, scope: !18449)
!18449 = distinct !DILexicalBlock(scope: !18450, file: !49, line: 964, column: 9)
!18450 = distinct !DILexicalBlock(scope: !18447, file: !49, line: 963, column: 9)
!18451 = !DILocation(line: 0, scope: !18449)
!18452 = !DILocation(line: 973, column: 24, scope: !18453)
!18453 = distinct !DILexicalBlock(scope: !18454, file: !49, line: 969, column: 17)
!18454 = distinct !DILexicalBlock(scope: !18449, file: !49, line: 968, column: 17)
!18455 = !DILocation(line: 2548, column: 13, scope: !18456, inlinedAt: !18457)
!18456 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core3numy12wrapping_sub", scope: !370, file: !57, line: 2547, type: !13, scopeLine: 2547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18457 = !DILocation(line: 972, column: 27, scope: !18453)
!18458 = !DILocation(line: 1920, column: 16, scope: !1494, inlinedAt: !18459)
!18459 = distinct !DILocation(line: 810, column: 1, scope: !1498, inlinedAt: !18460)
!18460 = distinct !DILocation(line: 810, column: 1, scope: !1500, inlinedAt: !18461)
!18461 = distinct !DILocation(line: 1040, column: 5, scope: !18447)
!18462 = !DILocation(line: 457, column: 14, scope: !1503, inlinedAt: !18463)
!18463 = distinct !DILocation(line: 255, column: 43, scope: !1505, inlinedAt: !18464)
!18464 = distinct !DILocation(line: 1919, column: 26, scope: !1495, inlinedAt: !18459)
!18465 = !DILocation(line: 128, column: 14, scope: !84, inlinedAt: !18466)
!18466 = distinct !DILocation(line: 229, column: 22, scope: !88, inlinedAt: !18467)
!18467 = distinct !DILocation(line: 344, column: 9, scope: !91, inlinedAt: !18468)
!18468 = distinct !DILocation(line: 462, column: 23, scope: !93, inlinedAt: !18469)
!18469 = distinct !DILocation(line: 1921, column: 24, scope: !1494, inlinedAt: !18459)
!18470 = !DILocation(line: 1920, column: 13, scope: !1494, inlinedAt: !18459)
!18471 = !DILocation(line: 988, column: 38, scope: !18472)
!18472 = distinct !DILexicalBlock(scope: !18473, file: !49, line: 987, column: 21)
!18473 = distinct !DILexicalBlock(scope: !18453, file: !49, line: 985, column: 21)
!18474 = !DILocation(line: 990, column: 60, scope: !18475)
!18475 = distinct !DILexicalBlock(scope: !18476, file: !49, line: 989, column: 21)
!18476 = distinct !DILexicalBlock(scope: !18472, file: !49, line: 988, column: 21)
!18477 = !DILocation(line: 990, column: 21, scope: !18475)
!18478 = !DILocation(line: 992, column: 38, scope: !18479)
!18479 = distinct !DILexicalBlock(scope: !18475, file: !49, line: 991, column: 21)
!18480 = !DILocation(line: 992, column: 21, scope: !18479)
!18481 = !DILocation(line: 0, scope: !18453)
!18482 = !DILocation(line: 993, column: 38, scope: !18479)
!18483 = !DILocation(line: 993, column: 21, scope: !18479)
!18484 = !DILocation(line: 0, scope: !18479)
!18485 = !DILocation(line: 996, column: 27, scope: !18479)
!18486 = !DILocation(line: 1030, column: 39, scope: !18479)
!18487 = !DILocation(line: 2511, column: 13, scope: !18488, inlinedAt: !18489)
!18488 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs6_NtCscgRAwXFJnXP_4core3numm12wrapping_add", scope: !602, file: !57, line: 2510, type: !13, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18489 = !DILocation(line: 994, column: 45, scope: !18479)
!18490 = !DILocation(line: 1000, column: 32, scope: !18491)
!18491 = distinct !DILexicalBlock(scope: !18492, file: !49, line: 999, column: 29)
!18492 = distinct !DILexicalBlock(scope: !18479, file: !49, line: 998, column: 29)
!18493 = !{!18494}
!18494 = distinct !{!18494, !18495, !"_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode14BrotliSetDepth: argument 0"}
!18495 = distinct !{!18495, !"_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode14BrotliSetDepth"}
!18496 = !DILocation(line: 1030, column: 24, scope: !18479)
!18497 = !{!18498}
!18498 = distinct !{!18498, !18495, !"_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode14BrotliSetDepth: argument 1"}
!18499 = !DILocation(line: 28, column: 9, scope: !18500, inlinedAt: !18503)
!18500 = distinct !DISubprogram(name: "BrotliSetDepth", linkageName: "_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode14BrotliSetDepth", scope: !18502, file: !18501, line: 27, type: !13, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18501 = !DIFile(filename: "src/enc/entropy_encode.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/brotli-8.0.3", checksumkind: CSK_MD5, checksum: "a1e0c0b127d065291095f6f58557ecc2")
!18502 = !DINamespace(name: "entropy_encode", scope: !52)
!18503 = distinct !DILocation(line: 1030, column: 24, scope: !18479)
!18504 = !{!18494, !18498}
!18505 = !DILocation(line: 28, column: 32, scope: !18500, inlinedAt: !18503)
!18506 = !DILocation(line: 31, column: 5, scope: !18507, inlinedAt: !18503)
!18507 = distinct !DILexicalBlock(scope: !18508, file: !18501, line: 30, column: 5)
!18508 = distinct !DILexicalBlock(scope: !18509, file: !18501, line: 29, column: 5)
!18509 = distinct !DILexicalBlock(scope: !18500, file: !18501, line: 28, column: 5)
!18510 = !DILocation(line: 33, column: 18, scope: !18507, inlinedAt: !18503)
!18511 = !DILocation(line: 33, column: 12, scope: !18507, inlinedAt: !18503)
!18512 = !DILocation(line: 0, scope: !18507, inlinedAt: !18503)
!18513 = !DILocation(line: 34, column: 13, scope: !18507, inlinedAt: !18503)
!18514 = !DILocation(line: 35, column: 16, scope: !18507, inlinedAt: !18503)
!18515 = !DILocation(line: 56, column: 1, scope: !18500, inlinedAt: !18503)
!18516 = !DILocation(line: 2587, column: 13, scope: !18517, inlinedAt: !18518)
!18517 = distinct !DISubprogram(name: "wrapping_mul", linkageName: "_RNvMs6_NtCscgRAwXFJnXP_4core3numm12wrapping_mul", scope: !602, file: !57, line: 2586, type: !13, scopeLine: 2586, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18518 = !DILocation(line: 1035, column: 39, scope: !18449)
!18519 = !DILocation(line: 44, column: 22, scope: !18507, inlinedAt: !18503)
!18520 = !DILocation(line: 45, column: 19, scope: !18521, inlinedAt: !18503)
!18521 = distinct !DILexicalBlock(scope: !18507, file: !18501, line: 44, column: 13)
!18522 = !DILocation(line: 45, column: 13, scope: !18521, inlinedAt: !18503)
!18523 = !DILocation(line: 47, column: 15, scope: !18507, inlinedAt: !18503)
!18524 = !DILocation(line: 47, column: 33, scope: !18507, inlinedAt: !18503)
!18525 = !DILocation(line: 47, column: 32, scope: !18507, inlinedAt: !18503)
!18526 = !DILocation(line: 48, column: 13, scope: !18507, inlinedAt: !18503)
!18527 = !DILocation(line: 53, column: 19, scope: !18507, inlinedAt: !18503)
!18528 = !DILocation(line: 54, column: 9, scope: !18507, inlinedAt: !18503)
!18529 = !DILocation(line: 32, column: 5, scope: !18507, inlinedAt: !18503)
!18530 = !DILocation(line: 38, column: 19, scope: !18507, inlinedAt: !18503)
!18531 = !DILocation(line: 38, column: 13, scope: !18507, inlinedAt: !18503)
!18532 = !DILocation(line: 38, column: 37, scope: !18507, inlinedAt: !18503)
!18533 = !DILocation(line: 39, column: 13, scope: !18507, inlinedAt: !18503)
!18534 = !DILocation(line: 0, scope: !18535, inlinedAt: !18503)
!18535 = !DILexicalBlockFile(scope: !18507, file: !622, discriminator: 0)
!18536 = !DILocation(line: 464, column: 9, scope: !1729, inlinedAt: !18537)
!18537 = distinct !DILocation(line: 26, column: 35, scope: !1731, inlinedAt: !18538)
!18538 = distinct !DILocation(line: 849, column: 19, scope: !18539, inlinedAt: !18540)
!18539 = distinct !DISubprogram(name: "take<alloc_stdlib::heap_alloc::WrapBox<brotli::enc::entropy_encode::HuffmanTree>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem4takeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode11HuffmanTreeEECsfISxE4fmY1Y_14polars_parquet", scope: !113, file: !112, line: 848, type: !13, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18540 = !DILocation(line: 1038, column: 25, scope: !18449)
!18541 = !DILocation(line: 27, column: 18, scope: !1736, inlinedAt: !18538)
!18542 = !DILocation(line: 29, column: 6, scope: !1731, inlinedAt: !18538)
!18543 = !DILocation(line: 849, column: 19, scope: !18539, inlinedAt: !18540)
!18544 = !DILocation(line: 457, column: 14, scope: !1503, inlinedAt: !18545)
!18545 = distinct !DILocation(line: 255, column: 43, scope: !1505, inlinedAt: !18546)
!18546 = distinct !DILocation(line: 1919, column: 26, scope: !1495, inlinedAt: !18547)
!18547 = distinct !DILocation(line: 810, column: 1, scope: !1498, inlinedAt: !18548)
!18548 = distinct !DILocation(line: 810, column: 1, scope: !1500, inlinedAt: !18549)
!18549 = distinct !DILocation(line: 13, column: 4, scope: !1743, inlinedAt: !18550)
!18550 = distinct !DILocation(line: 1038, column: 15, scope: !18449)
!18551 = !DILocation(line: 128, column: 14, scope: !84, inlinedAt: !18552)
!18552 = distinct !DILocation(line: 229, column: 22, scope: !88, inlinedAt: !18553)
!18553 = distinct !DILocation(line: 344, column: 9, scope: !91, inlinedAt: !18554)
!18554 = distinct !DILocation(line: 462, column: 23, scope: !93, inlinedAt: !18555)
!18555 = distinct !DILocation(line: 1921, column: 24, scope: !1494, inlinedAt: !18547)
!18556 = !DILocation(line: 1920, column: 16, scope: !1494, inlinedAt: !18557)
!18557 = distinct !DILocation(line: 810, column: 1, scope: !1498, inlinedAt: !18558)
!18558 = distinct !DILocation(line: 810, column: 1, scope: !1500, inlinedAt: !18559)
!18559 = distinct !DILocation(line: 1040, column: 5, scope: !18447)
!18560 = !DILocation(line: 457, column: 14, scope: !1503, inlinedAt: !18561)
!18561 = distinct !DILocation(line: 255, column: 43, scope: !1505, inlinedAt: !18562)
!18562 = distinct !DILocation(line: 1919, column: 26, scope: !1495, inlinedAt: !18557)
!18563 = !DILocation(line: 128, column: 14, scope: !84, inlinedAt: !18564)
!18564 = distinct !DILocation(line: 229, column: 22, scope: !88, inlinedAt: !18565)
!18565 = distinct !DILocation(line: 344, column: 9, scope: !91, inlinedAt: !18566)
!18566 = distinct !DILocation(line: 462, column: 23, scope: !93, inlinedAt: !18567)
!18567 = distinct !DILocation(line: 1921, column: 24, scope: !1494, inlinedAt: !18557)
!18568 = !DILocation(line: 1920, column: 13, scope: !1494, inlinedAt: !18557)
!18569 = !DILocation(line: 1041, column: 5, scope: !18415)
!18570 = !DILocation(line: 1042, column: 8, scope: !18415)
!18571 = !DILocation(line: 1078, column: 9, scope: !18572)
!18572 = distinct !DILexicalBlock(scope: !18573, file: !49, line: 1077, column: 9)
!18573 = distinct !DILexicalBlock(scope: !18415, file: !49, line: 1076, column: 9)
!18574 = !DILocation(line: 1085, column: 19, scope: !18575)
!18575 = distinct !DILexicalBlock(scope: !18576, file: !49, line: 1083, column: 13)
!18576 = distinct !DILexicalBlock(scope: !18577, file: !49, line: 1082, column: 13)
!18577 = distinct !DILexicalBlock(scope: !18572, file: !49, line: 1081, column: 13)
!18578 = !DILocation(line: 1043, column: 9, scope: !18415)
!18579 = !DILocation(line: 2548, column: 13, scope: !18456, inlinedAt: !18580)
!18580 = !DILocation(line: 1044, column: 34, scope: !18415)
!18581 = !DILocation(line: 1044, column: 9, scope: !18415)
!18582 = !DILocation(line: 781, column: 12, scope: !18583, inlinedAt: !18584)
!18583 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCsfISxE4fmY1Y_14polars_parquet", scope: !136, file: !135, line: 780, type: !13, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18584 = !DILocation(line: 866, column: 14, scope: !18585, inlinedAt: !18586)
!18585 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet", scope: !141, file: !135, line: 865, type: !13, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18586 = !DILocation(line: 1045, column: 18, scope: !18587)
!18587 = !DILexicalBlockFile(scope: !18588, file: !49, discriminator: 2)
!18588 = distinct !DILexicalBlock(scope: !18415, file: !49, line: 1045, column: 9)
!18589 = !DILocation(line: 1081, column: 29, scope: !18572)
!18590 = !DILocation(line: 2511, column: 13, scope: !18442, inlinedAt: !18591)
!18591 = !DILocation(line: 0, scope: !18575)
!18592 = !DILocation(line: 1085, column: 33, scope: !18575)
!18593 = !DILocation(line: 1085, column: 34, scope: !18575)
!18594 = !DILocation(line: 2511, column: 13, scope: !18442, inlinedAt: !18595)
!18595 = !DILocation(line: 1091, column: 19, scope: !18575)
!18596 = !DILocation(line: 1092, column: 16, scope: !18575)
!18597 = !DILocation(line: 2511, column: 13, scope: !18442, inlinedAt: !18598)
!18598 = !DILocation(line: 1087, column: 33, scope: !18575)
!18599 = !DILocation(line: 1094, column: 21, scope: !18575)
!18600 = !DILocation(line: 1100, column: 20, scope: !18575)
!18601 = !DILocation(line: 1095, column: 21, scope: !18575)
!18602 = !DILocation(line: 1093, column: 17, scope: !18575)
!18603 = !DILocation(line: 1092, column: 13, scope: !18575)
!18604 = !DILocation(line: 0, scope: !18415)
!18605 = !DILocation(line: 1080, column: 15, scope: !18572)
!18606 = !DILocation(line: 1102, column: 42, scope: !18575)
!18607 = !DILocation(line: 1102, column: 25, scope: !18575)
!18608 = !DILocation(line: 0, scope: !18577)
!18609 = !DILocation(line: 1109, column: 20, scope: !18575)
!18610 = !DILocation(line: 1110, column: 27, scope: !18575)
!18611 = !DILocation(line: 1113, column: 29, scope: !18575)
!18612 = !DILocation(line: 1103, column: 25, scope: !18575)
!18613 = !DILocation(line: 1101, column: 21, scope: !18575)
!18614 = !DILocation(line: 2548, column: 13, scope: !18456, inlinedAt: !18615)
!18615 = !DILocation(line: 1107, column: 33, scope: !18575)
!18616 = !DILocation(line: 1100, column: 17, scope: !18575)
!18617 = !DILocation(line: 2548, column: 13, scope: !18456, inlinedAt: !18618)
!18618 = !DILocation(line: 1120, column: 33, scope: !18575)
!18619 = !DILocation(line: 1122, column: 25, scope: !18575)
!18620 = !DILocation(line: 1123, column: 25, scope: !18575)
!18621 = !DILocation(line: 1121, column: 21, scope: !18575)
!18622 = !DILocation(line: 1109, column: 17, scope: !18575)
!18623 = !DILocation(line: 2548, column: 13, scope: !18456, inlinedAt: !18624)
!18624 = !DILocation(line: 1111, column: 37, scope: !18575)
!18625 = !DILocation(line: 1114, column: 29, scope: !18575)
!18626 = !DILocation(line: 1112, column: 25, scope: !18575)
!18627 = !DILocation(line: 1917, column: 50, scope: !18628, inlinedAt: !18582)
!18628 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !130, file: !129, line: 1917, type: !13, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18629 = !DILocation(line: 1052, column: 12, scope: !18415)
!18630 = !DILocation(line: 898, column: 17, scope: !18631, inlinedAt: !18632)
!18631 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !58, file: !57, line: 886, type: !13, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18632 = !DILocation(line: 214, column: 28, scope: !18633, inlinedAt: !18634)
!18633 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !150, file: !135, line: 212, type: !13, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18634 = !DILocation(line: 784, column: 35, scope: !18635, inlinedAt: !18584)
!18635 = distinct !DILexicalBlock(scope: !18583, file: !135, line: 782, column: 13)
!18636 = !DILocation(line: 1917, column: 50, scope: !18628, inlinedAt: !18637)
!18637 = !DILocation(line: 781, column: 12, scope: !18638, inlinedAt: !18639)
!18638 = !DILexicalBlockFile(scope: !18583, file: !135, discriminator: 2)
!18639 = !DILocation(line: 866, column: 14, scope: !18640, inlinedAt: !18641)
!18640 = !DILexicalBlockFile(scope: !18585, file: !135, discriminator: 2)
!18641 = !DILocation(line: 1046, column: 22, scope: !18642)
!18642 = !DILexicalBlockFile(scope: !18643, file: !49, discriminator: 2)
!18643 = distinct !DILexicalBlock(scope: !18644, file: !49, line: 1046, column: 13)
!18644 = distinct !DILexicalBlock(scope: !18588, file: !49, line: 1045, column: 9)
!18645 = !DILocation(line: 781, column: 12, scope: !18583, inlinedAt: !18639)
!18646 = !DILocation(line: 1058, column: 45, scope: !18415)
!18647 = !DILocation(line: 1058, column: 13, scope: !18415)
!18648 = !DILocation(line: 1055, column: 16, scope: !18415)
!18649 = !DILocation(line: 1062, column: 45, scope: !18415)
!18650 = !DILocation(line: 1062, column: 13, scope: !18415)
!18651 = !DILocation(line: 1063, column: 45, scope: !18415)
!18652 = !DILocation(line: 1063, column: 13, scope: !18415)
!18653 = !DILocation(line: 1066, column: 20, scope: !18415)
!18654 = !DILocation(line: 1066, column: 17, scope: !18415)
!18655 = !DILocation(line: 1064, column: 13, scope: !18415)
!18656 = !DILocation(line: 1132, column: 1, scope: !18412)
!18657 = !DILocation(line: 1132, column: 2, scope: !18410)
!18658 = !DILocation(line: 898, column: 17, scope: !18631, inlinedAt: !18659)
!18659 = !DILocation(line: 214, column: 28, scope: !18660, inlinedAt: !18661)
!18660 = !DILexicalBlockFile(scope: !18633, file: !135, discriminator: 2)
!18661 = !DILocation(line: 784, column: 35, scope: !18662, inlinedAt: !18639)
!18662 = !DILexicalBlockFile(scope: !18663, file: !135, discriminator: 2)
!18663 = distinct !DILexicalBlock(scope: !18583, file: !135, line: 782, column: 13)
!18664 = !DILocation(line: 1047, column: 26, scope: !18665)
!18665 = distinct !DILexicalBlock(scope: !18643, file: !49, line: 1046, column: 13)
!18666 = !DILocation(line: 1047, column: 20, scope: !18665)
!18667 = !DILocation(line: 1047, column: 55, scope: !18665)
!18668 = !DILocation(line: 1047, column: 49, scope: !18665)
!18669 = !DILocation(line: 643, column: 9, scope: !18670, inlinedAt: !18671)
!18670 = distinct !DISubprogram(name: "copy<u64>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4copyyECsfISxE4fmY1Y_14polars_parquet", scope: !26, file: !79, line: 628, type: !13, scopeLine: 628, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18671 = !DILocation(line: 1316, column: 9, scope: !18672, inlinedAt: !18674)
!18672 = distinct !DILexicalBlock(scope: !18673, file: !79, line: 1307, column: 5)
!18673 = distinct !DISubprogram(name: "swap<u64>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4swapyECsfISxE4fmY1Y_14polars_parquet", scope: !26, file: !79, line: 1304, type: !13, scopeLine: 1304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18674 = !DILocation(line: 915, column: 13, scope: !18675, inlinedAt: !18678)
!18675 = distinct !DILexicalBlock(scope: !18676, file: !763, line: 909, column: 9)
!18676 = distinct !DILexicalBlock(scope: !18677, file: !763, line: 908, column: 9)
!18677 = distinct !DISubprogram(name: "swap<u64>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSy4swapCsfISxE4fmY1Y_14polars_parquet", scope: !767, file: !763, line: 905, type: !13, scopeLine: 905, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18678 = !DILocation(line: 1048, column: 29, scope: !18665)
!18679 = !DILocation(line: 552, column: 14, scope: !18680, inlinedAt: !18681)
!18680 = distinct !DISubprogram(name: "copy_nonoverlapping<u64>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappingyECsfISxE4fmY1Y_14polars_parquet", scope: !26, file: !79, line: 531, type: !13, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18681 = !DILocation(line: 1317, column: 9, scope: !18672, inlinedAt: !18674)
!18682 = !DILocation(line: 1047, column: 17, scope: !18665)
!18683 = !DILocation(line: 1000, column: 46, scope: !18491)
!18684 = !DILocation(line: 1001, column: 50, scope: !18491)
!18685 = !DILocation(line: 1001, column: 36, scope: !18491)
!18686 = !DILocation(line: 1009, column: 46, scope: !18491)
!18687 = !DILocation(line: 1009, column: 32, scope: !18491)
!18688 = !DILocation(line: 1010, column: 50, scope: !18491)
!18689 = !DILocation(line: 1010, column: 36, scope: !18491)
!18690 = !DILocation(line: 1018, column: 59, scope: !18491)
!18691 = !DILocation(line: 1018, column: 45, scope: !18491)
!18692 = !DILocation(line: 1020, column: 61, scope: !18491)
!18693 = !DILocation(line: 1020, column: 47, scope: !18491)
!18694 = !DILocation(line: 2548, column: 13, scope: !18695, inlinedAt: !18696)
!18695 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_RNvMs6_NtCscgRAwXFJnXP_4core3numm12wrapping_sub", scope: !602, file: !57, line: 2547, type: !13, scopeLine: 2547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18696 = !DILocation(line: 1021, column: 56, scope: !18697)
!18697 = distinct !DILexicalBlock(scope: !18491, file: !49, line: 1018, column: 29)
!18698 = !DILocation(line: 1021, column: 44, scope: !18697)
!18699 = !DILocation(line: 2511, column: 13, scope: !18488, inlinedAt: !18700)
!18700 = !DILocation(line: 1020, column: 34, scope: !18491)
!18701 = !DILocation(line: 1022, column: 29, scope: !18702)
!18702 = distinct !DILexicalBlock(scope: !18697, file: !49, line: 1021, column: 29)
!18703 = !DILocation(line: 1023, column: 29, scope: !18702)
!18704 = !DILocation(line: 1024, column: 29, scope: !18702)
!18705 = !DILocation(line: 1025, column: 46, scope: !18702)
!18706 = !DILocation(line: 1025, column: 29, scope: !18702)
!18707 = !DILocation(line: 2511, column: 13, scope: !18488, inlinedAt: !18708)
!18708 = !DILocation(line: 1026, column: 53, scope: !18702)
!18709 = !DILocation(line: 971, column: 23, scope: !18453)
!18710 = !DILocation(line: 2511, column: 13, scope: !18488, inlinedAt: !18711)
!18711 = !DILocation(line: 981, column: 49, scope: !18453)
!18712 = !DILocation(line: 973, column: 21, scope: !18453)
!18713 = !DILocation(line: 925, column: 1, scope: !18410)
!18714 = !DILocation(line: 953, column: 9, scope: !18415)
!18715 = !DILocation(line: 941, column: 16, scope: !18415)
!18716 = !DILocation(line: 0, scope: !18410)
!18717 = !DILocation(line: 2511, column: 13, scope: !18442, inlinedAt: !18718)
!18718 = !DILocation(line: 947, column: 25, scope: !18415)
!18719 = !DILocation(line: 942, column: 17, scope: !18415)
!18720 = !DILocation(line: 941, column: 13, scope: !18415)
!18721 = !DILocation(line: 2511, column: 13, scope: !18442, inlinedAt: !18722)
!18722 = !DILocation(line: 944, column: 27, scope: !18415)
!18723 = !DILocation(line: 945, column: 40, scope: !18415)
!18724 = !DILocation(line: 2548, column: 13, scope: !18725, inlinedAt: !18726)
!18725 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_sub", scope: !58, file: !57, line: 2547, type: !13, scopeLine: 2547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!18726 = !DILocation(line: 945, column: 27, scope: !18415)
!18727 = !DILocation(line: 940, column: 9, scope: !18415)
end_hunk_2
