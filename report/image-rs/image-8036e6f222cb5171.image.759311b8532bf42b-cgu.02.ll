Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.02?download=true
inline.NumInlined: 1033
inline.NumDeleted: 460
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE3newBb_:bb.a
  %.sroa.40.sroa.0.0 = phi i8 [ %.sroa.40.sroa.0.2, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_bitmap_headerBb_.exit ], [ %.sroa.40.sroa.0.3, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE19read_graymap_headerBb_.exit ], [ %.sroa.40.sroa.0.4, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_pixmap_headerBb_.exit ], [ %.sroa.40.sroa.0.1, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21read_arbitrary_headerBb_.exit ]
  %i.cd = phi i8 [ 0, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_bitmap_headerBb_.exit ], [ %.sroa.61.3, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE19read_graymap_headerBb_.exit ], [ %.sroa.61.4, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_pixmap_headerBb_.exit ], [ %.sroa.61.1, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21read_arbitrary_headerBb_.exit ] ; 2 uses
  %.sroa.54.0 = phi i8 [ %.sroa.54.2, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_bitmap_headerBb_.exit ], [ %.sroa.54.3, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE19read_graymap_headerBb_.exit ], [ %.sroa.54.4, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_pixmap_headerBb_.exit ], [ %.sroa.54.1, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21read_arbitrary_headerBb_.exit ] ; 2 uses
  %i.ce = phi i32 [ %.sroa.49.2, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_bitmap_headerBb_.exit ], [ %.sroa.49.3, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE19read_graymap_headerBb_.exit ], [ %.sroa.49.4, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_pixmap_headerBb_.exit ], [ %.sroa.49.1, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21read_arbitrary_headerBb_.exit ] ; 4 uses
  %.sroa.39.0 = phi i32 [ %.sroa.39.2, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_bitmap_headerBb_.exit ], [ %.sroa.39.3, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE19read_graymap_headerBb_.exit ], [ %.sroa.39.4, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_pixmap_headerBb_.exit ], [ %.sroa.39.1, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21read_arbitrary_headerBb_.exit ] ; 2 uses
  %.sroa.34.0 = phi i16 [ %.sroa.34.2, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_bitmap_headerBb_.exit ], [ %.sroa.34.3, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE19read_graymap_headerBb_.exit ], [ %.sroa.34.4, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_pixmap_headerBb_.exit ], [ %.sroa.34.1, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21read_arbitrary_headerBb_.exit ] ; 2 uses
  %.sroa.27.0 = phi i8 [ %.sroa.27.2, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_bitmap_headerBb_.exit ], [ %.sroa.27.3, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE19read_graymap_headerBb_.exit ], [ %.sroa.27.4, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_pixmap_headerBb_.exit ], [ %.sroa.27.1, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21read_arbitrary_headerBb_.exit ] ; 2 uses
  %.sroa.18.0 = phi i8 [ %i.au, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_bitmap_headerBb_.exit ], [ %.sroa.18.3, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE19read_graymap_headerBb_.exit ], [ %.sroa.18.4, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_pixmap_headerBb_.exit ], [ %.sroa.18.1, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21read_arbitrary_headerBb_.exit ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %.sink.i, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_bitmap_headerBb_.exit ], [ %.sroa.0.2, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE19read_graymap_headerBb_.exit ], [ %.sroa.0.3, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_pixmap_headerBb_.exit ], [ %.sroa.0.1, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21read_arbitrary_headerBb_.exit ]
  %i.cf = phi <2 x i32> [ %i.az, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_bitmap_headerBb_.exit ], [ %i.bp, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE19read_graymap_headerBb_.exit ], [ %i.cb, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_pixmap_headerBb_.exit ], [ %i.as, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21read_arbitrary_headerBb_.exit ] ; 2 uses
  %i.cg = phi <2 x i32> [ %i.ba, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_bitmap_headerBb_.exit ], [ %i.bq, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE19read_graymap_headerBb_.exit ], [ %i.cc, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE18read_pixmap_headerBb_.exit ], [ %i.at, %_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderINtB5_10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21read_arbitrary_headerBb_.exit ] ; 3 uses
  %i.ch = icmp eq i64 %.sroa.0.0, -2
  %.sroa.40.sroa.20.0.insert.ext = zext i32 %.sroa.40.sroa.20.0 to i64
  %.sroa.40.sroa.20.0.insert.shift = shl nuw i64 %.sroa.40.sroa.20.0.insert.ext, 32
  %.sroa.40.sroa.19.0.insert.ext = zext i24 %.sroa.40.sroa.19.sroa.0.0 to i64
  %.sroa.40.sroa.19.0.insert.shift = shl nuw nsw i64 %.sroa.40.sroa.19.0.insert.ext, 8
  %.sroa.40.sroa.19.0.insert.insert = or disjoint i64 %.sroa.40.sroa.20.0.insert.shift, %.sroa.40.sroa.19.0.insert.shift
  %.sroa.40.sroa.0.0.insert.ext = zext i8 %.sroa.40.sroa.0.0 to i64
  %.sroa.40.sroa.0.0.insert.insert = or disjoint i64 %.sroa.40.sroa.19.0.insert.insert, %.sroa.40.sroa.0.0.insert.ext ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %.sroa.9.sroa.20, ptr noundef nonnull align 1 dereferenceable(27) %.sroa.55, i64 27, i1 false)
  br i1 %i.ch, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.55)
  %.sroa.14236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %.sroa.14236.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(27) %.sroa.9.sroa.20, i64 27, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.18.0, ptr %i.ci, align 8
  %.sroa.4226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.27.0, ptr %.sroa.4226.0..sroa_idx, align 1
  %.sroa.5227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %.sroa.34.0, ptr %.sroa.5227.0..sroa_idx, align 2
  %.sroa.6228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x i32> %i.cf, ptr %.sroa.6228.0..sroa_idx, align 4
  %.sroa.8230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.39.0, ptr %.sroa.8230.0..sroa_idx, align 4
  %.sroa.9231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.40.sroa.0.0.insert.insert, ptr %.sroa.9231.0..sroa_idx, align 8
  %.sroa.10232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.ce, ptr %.sroa.10232.0..sroa_idx, align 8
  %.sroa.11233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store <2 x i32> %i.cg, ptr %.sroa.11233.0..sroa_idx, align 4
  %.sroa.13235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 %.sroa.54.0, ptr %.sroa.13235.0..sroa_idx, align 4
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.20)
  br label %bb.am

