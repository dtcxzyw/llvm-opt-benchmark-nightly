Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.09?download=true
inline.NumInlined: 1385
inline.NumDeleted: 492
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtNtCsa5QsYiPB8Gl_5image2io17image_reader_typeINtB2_11ImageReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE6decodeB6_:bb.a
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsvKatKEpids_3gif6reader7decoder16StreamingDecoderECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.f) #30
          to label %.body86 unwind label %bb.aq, !noalias !1319

bb.aq:                                            ; preds = %bb.ap
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #31, !noalias !1319
  unreachable

_RNvMs2_NtCsvKatKEpids_3gif6readerINtB5_7DecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE12with_no_initCsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %.noexc66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(192) %i.f, i64 192, i1 false), !noalias !1320
  %.sroa.0.192..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.192..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false), !noalias !1315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1315
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(456) %i.g, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.0.i.i.i.i, i64 256, i1 false), !noalias !1321
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  store i8 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1312, !noalias !1321
  %i.ez = getelementptr inbounds nuw i8, ptr %i.g, i64 264 ; 2 uses
  store i64 0, ptr %i.ez, align 8, !alias.scope !1312, !noalias !1321
  %.sroa.01.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.01.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1312, !noalias !1321
  %.sroa.01.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  store i64 0, ptr %.sroa.01.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1312, !noalias !1321
  %.sroa.01.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 288 ; 2 uses
  store i64 -1, ptr %.sroa.01.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1312, !noalias !1321
  %.sroa.52.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  store i8 0, ptr %.sroa.52.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1312, !noalias !1321
  %i.fa = getelementptr inbounds nuw i8, ptr %i.g, i64 432 ; 3 uses
  store i64 50000000, ptr %i.fa, align 8, !alias.scope !1312, !noalias !1321
  %i.fb = getelementptr inbounds nuw i8, ptr %i.g, i64 444 ; 4 uses
  store i8 0, ptr %i.fb, align 4, !alias.scope !1312, !noalias !1321
  %i.fc = getelementptr inbounds nuw i8, ptr %i.g, i64 440 ; 2 uses
  store i16 0, ptr %i.fc, align 8, !alias.scope !1312, !noalias !1321
  %i.fd = getelementptr inbounds nuw i8, ptr %i.g, i64 442 ; 2 uses
  store i16 0, ptr %i.fd, align 2, !alias.scope !1312, !noalias !1321
  %i.fe = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  store i64 -1, ptr %i.fe, align 8, !alias.scope !1312, !noalias !1321
  %.sroa.04.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  store i64 -1, ptr %.sroa.04.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1312, !noalias !1321
  %.sroa.04.sroa.5.sroa.4.0..sroa.04.sroa.5.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.04.sroa.5.sroa.4.0..sroa.04.sroa.5.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !1312, !noalias !1321
  %.sroa.04.sroa.5.sroa.5.0..sroa.04.sroa.5.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 360
  store i64 0, ptr %.sroa.04.sroa.5.sroa.5.0..sroa.04.sroa.5.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !1312, !noalias !1321
  %.sroa.55.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  store i8 0, ptr %.sroa.55.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1312, !noalias !1321
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 370
  %.sroa.14.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 382
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.sroa.7.0..sroa_idx.i.i.i.i, i8 0, i64 12, i1 false), !alias.scope !1312, !noalias !1321
  store i8 1, ptr %.sroa.14.0..sroa_idx.i.i.i.i, align 2, !alias.scope !1312, !noalias !1321
  %i.ff = getelementptr inbounds nuw i8, ptr %i.g, i64 446
  store i8 0, ptr %i.ff, align 2, !alias.scope !1312, !noalias !1321
  %i.fg = getelementptr inbounds nuw i8, ptr %i.g, i64 448 ; 5 uses
  store i8 0, ptr %i.fg, align 8, !alias.scope !1312, !noalias !1321
  %i.fh = getelementptr inbounds nuw i8, ptr %i.g, i64 384 ; 10 uses
  store i64 -1, ptr %i.fh, align 8, !alias.scope !1312, !noalias !1321
  %i.fi = getelementptr inbounds nuw i8, ptr %i.g, i64 408 ; 7 uses
  store i64 -1, ptr %i.fi, align 8, !alias.scope !1312, !noalias !1321
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1307
  call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  call void @llvm.experimental.noalias.scope.decl(metadata !1325)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.436.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %.sroa.537.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %.sroa.638.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 11
  %.sroa.739.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.840.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.fm = getelementptr inbounds nuw i8, ptr %i.g, i64 445 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.ar

