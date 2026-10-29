Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.10?download=true
inline.NumInlined: 917
inline.NumDeleted: 432
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB5_10BmpDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE15read_image_dataBb_:bb.a
  br label %bb.ae

bb.ab:                                            ; preds = %bb.a
  tail call fastcc void @_RNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB5_10BmpDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE13read_rle_dataBb_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(120) %1, ptr noalias nofree noundef nonnull %2, i64 noundef %3, i8 noundef 6)
  br label %bb.ae

bb.ac:                                            ; preds = %bb.a
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dl = load i32, ptr %i.dk, align 8, !range !30, !noundef !5
  %i.dm = trunc nuw i32 %i.dl to i1
  br i1 %i.dm, label %bb.af, label %bb.ag

bb.ad:                                            ; preds = %bb.a
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.do = load i32, ptr %i.dn, align 8, !range !30, !noundef !5
  %i.dp = trunc nuw i32 %i.do to i1
  br i1 %i.dp, label %bb.ah, label %bb.ai

bb.ae:                                            ; preds = %bb.bb, %bb.ba, %_RNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB5_10BmpDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE22read_32_bit_pixel_dataBb_.exit, %bb.ai, %bb.ag, %bb.af, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %_RNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB5_10BmpDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE26read_palettized_pixel_dataBb_.exit
  ret void

bb.af:                                            ; preds = %bb.ac
  tail call fastcc void @_RNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB5_10BmpDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE22read_16_bit_pixel_dataBb_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(120) %1, ptr noalias nofree noundef nonnull %2, i64 noundef %3, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(32) null)
  br label %bb.ae

bb.ag:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 16, ptr %i.dq, align 4
  store i8 4, ptr %i.o, align 4
  call void @_RNvXs0_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderNtNtBb_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB5_12DecoderErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ad
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !noundef !5
  switch i32 %i.ds, label %bb.aj [
    i32 24, label %bb.ay
    i32 16, label %bb.az
  ]

bb.ai:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 32, ptr %i.dt, align 4
  store i8 4, ptr %i.n, align 4
  call void @_RNvXs0_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderNtNtBb_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB5_12DecoderErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ae

bb.aj:                                            ; preds = %bb.ah, %bb.ay, %bb.az
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1114
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 106
  %i.dv = load i8, ptr %i.du, align 2, !range !24, !alias.scope !1113, !noundef !5
  %i.dw = trunc nuw i8 %i.dv to i1
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 109
  %i.dy = load i8, ptr %i.dx, align 1, !range !24, !alias.scope !1113
  %i.dz = trunc nuw i8 %i.dy to i1
  %..i66 = select i1 %i.dz, i64 4, i64 3
  %.sink.i67 = select i1 %i.dw, i64 1, i64 %..i66 ; 2 uses
  store i64 %.sink.i67, ptr %i.d, align 8, !noalias !1114
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ec = load i64, ptr %i.eb, align 8, !alias.scope !1113, !noundef !5
  %i.ed = tail call { i64, ptr } @_RNvXs4_NtNtCsj6eKBz9Db1c_4core2io6cursorINtB5_6CursorRShENtNtB7_4seek4Seek4seekCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ea, i64 noundef 0, i64 noundef %i.ec), !noalias !1115 ; 2 uses
  %i.ee = extractvalue { i64, ptr } %i.ed, 0
  %i.ef = trunc nuw i64 %i.ee to i1
  br i1 %i.ef, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.eg = extractvalue { i64, ptr } %i.ed, 1
  br label %bb.ax

bb.al:                                            ; preds = %bb.aj
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ei = load i32, ptr %i.eh, align 4, !alias.scope !1113, !noundef !5
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ek = load i32, ptr %i.ej, align 8, !alias.scope !1113, !noundef !5
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 107
  %i.em = load i8, ptr %i.el, align 1, !range !24, !alias.scope !1113, !noundef !5
  %i.en = trunc nuw i8 %i.em to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1114
  store ptr %i.d, ptr %i.c, align 8, !noalias !1114
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ea, ptr %i.eo, align 8, !noalias !1114
  %i.ep = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.dr, ptr %i.ep, align 8, !noalias !1114
  %i.eq = sext i32 %i.ei to i64
  %i.er = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sink.i67, i64 %i.eq) ; 2 uses
  %i.es = extractvalue { i64, i1 } %i.er, 0       ; 5 uses
  %i.et = extractvalue { i64, i1 } %i.er, 1
  br i1 %i.et, label %bb.an, label %bb.am, !prof !6

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1116
  %i.eu = sext i32 %i.ek to i64
  %i.ev = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.es, i64 %i.eu) ; 2 uses
  %i.ew = extractvalue { i64, i1 } %i.ev, 1
  br i1 %i.ew, label %bb.ap, label %bb.ao, !prof !6

