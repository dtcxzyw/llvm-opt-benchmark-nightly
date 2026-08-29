Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_library-626596e94cb6d705.typst_library.996bbf7c63fe4cae-cgu.0?download=true
inline.NumInlined: 84061
inline.NumDeleted: 35720
loop-unroll.NumCompletelyUnrolled: 240
loop-unroll.NumRuntimeUnrolled: 127
loop-unroll.NumUnrolled: 371
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB15_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE19decode_image_streamB28_:bb.a
  %i.mb = icmp eq i64 %.val2.i, 0
  br i1 %i.mb, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecANtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreej5_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsdaEETE4DqmE_13typst_library.exit.i
  %i.mc = mul nuw i64 %.val2.i, 280
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i50, i64 noundef %i.mc, i64 noundef range(i64 1, -9223372036854775807) 8) #96, !noalias !133405
  br label %bb.ec

bb.ec:                                            ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecANtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreej5_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsdaEETE4DqmE_13typst_library.exit.i, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !133219
  %i.md = icmp eq i64 %.sroa.0186.0, 0
  %i.me = extractelement <2 x i64> %i.lo, i64 0   ; 2 uses
  %i.mf = extractelement <2 x i64> %i.lo, i64 1   ; 2 uses
  br i1 %i.md, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.mg = shl nuw i64 %.sroa.0186.0, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10189.0) ], !noalias !133231
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10189.0, i64 noundef %i.mg, i64 noundef range(i64 1, -9223372036854775807) 2) #96, !noalias !133231
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit94: ; preds = %bb.aa, %bb.ab, %bb.r, %bb.q, %.thread344
  %.pn96.i = phi { ptr, i32 } [ %.pn92.i, %bb.q ], [ %.pn92.i, %.thread344 ], [ %i.ce, %bb.r ], [ %i.dj, %bb.ab ], [ %i.dj, %bb.aa ] ; 2 uses
  %switch.i48.not = icmp eq i64 %.sroa.0106.0, -1
  br i1 %switch.i48.not, label %common.resume, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit94.thread

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit94.thread: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit94
  %i.mh = shl nuw nsw i64 %.sroa.0106.0, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0) ], !noalias !133231
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0, i64 noundef %i.mh, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !133231
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit: ; preds = %bb.ad, %bb.ae, %bb.u, %bb.v, %bb.p, %bb.o, %bb.ed, %bb.ec
  %.sroa.10113.0371 = phi i8 [ %.sroa.0284.0.copyload, %bb.ed ], [ %.sroa.0284.0.copyload, %bb.ec ], [ %i.cl, %bb.v ], [ 15, %bb.u ], [ 15, %bb.o ], [ %i.cb, %bb.p ], [ %i.dk, %bb.ae ], [ %i.dk, %bb.ad ]
  %.sroa.16.0370 = phi i8 [ %.sroa.4285.0.copyload, %bb.ed ], [ %.sroa.4285.0.copyload, %bb.ec ], [ %.sroa.8201.0.copyload, %bb.v ], [ undef, %bb.u ], [ undef, %bb.o ], [ %.sroa.8199.0.copyload, %bb.p ], [ %.sroa.4249.0.copyload, %bb.ae ], [ %.sroa.4249.0.copyload, %bb.ad ]
  %.sroa.18.sroa.0.0369 = phi i48 [ %.sroa.5286.0.copyload, %bb.ed ], [ %.sroa.5286.0.copyload, %bb.ec ], [ %.sroa.11202.sroa.0.0.copyload, %bb.v ], [ undef, %bb.u ], [ undef, %bb.o ], [ %.sroa.11.sroa.0.0.copyload, %bb.p ], [ %.sroa.5250.0.copyload, %bb.ae ], [ %.sroa.5250.0.copyload, %bb.ad ]
  %.sroa.18.sroa.10.0368 = phi i64 [ %i.me, %bb.ed ], [ %i.me, %bb.ec ], [ %.sroa.11202.sroa.5.0.copyload, %bb.v ], [ undef, %bb.u ], [ undef, %bb.o ], [ %.sroa.11.sroa.5.0.copyload, %bb.p ], [ %.sroa.6251.0.copyload, %bb.ae ], [ %.sroa.6251.0.copyload, %bb.ad ]
  %.sroa.18.sroa.11.0367 = phi i64 [ %i.mf, %bb.ed ], [ %i.mf, %bb.ec ], [ %.sroa.11202.sroa.6.0.copyload, %bb.v ], [ undef, %bb.u ], [ undef, %bb.o ], [ %.sroa.11.sroa.6.0.copyload, %bb.p ], [ %.sroa.7252.0.copyload, %bb.ae ], [ %.sroa.7252.0.copyload, %bb.ad ]
  %.sroa.18.sroa.12.0366 = phi ptr [ %.sroa.8289.0.copyload, %bb.ed ], [ %.sroa.8289.0.copyload, %bb.ec ], [ %.sroa.11202.sroa.7.0.copyload, %bb.v ], [ undef, %bb.u ], [ undef, %bb.o ], [ %.sroa.11.sroa.7.0.copyload, %bb.p ], [ %.sroa.8253.0.copyload, %bb.ae ], [ %.sroa.8253.0.copyload, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !133219
  %switch.i46.not = icmp eq i64 %.sroa.0106.0, -1
  br i1 %switch.i46.not, label %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB15_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB28_.exit.thread, label %bb.ee

bb.ee:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit
  %i.mi = shl nuw nsw i64 %.sroa.0106.0, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0) ], !noalias !133231
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0, i64 noundef %i.mi, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !133231
  br label %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB15_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB28_.exit.thread

common.resume:                                    ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit94, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit94.thread, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecANtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreej5_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsdaEETE4DqmE_13typst_library.exit.i.i.i, %bb.em
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi.i, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecANtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreej5_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsdaEETE4DqmE_13typst_library.exit.i.i.i ], [ %lpad.phi.i, %bb.em ], [ %.pn96.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit94.thread ], [ %.pn96.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit94 ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB15_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB28_.exit.thread: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit, %bb.ee
  %i.mj = zext i48 %.sroa.18.sroa.0.0369 to i64
  br label %bb.ef

_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB15_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB28_.exit.loopexit: ; preds = %bb.am
  %.sroa.0222.0.copyload.pre = load i64, ptr %i.ad, align 8, !noalias !133219
  br label %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB15_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB28_.exit

_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB15_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB28_.exit: ; preds = %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB15_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB28_.exit.loopexit, %bb.l
  %.sroa.5224.0.copyload = phi i64 [ %i.ed, %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB15_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB28_.exit.loopexit ], [ 0, %bb.l ] ; 8 uses
  %.sroa.4223.0.copyload = phi ptr [ %i.eb, %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB15_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB28_.exit.loopexit ], [ inttoptr (i64 8 to ptr), %bb.l ] ; 8 uses
  %.sroa.0222.0.copyload = phi i64 [ %.sroa.0222.0.copyload.pre, %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB15_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB28_.exit.loopexit ], [ 0, %bb.l ] ; 6 uses
  %i.mk = icmp eq i8 %.sroa.0.0.i, 0              ; 4 uses
  %i.ml = zext nneg i8 %.sroa.0.0.i to i16        ; 3 uses
  %notmask.i = shl nsw i16 -1, %i.ml
  %i.mm = xor i16 %notmask.i, -1
  %i.mn = ptrtoint ptr %.sroa.10189.0 to i64      ; 3 uses
  %.sroa.4220.8.extract.trunc = trunc i64 %i.mn to i8
  %.sroa.4220.9.extract.shift = lshr i64 %i.mn, 8
  %.sroa.4220.9.extract.trunc = trunc i64 %.sroa.4220.9.extract.shift to i8
  %.sroa.4220.10.extract.shift = lshr i64 %i.mn, 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !133219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !133219
  %i.mo = icmp eq i64 %.sroa.0186.0, -1
  br i1 %i.mo, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB15_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB28_.exit.thread, %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB15_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB28_.exit
  %.sroa.10113.1401 = phi i8 [ %.sroa.10113.0371, %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB15_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB28_.exit.thread ], [ %.sroa.4220.8.extract.trunc, %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB15_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB28_.exit ]
  %.sroa.16.1400 = phi i8 [ %.sroa.16.0370, %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB15_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB28_.exit.thread ], [ %.sroa.4220.9.extract.trunc, %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB15_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB28_.exit ]
  %.sroa.18.sroa.0.1396 = phi i64 [ %i.mj, %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB15_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB28_.exit.thread ], [ %.sroa.4220.10.extract.shift, %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB15_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB28_.exit ]
  %.sroa.18.sroa.10.1395 = phi i64 [ %.sroa.18.sroa.10.0368, %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB15_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB28_.exit.thread ], [ %.sroa.14.0, %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB15_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB28_.exit ]
  %.sroa.18.sroa.11.1392 = phi i64 [ %.sroa.18.sroa.11.0367, %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB15_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB28_.exit.thread ], [ %.sroa.0222.0.copyload, %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB15_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB28_.exit ]
  %.sroa.18.sroa.12.1389 = phi ptr [ %.sroa.18.sroa.12.0366, %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB15_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB28_.exit.thread ], [ %.sroa.4223.0.copyload, %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB15_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB28_.exit ]
  %.sroa.0178.0.insert.ext = zext i8 %.sroa.10113.1401 to i64
  %.sroa.0178.1.insert.ext = zext i8 %.sroa.16.1400 to i64
  %.sroa.0178.1.insert.shift = shl nuw nsw i64 %.sroa.0178.1.insert.ext, 8
  %.sroa.0178.1.insert.insert = or disjoint i64 %.sroa.0178.1.insert.shift, %.sroa.0178.0.insert.ext
  %.sroa.0178.2.insert.shift = shl nuw i64 %.sroa.18.sroa.0.1396, 16
  %.sroa.0178.2.insert.insert = or disjoint i64 %.sroa.0178.1.insert.insert, %.sroa.0178.2.insert.shift
  %i.mp = inttoptr i64 %.sroa.0178.2.insert.insert to ptr
  store ptr %i.mp, ptr %0, align 8
  %.sroa.4183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.18.sroa.10.1395, ptr %.sroa.4183.0..sroa_idx, align 8
  %.sroa.5184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.18.sroa.11.1392, ptr %.sroa.5184.0..sroa_idx, align 8
  %.sroa.6185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.18.sroa.12.1389, ptr %.sroa.6185.0..sroa_idx, align 8
  br label %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB15_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE17decode_image_dataB28_.exit

bb.eg:                                            ; preds = %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB15_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB28_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !133406)
  call void @llvm.experimental.noalias.scope.decl(metadata !133409)
  call void @llvm.experimental.noalias.scope.decl(metadata !133411)
  %i.mq = zext i16 %2 to i64                      ; 4 uses
  %i.mr = zext i16 %3 to i64
  %i.ms = mul nuw nsw i64 %i.mr, %i.mq            ; 5 uses
  br i1 %i.mk, label %_RNvMs_NtCsbxRVbv72Bp5_10image_webp8losslessNtB4_11HuffmanInfo14get_huff_index.exit.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %.not732.i = icmp eq i64 %.sroa.14.0, 0
  br i1 %.not732.i, label %.invoke1386.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10189.0) ]
  %i.mt = load i16, ptr %.sroa.10189.0, align 2, !noalias !133413, !noundef !12
  %i.mu = zext i16 %i.mt to i64
  br label %_RNvMs_NtCsbxRVbv72Bp5_10image_webp8losslessNtB4_11HuffmanInfo14get_huff_index.exit.i

.loopexit742.i:                                   ; preds = %bb.hy, %bb.ht, %bb.hq, %bb.gp, %bb.fp, %bb.ez, %bb.er
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

.loopexit.split-lp.i:                             ; preds = %.invoke1386.i, %.invoke1390.i, %.invoke1388.i, %bb.gt, %.invoke1384.i, %bb.fc, %.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

bb.ej:                                            ; preds = %.loopexit.split-lp.i, %.loopexit742.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit742.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.mv = icmp sgt i64 %.sroa.0106.0, 0
  br i1 %i.mv, label %bb.ek, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbxRVbv72Bp5_10image_webp8lossless10ColorCacheEECsdaEETE4DqmE_13typst_library.exit.i.i

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0) ]
  %i.mw = shl nuw nsw i64 %.sroa.0106.0, 2
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0, i64 noundef %i.mw, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !133417
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbxRVbv72Bp5_10image_webp8lossless10ColorCacheEECsdaEETE4DqmE_13typst_library.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbxRVbv72Bp5_10image_webp8lossless10ColorCacheEECsdaEETE4DqmE_13typst_library.exit.i.i: ; preds = %bb.ek, %bb.ej
  %i.mx = icmp eq i64 %.sroa.0186.0, 0
  br i1 %i.mx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit7.i.i, label %bb.el

bb.el:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbxRVbv72Bp5_10image_webp8lossless10ColorCacheEECsdaEETE4DqmE_13typst_library.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10189.0) ]
  %i.my = shl nuw i64 %.sroa.0186.0, 1
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10189.0, i64 noundef %i.my, i64 noundef range(i64 1, -9223372036854775807) 2) #96, !noalias !133417
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit7.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit7.i.i: ; preds = %bb.el, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbxRVbv72Bp5_10image_webp8lossless10ColorCacheEECsdaEETE4DqmE_13typst_library.exit.i.i
  %i.mz = icmp eq i64 %.sroa.5224.0.copyload, 0
  br i1 %i.mz, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecANtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreej5_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsdaEETE4DqmE_13typst_library.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit7.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i = phi i64 [ %i.nb, %.lr.ph.i.i.i.i.i ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit7.i.i ] ; 2 uses
  %i.na = getelementptr inbounds nuw [280 x i8], ptr %.sroa.4223.0.copyload, i64 %.sroa.0.07.i.i.i.i.i
  %i.nb = add nuw nsw i64 %.sroa.0.07.i.i.i.i.i, 1 ; 2 uses
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreej5_ECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef readonly align 8 dereferenceable(280) %i.na), !noalias !133420
  %i.nc = icmp eq i64 %i.nb, %.sroa.5224.0.copyload
  br i1 %i.nc, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecANtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreej5_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsdaEETE4DqmE_13typst_library.exit.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecANtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreej5_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsdaEETE4DqmE_13typst_library.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit7.i.i
  %i.nd = icmp eq i64 %.sroa.0222.0.copyload, 0
  br i1 %i.nd, label %common.resume, label %bb.em

bb.em:                                            ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecANtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreej5_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsdaEETE4DqmE_13typst_library.exit.i.i.i
  %i.ne = mul nuw i64 %.sroa.0222.0.copyload, 280
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4223.0.copyload, i64 noundef %i.ne, i64 noundef range(i64 1, -9223372036854775807) 8) #96, !noalias !133420
  br label %common.resume

_RNvMs_NtCsbxRVbv72Bp5_10image_webp8losslessNtB4_11HuffmanInfo14get_huff_index.exit.i: ; preds = %bb.ei, %bb.eg
  %.sroa.0.0.i.i = phi i64 [ %i.mu, %bb.ei ], [ 0, %bb.eg ] ; 3 uses
  %i.nf = icmp ult i64 %.sroa.0.0.i.i, %.sroa.5224.0.copyload
  br i1 %i.nf, label %bb.en, label %.invoke.i

bb.en:                                            ; preds = %_RNvMs_NtCsbxRVbv72Bp5_10image_webp8losslessNtB4_11HuffmanInfo14get_huff_index.exit.i
  %.not942.i = icmp eq i64 %i.ms, 0
  br i1 %.not942.i, label %._crit_edge941.i, label %.lr.ph940.i

.lr.ph940.i:                                      ; preds = %bb.en
  %i.ng = getelementptr inbounds nuw [280 x i8], ptr %.sroa.4223.0.copyload, i64 %.sroa.0.0.i.i
  %i.nh = icmp eq i16 %2, 0
  %i.ni = zext nneg i16 %i.mm to i64
  %i.nj = select i1 %i.mk, i64 65535, i64 %i.ni
  %i.nk = add i16 %2, -1
  %i.nl = zext i16 %i.nk to i64
  %.not519.i = icmp eq i64 %.sroa.0106.0, -1      ; 4 uses
  %i.nm = sub i8 0, %.sroa.8110.0
  %i.nn = and i8 %i.nm, 31
  %i.no = zext nneg i8 %i.nn to i32               ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.z, i64 2 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.u, i64 2 ; 2 uses
  %i.nr = zext i16 %2 to i32
  %i.ns = add nsw i64 %6, -16                     ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.y, i64 2 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.x, i64 2 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.v, i64 2 ; 2 uses
  %7 = add nuw i64 %6, 1
  br label %bb.er

