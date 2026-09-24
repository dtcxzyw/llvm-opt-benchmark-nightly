Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/tensor_tools.tensor_tools.f3cbf8f2a35afc65-cgu.07?download=true
inline.NumInlined: 208
inline.NumDeleted: 108
begin_hunk_0_@_RINvMs1_NtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_fileNtB6_5Value5writeNtNtCs5Xr050g3D4S_3std2fs4FileECskVIURZGHVHJ_12tensor_tools:bb.a
  %.not113 = icmp eq ptr %i.cs, null
  br i1 %.not113, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store i64 -9223372036854775774, ptr %0, align 8
  %.sroa.4105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cs, ptr %.sroa.4105.0..sroa_idx, align 8
  br label %bb.q

bb.as:                                            ; preds = %bb.aq
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.bw, 5
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.idx
  br i1 %i.by, label %_RINvNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file12write_stringNtNtCs5Xr050g3D4S_3std2fs4FileECskVIURZGHVHJ_12tensor_tools.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.as, %bb.au
  %.sroa.048.0150 = phi ptr [ %i.cx, %bb.au ], [ %i.cu, %bb.as ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call fastcc void @_RINvMs1_NtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_fileNtB6_5Value5writeNtNtCs5Xr050g3D4S_3std2fs4FileECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.048.0150, ptr noalias nofree noundef align 4 dereferenceable(4) %2)
  %i.cw = load i64, ptr %i.z, align 8, !range !8, !noundef !5
  %.not114 = icmp eq i64 %i.cw, -1
  br i1 %.not114, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.z, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.q

bb.au:                                            ; preds = %.lr.ph
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.048.0150, i64 32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.cy = icmp eq ptr %i.cx, %i.cv
  br i1 %i.cy, label %_RINvNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file12write_stringNtNtCs5Xr050g3D4S_3std2fs4FileECskVIURZGHVHJ_12tensor_tools.exit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtCscWUIX17zZnI_3zip5typesNtB6_11ZipFileData12find_contentINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(48) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.d = load atomic i32, ptr %i.c acquire, align 8, !noalias !186
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noalias !187, !noundef !5
  %i.h = tail call { i64, ptr } @_RNvXs7_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtNtCsf3Ta7LF998c_4core2io4seek4Seek4seekCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2, i64 noundef 0, i64 noundef %i.g), !noalias !188 ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %_RINvMs2_NtCscWUIX17zZnI_3zip5typesNtB6_11ZipFileData15find_data_startINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread27.i, label %bb.c

_RINvMs2_NtCscWUIX17zZnI_3zip5typesNtB6_11ZipFileData15find_data_startINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread27.i: ; preds = %bb.b
  %i.k = extractvalue { i64, ptr } %i.h, 1
  %i.l = ptrtoint ptr %i.k to i64
  br label %_RINvMs2_NtCscWUIX17zZnI_3zip5typesNtB6_11ZipFileData10data_startINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !187
  call void @_RINvYNtNtCscWUIX17zZnI_3zip4spec18ZipLocalEntryBlockNtB5_14FixedSizeBlock5parseINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2), !noalias !188
  %i.m = load i8, ptr %i.b, align 8, !range !10, !noalias !187, !noundef !5
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_RINvMs2_NtCscWUIX17zZnI_3zip5typesNtB6_11ZipFileData15find_data_startINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  %.sroa.11.0.copyload.i.i = load i16, ptr %.sroa.11.0..sroa_idx.i.i, align 1, !noalias !187
  %.sroa.1238.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  %.sroa.1238.0.copyload.i.i = load i16, ptr %.sroa.1238.0..sroa_idx.i.i, align 1, !noalias !187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !187
  %i.o = zext i16 %.sroa.11.0.copyload.i.i to i64
  %i.p = zext i16 %.sroa.1238.0.copyload.i.i to i64
  %i.q = load i64, ptr %i.f, align 8, !noalias !187, !noundef !5
  %i.r = add nuw nsw i64 %i.o, 30
  %i.s = add nuw nsw i64 %i.r, %i.p
  %i.t = add i64 %i.s, %i.q                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !189
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.t, ptr %i.u, align 8, !noalias !189
  store i64 1, ptr %i.a, align 8, !noalias !189
  %i.v = load atomic i32, ptr %i.c acquire, align 8, !noalias !189
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_RINvMs2_NtCscWUIX17zZnI_3zip5typesNtB6_11ZipFileData15find_data_startINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i, label %bb.e, !prof !6

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @_RINvMNtNtCs5Xr050g3D4S_3std4sync9once_lockINtB3_8OnceLockyE10initializeNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECskVIURZGHVHJ_12tensor_tools(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.a), !noalias !190
  br label %_RINvMs2_NtCscWUIX17zZnI_3zip5typesNtB6_11ZipFileData15find_data_startINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i

_RINvMs2_NtCscWUIX17zZnI_3zip5typesNtB6_11ZipFileData15find_data_startINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !189
  br label %bb.g