bb.an:                                            ; preds = %bb.al
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #32, !noalias !1117
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.ex = extractvalue { i64, i1 } %i.ev, 0       ; 2 uses
  store i64 %i.ex, ptr %i.b, align 8, !noalias !1116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1116
  store i64 %3, ptr %i.a, align 8, !noalias !1116
  %i.ey = icmp eq i64 %3, %i.ex
  br i1 %i.ey, label %bb.ar, label %bb.aq, !prof !23

bb.ap:                                            ; preds = %bb.am
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #32, !noalias !1117
  unreachable

bb.aq:                                            ; preds = %bb.ao
  call void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #32, !noalias !1117
  unreachable

bb.ar:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1116
  %i.ez = icmp eq i64 %i.es, 0                    ; 2 uses
  br i1 %i.en, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  br i1 %i.ez, label %bb.au, label %.preheader39.i.i68, !prof !6

bb.at:                                            ; preds = %bb.ar
  br i1 %i.ez, label %bb.aw, label %.preheader.i.i76, !prof !6

bb.au:                                            ; preds = %bb.as
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #32, !noalias !1117
  unreachable

.preheader39.i.i68:                               ; preds = %bb.as, %bb.av
  %.sroa.5.0.i.i69 = phi i64 [ %i.fd, %bb.av ], [ %3, %bb.as ] ; 3 uses
  %i.fa = icmp eq i64 %.sroa.5.0.i.i69, 0
  br i1 %i.fa, label %.loopexit.i75, label %bb.av

bb.av:                                            ; preds = %.preheader39.i.i68
  %i.fb = urem i64 %.sroa.5.0.i.i69, %i.es        ; 2 uses
  %i.fc = icmp eq i64 %i.fb, 0
  %spec.select.i.i.i70 = select i1 %i.fc, i64 %i.es, i64 %i.fb ; 2 uses
  %i.fd = sub i64 %.sroa.5.0.i.i69, %spec.select.i.i.i70 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 %i.fd
  %i.ff = call fastcc noundef ptr @_RNCNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB7_10BmpDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE22read_32_bit_pixel_data0Bd_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull %i.fe, i64 noundef %spec.select.i.i.i70) #27, !noalias !1112 ; 2 uses
  %.not24.i.i71 = icmp eq ptr %i.ff, null
  br i1 %.not24.i.i71, label %.preheader39.i.i68, label %.loopexit17.i

bb.aw:                                            ; preds = %bb.at
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #32, !noalias !1117
  unreachable

.preheader.i.i76:                                 ; preds = %bb.at, %_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i.i79
  %.sroa.6.0.i.i77 = phi i64 [ %i.fh, %_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i.i79 ], [ %3, %bb.at ] ; 3 uses
  %.sroa.029.0.i.i78 = phi ptr [ %i.fi, %_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i.i79 ], [ %2, %bb.at ] ; 2 uses
  %i.fg = icmp eq i64 %.sroa.6.0.i.i77, 0
  br i1 %i.fg, label %.loopexit.i75, label %_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i.i79

_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i.i79: ; preds = %.preheader.i.i76
  %..i.i.i.i80 = call noundef i64 @llvm.umin.i64(i64 %i.es, i64 %.sroa.6.0.i.i77) ; 3 uses
  %i.fh = sub nuw nsw i64 %.sroa.6.0.i.i77, %..i.i.i.i80
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.029.0.i.i78, i64 %..i.i.i.i80
  %i.fj = call fastcc noundef ptr @_RNCNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB7_10BmpDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE22read_32_bit_pixel_data0Bd_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull %.sroa.029.0.i.i78, i64 noundef %..i.i.i.i80) #27, !noalias !1112 ; 2 uses
  %.not26.i.i81 = icmp eq ptr %i.fj, null
  br i1 %.not26.i.i81, label %.preheader.i.i76, label %.loopexit17.i