.invoke.i:                                        ; preds = %bb.ig, %bb.if, %bb.ie, %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1f_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2i_.exit623.thread.i, %bb.gj, %bb.fw, %_RNvMs_NtCsbxRVbv72Bp5_10image_webp8losslessNtB4_11HuffmanInfo14get_huff_index.exit568.i, %bb.hf, %scalar.ph1300, %_RNvMs_NtCsbxRVbv72Bp5_10image_webp8losslessNtB4_11HuffmanInfo14get_huff_index.exit.i
  %i.nw = phi i64 [ %i.aaf, %scalar.ph1300 ], [ %.sroa.0.0.i.i, %_RNvMs_NtCsbxRVbv72Bp5_10image_webp8losslessNtB4_11HuffmanInfo14get_huff_index.exit.i ], [ %i.aae, %bb.hf ], [ %i.tb, %bb.fw ], [ %i.uv, %bb.gj ], [ %i.afg, %bb.ie ], [ %i.afm, %bb.ig ], [ %i.afd, %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1f_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2i_.exit623.thread.i ], [ %i.afj, %bb.if ], [ %.sroa.0.0.i566.i, %_RNvMs_NtCsbxRVbv72Bp5_10image_webp8losslessNtB4_11HuffmanInfo14get_huff_index.exit568.i ]
  %i.nx = phi i64 [ %6, %bb.hf ], [ %.sroa.5224.0.copyload, %_RNvMs_NtCsbxRVbv72Bp5_10image_webp8losslessNtB4_11HuffmanInfo14get_huff_index.exit.i ], [ %6, %scalar.ph1300 ], [ %.sroa.8.0, %bb.fw ], [ %.sroa.8.0, %bb.gj ], [ %6, %bb.ie ], [ %6, %bb.ig ], [ %6, %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1f_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2i_.exit623.thread.i ], [ %6, %bb.if ], [ %.sroa.5224.0.copyload, %_RNvMs_NtCsbxRVbv72Bp5_10image_webp8losslessNtB4_11HuffmanInfo14get_huff_index.exit568.i ]
  %i.ny = phi ptr [ @4227, %scalar.ph1300 ], [ @4216, %_RNvMs_NtCsbxRVbv72Bp5_10image_webp8losslessNtB4_11HuffmanInfo14get_huff_index.exit.i ], [ @4228, %bb.hf ], [ @4219, %bb.fw ], [ @4219, %bb.gj ], [ @4234, %bb.ie ], [ @4236, %bb.ig ], [ @4233, %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1f_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2i_.exit623.thread.i ], [ @4235, %bb.if ], [ @4218, %_RNvMs_NtCsbxRVbv72Bp5_10image_webp8losslessNtB4_11HuffmanInfo14get_huff_index.exit568.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.nw, i64 noundef %i.nx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ny) #99
          to label %.cont.i unwind label %.loopexit.split-lp.i, !noalias !133423

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.eo:                                            ; preds = %bb.fc
  unreachable

._crit_edge941.i:                                 ; preds = %.backedge.i, %bb.en
  store i8 -1, ptr %0, align 8, !alias.scope !133406, !noalias !133424
  %i.nz = icmp sgt i64 %.sroa.0106.0, 0
  br i1 %i.nz, label %bb.ep, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbxRVbv72Bp5_10image_webp8lossless10ColorCacheEECsdaEETE4DqmE_13typst_library.exit.i552.i

bb.ep:                                            ; preds = %._crit_edge941.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0) ]
  %i.oa = shl nuw nsw i64 %.sroa.0106.0, 2
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0, i64 noundef %i.oa, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !133425
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbxRVbv72Bp5_10image_webp8lossless10ColorCacheEECsdaEETE4DqmE_13typst_library.exit.i552.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbxRVbv72Bp5_10image_webp8lossless10ColorCacheEECsdaEETE4DqmE_13typst_library.exit.i552.i: ; preds = %bb.ep, %._crit_edge941.i
  %i.ob = icmp eq i64 %.sroa.0186.0, 0
  br i1 %i.ob, label %.lr.ph.i.i.i.i558.i.preheader, label %bb.eq

bb.eq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbxRVbv72Bp5_10image_webp8lossless10ColorCacheEECsdaEETE4DqmE_13typst_library.exit.i552.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10189.0) ]
  %i.oc = shl nuw i64 %.sroa.0186.0, 1
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10189.0, i64 noundef %i.oc, i64 noundef range(i64 1, -9223372036854775807) 2) #96, !noalias !133425
  br label %.lr.ph.i.i.i.i558.i.preheader

.lr.ph.i.i.i.i558.i.preheader:                    ; preds = %bb.eq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbxRVbv72Bp5_10image_webp8lossless10ColorCacheEECsdaEETE4DqmE_13typst_library.exit.i552.i
  br label %.lr.ph.i.i.i.i558.i

.lr.ph.i.i.i.i558.i:                              ; preds = %.lr.ph.i.i.i.i558.i.preheader, %.lr.ph.i.i.i.i558.i
  %.sroa.0.07.i.i.i.i559.i = phi i64 [ %i.oe, %.lr.ph.i.i.i.i558.i ], [ 0, %.lr.ph.i.i.i.i558.i.preheader ] ; 2 uses
  %i.od = getelementptr inbounds nuw [280 x i8], ptr %.sroa.4223.0.copyload, i64 %.sroa.0.07.i.i.i.i559.i
  %i.oe = add nuw nsw i64 %.sroa.0.07.i.i.i.i559.i, 1 ; 2 uses
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreej5_ECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef readonly align 8 dereferenceable(280) %i.od), !noalias !133428
  %i.of = icmp eq i64 %i.oe, %.sroa.5224.0.copyload
  br i1 %i.of, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecANtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreej5_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsdaEETE4DqmE_13typst_library.exit.i.i560.i, label %.lr.ph.i.i.i.i558.i

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecANtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreej5_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsdaEETE4DqmE_13typst_library.exit.i.i560.i: ; preds = %.lr.ph.i.i.i.i558.i
  %i.og = icmp eq i64 %.sroa.0222.0.copyload, 0
  br i1 %i.og, label %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB15_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE17decode_image_dataB28_.exit, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbxRVbv72Bp5_10image_webp8lossless11HuffmanInfoECsdaEETE4DqmE_13typst_library.exit563.sink.split.i

bb.er:                                            ; preds = %.backedge.i, %.lr.ph940.i
  %.sroa.0.0937.i = phi i64 [ 0, %.lr.ph940.i ], [ %.sroa.0.0.be.i, %.backedge.i ] ; 22 uses
  %.sroa.030.0936.i = phi i64 [ 0, %.lr.ph940.i ], [ %.sroa.030.0.be.i, %.backedge.i ] ; 2 uses
  %.sroa.033.0935.i = phi ptr [ %i.ng, %.lr.ph940.i ], [ %.sroa.033.0.be.i, %.backedge.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !133423
  invoke fastcc void @_RNvMs1_NtCsbxRVbv72Bp5_10image_webp8losslessINtB5_9BitReaderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB11_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE4fillB24_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.aa, ptr noalias nofree noundef align 8 dereferenceable(40) %i.ak)
          to label %bb.es unwind label %.loopexit742.i, !noalias !133431

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbxRVbv72Bp5_10image_webp8lossless11HuffmanInfoECsdaEETE4DqmE_13typst_library.exit563.sink.split.i: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecANtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreej5_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsdaEETE4DqmE_13typst_library.exit.i.i633.i, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecANtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreej5_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsdaEETE4DqmE_13typst_library.exit.i.i560.i
  %i.oh = mul nuw i64 %.sroa.0222.0.copyload, 280
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4223.0.copyload, i64 noundef %i.oh, i64 noundef range(i64 1, -9223372036854775807) 8) #96, !noalias !133423
  br label %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB15_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE17decode_image_dataB28_.exit

bb.es:                                            ; preds = %bb.er
  %i.oi = load i8, ptr %i.aa, align 8, !range !24355, !noalias !133423, !noundef !12
  %.not.i40 = icmp eq i8 %i.oi, -1
  br i1 %.not.i40, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false), !noalias !133424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !133423
  br label %bb.ik

bb.eu:                                            ; preds = %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !133423
  %.not495.i = icmp ult i64 %.sroa.0.0937.i, %.sroa.030.0936.i
  br i1 %.not495.i, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtBU_8losslessINtB2u_15LosslessDecoderINtNtNtBb_2io4util4TakeQINtNtB3b_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE17decode_image_data0EB3Y_.exit.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  br i1 %i.nh, label %bb.fc, label %bb.fd

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtBU_8losslessINtB2u_15LosslessDecoderINtNtNtBb_2io4util4TakeQINtNtB3b_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE17decode_image_data0EB3Y_.exit.i: ; preds = %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1f_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2i_.exit573.thread.i, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.eu
  %.sroa.033.1.i = phi ptr [ %i.qk, %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1f_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2i_.exit573.thread.i ], [ %.sroa.033.0935.i, %bb.eu ], [ %i.qk, %bb.fj ], [ %i.qk, %bb.fi ], [ %i.qk, %bb.fh ], [ %i.qk, %bb.fg ] ; 46 uses
  %.sroa.030.1.i = phi i64 [ %i.pw, %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1f_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2i_.exit573.thread.i ], [ %.sroa.030.0936.i, %bb.eu ], [ %i.pw, %bb.fj ], [ %i.pw, %bb.fi ], [ %i.pw, %bb.fh ], [ %i.pw, %bb.fg ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !133423
  call void @llvm.experimental.noalias.scope.decl(metadata !133432)
  call void @llvm.experimental.noalias.scope.decl(metadata !133435)
  %i.oj = load i64, ptr %.sroa.033.1.i, align 8, !range !4638, !alias.scope !133432, !noalias !133437, !noundef !12
  %.not.i.i41 = icmp eq i64 %i.oj, -1
  br i1 %.not.i.i41, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtBU_8losslessINtB2u_15LosslessDecoderINtNtNtBb_2io4util4TakeQINtNtB3b_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE17decode_image_data0EB3Y_.exit.i
  %i.ok = load i64, ptr %i.ar, align 8, !alias.scope !133439, !noalias !133440, !noundef !12 ; 3 uses
  %i.ol = trunc i64 %i.ok to i16
  %i.om = getelementptr inbounds nuw i8, ptr %.sroa.033.1.i, i64 48
  %i.on = load i16, ptr %i.om, align 8, !alias.scope !133432, !noalias !133437, !noundef !12
  %i.oo = and i16 %i.on, %i.ol
  %i.op = zext i16 %i.oo to i64                   ; 3 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.sroa.033.1.i, i64 40
  %i.or = load i64, ptr %i.oq, align 8, !alias.scope !133432, !noalias !133437, !noundef !12 ; 2 uses
  %i.os = icmp ugt i64 %i.or, %i.op
  br i1 %i.os, label %bb.ey, label %.invoke1386.i

bb.ex:                                            ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtBU_8losslessINtB2u_15LosslessDecoderINtNtNtBb_2io4util4TakeQINtNtB3b_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE17decode_image_data0EB3Y_.exit.i
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.033.1.i, i64 8
  %i.ou = load i16, ptr %i.ot, align 8, !alias.scope !133432, !noalias !133437, !noundef !12
  br label %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1f_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2i_.exit.thread.i

bb.ey:                                            ; preds = %bb.ew
  %i.ov = getelementptr inbounds nuw i8, ptr %.sroa.033.1.i, i64 32
  %i.ow = load ptr, ptr %i.ov, align 8, !alias.scope !133432, !noalias !133437, !nonnull !12, !noundef !12
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %i.op
  %i.oy = load i32, ptr %i.ox, align 4, !noalias !133441, !noundef !12 ; 3 uses
  %i.oz = lshr i32 %i.oy, 16                      ; 2 uses
  %i.pa = icmp eq i32 %i.oz, 0
  br i1 %i.pa, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.pb = getelementptr inbounds nuw i8, ptr %.sroa.033.1.i, i64 8
  %i.pc = load ptr, ptr %i.pb, align 8, !alias.scope !133432, !noalias !133437, !nonnull !12, !noundef !12
  %i.pd = getelementptr inbounds nuw i8, ptr %.sroa.033.1.i, i64 16
  %i.pe = load i64, ptr %i.pd, align 8, !alias.scope !133432, !noalias !133437, !noundef !12
  %i.pf = lshr i64 %i.ok, 10
  %i.pg = and i64 %i.pf, 63
  %i.ph = add nsw i32 %i.oy, -1
  %i.pi = zext i32 %i.ph to i64
  invoke void @_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree20read_symbol_slowpathINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1o_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2r_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.pc, i64 noundef %i.pe, i64 noundef %i.pg, i64 noundef %i.pi, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ak) #105
          to label %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1f_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2i_.exit.i unwind label %.loopexit742.i, !noalias !133431

bb.fa:                                            ; preds = %bb.ey
  %i.pj = trunc i32 %i.oz to i8                   ; 3 uses
  %i.pk = load i8, ptr %i.al, align 8, !alias.scope !133439, !noalias !133440, !noundef !12 ; 2 uses
  %i.pl = icmp ult i8 %i.pk, %i.pj
  br i1 %i.pl, label %.loopexit747.i, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.pm = and i8 %i.pj, 63
  %i.pn = zext nneg i8 %i.pm to i64
  %i.po = lshr i64 %i.ok, %i.pn
  store i64 %i.po, ptr %i.ar, align 8, !alias.scope !133439, !noalias !133440
  %i.pp = sub nuw i8 %i.pk, %i.pj
  store i8 %i.pp, ptr %i.al, align 8, !alias.scope !133439, !noalias !133440
  %i.pq = trunc i32 %i.oy to i16
  br label %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1f_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2i_.exit.thread.i

bb.fc:                                            ; preds = %bb.ev
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4217) #99
          to label %bb.eo unwind label %.loopexit.split-lp.i, !noalias !133423

bb.fd:                                            ; preds = %bb.ev
  %i.pr = urem i64 %.sroa.0.0937.i, %i.mq         ; 2 uses
  %i.ps = or i64 %i.pr, %i.nj
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %i.nl, i64 %i.ps)
  %i.pt = udiv i64 %.sroa.0.0937.i, %i.mq         ; 2 uses
  %i.pu = mul nuw nsw i64 %i.pt, %i.mq
  %i.pv = add nuw nsw i64 %i.pu, 1
  %i.pw = add nuw nsw i64 %i.pv, %..i.i           ; 7 uses
  br i1 %i.mk, label %_RNvMs_NtCsbxRVbv72Bp5_10image_webp8losslessNtB4_11HuffmanInfo14get_huff_index.exit568.i, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.px = trunc i64 %i.pt to i16
  %i.py = trunc nuw i64 %i.pr to i16
  %i.pz = lshr i16 %i.px, %i.ml
  %i.qa = zext nneg i16 %i.pz to i64
  %i.qb = mul nuw nsw i64 %.sroa.019.0.i, %i.qa
  %i.qc = lshr i16 %i.py, %i.ml
  %i.qd = zext nneg i16 %i.qc to i64
  %i.qe = add nuw nsw i64 %i.qb, %i.qd            ; 3 uses
  %i.qf = icmp ult i64 %i.qe, %.sroa.14.0
  br i1 %i.qf, label %bb.ff, label %.invoke1386.i

bb.ff:                                            ; preds = %bb.fe
  %i.qg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.10189.0, i64 %i.qe
  %i.qh = load i16, ptr %i.qg, align 2, !noalias !133442, !noundef !12
  %i.qi = zext i16 %i.qh to i64
  br label %_RNvMs_NtCsbxRVbv72Bp5_10image_webp8losslessNtB4_11HuffmanInfo14get_huff_index.exit568.i

_RNvMs_NtCsbxRVbv72Bp5_10image_webp8losslessNtB4_11HuffmanInfo14get_huff_index.exit568.i: ; preds = %bb.ff, %bb.fd
  %.sroa.0.0.i566.i = phi i64 [ %i.qi, %bb.ff ], [ 0, %bb.fd ] ; 3 uses
  %i.qj = icmp ult i64 %.sroa.0.0.i566.i, %.sroa.5224.0.copyload
  br i1 %i.qj, label %bb.fg, label %.invoke.i

bb.fg:                                            ; preds = %_RNvMs_NtCsbxRVbv72Bp5_10image_webp8losslessNtB4_11HuffmanInfo14get_huff_index.exit568.i
  %i.qk = getelementptr inbounds nuw [280 x i8], ptr %.sroa.4223.0.copyload, i64 %.sroa.0.0.i566.i ; 14 uses
  %.val.i569.i = load i64, ptr %i.qk, align 8, !range !4638, !noalias !133445, !noundef !12
  %i.ql = icmp eq i64 %.val.i569.i, -1
  br i1 %i.ql, label %bb.fh, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtBU_8losslessINtB2u_15LosslessDecoderINtNtNtBb_2io4util4TakeQINtNtB3b_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE17decode_image_data0EB3Y_.exit.i

bb.fh:                                            ; preds = %bb.fg
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %i.qk, i64 56
  %.val.i569.1.i = load i64, ptr %.ptr.1.i, align 8, !range !4638, !noalias !133445, !noundef !12
  %i.qm = icmp eq i64 %.val.i569.1.i, -1
  br i1 %i.qm, label %bb.fi, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtBU_8losslessINtB2u_15LosslessDecoderINtNtNtBb_2io4util4TakeQINtNtB3b_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE17decode_image_data0EB3Y_.exit.i