_RINvMs2_NtCscWUIX17zZnI_3zip5typesNtB6_11ZipFileData15find_data_startINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.i: ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.047.0.copyload.i.i = load i64, ptr %i.y, align 8, !noalias !186 ; 2 uses
  %.sroa.650.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.650.0.copyload.i18.i = load i64, ptr %.sroa.650.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !186 ; 2 uses
  %.sroa.852.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.852.0.copyload.i20.i = load i64, ptr %.sroa.852.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !187
  %.not.i = icmp eq i64 %.sroa.047.0.copyload.i.i, -2
  br i1 %.not.i, label %bb.g, label %_RINvMs2_NtCscWUIX17zZnI_3zip5typesNtB6_11ZipFileData10data_startINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit

bb.f:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.aa = load i64, ptr %i.z, align 8, !noalias !186, !noundef !5
  br label %bb.g

_RINvMs2_NtCscWUIX17zZnI_3zip5typesNtB6_11ZipFileData10data_startINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit: ; preds = %_RINvMs2_NtCscWUIX17zZnI_3zip5typesNtB6_11ZipFileData15find_data_startINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.i, %_RINvMs2_NtCscWUIX17zZnI_3zip5typesNtB6_11ZipFileData15find_data_startINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread27.i
  %.sroa.10.0 = phi i64 [ %.sroa.852.0.copyload.i20.i, %_RINvMs2_NtCscWUIX17zZnI_3zip5typesNtB6_11ZipFileData15find_data_startINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.i ], [ undef, %_RINvMs2_NtCscWUIX17zZnI_3zip5typesNtB6_11ZipFileData15find_data_startINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread27.i ]
  %.sroa.6.0 = phi i64 [ %.sroa.650.0.copyload.i18.i, %_RINvMs2_NtCscWUIX17zZnI_3zip5typesNtB6_11ZipFileData15find_data_startINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.i ], [ %i.l, %_RINvMs2_NtCscWUIX17zZnI_3zip5typesNtB6_11ZipFileData15find_data_startINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread27.i ]
  %.sroa.0.0 = phi i64 [ %.sroa.047.0.copyload.i.i, %_RINvMs2_NtCscWUIX17zZnI_3zip5typesNtB6_11ZipFileData15find_data_startINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.i ], [ -9223372036854775808, %_RINvMs2_NtCscWUIX17zZnI_3zip5typesNtB6_11ZipFileData15find_data_startINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread27.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0, ptr %i.ab, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.422.0..sroa_idx, align 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.10.0, ptr %.sroa.523.0..sroa_idx, align 8
  br label %bb.j

bb.g:                                             ; preds = %_RINvMs2_NtCscWUIX17zZnI_3zip5typesNtB6_11ZipFileData15find_data_startINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.i, %bb.f, %_RINvMs2_NtCscWUIX17zZnI_3zip5typesNtB6_11ZipFileData15find_data_startINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i
  %.sroa.6.0.ph = phi i64 [ %i.aa, %bb.f ], [ %i.t, %_RINvMs2_NtCscWUIX17zZnI_3zip5typesNtB6_11ZipFileData15find_data_startINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i ], [ %.sroa.650.0.copyload.i18.i, %_RINvMs2_NtCscWUIX17zZnI_3zip5typesNtB6_11ZipFileData15find_data_startINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.i ]
  %i.ac = call { i64, ptr } @_RNvXs7_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtNtCsf3Ta7LF998c_4core2io4seek4Seek4seekCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2, i64 noundef 0, i64 noundef %.sroa.6.0.ph) ; 2 uses
  %i.ad = extractvalue { i64, ptr } %i.ac, 0
  %i.ae = trunc nuw i64 %i.ad to i1
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = extractvalue { i64, ptr } %i.ac, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.ag, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.af, ptr %.sroa.425.0..sroa_idx, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !5 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.aj, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ai, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ai, ptr %.sroa.514.0..sroa_idx, align 8
  br label %bb.j