bb.ar:                                            ; preds = %.backedge.i.i.i.i, %_RNvMs2_NtCsvKatKEpids_3gif6readerINtB5_7DecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE12with_no_initCsa5QsYiPB8Gl_5image.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1327
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1327
  store i64 2, ptr %i.c, align 8, !noalias !1327
  invoke void @_RNvMs1_NtCsvKatKEpids_3gif6readerINtB5_11ReadDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE11decode_nextCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(456) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.as unwind label %.loopexit.i.i.i.i, !noalias !1328

.loopexit.i.i.i.i:                                ; preds = %bb.dl, %_RNvMNtCsvKatKEpids_3gif6readerNtB2_11MemoryLimit11try_reserve.exit47.i.i.i.i.i, %bb.dj, %bb.dh, %bb.df, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit.i.i.i.i.i, %bb.dc, %_RNvMNtCsvKatKEpids_3gif6readerNtB2_11MemoryLimit11try_reserve.exit.i.i.i.i.i, %bb.ax, %bb.ar
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.di, %bb.av
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.ck, %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i, %bb.ck ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsvKatKEpids_3gif6reader7DecoderINtNtNtB4_2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(456) %i.g) #30
          to label %.body86 unwind label %bb.dn, !noalias !1328

bb.as:                                            ; preds = %bb.ar
  %i.fp = load i64, ptr %i.d, align 8, !range !45, !noalias !1327, !noundef !4
  %i.fq = trunc nuw i64 %i.fp to i1
  %.sroa.047.0.copyload.i.i.i.i = load i8, ptr %i.fj, align 8, !noalias !1327 ; 2 uses
  %.sroa.448.0.copyload.i.i.i.i = load i8, ptr %.sroa.436.0..sroa_idx.i.i.i.i, align 1, !noalias !1327 ; 3 uses
  %.sroa.549.0.copyload.i.i.i.i = load i8, ptr %.sroa.537.0..sroa_idx.i.i.i.i, align 2, !noalias !1327 ; 2 uses
  br i1 %i.fq, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %.sroa.9.sroa.11.sroa.0.0.copyload.i.i = load i40, ptr %.sroa.638.0..sroa_idx.i.i.i.i, align 1, !noalias !1329
  %.sroa.751.0.copyload.i.i.i.i = load ptr, ptr %.sroa.739.0..sroa_idx.i.i.i.i, align 8, !noalias !1327
  %.sroa.852.0.copyload.i.i.i.i = load i64, ptr %.sroa.840.0..sroa_idx.i.i.i.i, align 8, !noalias !1327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1327
  %i.fr = zext i40 %.sroa.9.sroa.11.sroa.0.0.copyload.i.i to i64
  br label %_RINvMs0_NtCsvKatKEpids_3gif6readerNtB6_13DecodeOptions9read_infoINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i.i

bb.au:                                            ; preds = %bb.as
  %.sroa.739.0.copyload.i.i.i.i = load ptr, ptr %.sroa.739.0..sroa_idx.i.i.i.i, align 8, !noalias !1327 ; 2 uses
  %.sroa.840.0.copyload.i.i.i.i = load i64, ptr %.sroa.840.0..sroa_idx.i.i.i.i, align 8, !noalias !1327 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1327
  switch i8 %.sroa.047.0.copyload.i.i.i.i, label %.backedge.i.i.i.i [
    i8 -1, label %bb.av
    i8 1, label %bb.ax
    i8 2, label %bb.ay
    i8 3, label %bb.az
    i8 5, label %bb.ba
  ], !prof !1330

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1327
  invoke void @_RNvMs0_NtNtCsvKatKEpids_3gif6reader7decoderNtB5_13DecodingError6format(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 36)
          to label %bb.aw unwind label %.loopexit.split-lp.i.i.i.i, !noalias !1328