bb.fi:                                            ; preds = %bb.fh
  %.ptr.2.i = getelementptr inbounds nuw i8, ptr %i.qk, i64 112
  %.val.i569.2.i = load i64, ptr %.ptr.2.i, align 8, !range !4638, !noalias !133445, !noundef !12
  %i.qn = icmp eq i64 %.val.i569.2.i, -1
  br i1 %i.qn, label %bb.fj, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtBU_8losslessINtB2u_15LosslessDecoderINtNtNtBb_2io4util4TakeQINtNtB3b_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE17decode_image_data0EB3Y_.exit.i
end_hunk_0
begin_hunk_1_@_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB15_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE19decode_image_streamB28_:bb.a
bb.gj:                                            ; preds = %bb.gh
  %i.uu = add i16 %.sroa.61.0.i.i, -280
  %i.uv = zext i16 %i.uu to i64                   ; 3 uses
  %i.uw = icmp ugt i64 %.sroa.8.0, %i.uv
  br i1 %i.uw, label %bb.gk, label %.invoke.i

bb.gk:                                            ; preds = %bb.gj
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0, i64 %i.uv
  %i.uy = load i32, ptr %i.ux, align 1, !noalias !133423
  store i32 %i.uy, ptr %i.us, align 1, !alias.scope !133479, !noalias !133483
  %i.uz = add nuw nsw i64 %.sroa.0.0937.i, 2
  br label %.backedge.i

_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB15_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE17get_copy_distanceB28_.exit.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsdaEETE4DqmE_13typst_library.exit.i.i
  store i8 15, ptr %0, align 8, !alias.scope !133406, !noalias !133424
  br label %bb.ik

bb.gl:                                            ; preds = %bb.fv, %bb.fu
  %.sroa.7650.0.ph.i = phi i64 [ %i.sn, %bb.fu ], [ %i.sz, %bb.fv ]
  %.sroa.7650.0.ph.i.fr = freeze i64 %.sroa.7650.0.ph.i ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !133423
  %i.va = getelementptr inbounds nuw i8, ptr %.sroa.033.1.i, i64 224
  call void @llvm.experimental.noalias.scope.decl(metadata !133485)
  call void @llvm.experimental.noalias.scope.decl(metadata !133488)
  %i.vb = load i64, ptr %i.va, align 8, !range !4638, !alias.scope !133485, !noalias !133490, !noundef !12
  %.not.i588.i = icmp eq i64 %i.vb, -1
  br i1 %.not.i588.i, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.vc = load i64, ptr %i.ar, align 8, !alias.scope !133492, !noalias !133493, !noundef !12 ; 3 uses
  %i.vd = trunc i64 %i.vc to i16
  %i.ve = getelementptr inbounds nuw i8, ptr %.sroa.033.1.i, i64 272
  %i.vf = load i16, ptr %i.ve, align 8, !alias.scope !133485, !noalias !133490, !noundef !12
  %i.vg = and i16 %i.vf, %i.vd
  %i.vh = zext i16 %i.vg to i64                   ; 3 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %.sroa.033.1.i, i64 264
  %i.vj = load i64, ptr %i.vi, align 8, !alias.scope !133485, !noalias !133490, !noundef !12 ; 2 uses
  %i.vk = icmp ugt i64 %i.vj, %i.vh
  br i1 %i.vk, label %bb.go, label %.invoke1386.i

bb.gn:                                            ; preds = %bb.gl
  %i.vl = getelementptr inbounds nuw i8, ptr %.sroa.033.1.i, i64 232
  %i.vm = load i16, ptr %i.vl, align 8, !alias.scope !133485, !noalias !133490, !noundef !12
  br label %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1f_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2i_.exit591.thread.i

bb.go:                                            ; preds = %bb.gm
  %i.vn = getelementptr inbounds nuw i8, ptr %.sroa.033.1.i, i64 256
  %i.vo = load ptr, ptr %i.vn, align 8, !alias.scope !133485, !noalias !133490, !nonnull !12, !noundef !12
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.vo, i64 %i.vh
  %i.vq = load i32, ptr %i.vp, align 4, !noalias !133494, !noundef !12 ; 3 uses
  %i.vr = lshr i32 %i.vq, 16                      ; 2 uses
  %i.vs = icmp eq i32 %i.vr, 0
  br i1 %i.vs, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.vt = getelementptr inbounds nuw i8, ptr %.sroa.033.1.i, i64 232
  %i.vu = load ptr, ptr %i.vt, align 8, !alias.scope !133485, !noalias !133490, !nonnull !12, !noundef !12
  %i.vv = getelementptr inbounds nuw i8, ptr %.sroa.033.1.i, i64 240
  %i.vw = load i64, ptr %i.vv, align 8, !alias.scope !133485, !noalias !133490, !noundef !12
  %i.vx = lshr i64 %i.vc, 10
  %i.vy = and i64 %i.vx, 63
  %i.vz = add nsw i32 %i.vq, -1
  %i.wa = zext i32 %i.vz to i64
  invoke void @_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree20read_symbol_slowpathINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1o_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2r_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.vu, i64 noundef %i.vw, i64 noundef %i.vy, i64 noundef %i.wa, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ak) #105
          to label %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1f_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2i_.exit591.i unwind label %.loopexit742.i, !noalias !133431

bb.gq:                                            ; preds = %bb.go
  %i.wb = trunc i32 %i.vr to i8                   ; 3 uses
  %i.wc = load i8, ptr %i.al, align 8, !alias.scope !133492, !noalias !133493, !noundef !12 ; 2 uses
  %i.wd = icmp ult i8 %i.wc, %i.wb
  br i1 %i.wd, label %.loopexit748.i, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.we = and i8 %i.wb, 63
  %i.wf = zext nneg i8 %i.we to i64
  %i.wg = lshr i64 %i.vc, %i.wf
  store i64 %i.wg, ptr %i.ar, align 8, !alias.scope !133492, !noalias !133493
  %i.wh = sub nuw i8 %i.wc, %i.wb
  store i8 %i.wh, ptr %i.al, align 8, !alias.scope !133492, !noalias !133493
  %i.wi = trunc i32 %i.vq to i16
  br label %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1f_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2i_.exit591.thread.i

_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1f_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2i_.exit591.i: ; preds = %bb.gp
  %.pr690.i = load i8, ptr %i.u, align 8, !noalias !133423 ; 2 uses
  %.not500.i = icmp eq i8 %.pr690.i, -1
  br i1 %.not500.i, label %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1f_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2i_.exit591._RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1f_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2i_.exit591.thread_crit_edge.i, label %.loopexit748.i

_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1f_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2i_.exit591._RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1f_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2i_.exit591.thread_crit_edge.i: ; preds = %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1f_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2i_.exit591.i
  %.pre1119.i = load i16, ptr %i.nq, align 2, !noalias !133423
  br label %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1f_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2i_.exit591.thread.i

.loopexit748.i:                                   ; preds = %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1f_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2i_.exit591.i, %bb.gq
  %i.wj = phi i8 [ 15, %bb.gq ], [ %.pr690.i, %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1f_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2i_.exit591.i ]
  %.sroa.4366.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %.sroa.4366.0.copyload.i = load i8, ptr %.sroa.4366.0..sroa_idx.i, align 1, !noalias !133423
  %.sroa.5367.0.copyload.i = load i16, ptr %i.nq, align 2, !noalias !133423
  %.sroa.6368.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.sroa.6372.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6372.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6368.0..sroa_idx.i, i64 28, i1 false), !noalias !133424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !133423
  store i8 %i.wj, ptr %0, align 8, !alias.scope !133406, !noalias !133424
  %.sroa.4370.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4366.0.copyload.i, ptr %.sroa.4370.0..sroa_idx.i, align 1, !alias.scope !133406, !noalias !133424
  %.sroa.5371.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.sroa.5367.0.copyload.i, ptr %.sroa.5371.0..sroa_idx.i, align 2, !alias.scope !133406, !noalias !133424
  br label %bb.ik

_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1f_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2i_.exit591.thread.i: ; preds = %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1f_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2i_.exit591._RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1f_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2i_.exit591.thread_crit_edge.i, %bb.gr, %bb.gn
  %i.wk = phi i16 [ %.pre1119.i, %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1f_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2i_.exit591._RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1f_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2i_.exit591.thread_crit_edge.i ], [ %i.vm, %bb.gn ], [ %i.wi, %bb.gr ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !133423
  call void @llvm.experimental.noalias.scope.decl(metadata !133495)
  %i.wl = icmp ult i16 %i.wk, 4
  br i1 %i.wl, label %.thread.i44, label %bb.gs

bb.gs:                                            ; preds = %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1f_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2i_.exit591.thread.i
  %i.wm = add i16 %i.wk, -2                       ; 2 uses
  %i.wn = icmp ugt i16 %i.wm, 511
  %i.wo = lshr i16 %i.wm, 1
  %i.wp = trunc nuw i16 %i.wo to i8               ; 3 uses
  br i1 %i.wn, label %bb.gt, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsdaEETE4DqmE_13typst_library.exit.i592.i, !prof !37

bb.gt:                                            ; preds = %bb.gs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !133498
  store i8 2, ptr %i.t, align 1, !noalias !133498
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4137, i64 noundef 43, ptr noundef nonnull %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4141, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4239) #104
          to label %.noexc597.i unwind label %.loopexit.split-lp.i, !noalias !133423

.noexc597.i:                                      ; preds = %bb.gt
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsdaEETE4DqmE_13typst_library.exit.i592.i: ; preds = %bb.gs
  %i.wq = load i8, ptr %i.al, align 8, !alias.scope !133502, !noalias !133503, !noundef !12 ; 2 uses
  %i.wr = icmp ult i8 %i.wq, %i.wp
  br i1 %i.wr, label %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB15_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE17get_copy_distanceB28_.exit598.i, label %bb.gu

.thread.i44:                                      ; preds = %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1f_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2i_.exit591.thread.i
  %i.ws = add nuw nsw i16 %i.wk, 1
  %i.wt = zext nneg i16 %i.ws to i64
  br label %bb.gv

_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB15_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE17get_copy_distanceB28_.exit598.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsdaEETE4DqmE_13typst_library.exit.i592.i
  store i8 15, ptr %0, align 8, !alias.scope !133406, !noalias !133424
  br label %bb.ik

bb.gu:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsdaEETE4DqmE_13typst_library.exit.i592.i
  %i.wu = load i64, ptr %i.ar, align 8, !alias.scope !133502, !noalias !133503, !noundef !12 ; 2 uses
  %i.wv = and i8 %i.wp, 63
  %i.ww = zext nneg i8 %i.wv to i64               ; 3 uses
  %notmask.i593.i = shl nsw i64 -1, %i.ww
  %i.wx = xor i64 %notmask.i593.i, -1
  %i.wy = and i64 %i.wu, %i.wx
  %i.wz = and i16 %i.wk, 1
  %i.xa = or disjoint i16 %i.wz, 2
  %i.xb = zext nneg i16 %i.xa to i64
  %i.xc = shl i64 %i.xb, %i.ww
  %i.xd = lshr i64 %i.wu, %i.ww
  store i64 %i.xd, ptr %i.ar, align 8, !alias.scope !133502, !noalias !133503
  %i.xe = sub nuw i8 %i.wq, %i.wp
  store i8 %i.xe, ptr %i.al, align 8, !alias.scope !133502, !noalias !133503
  %i.xf = add i64 %i.xc, 1
  %i.xg = add i64 %i.xf, %i.wy                    ; 3 uses
  %i.xh = icmp ugt i64 %i.xg, 120
  br i1 %i.xh, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %.thread.i44
  %.sroa.7655.0.ph699.i = phi i64 [ %i.wt, %.thread.i44 ], [ %i.xg, %bb.gu ]
  %i.xi = add nsw i64 %.sroa.7655.0.ph699.i, -1   ; 2 uses
  %i.xj = icmp ult i64 %i.xi, 120
  br i1 %i.xj, label %bb.gx, label %.invoke1386.i

bb.gw:                                            ; preds = %bb.gu
  %i.xk = add i64 %i.xg, -120
  br label %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB15_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE22plane_code_to_distanceB28_.exit.i

bb.gx:                                            ; preds = %bb.gv
  %i.xl = getelementptr inbounds nuw [2 x i8], ptr @4242, i64 %i.xi ; 2 uses
  %i.xm = load i8, ptr %i.xl, align 1, !noalias !133423, !noundef !12
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xl, i64 1
  %i.xo = load i8, ptr %i.xn, align 1, !noalias !133423, !noundef !12
  %i.xp = sext i8 %i.xm to i32
  %i.xq = sext i8 %i.xo to i32
  %i.xr = mul nsw i32 %i.xq, %i.nr
  %i.xs = add nsw i32 %i.xr, %i.xp
  %narrow.i.i = call i32 @llvm.smax.i32(i32 %i.xs, i32 1)
  %spec.select.i.i = zext nneg i32 %narrow.i.i to i64
  br label %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB15_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE22plane_code_to_distanceB28_.exit.i

_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB15_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE22plane_code_to_distanceB28_.exit.i: ; preds = %bb.gx, %bb.gw
  %.sroa.0.0.i599.i = phi i64 [ %i.xk, %bb.gw ], [ %spec.select.i.i, %bb.gx ] ; 6 uses
  %i.xt = icmp ult i64 %.sroa.0.0937.i, %.sroa.0.0.i599.i
  %i.xu = sub nuw nsw i64 %i.ms, %.sroa.0.0937.i
  %i.xv = icmp ult i64 %i.xu, %.sroa.7650.0.ph.i.fr
  %or.cond522.i = select i1 %i.xt, i1 true, i1 %i.xv
  br i1 %or.cond522.i, label %bb.hm, label %bb.gy

bb.gy:                                            ; preds = %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB15_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE22plane_code_to_distanceB28_.exit.i
  %i.xw = icmp eq i64 %.sroa.0.0.i599.i, 1
  br i1 %i.xw, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.xx = shl nuw nsw i64 %.sroa.0.0937.i, 2      ; 4 uses
  %i.xy = add nsw i64 %i.xx, -4                   ; 4 uses
  %i.xz = icmp ugt i64 %i.xy, %6
  br i1 %i.xz, label %.invoke1384.i, label %bb.hb, !prof !37

bb.ha:                                            ; preds = %bb.gy
  %i.ya = add nuw nsw i64 %.sroa.0.0937.i, 3
  %i.yb = add nuw nsw i64 %i.ya, %.sroa.7650.0.ph.i.fr
  %.not502.i = icmp ugt i64 %i.yb, %i.ms
  br i1 %.not502.i, label %.lr.ph928.i, label %bb.he

bb.hb:                                            ; preds = %bb.gz
  %i.yc = sub nuw nsw i64 %6, %i.xy               ; 2 uses
  %i.yd = icmp samesign ugt i64 %i.yc, 3
  br i1 %i.yd, label %.lr.ph934.preheader.i, label %.invoke1384.i, !prof !211

.lr.ph934.preheader.i:                            ; preds = %bb.hb
  %i.ye = getelementptr inbounds nuw i8, ptr %5, i64 %i.xy
  %.sroa.0385.0.copyload.i = load i32, ptr %i.ye, align 1, !alias.scope !133411, !noalias !133504 ; 2 uses
  %i.yf = sub nsw i64 %6, %i.xx
  %i.yg = lshr i64 %i.yf, 2                       ; 2 uses
  %i.yh = add i64 %.sroa.7650.0.ph.i.fr, -1
  %8 = call i64 @llvm.umax.i64(i64 %i.xx, i64 %7)
  %9 = add i64 %8, 3
  %10 = sub i64 %9, %i.xx
  %11 = lshr i64 %10, 2
  %i.yi = call i64 @llvm.umin.i64(i64 %11, i64 %i.yg)
  %i.yj = call i64 @llvm.umin.i64(i64 %i.yh, i64 %i.yi) ; 2 uses
  %min.iters.check1290 = icmp samesign ult i64 %i.yj, 8
  br i1 %min.iters.check1290, label %.lr.ph934.i.preheader, label %vector.ph1291

vector.ph1291:                                    ; preds = %.lr.ph934.preheader.i
  %i.yk = add nuw nsw i64 %i.yj, 1                ; 2 uses
  %i.yl = and i64 %i.yk, 7                        ; 2 uses
  %i.ym = icmp eq i64 %i.yl, 0
  %i.yn = select i1 %i.ym, i64 8, i64 %i.yl
  %n.vec1292 = sub nsw i64 %i.yk, %i.yn           ; 2 uses
  %broadcast.splatinsert1293 = insertelement <4 x i32> poison, i32 %.sroa.0385.0.copyload.i, i64 0
  %broadcast.splat1294 = shufflevector <4 x i32> %broadcast.splatinsert1293, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1295

vector.body1295:                                  ; preds = %vector.body1295, %vector.ph1291
  %index1296 = phi i64 [ 0, %vector.ph1291 ], [ %index.next1297, %vector.body1295 ] ; 2 uses
  %i.yo = add i64 %index1296, %.sroa.0.0937.i
  %i.yp = shl i64 %i.yo, 2
  %i.yq = getelementptr inbounds nuw i8, ptr %5, i64 %i.yp ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 16
  store <4 x i32> %broadcast.splat1294, ptr %i.yq, align 1, !alias.scope !133505, !noalias !133509
  store <4 x i32> %broadcast.splat1294, ptr %i.yr, align 1, !alias.scope !133505, !noalias !133509
  %index.next1297 = add nuw i64 %index1296, 8     ; 2 uses
  %i.ys = icmp eq i64 %index.next1297, %n.vec1292
  br i1 %i.ys, label %.lr.ph934.i.preheader, label %vector.body1295, !llvm.loop !133511