.thread:                                          ; preds = %bb.ag
  %.sroa.55.72..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.55, i64 27
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.518.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.55.72..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.55)
  %.sroa.417.sroa.14.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %.sroa.417.sroa.14.0..sroa.417.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(27) %.sroa.9.sroa.20, i64 27, i1 false)
  store i64 -1, ptr %i.t, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i8 %.sroa.18.0, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 9
  store i8 %.sroa.27.0, ptr %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx, align 1
  %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 10
  store i16 %.sroa.34.0, ptr %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx, align 2
  %.sroa.417.sroa.6.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store <2 x i32> %i.cf, ptr %.sroa.417.sroa.6.0..sroa.417.0..sroa_idx.sroa_idx, align 4
  %.sroa.417.sroa.8.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  store i32 %.sroa.39.0, ptr %.sroa.417.sroa.8.0..sroa.417.0..sroa_idx.sroa_idx, align 4
  %.sroa.417.sroa.9.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 %.sroa.40.sroa.0.0.insert.insert, ptr %.sroa.417.sroa.9.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  %.sroa.417.sroa.10.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store i32 %i.ce, ptr %.sroa.417.sroa.10.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  %.sroa.417.sroa.11.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 36
  %i.cj = extractelement <2 x i32> %i.cg, i64 0   ; 2 uses
  store <2 x i32> %i.cg, ptr %.sroa.417.sroa.11.0..sroa.417.0..sroa_idx.sroa_idx, align 4
  %.sroa.417.sroa.13.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 44
  store i8 %.sroa.54.0, ptr %.sroa.417.sroa.13.0..sroa.417.0..sroa_idx.sroa_idx, align 4
  %.sroa.518.sroa.4.0..sroa.518.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  store i8 %i.cd, ptr %.sroa.518.sroa.4.0..sroa.518.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.20)
  %i.ck = add i64 %.sroa.40.sroa.0.0.insert.insert, 9223372036854775802 ; 2 uses
  %switch = icmp ult i64 %i.ck, 3                 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.t, i64 52
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.co = load i32, ptr %i.cn, align 8
  %.sroa.042.0238 = select i1 %switch, i32 %i.cj, i32 %i.cm
  %.sroa.043.0 = select i1 %switch, i32 %i.ce, i32 %i.co
  %i.cp = zext nneg i8 %i.cd to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder11total_bytesBb_, i64 %i.cp
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.cq = zext i32 %.sroa.042.0238 to i64
  %i.cr = zext i32 %.sroa.043.0 to i64
  %i.cs = mul nuw i64 %i.cr, %i.cq
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %switch.ext, i64 %i.cs)
  %mul.ov = extractvalue { i64, i1 } %mul, 1
  br i1 %mul.ov, label %.thread246, label %bb.aj

