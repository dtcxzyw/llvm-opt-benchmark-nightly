Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/protobuf-2db11a11b728b2e4.protobuf.8ff526d7050ed656-cgu.08?download=true
inline.NumInlined: 738
inline.NumDeleted: 253
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_NtNtCscmhy3HNZezq_8protobuf18coded_input_stream13buf_read_iterNtB4_11BufReadIter10push_limit:bb.a
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @103, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #31
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.q = sub nuw i64 %i.h, %i.d
  tail call void @_RNvMNtNtCscmhy3HNZezq_8protobuf18coded_input_stream9input_bufNtB2_8InputBuf12update_limit(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.q)
  %i.r = inttoptr i64 %i.k to ptr
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.e, %bb.g
  %.sroa.4.0 = phi ptr [ %i.n, %bb.c ], [ %i.p, %bb.e ], [ %i.r, %bb.g ]
  %.sroa.0.0 = phi i64 [ 1, %bb.c ], [ 1, %bb.e ], [ 0, %bb.g ]
  %i.s = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.t = insertvalue { i64, ptr } %i.s, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.t
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvMs_NtNtCscmhy3HNZezq_8protobuf18coded_input_stream13buf_read_iterNtB4_11BufReadIter10skip_bytes(ptr noalias nofree noundef align 8 dereferenceable(104) %0, i32 noundef %1) unnamed_addr #1 !guid !2401 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = zext i32 %1 to i64                       ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !9 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !9
  %i.h = sub nuw i64 %i.g, %i.e
  %.not = icmp ult i64 %i.h, %i.c
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !noundef !9 ; 2 uses
  %i.k = icmp ne i64 %i.j, -1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.e, %i.m
  %i.o = sub i64 %i.j, %i.n
  %i.p = icmp ult i64 %i.o, %i.c
  %.sroa.01.0 = select i1 %i.k, i1 %i.p, i1 false
  br i1 %.sroa.01.0, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2402)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !range !31, !alias.scope !2402, !noundef !9
  %i.s = icmp eq i8 %i.r, -1
  br i1 %i.s, label %_RNvMs_NtNtCscmhy3HNZezq_8protobuf18coded_input_stream13buf_read_iterNtB4_11BufReadIter11consume_buf.exit, label %bb.e

_RNvMs_NtNtCscmhy3HNZezq_8protobuf18coded_input_stream13buf_read_iterNtB4_11BufReadIter11consume_buf.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2402
  store i8 0, ptr %i.a, align 8, !noalias !2402
  %i.t = call noundef nonnull align 8 ptr @_RNvXs_NtCscmhy3HNZezq_8protobuf5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtB4_9WireErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a), !noalias !2402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2402
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 7, ptr %i.b, align 8
  %i.u = call noundef nonnull align 8 ptr @_RNvXs_NtCscmhy3HNZezq_8protobuf5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtB4_9WireErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @_RNvXs1_NtNtCscmhy3HNZezq_8protobuf18coded_input_stream18buf_read_or_readerNtB5_15BufReadOrReaderNtNtNtCsbSS6DM8SDEO_5alloc2io8buf_read7BufRead7consume(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.v, i64 noundef %i.e)
  %i.w = load i64, ptr %i.d, align 8, !alias.scope !2402, !noundef !9
  %i.x = load i64, ptr %i.l, align 8, !alias.scope !2402, !noundef !9
  %i.y = add i64 %i.x, %i.w
  store i64 %i.y, ptr %i.l, align 8, !alias.scope !2402
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8, !alias.scope !2402
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !2402
  %i.z = load i8, ptr %i.q, align 8, !range !31, !noundef !9
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %bb.f, label %bb.g, !prof !21

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ab = tail call noundef ptr @_RNvMs0_NtNtCscmhy3HNZezq_8protobuf18coded_input_stream18buf_read_or_readerNtB5_15BufReadOrReader10skip_bytes(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.v, i64 noundef %i.c) ; 2 uses
  %.not10 = icmp eq ptr %i.ab, null
  br i1 %.not10, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = tail call noundef nonnull align 8 ptr @_RNvXs2_NtCscmhy3HNZezq_8protobuf5errorNtB5_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtNtBQ_2io5error5ErrorE4from(ptr noundef nonnull %i.ab)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ad = load i64, ptr %i.l, align 8, !noundef !9
  %i.ae = add i64 %i.ad, %i.c
  store i64 %i.ae, ptr %i.l, align 8
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtNtCscmhy3HNZezq_8protobuf18coded_input_stream13buf_read_iterNtB4_11BufReadIter11consume_buf.exit, %bb.k, %bb.i, %bb.h, %bb.d
  %.sroa.0.0 = phi ptr [ null, %bb.k ], [ %i.u, %bb.d ], [ null, %bb.i ], [ %i.ac, %bb.h ], [ %i.t, %_RNvMs_NtNtCscmhy3HNZezq_8protobuf18coded_input_stream13buf_read_iterNtB4_11BufReadIter11consume_buf.exit ]
  ret ptr %.sroa.0.0

