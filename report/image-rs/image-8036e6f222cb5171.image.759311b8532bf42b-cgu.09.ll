Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.09?download=true
inline.NumInlined: 1385
inline.NumDeleted: 492
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtNtCsa5QsYiPB8Gl_5image2io17image_reader_typeINtB2_11ImageReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE6decodeB6_:bb.a
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
  %i.ga = zext i8 %i.fz to i64
  %.sroa.031.0.i.i.i.i = select i1 %i.fy, i64 %i.ga, i64 0
  %i.gb = udiv i64 %i.fw, 3
  %.not64.i.i.i.i = icmp samesign ult i64 %.sroa.031.0.i.i.i.i, %i.gb
  br i1 %.not64.i.i.i.i, label %_RINvMs0_NtCsvKatKEpids_3gif6readerNtB6_13DecodeOptions9read_infoINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEECsa5QsYiPB8Gl_5image.exit.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store i8 0, ptr %i.fb, align 4, !alias.scope !1325, !noalias !1331
  br label %_RINvMs0_NtCsvKatKEpids_3gif6readerNtB6_13DecodeOptions9read_infoINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEECsa5QsYiPB8Gl_5image.exit.i.i

bb.be:                                            ; preds = %bb.ba
  %i.gc = trunc nuw i8 %.sroa.549.0.copyload.i.i.i.i to i1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1332)
  %i.gd = load ptr, ptr %i.fk, align 8, !alias.scope !1335, !noalias !1336, !nonnull !4, !noundef !4 ; 35 uses
  %i.ge = load i64, ptr %i.fl, align 8, !alias.scope !1335, !noalias !1336, !noundef !4 ; 15 uses
  %i.gf = load i8, ptr %i.fg, align 8, !range !279, !alias.scope !1335, !noalias !1336, !noundef !4
  switch i8 %i.gf, label %default.unreachable [
    i8 0, label %bb.bf
    i8 1, label %bb.bg
    i8 2, label %bb.bh
    i8 3, label %bb.bi
    i8 4, label %bb.bj
  ]

default.unreachable:                              ; preds = %bb.be
  unreachable

bb.bf:                                            ; preds = %bb.be
  %i.gg = icmp eq i64 %i.ge, 11
  br i1 %i.gg, label %bb.bk, label %bb.bx

bb.bg:                                            ; preds = %bb.be
  %.not36.i.i.i.i.i = icmp eq i64 %i.ge, 0
  br i1 %.not36.i.i.i.i.i, label %bb.cx, label %bb.cy

bb.bh:                                            ; preds = %bb.be
  %i.gh = load i64, ptr %i.fh, align 8, !range !79, !alias.scope !1335, !noalias !1336, !noundef !4
  %.not34.i.i.i.i.i = icmp eq i64 %i.gh, -1
  br i1 %.not34.i.i.i.i.i, label %bb.bj, label %bb.da

bb.bi:                                            ; preds = %bb.be
  %i.gi = load i64, ptr %i.fi, align 8, !range !79, !alias.scope !1335, !noalias !1336, !noundef !4
  %.not.i.i.i.i.i = icmp eq i64 %i.gi, -1
  br i1 %.not.i.i.i.i.i, label %bb.bj, label %bb.dk

bb.bj:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsa5QsYiPB8Gl_5image.exit50.i.i.i.i.i, %bb.cx, %bb.bx, %bb.bi, %bb.bh, %bb.be
  br i1 %i.gc, label %.noexc70.i.i.i.i, label %.backedge.i.i.i.i