.lr.ph934.i.preheader:                            ; preds = %vector.body1295, %.lr.ph934.preheader.i
  %.sroa.0386.0932.i.ph = phi i64 [ 0, %.lr.ph934.preheader.i ], [ %n.vec1292, %vector.body1295 ]
  br label %.lr.ph934.i

.lr.ph934.i:                                      ; preds = %.lr.ph934.i.preheader, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsdaEETE4DqmE_13typst_library.exit524.i
  %.sroa.0386.0932.i = phi i64 [ %i.yt, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsdaEETE4DqmE_13typst_library.exit524.i ], [ %.sroa.0386.0932.i.ph, %.lr.ph934.i.preheader ] ; 3 uses
  %i.yt = add nuw nsw i64 %.sroa.0386.0932.i, 1   ; 2 uses
  %i.yu = add i64 %.sroa.0386.0932.i, %.sroa.0.0937.i
  %i.yv = shl i64 %i.yu, 2                        ; 4 uses
  %12 = icmp ugt i64 %i.yv, %6
  br i1 %12, label %.invoke1384.i, label %bb.hc, !prof !37

.loopexit.i:                                      ; preds = %_RNvMs0_NtCsbxRVbv72Bp5_10image_webp8losslessNtB5_10ColorCache6insert.exit549.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsdaEETE4DqmE_13typst_library.exit524.i, %.thread700.i
  %i.yw = add nuw nsw i64 %.sroa.7650.0.ph.i.fr, %.sroa.0.0937.i
  br label %.backedge.i

bb.hc:                                            ; preds = %.lr.ph934.i
  %exitcond1117.not.i = icmp eq i64 %.sroa.0386.0932.i, %i.yg
  br i1 %exitcond1117.not.i, label %bb.hd, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsdaEETE4DqmE_13typst_library.exit524.i, !prof !37

bb.hd:                                            ; preds = %bb.hc
  %i.yx = sub nuw nsw i64 %6, %i.yv
  br label %.invoke1384.i

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsdaEETE4DqmE_13typst_library.exit524.i: ; preds = %bb.hc
  %i.yy = getelementptr inbounds nuw i8, ptr %5, i64 %i.yv
  store i32 %.sroa.0385.0.copyload.i, ptr %i.yy, align 1, !alias.scope !133505, !noalias !133509
  %exitcond1118.not.i = icmp eq i64 %i.yt, %.sroa.7650.0.ph.i.fr
  br i1 %exitcond1118.not.i, label %.loopexit.i, label %.lr.ph934.i, !llvm.loop !133512

.lr.ph928.i:                                      ; preds = %bb.ha
  %i.yz = shl i64 %.sroa.7650.0.ph.i.fr, 2        ; 2 uses
  %i.za = shl nuw nsw i64 %.sroa.0.0937.i, 2      ; 5 uses
  %i.zb = shl nuw nsw i64 %.sroa.0.0.i599.i, 2    ; 5 uses
  %i.zc = add i64 %i.yz, -1
  %i.zd = sub nsw i64 %i.za, %i.zb
  %i.ze = call i64 @llvm.umax.i64(i64 %6, i64 %i.zd)
  %i.zf = add i64 %i.ze, %i.zb
  %i.zg = sub i64 %i.zf, %i.za
  %i.zh = call i64 @llvm.usub.sat.i64(i64 %6, i64 %i.za)
  %i.zi = call i64 @llvm.umin.i64(i64 %i.zg, i64 %i.zh)
  %i.zj = call i64 @llvm.umin.i64(i64 %i.zc, i64 %i.zi) ; 2 uses
  %min.iters.check1301 = icmp samesign ult i64 %i.zj, 16
  %i.zk = add nsw i64 %i.zb, -1
  %diff.check = icmp ult i64 %i.zk, 15
  %or.cond = select i1 %min.iters.check1301, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph1300.preheader, label %vector.ph1302

scalar.ph1300.preheader:                          ; preds = %vector.body1304, %.lr.ph928.i
  %.sroa.0390.0926.i.ph = phi i64 [ 0, %.lr.ph928.i ], [ %n.vec1303, %vector.body1304 ]
  br label %scalar.ph1300

vector.ph1302:                                    ; preds = %.lr.ph928.i
  %i.zl = add nuw i64 %i.zj, 1                    ; 2 uses
  %i.zm = and i64 %i.zl, 15                       ; 2 uses
  %i.zn = icmp eq i64 %i.zm, 0
  %i.zo = select i1 %i.zn, i64 16, i64 %i.zm
  %n.vec1303 = sub i64 %i.zl, %i.zo               ; 2 uses
  br label %vector.body1304

vector.body1304:                                  ; preds = %vector.body1304, %vector.ph1302
  %index1305 = phi i64 [ 0, %vector.ph1302 ], [ %index.next1306, %vector.body1304 ] ; 2 uses
  %i.zp = add nuw nsw i64 %index1305, %i.za       ; 2 uses
  %i.zq = sub i64 %i.zp, %i.zb
  %i.zr = getelementptr inbounds nuw i8, ptr %5, i64 %i.zq
  %wide.load = load <16 x i8>, ptr %i.zr, align 1, !alias.scope !133411, !noalias !133504
  %i.zs = getelementptr inbounds nuw i8, ptr %5, i64 %i.zp
  store <16 x i8> %wide.load, ptr %i.zs, align 1, !alias.scope !133411, !noalias !133504
  %index.next1306 = add nuw i64 %index1305, 16    ; 2 uses
  %i.zt = icmp eq i64 %index.next1306, %n.vec1303
  br i1 %i.zt, label %scalar.ph1300.preheader, label %vector.body1304, !llvm.loop !133513

bb.he:                                            ; preds = %bb.ha
  %i.zu = sub nuw nsw i64 %.sroa.0.0937.i, %.sroa.0.0.i599.i
  %i.zv = shl nuw nsw i64 %i.zu, 2                ; 4 uses
  %i.zw = add nuw nsw i64 %i.zv, 16               ; 2 uses
  %i.zx = shl nuw nsw i64 %.sroa.0.0937.i, 2      ; 4 uses
  %i.zy = icmp samesign ugt i64 %i.zw, %6
  br i1 %i.zy, label %.invoke1388.i, label %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit.i.i, !prof !37

.invoke1388.i:                                    ; preds = %bb.he, %bb.hj, %bb.hi
  %i.zz = phi i64 [ 0, %bb.hi ], [ %i.abb, %bb.hj ], [ 0, %bb.he ]
  %i.aaa = phi i64 [ %i.abc, %bb.hj ], [ %i.abc, %bb.hi ], [ %i.zw, %bb.he ]
  %i.aab = phi ptr [ @10308, %bb.hi ], [ @10309, %bb.hj ], [ @10308, %bb.he ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.zz, i64 noundef %i.aaa, i64 noundef range(i64 0, -9223372036854775808) %6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aab) #104
          to label %.cont1389.i unwind label %.loopexit.split-lp.i, !noalias !133423

.cont1389.i:                                      ; preds = %.invoke1388.i
  unreachable

_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit.i.i: ; preds = %bb.he
  %.not.i601.i = icmp ugt i64 %i.zx, %i.ns
  br i1 %.not.i601.i, label %.invoke1390.i, label %bb.hh, !prof !37

.invoke1390.i:                                    ; preds = %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit.i610.peel.i, %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit.i.i, %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit.i610.i
  %i.aac = phi ptr [ @4232, %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit.i610.i ], [ @4232, %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit.i610.peel.i ], [ @4229, %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit.i.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @12, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aac) #104
          to label %.cont1391.i unwind label %.loopexit.split-lp.i, !noalias !133423

.cont1391.i:                                      ; preds = %.invoke1390.i
  unreachable

scalar.ph1300:                                    ; preds = %scalar.ph1300.preheader, %bb.hg
  %.sroa.0390.0926.i = phi i64 [ %i.aad, %bb.hg ], [ %.sroa.0390.0926.i.ph, %scalar.ph1300.preheader ] ; 2 uses
  %i.aad = add nuw i64 %.sroa.0390.0926.i, 1      ; 2 uses
  %i.aae = add nuw nsw i64 %.sroa.0390.0926.i, %i.za ; 4 uses
  %i.aaf = sub i64 %i.aae, %i.zb                  ; 3 uses
  %i.aag = icmp ult i64 %i.aaf, %6
  br i1 %i.aag, label %bb.hf, label %.invoke.i

.thread700.i:                                     ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit615.i, %bb.hg, %_RINvMNtCs3oUPovFnLWP_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit615.i.preheader, %.preheader.peel.i, %bb.hh
  br i1 %.not519.i, label %.loopexit.i, label %bb.hk

bb.hf:                                            ; preds = %scalar.ph1300
  %i.aah = icmp ult i64 %i.aae, %6
  br i1 %i.aah, label %bb.hg, label %.invoke.i

bb.hg:                                            ; preds = %bb.hf
  %i.aai = getelementptr inbounds nuw i8, ptr %5, i64 %i.aaf
  %i.aaj = load i8, ptr %i.aai, align 1, !alias.scope !133411, !noalias !133504, !noundef !12
  %i.aak = getelementptr inbounds nuw i8, ptr %5, i64 %i.aae
  store i8 %i.aaj, ptr %i.aak, align 1, !alias.scope !133411, !noalias !133504
  %exitcond1116.not.i = icmp eq i64 %i.aad, %i.yz
  br i1 %exitcond1116.not.i, label %.thread700.i, label %scalar.ph1300, !llvm.loop !133514

bb.hh:                                            ; preds = %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit.i.i
  %i.aal = getelementptr inbounds nuw i8, ptr %5, i64 %i.zv
  %i.aam = getelementptr inbounds nuw i8, ptr %5, i64 %i.zx
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.aam, ptr noundef nonnull align 1 dereferenceable(16) %i.aal, i64 16, i1 false), !alias.scope !133515, !noalias !133518
  %i.aan = icmp samesign ugt i64 %.sroa.7650.0.ph.i.fr, 4
  %i.aao = icmp ult i64 %.sroa.0.0.i599.i, 4
  %or.cond.i43 = or i1 %i.aan, %i.aao
  br i1 %or.cond.i43, label %.preheader.peel.i, label %.thread700.i

.preheader.peel.i:                                ; preds = %bb.hh
  %i.aap = shl nuw nsw i64 %.sroa.0.0.i599.i, 2
  %..i605.i = call noundef i64 @llvm.umin.i64(i64 %i.aap, i64 16) ; 5 uses
  %.sroa.7650.0.ph.tr.i = trunc i64 %.sroa.7650.0.ph.i.fr to i16
  %.lhs.trunc.i = shl i16 %.sroa.7650.0.ph.tr.i, 2 ; 2 uses
  %.rhs.trunc.i = trunc nuw nsw i64 %..i605.i to i16 ; 2 uses
  %i.aaq = udiv i16 %.lhs.trunc.i, %.rhs.trunc.i
  %.zext.i = zext nneg i16 %i.aaq to i64
  %i.aar = urem i16 %.lhs.trunc.i, %.rhs.trunc.i
  %.not.i.i.i = icmp ne i16 %i.aar, 0
  %i.aas = zext i1 %.not.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.aas, %.zext.i ; 2 uses
  %switch.i = icmp samesign ult i64 %.sroa.05.0.i.i.i, 2
  br i1 %switch.i, label %.thread700.i, label %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit.i610.peel.i

_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit.i610.peel.i: ; preds = %.preheader.peel.i
  %i.aat = add nuw nsw i64 %..i605.i, %i.zx       ; 2 uses
  %.not.i611.peel.i = icmp ugt i64 %i.aat, %i.ns
  br i1 %.not.i611.peel.i, label %.invoke1390.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit615.i.preheader, !prof !37

_RINvMNtCs3oUPovFnLWP_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit615.i.preheader: ; preds = %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit.i610.peel.i
  %i.aau = add nsw i64 %.sroa.05.0.i.i.i, -2      ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %5, i64 %..i605.i
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 %i.zv
  %i.aax = getelementptr inbounds nuw i8, ptr %5, i64 %i.aat
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.aax, ptr noundef nonnull align 1 dereferenceable(16) %i.aaw, i64 16, i1 false), !alias.scope !133520, !noalias !133523
  %.not504.i1284 = icmp eq i64 %i.aau, 0
  br i1 %.not504.i1284, label %.thread700.i, label %.lr.ph1287

.lr.ph1287:                                       ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit615.i.preheader
  %.sroa.5664.1.peel.i = shl nuw nsw i64 %..i605.i, 1
  br label %bb.hi

_RINvMNtCs3oUPovFnLWP_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit615.i: ; preds = %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit.i610.i
  %i.aay = getelementptr inbounds nuw i8, ptr %5, i64 %i.abb
  %i.aaz = getelementptr inbounds nuw i8, ptr %5, i64 %i.abd
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.aaz, ptr noundef nonnull align 1 dereferenceable(16) %i.aay, i64 16, i1 false), !alias.scope !133520, !noalias !133523
  %.not504.i = icmp eq i64 %i.aba, 0
  br i1 %.not504.i, label %.thread700.i, label %bb.hi, !llvm.loop !133525

bb.hi:                                            ; preds = %.lr.ph1287, %_RINvMNtCs3oUPovFnLWP_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit615.i
  %.sroa.5664.0.i1286 = phi i64 [ %.sroa.5664.1.peel.i, %.lr.ph1287 ], [ %.sroa.5664.1.i, %_RINvMNtCs3oUPovFnLWP_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit615.i ] ; 3 uses
  %.sroa.11.0.i1285 = phi i64 [ %i.aau, %.lr.ph1287 ], [ %i.aba, %_RINvMNtCs3oUPovFnLWP_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit615.i ]
  %i.aba = add nsw i64 %.sroa.11.0.i1285, -1      ; 2 uses
  %.sroa.5664.1.i = add nuw nsw i64 %.sroa.5664.0.i1286, %..i605.i
  %i.abb = add nuw i64 %.sroa.5664.0.i1286, %i.zv ; 4 uses
  %i.abc = add i64 %i.abb, 16                     ; 3 uses
  %i.abd = add nuw i64 %.sroa.5664.0.i1286, %i.zx ; 2 uses
  %i.abe = icmp ugt i64 %i.abc, %6
  br i1 %i.abe, label %.invoke1388.i, label %bb.hj, !prof !37

bb.hj:                                            ; preds = %bb.hi
  %i.abf = icmp ugt i64 %i.abb, -17
  br i1 %i.abf, label %.invoke1388.i, label %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit.i610.i, !prof !37

_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit.i610.i: ; preds = %bb.hj
  %.not.i611.i = icmp ugt i64 %i.abd, %i.ns
  br i1 %.not.i611.i, label %.invoke1390.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit615.i, !prof !37, !llvm.loop !133525

bb.hk:                                            ; preds = %.thread700.i
  %i.abg = shl nuw nsw i64 %.sroa.0.0937.i, 2     ; 4 uses
  %i.abh = icmp samesign ugt i64 %i.abg, %6
  br i1 %i.abh, label %.invoke1384.i, label %bb.hl, !prof !37

bb.hl:                                            ; preds = %bb.hk
  %i.abi = sub nuw nsw i64 %6, %i.abg             ; 2 uses
  %i.abj = shl nuw nsw i64 %.sroa.7650.0.ph.i.fr, 2 ; 3 uses
  %.not506.i = icmp samesign ugt i64 %i.abj, %i.abi
  br i1 %.not506.i, label %.invoke1384.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsdaEETE4DqmE_13typst_library.exit.preheader.i, !prof !289

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsdaEETE4DqmE_13typst_library.exit.preheader.i: ; preds = %bb.hl
  %i.abk = getelementptr inbounds nuw i8, ptr %5, i64 %i.abg
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsdaEETE4DqmE_13typst_library.exit.i

.backedge.i:                                      ; preds = %bb.io, %bb.ij, %.loopexit.i, %bb.gk, %bb.gf, %bb.gd, %bb.fz
  %.sroa.033.0.be.i = phi ptr [ %i.qk, %bb.io ], [ %.sroa.033.1.i, %bb.fz ], [ %.sroa.033.1.i, %bb.gk ], [ %.sroa.033.1.i, %bb.gf ], [ %.sroa.033.1.i, %.loopexit.i ], [ %.sroa.033.1.i, %bb.ij ], [ %.sroa.033.1.i, %bb.gd ]
  %.sroa.030.0.be.i = phi i64 [ %i.pw, %bb.io ], [ %.sroa.030.1.i, %bb.fz ], [ %.sroa.030.1.i, %bb.gk ], [ %.sroa.030.1.i, %bb.gf ], [ %.sroa.030.1.i, %.loopexit.i ], [ %.sroa.030.1.i, %bb.ij ], [ %.sroa.030.1.i, %bb.gd ]