.loopexit17.i:                                    ; preds = %bb.av, %_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i.i79
  %.sroa.0.1.i.i72 = phi ptr [ %i.fj, %_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i.i79 ], [ %i.ff, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1114
  br label %bb.ax

.loopexit.i75:                                    ; preds = %.preheader39.i.i68, %.preheader.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1114
  store i8 -1, ptr %0, align 8, !alias.scope !1112
  br label %_RNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB5_10BmpDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE22read_32_bit_pixel_dataBb_.exit

bb.ax:                                            ; preds = %.loopexit17.i, %bb.ak
  %.sroa.0.1.i.sink.i73 = phi ptr [ %.sroa.0.1.i.i72, %.loopexit17.i ], [ %i.eg, %bb.ak ]
  store i8 9, ptr %0, align 8, !alias.scope !1112
  %.sroa.413.0..sroa_idx.i74 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.sink.i73, ptr %.sroa.413.0..sroa_idx.i74, align 8, !alias.scope !1112
  br label %_RNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB5_10BmpDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE22read_32_bit_pixel_dataBb_.exit

_RNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB5_10BmpDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE22read_32_bit_pixel_dataBb_.exit: ; preds = %.loopexit.i75, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1114
  br label %bb.ae

bb.ay:                                            ; preds = %bb.ah
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fl = load <4 x i32>, ptr %i.fk, align 8
  %.fr136 = freeze <4 x i32> %i.fl
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.fn = load i32, ptr %i.fm, align 8
  %.fr139 = freeze i32 %i.fn
  %i.fo = icmp eq i32 %.fr139, 8
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.fq = load i32, ptr %i.fp, align 4
  %.fr137 = freeze i32 %i.fq
  %i.fr = icmp eq i32 %.fr137, 0
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ft = load i32, ptr %i.fs, align 8
  %i.fu = icmp eq i32 %i.ft, 0
  %i.fv = icmp ne <4 x i32> %.fr136, <i32 8, i32 16, i32 8, i32 8>
  %i.fw = bitcast <4 x i1> %i.fv to i4
  %i.fx = icmp eq i4 %i.fw, 0
  %op.rdx = and i1 %i.fx, %i.fo
  %4 = and i1 %op.rdx, %i.fr
  %op.rdx129 = select i1 %4, i1 %i.fu, i1 false
  br i1 %op.rdx129, label %bb.ba, label %bb.aj

bb.az:                                            ; preds = %bb.ah
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fz = load <4 x i32>, ptr %i.fy, align 8
  %.fr = freeze <4 x i32> %i.fz
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.gb = load i32, ptr %i.ga, align 8
  %.fr135 = freeze i32 %i.gb
  %i.gc = icmp eq i32 %.fr135, 8
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ge = load i32, ptr %i.gd, align 4
  %.fr133 = freeze i32 %i.ge
  %i.gf = icmp eq i32 %.fr133, 24
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.gh = load i32, ptr %i.gg, align 8
  %i.gi = icmp eq i32 %i.gh, 8
  %i.gj = icmp ne <4 x i32> %.fr, <i32 8, i32 8, i32 8, i32 0>
  %i.gk = bitcast <4 x i1> %i.gj to i4
  %i.gl = icmp eq i4 %i.gk, 0
  %op.rdx130 = and i1 %i.gl, %i.gc
  %5 = and i1 %op.rdx130, %i.gf
  %op.rdx132 = select i1 %5, i1 %i.gi, i1 false
  br i1 %op.rdx132, label %bb.bb, label %bb.aj

bb.ba:                                            ; preds = %bb.ay
  tail call fastcc void @_RNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB5_10BmpDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE25read_full_byte_pixel_dataBb_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(120) %1, ptr noalias nofree noundef nonnull %2, i64 noundef %3, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @113)
  br label %bb.ae

bb.bb:                                            ; preds = %bb.az
  tail call fastcc void @_RNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB5_10BmpDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE25read_full_byte_pixel_dataBb_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(120) %1, ptr noalias nofree noundef nonnull %2, i64 noundef %3, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @112)
  br label %bb.ae
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB5_10BmpDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE22read_16_bit_pixel_dataBb_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1, ptr noalias nofree noundef nonnull writeonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(32) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 10 uses
  %i.d = alloca [2 x i8], align 2                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 106
  %i.g = load i8, ptr %i.f, align 2, !range !24, !noundef !5
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 109
  %i.j = load i8, ptr %i.i, align 1, !range !24
  %i.k = trunc nuw i8 %i.j to i1
  %. = select i1 %i.k, i64 4, i64 3
  %.sink = select i1 %i.h, i64 1, i64 %.          ; 2 uses
  store i64 %.sink, ptr %i.e, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !noundef !5
  %i.n = shl i32 %i.m, 1
  %i.o = and i32 %i.n, 2
  %i.p = zext nneg i32 %i.o to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i16 0, ptr %i.d, align 2
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.r = load i32, ptr %i.q, align 8, !range !30, !noundef !5
  %i.s = trunc nuw i32 %i.r to i1
  br i1 %i.s, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 60
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114) #32
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.c
  %.sroa.02.0 = phi ptr [ %i.t, %bb.c ], [ %4, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = load i64, ptr %i.v, align 8, !noundef !5
  %i.x = tail call { i64, ptr } @_RNvXs4_NtNtCsj6eKBz9Db1c_4core2io6cursorINtB5_6CursorRShENtNtB7_4seek4Seek4seekCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u, i64 noundef 0, i64 noundef %i.w) ; 2 uses
  %i.y = extractvalue { i64, ptr } %i.x, 0
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = extractvalue { i64, ptr } %i.x, 1
  br label %bb.t

