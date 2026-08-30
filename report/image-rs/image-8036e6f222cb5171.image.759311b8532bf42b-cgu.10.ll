Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.10?download=true
inline.NumInlined: 917
inline.NumDeleted: 432
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder16read_image_boxedBb_:bb.a

bb.bz:                                            ; preds = %bb.s
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ay, i64 88
  %i.gk = load i64, ptr %i.gj, align 8, !range !115, !noalias !1375, !noundef !10
  %.not66.i = icmp eq i64 %i.gk, -1
  br i1 %.not66.i, label %bb.cc, label %bb.cb, !prof !11

bb.ca:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1365
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1365
  store i8 3, ptr %i.l, align 4, !noalias !1365
  invoke void @_RNvXs_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderNtNtBa_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12DecoderErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.l)
          to label %bb.ck unwind label %bb.cm, !noalias !1375

bb.cb:                                            ; preds = %bb.bz
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ay, i64 504
  %i.gm = load i32, ptr %i.gl, align 8, !noalias !1375, !noundef !10 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ay, i64 508
  %i.go = load i32, ptr %i.gn, align 4, !noalias !1375, !noundef !10 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.p, i64 132
  %i.gq = load i8, ptr %i.gp, align 4, !alias.scope !1401, !noalias !1373, !noundef !10 ; 3 uses
  %i.gr = icmp eq i8 %i.gq, 0                     ; 2 uses
  %i.gs = zext i8 %i.gq to i32
  %.sroa.01.0.i86.i = select i1 %i.gr, i32 256, i32 %i.gs
  %..i.i87.i = tail call noundef range(i32 0, 257) i32 @llvm.umin.i32(i32 %i.gm, i32 256)
  %i.gt = icmp eq i32 %.sroa.01.0.i86.i, %..i.i87.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.p, i64 133
  %i.gv = load i8, ptr %i.gu, align 1, !alias.scope !1361, !noalias !1373 ; 4 uses
  br i1 %i.gt, label %_RNvMs4_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderNtB5_8DirEntry18matches_dimensions.exit91.i, label %_RNvMs4_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderNtB5_8DirEntry18matches_dimensions.exit91.thread.i

bb.cc:                                            ; preds = %bb.bz
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #33
          to label %bb.r unwind label %bb.cm, !noalias !1375

_RNvMs4_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderNtB5_8DirEntry18matches_dimensions.exit91.i: ; preds = %bb.cb
  %i.gw = icmp eq i8 %i.gv, 0
  %i.gx = zext i8 %i.gv to i32
  %.sroa.02.0.i89.i = select i1 %i.gw, i32 256, i32 %i.gx
  %..i4.i90.i = tail call noundef range(i32 0, 257) i32 @llvm.umin.i32(i32 %i.go, i32 256)
  %i.gy = icmp eq i32 %.sroa.02.0.i89.i, %..i4.i90.i
  br i1 %i.gy, label %bb.cd, label %_RNvMs4_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderNtB5_8DirEntry18matches_dimensions.exit91.thread.i

_RNvMs4_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderNtB5_8DirEntry18matches_dimensions.exit91.thread.i: ; preds = %_RNvMs4_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderNtB5_8DirEntry18matches_dimensions.exit91.i, %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1365
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1365
  %i.gz = zext i8 %i.gq to i16
  %.sroa.0.0.i = select i1 %i.gr, i16 256, i16 %i.gz
  %i.ha = icmp eq i8 %i.gv, 0
  %i.hb = zext i8 %i.gv to i16
  %.sroa.03.0.i = select i1 %i.ha, i16 256, i16 %i.hb
  %i.hc = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 0, ptr %i.hc, align 1, !noalias !1365
  %i.hd = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i16 %.sroa.0.0.i, ptr %i.hd, align 2, !noalias !1365
  %i.he = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i16 %.sroa.03.0.i, ptr %i.he, align 4, !noalias !1365
  %i.hf = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %i.gm, ptr %i.hf, align 4, !noalias !1365
  %i.hg = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 %i.go, ptr %i.hg, align 4, !noalias !1365
  store i8 6, ptr %i.j, align 4, !noalias !1365
  invoke void @_RNvXs_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderNtNtBa_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12DecoderErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.k, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.j)
          to label %bb.ce unwind label %bb.cm, !noalias !1375