end_hunk_1
begin_hunk_2_@_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB16_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE19decode_image_streamB29_:bb.a
  %i.mb = icmp eq i64 %.val2.i, 0
  br i1 %i.mb, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecANtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreej5_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsdaEETE4DqmE_13typst_library.exit.i
  %i.mc = mul nuw i64 %.val2.i, 280
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i50, i64 noundef %i.mc, i64 noundef range(i64 1, -9223372036854775807) 8) #96, !noalias !133798
  br label %bb.ec

bb.ec:                                            ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecANtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreej5_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsdaEETE4DqmE_13typst_library.exit.i, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !133612
  %i.md = icmp eq i64 %.sroa.0186.0, 0
  %i.me = extractelement <2 x i64> %i.lo, i64 0   ; 2 uses
  %i.mf = extractelement <2 x i64> %i.lo, i64 1   ; 2 uses
  br i1 %i.md, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.mg = shl nuw i64 %.sroa.0186.0, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10189.0) ], !noalias !133624
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10189.0, i64 noundef %i.mg, i64 noundef range(i64 1, -9223372036854775807) 2) #96, !noalias !133624
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit94: ; preds = %bb.aa, %bb.ab, %bb.r, %bb.q, %.thread344
  %.pn96.i = phi { ptr, i32 } [ %.pn92.i, %bb.q ], [ %.pn92.i, %.thread344 ], [ %i.ce, %bb.r ], [ %i.dj, %bb.ab ], [ %i.dj, %bb.aa ] ; 2 uses
  %switch.i48.not = icmp eq i64 %.sroa.0106.0, -1
  br i1 %switch.i48.not, label %common.resume, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit94.thread

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit94.thread: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit94
  %i.mh = shl nuw nsw i64 %.sroa.0106.0, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0) ], !noalias !133624
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0, i64 noundef %i.mh, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !133624
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit: ; preds = %bb.ad, %bb.ae, %bb.u, %bb.v, %bb.p, %bb.o, %bb.ed, %bb.ec
  %.sroa.10113.0371 = phi i8 [ %.sroa.0284.0.copyload, %bb.ed ], [ %.sroa.0284.0.copyload, %bb.ec ], [ %i.cl, %bb.v ], [ 15, %bb.u ], [ 15, %bb.o ], [ %i.cb, %bb.p ], [ %i.dk, %bb.ae ], [ %i.dk, %bb.ad ]
  %.sroa.16.0370 = phi i8 [ %.sroa.4285.0.copyload, %bb.ed ], [ %.sroa.4285.0.copyload, %bb.ec ], [ %.sroa.8201.0.copyload, %bb.v ], [ undef, %bb.u ], [ undef, %bb.o ], [ %.sroa.8199.0.copyload, %bb.p ], [ %.sroa.4249.0.copyload, %bb.ae ], [ %.sroa.4249.0.copyload, %bb.ad ]
  %.sroa.18.sroa.0.0369 = phi i48 [ %.sroa.5286.0.copyload, %bb.ed ], [ %.sroa.5286.0.copyload, %bb.ec ], [ %.sroa.11202.sroa.0.0.copyload, %bb.v ], [ undef, %bb.u ], [ undef, %bb.o ], [ %.sroa.11.sroa.0.0.copyload, %bb.p ], [ %.sroa.5250.0.copyload, %bb.ae ], [ %.sroa.5250.0.copyload, %bb.ad ]
  %.sroa.18.sroa.10.0368 = phi i64 [ %i.me, %bb.ed ], [ %i.me, %bb.ec ], [ %.sroa.11202.sroa.5.0.copyload, %bb.v ], [ undef, %bb.u ], [ undef, %bb.o ], [ %.sroa.11.sroa.5.0.copyload, %bb.p ], [ %.sroa.6251.0.copyload, %bb.ae ], [ %.sroa.6251.0.copyload, %bb.ad ]
  %.sroa.18.sroa.11.0367 = phi i64 [ %i.mf, %bb.ed ], [ %i.mf, %bb.ec ], [ %.sroa.11202.sroa.6.0.copyload, %bb.v ], [ undef, %bb.u ], [ undef, %bb.o ], [ %.sroa.11.sroa.6.0.copyload, %bb.p ], [ %.sroa.7252.0.copyload, %bb.ae ], [ %.sroa.7252.0.copyload, %bb.ad ]
  %.sroa.18.sroa.12.0366 = phi ptr [ %.sroa.8289.0.copyload, %bb.ed ], [ %.sroa.8289.0.copyload, %bb.ec ], [ %.sroa.11202.sroa.7.0.copyload, %bb.v ], [ undef, %bb.u ], [ undef, %bb.o ], [ %.sroa.11.sroa.7.0.copyload, %bb.p ], [ %.sroa.8253.0.copyload, %bb.ae ], [ %.sroa.8253.0.copyload, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !133612
  %switch.i46.not = icmp eq i64 %.sroa.0106.0, -1
  br i1 %switch.i46.not, label %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB16_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB29_.exit.thread, label %bb.ee

bb.ee:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit
  %i.mi = shl nuw nsw i64 %.sroa.0106.0, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0) ], !noalias !133624
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0, i64 noundef %i.mi, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !133624
  br label %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB16_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB29_.exit.thread

common.resume:                                    ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit94, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit94.thread, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecANtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreej5_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsdaEETE4DqmE_13typst_library.exit.i.i.i, %bb.em
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi.i, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecANtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreej5_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsdaEETE4DqmE_13typst_library.exit.i.i.i ], [ %lpad.phi.i, %bb.em ], [ %.pn96.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit94.thread ], [ %.pn96.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit94 ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB16_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB29_.exit.thread: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit, %bb.ee
  %i.mj = zext i48 %.sroa.18.sroa.0.0369 to i64
  br label %bb.ef

_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB16_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB29_.exit.loopexit: ; preds = %bb.am
  %.sroa.0222.0.copyload.pre = load i64, ptr %i.ad, align 8, !noalias !133612
  br label %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB16_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB29_.exit

_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB16_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB29_.exit: ; preds = %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB16_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB29_.exit.loopexit, %bb.l
  %.sroa.5224.0.copyload = phi i64 [ %i.ed, %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB16_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB29_.exit.loopexit ], [ 0, %bb.l ] ; 8 uses
  %.sroa.4223.0.copyload = phi ptr [ %i.eb, %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB16_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB29_.exit.loopexit ], [ inttoptr (i64 8 to ptr), %bb.l ] ; 8 uses
  %.sroa.0222.0.copyload = phi i64 [ %.sroa.0222.0.copyload.pre, %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB16_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB29_.exit.loopexit ], [ 0, %bb.l ] ; 6 uses
  %i.mk = icmp eq i8 %.sroa.0.0.i, 0              ; 4 uses
  %i.ml = zext nneg i8 %.sroa.0.0.i to i16        ; 3 uses
  %notmask.i = shl nsw i16 -1, %i.ml
  %i.mm = xor i16 %notmask.i, -1
  %i.mn = ptrtoint ptr %.sroa.10189.0 to i64      ; 3 uses
  %.sroa.4220.8.extract.trunc = trunc i64 %i.mn to i8
  %.sroa.4220.9.extract.shift = lshr i64 %i.mn, 8
  %.sroa.4220.9.extract.trunc = trunc i64 %.sroa.4220.9.extract.shift to i8
  %.sroa.4220.10.extract.shift = lshr i64 %i.mn, 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !133612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !133612
  %i.mo = icmp eq i64 %.sroa.0186.0, -1
  br i1 %i.mo, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB16_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB29_.exit.thread, %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB16_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB29_.exit
  %.sroa.10113.1401 = phi i8 [ %.sroa.10113.0371, %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB16_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB29_.exit.thread ], [ %.sroa.4220.8.extract.trunc, %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB16_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB29_.exit ]
  %.sroa.16.1400 = phi i8 [ %.sroa.16.0370, %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB16_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB29_.exit.thread ], [ %.sroa.4220.9.extract.trunc, %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB16_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB29_.exit ]
  %.sroa.18.sroa.0.1396 = phi i64 [ %i.mj, %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB16_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB29_.exit.thread ], [ %.sroa.4220.10.extract.shift, %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB16_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB29_.exit ]
  %.sroa.18.sroa.10.1395 = phi i64 [ %.sroa.18.sroa.10.0368, %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB16_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB29_.exit.thread ], [ %.sroa.14.0, %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB16_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB29_.exit ]
  %.sroa.18.sroa.11.1392 = phi i64 [ %.sroa.18.sroa.11.0367, %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB16_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB29_.exit.thread ], [ %.sroa.0222.0.copyload, %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB16_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB29_.exit ]
  %.sroa.18.sroa.12.1389 = phi ptr [ %.sroa.18.sroa.12.0366, %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB16_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB29_.exit.thread ], [ %.sroa.4223.0.copyload, %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB16_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB29_.exit ]
  %.sroa.0178.0.insert.ext = zext i8 %.sroa.10113.1401 to i64
  %.sroa.0178.1.insert.ext = zext i8 %.sroa.16.1400 to i64
  %.sroa.0178.1.insert.shift = shl nuw nsw i64 %.sroa.0178.1.insert.ext, 8
  %.sroa.0178.1.insert.insert = or disjoint i64 %.sroa.0178.1.insert.shift, %.sroa.0178.0.insert.ext
  %.sroa.0178.2.insert.shift = shl nuw i64 %.sroa.18.sroa.0.1396, 16
  %.sroa.0178.2.insert.insert = or disjoint i64 %.sroa.0178.1.insert.insert, %.sroa.0178.2.insert.shift
  %i.mp = inttoptr i64 %.sroa.0178.2.insert.insert to ptr
  store ptr %i.mp, ptr %0, align 8
  %.sroa.4183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.18.sroa.10.1395, ptr %.sroa.4183.0..sroa_idx, align 8
  %.sroa.5184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.18.sroa.11.1392, ptr %.sroa.5184.0..sroa_idx, align 8
  %.sroa.6185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.18.sroa.12.1389, ptr %.sroa.6185.0..sroa_idx, align 8
  br label %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB16_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE17decode_image_dataB29_.exit

bb.eg:                                            ; preds = %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB16_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE18read_huffman_codesB29_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !133799)
  call void @llvm.experimental.noalias.scope.decl(metadata !133802)
  call void @llvm.experimental.noalias.scope.decl(metadata !133804)
  %i.mq = zext i16 %2 to i64                      ; 4 uses
  %i.mr = zext i16 %3 to i64
  %i.ms = mul nuw nsw i64 %i.mr, %i.mq            ; 5 uses
  br i1 %i.mk, label %_RNvMs_NtCsbxRVbv72Bp5_10image_webp8losslessNtB4_11HuffmanInfo14get_huff_index.exit.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %.not732.i = icmp eq i64 %.sroa.14.0, 0
  br i1 %.not732.i, label %.invoke1386.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10189.0) ]
  %i.mt = load i16, ptr %.sroa.10189.0, align 2, !noalias !133806, !noundef !12
  %i.mu = zext i16 %i.mt to i64
  br label %_RNvMs_NtCsbxRVbv72Bp5_10image_webp8losslessNtB4_11HuffmanInfo14get_huff_index.exit.i

.loopexit742.i:                                   ; preds = %bb.hy, %bb.ht, %bb.hq, %bb.gp, %bb.fp, %bb.ez, %bb.er
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

.loopexit.split-lp.i:                             ; preds = %.invoke1386.i, %.invoke1390.i, %.invoke1388.i, %bb.gt, %.invoke1384.i, %bb.fc, %.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

bb.ej:                                            ; preds = %.loopexit.split-lp.i, %.loopexit742.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit742.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.mv = icmp sgt i64 %.sroa.0106.0, 0
  br i1 %i.mv, label %bb.ek, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbxRVbv72Bp5_10image_webp8lossless10ColorCacheEECsdaEETE4DqmE_13typst_library.exit.i.i

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0) ]
  %i.mw = shl nuw nsw i64 %.sroa.0106.0, 2
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0, i64 noundef %i.mw, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !133810
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbxRVbv72Bp5_10image_webp8lossless10ColorCacheEECsdaEETE4DqmE_13typst_library.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbxRVbv72Bp5_10image_webp8lossless10ColorCacheEECsdaEETE4DqmE_13typst_library.exit.i.i: ; preds = %bb.ek, %bb.ej
  %i.mx = icmp eq i64 %.sroa.0186.0, 0
  br i1 %i.mx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit7.i.i, label %bb.el

bb.el:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbxRVbv72Bp5_10image_webp8lossless10ColorCacheEECsdaEETE4DqmE_13typst_library.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10189.0) ]
  %i.my = shl nuw i64 %.sroa.0186.0, 1
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10189.0, i64 noundef %i.my, i64 noundef range(i64 1, -9223372036854775807) 2) #96, !noalias !133810
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit7.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit7.i.i: ; preds = %bb.el, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbxRVbv72Bp5_10image_webp8lossless10ColorCacheEECsdaEETE4DqmE_13typst_library.exit.i.i
  %i.mz = icmp eq i64 %.sroa.5224.0.copyload, 0
  br i1 %i.mz, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecANtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreej5_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsdaEETE4DqmE_13typst_library.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit7.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i = phi i64 [ %i.nb, %.lr.ph.i.i.i.i.i ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit7.i.i ] ; 2 uses
  %i.na = getelementptr inbounds nuw [280 x i8], ptr %.sroa.4223.0.copyload, i64 %.sroa.0.07.i.i.i.i.i
  %i.nb = add nuw nsw i64 %.sroa.0.07.i.i.i.i.i, 1 ; 2 uses
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreej5_ECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef readonly align 8 dereferenceable(280) %i.na), !noalias !133813
  %i.nc = icmp eq i64 %i.nb, %.sroa.5224.0.copyload
  br i1 %i.nc, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecANtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreej5_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsdaEETE4DqmE_13typst_library.exit.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecANtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreej5_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsdaEETE4DqmE_13typst_library.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VectEECsdaEETE4DqmE_13typst_library.exit7.i.i
  %i.nd = icmp eq i64 %.sroa.0222.0.copyload, 0
  br i1 %i.nd, label %common.resume, label %bb.em

bb.em:                                            ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecANtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreej5_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsdaEETE4DqmE_13typst_library.exit.i.i.i
  %i.ne = mul nuw i64 %.sroa.0222.0.copyload, 280
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4223.0.copyload, i64 noundef %i.ne, i64 noundef range(i64 1, -9223372036854775807) 8) #96, !noalias !133813
  br label %common.resume

_RNvMs_NtCsbxRVbv72Bp5_10image_webp8losslessNtB4_11HuffmanInfo14get_huff_index.exit.i: ; preds = %bb.ei, %bb.eg
  %.sroa.0.0.i.i = phi i64 [ %i.mu, %bb.ei ], [ 0, %bb.eg ] ; 3 uses
  %i.nf = icmp ult i64 %.sroa.0.0.i.i, %.sroa.5224.0.copyload
  br i1 %i.nf, label %bb.en, label %.invoke.i

bb.en:                                            ; preds = %_RNvMs_NtCsbxRVbv72Bp5_10image_webp8losslessNtB4_11HuffmanInfo14get_huff_index.exit.i
  %.not942.i = icmp eq i64 %i.ms, 0
  br i1 %.not942.i, label %._crit_edge941.i, label %.lr.ph940.i

.lr.ph940.i:                                      ; preds = %bb.en
  %i.ng = getelementptr inbounds nuw [280 x i8], ptr %.sroa.4223.0.copyload, i64 %.sroa.0.0.i.i
  %i.nh = icmp eq i16 %2, 0
  %i.ni = zext nneg i16 %i.mm to i64
  %i.nj = select i1 %i.mk, i64 65535, i64 %i.ni
  %i.nk = add i16 %2, -1
  %i.nl = zext i16 %i.nk to i64
  %.not519.i = icmp eq i64 %.sroa.0106.0, -1      ; 4 uses
  %i.nm = sub i8 0, %.sroa.8110.0
  %i.nn = and i8 %i.nm, 31
  %i.no = zext nneg i8 %i.nn to i32               ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.z, i64 2 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.u, i64 2 ; 2 uses
  %i.nr = zext i16 %2 to i32
  %i.ns = add nsw i64 %6, -16                     ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.y, i64 2 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.x, i64 2 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.v, i64 2 ; 2 uses
  %7 = add nuw i64 %6, 1
  br label %bb.er