bb.aw:                                            ; preds = %bb.av
  %.sroa.9.8.copyload26.i.i = load i64, ptr %i.a, align 8, !noalias !1329 ; 4 uses
  %.sroa.9.sroa.0.0.extract.trunc37.i.i = trunc i64 %.sroa.9.8.copyload26.i.i to i8
  %.sroa.9.sroa.9.0.extract.shift44.i.i = lshr i64 %.sroa.9.8.copyload26.i.i, 8
  %.sroa.9.sroa.9.0.extract.trunc45.i.i = trunc i64 %.sroa.9.sroa.9.0.extract.shift44.i.i to i8
  %.sroa.9.sroa.10.0.extract.shift52.i.i = lshr i64 %.sroa.9.8.copyload26.i.i, 16
  %.sroa.9.sroa.10.0.extract.trunc53.i.i = trunc i64 %.sroa.9.sroa.10.0.extract.shift52.i.i to i8
  %.sroa.9.sroa.11.0.extract.shift60.i.i = lshr i64 %.sroa.9.8.copyload26.i.i, 24
  %.sroa.17.8..sroa_idx28.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.17.8.copyload29.i.i = load ptr, ptr %.sroa.17.8..sroa_idx28.i.i, align 8, !noalias !1329
  %.sroa.18.8..sroa_idx31.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.18.8.copyload32.i.i = load i64, ptr %.sroa.18.8..sroa_idx31.i.i, align 8, !noalias !1329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1327
  br label %_RINvMs0_NtCsvKatKEpids_3gif6readerNtB6_13DecodeOptions9read_infoINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i.i

_RINvMs0_NtCsvKatKEpids_3gif6readerNtB6_13DecodeOptions9read_infoINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i.i: ; preds = %.noexc71.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsvKatKEpids_3gif6reader7decoder13DecodingErrorECsa5QsYiPB8Gl_5image.exit.i40.i.i.i.i.i, %bb.dk, %.noexc.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsvKatKEpids_3gif6reader7decoder13DecodingErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i, %bb.da, %bb.aw, %bb.at
  %.sroa.9.sroa.11.sroa.0.0.i.i = phi i64 [ %i.fr, %bb.at ], [ %.sroa.9.sroa.11.0.extract.shift60.i.i, %bb.aw ], [ 0, %bb.da ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsvKatKEpids_3gif6reader7decoder13DecodingErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i ], [ 0, %.noexc.i.i.i.i ], [ 0, %bb.dk ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsvKatKEpids_3gif6reader7decoder13DecodingErrorECsa5QsYiPB8Gl_5image.exit.i40.i.i.i.i.i ], [ 0, %.noexc71.i.i.i.i ]
  %.sroa.9.sroa.10.0.i.i = phi i8 [ %.sroa.549.0.copyload.i.i.i.i, %bb.at ], [ %.sroa.9.sroa.10.0.extract.trunc53.i.i, %bb.aw ], [ 0, %bb.da ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsvKatKEpids_3gif6reader7decoder13DecodingErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i ], [ 0, %.noexc.i.i.i.i ], [ 0, %bb.dk ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsvKatKEpids_3gif6reader7decoder13DecodingErrorECsa5QsYiPB8Gl_5image.exit.i40.i.i.i.i.i ], [ 0, %.noexc71.i.i.i.i ]
  %.sroa.9.sroa.9.0.i.i = phi i8 [ %.sroa.448.0.copyload.i.i.i.i, %bb.at ], [ %.sroa.9.sroa.9.0.extract.trunc45.i.i, %bb.aw ], [ 0, %bb.da ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsvKatKEpids_3gif6reader7decoder13DecodingErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i ], [ 0, %.noexc.i.i.i.i ], [ 0, %bb.dk ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsvKatKEpids_3gif6reader7decoder13DecodingErrorECsa5QsYiPB8Gl_5image.exit.i40.i.i.i.i.i ], [ 0, %.noexc71.i.i.i.i ]
  %.sroa.9.sroa.0.0.i.i = phi i8 [ %.sroa.047.0.copyload.i.i.i.i, %bb.at ], [ %.sroa.9.sroa.0.0.extract.trunc37.i.i, %bb.aw ], [ 0, %.noexc71.i.i.i.i ], [ 1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsvKatKEpids_3gif6reader7decoder13DecodingErrorECsa5QsYiPB8Gl_5image.exit.i40.i.i.i.i.i ], [ 1, %bb.dk ], [ 0, %.noexc.i.i.i.i ], [ 1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsvKatKEpids_3gif6reader7decoder13DecodingErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i ], [ 1, %bb.da ]
  %.sroa.18.0.i.i = phi i64 [ %.sroa.852.0.copyload.i.i.i.i, %bb.at ], [ %.sroa.18.8.copyload32.i.i, %bb.aw ], [ undef, %bb.da ], [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsvKatKEpids_3gif6reader7decoder13DecodingErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i ], [ undef, %.noexc.i.i.i.i ], [ undef, %bb.dk ], [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsvKatKEpids_3gif6reader7decoder13DecodingErrorECsa5QsYiPB8Gl_5image.exit.i40.i.i.i.i.i ], [ undef, %.noexc71.i.i.i.i ]
  %.sroa.17.0.i.i = phi ptr [ %.sroa.751.0.copyload.i.i.i.i, %bb.at ], [ %.sroa.17.8.copyload29.i.i, %bb.aw ], [ undef, %bb.da ], [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsvKatKEpids_3gif6reader7decoder13DecodingErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i ], [ undef, %.noexc.i.i.i.i ], [ undef, %bb.dk ], [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsvKatKEpids_3gif6reader7decoder13DecodingErrorECsa5QsYiPB8Gl_5image.exit.i40.i.i.i.i.i ], [ undef, %.noexc71.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1327
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsvKatKEpids_3gif6reader7DecoderINtNtNtB4_2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(456) %i.g)
          to label %.noexc67 unwind label %bb.f