bb.cd:                                            ; preds = %_RNvMs4_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderNtB5_8DirEntry18matches_dimensions.exit91.i
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ay, i64 856
  %i.hi = load i8, ptr %i.hh, align 8, !range !1197, !noalias !1375, !noundef !10
  %.not67.i = icmp eq i8 %i.hi, 3
  br i1 %.not67.i, label %bb.cf, label %bb.cg

bb.ce:                                            ; preds = %_RNvMs4_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderNtB5_8DirEntry18matches_dimensions.exit91.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1365
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.k, i64 64, i1 false), !noalias !1386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1365
  br label %bb.ci

bb.cf:                                            ; preds = %bb.cd
  invoke void @_RNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs3pngINtB4_10PngDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB8_2io7decoder12ImageDecoder16read_image_boxedB8_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 %i.ay, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3)
          to label %_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10read_imageBb_.exit unwind label %bb.cq

bb.cg:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1365
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1365
  store i8 4, ptr %i.h, align 4, !noalias !1365
  invoke void @_RNvXs_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderNtNtBa_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12DecoderErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.h)
          to label %bb.ch unwind label %bb.cm, !noalias !1375

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1365
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false), !noalias !1386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1365
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ck, %bb.ch, %bb.ce
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs5XDXJCpOCOR_3png7decoder6ReaderINtNtNtB4_2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(824) %i.hj)
          to label %bb.cl unwind label %bb.cj, !noalias !1375

bb.cj:                                            ; preds = %bb.ci
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ay, i64 noundef 864, i64 noundef 8) #30, !noalias !1375
  br label %bb.cr

bb.ck:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1365
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 64, i1 false), !noalias !1386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1365
  br label %bb.ci

bb.cl:                                            ; preds = %bb.ci
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ay, i64 noundef 864, i64 noundef 8) #30, !noalias !1375
  br label %_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10read_imageBb_.exit

bb.cm:                                            ; preds = %bb.cg, %_RNvMs4_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderNtB5_8DirEntry18matches_dimensions.exit91.thread.i, %bb.cc, %bb.ca
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxINtNtNtCsa5QsYiPB8Gl_5image6codecs3png10PngDecoderINtNtNtB4_2io6cursor6CursorRShEEEEB1h_(ptr nonnull %i.ay) #28
          to label %bb.cr unwind label %bb.by, !noalias !1375

bb.cn:                                            ; preds = %.body.i
  br i1 %.sroa.037.0.i, label %bb.co, label %bb.cr

bb.co:                                            ; preds = %bb.cn
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder10BmpDecoderINtNtNtB4_2io6cursor6CursorRShEEEBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.p) #28
          to label %bb.cr unwind label %bb.by, !noalias !1358

bb.cp:                                            ; preds = %.body.i
  %i.hl = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val70.i = load ptr, ptr %i.hl, align 8, !alias.scope !1361, !noalias !1373, !nonnull !10, !noundef !10
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxINtNtNtCsa5QsYiPB8Gl_5image6codecs3png10PngDecoderINtNtNtB4_2io6cursor6CursorRShEEEEB1h_(ptr nonnull %.val70.i) #28
          to label %bb.cr unwind label %bb.by, !noalias !1375