.invoke.i:                                        ; preds = %bb.ig, %bb.if, %bb.ie, %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1g_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2j_.exit623.thread.i, %bb.gj, %bb.fw, %_RNvMs_NtCsbxRVbv72Bp5_10image_webp8losslessNtB4_11HuffmanInfo14get_huff_index.exit568.i, %bb.hf, %scalar.ph1300, %_RNvMs_NtCsbxRVbv72Bp5_10image_webp8losslessNtB4_11HuffmanInfo14get_huff_index.exit.i
  %i.nw = phi i64 [ %i.aaf, %scalar.ph1300 ], [ %.sroa.0.0.i.i, %_RNvMs_NtCsbxRVbv72Bp5_10image_webp8losslessNtB4_11HuffmanInfo14get_huff_index.exit.i ], [ %i.aae, %bb.hf ], [ %i.tb, %bb.fw ], [ %i.uv, %bb.gj ], [ %i.afg, %bb.ie ], [ %i.afm, %bb.ig ], [ %i.afd, %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1g_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2j_.exit623.thread.i ], [ %i.afj, %bb.if ], [ %.sroa.0.0.i566.i, %_RNvMs_NtCsbxRVbv72Bp5_10image_webp8losslessNtB4_11HuffmanInfo14get_huff_index.exit568.i ]
  %i.nx = phi i64 [ %6, %bb.hf ], [ %.sroa.5224.0.copyload, %_RNvMs_NtCsbxRVbv72Bp5_10image_webp8losslessNtB4_11HuffmanInfo14get_huff_index.exit.i ], [ %6, %scalar.ph1300 ], [ %.sroa.8.0, %bb.fw ], [ %.sroa.8.0, %bb.gj ], [ %6, %bb.ie ], [ %6, %bb.ig ], [ %6, %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1g_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2j_.exit623.thread.i ], [ %6, %bb.if ], [ %.sroa.5224.0.copyload, %_RNvMs_NtCsbxRVbv72Bp5_10image_webp8losslessNtB4_11HuffmanInfo14get_huff_index.exit568.i ]
  %i.ny = phi ptr [ @4227, %scalar.ph1300 ], [ @4216, %_RNvMs_NtCsbxRVbv72Bp5_10image_webp8losslessNtB4_11HuffmanInfo14get_huff_index.exit.i ], [ @4228, %bb.hf ], [ @4219, %bb.fw ], [ @4219, %bb.gj ], [ @4234, %bb.ie ], [ @4236, %bb.ig ], [ @4233, %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1g_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2j_.exit623.thread.i ], [ @4235, %bb.if ], [ @4218, %_RNvMs_NtCsbxRVbv72Bp5_10image_webp8losslessNtB4_11HuffmanInfo14get_huff_index.exit568.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.nw, i64 noundef %i.nx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ny) #99
          to label %.cont.i unwind label %.loopexit.split-lp.i, !noalias !133816

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.eo:                                            ; preds = %bb.fc
  unreachable

._crit_edge941.i:                                 ; preds = %.backedge.i, %bb.en
  store i8 -1, ptr %0, align 8, !alias.scope !133799, !noalias !133817
  %i.nz = icmp sgt i64 %.sroa.0106.0, 0
  br i1 %i.nz, label %bb.ep, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbxRVbv72Bp5_10image_webp8lossless10ColorCacheEECsdaEETE4DqmE_13typst_library.exit.i552.i

bb.ep:                                            ; preds = %._crit_edge941.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0) ]
  %i.oa = shl nuw nsw i64 %.sroa.0106.0, 2
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0, i64 noundef %i.oa, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !133818
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbxRVbv72Bp5_10image_webp8lossless10ColorCacheEECsdaEETE4DqmE_13typst_library.exit.i552.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbxRVbv72Bp5_10image_webp8lossless10ColorCacheEECsdaEETE4DqmE_13typst_library.exit.i552.i: ; preds = %bb.ep, %._crit_edge941.i
  %i.ob = icmp eq i64 %.sroa.0186.0, 0
  br i1 %i.ob, label %.lr.ph.i.i.i.i558.i.preheader, label %bb.eq

bb.eq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbxRVbv72Bp5_10image_webp8lossless10ColorCacheEECsdaEETE4DqmE_13typst_library.exit.i552.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10189.0) ]
  %i.oc = shl nuw i64 %.sroa.0186.0, 1
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10189.0, i64 noundef %i.oc, i64 noundef range(i64 1, -9223372036854775807) 2) #96, !noalias !133818
  br label %.lr.ph.i.i.i.i558.i.preheader

.lr.ph.i.i.i.i558.i.preheader:                    ; preds = %bb.eq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbxRVbv72Bp5_10image_webp8lossless10ColorCacheEECsdaEETE4DqmE_13typst_library.exit.i552.i
  br label %.lr.ph.i.i.i.i558.i

.lr.ph.i.i.i.i558.i:                              ; preds = %.lr.ph.i.i.i.i558.i.preheader, %.lr.ph.i.i.i.i558.i
  %.sroa.0.07.i.i.i.i559.i = phi i64 [ %i.oe, %.lr.ph.i.i.i.i558.i ], [ 0, %.lr.ph.i.i.i.i558.i.preheader ] ; 2 uses
  %i.od = getelementptr inbounds nuw [280 x i8], ptr %.sroa.4223.0.copyload, i64 %.sroa.0.07.i.i.i.i559.i
  %i.oe = add nuw nsw i64 %.sroa.0.07.i.i.i.i559.i, 1 ; 2 uses
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreej5_ECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef readonly align 8 dereferenceable(280) %i.od), !noalias !133821
  %i.of = icmp eq i64 %i.oe, %.sroa.5224.0.copyload
  br i1 %i.of, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecANtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreej5_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsdaEETE4DqmE_13typst_library.exit.i.i560.i, label %.lr.ph.i.i.i.i558.i

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecANtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreej5_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsdaEETE4DqmE_13typst_library.exit.i.i560.i: ; preds = %.lr.ph.i.i.i.i558.i
  %i.og = icmp eq i64 %.sroa.0222.0.copyload, 0
  br i1 %i.og, label %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB16_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE17decode_image_dataB29_.exit, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbxRVbv72Bp5_10image_webp8lossless11HuffmanInfoECsdaEETE4DqmE_13typst_library.exit563.sink.split.i

bb.er:                                            ; preds = %.backedge.i, %.lr.ph940.i
  %.sroa.0.0937.i = phi i64 [ 0, %.lr.ph940.i ], [ %.sroa.0.0.be.i, %.backedge.i ] ; 22 uses
  %.sroa.030.0936.i = phi i64 [ 0, %.lr.ph940.i ], [ %.sroa.030.0.be.i, %.backedge.i ] ; 2 uses
  %.sroa.033.0935.i = phi ptr [ %i.ng, %.lr.ph940.i ], [ %.sroa.033.0.be.i, %.backedge.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !133816
  invoke fastcc void @_RNvMs1_NtCsbxRVbv72Bp5_10image_webp8losslessINtB5_9BitReaderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB12_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE4fillB25_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.aa, ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak)
          to label %bb.es unwind label %.loopexit742.i, !noalias !133824

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbxRVbv72Bp5_10image_webp8lossless11HuffmanInfoECsdaEETE4DqmE_13typst_library.exit563.sink.split.i: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecANtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreej5_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsdaEETE4DqmE_13typst_library.exit.i.i633.i, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecANtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreej5_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsdaEETE4DqmE_13typst_library.exit.i.i560.i
  %i.oh = mul nuw i64 %.sroa.0222.0.copyload, 280
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4223.0.copyload, i64 noundef %i.oh, i64 noundef range(i64 1, -9223372036854775807) 8) #96, !noalias !133816
  br label %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB16_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE17decode_image_dataB29_.exit

bb.es:                                            ; preds = %bb.er
  %i.oi = load i8, ptr %i.aa, align 8, !range !24355, !noalias !133816, !noundef !12
  %.not.i40 = icmp eq i8 %i.oi, -1
  br i1 %.not.i40, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false), !noalias !133817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !133816
  br label %bb.ik

bb.eu:                                            ; preds = %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !133816
  %.not495.i = icmp ult i64 %.sroa.0.0937.i, %.sroa.030.0936.i
  br i1 %.not495.i, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtBU_8losslessINtB2u_15LosslessDecoderQINtNtNtBb_2io4util4TakeQINtNtB3c_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE17decode_image_data0EB3Z_.exit.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  br i1 %i.nh, label %bb.fc, label %bb.fd

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtBU_8losslessINtB2u_15LosslessDecoderQINtNtNtBb_2io4util4TakeQINtNtB3c_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE17decode_image_data0EB3Z_.exit.i: ; preds = %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1g_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2j_.exit573.thread.i, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.eu
  %.sroa.033.1.i = phi ptr [ %i.qk, %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1g_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2j_.exit573.thread.i ], [ %.sroa.033.0935.i, %bb.eu ], [ %i.qk, %bb.fj ], [ %i.qk, %bb.fi ], [ %i.qk, %bb.fh ], [ %i.qk, %bb.fg ] ; 46 uses
  %.sroa.030.1.i = phi i64 [ %i.pw, %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1g_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2j_.exit573.thread.i ], [ %.sroa.030.0936.i, %bb.eu ], [ %i.pw, %bb.fj ], [ %i.pw, %bb.fi ], [ %i.pw, %bb.fh ], [ %i.pw, %bb.fg ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !133816
  call void @llvm.experimental.noalias.scope.decl(metadata !133825)
  call void @llvm.experimental.noalias.scope.decl(metadata !133828)
  %i.oj = load i64, ptr %.sroa.033.1.i, align 8, !range !4638, !alias.scope !133825, !noalias !133830, !noundef !12
  %.not.i.i41 = icmp eq i64 %i.oj, -1
  br i1 %.not.i.i41, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtBU_8losslessINtB2u_15LosslessDecoderQINtNtNtBb_2io4util4TakeQINtNtB3c_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE17decode_image_data0EB3Z_.exit.i
  %i.ok = load i64, ptr %i.ar, align 8, !alias.scope !133832, !noalias !133833, !noundef !12 ; 3 uses
  %i.ol = trunc i64 %i.ok to i16
  %i.om = getelementptr inbounds nuw i8, ptr %.sroa.033.1.i, i64 48
  %i.on = load i16, ptr %i.om, align 8, !alias.scope !133825, !noalias !133830, !noundef !12
  %i.oo = and i16 %i.on, %i.ol
  %i.op = zext i16 %i.oo to i64                   ; 3 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.sroa.033.1.i, i64 40
  %i.or = load i64, ptr %i.oq, align 8, !alias.scope !133825, !noalias !133830, !noundef !12 ; 2 uses
  %i.os = icmp ugt i64 %i.or, %i.op
  br i1 %i.os, label %bb.ey, label %.invoke1386.i

bb.ex:                                            ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtBU_8losslessINtB2u_15LosslessDecoderQINtNtNtBb_2io4util4TakeQINtNtB3c_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE17decode_image_data0EB3Z_.exit.i
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.033.1.i, i64 8
  %i.ou = load i16, ptr %i.ot, align 8, !alias.scope !133825, !noalias !133830, !noundef !12
  br label %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1g_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2j_.exit.thread.i

bb.ey:                                            ; preds = %bb.ew
  %i.ov = getelementptr inbounds nuw i8, ptr %.sroa.033.1.i, i64 32
  %i.ow = load ptr, ptr %i.ov, align 8, !alias.scope !133825, !noalias !133830, !nonnull !12, !noundef !12
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %i.op
  %i.oy = load i32, ptr %i.ox, align 4, !noalias !133834, !noundef !12 ; 3 uses
  %i.oz = lshr i32 %i.oy, 16                      ; 2 uses
  %i.pa = icmp eq i32 %i.oz, 0
  br i1 %i.pa, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.pb = getelementptr inbounds nuw i8, ptr %.sroa.033.1.i, i64 8
  %i.pc = load ptr, ptr %i.pb, align 8, !alias.scope !133825, !noalias !133830, !nonnull !12, !noundef !12
  %i.pd = getelementptr inbounds nuw i8, ptr %.sroa.033.1.i, i64 16
  %i.pe = load i64, ptr %i.pd, align 8, !alias.scope !133825, !noalias !133830, !noundef !12
  %i.pf = lshr i64 %i.ok, 10
  %i.pg = and i64 %i.pf, 63
  %i.ph = add nsw i32 %i.oy, -1
  %i.pi = zext i32 %i.ph to i64
  invoke void @_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree20read_symbol_slowpathQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1p_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2s_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.pc, i64 noundef %i.pe, i64 noundef %i.pg, i64 noundef %i.pi, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak) #105
          to label %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1g_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2j_.exit.i unwind label %.loopexit742.i, !noalias !133824

bb.fa:                                            ; preds = %bb.ey
  %i.pj = trunc i32 %i.oz to i8                   ; 3 uses
  %i.pk = load i8, ptr %i.al, align 8, !alias.scope !133832, !noalias !133833, !noundef !12 ; 2 uses
  %i.pl = icmp ult i8 %i.pk, %i.pj
  br i1 %i.pl, label %.loopexit747.i, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.pm = and i8 %i.pj, 63
  %i.pn = zext nneg i8 %i.pm to i64
  %i.po = lshr i64 %i.ok, %i.pn
  store i64 %i.po, ptr %i.ar, align 8, !alias.scope !133832, !noalias !133833
  %i.pp = sub nuw i8 %i.pk, %i.pj
  store i8 %i.pp, ptr %i.al, align 8, !alias.scope !133832, !noalias !133833
  %i.pq = trunc i32 %i.oy to i16
  br label %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1g_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2j_.exit.thread.i

bb.fc:                                            ; preds = %bb.ev
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4217) #99
          to label %bb.eo unwind label %.loopexit.split-lp.i, !noalias !133816

bb.fd:                                            ; preds = %bb.ev
  %i.pr = urem i64 %.sroa.0.0937.i, %i.mq         ; 2 uses
  %i.ps = or i64 %i.pr, %i.nj
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %i.nl, i64 %i.ps)
  %i.pt = udiv i64 %.sroa.0.0937.i, %i.mq         ; 2 uses
  %i.pu = mul nuw nsw i64 %i.pt, %i.mq
  %i.pv = add nuw nsw i64 %i.pu, 1
  %i.pw = add nuw nsw i64 %i.pv, %..i.i           ; 7 uses
  br i1 %i.mk, label %_RNvMs_NtCsbxRVbv72Bp5_10image_webp8losslessNtB4_11HuffmanInfo14get_huff_index.exit568.i, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.px = trunc i64 %i.pt to i16
  %i.py = trunc nuw i64 %i.pr to i16
  %i.pz = lshr i16 %i.px, %i.ml
  %i.qa = zext nneg i16 %i.pz to i64
  %i.qb = mul nuw nsw i64 %.sroa.019.0.i, %i.qa
  %i.qc = lshr i16 %i.py, %i.ml
  %i.qd = zext nneg i16 %i.qc to i64
  %i.qe = add nuw nsw i64 %i.qb, %i.qd            ; 3 uses
  %i.qf = icmp ult i64 %i.qe, %.sroa.14.0
  br i1 %i.qf, label %bb.ff, label %.invoke1386.i

bb.ff:                                            ; preds = %bb.fe
  %i.qg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.10189.0, i64 %i.qe
  %i.qh = load i16, ptr %i.qg, align 2, !noalias !133835, !noundef !12
  %i.qi = zext i16 %i.qh to i64
  br label %_RNvMs_NtCsbxRVbv72Bp5_10image_webp8losslessNtB4_11HuffmanInfo14get_huff_index.exit568.i

_RNvMs_NtCsbxRVbv72Bp5_10image_webp8losslessNtB4_11HuffmanInfo14get_huff_index.exit568.i: ; preds = %bb.ff, %bb.fd
  %.sroa.0.0.i566.i = phi i64 [ %i.qi, %bb.ff ], [ 0, %bb.fd ] ; 3 uses
  %i.qj = icmp ult i64 %.sroa.0.0.i566.i, %.sroa.5224.0.copyload
  br i1 %i.qj, label %bb.fg, label %.invoke.i

bb.fg:                                            ; preds = %_RNvMs_NtCsbxRVbv72Bp5_10image_webp8losslessNtB4_11HuffmanInfo14get_huff_index.exit568.i
  %i.qk = getelementptr inbounds nuw [280 x i8], ptr %.sroa.4223.0.copyload, i64 %.sroa.0.0.i566.i ; 14 uses
  %.val.i569.i = load i64, ptr %i.qk, align 8, !range !4638, !noalias !133838, !noundef !12
  %i.ql = icmp eq i64 %.val.i569.i, -1
  br i1 %i.ql, label %bb.fh, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtBU_8losslessINtB2u_15LosslessDecoderQINtNtNtBb_2io4util4TakeQINtNtB3c_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE17decode_image_data0EB3Z_.exit.i

bb.fh:                                            ; preds = %bb.fg
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %i.qk, i64 56
  %.val.i569.1.i = load i64, ptr %.ptr.1.i, align 8, !range !4638, !noalias !133838, !noundef !12
  %i.qm = icmp eq i64 %.val.i569.1.i, -1
  br i1 %i.qm, label %bb.fi, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtBU_8losslessINtB2u_15LosslessDecoderQINtNtNtBb_2io4util4TakeQINtNtB3c_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE17decode_image_data0EB3Z_.exit.i

bb.fi:                                            ; preds = %bb.fh
  %.ptr.2.i = getelementptr inbounds nuw i8, ptr %i.qk, i64 112
  %.val.i569.2.i = load i64, ptr %.ptr.2.i, align 8, !range !4638, !noalias !133838, !noundef !12
  %i.qn = icmp eq i64 %.val.i569.2.i, -1
  br i1 %i.qn, label %bb.fj, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsbxRVbv72Bp5_10image_webp7huffman11HuffmanTreeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtBU_8losslessINtB2u_15LosslessDecoderQINtNtNtBb_2io4util4TakeQINtNtB3c_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE17decode_image_data0EB3Z_.exit.i