.noexc67:                                         ; preds = %_RINvMs0_NtCsvKatKEpids_3gif6readerNtB6_13DecodeOptions9read_infoINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1307
  br label %bb.ek

.backedge.i.i.i.i:                                ; preds = %.noexc70.i.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsa5QsYiPB8Gl_5image.exit.i.i.i.i.i, %bb.bj, %bb.bb, %bb.ba, %bb.ay, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1327
  br label %bb.ar

bb.ax:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1327
  %i.fs = icmp sgt i64 %.sroa.840.0.copyload.i.i.i.i, -1
  call void @llvm.assume(i1 %i.fs)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.739.0.copyload.i.i.i.i) ]
  store i64 %.sroa.840.0.copyload.i.i.i.i, ptr %i.b, align 8, !noalias !1327
  store ptr %.sroa.739.0.copyload.i.i.i.i, ptr %i.fn, align 8, !noalias !1327
  store i64 %.sroa.840.0.copyload.i.i.i.i, ptr %i.fo, align 8, !noalias !1327
  invoke void @_RNvMNtNtCsvKatKEpids_3gif6reader9converterNtB2_14PixelConverter18set_global_palette(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ez, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.bb unwind label %.loopexit.i.i.i.i, !noalias !1328

bb.ay:                                            ; preds = %bb.au
  store i8 1, ptr %i.fb, align 4, !alias.scope !1325, !noalias !1331
  store i8 %.sroa.448.0.copyload.i.i.i.i, ptr %i.fm, align 1, !alias.scope !1325, !noalias !1331
  br label %.backedge.i.i.i.i

bb.az:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1327
  %i.ft = load i64, ptr %.sroa.01.sroa.6.0..sroa_idx.i.i.i.i, align 8, !range !79, !alias.scope !1325, !noalias !1331, !noundef !4
  %.not63.i.i.i.i = icmp eq i64 %i.ft, -1
  br i1 %.not63.i.i.i.i, label %_RINvMs0_NtCsvKatKEpids_3gif6readerNtB6_13DecodeOptions9read_infoINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEECsa5QsYiPB8Gl_5image.exit.i.i, label %bb.bc

bb.ba:                                            ; preds = %bb.au
  %i.fu = icmp eq i8 %.sroa.448.0.copyload.i.i.i.i, -1
  br i1 %i.fu, label %bb.be, label %.backedge.i.i.i.i

bb.bb:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1327
  br label %.backedge.i.i.i.i

bb.bc:                                            ; preds = %bb.az
  %i.fv = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.fw = load i64, ptr %i.fv, align 8, !alias.scope !1325, !noalias !1331, !noundef !4
  %i.fx = load i8, ptr %i.fb, align 4, !range !5, !alias.scope !1325, !noalias !1331, !noundef !4
  %i.fy = trunc nuw i8 %i.fx to i1
  %i.fz = load i8, ptr %i.fm, align 1, !alias.scope !1325, !noalias !1331
  %2 = zext i8 %i.fz to i64
  %.sroa.031.0.i.i.i.i = select i1 %i.fy, i64 %2, i64 0
  %i.ga = udiv i64 %i.fw, 3
  %.not64.i.i.i.i = icmp samesign ult i64 %.sroa.031.0.i.i.i.i, %i.ga
  br i1 %.not64.i.i.i.i, label %_RINvMs0_NtCsvKatKEpids_3gif6readerNtB6_13DecodeOptions9read_infoINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEECsa5QsYiPB8Gl_5image.exit.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store i8 0, ptr %i.fb, align 4, !alias.scope !1325, !noalias !1331
  br label %_RINvMs0_NtCsvKatKEpids_3gif6readerNtB6_13DecodeOptions9read_infoINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEECsa5QsYiPB8Gl_5image.exit.i.i

bb.be:                                            ; preds = %bb.ba
  %i.gb = trunc nuw i8 %.sroa.549.0.copyload.i.i.i.i to i1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1332)
  %i.gc = load ptr, ptr %i.fk, align 8, !alias.scope !1335, !noalias !1336, !nonnull !4, !noundef !4 ; 35 uses
  %i.gd = load i64, ptr %i.fl, align 8, !alias.scope !1335, !noalias !1336, !noundef !4 ; 15 uses
  %i.ge = load i8, ptr %i.fg, align 8, !range !279, !alias.scope !1335, !noalias !1336, !noundef !4
  switch i8 %i.ge, label %default.unreachable [
    i8 0, label %bb.bf
    i8 1, label %bb.bg
    i8 2, label %bb.bh
    i8 3, label %bb.bi
    i8 4, label %bb.bj
  ]