bb.cq:                                            ; preds = %bb.cf
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10read_imageBb_.exit: ; preds = %bb.cl, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder10BmpDecoderINtNtNtB4_2io6cursor6CursorRShEEEBK_.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder10BmpDecoderINtNtNtB4_2io6cursor6CursorRShEEEBK_.exit84.i, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 136, i64 noundef 8) #30
  ret void

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cj
  %eh.lpad-body = phi { ptr, i32 } [ %i.hm, %bb.cq ], [ %.pn.i, %bb.cp ], [ %.pn.i, %bb.co ], [ %.pn.i, %bb.cn ], [ %i.hk, %bb.cj ], [ %lpad.thr_comm.i, %bb.cm ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 136, i64 noundef 8) #30
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs6_NtCsdsTQD3x2eOp_3exr2ioINtB5_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull %1, i64 noundef %2) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !10
  %i.h = add i64 %i.g, %i.e
  store i64 %i.h, ptr %i.f, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ 0, %bb.b ], [ 1, %bb.a ]
  %i.i = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.j = insertvalue { i64, ptr } %i.i, ptr %i.c, 1
  ret { i64, ptr } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB5_10BmpDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder16read_image_boxedBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
switch.lookup:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [120 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.c, ptr noundef nonnull align 8 dereferenceable(120) %1, i64 120, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1404)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1407
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.d, align 8, !noalias !1407
  store i8 0, ptr %i.b, align 8, !noalias !1407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1407
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  %.val.i.i = load i32, ptr %i.e, align 4, !alias.scope !1410, !noalias !1413, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %.val2.i.i = load i32, ptr %i.f, align 8, !alias.scope !1410, !noalias !1413, !noundef !10
  %i.g = zext i32 %.val.i.i to i64
  %i.h = zext i32 %.val2.i.i to i64
  %i.i = mul nuw i64 %i.h, %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 106
  %.val3.i.i = load i8, ptr %i.j, align 2, !range !331, !alias.scope !1410, !noalias !1413, !noundef !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 109
  %.val4.i.i = load i8, ptr %i.k, align 1, !alias.scope !1410, !noalias !1413
  %i.l = trunc nuw i8 %.val3.i.i to i1
  %..i.i.i = or i8 %.val4.i.i, 2
  %.sroa.0.0.i.i.i = select i1 %i.l, i8 0, i8 %..i.i.i
  %4 = zext nneg i8 %.sroa.0.0.i.i.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder10BmpDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder11total_bytesBb_, i64 %4
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.m = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.i, i64 %switch.ext) ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 1
  br i1 %i.n, label %.thread.i, label %bb.b, !prof !11

.thread.i:                                        ; preds = %switch.lookup
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 -1, ptr %i.o, align 8, !noalias !1407
  store i8 0, ptr %i.a, align 8, !noalias !1407
  br label %bb.c

bb.a:                                             ; preds = %bb.d, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder10BmpDecoderINtNtNtB4_2io6cursor6CursorRShEEEBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.c) #28
          to label %bb.l unwind label %bb.j, !noalias !1414

bb.b:                                             ; preds = %switch.lookup
  %i.q = extractvalue { i64, i1 } %i.m, 0         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.q, ptr %i.r, align 8, !noalias !1407
  store i8 0, ptr %i.a, align 8, !noalias !1407
  %i.s = icmp eq i64 %3, %i.q
  br i1 %i.s, label %bb.d, label %bb.c, !prof !1198

bb.c:                                             ; preds = %bb.b, %.thread.i
  invoke void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedINtNtB4_6result6ResultyNtNtNtB4_3num5error15TryFromIntErrorEBM_ECsa5QsYiPB8Gl_5image(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @161) #33
          to label %bb.e unwind label %bb.a, !noalias !1407

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1407
  invoke fastcc void @_RNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB5_10BmpDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE15read_image_dataBb_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.c, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3)
          to label %bb.f unwind label %bb.a

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.c, align 8, !range !115, !alias.scope !1415, !noalias !1413, !noundef !10
  %i.u = icmp eq i64 %i.t, -1
  br i1 %i.u, label %_RNvXs6_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB5_10BmpDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10read_imageBb_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecAhj3_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecAhj3_EECsa5QsYiPB8Gl_5image.exit.i.i.i unwind label %bb.h, !noalias !1414

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecAhj3_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.c)
          to label %bb.l unwind label %bb.i, !noalias !1414

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1414
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecAhj3_EECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecAhj3_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.c)
          to label %_RNvXs6_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB5_10BmpDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10read_imageBb_.exit unwind label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1414
  unreachable

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecAhj3_EECsa5QsYiPB8Gl_5image.exit.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