bb.bk:                                            ; preds = %bb.bf
  %i.gj = load i8, ptr %i.gd, align 1, !noalias !1338, !noundef !4
  switch i8 %i.gj, label %bb.bx [
    i8 78, label %bb.bl
    i8 88, label %bb.bm
    i8 73, label %bb.bn
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gd, i64 1
  %i.gl = load i8, ptr %i.gk, align 1, !noalias !1338, !noundef !4
  %i.gm = icmp eq i8 %i.gl, 69
  br i1 %i.gm, label %bb.bo, label %bb.bx

bb.bm:                                            ; preds = %bb.bk
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gd, i64 1
  %i.go = load i8, ptr %i.gn, align 1, !noalias !1338, !noundef !4
  %i.gp = icmp eq i8 %i.go, 77
  br i1 %i.gp, label %bb.by, label %bb.bx

bb.bn:                                            ; preds = %bb.bk
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gd, i64 1
  %i.gr = load i8, ptr %i.gq, align 1, !noalias !1338, !noundef !4
  %i.gs = icmp eq i8 %i.gr, 67
  br i1 %i.gs, label %bb.cl, label %bb.bx

bb.bo:                                            ; preds = %bb.bl
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gd, i64 2
  %i.gu = load i8, ptr %i.gt, align 1, !noalias !1338, !noundef !4
  %i.gv = icmp eq i8 %i.gu, 84
  br i1 %i.gv, label %bb.bp, label %bb.bx

bb.bp:                                            ; preds = %bb.bo
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gd, i64 3
  %i.gx = load i8, ptr %i.gw, align 1, !noalias !1338, !noundef !4
  %i.gy = icmp eq i8 %i.gx, 83
  br i1 %i.gy, label %bb.bq, label %bb.bx

bb.bq:                                            ; preds = %bb.bp
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %i.ha = load i8, ptr %i.gz, align 1, !noalias !1338, !noundef !4
  %i.hb = icmp eq i8 %i.ha, 67
  br i1 %i.hb, label %bb.br, label %bb.bx

bb.br:                                            ; preds = %bb.bq
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gd, i64 5
  %i.hd = load i8, ptr %i.hc, align 1, !noalias !1338, !noundef !4
  %i.he = icmp eq i8 %i.hd, 65
  br i1 %i.he, label %bb.bs, label %bb.bx

bb.bs:                                            ; preds = %bb.br
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gd, i64 6
  %i.hg = load i8, ptr %i.hf, align 1, !noalias !1338, !noundef !4
  %i.hh = icmp eq i8 %i.hg, 80
  br i1 %i.hh, label %bb.bt, label %bb.bx

bb.bt:                                            ; preds = %bb.bs
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gd, i64 7
  %i.hj = load i8, ptr %i.hi, align 1, !noalias !1338, !noundef !4
  %i.hk = icmp eq i8 %i.hj, 69
  br i1 %i.hk, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.hm = load i8, ptr %i.hl, align 1, !noalias !1338, !noundef !4
  %i.hn = icmp eq i8 %i.hm, 50
  br i1 %i.hn, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gd, i64 9
  %i.hp = load i8, ptr %i.ho, align 1, !noalias !1338, !noundef !4
  %i.hq = icmp eq i8 %i.hp, 46
  br i1 %i.hq, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gd, i64 10
  %i.hs = load i8, ptr %i.hr, align 1, !noalias !1338, !noundef !4
  %i.ht = icmp eq i8 %i.hs, 48
  %spec.select.i.i.i.i.i = select i1 %i.ht, i8 1, i8 4
  br label %bb.bx

bb.bx:                                            ; preds = %bb.cw, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.cj, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bf
  %.sroa.0.0.i.i.i.i.i = phi i8 [ 3, %bb.cw ], [ 4, %bb.bf ], [ 2, %bb.cj ], [ 4, %bb.ct ], [ 4, %bb.cs ], [ 4, %bb.cr ], [ 4, %bb.cq ], [ 4, %bb.cp ], [ 4, %bb.co ], [ 4, %bb.cn ], [ 4, %bb.cm ], [ 4, %bb.cl ], [ 4, %bb.cg ], [ 4, %bb.cf ], [ 4, %bb.ce ], [ 4, %bb.cd ], [ 4, %bb.cc ], [ 4, %bb.cb ], [ 4, %bb.ca ], [ 4, %bb.bz ], [ 4, %bb.by ], [ %spec.select.i.i.i.i.i, %bb.bw ], [ 4, %bb.bv ], [ 4, %bb.bu ], [ 4, %bb.bt ], [ 4, %bb.bs ], [ 4, %bb.br ], [ 4, %bb.bq ], [ 4, %bb.bp ], [ 4, %bb.bo ], [ 4, %bb.bn ], [ 4, %bb.bm ], [ 4, %bb.bl ], [ 4, %bb.bk ]
  store i8 %.sroa.0.0.i.i.i.i.i, ptr %i.fg, align 8, !alias.scope !1335, !noalias !1336
  br label %bb.bj

bb.by:                                            ; preds = %bb.bm
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gd, i64 2
  %i.hv = load i8, ptr %i.hu, align 1, !noalias !1338, !noundef !4
  %i.hw = icmp eq i8 %i.hv, 80
  br i1 %i.hw, label %bb.bz, label %bb.bx

bb.bz:                                            ; preds = %bb.by
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gd, i64 3
  %i.hy = load i8, ptr %i.hx, align 1, !noalias !1338, !noundef !4
  %i.hz = icmp eq i8 %i.hy, 32
  br i1 %i.hz, label %bb.ca, label %bb.bx

bb.ca:                                            ; preds = %bb.bz
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %i.ib = load i8, ptr %i.ia, align 1, !noalias !1338, !noundef !4
  %i.ic = icmp eq i8 %i.ib, 68
  br i1 %i.ic, label %bb.cb, label %bb.bx

bb.cb:                                            ; preds = %bb.ca
  %i.id = getelementptr inbounds nuw i8, ptr %i.gd, i64 5
  %i.ie = load i8, ptr %i.id, align 1, !noalias !1338, !noundef !4
  %i.if = icmp eq i8 %i.ie, 97
  br i1 %i.if, label %bb.cc, label %bb.bx

bb.cc:                                            ; preds = %bb.cb
  %i.ig = getelementptr inbounds nuw i8, ptr %i.gd, i64 6
  %i.ih = load i8, ptr %i.ig, align 1, !noalias !1338, !noundef !4
  %i.ii = icmp eq i8 %i.ih, 116
  br i1 %i.ii, label %bb.cd, label %bb.bx

bb.cd:                                            ; preds = %bb.cc
  %i.ij = getelementptr inbounds nuw i8, ptr %i.gd, i64 7
  %i.ik = load i8, ptr %i.ij, align 1, !noalias !1338, !noundef !4
  %i.il = icmp eq i8 %i.ik, 97
  br i1 %i.il, label %bb.ce, label %bb.bx

bb.ce:                                            ; preds = %bb.cd
  %i.im = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.in = load i8, ptr %i.im, align 1, !noalias !1338, !noundef !4
  %i.io = icmp eq i8 %i.in, 88
  br i1 %i.io, label %bb.cf, label %bb.bx

bb.cf:                                            ; preds = %bb.ce
  %i.ip = getelementptr inbounds nuw i8, ptr %i.gd, i64 9
  %i.iq = load i8, ptr %i.ip, align 1, !noalias !1338, !noundef !4
  %i.ir = icmp eq i8 %i.iq, 77
  br i1 %i.ir, label %bb.cg, label %bb.bx

bb.cg:                                            ; preds = %bb.cf
  %i.is = getelementptr inbounds nuw i8, ptr %i.gd, i64 10
  %i.it = load i8, ptr %i.is, align 1, !noalias !1338, !noundef !4
  %i.iu = icmp eq i8 %i.it, 80
  br i1 %i.iu, label %bb.ch, label %bb.bx

bb.ch:                                            ; preds = %bb.cg
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.fh)
          to label %bb.cj unwind label %bb.ci, !noalias !1339