bb.ai:                                            ; preds = %bb.al
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder10PnmDecoderINtNtNtB4_2io6cursor6CursorRShEEEBK_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.t) #29
          to label %common.resume unwind label %bb.an

bb.aj:                                            ; preds = %.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.t, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ak

.thread246:                                       ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 4, ptr %i.ct, align 1
  store i8 0, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %switch283 = icmp ult i64 %i.ck, 3              ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.t, i64 52
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.cx = load i32, ptr %i.cw, align 8
  %.sink282 = select i1 %switch283, i32 %i.cj, i32 %i.cv ; 2 uses
  %.sink = select i1 %switch283, i32 %i.ce, i32 %i.cx ; 2 uses
  store i32 %.sink282, ptr %i.m, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %.sink, ptr %i.cy, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i32 %.sink282, ptr %i.l, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  store i32 %.sink, ptr %i.cz, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.m, ptr %i.k, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs8_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.451.0..sroa_idx, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.cz, ptr %i.da, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXs8_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull @51, ptr noundef nonnull %i.k)
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsa5QsYiPB8Gl_5image.exit unwind label %bb.al

bb.ak:                                            ; preds = %bb.b, %bb.e, %bb.am, %bb.aj
  ret void

bb.al:                                            ; preds = %.thread246
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.o) #29
          to label %bb.ai unwind label %bb.an

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsa5QsYiPB8Gl_5image.exit: ; preds = %.thread246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.sroa.421.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.421, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.421.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dc, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 8, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.527.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.421, i64 31, i1 false)
  store i64 -2, ptr %0, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder10PnmDecoderINtNtNtB4_2io6cursor6CursorRShEEEBK_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.t)
  br label %bb.am

bb.am:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsa5QsYiPB8Gl_5image.exit, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ak

bb.an:                                            ; preds = %bb.al, %bb.ai
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCsa5QsYiPB8Gl_5image6codecs3ddsINtB5_10DdsDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE3newB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.483 = alloca [31 x i8], align 1          ; 2 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.474 = alloca [31 x i8], align 1          ; 2 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.4 = alloca [31 x i8], align 1            ; 2 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %i.o = alloca [64 x i8], align 8                ; 11 uses
  %.sroa.6.sroa.761 = alloca [16 x i8], align 8   ; 7 uses
  %i.p = alloca [20 x i8], align 4                ; 8 uses
  %i.q = alloca [64 x i8], align 8                ; 22 uses
  %.sroa.6.sroa.9 = alloca [12 x i8], align 8     ; 7 uses
  %.sroa.6.sroa.15 = alloca [28 x i8], align 4    ; 7 uses
  %i.r = alloca [60 x i8], align 8                ; 15 uses
  %i.s = alloca [4 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i32 0, ptr %i.s, align 4
  %i.t = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull %i.s, i64 noundef 4) ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 9, ptr %0, align 8
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %.sroa.4113.0..sroa_idx, align 8
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.u = load i32, ptr %i.s, align 4, !noundef !5
  %.not212 = icmp eq i32 %i.u, 542327876
  br i1 %.not212, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.15)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RNvMs2_NtNtCsa5QsYiPB8Gl_5image6codecs3ddsNtB5_6Header11from_reader(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.q, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) @9)
  %i.v = load i8, ptr %i.q, align 8, !range !8, !noundef !5 ; 2 uses
  %.not213 = icmp eq i8 %i.v, -1
  br i1 %.not213, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @_RNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs3ddsNtNtB8_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12DecoderErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, i32 noundef 7, i32 undef)
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %.sroa.4133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %.sroa.4145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4145.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4133.0..sroa_idx, i64 3, i1 false)
  %.sroa.5134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.sroa.7136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %.sroa.7136.0.copyload = load i32, ptr %.sroa.7136.0..sroa_idx, align 4
  %.sroa.8137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6.sroa.9, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.8137.0..sroa_idx, i64 12, i1 false)
  %.sroa.9138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %.sroa.9138.0.copyload = load i32, ptr %.sroa.9138.0..sroa_idx, align 4
  %.sroa.10139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.14143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.sroa.15, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.14143.0..sroa_idx, i64 28, i1 false)
  %.sroa.8149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.14155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.sroa.5146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.7148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.9150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.10151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load <4 x i8>, ptr %.sroa.10139.0..sroa_idx, align 8
  %i.x = load <2 x i32>, ptr %.sroa.5134.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.8149.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6.sroa.9, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.14155.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.sroa.15, i64 28, i1 false)
  store i8 %i.v, ptr %0, align 8
  store <2 x i32> %i.x, ptr %.sroa.5146.0..sroa_idx, align 4
  store i32 %.sroa.7136.0.copyload, ptr %.sroa.7148.0..sroa_idx, align 4
  store i32 %.sroa.9138.0.copyload, ptr %.sroa.9150.0..sroa_idx, align 4
  store <4 x i8> %i.w, ptr %.sroa.10151.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.15)
  br label %bb.ao