end_hunk_2
begin_hunk_3_@_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB16_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE19decode_image_streamB29_:bb.a
bb.gj:                                            ; preds = %bb.gh
  %i.uu = add i16 %.sroa.61.0.i.i, -280
  %i.uv = zext i16 %i.uu to i64                   ; 3 uses
  %i.uw = icmp ugt i64 %.sroa.8.0, %i.uv
  br i1 %i.uw, label %bb.gk, label %.invoke.i

bb.gk:                                            ; preds = %bb.gj
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0, i64 %i.uv
  %i.uy = load i32, ptr %i.ux, align 1, !noalias !133816
  store i32 %i.uy, ptr %i.us, align 1, !alias.scope !133872, !noalias !133876
  %i.uz = add nuw nsw i64 %.sroa.0.0937.i, 2
  br label %.backedge.i

_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB16_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE17get_copy_distanceB29_.exit.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsdaEETE4DqmE_13typst_library.exit.i.i
  store i8 15, ptr %0, align 8, !alias.scope !133799, !noalias !133817
  br label %bb.ik

bb.gl:                                            ; preds = %bb.fv, %bb.fu
  %.sroa.7650.0.ph.i = phi i64 [ %i.sn, %bb.fu ], [ %i.sz, %bb.fv ]
  %.sroa.7650.0.ph.i.fr = freeze i64 %.sroa.7650.0.ph.i ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !133816
  %i.va = getelementptr inbounds nuw i8, ptr %.sroa.033.1.i, i64 224
  call void @llvm.experimental.noalias.scope.decl(metadata !133878)
  call void @llvm.experimental.noalias.scope.decl(metadata !133881)
  %i.vb = load i64, ptr %i.va, align 8, !range !4638, !alias.scope !133878, !noalias !133883, !noundef !12
  %.not.i588.i = icmp eq i64 %i.vb, -1
  br i1 %.not.i588.i, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.vc = load i64, ptr %i.ar, align 8, !alias.scope !133885, !noalias !133886, !noundef !12 ; 3 uses
  %i.vd = trunc i64 %i.vc to i16
  %i.ve = getelementptr inbounds nuw i8, ptr %.sroa.033.1.i, i64 272
  %i.vf = load i16, ptr %i.ve, align 8, !alias.scope !133878, !noalias !133883, !noundef !12
  %i.vg = and i16 %i.vf, %i.vd
  %i.vh = zext i16 %i.vg to i64                   ; 3 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %.sroa.033.1.i, i64 264
  %i.vj = load i64, ptr %i.vi, align 8, !alias.scope !133878, !noalias !133883, !noundef !12 ; 2 uses
  %i.vk = icmp ugt i64 %i.vj, %i.vh
  br i1 %i.vk, label %bb.go, label %.invoke1386.i

bb.gn:                                            ; preds = %bb.gl
  %i.vl = getelementptr inbounds nuw i8, ptr %.sroa.033.1.i, i64 232
  %i.vm = load i16, ptr %i.vl, align 8, !alias.scope !133878, !noalias !133883, !noundef !12
  br label %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1g_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2j_.exit591.thread.i

bb.go:                                            ; preds = %bb.gm
  %i.vn = getelementptr inbounds nuw i8, ptr %.sroa.033.1.i, i64 256
  %i.vo = load ptr, ptr %i.vn, align 8, !alias.scope !133878, !noalias !133883, !nonnull !12, !noundef !12
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.vo, i64 %i.vh
  %i.vq = load i32, ptr %i.vp, align 4, !noalias !133887, !noundef !12 ; 3 uses
  %i.vr = lshr i32 %i.vq, 16                      ; 2 uses
  %i.vs = icmp eq i32 %i.vr, 0
  br i1 %i.vs, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.vt = getelementptr inbounds nuw i8, ptr %.sroa.033.1.i, i64 232
  %i.vu = load ptr, ptr %i.vt, align 8, !alias.scope !133878, !noalias !133883, !nonnull !12, !noundef !12
  %i.vv = getelementptr inbounds nuw i8, ptr %.sroa.033.1.i, i64 240
  %i.vw = load i64, ptr %i.vv, align 8, !alias.scope !133878, !noalias !133883, !noundef !12
  %i.vx = lshr i64 %i.vc, 10
  %i.vy = and i64 %i.vx, 63
  %i.vz = add nsw i32 %i.vq, -1
  %i.wa = zext i32 %i.vz to i64
  invoke void @_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree20read_symbol_slowpathQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1p_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2s_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.vu, i64 noundef %i.vw, i64 noundef %i.vy, i64 noundef %i.wa, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak) #105
          to label %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1g_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2j_.exit591.i unwind label %.loopexit742.i, !noalias !133824

bb.gq:                                            ; preds = %bb.go
  %i.wb = trunc i32 %i.vr to i8                   ; 3 uses
  %i.wc = load i8, ptr %i.al, align 8, !alias.scope !133885, !noalias !133886, !noundef !12 ; 2 uses
  %i.wd = icmp ult i8 %i.wc, %i.wb
  br i1 %i.wd, label %.loopexit748.i, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.we = and i8 %i.wb, 63
  %i.wf = zext nneg i8 %i.we to i64
  %i.wg = lshr i64 %i.vc, %i.wf
  store i64 %i.wg, ptr %i.ar, align 8, !alias.scope !133885, !noalias !133886
  %i.wh = sub nuw i8 %i.wc, %i.wb
  store i8 %i.wh, ptr %i.al, align 8, !alias.scope !133885, !noalias !133886
  %i.wi = trunc i32 %i.vq to i16
  br label %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1g_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2j_.exit591.thread.i

_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1g_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2j_.exit591.i: ; preds = %bb.gp
  %.pr690.i = load i8, ptr %i.u, align 8, !noalias !133816 ; 2 uses
  %.not500.i = icmp eq i8 %.pr690.i, -1
  br i1 %.not500.i, label %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1g_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2j_.exit591._RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1g_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2j_.exit591.thread_crit_edge.i, label %.loopexit748.i

_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1g_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2j_.exit591._RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1g_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2j_.exit591.thread_crit_edge.i: ; preds = %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1g_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2j_.exit591.i
  %.pre1119.i = load i16, ptr %i.nq, align 2, !noalias !133816
  br label %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1g_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2j_.exit591.thread.i

.loopexit748.i:                                   ; preds = %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1g_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2j_.exit591.i, %bb.gq
  %i.wj = phi i8 [ 15, %bb.gq ], [ %.pr690.i, %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1g_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2j_.exit591.i ]
  %.sroa.4366.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %.sroa.4366.0.copyload.i = load i8, ptr %.sroa.4366.0..sroa_idx.i, align 1, !noalias !133816
  %.sroa.5367.0.copyload.i = load i16, ptr %i.nq, align 2, !noalias !133816
  %.sroa.6368.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.sroa.6372.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6372.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6368.0..sroa_idx.i, i64 28, i1 false), !noalias !133817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !133816
  store i8 %i.wj, ptr %0, align 8, !alias.scope !133799, !noalias !133817
  %.sroa.4370.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4366.0.copyload.i, ptr %.sroa.4370.0..sroa_idx.i, align 1, !alias.scope !133799, !noalias !133817
  %.sroa.5371.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.sroa.5367.0.copyload.i, ptr %.sroa.5371.0..sroa_idx.i, align 2, !alias.scope !133799, !noalias !133817
  br label %bb.ik

_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1g_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2j_.exit591.thread.i: ; preds = %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1g_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2j_.exit591._RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1g_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2j_.exit591.thread_crit_edge.i, %bb.gr, %bb.gn
  %i.wk = phi i16 [ %.pre1119.i, %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1g_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2j_.exit591._RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1g_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2j_.exit591.thread_crit_edge.i ], [ %i.vm, %bb.gn ], [ %i.wi, %bb.gr ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !133816
  call void @llvm.experimental.noalias.scope.decl(metadata !133888)
  %i.wl = icmp ult i16 %i.wk, 4
  br i1 %i.wl, label %.thread.i44, label %bb.gs

bb.gs:                                            ; preds = %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1g_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2j_.exit591.thread.i
  %i.wm = add i16 %i.wk, -2                       ; 2 uses
  %i.wn = icmp ugt i16 %i.wm, 511
  %i.wo = lshr i16 %i.wm, 1
  %i.wp = trunc nuw i16 %i.wo to i8               ; 3 uses
  br i1 %i.wn, label %bb.gt, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsdaEETE4DqmE_13typst_library.exit.i592.i, !prof !37

bb.gt:                                            ; preds = %bb.gs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !133891
  store i8 2, ptr %i.t, align 1, !noalias !133891
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4137, i64 noundef 43, ptr noundef nonnull %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4141, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4239) #104
          to label %.noexc597.i unwind label %.loopexit.split-lp.i, !noalias !133816

.noexc597.i:                                      ; preds = %bb.gt
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsdaEETE4DqmE_13typst_library.exit.i592.i: ; preds = %bb.gs
  %i.wq = load i8, ptr %i.al, align 8, !alias.scope !133895, !noalias !133896, !noundef !12 ; 2 uses
  %i.wr = icmp ult i8 %i.wq, %i.wp
  br i1 %i.wr, label %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB16_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE17get_copy_distanceB29_.exit598.i, label %bb.gu

.thread.i44:                                      ; preds = %_RINvMs_NtCsbxRVbv72Bp5_10image_webp7huffmanNtB5_11HuffmanTree11read_symbolQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB1g_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEEB2j_.exit591.thread.i
  %i.ws = add nuw nsw i16 %i.wk, 1
  %i.wt = zext nneg i16 %i.ws to i64
  br label %bb.gv

_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB16_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE17get_copy_distanceB29_.exit598.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsdaEETE4DqmE_13typst_library.exit.i592.i
  store i8 15, ptr %0, align 8, !alias.scope !133799, !noalias !133817
  br label %bb.ik

bb.gu:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsdaEETE4DqmE_13typst_library.exit.i592.i
  %i.wu = load i64, ptr %i.ar, align 8, !alias.scope !133895, !noalias !133896, !noundef !12 ; 2 uses
  %i.wv = and i8 %i.wp, 63
  %i.ww = zext nneg i8 %i.wv to i64               ; 3 uses
  %notmask.i593.i = shl nsw i64 -1, %i.ww
  %i.wx = xor i64 %notmask.i593.i, -1
  %i.wy = and i64 %i.wu, %i.wx
  %i.wz = and i16 %i.wk, 1
  %i.xa = or disjoint i16 %i.wz, 2
  %i.xb = zext nneg i16 %i.xa to i64
  %i.xc = shl i64 %i.xb, %i.ww
  %i.xd = lshr i64 %i.wu, %i.ww
  store i64 %i.xd, ptr %i.ar, align 8, !alias.scope !133895, !noalias !133896
  %i.xe = sub nuw i8 %i.wq, %i.wp
  store i8 %i.xe, ptr %i.al, align 8, !alias.scope !133895, !noalias !133896
  %i.xf = add i64 %i.xc, 1
  %i.xg = add i64 %i.xf, %i.wy                    ; 3 uses
  %i.xh = icmp ugt i64 %i.xg, 120
  br i1 %i.xh, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %.thread.i44
  %.sroa.7655.0.ph699.i = phi i64 [ %i.wt, %.thread.i44 ], [ %i.xg, %bb.gu ]
  %i.xi = add nsw i64 %.sroa.7655.0.ph699.i, -1   ; 2 uses
  %i.xj = icmp ult i64 %i.xi, 120
  br i1 %i.xj, label %bb.gx, label %.invoke1386.i

bb.gw:                                            ; preds = %bb.gu
  %i.xk = add i64 %i.xg, -120
  br label %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB16_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE22plane_code_to_distanceB29_.exit.i

bb.gx:                                            ; preds = %bb.gv
  %i.xl = getelementptr inbounds nuw [2 x i8], ptr @4242, i64 %i.xi ; 2 uses
  %i.xm = load i8, ptr %i.xl, align 1, !noalias !133816, !noundef !12
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xl, i64 1
  %i.xo = load i8, ptr %i.xn, align 1, !noalias !133816, !noundef !12
  %i.xp = sext i8 %i.xm to i32
  %i.xq = sext i8 %i.xo to i32
  %i.xr = mul nsw i32 %i.xq, %i.nr
  %i.xs = add nsw i32 %i.xr, %i.xp
  %narrow.i.i = call i32 @llvm.smax.i32(i32 %i.xs, i32 1)
  %spec.select.i.i = zext nneg i32 %narrow.i.i to i64
  br label %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB16_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE22plane_code_to_distanceB29_.exit.i

_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB16_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE22plane_code_to_distanceB29_.exit.i: ; preds = %bb.gx, %bb.gw
  %.sroa.0.0.i599.i = phi i64 [ %i.xk, %bb.gw ], [ %spec.select.i.i, %bb.gx ] ; 6 uses
  %i.xt = icmp ult i64 %.sroa.0.0937.i, %.sroa.0.0.i599.i
  %i.xu = sub nuw nsw i64 %i.ms, %.sroa.0.0937.i
  %i.xv = icmp ult i64 %i.xu, %.sroa.7650.0.ph.i.fr
  %or.cond522.i = select i1 %i.xt, i1 true, i1 %i.xv
  br i1 %or.cond522.i, label %bb.hm, label %bb.gy

bb.gy:                                            ; preds = %_RNvMNtCsbxRVbv72Bp5_10image_webp8losslessINtB2_15LosslessDecoderQINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtB16_6cursor6CursorRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEE22plane_code_to_distanceB29_.exit.i
  %i.xw = icmp eq i64 %.sroa.0.0.i599.i, 1
  br i1 %i.xw, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.xx = shl nuw nsw i64 %.sroa.0.0937.i, 2      ; 4 uses
  %i.xy = add nsw i64 %i.xx, -4                   ; 4 uses
  %i.xz = icmp ugt i64 %i.xy, %6
  br i1 %i.xz, label %.invoke1384.i, label %bb.hb, !prof !37

bb.ha:                                            ; preds = %bb.gy
  %i.ya = add nuw nsw i64 %.sroa.0.0937.i, 3
  %i.yb = add nuw nsw i64 %i.ya, %.sroa.7650.0.ph.i.fr
  %.not502.i = icmp ugt i64 %i.yb, %i.ms
  br i1 %.not502.i, label %.lr.ph928.i, label %bb.he

bb.hb:                                            ; preds = %bb.gz
  %i.yc = sub nuw nsw i64 %6, %i.xy               ; 2 uses
  %i.yd = icmp samesign ugt i64 %i.yc, 3
  br i1 %i.yd, label %.lr.ph934.preheader.i, label %.invoke1384.i, !prof !211

.lr.ph934.preheader.i:                            ; preds = %bb.hb
  %i.ye = getelementptr inbounds nuw i8, ptr %5, i64 %i.xy
  %.sroa.0385.0.copyload.i = load i32, ptr %i.ye, align 1, !alias.scope !133804, !noalias !133897 ; 2 uses
  %i.yf = sub nsw i64 %6, %i.xx
  %i.yg = lshr i64 %i.yf, 2                       ; 2 uses
  %i.yh = add i64 %.sroa.7650.0.ph.i.fr, -1
  %8 = call i64 @llvm.umax.i64(i64 %i.xx, i64 %7)
  %9 = add i64 %8, 3
  %10 = sub i64 %9, %i.xx
  %11 = lshr i64 %10, 2
  %i.yi = call i64 @llvm.umin.i64(i64 %11, i64 %i.yg)
  %i.yj = call i64 @llvm.umin.i64(i64 %i.yh, i64 %i.yi) ; 2 uses
  %min.iters.check1290 = icmp samesign ult i64 %i.yj, 8
  br i1 %min.iters.check1290, label %.lr.ph934.i.preheader, label %vector.ph1291

vector.ph1291:                                    ; preds = %.lr.ph934.preheader.i
  %i.yk = add nuw nsw i64 %i.yj, 1                ; 2 uses
  %i.yl = and i64 %i.yk, 7                        ; 2 uses
  %i.ym = icmp eq i64 %i.yl, 0
  %i.yn = select i1 %i.ym, i64 8, i64 %i.yl
  %n.vec1292 = sub nsw i64 %i.yk, %i.yn           ; 2 uses
  %broadcast.splatinsert1293 = insertelement <4 x i32> poison, i32 %.sroa.0385.0.copyload.i, i64 0
  %broadcast.splat1294 = shufflevector <4 x i32> %broadcast.splatinsert1293, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1295

vector.body1295:                                  ; preds = %vector.body1295, %vector.ph1291
  %index1296 = phi i64 [ 0, %vector.ph1291 ], [ %index.next1297, %vector.body1295 ] ; 2 uses
  %i.yo = add i64 %index1296, %.sroa.0.0937.i
  %i.yp = shl i64 %i.yo, 2
  %i.yq = getelementptr inbounds nuw i8, ptr %5, i64 %i.yp ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 16
  store <4 x i32> %broadcast.splat1294, ptr %i.yq, align 1, !alias.scope !133898, !noalias !133902
  store <4 x i32> %broadcast.splat1294, ptr %i.yr, align 1, !alias.scope !133898, !noalias !133902
  %index.next1297 = add nuw i64 %index1296, 8     ; 2 uses
  %i.ys = icmp eq i64 %index.next1297, %n.vec1292
  br i1 %i.ys, label %.lr.ph934.i.preheader, label %vector.body1295, !llvm.loop !133904