bb.ci:                                            ; preds = %bb.ch
  %i.iv = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %i.fh, align 8, !alias.scope !1335, !noalias !1336
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  store i64 0, ptr %i.fh, align 8, !alias.scope !1335, !noalias !1336
  store ptr inttoptr (i64 1 to ptr), ptr %.sink85.i.i.sroa.gep2.i.i.i, align 8, !alias.scope !1335, !noalias !1336
  store i64 0, ptr %.sink.i.i.sroa.gep3.i.i.i, align 8, !alias.scope !1335, !noalias !1336
  br label %bb.bx

bb.ck:                                            ; preds = %bb.cv, %bb.ci
  %.sink85.i.i.sroa.phi.i.i.i = phi ptr [ %.sink85.i.i.sroa.gep.i.i.i, %bb.cv ], [ %.sink85.i.i.sroa.gep2.i.i.i, %bb.ci ]
  %.sink.i.i.sroa.phi.i.i.i = phi ptr [ %.sink.i.i.sroa.gep.i.i.i, %bb.cv ], [ %.sink.i.i.sroa.gep3.i.i.i, %bb.ci ]
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.jx, %bb.cv ], [ %i.iv, %bb.ci ]
  store ptr inttoptr (i64 1 to ptr), ptr %.sink85.i.i.sroa.phi.i.i.i, align 8, !alias.scope !1335, !noalias !1336
  store i64 0, ptr %.sink.i.i.sroa.phi.i.i.i, align 8, !alias.scope !1335, !noalias !1336
  br label %.body.i.i.i.i

bb.cl:                                            ; preds = %bb.bn
  %i.iw = getelementptr inbounds nuw i8, ptr %i.gd, i64 2
  %i.ix = load i8, ptr %i.iw, align 1, !noalias !1338, !noundef !4
  %i.iy = icmp eq i8 %i.ix, 67
  br i1 %i.iy, label %bb.cm, label %bb.bx

bb.cm:                                            ; preds = %bb.cl
  %i.iz = getelementptr inbounds nuw i8, ptr %i.gd, i64 3
  %i.ja = load i8, ptr %i.iz, align 1, !noalias !1338, !noundef !4
  %i.jb = icmp eq i8 %i.ja, 82
  br i1 %i.jb, label %bb.cn, label %bb.bx

bb.cn:                                            ; preds = %bb.cm
  %i.jc = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %i.jd = load i8, ptr %i.jc, align 1, !noalias !1338, !noundef !4
  %i.je = icmp eq i8 %i.jd, 71
  br i1 %i.je, label %bb.co, label %bb.bx

bb.co:                                            ; preds = %bb.cn
  %i.jf = getelementptr inbounds nuw i8, ptr %i.gd, i64 5
  %i.jg = load i8, ptr %i.jf, align 1, !noalias !1338, !noundef !4
  %i.jh = icmp eq i8 %i.jg, 66
  br i1 %i.jh, label %bb.cp, label %bb.bx

bb.cp:                                            ; preds = %bb.co
  %i.ji = getelementptr inbounds nuw i8, ptr %i.gd, i64 6
  %i.jj = load i8, ptr %i.ji, align 1, !noalias !1338, !noundef !4
  %i.jk = icmp eq i8 %i.jj, 71
  br i1 %i.jk, label %bb.cq, label %bb.bx