_RNvXs6_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB5_10BmpDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10read_imageBb_.exit: ; preds = %bb.f, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecAhj3_EECsa5QsYiPB8Gl_5image.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 120, i64 noundef 8) #30
  ret void

bb.l:                                             ; preds = %bb.k, %bb.h, %bb.a
  %eh.lpad-body = phi { ptr, i32 } [ %i.y, %bb.k ], [ %i.v, %bb.h ], [ %i.p, %bb.a ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 120, i64 noundef 8) #30
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXsP_NtCsj6eKBz9Db1c_4core5arrayANtNtCs51eXCul1Ifq_4half8binary163f16j10_NtNtB7_7default7Default7defaultCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 2 captures(none) dereferenceable(32) initializes((0, 32)) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsch97uQowpgv_3fax7decoderINtB4_11DecodeErrorNtNtNtCsj6eKBz9Db1c_4core2io5error5ErrorENtNtBV_3fmt7Display3fmtCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !10, !align !36, !noundef !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !10, !nonnull !10
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 12) #27
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs3pngINtB4_10PngDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB8_2io7decoder12ImageDecoder10dimensionsB8_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(864) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8, !range !115, !noundef !10
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.d = load i32, ptr %i.c, align 8, !noundef !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 508
  %i.f = load i32, ptr %i.e, align 4, !noundef !10
  %i.g = insertvalue { i32, i32 } poison, i32 %i.d, 0
  %i.h = insertvalue { i32, i32 } %i.g, i32 %i.f, 1
  ret { i32, i32 } %i.h

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs3pngINtB4_10PngDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB8_2io7decoder12ImageDecoder10set_limitsB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(864) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  store i8 -1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load i64, ptr %i.a, align 8, !range !115, !noundef !10
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.d = load i32, ptr %i.c, align 8, !noundef !10
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i32, ptr %i.e, align 8, !range !587, !noundef !10
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.h = trunc nuw i32 %i.f to i1
  %i.i = load i32, ptr %i.g, align 4
  %i.j = icmp ugt i32 %i.d, %i.i
  %or.cond = select i1 %i.h, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #32
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 508
  %i.l = load i32, ptr %i.k, align 4, !noundef !10
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = load i32, ptr %i.m, align 8, !range !587, !noundef !10
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.p = trunc nuw i32 %i.n to i1
  %i.q = load i32, ptr %i.o, align 4
  %i.r = icmp ugt i32 %i.l, %i.q
  %or.cond7 = select i1 %i.p, i1 %i.r, i1 false
  br i1 %or.cond7, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.b
  store i8 7, ptr %0, align 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %.sroa.546.0..sroa_idx, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs3pngINtB4_10PngDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB8_2io7decoder12ImageDecoder11icc_profileB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(864) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.c = load i64, ptr %i.b, align 8, !range !115, !noundef !10
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.e = load i64, ptr %i.d, align 8, !range !114, !noundef !10
  %.not4 = icmp eq i64 %i.e, -2
  br i1 %.not4, label %_RNCNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs3pngINtB6_10PngDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBa_2io7decoder12ImageDecoder11icc_profile0Ba_.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #32
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.val = load ptr, ptr %i.f, align 8, !nonnull !10, !noundef !10
end_hunk_0
begin_hunk_1_@_RNvYINtNtNtCsa5QsYiPB8Gl_5image6codecs3png10PngDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB9_2io7decoder12ImageDecoder11orientationB9_:bb.a
  %spec.select = select i1 %.not.i.i, i8 0, i8 %i.v
  br label %_RNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs3pngINtB4_10PngDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB8_2io7decoder12ImageDecoder13exif_metadataB8_.exit

_RNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs3pngINtB4_10PngDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB8_2io7decoder12ImageDecoder13exif_metadataB8_.exit: ; preds = %bb.b, %_RNCNvYINtNtNtCsa5QsYiPB8Gl_5image6codecs3png10PngDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder11orientation0Bb_.exit
  %.sroa.0.0 = phi i8 [ %spec.select, %_RNCNvYINtNtNtCsa5QsYiPB8Gl_5image6codecs3png10PngDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder11orientation0Bb_.exit ], [ 0, %bb.b ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.0.0, ptr %i.z, align 1
  store i8 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvYINtNtNtCsa5QsYiPB8Gl_5image6codecs3png10PngDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB9_2io7decoder12ImageDecoder11total_bytesB9_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(864) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1852)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8, !range !115, !alias.scope !1852, !noundef !10
  %.not.i = icmp eq i64 %i.b, -1
  br i1 %.not.i, label %bb.b, label %_RNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs3pngINtB4_10PngDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB8_2io7decoder12ImageDecoder10dimensionsB8_.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #32, !noalias !1852
  unreachable

_RNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs3pngINtB4_10PngDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB8_2io7decoder12ImageDecoder10dimensionsB8_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !1852, !noundef !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 508
  %i.f = load i32, ptr %i.e, align 4, !alias.scope !1852, !noundef !10
  %i.g = zext i32 %i.d to i64
  %i.h = zext i32 %i.f to i64
  %i.i = mul nuw i64 %i.h, %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 856
  %.val = load i8, ptr %i.j, align 8, !range !1197, !noundef !10
  %i.k = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3tga7decoder10TgaDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder11total_bytesBb_, i64 %i.k
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.l = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.i, i64 %switch.ext) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 0
  %i.n = extractvalue { i64, i1 } %i.l, 1
  br i1 %i.n, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %_RNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs3pngINtB4_10PngDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB8_2io7decoder12ImageDecoder10dimensionsB8_.exit
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs3pngINtB4_10PngDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB8_2io7decoder12ImageDecoder10dimensionsB8_.exit, %bb.c
  %.sroa.0.0 = phi i64 [ -1, %bb.c ], [ %i.m, %_RNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs3pngINtB4_10PngDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB8_2io7decoder12ImageDecoder10dimensionsB8_.exit ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i8, i8 } @_RNvYINtNtNtCsa5QsYiPB8Gl_5image6codecs3png10PngDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB9_2io7decoder12ImageDecoder19original_color_typeB9_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(864) %0) unnamed_addr #6 {
switch.lookup:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 856
  %.val = load i8, ptr %i.a, align 8, !range !1197, !noundef !10
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoder10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder19original_color_typeBb_, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.c = insertvalue { i8, i8 } poison, i8 %switch.load, 0
  %i.d = insertvalue { i8, i8 } %i.c, i8 undef, 1
  ret { i8, i8 } %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvYINtNtNtCsa5QsYiPB8Gl_5image6codecs8farbfeld15FarbfeldDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB9_2io7decoder12ImageDecoder10set_limitsB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 1)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #11 {