.lr.ph934.i.preheader:                            ; preds = %vector.body1295, %.lr.ph934.preheader.i
  %.sroa.0386.0932.i.ph = phi i64 [ 0, %.lr.ph934.preheader.i ], [ %n.vec1292, %vector.body1295 ]
  br label %.lr.ph934.i

.lr.ph934.i:                                      ; preds = %.lr.ph934.i.preheader, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsdaEETE4DqmE_13typst_library.exit524.i
  %.sroa.0386.0932.i = phi i64 [ %i.yt, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsdaEETE4DqmE_13typst_library.exit524.i ], [ %.sroa.0386.0932.i.ph, %.lr.ph934.i.preheader ] ; 3 uses
  %i.yt = add nuw nsw i64 %.sroa.0386.0932.i, 1   ; 2 uses
  %i.yu = add i64 %.sroa.0386.0932.i, %.sroa.0.0937.i
  %i.yv = shl i64 %i.yu, 2                        ; 4 uses
  %12 = icmp ugt i64 %i.yv, %6
  br i1 %12, label %.invoke1384.i, label %bb.hc, !prof !37

.loopexit.i:                                      ; preds = %_RNvMs0_NtCsbxRVbv72Bp5_10image_webp8losslessNtB5_10ColorCache6insert.exit549.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsdaEETE4DqmE_13typst_library.exit524.i, %.thread700.i
  %i.yw = add nuw nsw i64 %.sroa.7650.0.ph.i.fr, %.sroa.0.0937.i
  br label %.backedge.i

bb.hc:                                            ; preds = %.lr.ph934.i
  %exitcond1117.not.i = icmp eq i64 %.sroa.0386.0932.i, %i.yg
  br i1 %exitcond1117.not.i, label %bb.hd, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsdaEETE4DqmE_13typst_library.exit524.i, !prof !37

bb.hd:                                            ; preds = %bb.hc
  %i.yx = sub nuw nsw i64 %6, %i.yv
  br label %.invoke1384.i

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsdaEETE4DqmE_13typst_library.exit524.i: ; preds = %bb.hc
  %i.yy = getelementptr inbounds nuw i8, ptr %5, i64 %i.yv
  store i32 %.sroa.0385.0.copyload.i, ptr %i.yy, align 1, !alias.scope !133898, !noalias !133902
  %exitcond1118.not.i = icmp eq i64 %i.yt, %.sroa.7650.0.ph.i.fr
  br i1 %exitcond1118.not.i, label %.loopexit.i, label %.lr.ph934.i, !llvm.loop !133905

.lr.ph928.i:                                      ; preds = %bb.ha
  %i.yz = shl i64 %.sroa.7650.0.ph.i.fr, 2        ; 2 uses
  %i.za = shl nuw nsw i64 %.sroa.0.0937.i, 2      ; 5 uses
  %i.zb = shl nuw nsw i64 %.sroa.0.0.i599.i, 2    ; 5 uses
  %i.zc = add i64 %i.yz, -1
  %i.zd = sub nsw i64 %i.za, %i.zb
  %i.ze = call i64 @llvm.umax.i64(i64 %6, i64 %i.zd)
  %i.zf = add i64 %i.ze, %i.zb
  %i.zg = sub i64 %i.zf, %i.za
  %i.zh = call i64 @llvm.usub.sat.i64(i64 %6, i64 %i.za)
  %i.zi = call i64 @llvm.umin.i64(i64 %i.zg, i64 %i.zh)
  %i.zj = call i64 @llvm.umin.i64(i64 %i.zc, i64 %i.zi) ; 2 uses
  %min.iters.check1301 = icmp samesign ult i64 %i.zj, 16
  %i.zk = add nsw i64 %i.zb, -1
  %diff.check = icmp ult i64 %i.zk, 15
  %or.cond = select i1 %min.iters.check1301, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph1300.preheader, label %vector.ph1302

scalar.ph1300.preheader:                          ; preds = %vector.body1304, %.lr.ph928.i
  %.sroa.0390.0926.i.ph = phi i64 [ 0, %.lr.ph928.i ], [ %n.vec1303, %vector.body1304 ]
  br label %scalar.ph1300

vector.ph1302:                                    ; preds = %.lr.ph928.i
  %i.zl = add nuw i64 %i.zj, 1                    ; 2 uses
  %i.zm = and i64 %i.zl, 15                       ; 2 uses
  %i.zn = icmp eq i64 %i.zm, 0
  %i.zo = select i1 %i.zn, i64 16, i64 %i.zm
  %n.vec1303 = sub i64 %i.zl, %i.zo               ; 2 uses
  br label %vector.body1304

vector.body1304:                                  ; preds = %vector.body1304, %vector.ph1302
  %index1305 = phi i64 [ 0, %vector.ph1302 ], [ %index.next1306, %vector.body1304 ] ; 2 uses
  %i.zp = add nuw nsw i64 %index1305, %i.za       ; 2 uses
  %i.zq = sub i64 %i.zp, %i.zb
  %i.zr = getelementptr inbounds nuw i8, ptr %5, i64 %i.zq
  %wide.load = load <16 x i8>, ptr %i.zr, align 1, !alias.scope !133804, !noalias !133897
  %i.zs = getelementptr inbounds nuw i8, ptr %5, i64 %i.zp
  store <16 x i8> %wide.load, ptr %i.zs, align 1, !alias.scope !133804, !noalias !133897
  %index.next1306 = add nuw i64 %index1305, 16    ; 2 uses
  %i.zt = icmp eq i64 %index.next1306, %n.vec1303
  br i1 %i.zt, label %scalar.ph1300.preheader, label %vector.body1304, !llvm.loop !133906

bb.he:                                            ; preds = %bb.ha
  %i.zu = sub nuw nsw i64 %.sroa.0.0937.i, %.sroa.0.0.i599.i
  %i.zv = shl nuw nsw i64 %i.zu, 2                ; 4 uses
  %i.zw = add nuw nsw i64 %i.zv, 16               ; 2 uses
  %i.zx = shl nuw nsw i64 %.sroa.0.0937.i, 2      ; 4 uses
  %i.zy = icmp samesign ugt i64 %i.zw, %6
  br i1 %i.zy, label %.invoke1388.i, label %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit.i.i, !prof !37

.invoke1388.i:                                    ; preds = %bb.he, %bb.hj, %bb.hi
  %i.zz = phi i64 [ 0, %bb.hi ], [ %i.abb, %bb.hj ], [ 0, %bb.he ]
  %i.aaa = phi i64 [ %i.abc, %bb.hj ], [ %i.abc, %bb.hi ], [ %i.zw, %bb.he ]
  %i.aab = phi ptr [ @10308, %bb.hi ], [ @10309, %bb.hj ], [ @10308, %bb.he ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.zz, i64 noundef %i.aaa, i64 noundef range(i64 0, -9223372036854775808) %6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aab) #104
          to label %.cont1389.i unwind label %.loopexit.split-lp.i, !noalias !133816

.cont1389.i:                                      ; preds = %.invoke1388.i
  unreachable

_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit.i.i: ; preds = %bb.he
  %.not.i601.i = icmp ugt i64 %i.zx, %i.ns
  br i1 %.not.i601.i, label %.invoke1390.i, label %bb.hh, !prof !37

.invoke1390.i:                                    ; preds = %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit.i610.peel.i, %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit.i.i, %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit.i610.i
  %i.aac = phi ptr [ @4232, %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit.i610.i ], [ @4232, %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit.i610.peel.i ], [ @4229, %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit.i.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @12, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aac) #104
          to label %.cont1391.i unwind label %.loopexit.split-lp.i, !noalias !133816

.cont1391.i:                                      ; preds = %.invoke1390.i
  unreachable

scalar.ph1300:                                    ; preds = %scalar.ph1300.preheader, %bb.hg
  %.sroa.0390.0926.i = phi i64 [ %i.aad, %bb.hg ], [ %.sroa.0390.0926.i.ph, %scalar.ph1300.preheader ] ; 2 uses
  %i.aad = add nuw i64 %.sroa.0390.0926.i, 1      ; 2 uses
  %i.aae = add nuw nsw i64 %.sroa.0390.0926.i, %i.za ; 4 uses
  %i.aaf = sub i64 %i.aae, %i.zb                  ; 3 uses
  %i.aag = icmp ult i64 %i.aaf, %6
  br i1 %i.aag, label %bb.hf, label %.invoke.i

.thread700.i:                                     ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit615.i, %bb.hg, %_RINvMNtCs3oUPovFnLWP_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit615.i.preheader, %.preheader.peel.i, %bb.hh
  br i1 %.not519.i, label %.loopexit.i, label %bb.hk

bb.hf:                                            ; preds = %scalar.ph1300
  %i.aah = icmp ult i64 %i.aae, %6
  br i1 %i.aah, label %bb.hg, label %.invoke.i

bb.hg:                                            ; preds = %bb.hf
  %i.aai = getelementptr inbounds nuw i8, ptr %5, i64 %i.aaf
  %i.aaj = load i8, ptr %i.aai, align 1, !alias.scope !133804, !noalias !133897, !noundef !12
  %i.aak = getelementptr inbounds nuw i8, ptr %5, i64 %i.aae
  store i8 %i.aaj, ptr %i.aak, align 1, !alias.scope !133804, !noalias !133897
  %exitcond1116.not.i = icmp eq i64 %i.aad, %i.yz
  br i1 %exitcond1116.not.i, label %.thread700.i, label %scalar.ph1300, !llvm.loop !133907

bb.hh:                                            ; preds = %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit.i.i
  %i.aal = getelementptr inbounds nuw i8, ptr %5, i64 %i.zv
  %i.aam = getelementptr inbounds nuw i8, ptr %5, i64 %i.zx
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.aam, ptr noundef nonnull align 1 dereferenceable(16) %i.aal, i64 16, i1 false), !alias.scope !133908, !noalias !133911
  %i.aan = icmp samesign ugt i64 %.sroa.7650.0.ph.i.fr, 4
  %i.aao = icmp ult i64 %.sroa.0.0.i599.i, 4
  %or.cond.i43 = or i1 %i.aan, %i.aao
  br i1 %or.cond.i43, label %.preheader.peel.i, label %.thread700.i

.preheader.peel.i:                                ; preds = %bb.hh
  %i.aap = shl nuw nsw i64 %.sroa.0.0.i599.i, 2
  %..i605.i = call noundef i64 @llvm.umin.i64(i64 %i.aap, i64 16) ; 5 uses
  %.sroa.7650.0.ph.tr.i = trunc i64 %.sroa.7650.0.ph.i.fr to i16
  %.lhs.trunc.i = shl i16 %.sroa.7650.0.ph.tr.i, 2 ; 2 uses
  %.rhs.trunc.i = trunc nuw nsw i64 %..i605.i to i16 ; 2 uses
  %i.aaq = udiv i16 %.lhs.trunc.i, %.rhs.trunc.i
  %.zext.i = zext nneg i16 %i.aaq to i64
  %i.aar = urem i16 %.lhs.trunc.i, %.rhs.trunc.i
  %.not.i.i.i = icmp ne i16 %i.aar, 0
  %i.aas = zext i1 %.not.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.aas, %.zext.i ; 2 uses
  %switch.i = icmp samesign ult i64 %.sroa.05.0.i.i.i, 2
  br i1 %switch.i, label %.thread700.i, label %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit.i610.peel.i

_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit.i610.peel.i: ; preds = %.preheader.peel.i
  %i.aat = add nuw nsw i64 %..i605.i, %i.zx       ; 2 uses
  %.not.i611.peel.i = icmp ugt i64 %i.aat, %i.ns
  br i1 %.not.i611.peel.i, label %.invoke1390.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit615.i.preheader, !prof !37

_RINvMNtCs3oUPovFnLWP_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit615.i.preheader: ; preds = %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit.i610.peel.i
  %i.aau = add nsw i64 %.sroa.05.0.i.i.i, -2      ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %5, i64 %..i605.i
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 %i.zv
  %i.aax = getelementptr inbounds nuw i8, ptr %5, i64 %i.aat
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.aax, ptr noundef nonnull align 1 dereferenceable(16) %i.aaw, i64 16, i1 false), !alias.scope !133913, !noalias !133916
  %.not504.i1284 = icmp eq i64 %i.aau, 0
  br i1 %.not504.i1284, label %.thread700.i, label %.lr.ph1287

.lr.ph1287:                                       ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit615.i.preheader
  %.sroa.5664.1.peel.i = shl nuw nsw i64 %..i605.i, 1
  br label %bb.hi

_RINvMNtCs3oUPovFnLWP_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit615.i: ; preds = %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit.i610.i
  %i.aay = getelementptr inbounds nuw i8, ptr %5, i64 %i.abb
  %i.aaz = getelementptr inbounds nuw i8, ptr %5, i64 %i.abd
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.aaz, ptr noundef nonnull align 1 dereferenceable(16) %i.aay, i64 16, i1 false), !alias.scope !133913, !noalias !133916
  %.not504.i = icmp eq i64 %i.aba, 0
  br i1 %.not504.i, label %.thread700.i, label %bb.hi, !llvm.loop !133918

bb.hi:                                            ; preds = %.lr.ph1287, %_RINvMNtCs3oUPovFnLWP_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit615.i
  %.sroa.5664.0.i1286 = phi i64 [ %.sroa.5664.1.peel.i, %.lr.ph1287 ], [ %.sroa.5664.1.i, %_RINvMNtCs3oUPovFnLWP_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit615.i ] ; 3 uses
  %.sroa.11.0.i1285 = phi i64 [ %i.aau, %.lr.ph1287 ], [ %i.aba, %_RINvMNtCs3oUPovFnLWP_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit615.i ]
  %i.aba = add nsw i64 %.sroa.11.0.i1285, -1      ; 2 uses
  %.sroa.5664.1.i = add nuw nsw i64 %.sroa.5664.0.i1286, %..i605.i
  %i.abb = add nuw i64 %.sroa.5664.0.i1286, %i.zv ; 4 uses
  %i.abc = add i64 %i.abb, 16                     ; 3 uses
  %i.abd = add nuw i64 %.sroa.5664.0.i1286, %i.zx ; 2 uses
  %i.abe = icmp ugt i64 %i.abc, %6
  br i1 %i.abe, label %.invoke1388.i, label %bb.hj, !prof !37

bb.hj:                                            ; preds = %bb.hi
  %i.abf = icmp ugt i64 %i.abb, -17
  br i1 %i.abf, label %.invoke1388.i, label %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit.i610.i, !prof !37

_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit.i610.i: ; preds = %bb.hj
  %.not.i611.i = icmp ugt i64 %i.abd, %i.ns
  br i1 %.not.i611.i, label %.invoke1390.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsdaEETE4DqmE_13typst_library.exit615.i, !prof !37, !llvm.loop !133918

bb.hk:                                            ; preds = %.thread700.i
  %i.abg = shl nuw nsw i64 %.sroa.0.0937.i, 2     ; 4 uses
  %i.abh = icmp samesign ugt i64 %i.abg, %6
  br i1 %i.abh, label %.invoke1384.i, label %bb.hl, !prof !37

bb.hl:                                            ; preds = %bb.hk
  %i.abi = sub nuw nsw i64 %6, %i.abg             ; 2 uses
  %i.abj = shl nuw nsw i64 %.sroa.7650.0.ph.i.fr, 2 ; 3 uses
  %.not506.i = icmp samesign ugt i64 %i.abj, %i.abi
  br i1 %.not506.i, label %.invoke1384.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsdaEETE4DqmE_13typst_library.exit.preheader.i, !prof !289

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsdaEETE4DqmE_13typst_library.exit.preheader.i: ; preds = %bb.hl
  %i.abk = getelementptr inbounds nuw i8, ptr %5, i64 %i.abg
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsdaEETE4DqmE_13typst_library.exit.i

.backedge.i:                                      ; preds = %bb.io, %bb.ij, %.loopexit.i, %bb.gk, %bb.gf, %bb.gd, %bb.fz
  %.sroa.033.0.be.i = phi ptr [ %i.qk, %bb.io ], [ %.sroa.033.1.i, %bb.fz ], [ %.sroa.033.1.i, %bb.gk ], [ %.sroa.033.1.i, %bb.gf ], [ %.sroa.033.1.i, %.loopexit.i ], [ %.sroa.033.1.i, %bb.ij ], [ %.sroa.033.1.i, %bb.gd ]
  %.sroa.030.0.be.i = phi i64 [ %i.pw, %bb.io ], [ %.sroa.030.1.i, %bb.fz ], [ %.sroa.030.1.i, %bb.gk ], [ %.sroa.030.1.i, %bb.gf ], [ %.sroa.030.1.i, %.loopexit.i ], [ %.sroa.030.1.i, %bb.ij ], [ %.sroa.030.1.i, %bb.gd ]
end_hunk_3