bb.cq:                                            ; preds = %bb.cp
  %i.jl = getelementptr inbounds nuw i8, ptr %i.gd, i64 7
  %i.jm = load i8, ptr %i.jl, align 1, !noalias !1338, !noundef !4
  %i.jn = icmp eq i8 %i.jm, 49
  br i1 %i.jn, label %bb.cr, label %bb.bx

bb.cr:                                            ; preds = %bb.cq
  %i.jo = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.jp = load i8, ptr %i.jo, align 1, !noalias !1338, !noundef !4
  %i.jq = icmp eq i8 %i.jp, 48
  br i1 %i.jq, label %bb.cs, label %bb.bx

bb.cs:                                            ; preds = %bb.cr
  %i.jr = getelementptr inbounds nuw i8, ptr %i.gd, i64 9
  %i.js = load i8, ptr %i.jr, align 1, !noalias !1338, !noundef !4
  %i.jt = icmp eq i8 %i.js, 49
  br i1 %i.jt, label %bb.ct, label %bb.bx

bb.ct:                                            ; preds = %bb.cs
  %i.ju = getelementptr inbounds nuw i8, ptr %i.gd, i64 10
  %i.jv = load i8, ptr %i.ju, align 1, !noalias !1338, !noundef !4
  %i.jw = icmp eq i8 %i.jv, 50
  br i1 %i.jw, label %bb.cu, label %bb.bx

bb.cu:                                            ; preds = %bb.ct
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.fi)
          to label %bb.cw unwind label %bb.cv, !noalias !1339

bb.cv:                                            ; preds = %bb.cu
  %i.jx = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %i.fi, align 8, !alias.scope !1335, !noalias !1336
  br label %bb.ck

bb.cw:                                            ; preds = %bb.cu
  store i64 0, ptr %i.fi, align 8, !alias.scope !1335, !noalias !1336
  store ptr inttoptr (i64 1 to ptr), ptr %.sink85.i.i.sroa.gep.i.i.i, align 8, !alias.scope !1335, !noalias !1336
  store i64 0, ptr %.sink.i.i.sroa.gep.i.i.i, align 8, !alias.scope !1335, !noalias !1336
  br label %bb.bx

bb.cx:                                            ; preds = %bb.cz, %bb.cy, %bb.bg
  store i8 4, ptr %i.fg, align 8, !alias.scope !1335, !noalias !1336
  br label %bb.bj

bb.cy:                                            ; preds = %bb.bg
  %i.jy = load i8, ptr %i.gd, align 1, !noalias !1338, !noundef !4
  %i.jz = icmp eq i8 %i.jy, 1
  %i.ka = icmp eq i64 %i.ge, 3
  %or.cond.i.i.i.i.i = and i1 %i.ka, %i.jz
  br i1 %or.cond.i.i.i.i.i, label %bb.cz, label %bb.cx

bb.cz:                                            ; preds = %bb.cy
  %i.kb = getelementptr inbounds nuw i8, ptr %i.gd, i64 1
  %.sroa.026.0.copyload.i.i.i.i.i = load i16, ptr %i.kb, align 1, !noalias !1338 ; 2 uses
  %i.kc = icmp eq i16 %.sroa.026.0.copyload.i.i.i.i.i, 0
  %..i.i.i.i.i = zext i1 %i.kc to i16
  store i16 %..i.i.i.i.i, ptr %i.fc, align 8, !alias.scope !1335, !noalias !1336
  store i16 %.sroa.026.0.copyload.i.i.i.i.i, ptr %i.fd, align 2, !alias.scope !1335, !noalias !1336
  br label %bb.cx

bb.da:                                            ; preds = %bb.bh
  %i.kd = add i64 %i.ge, 1                        ; 2 uses
  %i.ke = load i64, ptr %.sink.i.i.sroa.gep3.i.i.i, align 8, !alias.scope !1340, !noalias !1343, !noundef !4 ; 4 uses
  %i.kf = icmp sgt i64 %i.ke, -1
  call void @llvm.assume(i1 %i.kf)
  %i.kg = add i64 %i.ke, %i.kd                    ; 2 uses
  %i.kh = icmp ult i64 %i.kg, %i.ke
  br i1 %i.kh, label %_RINvMs0_NtCsvKatKEpids_3gif6readerNtB6_13DecodeOptions9read_infoINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsvKatKEpids_3gif6reader7decoder13DecodingErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i, !prof !10

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsvKatKEpids_3gif6reader7decoder13DecodingErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i: ; preds = %bb.da
  %.val38.i.i.i.i.i = load i64, ptr %i.fa, align 8, !alias.scope !1335, !noalias !1336 ; 2 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %.val38.i.i.i.i.i, 0
  %.not57.i.i.i.i.i.i = icmp ugt i64 %i.kg, %.val38.i.i.i.i.i
  %or.cond.i.i.i.i.i.i = and i1 %.not.i.i.i.i.i.i, %.not57.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_RINvMs0_NtCsvKatKEpids_3gif6readerNtB6_13DecodeOptions9read_infoINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i.i, label %_RNvMNtCsvKatKEpids_3gif6readerNtB2_11MemoryLimit11try_reserve.exit.i.i.i.i.i