bb.a:
  store i8 -1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i32, ptr %i.a, align 8, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i32, ptr %i.b, align 8, !range !587, !noundef !10
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.e = trunc nuw i32 %i.c to i1
  %i.f = load i32, ptr %i.d, align 4
  %i.g = icmp ugt i32 %.val, %i.f
  %or.cond = select i1 %i.e, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.val49 = load i32, ptr %i.h, align 4, !noundef !10
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load i32, ptr %i.i, align 8, !range !587, !noundef !10
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.l = trunc nuw i32 %i.j to i1
  %i.m = load i32, ptr %i.k, align 4
  %i.n = icmp ugt i32 %.val49, %i.m
  %or.cond7 = select i1 %i.l, i1 %i.n, i1 false
  br i1 %or.cond7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  store i8 7, ptr %0, align 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %.sroa.546.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvYINtNtNtCsa5QsYiPB8Gl_5image6codecs8farbfeld15FarbfeldDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB9_2io7decoder12ImageDecoder11orientationB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 2)) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(48) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.a, align 1
  store i8 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 -1, -7) i64 @_RNvYINtNtNtCsa5QsYiPB8Gl_5image6codecs8farbfeld15FarbfeldDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB9_2io7decoder12ImageDecoder11total_bytesB9_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load i32, ptr %i.a, align 8, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.val2 = load i32, ptr %i.b, align 4, !noundef !10
  %i.c = zext i32 %.val to i64
  %i.d = zext i32 %.val2 to i64
  %i.e = mul nuw i64 %i.d, %i.c                   ; 2 uses
  %i.f = shl nuw i64 %i.e, 3
  %i.g = icmp ugt i64 %i.e, 2305843009213693951
  br i1 %i.g, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ -1, %bb.b ], [ %i.f, %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i8, i8 } @_RNvYINtNtNtCsa5QsYiPB8Gl_5image6codecs8farbfeld15FarbfeldDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB9_2io7decoder12ImageDecoder19original_color_typeB9_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #8 {
bb.a:
  ret { i8, i8 } { i8 21, i8 undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvYINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder10BmpDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10set_limitsBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 1)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #11 {
bb.a:
  store i8 -1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 92
  %.val = load i32, ptr %i.a, align 4, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i32, ptr %i.b, align 8, !range !587, !noundef !10
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.e = trunc nuw i32 %i.c to i1
  %i.f = load i32, ptr %i.d, align 4
  %i.g = icmp ugt i32 %.val, %i.f
  %or.cond = select i1 %i.e, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val49 = load i32, ptr %i.h, align 8, !noundef !10
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load i32, ptr %i.i, align 8, !range !587, !noundef !10
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.l = trunc nuw i32 %i.j to i1
  %i.m = load i32, ptr %i.k, align 4
  %i.n = icmp ugt i32 %.val49, %i.m
  %or.cond7 = select i1 %i.l, i1 %i.n, i1 false
  br i1 %or.cond7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  store i8 7, ptr %0, align 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %.sroa.546.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvYINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder10BmpDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder11orientationBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 2)) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(120) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.a, align 1
  store i8 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvYINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder10BmpDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder11total_bytesBb_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #6 {
switch.lookup:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92
  %.val = load i32, ptr %i.a, align 4, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val2 = load i32, ptr %i.b, align 8, !noundef !10
  %i.c = zext i32 %.val to i64
  %i.d = zext i32 %.val2 to i64
  %i.e = mul nuw i64 %i.d, %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 106
  %.val3 = load i8, ptr %i.f, align 2, !range !331, !noundef !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 109
  %.val4 = load i8, ptr %i.g, align 1
  %i.h = trunc nuw i8 %.val3 to i1
  %..i = or i8 %.val4, 2
  %.sroa.0.0.i = select i1 %i.h, i8 0, i8 %..i
  %1 = zext nneg i8 %.sroa.0.0.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder10BmpDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder11total_bytesBb_, i64 %1
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.e, i64 %switch.ext) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 0
  %i.k = extractvalue { i64, i1 } %i.i, 1
  br i1 %i.k, label %bb.a, label %bb.b, !prof !11