bb.k:                                             ; preds = %bb.a
  %i.af = add i64 %i.e, %i.c
  store i64 %i.af, ptr %i.d, align 8
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvMs_NtNtCscmhy3HNZezq_8protobuf18coded_input_stream13buf_read_iterNtB4_11BufReadIter13fill_buf_slow(ptr noalias nofree noundef align 8 dereferenceable(104) %0) unnamed_addr #1 !guid !2405 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !9 ; 2 uses
  %i.h = add i64 %i.g, %i.e
  %i.i = icmp eq i64 %i.c, %i.h
  br i1 %i.i, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !range !31, !noundef !9
  %i.m = icmp eq i8 %i.l, -1
  br i1 %i.m, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvXs1_NtNtCscmhy3HNZezq_8protobuf18coded_input_stream18buf_read_or_readerNtB5_15BufReadOrReaderNtNtNtCsbSS6DM8SDEO_5alloc2io8buf_read7BufRead7consume(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.j, i64 noundef %i.g)
  %i.n = load i64, ptr %i.f, align 8, !alias.scope !2406, !noundef !9
  %i.o = load i64, ptr %i.d, align 8, !alias.scope !2406, !noundef !9
  %i.p = add i64 %i.o, %i.n
  store i64 %i.p, ptr %i.d, align 8, !alias.scope !2406
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8, !alias.scope !2406
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !2406
  %i.q = load i8, ptr %i.k, align 8, !range !31, !noundef !9
  %i.r = icmp eq i8 %i.q, -1
  br i1 %i.r, label %bb.d, label %bb.e, !prof !21

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #31
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs1_NtNtCscmhy3HNZezq_8protobuf18coded_input_stream18buf_read_or_readerNtB5_15BufReadOrReaderNtNtNtCsbSS6DM8SDEO_5alloc2io8buf_read7BufRead8fill_buf(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.j)
  %i.s = load ptr, ptr %i.a, align 8, !noundef !9 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !9, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = call noundef nonnull align 8 ptr @_RNvXs2_NtCscmhy3HNZezq_8protobuf5errorNtB5_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtNtBQ_2io5error5ErrorE4from(ptr noundef nonnull %i.v)
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.x = load i64, ptr %i.u, align 8, !noundef !9 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.s, ptr %0, align 8
  store i64 %i.x, ptr %.sroa.4.0..sroa_idx.i, align 8
  store i64 0, ptr %i.f, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.x, ptr %.sroa.7.0..sroa_idx, align 8
  %i.y = load i64, ptr %i.b, align 8, !noundef !9 ; 2 uses
  %i.z = load i64, ptr %i.d, align 8, !noundef !9 ; 2 uses
  %.not8 = icmp ult i64 %i.y, %i.z
  br i1 %.not8, label %bb.h, label %bb.i, !prof !21

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @103, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #31
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.aa = sub nuw i64 %i.y, %i.z
  call void @_RNvMNtNtCscmhy3HNZezq_8protobuf18coded_input_stream9input_bufNtB2_8InputBuf12update_limit(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aa)
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.a, %bb.i, %bb.f
  %.sroa.0.0 = phi ptr [ null, %bb.i ], [ null, %bb.a ], [ null, %bb.b ], [ %i.w, %bb.f ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCscmhy3HNZezq_8protobuf18coded_input_stream13buf_read_iterNtB4_11BufReadIter14read_byte_slow(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(104) %1) unnamed_addr #1 !guid !2407 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = tail call noundef align 8 ptr @_RNvMs_NtNtCscmhy3HNZezq_8protobuf18coded_input_stream13buf_read_iterNtB4_11BufReadIter13fill_buf_slow(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %1) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !9 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !9
  %.not4 = icmp eq i64 %i.g, %i.e
  br i1 %.not4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.a, align 8
  %i.h = call noundef nonnull align 8 ptr @_RNvXs_NtCscmhy3HNZezq_8protobuf5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtB4_9WireErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.e
  %i.l = load i8, ptr %i.k, align 1, !noundef !9
  %i.m = add i64 %i.e, 1
  store i64 %i.m, ptr %i.d, align 8
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.l, ptr %2, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.sink = phi i8 [ 0, %bb.e ], [ 1, %bb.d ], [ 1, %bb.b ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvMs_NtNtCscmhy3HNZezq_8protobuf18coded_input_stream13buf_read_iterNtB4_11BufReadIter15read_exact_slow(ptr noalias nofree noundef align 8 dereferenceable(104) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 !guid !2410 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !noundef !9 ; 2 uses
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !noundef !9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !9
  %i.j = add i64 %i.g, %i.i
  %i.k = sub i64 %i.d, %i.j
  %i.l = icmp ult i64 %i.k, %2
  br i1 %i.l, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2411)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !range !31, !alias.scope !2411, !noundef !9
  %i.o = icmp eq i8 %i.n, -1
  br i1 %i.o, label %_RNvMs_NtNtCscmhy3HNZezq_8protobuf18coded_input_stream13buf_read_iterNtB4_11BufReadIter11consume_buf.exit, label %bb.d

_RNvMs_NtNtCscmhy3HNZezq_8protobuf18coded_input_stream13buf_read_iterNtB4_11BufReadIter11consume_buf.exit: ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2411
  store i8 0, ptr %i.a, align 8, !noalias !2411
  %i.p = call noundef nonnull align 8 ptr @_RNvXs_NtCscmhy3HNZezq_8protobuf5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtB4_9WireErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a), !noalias !2411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2411
  br label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 0, ptr %i.q, align 8
  store i64 -9223372036854775797, ptr %i.b, align 8
  %i.r = call noundef nonnull align 8 ptr @_RNvXNtCscmhy3HNZezq_8protobuf5errorNtB2_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtB2_13ProtobufErrorE4from(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.d:                                             ; preds = %.critedge
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !2411, !noundef !9
  tail call void @_RNvXs1_NtNtCscmhy3HNZezq_8protobuf18coded_input_stream18buf_read_or_readerNtB5_15BufReadOrReaderNtNtNtCsbSS6DM8SDEO_5alloc2io8buf_read7BufRead7consume(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.s, i64 noundef %i.u)
  %i.v = load i64, ptr %i.t, align 8, !alias.scope !2411, !noundef !9
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !2411, !noundef !9
  %i.y = add i64 %i.x, %i.v
  store i64 %i.y, ptr %i.w, align 8, !alias.scope !2411
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8, !alias.scope !2411
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !2411
  %i.z = load i8, ptr %i.m, align 8, !range !31, !noundef !9
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %bb.e, label %bb.f, !prof !21

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #31
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = tail call noundef ptr @_RNvMs0_NtNtCscmhy3HNZezq_8protobuf18coded_input_stream18buf_read_or_readerNtB5_15BufReadOrReader17read_exact_uninit(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.s, ptr noalias nofree noundef nonnull %1, i64 noundef %2) ; 2 uses
  %.not10 = icmp eq ptr %i.ab, null
  br i1 %.not10, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call noundef nonnull align 8 ptr @_RNvXs2_NtCscmhy3HNZezq_8protobuf5errorNtB5_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtNtBQ_2io5error5ErrorE4from(ptr noundef nonnull %i.ab)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ad = load i64, ptr %i.w, align 8, !noundef !9
  %i.ae = add i64 %i.ad, %2
  store i64 %i.ae, ptr %i.w, align 8
  br label %bb.i

bb.i:                                             ; preds = %_RNvMs_NtNtCscmhy3HNZezq_8protobuf18coded_input_stream13buf_read_iterNtB4_11BufReadIter11consume_buf.exit, %bb.h, %bb.g, %bb.c
  %.sroa.0.0 = phi ptr [ %i.r, %bb.c ], [ null, %bb.h ], [ %i.ac, %bb.g ], [ %i.p, %_RNvMs_NtNtCscmhy3HNZezq_8protobuf18coded_input_stream13buf_read_iterNtB4_11BufReadIter11consume_buf.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvMs_NtNtCscmhy3HNZezq_8protobuf18coded_input_stream13buf_read_iterNtB4_11BufReadIter17read_exact_to_vec(ptr noalias nofree noundef align 8 dereferenceable(104) %0, i64 noundef %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !2420 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !9 ; 2 uses
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !noundef !9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !9
  %i.j = add i64 %i.g, %i.i
  %i.k = sub i64 %i.d, %i.j
  %i.l = icmp ugt i64 %1, %i.k
  br i1 %i.l, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store i64 0, ptr %i.m, align 8
  %i.n = icmp ugt i64 %1, 9999999
  %i.o = load i64, ptr %2, align 8, !range !14
  %i.p = icmp ugt i64 %1, %i.o
  %or.cond = select i1 %i.n, i1 %i.p, i1 false
  br i1 %or.cond, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 7, ptr %i.q, align 8
  store i64 -9223372036854775797, ptr %i.b, align 8
  %i.r = call noundef nonnull align 8 ptr @_RNvXNtCscmhy3HNZezq_8protobuf5errorNtB2_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtB2_13ProtobufErrorE4from(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMs_NtNtCscmhy3HNZezq_8protobuf18coded_input_stream13buf_read_iterNtB4_11BufReadIter11read_to_vec.exit.thread

bb.d:                                             ; preds = %.critedge
  tail call void @_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCscmhy3HNZezq_8protobuf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0, i64 noundef %1, i64 noundef 1, i64 noundef 1)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !9, !noundef !9
  %i.u = load i64, ptr %i.m, align 8, !noundef !9 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u ; 2 uses
  %i.w = load i64, ptr %2, align 8, !range !14, !noundef !9
  %i.x = sub i64 %i.w, %i.u                       ; 2 uses
  %.not = icmp ugt i64 %1, %i.x
  br i1 %.not, label %bb.f, label %bb.g, !prof !2421

bb.e:                                             ; preds = %.critedge
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCscmhy3HNZezq_8protobuf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 10000000)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %i.m, align 8
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %1, i64 noundef %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #31
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !9
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !noundef !9
  %i.ag = sub nuw i64 %i.af, %i.ad
  %.not16 = icmp ult i64 %i.ag, %1
  br i1 %.not16, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = tail call noundef align 8 ptr @_RNvMs_NtNtCscmhy3HNZezq_8protobuf18coded_input_stream13buf_read_iterNtB4_11BufReadIter15read_exact_slow(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0, ptr noalias nofree noundef nonnull %i.v, i64 noundef %1) ; 2 uses
  %.not17 = icmp eq ptr %i.ah, null
  br i1 %.not17, label %bb.j, label %_RNvMs_NtNtCscmhy3HNZezq_8protobuf18coded_input_stream13buf_read_iterNtB4_11BufReadIter11read_to_vec.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.ai = tail call { ptr, i64 } @_RNvMNtNtCscmhy3HNZezq_8protobuf18coded_input_stream9input_bufNtB2_8InputBuf10read_bytes(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull %i.v, i64 noundef %1) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i64 %1, ptr %i.m, align 8
  br label %_RNvMs_NtNtCscmhy3HNZezq_8protobuf18coded_input_stream13buf_read_iterNtB4_11BufReadIter11read_to_vec.exit.thread

bb.k:                                             ; preds = %bb.w, %bb.e
  %i.aj = phi i64 [ %i.bn, %bb.w ], [ %.pre, %bb.e ] ; 5 uses
  %i.ak = icmp sgt i64 %i.aj, -1
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = icmp ult i64 %i.aj, %1
  br i1 %i.al, label %bb.l, label %_RNvMs_NtNtCscmhy3HNZezq_8protobuf18coded_input_stream13buf_read_iterNtB4_11BufReadIter11read_to_vec.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.am = sub nuw i64 %1, %i.aj                   ; 2 uses
  %.not18 = icmp ugt i64 %i.am, %i.aj
  br i1 %.not18, label %bb.m, label %bb.n

_RNvMs_NtNtCscmhy3HNZezq_8protobuf18coded_input_stream13buf_read_iterNtB4_11BufReadIter11read_to_vec.exit.thread: ; preds = %bb.r, %bb.k, %bb.j, %bb.h, %bb.x, %bb.c
  %.sroa.0.0 = phi ptr [ %i.r, %bb.c ], [ null, %bb.j ], [ %i.bt, %bb.x ], [ %i.ah, %bb.h ], [ %i.bc, %bb.r ], [ null, %bb.k ]
  ret ptr %.sroa.0.0

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCscmhy3HNZezq_8protobuf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1)
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  tail call void @_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCscmhy3HNZezq_8protobuf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.aj, i64 noundef %i.am, i64 noundef 1, i64 noundef 1)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.an = load i64, ptr %2, align 8, !range !14, !noundef !9
  %i.ao = load i64, ptr %i.m, align 8, !noundef !9 ; 3 uses
  %i.ap = icmp sgt i64 %i.ao, -1
  tail call void @llvm.assume(i1 %i.ap)
end_hunk_0