_RNvMNtCsvKatKEpids_3gif6readerNtB2_11MemoryLimit11try_reserve.exit.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsvKatKEpids_3gif6reader7decoder13DecodingErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i
  %i.ki = invoke { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fh, i64 noundef %i.ke, i64 noundef %i.kd, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !1328

.noexc.i.i.i.i:                                   ; preds = %_RNvMNtCsvKatKEpids_3gif6readerNtB2_11MemoryLimit11try_reserve.exit.i.i.i.i.i
  %i.kj = extractvalue { i64, i64 } %i.ki, 0
  %.not58.i.i.i.i.i.i = icmp eq i64 %i.kj, -1
  br i1 %.not58.i.i.i.i.i.i, label %bb.db, label %_RINvMs0_NtCsvKatKEpids_3gif6readerNtB6_13DecodeOptions9read_infoINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEECsa5QsYiPB8Gl_5image.exit.thread.i.i

bb.db:                                            ; preds = %.noexc.i.i.i.i
  %i.kk = trunc i64 %i.ge to i8
  %i.kl = load i64, ptr %.sink.i.i.sroa.gep3.i.i.i, align 8, !alias.scope !1345, !noalias !1336, !noundef !4 ; 3 uses
  %i.km = load i64, ptr %i.fh, align 8, !range !77, !alias.scope !1345, !noalias !1336, !noundef !4
end_hunk_0
begin_hunk_1_@_RNvNtCsa5QsYiPB8Gl_5image5hooks30register_format_detection_hook:bb.a
  br i1 %i.l, label %.noexc, label %bb.d, !prof !76

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync6rwlock5futexNtB2_6RwLock15write_contended(ptr noundef nonnull align 4 @_RNvNtCsa5QsYiPB8Gl_5image5hooks18GUESS_FORMAT_HOOKS)
          to label %.noexc unwind label %.thread24

.noexc:                                           ; preds = %bb.d, %bb.c
  %i.m = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1572
  %i.n = and i64 %i.m, 9223372036854775807
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag5guard.exit.i, label %bb.e, !prof !76

bb.e:                                             ; preds = %.noexc
  %i.p = invoke noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #32
          to label %.noexc10 unwind label %.thread24

.noexc10:                                         ; preds = %bb.e
  %i.q = xor i1 %i.p, true
  %i.r = zext i1 %i.q to i8
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag5guard.exit.i

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag5guard.exit.i: ; preds = %.noexc10, %.noexc
  %.sroa.01.0.i.i = phi i8 [ %i.r, %.noexc10 ], [ 0, %.noexc ]
  %i.s = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsa5QsYiPB8Gl_5image5hooks18GUESS_FORMAT_HOOKS, i64 8) monotonic, align 8, !noalias !1572
  %.not.i.i = icmp ne i8 %i.s, 0
  invoke void @_RINvNtNtCsaKJjC64KgbL_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_6rwlock16RwLockWriteGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecTRShB22_NtNtNtB6_3ffi6os_str8OsStringEEENCNvMse_B10_BX_3new0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i1 noundef zeroext %.not.i.i, i8 noundef %.sroa.01.0.i.i, ptr noundef nonnull align 8 @_RNvNtCsa5QsYiPB8Gl_5image5hooks18GUESS_FORMAT_HOOKS)
          to label %_RNvMs9_NtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlockINtB5_6RwLockINtNtCs4wP2HXfJTCR_5alloc3vec3VecTRShB1x_NtNtNtBb_3ffi6os_str8OsStringEEE5writeCsa5QsYiPB8Gl_5image.exit unwind label %.thread24

.thread24:                                        ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag5guard.exit.i, %bb.d, %bb.e
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread20

bb.f:                                             ; preds = %bb.o
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RNvMs9_NtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlockINtB5_6RwLockINtNtCs4wP2HXfJTCR_5alloc3vec3VecTRShB1x_NtNtNtBb_3ffi6os_str8OsStringEEE5writeCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag5guard.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1575)
  %i.t = load i64, ptr %i.c, align 8, !range !45, !alias.scope !1575, !noundef !4
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.g, label %bb.k, !prof !10

bb.g:                                             ; preds = %_RNvMs9_NtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlockINtB5_6RwLockINtNtCs4wP2HXfJTCR_5alloc3vec3VecTRShB1x_NtNtNtBb_3ffi6os_str8OsStringEEE5writeCsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1575
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !1575, !nonnull !4, !align !394, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.y = load i8, ptr %i.x, align 8, !range !5, !alias.scope !1575, !noundef !4
  store ptr %i.w, ptr %i.a, align 8, !noalias !1575
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.y, ptr %i.z, align 8, !noalias !1575
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @27, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #29
          to label %bb.i unwind label %bb.h, !noalias !1575

bb.h:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsi_NtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecTRShB1I_NtNtNtBb_3ffi6os_str8OsStringEEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.thread20 unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #31, !noalias !1575
  unreachable