bb.a:                                             ; preds = %switch.lookup
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.sroa.0.0 = phi i64 [ -1, %bb.a ], [ %i.j, %switch.lookup ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i8, i8 } @_RNvYINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder10BmpDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder19original_color_typeBb_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #6 {
switch.lookup:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 106
  %.val = load i8, ptr %i.a, align 2, !range !331, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 109
  %.val1 = load i8, ptr %i.b, align 1
  %i.c = trunc nuw i8 %.val to i1
  %..i = or i8 %.val1, 2
  %.sroa.0.0.i = select i1 %i.c, i8 0, i8 %..i
  %i.d = zext i8 %.sroa.0.0.i to i32
  %i.e = shl nuw nsw i32 %i.d, 3
  %i.f = lshr i32 286261262, %i.e
  %i.g = trunc i32 %i.f to i8
  %i.h = insertvalue { i8, i8 } poison, i8 %i.g, 0
  %i.i = insertvalue { i8, i8 } %i.h, i8 undef, 1
  ret { i8, i8 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoder10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10set_limitsBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 1)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(136) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  store i8 -1, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1855)
  %i.a = load i64, ptr %1, align 8, !range !114, !alias.scope !1855, !noundef !10
  %i.b = icmp eq i64 %i.a, -2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1855, !nonnull !10, !noundef !10 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.f = load i64, ptr %i.e, align 8, !range !115, !noalias !1855, !noundef !10
  %.not.i = icmp eq i64 %i.f, -1
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  br label %_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10dimensionsBb_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 504
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 508
  br label %_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10dimensionsBb_.exit

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #32, !noalias !1855
  unreachable

_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10dimensionsBb_.exit: ; preds = %bb.c, %bb.d
  %.sroa.3.0.in.i = phi ptr [ %i.j, %bb.d ], [ %i.h, %bb.c ]
  %.sroa.0.0.in.i = phi ptr [ %i.i, %bb.d ], [ %i.g, %bb.c ]
  %.sroa.0.0.i = load i32, ptr %.sroa.0.0.in.i, align 4, !noundef !10
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load i32, ptr %i.k, align 8, !range !587, !noundef !10
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.n = trunc nuw i32 %i.l to i1
  %i.o = load i32, ptr %i.m, align 4
  %i.p = icmp ugt i32 %.sroa.0.0.i, %i.o
  %or.cond = select i1 %i.n, i1 %i.p, i1 false
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10dimensionsBb_.exit
  %.sroa.3.0.i = load i32, ptr %.sroa.3.0.in.i, align 4, !noundef !10
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = load i32, ptr %i.q, align 8, !range !587, !noundef !10
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.t = trunc nuw i32 %i.r to i1
  %i.u = load i32, ptr %i.s, align 4
  %i.v = icmp ugt i32 %.sroa.3.0.i, %i.u
  %or.cond7 = select i1 %i.t, i1 %i.v, i1 false
  br i1 %or.cond7, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10dimensionsBb_.exit
  store i8 7, ptr %0, align 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %.sroa.546.0..sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvYINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoder10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder11orientationBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 2)) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(136) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.a, align 1
  store i8 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvYINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoder10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder11total_bytesBb_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(136) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1858)
  %i.a = load i64, ptr %0, align 8, !range !114, !alias.scope !1858, !noundef !10
  %i.b = icmp eq i64 %i.a, -2
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1858, !nonnull !10, !noundef !10 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.f = load i64, ptr %i.e, align 8, !range !115, !noalias !1858, !noundef !10
  %.not.i = icmp eq i64 %i.f, -1
  br i1 %.not.i, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #32, !noalias !1858
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 504
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 508
  %.sroa.0.0.i5 = load i32, ptr %i.g, align 8, !noundef !10
  %.sroa.3.0.i6 = load i32, ptr %i.h, align 4, !noundef !10
  %i.i = zext i32 %.sroa.0.0.i5 to i64
  %i.j = zext i32 %.sroa.3.0.i6 to i64
  %i.k = mul nuw i64 %i.j, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 856
  %i.m = load i8, ptr %i.l, align 8, !range !1197, !noalias !1861, !noundef !10
  br label %_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10color_typeBb_.exit

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.0.0.i = load i32, ptr %i.n, align 4, !noundef !10
  %.sroa.3.0.i = load i32, ptr %i.o, align 8, !noundef !10
  %i.p = zext i32 %.sroa.0.0.i to i64
  %i.q = zext i32 %.sroa.3.0.i to i64
  %i.r = mul nuw i64 %i.q, %i.p                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1861)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 106
  %i.t = load i8, ptr %i.s, align 2, !range !331, !alias.scope !1861, !noundef !10
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10color_typeBb_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 109
  %i.w = load i8, ptr %i.v, align 1, !range !331, !alias.scope !1861, !noundef !10
  %..i = or disjoint i8 %i.w, 2
  br label %_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10color_typeBb_.exit