bb.g:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.sroa.4116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.5117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %.sroa.5117.0.copyload = load i32, ptr %.sroa.5117.0..sroa_idx, align 4 ; 3 uses
  %.sroa.6118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6.sroa.9, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6118.0..sroa_idx, i64 12, i1 false)
  %.sroa.7119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %.sroa.7119.0.copyload = load i32, ptr %.sroa.7119.0..sroa_idx, align 4 ; 2 uses
  %.sroa.8120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.8120.0.copyload = load i8, ptr %.sroa.8120.0..sroa_idx, align 8 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 33
  %.sroa.9.0.copyload = load i8, ptr %.sroa.9.0..sroa_idx, align 1 ; 2 uses
  %.sroa.10121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 34
  %.sroa.10121.0.copyload = load i8, ptr %.sroa.10121.0..sroa_idx, align 2 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 35
  %.sroa.11.0.copyload = load i8, ptr %.sroa.11.0..sroa_idx, align 1 ; 3 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.sroa.15, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.12.0..sroa_idx, i64 28, i1 false)
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %.sroa.4116.0.copyload = load i32, ptr %.sroa.4116.0..sroa_idx, align 8 ; 2 uses
  %i.z = load <2 x i32>, ptr %i.y, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6.sroa.9, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.sroa.15, i64 28, i1 false)
  store <2 x i32> %i.z, ptr %i.r, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store i32 %.sroa.5117.0.copyload, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i32 %.sroa.7119.0.copyload, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 28 ; 2 uses
  store i8 %.sroa.8120.0.copyload, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 29
  store i8 %.sroa.9.0.copyload, ptr %.sroa.626.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 30
  store i8 %.sroa.10121.0.copyload, ptr %.sroa.7.0..sroa_idx, align 2
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 31
  store i8 %.sroa.11.0.copyload, ptr %.sroa.8.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.15)
  %i.aa = and i32 %.sroa.7119.0.copyload, 4
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 7, ptr %i.ac, align 1
  store i8 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ad = icmp eq i8 %.sroa.8120.0.copyload, 68
  %i.ae = icmp eq i8 %.sroa.9.0.copyload, 88
  %or.cond = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.r, label %bb.q

bb.j:                                             ; preds = %bb.l, %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #29
          to label %bb.ap unwind label %bb.p

bb.k:                                             ; preds = %bb.h
  %i.ag = load i64, ptr %i.a, align 8, !range !22, !noundef !5
  %i.ah = trunc nuw i64 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !28, !noundef !5 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ah, label %bb.l, label %bb.m, !prof !11

bb.l:                                             ; preds = %bb.k
  %i.al = load i64, ptr %i.ak, align 8
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.aj, i64 %i.al) #33
          to label %bb.o unwind label %bb.j