default.unreachable:                              ; preds = %bb.be
  unreachable

bb.bf:                                            ; preds = %bb.be
  %i.gf = icmp eq i64 %i.gd, 11
  br i1 %i.gf, label %bb.bk, label %bb.bx

bb.bg:                                            ; preds = %bb.be
  %.not36.i.i.i.i.i = icmp eq i64 %i.gd, 0
  br i1 %.not36.i.i.i.i.i, label %bb.cx, label %bb.cy

bb.bh:                                            ; preds = %bb.be
  %i.gg = load i64, ptr %i.fh, align 8, !range !79, !alias.scope !1335, !noalias !1336, !noundef !4
  %.not34.i.i.i.i.i = icmp eq i64 %i.gg, -1
  br i1 %.not34.i.i.i.i.i, label %bb.bj, label %bb.da

bb.bi:                                            ; preds = %bb.be
  %i.gh = load i64, ptr %i.fi, align 8, !range !79, !alias.scope !1335, !noalias !1336, !noundef !4
  %.not.i.i.i.i.i = icmp eq i64 %i.gh, -1
  br i1 %.not.i.i.i.i.i, label %bb.bj, label %bb.dk

bb.bj:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsa5QsYiPB8Gl_5image.exit50.i.i.i.i.i, %bb.cx, %bb.bx, %bb.bi, %bb.bh, %bb.be
  br i1 %i.gb, label %.noexc70.i.i.i.i, label %.backedge.i.i.i.i