bb.k:                                             ; preds = %_RNvMs9_NtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlockINtB5_6RwLockINtNtCs4wP2HXfJTCR_5alloc3vec3VecTRShB1x_NtNtNtBb_3ffi6os_str8OsStringEEE5writeCsa5QsYiPB8Gl_5image.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !1575, !nonnull !4, !align !394, !noundef !4 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.af = load i8, ptr %i.ae, align 8, !range !5, !alias.scope !1575, !noundef !4
  store ptr %i.ad, ptr %i.d, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 %i.af, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %3, null                    ; 2 uses
  %spec.select = select i1 %.not, i64 0, i64 %4
  %spec.select9 = select i1 %.not, ptr inttoptr (i64 1 to ptr), ptr %3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  store ptr %1, ptr %i.b, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %spec.select9, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %spec.select, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !1578, !noalias !1581, !noundef !4 ; 3 uses
  %i.ao = load i64, ptr %i.ah, align 8, !range !77, !alias.scope !1578, !noalias !1581, !noundef !4
  %i.ap = icmp eq i64 %i.an, %i.ao
  br i1 %i.ap, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTRShBN_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEE8grow_oneCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %bb.o unwind label %bb.m, !noalias !1581

bb.m:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTRShBC_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b) #30
          to label %.body13 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #31
  unreachable

.body13:                                          ; preds = %bb.m
  invoke void @_RNvXsi_NtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecTRShB1I_NtNtNtBb_3ffi6os_str8OsStringEEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %.thread unwind label %bb.r

bb.o:                                             ; preds = %bb.l, %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !1578, !noalias !1581, !nonnull !4, !noundef !4
  %i.au = getelementptr inbounds nuw [56 x i8], ptr %i.at, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.au, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  %i.av = add i64 %i.an, 1
  store i64 %i.av, ptr %i.am, align 8, !alias.scope !1578, !noalias !1581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsi_NtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecTRShB1I_NtNtNtBb_3ffi6os_str8OsStringEEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecTRShB2b_NtNtNtBK_3ffi6os_str8OsStringEEEECsa5QsYiPB8Gl_5image.exit17 unwind label %bb.f

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecTRShB2b_NtNtNtBK_3ffi6os_str8OsStringEEEECsa5QsYiPB8Gl_5image.exit17: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsa5QsYiPB8Gl_5image.exit unwind label %bb.p

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecTRShB2b_NtNtNtBK_3ffi6os_str8OsStringEEEECsa5QsYiPB8Gl_5image.exit17
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %.thread, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.aw, %bb.p ], [ %.pn.pn, %.thread ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock16RwLockWriteGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecTRShB2b_NtNtNtBK_3ffi6os_str8OsStringEEEECsa5QsYiPB8Gl_5image.exit17
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void

bb.r:                                             ; preds = %.body13, %.thread20, %.thread
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #31
  unreachable

.thread20:                                        ; preds = %bb.h, %.thread24
  %eh.lpad-body23 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread24 ], [ %i.aa, %bb.h ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #30
          to label %.thread unwind label %bb.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i32, i32 } @_RNvNtCsa5QsYiPB8Gl_5image8imageops14overlay_bounds(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 %4)
  %..i = tail call noundef i32 @llvm.umin.i32(i32 %0, i32 %i.a)
  %i.b = tail call i32 @llvm.usub.sat.i32(i32 %..i, i32 %4)
  %i.c = tail call i32 @llvm.uadd.sat.i32(i32 %3, i32 %5)
  %..i1 = tail call noundef i32 @llvm.umin.i32(i32 %1, i32 %i.c)
  %i.d = tail call i32 @llvm.usub.sat.i32(i32 %..i1, i32 %5)
  %i.e = insertvalue { i32, i32 } poison, i32 %i.b, 0
  %i.f = insertvalue { i32, i32 } %i.e, i32 %i.d, 1
  ret { i32, i32 } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvNtCsa5QsYiPB8Gl_5image8imageops18overlay_bounds_ext(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 4 captures(none) dereferenceable(24) initializes((0, 24)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i64 noundef %6) unnamed_addr #8 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 3 uses
  %i.b = icmp sgt i64 %5, %i.a
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %2 to i64                       ; 3 uses
  %i.d = icmp sgt i64 %6, %i.c
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.e, %bb.d, %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.e = zext i32 %3 to i64                       ; 2 uses
  %i.f = add nsw i64 %5, %i.e                     ; 2 uses
  %i.g = icmp slt i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = zext i32 %4 to i64                       ; 2 uses
  %i.i = add nsw i64 %6, %i.h                     ; 2 uses
  %i.j = icmp slt i64 %i.i, 1
  br i1 %i.j, label %bb.c, label %bb.f

bb.f:                                             ; preds = %bb.e
  %..i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 range(i64 0, 4294967296) %i.a)
  %i.k = trunc nuw i64 %..i to i32
  %..i7 = tail call i64 @llvm.umin.i64(i64 %i.i, i64 range(i64 0, 4294967296) %i.c)
  %i.l = trunc nuw i64 %..i7 to i32
  %i.m = icmp slt i64 %5, 0
  %..i9 = tail call i64 @llvm.umin.i64(i64 %5, i64 range(i64 0, 4294967296) %i.a)
  %i.n = trunc nuw i64 %..i9 to i32
  %i.o = select i1 %i.m, i32 0, i32 %i.n          ; 2 uses
  %i.p = icmp slt i64 %6, 0
  %..i11 = tail call i64 @llvm.umin.i64(i64 %6, i64 range(i64 0, 4294967296) %i.c)
  %i.q = trunc nuw i64 %..i11 to i32
  %i.r = select i1 %i.p, i32 0, i32 %i.q          ; 2 uses
  %i.s = sub i32 %i.k, %i.o
  %i.t = sub i32 %i.l, %i.r
  %i.u = icmp eq i64 %5, -9223372036854775808
  br i1 %i.u, label %.thread, label %bb.g, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.v = sub nsw i64 0, %5
  %i.w = icmp sgt i64 %5, 0
  %..i13 = tail call i64 @llvm.umin.i64(i64 %i.v, i64 range(i64 0, 4294967296) %i.e)
  %7 = trunc nuw i64 %..i13 to i32
  %8 = select i1 %i.w, i32 0, i32 %7
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.f
  %9 = phi i32 [ %3, %bb.f ], [ %8, %bb.g ]
  %i.x = icmp eq i64 %6, -9223372036854775808
  br i1 %i.x, label %.thread19, label %bb.h, !prof !10