bb.j:                                             ; preds = %_RINvMs2_NtCscWUIX17zZnI_3zip5typesNtB6_11ZipFileData10data_startINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit, %bb.h, %bb.i
  %.sink = phi i64 [ 1, %_RINvMs2_NtCscWUIX17zZnI_3zip5typesNtB6_11ZipFileData10data_startINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit ], [ 1, %bb.h ], [ 0, %bb.i ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs3_NtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_fileNtB6_7Content4readNtNtCs5Xr050g3D4S_3std2fs4FileECskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef align 4 dereferenceable(4) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [4 x i8], align 4                 ; 6 uses
  %i.c = alloca [4 x i8], align 4                 ; 6 uses
  %i.d = alloca [4 x i8], align 4                 ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 6 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [4 x i8], align 4                 ; 6 uses
  %i.h = alloca [4 x i8], align 4                 ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [80 x i8], align 8                ; 5 uses
  %i.k = alloca [4 x i8], align 4                 ; 5 uses
  %i.l = alloca [80 x i8], align 8                ; 6 uses
  %.sroa.0139 = alloca [96 x i8], align 8         ; 5 uses
  %i.m = alloca [40 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [40 x i8], align 8                ; 4 uses
  %i.p = alloca [80 x i8], align 8                ; 7 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 9 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 9 uses
  %i.u = alloca [24 x i8], align 8                ; 10 uses
  %i.v = alloca [48 x i8], align 8                ; 9 uses
  %i.w = alloca [24 x i8], align 8                ; 2 uses
  %i.x = alloca [80 x i8], align 8                ; 5 uses
  %i.y = alloca [80 x i8], align 8                ; 4 uses
  %i.z = alloca [4 x i8], align 4                 ; 5 uses
  %i.aa = alloca [80 x i8], align 8               ; 7 uses
  %.sroa.687 = alloca [24 x i8], align 8          ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 8 uses
  %i.ac = alloca [48 x i8], align 8               ; 10 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [32 x i8], align 8               ; 5 uses
  %i.af = alloca [32 x i8], align 8               ; 2 uses
  %i.ag = alloca [80 x i8], align 8               ; 7 uses
  %.sroa.676 = alloca [32 x i8], align 8          ; 6 uses
  %i.ah = alloca [80 x i8], align 8               ; 7 uses
  %i.ai = alloca [80 x i8], align 8               ; 7 uses
  %.sroa.655 = alloca [24 x i8], align 8          ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 7 uses
  %i.ak = alloca [48 x i8], align 8               ; 11 uses
  %i.al = alloca [64 x i8], align 8               ; 11 uses
  %2 = alloca [80 x i8], align 8                  ; 5 uses
  %i.am = alloca [80 x i8], align 8               ; 4 uses
  %i.an = alloca [8 x i8], align 8                ; 5 uses
  %i.ao = alloca [8 x i8], align 8                ; 5 uses
  %i.ap = alloca [32 x i8], align 8               ; 7 uses
  %3 = alloca [80 x i8], align 8                  ; 5 uses
  %i.aq = alloca [80 x i8], align 8               ; 4 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %4 = alloca [80 x i8], align 8                  ; 5 uses
  %i.as = alloca [80 x i8], align 8               ; 4 uses
  %i.at = alloca [80 x i8], align 8               ; 7 uses
  %i.au = alloca [8 x i8], align 8                ; 6 uses
  %i.av = alloca [8 x i8], align 8                ; 6 uses
  %i.aw = alloca [80 x i8], align 8               ; 11 uses
  %i.ax = tail call { i64, ptr } @_RNvXsc_NtCs5Xr050g3D4S_3std2fsNtB5_4FileNtNtNtCsf3Ta7LF998c_4core2io4seek4Seek15stream_position(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %1) ; 2 uses
  %i.ay = extractvalue { i64, ptr } %i.ax, 0
  %i.az = extractvalue { i64, ptr } %i.ax, 1      ; 2 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = trunc nuw i64 %i.ay to i1
  br i1 %i.bb, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775774, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 -1, ptr %i.bc, align 8
  br label %bb.ar

bb.c:                                             ; preds = %bb.a
  %i.bd = tail call { i64, ptr } @_RNvXsc_NtCs5Xr050g3D4S_3std2fsNtB5_4FileNtNtNtCsf3Ta7LF998c_4core2io4seek4Seek4seek(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %1, i64 noundef 1, i64 noundef 0) ; 2 uses
  %i.be = extractvalue { i64, ptr } %i.bd, 0
  %i.bf = extractvalue { i64, ptr } %i.bd, 1      ; 2 uses
  %i.bg = ptrtoint ptr %i.bf to i64               ; 4 uses
  %i.bh = trunc nuw i64 %i.be to i1
  br i1 %i.bh, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 -9223372036854775774, ptr %0, align 8
  %.sroa.4393.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %.sroa.4393.0..sroa_idx, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 -1, ptr %i.bi, align 8
  br label %bb.ar

bb.e:                                             ; preds = %bb.c
  %i.bj = tail call { i64, ptr } @_RNvXsc_NtCs5Xr050g3D4S_3std2fsNtB5_4FileNtNtNtCsf3Ta7LF998c_4core2io4seek4Seek4seek(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %1, i64 noundef 0, i64 noundef %i.ba) ; 2 uses
  %i.bk = extractvalue { i64, ptr } %i.bj, 0
  %i.bl = trunc nuw i64 %i.bk to i1
  br i1 %i.bl, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bm = extractvalue { i64, ptr } %i.bj, 1
  store i64 -9223372036854775774, ptr %0, align 8
  %.sroa.4396.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bm, ptr %.sroa.4396.0..sroa_idx, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 -1, ptr %i.bn, align 8
  br label %bb.ar

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !222
  store i32 0, ptr %i.h, align 4, !noalias !222
  %i.bo = call noundef ptr @_RNvYNtNtCs5Xr050g3D4S_3std2fs4FileNtNtNtCsgCecv3eZDcN_5alloc2io4read4Read10read_exactCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %1, ptr noalias nofree noundef nonnull %i.h, i64 noundef 4), !noalias !223 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i, label %bb.h, label %_RINvMs_NtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_fileNtB5_14VersionedMagic4readNtNtCs5Xr050g3D4S_3std2fs4FileECskVIURZGHVHJ_12tensor_tools.exit.thread420

_RINvMs_NtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_fileNtB5_14VersionedMagic4readNtNtCs5Xr050g3D4S_3std2fs4FileECskVIURZGHVHJ_12tensor_tools.exit.thread420: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !222
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.bo, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !221, !noalias !224
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = trunc i64 %i.bp to i8
  br label %_RINvMs_NtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_fileNtB5_14VersionedMagic4readNtNtCs5Xr050g3D4S_3std2fs4FileECskVIURZGHVHJ_12tensor_tools.exit._crit_edge

bb.h:                                             ; preds = %bb.g
  %.val.i.i = load i32, ptr %i.h, align 4, !noalias !222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !225
  call void @_RNvXNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_fileNtB2_5MagicINtNtCsf3Ta7LF998c_4core7convert7TryFrommE8try_from(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.l, i32 noundef %.val.i.i), !noalias !221
  %i.br = load i64, ptr %i.l, align 8, !range !8, !noalias !225, !noundef !5
  %.not.i = icmp eq i64 %i.br, -1
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aw, ptr noundef nonnull align 8 dereferenceable(80) %i.l, i64 80, i1 false), !noalias !224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !225
  br label %_RINvMs_NtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_fileNtB5_14VersionedMagic4readNtNtCs5Xr050g3D4S_3std2fs4FileECskVIURZGHVHJ_12tensor_tools.exit

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !226
  store i32 0, ptr %i.g, align 4, !noalias !226
  %i.bs = call noundef ptr @_RNvYNtNtCs5Xr050g3D4S_3std2fs4FileNtNtNtCsgCecv3eZDcN_5alloc2io4read4Read10read_exactCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %1, ptr noalias nofree noundef nonnull %i.g, i64 noundef 4), !noalias !227 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.bs, null
  br i1 %.not.i23.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !226
  store i64 -9223372036854775774, ptr %i.aw, align 8, !alias.scope !221, !noalias !224
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.bs, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !221, !noalias !224
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %.val.i25.i = load i32, ptr %i.g, align 4, !noalias !226 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !226
  store i32 %.val.i25.i, ptr %i.k, align 4, !noalias !225
  %switch.tableidx.i = add i32 %.val.i25.i, -1    ; 2 uses
  %i.bt = icmp ult i32 %switch.tableidx.i, 3
  br i1 %i.bt, label %_RINvMs_NtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_fileNtB5_14VersionedMagic4readNtNtCs5Xr050g3D4S_3std2fs4FileECskVIURZGHVHJ_12tensor_tools.exit.thread, label %.split.i