bb.m:                                             ; preds = %bb.k
  %i.am = load ptr, ptr %i.ak, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.an = icmp samesign ugt i64 %i.aj, 2
  call void @llvm.assume(i1 %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.am, ptr noundef nonnull align 1 dereferenceable(3) @52, i64 3, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %.sroa.4108.0..sroa_idx, align 8
  %.sroa.5109.sroa.4.0..sroa.5109.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.aj, ptr %.sroa.5109.sroa.4.0..sroa.5109.0..sroa_idx.sroa_idx, align 8
  %.sroa.5109.sroa.5.0..sroa.5109.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.am, ptr %.sroa.5109.sroa.5.0..sroa.5109.0..sroa_idx.sroa_idx, align 8
  %.sroa.5109.sroa.6.0..sroa.5109.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 3, ptr %.sroa.5109.sroa.6.0..sroa.5109.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.n

bb.n:                                             ; preds = %bb.b, %bb.ao, %bb.e, %bb.al, %bb.ak, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  ret void

bb.o:                                             ; preds = %bb.l
  unreachable

bb.p:                                             ; preds = %bb.an, %bb.am, %bb.ae, %bb.j
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.q:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %.sroa.5.0..sroa_idx, ptr %i.k, align 8, !captures !1118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 7, ptr %i.ap, align 1
  store i8 0, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.k, ptr %i.h, align 8
  %.sroa.4182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRAhj4_NtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.4182.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull @54, ptr noundef nonnull %i.h)
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsa5QsYiPB8Gl_5image.exit unwind label %bb.an

bb.r:                                             ; preds = %bb.i
  switch i8 %.sroa.10121.0.copyload, label %bb.q [
    i8 84, label %bb.s
    i8 49, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  switch i8 %.sroa.11.0.copyload, label %bb.q [
    i8 49, label %bb.ah
    i8 51, label %bb.ag
    i8 53, label %bb.u
  ]

bb.t:                                             ; preds = %bb.r
  %i.aq = icmp eq i8 %.sroa.11.0.copyload, 48
  br i1 %i.aq, label %bb.v, label %bb.q

bb.u:                                             ; preds = %bb.s
  br label %bb.ah

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.761)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvMs3_NtNtCsa5QsYiPB8Gl_5image6codecs3ddsNtB5_10DX10Header11from_reader(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.o, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) @9)
  %i.ar = load i8, ptr %i.o, align 8, !range !8, !noundef !5 ; 2 uses
  %.not214 = icmp eq i8 %i.ar, -1
  br i1 %.not214, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.4164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %.sroa.4169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4169.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4164.0..sroa_idx, i64 3, i1 false)
  %.sroa.5165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.sroa.5165.0.copyload = load i32, ptr %.sroa.5165.0..sroa_idx, align 4
  %.sroa.6166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.761, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6166.0..sroa_idx, i64 16, i1 false)
  %.sroa.7167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.7172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7172.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7167.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.sroa.6171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6171.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.761, i64 16, i1 false)
  store i8 %i.ar, ptr %0, align 8
  %.sroa.5170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.5165.0.copyload, ptr %.sroa.5170.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.761)
  br label %bb.af

bb.x:                                             ; preds = %bb.v
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.sroa.0156.0.copyload = load i32, ptr %i.as, align 4 ; 4 uses
  %.sroa.4157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.761, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4157.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.sroa.857.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.857.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.761, i64 16, i1 false)
  store i32 %.sroa.0156.0.copyload, ptr %i.p, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.761)
  %i.at = add i32 %.sroa.0156.0.copyload, -70
  %or.cond6 = icmp ult i32 %i.at, 3
  br i1 %or.cond6, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.au = add i32 %.sroa.0156.0.copyload, -73
  %or.cond8 = icmp ult i32 %i.au, 3
  br i1 %or.cond8, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ah

bb.aa:                                            ; preds = %bb.y
  %i.av = add i32 %.sroa.0156.0.copyload, -76
  %or.cond10 = icmp ult i32 %i.av, 3
  br i1 %or.cond10, label %bb.ad, label %bb.ac

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ah

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 7, ptr %i.aw, align 1
  store i8 0, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.p, ptr %i.l, align 8
  %.sroa.4176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs8_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.4176.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull @53, ptr noundef nonnull %i.l)
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsa5QsYiPB8Gl_5image.exit222 unwind label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.n) #29
          to label %bb.ap unwind label %bb.p

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsa5QsYiPB8Gl_5image.exit222: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 8, ptr %.sroa.471.0..sroa_idx, align 8
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.572.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsa5QsYiPB8Gl_5image.exit222, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ao