bb.h:                                             ; preds = %.thread
  %i.y = sub nsw i64 0, %6
  %i.z = icmp sgt i64 %6, 0
  %..i15 = tail call i64 @llvm.umin.i64(i64 %i.y, i64 range(i64 0, 4294967296) %i.h)
  %10 = trunc nuw i64 %..i15 to i32
  %11 = select i1 %i.z, i32 0, i32 %10
  br label %.thread19

.thread19:                                        ; preds = %bb.h, %.thread
  %12 = phi i32 [ %4, %.thread ], [ %11, %bb.h ]
  store i32 %i.o, ptr %0, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.r, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %9, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %12, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.s, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.t, ptr %i.ae, align 4
  br label %bb.i

bb.i:                                             ; preds = %.thread19, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7encoder18written_pixel_info(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, i8 noundef range(i8 0, 29) %1, i8 %2, ptr noalias nofree noundef readonly captures(address_is_null) %3, i64 %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  switch i8 %1, label %bb.b [
    i8 14, label %bb.c
    i8 15, label %bb.d
    i8 16, label %bb.g
    i8 17, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 8, ptr %.sroa.428.0..sroa_idx, align 1
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 4, ptr %.sroa.630.0..sroa_idx, align 8
  %.sroa.630.sroa.4.0..sroa.630.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %1, ptr %.sroa.630.sroa.4.0..sroa.630.0..sroa_idx.sroa_idx, align 1
  %.sroa.630.sroa.5.0..sroa.630.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %2, ptr %.sroa.630.sroa.5.0..sroa.630.0..sroa_idx.sroa_idx, align 2
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %.not75 = icmp eq ptr %3, null
  %. = select i1 %.not75, i64 256, i64 %4         ; 2 uses
  %i.b = icmp ugt i64 %., 4294967295
  br i1 %i.b, label %bb.h, label %bb.f

bb.d:                                             ; preds = %bb.a
  %.not = icmp eq ptr %3, null
  %.76 = select i1 %.not, i64 256, i64 %4         ; 2 uses
  %i.c = icmp ugt i64 %.76, 4294967295
  br i1 %i.c, label %bb.h, label %bb.i

bb.e:                                             ; preds = %bb.a
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.d = trunc nuw i64 %. to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.i, %bb.f, %bb.e
  %.sroa.6.0 = phi i32 [ %i.d, %bb.f ], [ %i.h, %bb.i ], [ 0, %bb.e ], [ 0, %bb.a ]
  %i.e = phi <2 x i32> [ <i32 40, i32 1>, %bb.f ], [ <i32 40, i32 1>, %bb.i ], [ <i32 108, i32 4>, %bb.e ], [ <i32 40, i32 3>, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store <2 x i32> %i.e, ptr %i.f, align 4
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.6.0, ptr %.sroa.557.0..sroa_idx, align 4
  store i8 -1, ptr %0, align 8
  br label %bb.j

bb.h:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 8, ptr %i.g, align 1
  store i8 0, ptr %i.a, align 8
  %.sroa.672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RINvMs0_NtCsa5QsYiPB8Gl_5image5errorNtB6_13EncodingError3newReEB8_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %.sroa.672.0..sroa_idx, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 40)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 5, ptr %0, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.h = trunc nuw i64 %.76 to i32
  br label %bb.g

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCsa5QsYiPB8Gl_5image6codecs4jpeg7encoder17build_jfif_header(ptr noalias nofree noundef align 8 dereferenceable(24) initializes((16, 24)) %0, i48 %1) unnamed_addr #0 {
bb.a:
  %.sroa.01.0.extract.trunc = trunc i48 %1 to i16
  %.sroa.01.2.extract.shift = lshr i48 %1, 16
  %.sroa.01.2.extract.trunc = trunc i48 %.sroa.01.2.extract.shift to i16
  %.sroa.01.4.extract.shift = lshr i48 %1, 32
  %.sroa.01.4.extract.trunc = trunc i48 %.sroa.01.4.extract.shift to i8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 16 uses
  store i64 0, ptr %i.a, align 8
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 4)
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1583, !noundef !4 ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1583, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  store i32 1179207242, ptr %i.f, align 1
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !1583
  %i.g = add i64 %.pre.i, 4
  store i64 %i.g, ptr %i.a, align 8, !alias.scope !1583
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 4)
  %i.h = load i64, ptr %i.a, align 8, !alias.scope !1586, !noundef !4 ; 2 uses
  %i.i = icmp sgt i64 %i.h, -1
  tail call void @llvm.assume(i1 %i.i)
  %i.j = load ptr, ptr %i.d, align 8, !alias.scope !1586, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h ; 4 uses
  store i8 0, ptr %i.k, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 2, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  store i8 %.sroa.01.4.extract.trunc, ptr %.sroa.6.0..sroa_idx, align 1
  %.pre.i2 = load i64, ptr %i.a, align 8, !alias.scope !1586
  %i.l = add i64 %.pre.i2, 4
  store i64 %i.l, ptr %i.a, align 8, !alias.scope !1586
  %i.m = tail call i16 @llvm.bswap.i16(i16 %.sroa.01.0.extract.trunc)
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 2)
  %i.n = load i64, ptr %i.a, align 8, !alias.scope !1589, !noundef !4 ; 2 uses
  %i.o = icmp sgt i64 %i.n, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = load ptr, ptr %i.d, align 8, !alias.scope !1589, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i16 %i.m, ptr %i.q, align 1
  %.pre.i3 = load i64, ptr %i.a, align 8, !alias.scope !1589
  %i.r = add i64 %.pre.i3, 2
  store i64 %i.r, ptr %i.a, align 8, !alias.scope !1589
  %i.s = tail call i16 @llvm.bswap.i16(i16 %.sroa.01.2.extract.trunc)
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 2)
  %i.t = load i64, ptr %i.a, align 8, !alias.scope !1592, !noundef !4 ; 2 uses
  %i.u = icmp sgt i64 %i.t, -1
  tail call void @llvm.assume(i1 %i.u)
  %i.v = load ptr, ptr %i.d, align 8, !alias.scope !1592, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i16 %i.s, ptr %i.w, align 1
  %.pre.i4 = load i64, ptr %i.a, align 8, !alias.scope !1592
  %i.x = add i64 %.pre.i4, 2
  store i64 %i.x, ptr %i.a, align 8, !alias.scope !1592
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 2)
  %i.y = load i64, ptr %i.a, align 8, !alias.scope !1595, !noundef !4 ; 2 uses
  %i.z = icmp sgt i64 %i.y, -1
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = load ptr, ptr %i.d, align 8, !alias.scope !1595, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i16 0, ptr %i.ab, align 1
  %.pre.i5 = load i64, ptr %i.a, align 8, !alias.scope !1595
  %i.ac = add i64 %.pre.i5, 2
  store i64 %i.ac, ptr %i.a, align 8, !alias.scope !1595
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCsa5QsYiPB8Gl_5image6codecs4jpeg7encoder17build_scan_header(ptr noalias nofree noundef align 8 dereferenceable(24) initializes((16, 24)) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %1, i64 noundef range(i64 0, 768614336404564651) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store i64 0, ptr %i.a, align 8
  %i.b = trunc i64 %2 to i8
  %i.c = load i64, ptr %0, align 8, !range !77, !alias.scope !1598, !noundef !4
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #32
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1598, !nonnull !4, !noundef !4
  store i8 %i.b, ptr %i.f, align 1
  store i64 1, ptr %i.a, align 8, !alias.scope !1598
  %.idx = mul nuw nsw i64 %2, 12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit, %.lr.ph
  %.sroa.0.03 = phi ptr [ %i.i, %.lr.ph ], [ %1, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsa5QsYiPB8Gl_5image.exit ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 12 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 4
  %i.k = load i8, ptr %i.j, align 4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8
  %i.m = load i8, ptr %i.l, align 4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 9
  %i.o = load i8, ptr %i.n, align 1, !noundef !4
  %i.p = shl i8 %i.m, 4
  %i.q = or i8 %i.p, %i.o
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 2)
  %i.r = load i64, ptr %i.a, align 8, !alias.scope !1601, !noundef !4 ; 2 uses
  %i.s = icmp sgt i64 %i.r, -1
  tail call void @llvm.assume(i1 %i.s)
  %i.t = load ptr, ptr %i.e, align 8, !alias.scope !1601, !nonnull !4, !noundef !4
end_hunk_1