.split.i:                                         ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !225
  store ptr %i.a, ptr %i.i, align 8, !noalias !225
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs4_NtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_fileNtB5_5MagicNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !225
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.k, ptr %i.bu, align 8, !noalias !225
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXs8_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !225
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bv, ptr noundef nonnull @22, ptr noundef nonnull %i.i), !noalias !221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !225
  store i64 -9223372036854775766, ptr %i.j, align 8, !noalias !225
  call void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.aw, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !225
  br label %bb.m

_RINvMs_NtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_fileNtB5_14VersionedMagic4readNtNtCs5Xr050g3D4S_3std2fs4FileECskVIURZGHVHJ_12tensor_tools.exit.thread: ; preds = %bb.l
  %switch.idx.cast.i = trunc nuw nsw i32 %switch.tableidx.i to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !225
  br label %_RINvMs_NtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_fileNtB5_14VersionedMagic4readNtNtCs5Xr050g3D4S_3std2fs4FileECskVIURZGHVHJ_12tensor_tools.exit._crit_edge613

bb.m:                                             ; preds = %.split.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !225
  br label %_RINvMs_NtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_fileNtB5_14VersionedMagic4readNtNtCs5Xr050g3D4S_3std2fs4FileECskVIURZGHVHJ_12tensor_tools.exit

_RINvMs_NtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_fileNtB5_14VersionedMagic4readNtNtCs5Xr050g3D4S_3std2fs4FileECskVIURZGHVHJ_12tensor_tools.exit: ; preds = %bb.i, %bb.m
  %.pr = load i64, ptr %i.aw, align 8             ; 2 uses
  %.not = icmp eq i64 %.pr, -1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 8 ; 2 uses
  br i1 %.not, label %_RINvMs_NtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_fileNtB5_14VersionedMagic4readNtNtCs5Xr050g3D4S_3std2fs4FileECskVIURZGHVHJ_12tensor_tools.exit._crit_edge613, label %_RINvMs_NtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_fileNtB5_14VersionedMagic4readNtNtCs5Xr050g3D4S_3std2fs4FileECskVIURZGHVHJ_12tensor_tools.exit._crit_edge