bb.ag:                                            ; preds = %bb.s
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.s, %bb.z, %bb.u, %bb.ad, %bb.ab
  %.sroa.081.0 = phi i64 [ 3, %bb.z ], [ 3, %bb.s ], [ 4, %bb.u ], [ 4, %bb.ad ], [ 4, %bb.ab ], [ 4, %bb.ag ]
  %.sroa.039.2 = phi i8 [ 0, %bb.z ], [ 0, %bb.s ], [ 2, %bb.u ], [ 2, %bb.ad ], [ 1, %bb.ab ], [ 1, %bb.ag ]
  %i.ay = zext i32 %.sroa.5117.0.copyload to i64
  %i.az = zext i32 %.sroa.4116.0.copyload to i64
  %i.ba = mul nuw i64 %i.ay, %i.az
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.081.0, i64 %i.ba)
  %mul.ov = extractvalue { i64, i1 } %mul, 1
  br i1 %mul.ov, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RNvMs_NtNtCsa5QsYiPB8Gl_5image6codecs3dxtINtB4_10DxtDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE3newB8_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, i32 noundef %.sroa.5117.0.copyload, i32 noundef %.sroa.4116.0.copyload, i8 noundef %.sroa.039.2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bb = load i8, ptr %i.b, align 8, !range !8, !noundef !5 ; 2 uses
  %.not215 = icmp eq i8 %i.bb, -1
  br i1 %.not215, label %bb.al, label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 7, ptr %i.bc, align 1
  store i8 0, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %.sroa.3.0..sroa_idx, ptr %i.e, align 8
  %.sroa.4188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs8_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.4188.0..sroa_idx, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.2.0..sroa_idx, ptr %i.bd, align 8
  %.sroa.4192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs8_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.4192.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @51, ptr noundef nonnull %i.e)
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsa5QsYiPB8Gl_5image.exit223 unwind label %bb.am

bb.ak:                                            ; preds = %bb.ai
  %.sroa.4199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.5200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.5203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5203.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5200.0..sroa_idx, i64 16, i1 false)
  %.sroa.4202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.4202.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.4199.0..sroa_idx, i64 47, i1 false)
  store i8 %i.bb, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.n

bb.al:                                            ; preds = %bb.ai
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bf, ptr noundef nonnull align 8 dereferenceable(40) %i.be, i64 40, i1 false)
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.n

bb.am:                                            ; preds = %bb.aj
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #29
          to label %bb.ap unwind label %bb.p

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsa5QsYiPB8Gl_5image.exit223: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.483.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.483, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.483.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 8, ptr %.sroa.488.0..sroa_idx, align 8
  %.sroa.589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.589.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.483, i64 31, i1 false)
  br label %bb.ao

bb.an:                                            ; preds = %bb.q
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.j) #29
          to label %bb.ap unwind label %bb.p

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.sroa.474.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.474, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.474.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 8, ptr %.sroa.479.0..sroa_idx, align 8
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.580.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.474, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.af, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsa5QsYiPB8Gl_5image.exit, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsa5QsYiPB8Gl_5image.exit223, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.n