bb.g:                                             ; preds = %bb.e
  %i.ab = load i32, ptr %i.l, align 4, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ad = load i32, ptr %i.ac, align 8, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 107
  %i.af = load i8, ptr %i.ae, align 1, !range !24, !noundef !5
  %i.ag = trunc nuw i8 %i.af to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.u, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.02.0, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.d, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.p, ptr %i.ak, align 8
  %i.al = sext i32 %i.ab to i64
  %i.am = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sink, i64 %i.al) ; 2 uses
  %i.an = extractvalue { i64, i1 } %i.am, 0       ; 5 uses
  %i.ao = extractvalue { i64, i1 } %i.am, 1
  br i1 %i.ao, label %bb.i, label %bb.h, !prof !6

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1121
  %i.ap = sext i32 %i.ad to i64
  %i.aq = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.an, i64 %i.ap) ; 2 uses
  %i.ar = extractvalue { i64, i1 } %i.aq, 1
  br i1 %i.ar, label %bb.k, label %bb.j, !prof !6

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #32, !noalias !1121
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.as = extractvalue { i64, i1 } %i.aq, 0       ; 2 uses
  store i64 %i.as, ptr %i.b, align 8, !noalias !1121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1121
  store i64 %3, ptr %i.a, align 8, !noalias !1121
  %i.at = icmp eq i64 %3, %i.as
  br i1 %i.at, label %bb.m, label %bb.l, !prof !23

bb.k:                                             ; preds = %bb.h
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #32, !noalias !1121
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #32, !noalias !1121
  unreachable

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1121
  %i.au = icmp eq i64 %i.an, 0                    ; 2 uses
  br i1 %i.ag, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.au, label %bb.p, label %.preheader39.i, !prof !6

bb.o:                                             ; preds = %bb.m
  br i1 %i.au, label %bb.r, label %.preheader.i, !prof !6

bb.p:                                             ; preds = %bb.n
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #32, !noalias !1121
  unreachable

.preheader39.i:                                   ; preds = %bb.n, %bb.q
  %.sroa.5.0.i = phi i64 [ %i.ay, %bb.q ], [ %3, %bb.n ] ; 3 uses
  %i.av = icmp eq i64 %.sroa.5.0.i, 0
  br i1 %i.av, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %.preheader39.i
  %i.aw = urem i64 %.sroa.5.0.i, %i.an            ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  %spec.select.i.i = select i1 %i.ax, i64 %i.an, i64 %i.aw ; 2 uses
  %i.ay = sub i64 %.sroa.5.0.i, %spec.select.i.i  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 %i.ay
  %i.ba = call fastcc noundef ptr @_RNCNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB7_10BmpDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE22read_16_bit_pixel_data0Bd_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull %i.az, i64 noundef %spec.select.i.i) #27 ; 2 uses
  %.not24.i = icmp eq ptr %i.ba, null
  br i1 %.not24.i, label %.preheader39.i, label %.loopexit21

bb.r:                                             ; preds = %bb.o
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #32, !noalias !1121
  unreachable

.preheader.i:                                     ; preds = %bb.o, %_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i
  %.sroa.6.0.i = phi i64 [ %i.bc, %_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %3, %bb.o ] ; 3 uses
  %.sroa.029.0.i = phi ptr [ %i.bd, %_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %2, %bb.o ] ; 2 uses
  %i.bb = icmp eq i64 %.sroa.6.0.i, 0
  br i1 %i.bb, label %.loopexit, label %_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.preheader.i
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.an, i64 %.sroa.6.0.i) ; 3 uses
  %i.bc = sub nuw nsw i64 %.sroa.6.0.i, %..i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.029.0.i, i64 %..i.i.i
  %i.be = call fastcc noundef ptr @_RNCNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB7_10BmpDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE22read_16_bit_pixel_data0Bd_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull %.sroa.029.0.i, i64 noundef %..i.i.i) #27 ; 2 uses
  %.not26.i = icmp eq ptr %i.be, null
  br i1 %.not26.i, label %.preheader.i, label %.loopexit21

.loopexit21:                                      ; preds = %bb.q, %_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i
  %.sroa.0.1.i = phi ptr [ %i.be, %_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.ba, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.t

.loopexit:                                        ; preds = %.preheader39.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 -1, ptr %0, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.t:                                             ; preds = %.loopexit21, %bb.f
  %.sroa.0.1.i.sink = phi ptr [ %.sroa.0.1.i, %.loopexit21 ], [ %i.aa, %bb.f ]
  store i8 9, ptr %0, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.sink, ptr %.sroa.416.0..sroa_idx, align 8
  br label %bb.s
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB5_10BmpDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE25read_full_byte_pixel_dataBb_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 10 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
end_hunk_0