_RINvMs_NtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_fileNtB5_14VersionedMagic4readNtNtCs5Xr050g3D4S_3std2fs4FileECskVIURZGHVHJ_12tensor_tools.exit._crit_edge: ; preds = %_RINvMs_NtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_fileNtB5_14VersionedMagic4readNtNtCs5Xr050g3D4S_3std2fs4FileECskVIURZGHVHJ_12tensor_tools.exit, %_RINvMs_NtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_fileNtB5_14VersionedMagic4readNtNtCs5Xr050g3D4S_3std2fs4FileECskVIURZGHVHJ_12tensor_tools.exit.thread420
  %.sroa.4153.0.copyload = phi i8 [ %i.bq, %_RINvMs_NtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_fileNtB5_14VersionedMagic4readNtNtCs5Xr050g3D4S_3std2fs4FileECskVIURZGHVHJ_12tensor_tools.exit.thread420 ], [ %.pre, %_RINvMs_NtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_fileNtB5_14VersionedMagic4readNtNtCs5Xr050g3D4S_3std2fs4FileECskVIURZGHVHJ_12tensor_tools.exit ]
  %i.bw = phi i64 [ -9223372036854775774, %_RINvMs_NtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_fileNtB5_14VersionedMagic4readNtNtCs5Xr050g3D4S_3std2fs4FileECskVIURZGHVHJ_12tensor_tools.exit.thread420 ], [ %.pr, %_RINvMs_NtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_fileNtB5_14VersionedMagic4readNtNtCs5Xr050g3D4S_3std2fs4FileECskVIURZGHVHJ_12tensor_tools.exit ]
  %.sroa.5154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 9
  %.sroa.5157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.5157.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.5154.0..sroa_idx, i64 71, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  store i64 %i.bw, ptr %0, align 8
  %.sroa.4156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.4153.0.copyload, ptr %.sroa.4156.0..sroa_idx, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 -1, ptr %i.bx, align 8
  br label %bb.ar

_RINvMs_NtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_fileNtB5_14VersionedMagic4readNtNtCs5Xr050g3D4S_3std2fs4FileECskVIURZGHVHJ_12tensor_tools.exit._crit_edge613: ; preds = %_RINvMs_NtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_fileNtB5_14VersionedMagic4readNtNtCs5Xr050g3D4S_3std2fs4FileECskVIURZGHVHJ_12tensor_tools.exit, %_RINvMs_NtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_fileNtB5_14VersionedMagic4readNtNtCs5Xr050g3D4S_3std2fs4FileECskVIURZGHVHJ_12tensor_tools.exit.thread
  %i.by = phi i8 [ %switch.idx.cast.i, %_RINvMs_NtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_fileNtB5_14VersionedMagic4readNtNtCs5Xr050g3D4S_3std2fs4FileECskVIURZGHVHJ_12tensor_tools.exit.thread ], [ %.pre, %_RINvMs_NtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_fileNtB5_14VersionedMagic4readNtNtCs5Xr050g3D4S_3std2fs4FileECskVIURZGHVHJ_12tensor_tools.exit ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.bz = icmp eq i8 %i.by, 0                     ; 3 uses
  br i1 %i.bz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RINvMs_NtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_fileNtB5_14VersionedMagic4readNtNtCs5Xr050g3D4S_3std2fs4FileECskVIURZGHVHJ_12tensor_tools.exit._crit_edge613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !228
  store i32 0, ptr %i.f, align 4, !noalias !228
  %i.ca = call noundef ptr @_RNvYNtNtCs5Xr050g3D4S_3std2fs4FileNtNtNtCsgCecv3eZDcN_5alloc2io4read4Read10read_exactCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %1, ptr noalias nofree noundef nonnull %i.f, i64 noundef 4), !noalias !229 ; 2 uses
  %.not.i.i344 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i344, label %bb.q, label %bb.p

bb.o:                                             ; preds = %_RINvMs_NtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_fileNtB5_14VersionedMagic4readNtNtCs5Xr050g3D4S_3std2fs4FileECskVIURZGHVHJ_12tensor_tools.exit._crit_edge613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !230
  store i64 0, ptr %i.e, align 8, !noalias !230
  %i.cb = call noundef ptr @_RNvYNtNtCs5Xr050g3D4S_3std2fs4FileNtNtNtCsgCecv3eZDcN_5alloc2io4read4Read10read_exactCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %1, ptr noalias nofree noundef nonnull %i.e, i64 noundef 8), !noalias !231 ; 2 uses
  %.not.i11.i = icmp eq ptr %i.cb, null
  br i1 %.not.i11.i, label %bb.s, label %bb.r

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !228
  br label %_RINvNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file11read_lengthNtNtCs5Xr050g3D4S_3std2fs4FileECskVIURZGHVHJ_12tensor_tools.exit

bb.q:                                             ; preds = %bb.n
  %.val.i.i346 = load i32, ptr %i.f, align 4, !noalias !228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !228
  %i.cc = zext i32 %.val.i.i346 to i64
  br label %bb.t

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !230
  br label %_RINvNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file11read_lengthNtNtCs5Xr050g3D4S_3std2fs4FileECskVIURZGHVHJ_12tensor_tools.exit

bb.s:                                             ; preds = %bb.o
  %.val.i12.i = load i64, ptr %i.e, align 8, !noalias !230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !230
  br label %bb.t

_RINvNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file11read_lengthNtNtCs5Xr050g3D4S_3std2fs4FileECskVIURZGHVHJ_12tensor_tools.exit: ; preds = %bb.r, %bb.p
  %.sroa.9.0.in = phi ptr [ %i.cb, %bb.r ], [ %i.ca, %bb.p ]
  %.sroa.9.0 = ptrtoint ptr %.sroa.9.0.in to i64
  store i64 -9223372036854775774, ptr %0, align 8
  %.sroa.4165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.0, ptr %.sroa.4165.0..sroa_idx, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 -1, ptr %i.cd, align 8
  br label %bb.dg

bb.t:                                             ; preds = %bb.q, %bb.s
  %.sroa.9.0.ph = phi i64 [ %.val.i12.i, %bb.s ], [ %i.cc, %bb.q ] ; 5 uses
  store i64 %.sroa.9.0.ph, ptr %i.av, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call fastcc void @_RINvNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file11read_lengthNtNtCs5Xr050g3D4S_3std2fs4FileECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.at, ptr noalias nofree noundef align 4 dereferenceable(4) %1, i8 %i.by)
  %i.ce = load i64, ptr %i.at, align 8, !range !8, !noundef !5 ; 2 uses
  %.not311 = icmp eq i64 %i.ce, -1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.cg = load i64, ptr %i.cf, align 8            ; 6 uses
  br i1 %.not311, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.5172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.5175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5175.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5172.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  store i64 %i.ce, ptr %0, align 8
  %.sroa.4174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cg, ptr %.sroa.4174.0..sroa_idx, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 -1, ptr %i.ch, align 8
  br label %bb.df

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  store i64 %i.cg, ptr %i.au, align 8
  %i.ci = icmp ugt i64 %.sroa.9.0.ph, 1073741824
  br i1 %i.ci, label %.split302, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = icmp ugt i64 %i.cg, 1073741824
  br i1 %i.cj, label %.split298, label %bb.x

.split302:                                        ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store ptr %i.av, ptr %i.ar, align 8
  %.sroa.4179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4179.0..sroa_idx, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr @5, ptr %i.ck, align 8
  %.sroa.4183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4183.0..sroa_idx, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cl, ptr noundef nonnull @20, ptr noundef nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  store i64 -9223372036854775766, ptr %4, align 8
  call void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.as, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.as, i64 80, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 -1, ptr %i.cm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %bb.df

bb.x:                                             ; preds = %bb.w
  %..i = select i1 %i.bz, i64 4, i64 8            ; 2 uses
  %i.cn = add nuw nsw i64 %..i, 5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.co = mul nuw nsw i64 %i.cg, %i.cn
  %i.cp = or disjoint i64 %..i, 16
  %i.cq = mul nuw nsw i64 %.sroa.9.0.ph, %i.cp
  %i.cr = add nuw nsw i64 %i.co, %i.cq            ; 2 uses
  store i64 %i.cr, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %i.cs = call { i64, ptr } @_RNvXsc_NtCs5Xr050g3D4S_3std2fsNtB5_4FileNtNtNtCsf3Ta7LF998c_4core2io4seek4Seek15stream_position(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %1), !noalias !232 ; 2 uses
  %i.ct = extractvalue { i64, ptr } %i.cs, 0
  %i.cu = extractvalue { i64, ptr } %i.cs, 1
  %i.cv = trunc nuw i64 %i.ct to i1
  %i.cw = ptrtoint ptr %i.cu to i64               ; 2 uses
  br i1 %i.cv, label %bb.y, label %bb.z

.split298:                                        ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store ptr %i.au, ptr %i.ap, align 8
  %.sroa.4189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4189.0..sroa_idx, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr @5, ptr %i.cx, align 8
  %.sroa.4193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4193.0..sroa_idx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cy, ptr noundef nonnull @19, ptr noundef nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  store i64 -9223372036854775766, ptr %3, align 8
  call void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.aq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.aq, i64 80, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 -1, ptr %i.cz, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.df

bb.y:                                             ; preds = %bb.x
  store i64 -9223372036854775774, ptr %0, align 8
  %.sroa.4205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cw, ptr %.sroa.4205.0..sroa_idx, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 -1, ptr %i.da, align 8
  br label %bb.de

bb.z:                                             ; preds = %bb.x
  %i.db = call i64 @llvm.usub.sat.i64(i64 %i.bg, i64 %i.cw) ; 2 uses
  store i64 %i.db, ptr %i.an, align 8
  %i.dc = icmp ugt i64 %i.cr, %i.db
  br i1 %i.dc, label %.split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.dd = call { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @11) ; 2 uses
  %i.de = extractvalue { i64, i64 } %i.dd, 0
  %i.df = extractvalue { i64, i64 } %i.dd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) @13, i64 32, i1 false)
  %.sroa.4226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store i64 %i.de, ptr %.sroa.4226.0..sroa_idx, align 8
  %.sroa.5227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store i64 %i.df, ptr %.sroa.5227.0..sroa_idx, align 8
  %.not540 = icmp eq i64 %i.cg, 0
  br i1 %.not540, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aa
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  br label %bb.ab