bb.ap:                                            ; preds = %bb.j, %bb.ae, %bb.am, %bb.an
  %.pn = phi { ptr, i32 } [ %i.af, %bb.j ], [ %i.bh, %bb.an ], [ %i.bg, %bb.am ], [ %i.ax, %bb.ae ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCsa5QsYiPB8Gl_5image6images8dynimageNtB4_12DynamicImage10into_bytes(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = load i64, ptr %1, align 8, !range !23, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  switch i64 %i.m, label %default.unreachable130 [
    i64 0, label %bb.b
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.h
    i64 4, label %bb.k
    i64 5, label %bb.u
    i64 6, label %bb.ae
    i64 7, label %bb.ao
    i64 8, label %bb.ay
    i64 9, label %bb.bi
  ]

default.unreachable130:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %.sroa.0119.0.copyload = load i64, ptr %i.n, align 8
  %.sroa.4120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4120.0.copyload = load ptr, ptr %.sroa.4120.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.o = icmp sgt i64 %.sroa.5.0.copyload, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %.sroa.0119.0.copyload, ptr %0, align 8
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4120.0.copyload, ptr %.sroa.6.8..sroa_idx, align 8
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.copyload, ptr %.sroa.8.8..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.b, %bb.bg, %bb.aw, %bb.am, %bb.ac, %bb.s, %bb.i
  ret void

bb.d:                                             ; preds = %bb.bk, %bb.ba, %bb.aq, %bb.ag, %bb.w, %bb.m
  unreachable

bb.e:                                             ; preds = %bb.bh, %bb.ax, %bb.an, %bb.ad, %bb.t, %bb.j
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %bb.bn, %bb.bd, %bb.at, %bb.aj, %bb.z, %bb.p, %bb.j, %bb.t, %bb.ad, %bb.an, %bb.ax, %bb.bh
  %common.resume.op = phi { ptr, i32 } [ %i.dd, %bb.bd ], [ %i.al, %bb.t ], [ %i.aj, %bb.p ], [ %i.bb, %bb.z ], [ %i.bt, %bb.aj ], [ %i.cl, %bb.at ], [ %i.df, %bb.bh ], [ %i.cn, %bb.ax ], [ %i.bv, %bb.an ], [ %i.bd, %bb.ad ], [ %i.t, %bb.j ], [ %i.dv, %bb.bn ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.a
  %.sroa.0121.0.copyload = load i64, ptr %i.n, align 8
  %.sroa.4122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4122.0.copyload = load ptr, ptr %.sroa.4122.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %.sroa.5123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5123.0.copyload = load i64, ptr %.sroa.5123.0..sroa_idx, align 8 ; 2 uses
  %i.q = icmp sgt i64 %.sroa.5123.0.copyload, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %.sroa.0121.0.copyload, ptr %0, align 8
  %.sroa.658.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4122.0.copyload, ptr %.sroa.658.8..sroa_idx, align 8
  %.sroa.859.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5123.0.copyload, ptr %.sroa.859.8..sroa_idx, align 8
  br label %bb.c

bb.g:                                             ; preds = %bb.a
  %.sroa.0124.0.copyload = load i64, ptr %i.n, align 8
  %.sroa.4125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4125.0.copyload = load ptr, ptr %.sroa.4125.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %.sroa.5126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5126.0.copyload = load i64, ptr %.sroa.5126.0..sroa_idx, align 8 ; 2 uses
  %i.r = icmp sgt i64 %.sroa.5126.0.copyload, -1
  tail call void @llvm.assume(i1 %i.r)
  store i64 %.sroa.0124.0.copyload, ptr %0, align 8
  %.sroa.663.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4125.0.copyload, ptr %.sroa.663.8..sroa_idx, align 8
  %.sroa.864.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5126.0.copyload, ptr %.sroa.864.8..sroa_idx, align 8
  br label %bb.c

bb.h:                                             ; preds = %bb.a
  %.sroa.0127.0.copyload = load i64, ptr %i.n, align 8
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4128.0.copyload = load ptr, ptr %.sroa.4128.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %.sroa.5129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5129.0.copyload = load i64, ptr %.sroa.5129.0..sroa_idx, align 8 ; 2 uses
  %i.s = icmp sgt i64 %.sroa.5129.0.copyload, -1
  tail call void @llvm.assume(i1 %i.s)
  store i64 %.sroa.0127.0.copyload, ptr %0, align 8
  %.sroa.668.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4128.0.copyload, ptr %.sroa.668.8..sroa_idx, align 8
  %.sroa.869.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5129.0.copyload, ptr %.sroa.869.8..sroa_idx, align 8
  br label %bb.c

bb.i:                                             ; preds = %bb.o
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.c

bb.j:                                             ; preds = %bb.m, %bb.k
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #29
          to label %common.resume unwind label %bb.e

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noundef !5 ; 2 uses
  %i.y = shl nuw nsw i64 %i.x, 1                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %i.y, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.l unwind label %bb.j

bb.l:                                             ; preds = %bb.k
  %i.z = load i64, ptr %i.f, align 8, !range !22, !noundef !5
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !28, !noundef !5 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.aa, label %bb.m, label %bb.n, !prof !11

bb.m:                                             ; preds = %bb.l
  %i.ae = load i64, ptr %i.ad, align 8
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ac, i64 %i.ae) #33
          to label %bb.d unwind label %bb.j

bb.n:                                             ; preds = %bb.l
  %i.af = load ptr, ptr %i.ad, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ag = icmp samesign ule i64 %i.y, %i.ac
  tail call void @llvm.assume(i1 %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.ac, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ah, align 8
end_hunk_0