_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10color_typeBb_.exit: ; preds = %bb.d, %bb.f
  %i.x = phi i64 [ %i.k, %bb.d ], [ %i.r, %bb.f ] ; 8 uses
  %.sroa.0.0.i2 = phi i8 [ %i.m, %bb.d ], [ %..i, %bb.f ]
  switch i8 %.sroa.0.0.i2, label %default.unreachable8 [
    i8 0, label %_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10color_typeBb_.exit.thread
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.g
    i8 5, label %bb.i
    i8 6, label %bb.j
    i8 7, label %bb.k
    i8 8, label %bb.l
    i8 9, label %bb.m
  ]

default.unreachable8:                             ; preds = %_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10color_typeBb_.exit
  unreachable

bb.g:                                             ; preds = %_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10color_typeBb_.exit, %_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10color_typeBb_.exit
  br label %_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10color_typeBb_.exit.thread

bb.h:                                             ; preds = %_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10color_typeBb_.exit
  br label %_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10color_typeBb_.exit.thread

bb.i:                                             ; preds = %_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10color_typeBb_.exit, %_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10color_typeBb_.exit
  br label %_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10color_typeBb_.exit.thread

bb.j:                                             ; preds = %_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10color_typeBb_.exit
  br label %_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10color_typeBb_.exit.thread

bb.k:                                             ; preds = %_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10color_typeBb_.exit
  br label %_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10color_typeBb_.exit.thread

bb.l:                                             ; preds = %_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10color_typeBb_.exit
  br label %_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10color_typeBb_.exit.thread

bb.m:                                             ; preds = %_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10color_typeBb_.exit
  br label %_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10color_typeBb_.exit.thread

_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10color_typeBb_.exit.thread: ; preds = %bb.e, %_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10color_typeBb_.exit, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %i.y = phi i64 [ %i.x, %bb.m ], [ %i.x, %bb.h ], [ %i.x, %bb.g ], [ %i.x, %bb.i ], [ %i.x, %bb.j ], [ %i.x, %bb.k ], [ %i.x, %bb.l ], [ %i.x, %_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10color_typeBb_.exit ], [ %i.r, %bb.e ]
  %.sroa.01.0 = phi i64 [ 16, %bb.m ], [ 3, %bb.h ], [ 2, %bb.g ], [ 4, %bb.i ], [ 6, %bb.j ], [ 8, %bb.k ], [ 12, %bb.l ], [ 1, %_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10color_typeBb_.exit ], [ 1, %bb.e ]
  %i.z = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.y, i64 %.sroa.01.0) ; 2 uses
  %i.aa = extractvalue { i64, i1 } %i.z, 0
  %i.ab = extractvalue { i64, i1 } %i.z, 1
  br i1 %i.ab, label %bb.n, label %bb.o, !prof !11

bb.n:                                             ; preds = %_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10color_typeBb_.exit.thread
  br label %bb.o

bb.o:                                             ; preds = %_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10color_typeBb_.exit.thread, %bb.n
  %.sroa.0.0 = phi i64 [ -1, %bb.n ], [ %i.aa, %_RNvXs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderINtB5_10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10color_typeBb_.exit.thread ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable
define hidden { i8, i8 } @_RNvYINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoder10IcoDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder19original_color_typeBb_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(136) %0) unnamed_addr #12 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1864)
  %i.a = load i64, ptr %0, align 8, !range !114, !alias.scope !1864, !noundef !10
  %i.b = icmp eq i64 %i.a, -2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1864, !nonnull !10, !noundef !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 856
  %i.f = load i8, ptr %i.e, align 8, !range !1197, !noalias !1864, !noundef !10
  br label %switch.lookup
end_hunk_1