.split:                                           ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store ptr %i.av, ptr %i.al, align 8
  %.sroa.4210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4210.0..sroa_idx, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %i.au, ptr %i.dj, align 8
  %.sroa.4214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4214.0..sroa_idx, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store ptr %i.ao, ptr %i.dk, align 8
  %.sroa.4218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store ptr @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4218.0..sroa_idx, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store ptr %i.an, ptr %i.dl, align 8
  %.sroa.4222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  store ptr @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4222.0..sroa_idx, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dm, ptr noundef nonnull @18, ptr noundef nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  store i64 -9223372036854775766, ptr %2, align 8
  call void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.am, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.am, i64 80, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 -1, ptr %i.dn, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %bb.de

._crit_edge:                                      ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEECskVIURZGHVHJ_12tensor_tools.exit, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.do = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @11)
          to label %bb.ac unwind label %.loopexit.split-lp471 ; 2 uses

bb.ab:                                            ; preds = %.lr.ph, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEECskVIURZGHVHJ_12tensor_tools.exit
  %.sroa.0228.0535 = phi i64 [ 0, %.lr.ph ], [ %i.dp, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEECskVIURZGHVHJ_12tensor_tools.exit ]
  %i.dp = add nuw i64 %.sroa.0228.0535, 1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.655)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  invoke fastcc void @_RINvNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file11read_stringNtNtCs5Xr050g3D4S_3std2fs4FileECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.ai, ptr noalias nofree noundef align 4 dereferenceable(4) %1, i8 %i.by, i64 noundef %i.bg)
          to label %bb.cn unwind label %.loopexit470

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEECskVIURZGHVHJ_12tensor_tools.exit: ; preds = %.loopexit470, %.loopexit.split-lp471, %bb.cq, %bb.ae, %bb.dd
  %.pn327 = phi { ptr, i32 } [ %.pn322, %bb.ae ], [ %lpad.thr_comm456, %bb.dd ], [ %lpad.thr_comm.split-lp457, %bb.cq ], [ %lpad.loopexit472, %.loopexit470 ], [ %lpad.loopexit.split-lp473, %.loopexit.split-lp471 ]
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ak)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEECskVIURZGHVHJ_12tensor_tools.exit unwind label %bb.bl

.loopexit470:                                     ; preds = %bb.ab
  %lpad.loopexit472 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEECskVIURZGHVHJ_12tensor_tools.exit

.loopexit.split-lp471:                            ; preds = %._crit_edge, %bb.da, %bb.at
  %lpad.loopexit.split-lp473 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEECskVIURZGHVHJ_12tensor_tools.exit

bb.ac:                                            ; preds = %._crit_edge
  %i.dq = extractvalue { i64, i64 } %i.do, 0
  %i.dr = extractvalue { i64, i64 } %i.do, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) @13, i64 32, i1 false)
  %.sroa.4231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store i64 %i.dq, ptr %.sroa.4231.0..sroa_idx, align 8
  %.sroa.5232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store i64 %i.dr, ptr %.sroa.5232.0..sroa_idx, align 8
  %.not541 = icmp eq i64 %.sroa.9.0.ph, 0
  br i1 %.not541, label %._crit_edge539, label %.lr.ph538

.lr.ph538:                                        ; preds = %bb.ac
  %i.ds = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.6110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.dv = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %.sroa.4101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.5102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.6103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.dx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.eb = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  br label %bb.ad

._crit_edge539:                                   ; preds = %bb.bz, %bb.ac
  %i.ec = invoke { i64, ptr } @_RNvXsc_NtCs5Xr050g3D4S_3std2fsNtB5_4FileNtNtNtCsf3Ta7LF998c_4core2io4seek4Seek15stream_position(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.af unwind label %.loopexit.split-lp ; 2 uses

bb.ad:                                            ; preds = %.lr.ph538, %bb.bz
  %.sroa.0260.0536 = phi i64 [ 0, %.lr.ph538 ], [ %i.ed, %bb.bz ]
  %i.ed = add nuw i64 %.sroa.0260.0536, 1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.687)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  invoke fastcc void @_RINvNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file11read_stringNtNtCs5Xr050g3D4S_3std2fs4FileECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.aa, ptr noalias nofree noundef align 4 dereferenceable(4) %1, i8 %i.by, i64 noundef %i.bg)
          to label %bb.au unwind label %.loopexit

bb.ae:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.bq, %.thread443, %bb.cl
  %.pn322 = phi { ptr, i32 } [ %i.gv, %.thread443 ], [ %.pn320.ph, %bb.cl ], [ %lpad.thr_comm.split-lp, %bb.bq ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ac)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEECskVIURZGHVHJ_12tensor_tools.exit unwind label %bb.bl