bb.bk:                                            ; preds = %bb.bf
  %i.gi = load i8, ptr %i.gc, align 1, !noalias !1338, !noundef !4
  switch i8 %i.gi, label %bb.bx [
    i8 78, label %bb.bl
    i8 88, label %bb.bm
    i8 73, label %bb.bn
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gc, i64 1
  %i.gk = load i8, ptr %i.gj, align 1, !noalias !1338, !noundef !4
  %i.gl = icmp eq i8 %i.gk, 69
  br i1 %i.gl, label %bb.bo, label %bb.bx

bb.bm:                                            ; preds = %bb.bk
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gc, i64 1
  %i.gn = load i8, ptr %i.gm, align 1, !noalias !1338, !noundef !4
  %i.go = icmp eq i8 %i.gn, 77
  br i1 %i.go, label %bb.by, label %bb.bx

bb.bn:                                            ; preds = %bb.bk
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gc, i64 1
  %i.gq = load i8, ptr %i.gp, align 1, !noalias !1338, !noundef !4
  %i.gr = icmp eq i8 %i.gq, 67
  br i1 %i.gr, label %bb.cl, label %bb.bx

bb.bo:                                            ; preds = %bb.bl
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gc, i64 2
  %i.gt = load i8, ptr %i.gs, align 1, !noalias !1338, !noundef !4
  %i.gu = icmp eq i8 %i.gt, 84
  br i1 %i.gu, label %bb.bp, label %bb.bx

bb.bp:                                            ; preds = %bb.bo
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gc, i64 3
  %i.gw = load i8, ptr %i.gv, align 1, !noalias !1338, !noundef !4
  %i.gx = icmp eq i8 %i.gw, 83
  br i1 %i.gx, label %bb.bq, label %bb.bx

bb.bq:                                            ; preds = %bb.bp
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.gz = load i8, ptr %i.gy, align 1, !noalias !1338, !noundef !4
  %i.ha = icmp eq i8 %i.gz, 67
  br i1 %i.ha, label %bb.br, label %bb.bx

bb.br:                                            ; preds = %bb.bq
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gc, i64 5
  %i.hc = load i8, ptr %i.hb, align 1, !noalias !1338, !noundef !4
  %i.hd = icmp eq i8 %i.hc, 65
  br i1 %i.hd, label %bb.bs, label %bb.bx

bb.bs:                                            ; preds = %bb.br
  %i.he = getelementptr inbounds nuw i8, ptr %i.gc, i64 6
  %i.hf = load i8, ptr %i.he, align 1, !noalias !1338, !noundef !4
  %i.hg = icmp eq i8 %i.hf, 80
  br i1 %i.hg, label %bb.bt, label %bb.bx

bb.bt:                                            ; preds = %bb.bs
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gc, i64 7
  %i.hi = load i8, ptr %i.hh, align 1, !noalias !1338, !noundef !4
  %i.hj = icmp eq i8 %i.hi, 69
  br i1 %i.hj, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.hl = load i8, ptr %i.hk, align 1, !noalias !1338, !noundef !4
  %i.hm = icmp eq i8 %i.hl, 50
  br i1 %i.hm, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gc, i64 9
  %i.ho = load i8, ptr %i.hn, align 1, !noalias !1338, !noundef !4
  %i.hp = icmp eq i8 %i.ho, 46
  br i1 %i.hp, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gc, i64 10
  %i.hr = load i8, ptr %i.hq, align 1, !noalias !1338, !noundef !4
  %i.hs = icmp eq i8 %i.hr, 48
  %spec.select.i.i.i.i.i = select i1 %i.hs, i8 1, i8 4
  br label %bb.bx

bb.bx:                                            ; preds = %bb.cw, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.cj, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bf
  %.sroa.0.0.i.i.i.i.i = phi i8 [ 3, %bb.cw ], [ 4, %bb.bf ], [ 2, %bb.cj ], [ 4, %bb.ct ], [ 4, %bb.cs ], [ 4, %bb.cr ], [ 4, %bb.cq ], [ 4, %bb.cp ], [ 4, %bb.co ], [ 4, %bb.cn ], [ 4, %bb.cm ], [ 4, %bb.cl ], [ 4, %bb.cg ], [ 4, %bb.cf ], [ 4, %bb.ce ], [ 4, %bb.cd ], [ 4, %bb.cc ], [ 4, %bb.cb ], [ 4, %bb.ca ], [ 4, %bb.bz ], [ 4, %bb.by ], [ %spec.select.i.i.i.i.i, %bb.bw ], [ 4, %bb.bv ], [ 4, %bb.bu ], [ 4, %bb.bt ], [ 4, %bb.bs ], [ 4, %bb.br ], [ 4, %bb.bq ], [ 4, %bb.bp ], [ 4, %bb.bo ], [ 4, %bb.bn ], [ 4, %bb.bm ], [ 4, %bb.bl ], [ 4, %bb.bk ]
  store i8 %.sroa.0.0.i.i.i.i.i, ptr %i.fg, align 8, !alias.scope !1335, !noalias !1336
  br label %bb.bj

bb.by:                                            ; preds = %bb.bm
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gc, i64 2
  %i.hu = load i8, ptr %i.ht, align 1, !noalias !1338, !noundef !4
  %i.hv = icmp eq i8 %i.hu, 80
  br i1 %i.hv, label %bb.bz, label %bb.bx

bb.bz:                                            ; preds = %bb.by
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gc, i64 3
  %i.hx = load i8, ptr %i.hw, align 1, !noalias !1338, !noundef !4
  %i.hy = icmp eq i8 %i.hx, 32
  br i1 %i.hy, label %bb.ca, label %bb.bx

bb.ca:                                            ; preds = %bb.bz
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.ia = load i8, ptr %i.hz, align 1, !noalias !1338, !noundef !4
  %i.ib = icmp eq i8 %i.ia, 68
  br i1 %i.ib, label %bb.cb, label %bb.bx

bb.cb:                                            ; preds = %bb.ca
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gc, i64 5
  %i.id = load i8, ptr %i.ic, align 1, !noalias !1338, !noundef !4
  %i.ie = icmp eq i8 %i.id, 97
  br i1 %i.ie, label %bb.cc, label %bb.bx

bb.cc:                                            ; preds = %bb.cb
  %i.if = getelementptr inbounds nuw i8, ptr %i.gc, i64 6
  %i.ig = load i8, ptr %i.if, align 1, !noalias !1338, !noundef !4
  %i.ih = icmp eq i8 %i.ig, 116
  br i1 %i.ih, label %bb.cd, label %bb.bx

bb.cd:                                            ; preds = %bb.cc
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gc, i64 7
  %i.ij = load i8, ptr %i.ii, align 1, !noalias !1338, !noundef !4
  %i.ik = icmp eq i8 %i.ij, 97
  br i1 %i.ik, label %bb.ce, label %bb.bx

bb.ce:                                            ; preds = %bb.cd
  %i.il = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.im = load i8, ptr %i.il, align 1, !noalias !1338, !noundef !4
  %i.in = icmp eq i8 %i.im, 88
  br i1 %i.in, label %bb.cf, label %bb.bx

bb.cf:                                            ; preds = %bb.ce
  %i.io = getelementptr inbounds nuw i8, ptr %i.gc, i64 9
  %i.ip = load i8, ptr %i.io, align 1, !noalias !1338, !noundef !4
  %i.iq = icmp eq i8 %i.ip, 77
  br i1 %i.iq, label %bb.cg, label %bb.bx

bb.cg:                                            ; preds = %bb.cf
  %i.ir = getelementptr inbounds nuw i8, ptr %i.gc, i64 10
  %i.is = load i8, ptr %i.ir, align 1, !noalias !1338, !noundef !4
  %i.it = icmp eq i8 %i.is, 80
  br i1 %i.it, label %bb.ch, label %bb.bx

bb.ch:                                            ; preds = %bb.cg
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.fh)
          to label %bb.cj unwind label %bb.ci, !noalias !1339

bb.ci:                                            ; preds = %bb.ch
  %i.iu = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %i.fh, align 8, !alias.scope !1335, !noalias !1336
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  store i64 0, ptr %i.fh, align 8, !alias.scope !1335, !noalias !1336
  store ptr inttoptr (i64 1 to ptr), ptr %.sink85.i.i.sroa.gep2.i.i.i, align 8, !alias.scope !1335, !noalias !1336
  store i64 0, ptr %.sink.i.i.sroa.gep3.i.i.i, align 8, !alias.scope !1335, !noalias !1336
  br label %bb.bx

end_hunk_0