.loopexit:                                        ; preds = %bb.ad
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp:                               ; preds = %bb.ag, %._crit_edge539, %bb.ap, %bb.cg
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.af:                                            ; preds = %._crit_edge539
  %i.ee = extractvalue { i64, ptr } %i.ec, 0
  %i.ef = extractvalue { i64, ptr } %i.ec, 1      ; 2 uses
  %i.eg = ptrtoint ptr %i.ef to i64               ; 2 uses
  %i.eh = trunc nuw i64 %i.ee to i1
  br i1 %i.eh, label %bb.as, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ei = invoke fastcc noundef align 8 ptr @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3geteECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ak)
          to label %bb.ah unwind label %.loopexit.split-lp ; 8 uses

bb.ah:                                            ; preds = %bb.ag
  %.not313 = icmp eq ptr %i.ei, null
  br i1 %.not313, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ej = load i8, ptr %i.ei, align 8, !range !9, !noundef !5
  switch i8 %i.ej, label %.thread [
    i8 0, label %bb.aj
    i8 1, label %bb.ak
    i8 2, label %bb.al
    i8 3, label %bb.am
    i8 4, label %bb.an
    i8 5, label %bb.ao
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  %i.el = load i8, ptr %i.ek, align 1, !noundef !5
  %i.em = zext i8 %i.el to i64
  br label %select.unfold

bb.ak:                                            ; preds = %bb.ai
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  %i.eo = load i8, ptr %i.en, align 1, !noundef !5 ; 2 uses
  %i.ep = icmp sgt i8 %i.eo, -1
  %i.eq = zext nneg i8 %i.eo to i64
  br i1 %i.ep, label %select.unfold, label %.thread

bb.al:                                            ; preds = %bb.ai
  %i.er = getelementptr inbounds nuw i8, ptr %i.ei, i64 2
  %i.es = load i16, ptr %i.er, align 2, !noundef !5
  %i.et = zext i16 %i.es to i64
  br label %select.unfold

bb.am:                                            ; preds = %bb.ai
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ei, i64 2
  %i.ev = load i16, ptr %i.eu, align 2, !noundef !5 ; 2 uses
  %i.ew = icmp sgt i16 %i.ev, -1
  %i.ex = zext nneg i16 %i.ev to i64
  br i1 %i.ew, label %select.unfold, label %.thread

bb.an:                                            ; preds = %bb.ai
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !noundef !5
  %i.fa = zext i32 %i.ez to i64
  br label %select.unfold

bb.ao:                                            ; preds = %bb.ai
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.fc = load i32, ptr %i.fb, align 4, !noundef !5 ; 2 uses
  %i.fd = icmp sgt i32 %i.fc, -1
  %i.fe = zext nneg i32 %i.fc to i64
  br i1 %i.fd, label %select.unfold, label %.thread

select.unfold:                                    ; preds = %bb.am, %bb.ao, %bb.ak, %bb.an, %bb.al, %bb.aj
  %.sroa.0134.0 = phi i64 [ %i.eq, %bb.ak ], [ %i.em, %bb.aj ], [ %i.fe, %bb.ao ], [ %i.et, %bb.al ], [ %i.fa, %bb.an ], [ %i.ex, %bb.am ] ; 2 uses
  %i.ff = icmp eq i64 %.sroa.0134.0, 0
  br i1 %i.ff, label %bb.ap, label %.thread

.thread:                                          ; preds = %bb.am, %bb.ao, %bb.ak, %bb.ah, %bb.ai, %select.unfold
  %.sroa.0134.0429 = phi i64 [ %.sroa.0134.0, %select.unfold ], [ 32, %bb.ai ], [ 32, %bb.ah ], [ 32, %bb.ak ], [ 32, %bb.ao ], [ 32, %bb.am ] ; 3 uses
  %i.fg = udiv i64 %i.eg, %.sroa.0134.0429
  %i.fh = urem i64 %i.eg, %.sroa.0134.0429
  %.not314 = icmp ne i64 %i.fh, 0
  %i.fi = zext i1 %.not314 to i64
  %.sroa.0138.0 = add i64 %i.fg, %i.fi
  %i.fj = mul i64 %.sroa.0138.0, %.sroa.0134.0429
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0139)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0139, ptr noundef nonnull align 8 dereferenceable(48) %i.ak, i64 48, i1 false)
  %.sroa.0139.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0139, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0139.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0139, i64 96, i1 false)
  %.sroa.5140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.fj, ptr %.sroa.5140.0..sroa_idx, align 8
  %.sroa.6141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %i.by, ptr %.sroa.6141.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0139)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %bb.ar

bb.ap:                                            ; preds = %select.unfold
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #20
          to label %bb.aq unwind label %.loopexit.split-lp

bb.aq:                                            ; preds = %bb.ap
  unreachable

bb.ar:                                            ; preds = %_RINvMs_NtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_fileNtB5_14VersionedMagic4readNtNtCs5Xr050g3D4S_3std2fs4FileECskVIURZGHVHJ_12tensor_tools.exit._crit_edge, %bb.dg, %bb.b, %bb.f, %bb.d, %.thread
  ret void

bb.as:                                            ; preds = %bb.af
  store i64 -9223372036854775774, ptr %0, align 8
  %.sroa.4417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ef, ptr %.sroa.4417.0..sroa_idx, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 104
end_hunk_0
