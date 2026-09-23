Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/benchmark_publish_subscribe.benchmark_publish_subscribe.d31fa2e796f54191-cgu.14?download=true
inline.NumInlined: 897
inline.NumDeleted: 411
begin_hunk_0_@_RNvMsb_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service14ipc_threadsafe7ServiceShuE22loan_slice_uninit_implCsi7NXITnwjWD_27benchmark_publish_subscribe:bb.a
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.f, label %bb.g

bb.e:                                             ; preds = %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1445
  store ptr %i.s, ptr %i.p, align 8, !noalias !1445
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service14ipc_threadsafe7ServiceENtB6_5Debug3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1445
  %i.bt = load atomic i64, ptr %i.bm monotonic, align 16, !noalias !1445
  store i64 %i.bt, ptr %i.o, align 8, !noalias !1445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1445
  store ptr %i.q, ptr %i.n, align 8, !noalias !1445
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !1445
  %i.bu = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.r, ptr %i.bu, align 8, !noalias !1445
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXs4_NtNtCs8Chj7Szqq0n_4core5alloc6layoutNtB5_6LayoutNtNtB9_3fmt5Debug3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1445
  %i.bv = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.o, ptr %i.bv, align 8, !noalias !1445
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !1445
  %i.bw = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr %i.bo, ptr %i.bw, align 8, !noalias !1445
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !1445
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @5, ptr noundef nonnull %i.p, ptr noundef nonnull @63, ptr noundef nonnull %i.n) #17, !noalias !1445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1445
  %i.bx = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store i8 1, ptr %i.bx, align 1, !alias.scope !1445
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !range !32, !noalias !1445, !noundef !5 ; 2 uses
  switch i8 %i.bz, label %bb.i [
    i8 3, label %bb.k
    i8 1, label %bb.j
    i8 2, label %bb.j
  ], !prof !33

bb.g:                                             ; preds = %bb.d
  %i.ca = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !noalias !1445, !noundef !5 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !1445, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1445
  %i.ce = load ptr, ptr %i.s, align 8, !noalias !1445, !nonnull !5, !align !10, !noundef !5 ; 3 uses
  %i.cf = call fastcc { i64, i64 } @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE13borrow_sampleCsi7NXITnwjWD_27benchmark_publish_subscribe(ptr noundef nonnull align 16 %i.ce, i64 noundef %i.cb) #17, !noalias !1445 ; 2 uses
  %i.cg = extractvalue { i64, i64 } %i.cf, 0
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.o, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1445
  store ptr %i.s, ptr %i.d, align 8, !noalias !1445
  %.sroa.474.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service14ipc_threadsafe7ServiceENtB6_5Debug3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.474.0..sroa_idx.i, align 8, !noalias !1445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1445
  store ptr %i.q, ptr %i.c, align 8, !noalias !1445
  %.sroa.478.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.478.0..sroa_idx.i, align 8, !noalias !1445
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @5, ptr noundef nonnull %i.d, ptr noundef nonnull @55, ptr noundef nonnull %i.c) #17, !noalias !1445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1445
  store ptr %i.s, ptr %i.b, align 8, !noalias !1445
  %.sroa.482.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service14ipc_threadsafe7ServiceENtB6_5Debug3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.482.0..sroa_idx.i, align 8, !noalias !1445
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.q, ptr %i.ci, align 8, !noalias !1445
  %.sroa.486.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.486.0..sroa_idx.i, align 8, !noalias !1445
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @56, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #18, !noalias !1445
  unreachable

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1445
  store i8 %i.bz, ptr %i.g, align 1, !noalias !1445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1445
  store ptr %i.s, ptr %i.f, align 8, !noalias !1445
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service14ipc_threadsafe7ServiceENtB6_5Debug3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !1445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1445
  store ptr %i.q, ptr %i.e, align 8, !noalias !1445
  %.sroa.462.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.462.0..sroa_idx.i, align 8, !noalias !1445
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.r, ptr %i.cj, align 8, !noalias !1445
  %.sroa.466.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs4_NtNtCs8Chj7Szqq0n_4core5alloc6layoutNtB5_6LayoutNtNtB9_3fmt5Debug3fmt, ptr %.sroa.466.0..sroa_idx.i, align 8, !noalias !1445
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.g, ptr %i.ck, align 8, !noalias !1445
  %.sroa.470.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @_RNvXs3_NtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocatorNtB5_18ShmAllocationErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.470.0..sroa_idx.i, align 8, !noalias !1445
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @5, ptr noundef nonnull %i.f, ptr noundef nonnull @62, ptr noundef nonnull %i.e) #17, !noalias !1445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1445
  %i.cl = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store i8 3, ptr %i.cl, align 1, !alias.scope !1445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1445
  br label %bb.l

bb.j:                                             ; preds = %bb.f, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1445
  store ptr %i.s, ptr %i.j, align 8, !noalias !1445
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service14ipc_threadsafe7ServiceENtB6_5Debug3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.426.0..sroa_idx.i, align 8, !noalias !1445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1445
  store ptr %i.q, ptr %i.i, align 8, !noalias !1445
  %.sroa.442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.442.0..sroa_idx.i, align 8, !noalias !1445
  %i.cm = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.r, ptr %i.cm, align 8, !noalias !1445
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXs4_NtNtCs8Chj7Szqq0n_4core5alloc6layoutNtB5_6LayoutNtNtB9_3fmt5Debug3fmt, ptr %.sroa.446.0..sroa_idx.i, align 8, !noalias !1445
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @5, ptr noundef nonnull %i.j, ptr noundef nonnull @58, ptr noundef nonnull %i.i) #17, !noalias !1445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1445
  store ptr %i.s, ptr %i.h, align 8, !noalias !1445
  %.sroa.450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service14ipc_threadsafe7ServiceENtB6_5Debug3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.450.0..sroa_idx.i, align 8, !noalias !1445
  %i.cn = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.q, ptr %i.cn, align 8, !noalias !1445
  %.sroa.454.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.454.0..sroa_idx.i, align 8, !noalias !1445
  %i.co = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.r, ptr %i.co, align 8, !noalias !1445
  %.sroa.458.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr @_RNvXs4_NtNtCs8Chj7Szqq0n_4core5alloc6layoutNtB5_6LayoutNtNtB9_3fmt5Debug3fmt, ptr %.sroa.458.0..sroa_idx.i, align 8, !noalias !1445
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @59, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #18, !noalias !1445
  unreachable

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1445
  store ptr %i.s, ptr %i.l, align 8, !noalias !1445
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service14ipc_threadsafe7ServiceENtB6_5Debug3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.430.0..sroa_idx.i, align 8, !noalias !1445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1445
  store ptr %i.q, ptr %i.k, align 8, !noalias !1445
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !1445
  %i.cp = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.r, ptr %i.cp, align 8, !noalias !1445
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXs4_NtNtCs8Chj7Szqq0n_4core5alloc6layoutNtB5_6LayoutNtNtB9_3fmt5Debug3fmt, ptr %.sroa.438.0..sroa_idx.i, align 8, !noalias !1445
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @5, ptr noundef nonnull %i.l, ptr noundef nonnull @61, ptr noundef nonnull %i.k) #17, !noalias !1445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1445
  %i.cq = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store i8 0, ptr %i.cq, align 1, !alias.scope !1445
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1445
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.z, ptr %i.v, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher9PublisherNtNtNtBD_7service14ipc_threadsafe7ServiceShuENtB6_5Debug3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.49.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.y, ptr %i.u, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.w, ptr %i.cr, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.417.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @5, ptr noundef nonnull %i.v, ptr noundef nonnull @91, ptr noundef nonnull %i.u) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.r

bb.n:                                             ; preds = %bb.e, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !range !34, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.r

bb.o:                                             ; preds = %bb.g
  %i.cu = extractvalue { i64, i64 } %i.cf, 1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ce, i64 3600
  %i.cw = atomicrmw add ptr %i.cv, i64 1 monotonic, align 8, !noalias !1445 ; 0 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ce, i64 2664
  %i.cy = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details5chunkNtB4_8ChunkMut3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(888) %i.cx, i64 noundef %i.cb, ptr noundef %i.cd, i64 noundef %i.cu) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.018.0.copyload = load i64, ptr %i.cz, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %4 = load <2 x ptr>, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.419.0.copyload = load ptr, ptr %.sroa.419.0..sroa_idx, align 8 ; 3 uses
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.621.0.copyload = load ptr, ptr %.sroa.621.0..sroa_idx, align 8
  %.sroa.722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %.sroa.722.0.copyload = load i64, ptr %.sroa.722.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.da = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsi7NXITnwjWD_27benchmark_publish_subscribe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x) #17
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 3560
  %i.dc = load ptr, ptr %i.db, align 8, !nonnull !5, !noundef !5
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 7280
  %i.de = load ptr, ptr %i.dd, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.02.sroa.0)
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 6312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.02.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.df, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1446
  %i.dg = call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsi7NXITnwjWD_27benchmark_publish_subscribe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa) #17, !noalias !1447
  store ptr %i.dg, ptr %i.a, align 8, !noalias !1446
  %i.dh = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsi7NXITnwjWD_27benchmark_publish_subscribe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) #17, !noalias !1447
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %i.dj = load i128, ptr %i.di, align 16, !noalias !1447, !noundef !5
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsi7NXITnwjWD_27benchmark_publish_subscribe(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #17, !noalias !1447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.419.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.02.sroa.0, i64 16, i1 false)
  %.sroa.02.sroa.4.0..sroa.419.0.copyload.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.419.0.copyload, i64 16
  store i128 %i.dj, ptr %.sroa.02.sroa.4.0..sroa.419.0.copyload.sroa_idx, align 8
  %.sroa.53.0..sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.419.0.copyload, i64 32
  store i64 %2, ptr %.sroa.53.0..sroa.9.16..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.02.sroa.0)
  %.val = load ptr, ptr %i.aa, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.dk = atomicrmw add ptr %.val, i64 1 monotonic, align 8
  %i.dl = icmp slt i64 %i.dk, 0
  br i1 %i.dl, label %bb.p, label %_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsi7NXITnwjWD_27benchmark_publish_subscribe.exit

bb.p:                                             ; preds = %bb.o
  call void @llvm.trap()
  unreachable

_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsi7NXITnwjWD_27benchmark_publish_subscribe.exit: ; preds = %bb.o
  store ptr %.val, ptr %0, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %4, ptr %.sroa.430.0..sroa_idx, align 8
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.621.0.copyload, ptr %.sroa.632.0..sroa_idx, align 8
  %.sroa.733.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %3, ptr %.sroa.733.0..sroa_idx, align 8
  %.sroa.834.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.018.0.copyload, ptr %.sroa.834.0..sroa_idx, align 8
  %.sroa.935.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.722.0.copyload, ptr %.sroa.935.0..sroa_idx, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsi7NXITnwjWD_27benchmark_publish_subscribe.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsi7NXITnwjWD_27benchmark_publish_subscribe(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.x) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  ret void

bb.r:                                             ; preds = %bb.n, %bb.m
  %.sink = phi i8 [ %i.ct, %bb.n ], [ 2, %bb.m ]
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink, ptr %i.dm, align 8
  store ptr null, ptr %0, align 8
  br label %bb.q
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMsb_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service16local_threadsafe7ServiceShuE22loan_slice_uninit_implCsi7NXITnwjWD_27benchmark_publish_subscribe(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [1 x i8], align 1                 ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [64 x i8], align 8                ; 11 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 12 uses
  %i.r = alloca [16 x i8], align 8                ; 10 uses
  %i.s = alloca [8 x i8], align 8                 ; 12 uses
  %.sroa.02.sroa.0 = alloca [16 x i8], align 8    ; 4 uses
  %i.t = alloca [48 x i8], align 8                ; 12 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 9 uses
  %i.y = alloca [8 x i8], align 8                 ; 2 uses
  %i.z = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.z, align 8
  store i64 %2, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ab = tail call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service16local_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsi7NXITnwjWD_27benchmark_publish_subscribe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa) #17
  store ptr %i.ab, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.ac = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsi7NXITnwjWD_27benchmark_publish_subscribe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x) #17
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 5064
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !5 ; 2 uses
  store i64 %i.ae, ptr %i.w, align 8
  %i.af = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsi7NXITnwjWD_27benchmark_publish_subscribe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x) #17
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 5072
  %i.ah = load i8, ptr %i.ag, align 16, !range !8, !noundef !5
  %i.ai = icmp eq i8 %i.ah, 2
  %i.aj = icmp ult i64 %i.ae, %2
  %or.cond = and i1 %i.ai, %i.aj
  br i1 %or.cond, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsi7NXITnwjWD_27benchmark_publish_subscribe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x) #17 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1455)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 3176
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !1455, !noundef !5 ; 6 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.c, label %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCs8Chj7Szqq0n_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #18, !noalias !1455
  unreachable

_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit: ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 3168
  %i.ap = load i64, ptr %i.ao, align 16, !alias.scope !1455, !noundef !5
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 3464
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !1455, !noundef !5
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 3472
  %i.at = load i64, ptr %i.as, align 16, !alias.scope !1455, !noundef !5
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 3760
  %i.av = load i64, ptr %i.au, align 16, !alias.scope !1455, !noundef !5
  %i.aw = mul i64 %i.av, %2
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 3768
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !1455, !noundef !5
  %i.az = add i64 %i.ap, -2
  %i.ba = add i64 %i.az, %i.ar
  %i.bb = add i64 %i.ba, %i.at
  %i.bc = add i64 %i.bb, %i.aw
  %i.bd = add i64 %i.bc, %i.ay                    ; 2 uses
  %i.be = urem i64 %i.bd, %i.am                   ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  %i.bg = sub i64 %i.am, %i.be
  %i.bh = select i1 %i.bf, i64 0, i64 %i.bg
  %.sroa.0.0.i = add i64 %i.bh, %i.bd             ; 2 uses
  %i.bi = icmp ult i64 %i.am, -9223372036854775807
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.bj = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsi7NXITnwjWD_27benchmark_publish_subscribe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x) #17 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1456)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.bj, ptr %i.s, align 8, !noalias !1456
  store i64 %i.am, ptr %i.r, align 8, !noalias !1456
  %i.bk = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sroa.0.0.i, ptr %i.bk, align 8, !noalias !1456
  call fastcc void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service16local_threadsafe7ServiceE25retrieve_returned_samplesCsi7NXITnwjWD_27benchmark_publish_subscribe(ptr noundef nonnull align 16 %i.bj) #17, !noalias !1456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1456
  store ptr @54, ptr %i.q, align 8, !noalias !1456, !captures !22
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 23, ptr %i.bl, align 8, !noalias !1456
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 3824 ; 2 uses
  %i.bn = load atomic i64, ptr %i.bm monotonic, align 16, !noalias !1456
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 3808 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 16, !noalias !1456, !noundef !5
  %.not.i = icmp ult i64 %i.bn, %i.bp
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1456
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 176
  call void @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service16local_threadsafe7ServiceE8allocateCsi7NXITnwjWD_27benchmark_publish_subscribe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull align 8 %i.bq, i64 noundef range(i64 1, -9223372036854775807) %i.am, i64 noundef %.sroa.0.0.i) #17, !noalias !1456
  %i.br = load i8, ptr %i.m, align 8, !range !11, !noalias !1456, !noundef !5
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.f, label %bb.g

bb.e:                                             ; preds = %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1456
  store ptr %i.s, ptr %i.p, align 8, !noalias !1456
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service16local_threadsafe7ServiceENtB6_5Debug3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1456
  %i.bt = load atomic i64, ptr %i.bm monotonic, align 16, !noalias !1456
  store i64 %i.bt, ptr %i.o, align 8, !noalias !1456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1456
  store ptr %i.q, ptr %i.n, align 8, !noalias !1456
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !1456
  %i.bu = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.r, ptr %i.bu, align 8, !noalias !1456
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXs4_NtNtCs8Chj7Szqq0n_4core5alloc6layoutNtB5_6LayoutNtNtB9_3fmt5Debug3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1456
  %i.bv = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.o, ptr %i.bv, align 8, !noalias !1456
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !1456
  %i.bw = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr %i.bo, ptr %i.bw, align 8, !noalias !1456
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !1456
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @5, ptr noundef nonnull %i.p, ptr noundef nonnull @63, ptr noundef nonnull %i.n) #17, !noalias !1456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1456
  %i.bx = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store i8 1, ptr %i.bx, align 1, !alias.scope !1456
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !range !32, !noalias !1456, !noundef !5 ; 2 uses
  switch i8 %i.bz, label %bb.i [
    i8 3, label %bb.k
    i8 1, label %bb.j
    i8 2, label %bb.j
  ], !prof !33

bb.g:                                             ; preds = %bb.d
  %i.ca = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !noalias !1456, !noundef !5 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !1456, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1456
  %i.ce = load ptr, ptr %i.s, align 8, !noalias !1456, !nonnull !5, !align !10, !noundef !5 ; 3 uses
  %i.cf = call fastcc { i64, i64 } @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service16local_threadsafe7ServiceE13borrow_sampleCsi7NXITnwjWD_27benchmark_publish_subscribe(ptr noundef nonnull align 16 %i.ce, i64 noundef %i.cb) #17, !noalias !1456 ; 2 uses
  %i.cg = extractvalue { i64, i64 } %i.cf, 0
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.o, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1456
  store ptr %i.s, ptr %i.d, align 8, !noalias !1456
  %.sroa.474.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service16local_threadsafe7ServiceENtB6_5Debug3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.474.0..sroa_idx.i, align 8, !noalias !1456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1456
  store ptr %i.q, ptr %i.c, align 8, !noalias !1456
  %.sroa.478.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.478.0..sroa_idx.i, align 8, !noalias !1456
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @5, ptr noundef nonnull %i.d, ptr noundef nonnull @55, ptr noundef nonnull %i.c) #17, !noalias !1456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1456
  store ptr %i.s, ptr %i.b, align 8, !noalias !1456
  %.sroa.482.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service16local_threadsafe7ServiceENtB6_5Debug3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.482.0..sroa_idx.i, align 8, !noalias !1456
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.q, ptr %i.ci, align 8, !noalias !1456
  %.sroa.486.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.486.0..sroa_idx.i, align 8, !noalias !1456
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @56, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #18, !noalias !1456
  unreachable

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1456
  store i8 %i.bz, ptr %i.g, align 1, !noalias !1456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1456
  store ptr %i.s, ptr %i.f, align 8, !noalias !1456
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service16local_threadsafe7ServiceENtB6_5Debug3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !1456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1456
  store ptr %i.q, ptr %i.e, align 8, !noalias !1456
  %.sroa.462.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.462.0..sroa_idx.i, align 8, !noalias !1456
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.r, ptr %i.cj, align 8, !noalias !1456
  %.sroa.466.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs4_NtNtCs8Chj7Szqq0n_4core5alloc6layoutNtB5_6LayoutNtNtB9_3fmt5Debug3fmt, ptr %.sroa.466.0..sroa_idx.i, align 8, !noalias !1456
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.g, ptr %i.ck, align 8, !noalias !1456
  %.sroa.470.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @_RNvXs3_NtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocatorNtB5_18ShmAllocationErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.470.0..sroa_idx.i, align 8, !noalias !1456
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @5, ptr noundef nonnull %i.f, ptr noundef nonnull @62, ptr noundef nonnull %i.e) #17, !noalias !1456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1456
  %i.cl = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store i8 3, ptr %i.cl, align 1, !alias.scope !1456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1456
  br label %bb.l

bb.j:                                             ; preds = %bb.f, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1456
  store ptr %i.s, ptr %i.j, align 8, !noalias !1456
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service16local_threadsafe7ServiceENtB6_5Debug3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.426.0..sroa_idx.i, align 8, !noalias !1456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1456
  store ptr %i.q, ptr %i.i, align 8, !noalias !1456
  %.sroa.442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.442.0..sroa_idx.i, align 8, !noalias !1456
  %i.cm = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.r, ptr %i.cm, align 8, !noalias !1456
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXs4_NtNtCs8Chj7Szqq0n_4core5alloc6layoutNtB5_6LayoutNtNtB9_3fmt5Debug3fmt, ptr %.sroa.446.0..sroa_idx.i, align 8, !noalias !1456
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @5, ptr noundef nonnull %i.j, ptr noundef nonnull @58, ptr noundef nonnull %i.i) #17, !noalias !1456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1456
  store ptr %i.s, ptr %i.h, align 8, !noalias !1456
  %.sroa.450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service16local_threadsafe7ServiceENtB6_5Debug3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.450.0..sroa_idx.i, align 8, !noalias !1456
  %i.cn = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.q, ptr %i.cn, align 8, !noalias !1456
  %.sroa.454.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.454.0..sroa_idx.i, align 8, !noalias !1456
  %i.co = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.r, ptr %i.co, align 8, !noalias !1456
  %.sroa.458.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr @_RNvXs4_NtNtCs8Chj7Szqq0n_4core5alloc6layoutNtB5_6LayoutNtNtB9_3fmt5Debug3fmt, ptr %.sroa.458.0..sroa_idx.i, align 8, !noalias !1456
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @59, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #18, !noalias !1456
  unreachable

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1456
  store ptr %i.s, ptr %i.l, align 8, !noalias !1456
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service16local_threadsafe7ServiceENtB6_5Debug3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.430.0..sroa_idx.i, align 8, !noalias !1456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1456
  store ptr %i.q, ptr %i.k, align 8, !noalias !1456
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !1456
  %i.cp = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.r, ptr %i.cp, align 8, !noalias !1456
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXs4_NtNtCs8Chj7Szqq0n_4core5alloc6layoutNtB5_6LayoutNtNtB9_3fmt5Debug3fmt, ptr %.sroa.438.0..sroa_idx.i, align 8, !noalias !1456
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @5, ptr noundef nonnull %i.l, ptr noundef nonnull @61, ptr noundef nonnull %i.k) #17, !noalias !1456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1456
  %i.cq = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store i8 0, ptr %i.cq, align 1, !alias.scope !1456
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1456
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.z, ptr %i.v, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher9PublisherNtNtNtBD_7service16local_threadsafe7ServiceShuENtB6_5Debug3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.49.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.y, ptr %i.u, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.w, ptr %i.cr, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.417.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @5, ptr noundef nonnull %i.v, ptr noundef nonnull @91, ptr noundef nonnull %i.u) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.r

bb.n:                                             ; preds = %bb.e, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !range !34, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.r

bb.o:                                             ; preds = %bb.g
  %i.cu = extractvalue { i64, i64 } %i.cf, 1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ce, i64 3824
  %i.cw = atomicrmw add ptr %i.cv, i64 1 monotonic, align 8, !noalias !1456 ; 0 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ce, i64 2888
  %i.cy = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details5chunkNtB4_8ChunkMut3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(888) %i.cx, i64 noundef %i.cb, ptr noundef %i.cd, i64 noundef %i.cu) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.018.0.copyload = load i64, ptr %i.cz, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %4 = load <2 x ptr>, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.419.0.copyload = load ptr, ptr %.sroa.419.0..sroa_idx, align 8 ; 3 uses
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.621.0.copyload = load ptr, ptr %.sroa.621.0..sroa_idx, align 8
  %.sroa.722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %.sroa.722.0.copyload = load i64, ptr %.sroa.722.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.da = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsi7NXITnwjWD_27benchmark_publish_subscribe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x) #17
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 3784
  %i.dc = load ptr, ptr %i.db, align 8, !nonnull !5, !noundef !5
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 6144
  %i.de = load ptr, ptr %i.dd, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.02.sroa.0)
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 6024
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.02.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.df, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1457
  %i.dg = call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service16local_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsi7NXITnwjWD_27benchmark_publish_subscribe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa) #17, !noalias !1458
  store ptr %i.dg, ptr %i.a, align 8, !noalias !1457
  %i.dh = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsi7NXITnwjWD_27benchmark_publish_subscribe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) #17, !noalias !1458
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %i.dj = load i128, ptr %i.di, align 16, !noalias !1458, !noundef !5
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB19_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsi7NXITnwjWD_27benchmark_publish_subscribe(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #17, !noalias !1458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1457
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.419.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.02.sroa.0, i64 16, i1 false)
  %.sroa.02.sroa.4.0..sroa.419.0.copyload.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.419.0.copyload, i64 16
  store i128 %i.dj, ptr %.sroa.02.sroa.4.0..sroa.419.0.copyload.sroa_idx, align 8
  %.sroa.53.0..sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.419.0.copyload, i64 32
  store i64 %2, ptr %.sroa.53.0..sroa.9.16..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.02.sroa.0)
  %.val = load ptr, ptr %i.aa, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.dk = atomicrmw add ptr %.val, i64 1 monotonic, align 8
  %i.dl = icmp slt i64 %i.dk, 0
  br i1 %i.dl, label %bb.p, label %_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service16local_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsi7NXITnwjWD_27benchmark_publish_subscribe.exit

bb.p:                                             ; preds = %bb.o
  call void @llvm.trap()
  unreachable

_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service16local_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsi7NXITnwjWD_27benchmark_publish_subscribe.exit: ; preds = %bb.o
  store ptr %.val, ptr %0, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %4, ptr %.sroa.430.0..sroa_idx, align 8
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.621.0.copyload, ptr %.sroa.632.0..sroa_idx, align 8
  %.sroa.733.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %3, ptr %.sroa.733.0..sroa_idx, align 8
  %.sroa.834.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.018.0.copyload, ptr %.sroa.834.0..sroa_idx, align 8
  %.sroa.935.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.722.0.copyload, ptr %.sroa.935.0..sroa_idx, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service16local_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsi7NXITnwjWD_27benchmark_publish_subscribe.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB19_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsi7NXITnwjWD_27benchmark_publish_subscribe(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.x) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  ret void

bb.r:                                             ; preds = %bb.n, %bb.m
  %.sink = phi i8 [ %i.ct, %bb.n ], [ 2, %bb.m ]
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink, ptr %i.dm, align 8
  store ptr null, ptr %0, align 8
  br label %bb.q
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMsb_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service3ipc7ServiceShuE22loan_slice_uninit_implCsi7NXITnwjWD_27benchmark_publish_subscribe(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [64 x i8], align 8                ; 11 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 12 uses
  %i.q = alloca [16 x i8], align 8                ; 10 uses
  %i.r = alloca [8 x i8], align 8                 ; 12 uses
  %i.s = alloca [48 x i8], align 8                ; 12 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [8 x i8], align 8                 ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 7 uses
  %i.x = alloca [8 x i8], align 8                 ; 2 uses
  %i.y = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.y, align 8
  store i64 %2, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.val = load ptr, ptr %i.z, align 8, !nonnull !5, !noundef !5 ; 15 uses
  %i.aa = load i64, ptr %.val, align 8, !noundef !5 ; 2 uses
  %i.ab = icmp ne i64 %i.aa, 0
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = add i64 %i.aa, 1                        ; 2 uses
  store i64 %i.ac, ptr %.val, align 8
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.b, label %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsi7NXITnwjWD_27benchmark_publish_subscribe.exit, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsi7NXITnwjWD_27benchmark_publish_subscribe.exit: ; preds = %bb.a
  store ptr %.val, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 5144
  %i.ag = load i64, ptr %i.af, align 8, !noundef !5 ; 2 uses
  store i64 %i.ag, ptr %i.v, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 5152
  %i.ai = load i8, ptr %i.ah, align 16, !range !8, !noundef !5
  %i.aj = icmp eq i8 %i.ai, 2
  %i.ak = icmp ult i64 %i.ag, %2
  %or.cond = and i1 %i.aj, %i.ak
  br i1 %or.cond, label %bb.n, label %bb.c

bb.c:                                             ; preds = %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsi7NXITnwjWD_27benchmark_publish_subscribe.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1477)
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 2968
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !1477, !noundef !5 ; 6 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.d, label %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs8Chj7Szqq0n_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #18, !noalias !1477
  unreachable

_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit: ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 2960
  %i.ap = load i64, ptr %i.ao, align 16, !alias.scope !1477, !noundef !5
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 3256
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !1477, !noundef !5
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 3264
  %i.at = load i64, ptr %i.as, align 16, !alias.scope !1477, !noundef !5
  %i.au = getelementptr inbounds nuw i8, ptr %.val, i64 3552
  %i.av = load i64, ptr %i.au, align 16, !alias.scope !1477, !noundef !5
  %i.aw = mul i64 %i.av, %2
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 3560
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !1477, !noundef !5
  %i.az = add i64 %i.ap, -2
  %i.ba = add i64 %i.az, %i.ar
  %i.bb = add i64 %i.ba, %i.at
  %i.bc = add i64 %i.bb, %i.aw
  %i.bd = add i64 %i.bc, %i.ay                    ; 2 uses
  %i.be = urem i64 %i.bd, %i.am                   ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  %i.bg = sub i64 %i.am, %i.be
  %i.bh = select i1 %i.bf, i64 0, i64 %i.bg
  %.sroa.0.0.i = add i64 %i.bh, %i.bd             ; 2 uses
  %i.bi = icmp ult i64 %i.am, -9223372036854775807
  tail call void @llvm.assume(i1 %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1478)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.ae, ptr %i.r, align 8, !noalias !1478
  store i64 %i.am, ptr %i.q, align 8, !noalias !1478
  %i.bj = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sroa.0.0.i, ptr %i.bj, align 8, !noalias !1478
  tail call fastcc void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE25retrieve_returned_samplesCsi7NXITnwjWD_27benchmark_publish_subscribe(ptr noundef nonnull align 16 %i.ae) #17, !noalias !1478
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1478
  store ptr @54, ptr %i.p, align 8, !noalias !1478, !captures !22
  %i.bk = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 23, ptr %i.bk, align 8, !noalias !1478
  %i.bl = getelementptr inbounds nuw i8, ptr %.val, i64 3616 ; 2 uses
  %i.bm = load atomic i64, ptr %i.bl monotonic, align 16, !noalias !1478
  %i.bn = getelementptr inbounds nuw i8, ptr %.val, i64 3600 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 16, !noalias !1478, !noundef !5
  %.not.i = icmp ult i64 %i.bm, %i.bo
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1478
  %i.bp = getelementptr inbounds nuw i8, ptr %.val, i64 144
  call void @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service3ipc7ServiceE8allocateCsi7NXITnwjWD_27benchmark_publish_subscribe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull align 8 %i.bp, i64 noundef range(i64 1, -9223372036854775807) %i.am, i64 noundef %.sroa.0.0.i) #17, !noalias !1478
  %i.bq = load i8, ptr %i.l, align 8, !range !11, !noalias !1478, !noundef !5
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.g, label %bb.h

bb.f:                                             ; preds = %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1478
  store ptr %i.r, ptr %i.o, align 8, !noalias !1478
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1478
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1478
  %i.bs = load atomic i64, ptr %i.bl monotonic, align 16, !noalias !1478
  store i64 %i.bs, ptr %i.n, align 8, !noalias !1478
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1478
  store ptr %i.p, ptr %i.m, align 8, !noalias !1478
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !1478
  %i.bt = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.q, ptr %i.bt, align 8, !noalias !1478
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @_RNvXs4_NtNtCs8Chj7Szqq0n_4core5alloc6layoutNtB5_6LayoutNtNtB9_3fmt5Debug3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1478
  %i.bu = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.n, ptr %i.bu, align 8, !noalias !1478
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !1478
  %i.bv = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.bn, ptr %i.bv, align 8, !noalias !1478
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !1478
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @5, ptr noundef nonnull %i.o, ptr noundef nonnull @63, ptr noundef nonnull %i.m) #17, !noalias !1478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1478
  %i.bw = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 1, ptr %i.bw, align 1, !alias.scope !1478
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  %i.bx = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !range !32, !noalias !1478, !noundef !5 ; 2 uses
  switch i8 %i.by, label %bb.j [
    i8 3, label %bb.l
    i8 1, label %bb.k
    i8 2, label %bb.k
  ], !prof !33

bb.h:                                             ; preds = %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !1478, !noundef !5 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !1478, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1478
  %i.cd = load ptr, ptr %i.r, align 8, !noalias !1478, !nonnull !5, !align !10, !noundef !5 ; 3 uses
  %i.ce = tail call fastcc { i64, i64 } @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE13borrow_sampleCsi7NXITnwjWD_27benchmark_publish_subscribe(ptr noundef nonnull align 16 %i.cd, i64 noundef %i.ca) #17, !noalias !1478 ; 2 uses
  %i.cf = extractvalue { i64, i64 } %i.ce, 0
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %bb.p, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1478
  store ptr %i.r, ptr %i.c, align 8, !noalias !1478
  %.sroa.474.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.474.0..sroa_idx.i, align 8, !noalias !1478
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1478
  store ptr %i.p, ptr %i.b, align 8, !noalias !1478
  %.sroa.478.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.478.0..sroa_idx.i, align 8, !noalias !1478
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @5, ptr noundef nonnull %i.c, ptr noundef nonnull @55, ptr noundef nonnull %i.b) #17, !noalias !1478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1478
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1478
  store ptr %i.r, ptr %i.a, align 8, !noalias !1478
  %.sroa.482.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.482.0..sroa_idx.i, align 8, !noalias !1478
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.p, ptr %i.ch, align 8, !noalias !1478
  %.sroa.486.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.486.0..sroa_idx.i, align 8, !noalias !1478
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @56, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #18, !noalias !1478
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1478
  store i8 %i.by, ptr %i.f, align 1, !noalias !1478
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1478
  store ptr %i.r, ptr %i.e, align 8, !noalias !1478
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !1478
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1478
  store ptr %i.p, ptr %i.d, align 8, !noalias !1478
  %.sroa.462.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.462.0..sroa_idx.i, align 8, !noalias !1478
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.q, ptr %i.ci, align 8, !noalias !1478
  %.sroa.466.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs4_NtNtCs8Chj7Szqq0n_4core5alloc6layoutNtB5_6LayoutNtNtB9_3fmt5Debug3fmt, ptr %.sroa.466.0..sroa_idx.i, align 8, !noalias !1478
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.f, ptr %i.cj, align 8, !noalias !1478
  %.sroa.470.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @_RNvXs3_NtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocatorNtB5_18ShmAllocationErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.470.0..sroa_idx.i, align 8, !noalias !1478
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @5, ptr noundef nonnull %i.e, ptr noundef nonnull @62, ptr noundef nonnull %i.d) #17, !noalias !1478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1478
  %i.ck = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 3, ptr %i.ck, align 1, !alias.scope !1478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1478
  br label %bb.m

bb.k:                                             ; preds = %bb.g, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1478
  store ptr %i.r, ptr %i.i, align 8, !noalias !1478
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.426.0..sroa_idx.i, align 8, !noalias !1478
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1478
  store ptr %i.p, ptr %i.h, align 8, !noalias !1478
  %.sroa.442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.442.0..sroa_idx.i, align 8, !noalias !1478
  %i.cl = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.q, ptr %i.cl, align 8, !noalias !1478
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXs4_NtNtCs8Chj7Szqq0n_4core5alloc6layoutNtB5_6LayoutNtNtB9_3fmt5Debug3fmt, ptr %.sroa.446.0..sroa_idx.i, align 8, !noalias !1478
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @5, ptr noundef nonnull %i.i, ptr noundef nonnull @58, ptr noundef nonnull %i.h) #17, !noalias !1478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1478
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1478
  store ptr %i.r, ptr %i.g, align 8, !noalias !1478
  %.sroa.450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.450.0..sroa_idx.i, align 8, !noalias !1478
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.p, ptr %i.cm, align 8, !noalias !1478
  %.sroa.454.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.454.0..sroa_idx.i, align 8, !noalias !1478
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.q, ptr %i.cn, align 8, !noalias !1478
  %.sroa.458.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr @_RNvXs4_NtNtCs8Chj7Szqq0n_4core5alloc6layoutNtB5_6LayoutNtNtB9_3fmt5Debug3fmt, ptr %.sroa.458.0..sroa_idx.i, align 8, !noalias !1478
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @59, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #18, !noalias !1478
  unreachable

bb.l:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1478
  store ptr %i.r, ptr %i.k, align 8, !noalias !1478
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.430.0..sroa_idx.i, align 8, !noalias !1478
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1478
  store ptr %i.p, ptr %i.j, align 8, !noalias !1478
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !1478
  %i.co = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.q, ptr %i.co, align 8, !noalias !1478
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXs4_NtNtCs8Chj7Szqq0n_4core5alloc6layoutNtB5_6LayoutNtNtB9_3fmt5Debug3fmt, ptr %.sroa.438.0..sroa_idx.i, align 8, !noalias !1478
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @5, ptr noundef nonnull %i.k, ptr noundef nonnull @61, ptr noundef nonnull %i.j) #17, !noalias !1478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1478
  %i.cp = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.cp, align 1, !alias.scope !1478
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1478
  br label %bb.o

bb.n:                                             ; preds = %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsi7NXITnwjWD_27benchmark_publish_subscribe.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.y, ptr %i.u, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher9PublisherNtNtNtBD_7service3ipc7ServiceShuENtB6_5Debug3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.49.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.x, ptr %i.t, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.v, ptr %i.cq, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.417.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @5, ptr noundef nonnull %i.u, ptr noundef nonnull @91, ptr noundef nonnull %i.t) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.s

bb.o:                                             ; preds = %bb.f, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !range !34, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.s

bb.p:                                             ; preds = %bb.h
  %i.ct = extractvalue { i64, i64 } %i.ce, 1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cd, i64 3600
  %i.cv = atomicrmw add ptr %i.cu, i64 1 monotonic, align 8, !noalias !1478 ; 0 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cd, i64 2664
  %i.cx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details5chunkNtB4_8ChunkMut3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(888) %i.cw, i64 noundef %i.ca, ptr noundef %i.cc, i64 noundef %i.ct) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.018.0.copyload = load i64, ptr %i.cy, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %4 = load <2 x ptr>, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.419.0.copyload = load ptr, ptr %.sroa.419.0..sroa_idx, align 8 ; 3 uses
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.621.0.copyload = load ptr, ptr %.sroa.621.0..sroa_idx, align 8
  %.sroa.722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %.sroa.722.0.copyload = load i64, ptr %.sroa.722.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.val41 = load ptr, ptr %i.z, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.cz = load i64, ptr %.val41, align 8, !noalias !1479, !noundef !5 ; 2 uses
  %i.da = icmp ne i64 %i.cz, 0
  tail call void @llvm.assume(i1 %i.da)
  %i.db = icmp eq i64 %i.cz, -1
  br i1 %i.db, label %bb.q, label %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service3ipc7ServiceShuE2idCsi7NXITnwjWD_27benchmark_publish_subscribe.exit, !prof !13

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.trap()
  unreachable

_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service3ipc7ServiceShuE2idCsi7NXITnwjWD_27benchmark_publish_subscribe.exit: ; preds = %bb.p
  %.val36 = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5
  %i.dc = getelementptr inbounds nuw i8, ptr %.val36, i64 3576
  %i.dd = load ptr, ptr %i.dc, align 8, !nonnull !5, !noundef !5
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 7280
  %i.df = load ptr, ptr %i.de, align 8, !nonnull !5, !noundef !5
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 6312
  %i.dh = getelementptr inbounds nuw i8, ptr %.val41, i64 80
  %i.di = load i128, ptr %i.dh, align 16, !noalias !1479, !noundef !5
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.419.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %i.dg, i64 16, i1 false)
  %.sroa.02.sroa.4.0..sroa.419.0.copyload.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.419.0.copyload, i64 16
  store i128 %i.di, ptr %.sroa.02.sroa.4.0..sroa.419.0.copyload.sroa_idx, align 8
  %.sroa.53.0..sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.419.0.copyload, i64 32
  store i64 %2, ptr %.sroa.53.0..sroa.9.16..sroa_idx, align 8
  %i.dj = load i64, ptr %.val41, align 16, !noundef !5 ; 2 uses
  %i.dk = icmp ne i64 %i.dj, 0
  tail call void @llvm.assume(i1 %i.dk)
  %i.dl = add i64 %i.dj, 1                        ; 2 uses
  store i64 %i.dl, ptr %.val41, align 16
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %bb.r, label %_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service3ipc7ServiceEENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsi7NXITnwjWD_27benchmark_publish_subscribe.exit, !prof !13

bb.r:                                             ; preds = %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service3ipc7ServiceShuE2idCsi7NXITnwjWD_27benchmark_publish_subscribe.exit
  tail call void @llvm.trap()
  unreachable

_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service3ipc7ServiceEENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsi7NXITnwjWD_27benchmark_publish_subscribe.exit: ; preds = %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service3ipc7ServiceShuE2idCsi7NXITnwjWD_27benchmark_publish_subscribe.exit
  store ptr %.val41, ptr %0, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %4, ptr %.sroa.430.0..sroa_idx, align 8
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.621.0.copyload, ptr %.sroa.632.0..sroa_idx, align 8
  %.sroa.733.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %3, ptr %.sroa.733.0..sroa_idx, align 8
  %.sroa.834.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.018.0.copyload, ptr %.sroa.834.0..sroa_idx, align 8
  %.sroa.935.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.722.0.copyload, ptr %.sroa.935.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  %i.dn = load ptr, ptr %i.w, align 8, !alias.scope !1483, !nonnull !5, !noundef !5 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !noalias !1483, !noundef !5
  %i.dp = add i64 %i.do, -1                       ; 2 uses
  store i64 %i.dp, ptr %i.dn, align 8, !noalias !1483
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service3ipc7ServiceEEECsi7NXITnwjWD_27benchmark_publish_subscribe.exit43.sink.split, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service3ipc7ServiceEEECsi7NXITnwjWD_27benchmark_publish_subscribe.exit43

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service3ipc7ServiceEEECsi7NXITnwjWD_27benchmark_publish_subscribe.exit43.sink.split: ; preds = %_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service3ipc7ServiceEENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsi7NXITnwjWD_27benchmark_publish_subscribe.exit, %bb.s
  call void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtBK_7service3ipc7ServiceEE9drop_slowCsi7NXITnwjWD_27benchmark_publish_subscribe(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w) #19
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service3ipc7ServiceEEECsi7NXITnwjWD_27benchmark_publish_subscribe.exit43

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service3ipc7ServiceEEECsi7NXITnwjWD_27benchmark_publish_subscribe.exit43: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service3ipc7ServiceEEECsi7NXITnwjWD_27benchmark_publish_subscribe.exit43.sink.split, %_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service3ipc7ServiceEENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsi7NXITnwjWD_27benchmark_publish_subscribe.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  ret void

bb.s:                                             ; preds = %bb.o, %bb.n
  %.sink = phi i8 [ %i.cs, %bb.o ], [ 2, %bb.n ]
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink, ptr %i.dr, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.experimental.noalias.scope.decl(metadata !1484)
  call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  %i.ds = load ptr, ptr %i.w, align 8, !alias.scope !1487, !nonnull !5, !noundef !5 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !noalias !1487, !noundef !5
  %i.du = add i64 %i.dt, -1                       ; 2 uses
  store i64 %i.du, ptr %i.ds, align 8, !noalias !1487
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service3ipc7ServiceEEECsi7NXITnwjWD_27benchmark_publish_subscribe.exit43.sink.split, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service3ipc7ServiceEEECsi7NXITnwjWD_27benchmark_publish_subscribe.exit43
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMsb_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service5local7ServiceShuE22loan_slice_uninit_implCsi7NXITnwjWD_27benchmark_publish_subscribe(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [64 x i8], align 8                ; 11 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 12 uses
  %i.q = alloca [16 x i8], align 8                ; 10 uses
  %i.r = alloca [8 x i8], align 8                 ; 12 uses
  %i.s = alloca [48 x i8], align 8                ; 12 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [8 x i8], align 8                 ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 7 uses
  %i.x = alloca [8 x i8], align 8                 ; 2 uses
  %i.y = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.y, align 8
  store i64 %2, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.val = load ptr, ptr %i.z, align 8, !nonnull !5, !noundef !5 ; 15 uses
  %i.aa = load i64, ptr %.val, align 8, !noundef !5 ; 2 uses
  %i.ab = icmp ne i64 %i.aa, 0
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = add i64 %i.aa, 1                        ; 2 uses
  store i64 %i.ac, ptr %.val, align 8
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.b, label %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service5local7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsi7NXITnwjWD_27benchmark_publish_subscribe.exit, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service5local7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsi7NXITnwjWD_27benchmark_publish_subscribe.exit: ; preds = %bb.a
  store ptr %.val, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 5080
  %i.ag = load i64, ptr %i.af, align 8, !noundef !5 ; 2 uses
  store i64 %i.ag, ptr %i.v, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 5088
  %i.ai = load i8, ptr %i.ah, align 16, !range !8, !noundef !5
  %i.aj = icmp eq i8 %i.ai, 2
  %i.ak = icmp ult i64 %i.ag, %2
  %or.cond = and i1 %i.aj, %i.ak
  br i1 %or.cond, label %bb.n, label %bb.c

bb.c:                                             ; preds = %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service5local7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsi7NXITnwjWD_27benchmark_publish_subscribe.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1506)
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 3192
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !1506, !noundef !5 ; 6 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.d, label %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs8Chj7Szqq0n_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #18, !noalias !1506
  unreachable

_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit: ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 3184
  %i.ap = load i64, ptr %i.ao, align 16, !alias.scope !1506, !noundef !5
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 3480
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !1506, !noundef !5
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 3488
  %i.at = load i64, ptr %i.as, align 16, !alias.scope !1506, !noundef !5
  %i.au = getelementptr inbounds nuw i8, ptr %.val, i64 3776
  %i.av = load i64, ptr %i.au, align 16, !alias.scope !1506, !noundef !5
  %i.aw = mul i64 %i.av, %2
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 3784
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !1506, !noundef !5
  %i.az = add i64 %i.ap, -2
  %i.ba = add i64 %i.az, %i.ar
  %i.bb = add i64 %i.ba, %i.at
  %i.bc = add i64 %i.bb, %i.aw
  %i.bd = add i64 %i.bc, %i.ay                    ; 2 uses
  %i.be = urem i64 %i.bd, %i.am                   ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  %i.bg = sub i64 %i.am, %i.be
  %i.bh = select i1 %i.bf, i64 0, i64 %i.bg
  %.sroa.0.0.i = add i64 %i.bh, %i.bd             ; 2 uses
  %i.bi = icmp ult i64 %i.am, -9223372036854775807
  tail call void @llvm.assume(i1 %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1507)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.ae, ptr %i.r, align 8, !noalias !1507
  store i64 %i.am, ptr %i.q, align 8, !noalias !1507
  %i.bj = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sroa.0.0.i, ptr %i.bj, align 8, !noalias !1507
  tail call fastcc void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service5local7ServiceE25retrieve_returned_samplesCsi7NXITnwjWD_27benchmark_publish_subscribe(ptr noundef nonnull align 16 %i.ae) #17, !noalias !1507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1507
  store ptr @54, ptr %i.p, align 8, !noalias !1507, !captures !22
  %i.bk = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 23, ptr %i.bk, align 8, !noalias !1507
  %i.bl = getelementptr inbounds nuw i8, ptr %.val, i64 3840 ; 2 uses
  %i.bm = load atomic i64, ptr %i.bl monotonic, align 16, !noalias !1507
  %i.bn = getelementptr inbounds nuw i8, ptr %.val, i64 3824 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 16, !noalias !1507, !noundef !5
  %.not.i = icmp ult i64 %i.bm, %i.bo
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1507
  %i.bp = getelementptr inbounds nuw i8, ptr %.val, i64 192
  call void @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service5local7ServiceE8allocateCsi7NXITnwjWD_27benchmark_publish_subscribe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull align 8 %i.bp, i64 noundef range(i64 1, -9223372036854775807) %i.am, i64 noundef %.sroa.0.0.i) #17, !noalias !1507
  %i.bq = load i8, ptr %i.l, align 8, !range !11, !noalias !1507, !noundef !5
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.g, label %bb.h

bb.f:                                             ; preds = %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1507
  store ptr %i.r, ptr %i.o, align 8, !noalias !1507
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service5local7ServiceENtB6_5Debug3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1507
  %i.bs = load atomic i64, ptr %i.bl monotonic, align 16, !noalias !1507
  store i64 %i.bs, ptr %i.n, align 8, !noalias !1507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1507
  store ptr %i.p, ptr %i.m, align 8, !noalias !1507
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !1507
  %i.bt = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.q, ptr %i.bt, align 8, !noalias !1507
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @_RNvXs4_NtNtCs8Chj7Szqq0n_4core5alloc6layoutNtB5_6LayoutNtNtB9_3fmt5Debug3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1507
  %i.bu = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.n, ptr %i.bu, align 8, !noalias !1507
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !1507
  %i.bv = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.bn, ptr %i.bv, align 8, !noalias !1507
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !1507
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @5, ptr noundef nonnull %i.o, ptr noundef nonnull @63, ptr noundef nonnull %i.m) #17, !noalias !1507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1507
  %i.bw = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 1, ptr %i.bw, align 1, !alias.scope !1507
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  %i.bx = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !range !32, !noalias !1507, !noundef !5 ; 2 uses
  switch i8 %i.by, label %bb.j [
    i8 3, label %bb.l
    i8 1, label %bb.k
    i8 2, label %bb.k
  ], !prof !33

bb.h:                                             ; preds = %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !1507, !noundef !5 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !1507, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1507
  %i.cd = load ptr, ptr %i.r, align 8, !noalias !1507, !nonnull !5, !align !10, !noundef !5 ; 3 uses
  %i.ce = tail call fastcc { i64, i64 } @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service5local7ServiceE13borrow_sampleCsi7NXITnwjWD_27benchmark_publish_subscribe(ptr noundef nonnull align 16 %i.cd, i64 noundef %i.ca) #17, !noalias !1507 ; 2 uses
  %i.cf = extractvalue { i64, i64 } %i.ce, 0
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %bb.p, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1507
  store ptr %i.r, ptr %i.c, align 8, !noalias !1507
  %.sroa.474.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service5local7ServiceENtB6_5Debug3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.474.0..sroa_idx.i, align 8, !noalias !1507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1507
  store ptr %i.p, ptr %i.b, align 8, !noalias !1507
  %.sroa.478.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.478.0..sroa_idx.i, align 8, !noalias !1507
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @5, ptr noundef nonnull %i.c, ptr noundef nonnull @55, ptr noundef nonnull %i.b) #17, !noalias !1507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1507
  store ptr %i.r, ptr %i.a, align 8, !noalias !1507
  %.sroa.482.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service5local7ServiceENtB6_5Debug3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.482.0..sroa_idx.i, align 8, !noalias !1507
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.p, ptr %i.ch, align 8, !noalias !1507
  %.sroa.486.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.486.0..sroa_idx.i, align 8, !noalias !1507
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @56, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #18, !noalias !1507
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1507
  store i8 %i.by, ptr %i.f, align 1, !noalias !1507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1507
  store ptr %i.r, ptr %i.e, align 8, !noalias !1507
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service5local7ServiceENtB6_5Debug3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !1507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1507
  store ptr %i.p, ptr %i.d, align 8, !noalias !1507
  %.sroa.462.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.462.0..sroa_idx.i, align 8, !noalias !1507
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.q, ptr %i.ci, align 8, !noalias !1507
  %.sroa.466.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs4_NtNtCs8Chj7Szqq0n_4core5alloc6layoutNtB5_6LayoutNtNtB9_3fmt5Debug3fmt, ptr %.sroa.466.0..sroa_idx.i, align 8, !noalias !1507
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.f, ptr %i.cj, align 8, !noalias !1507
  %.sroa.470.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @_RNvXs3_NtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocatorNtB5_18ShmAllocationErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.470.0..sroa_idx.i, align 8, !noalias !1507
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @5, ptr noundef nonnull %i.e, ptr noundef nonnull @62, ptr noundef nonnull %i.d) #17, !noalias !1507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1507
  %i.ck = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 3, ptr %i.ck, align 1, !alias.scope !1507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1507
  br label %bb.m

bb.k:                                             ; preds = %bb.g, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1507
  store ptr %i.r, ptr %i.i, align 8, !noalias !1507
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service5local7ServiceENtB6_5Debug3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.426.0..sroa_idx.i, align 8, !noalias !1507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1507
  store ptr %i.p, ptr %i.h, align 8, !noalias !1507
  %.sroa.442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.442.0..sroa_idx.i, align 8, !noalias !1507
  %i.cl = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.q, ptr %i.cl, align 8, !noalias !1507
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXs4_NtNtCs8Chj7Szqq0n_4core5alloc6layoutNtB5_6LayoutNtNtB9_3fmt5Debug3fmt, ptr %.sroa.446.0..sroa_idx.i, align 8, !noalias !1507
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @5, ptr noundef nonnull %i.i, ptr noundef nonnull @58, ptr noundef nonnull %i.h) #17, !noalias !1507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1507
  store ptr %i.r, ptr %i.g, align 8, !noalias !1507
  %.sroa.450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service5local7ServiceENtB6_5Debug3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.450.0..sroa_idx.i, align 8, !noalias !1507
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.p, ptr %i.cm, align 8, !noalias !1507
  %.sroa.454.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.454.0..sroa_idx.i, align 8, !noalias !1507
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.q, ptr %i.cn, align 8, !noalias !1507
  %.sroa.458.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr @_RNvXs4_NtNtCs8Chj7Szqq0n_4core5alloc6layoutNtB5_6LayoutNtNtB9_3fmt5Debug3fmt, ptr %.sroa.458.0..sroa_idx.i, align 8, !noalias !1507
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @59, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #18, !noalias !1507
  unreachable

bb.l:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1507
  store ptr %i.r, ptr %i.k, align 8, !noalias !1507
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service5local7ServiceENtB6_5Debug3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.430.0..sroa_idx.i, align 8, !noalias !1507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1507
  store ptr %i.p, ptr %i.j, align 8, !noalias !1507
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !1507
  %i.co = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.q, ptr %i.co, align 8, !noalias !1507
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXs4_NtNtCs8Chj7Szqq0n_4core5alloc6layoutNtB5_6LayoutNtNtB9_3fmt5Debug3fmt, ptr %.sroa.438.0..sroa_idx.i, align 8, !noalias !1507
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @5, ptr noundef nonnull %i.k, ptr noundef nonnull @61, ptr noundef nonnull %i.j) #17, !noalias !1507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1507
  %i.cp = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.cp, align 1, !alias.scope !1507
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1507
  br label %bb.o

bb.n:                                             ; preds = %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service5local7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsi7NXITnwjWD_27benchmark_publish_subscribe.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.y, ptr %i.u, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher9PublisherNtNtNtBD_7service5local7ServiceShuENtB6_5Debug3fmtCsi7NXITnwjWD_27benchmark_publish_subscribe, ptr %.sroa.49.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.x, ptr %i.t, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.v, ptr %i.cq, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.417.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @5, ptr noundef nonnull %i.u, ptr noundef nonnull @91, ptr noundef nonnull %i.t) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.s

bb.o:                                             ; preds = %bb.f, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !range !34, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.s

bb.p:                                             ; preds = %bb.h
  %i.ct = extractvalue { i64, i64 } %i.ce, 1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cd, i64 3824
  %i.cv = atomicrmw add ptr %i.cu, i64 1 monotonic, align 8, !noalias !1507 ; 0 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cd, i64 2888
  %i.cx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details5chunkNtB4_8ChunkMut3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(888) %i.cw, i64 noundef %i.ca, ptr noundef %i.cc, i64 noundef %i.ct) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.018.0.copyload = load i64, ptr %i.cy, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %4 = load <2 x ptr>, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.419.0.copyload = load ptr, ptr %.sroa.419.0..sroa_idx, align 8 ; 3 uses
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.621.0.copyload = load ptr, ptr %.sroa.621.0..sroa_idx, align 8
  %.sroa.722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %.sroa.722.0.copyload = load i64, ptr %.sroa.722.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.val41 = load ptr, ptr %i.z, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.cz = load i64, ptr %.val41, align 8, !noalias !1508, !noundef !5 ; 2 uses
  %i.da = icmp ne i64 %i.cz, 0
  tail call void @llvm.assume(i1 %i.da)
  %i.db = icmp eq i64 %i.cz, -1
  br i1 %i.db, label %bb.q, label %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service5local7ServiceShuE2idCsi7NXITnwjWD_27benchmark_publish_subscribe.exit, !prof !13

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.trap()
  unreachable

_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service5local7ServiceShuE2idCsi7NXITnwjWD_27benchmark_publish_subscribe.exit: ; preds = %bb.p
  %.val36 = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5
  %i.dc = getelementptr inbounds nuw i8, ptr %.val36, i64 3800
  %i.dd = load ptr, ptr %i.dc, align 8, !nonnull !5, !noundef !5
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 6144
  %i.df = load ptr, ptr %i.de, align 8, !nonnull !5, !noundef !5
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 6024
  %i.dh = getelementptr inbounds nuw i8, ptr %.val41, i64 80
  %i.di = load i128, ptr %i.dh, align 16, !noalias !1508, !noundef !5
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.419.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %i.dg, i64 16, i1 false)
  %.sroa.02.sroa.4.0..sroa.419.0.copyload.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.419.0.copyload, i64 16
  store i128 %i.di, ptr %.sroa.02.sroa.4.0..sroa.419.0.copyload.sroa_idx, align 8
  %.sroa.53.0..sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.419.0.copyload, i64 32
  store i64 %2, ptr %.sroa.53.0..sroa.9.16..sroa_idx, align 8
  %i.dj = load i64, ptr %.val41, align 16, !noundef !5 ; 2 uses
  %i.dk = icmp ne i64 %i.dj, 0
  tail call void @llvm.assume(i1 %i.dk)
  %i.dl = add i64 %i.dj, 1                        ; 2 uses
  store i64 %i.dl, ptr %.val41, align 16
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %bb.r, label %_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service5local7ServiceEENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsi7NXITnwjWD_27benchmark_publish_subscribe.exit, !prof !13

bb.r:                                             ; preds = %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service5local7ServiceShuE2idCsi7NXITnwjWD_27benchmark_publish_subscribe.exit
  tail call void @llvm.trap()
  unreachable

_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service5local7ServiceEENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsi7NXITnwjWD_27benchmark_publish_subscribe.exit: ; preds = %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service5local7ServiceShuE2idCsi7NXITnwjWD_27benchmark_publish_subscribe.exit
  store ptr %.val41, ptr %0, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %4, ptr %.sroa.430.0..sroa_idx, align 8
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.621.0.copyload, ptr %.sroa.632.0..sroa_idx, align 8
  %.sroa.733.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %3, ptr %.sroa.733.0..sroa_idx, align 8
  %.sroa.834.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.018.0.copyload, ptr %.sroa.834.0..sroa_idx, align 8
  %.sroa.935.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.722.0.copyload, ptr %.sroa.935.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1511)
  %i.dn = load ptr, ptr %i.w, align 8, !alias.scope !1512, !nonnull !5, !noundef !5 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !noalias !1512, !noundef !5
  %i.dp = add i64 %i.do, -1                       ; 2 uses
  store i64 %i.dp, ptr %i.dn, align 8, !noalias !1512
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service5local7ServiceEEECsi7NXITnwjWD_27benchmark_publish_subscribe.exit43.sink.split, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service5local7ServiceEEECsi7NXITnwjWD_27benchmark_publish_subscribe.exit43

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service5local7ServiceEEECsi7NXITnwjWD_27benchmark_publish_subscribe.exit43.sink.split: ; preds = %_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service5local7ServiceEENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsi7NXITnwjWD_27benchmark_publish_subscribe.exit, %bb.s
  call void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtBK_7service5local7ServiceEE9drop_slowCsi7NXITnwjWD_27benchmark_publish_subscribe(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w) #19
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service5local7ServiceEEECsi7NXITnwjWD_27benchmark_publish_subscribe.exit43

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service5local7ServiceEEECsi7NXITnwjWD_27benchmark_publish_subscribe.exit43: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service5local7ServiceEEECsi7NXITnwjWD_27benchmark_publish_subscribe.exit43.sink.split, %_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service5local7ServiceEENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsi7NXITnwjWD_27benchmark_publish_subscribe.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  ret void

bb.s:                                             ; preds = %bb.o, %bb.n
  %.sink = phi i8 [ %i.cs, %bb.o ], [ 2, %bb.n ]
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink, ptr %i.dr, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.experimental.noalias.scope.decl(metadata !1513)
  call void @llvm.experimental.noalias.scope.decl(metadata !1514)
  call void @llvm.experimental.noalias.scope.decl(metadata !1515)
  %i.ds = load ptr, ptr %i.w, align 8, !alias.scope !1516, !nonnull !5, !noundef !5 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !noalias !1516, !noundef !5
  %i.du = add i64 %i.dt, -1                       ; 2 uses
  store i64 %i.du, ptr %i.ds, align 8, !noalias !1516
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service5local7ServiceEEECsi7NXITnwjWD_27benchmark_publish_subscribe.exit43.sink.split, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service5local7ServiceEEECsi7NXITnwjWD_27benchmark_publish_subscribe.exit43
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtCs3stRo7scs5B_22iceoryx2_bb_elementary13cyclic_taggerNtB5_12CyclicTaggerNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @93, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @92) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policyNtB5_26ArcSyncPolicyCreationErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !11, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 15, i64 21
  %.1 = select i1 %i.b, ptr @95, ptr @94
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.) #17
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs0_NtCsbqH9stoieM8_5alloc6borrowINtB5_3CoweENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsi7NXITnwjWD_27benchmark_publish_subscribe(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load i64, ptr %1, align 8, !range !16, !noundef !5
  %.not = icmp eq i64 %i.b, -1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 6 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1523
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsi7NXITnwjWD_27benchmark_publish_subscribe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.f, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1) #17, !noalias !1523
  %i.g = load i64, ptr %i.a, align 8, !range !9, !noalias !1523, !noundef !5
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !29, !noalias !1523, !noundef !5 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %bb.c, label %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsi7NXITnwjWD_27benchmark_publish_subscribe.exit.i.i, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.k, align 8, !noalias !1523
  tail call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #20, !noalias !1523
  unreachable

_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsi7NXITnwjWD_27benchmark_publish_subscribe.exit.i.i: ; preds = %bb.b
  %i.m = load ptr, ptr %i.k, align 8, !noalias !1523, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = icmp samesign ule i64 %i.f, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1523
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %_RNvXs2_NtCsbqH9stoieM8_5alloc3streNtNtB7_6borrow7ToOwned8to_owned.exit, label %bb.d

bb.d:                                             ; preds = %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsi7NXITnwjWD_27benchmark_publish_subscribe.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 1 %i.d, i64 range(i64 0, -9223372036854775808) %i.f, i1 false), !noalias !1524
  br label %_RNvXs2_NtCsbqH9stoieM8_5alloc3streNtNtB7_6borrow7ToOwned8to_owned.exit

_RNvXs2_NtCsbqH9stoieM8_5alloc3streNtNtB7_6borrow7ToOwned8to_owned.exit: ; preds = %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsi7NXITnwjWD_27benchmark_publish_subscribe.exit.i.i, %bb.d
  store i64 %i.j, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.p, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNvXs2_NtCsbqH9stoieM8_5alloc3streNtNtB7_6borrow7ToOwned8to_owned.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsigunbJSLHCW_3std3ffi6os_strNtB5_8OsStringINtNtCs8Chj7Szqq0n_4core7convert4FromRNtNtCsbqH9stoieM8_5alloc6string6StringE4fromCsi7NXITnwjWD_27benchmark_publish_subscribe(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1530)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load ptr, ptr %i.b, align 8, !noalias !1530, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i = load i64, ptr %i.c, align 8, !noalias !1530, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1531
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsi7NXITnwjWD_27benchmark_publish_subscribe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %.val1.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1) #17, !noalias !1531
  %i.d = load i64, ptr %i.a, align 8, !range !9, !noalias !1531, !noundef !5
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !29, !noalias !1531, !noundef !5 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsi7NXITnwjWD_27benchmark_publish_subscribe.exit.i.i, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !noalias !1531
  tail call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #20, !noalias !1531
  unreachable

_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsi7NXITnwjWD_27benchmark_publish_subscribe.exit.i.i: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !noalias !1531, !nonnull !5, !noundef !5 ; 2 uses
  %i.k = icmp samesign ule i64 %.val1.i.i, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1531
  %.not.i.i = icmp eq i64 %.val1.i.i, 0
  br i1 %.not.i.i, label %_RNvXNvXs0_NtNtCsigunbJSLHCW_3std3ffi6os_strNtB8_8OsStringINtNtCs8Chj7Szqq0n_4core7convert4FromRpE4fromRNtNtCsbqH9stoieM8_5alloc6string6StringNtB2_14SpecToOsString17spec_to_os_stringCsi7NXITnwjWD_27benchmark_publish_subscribe.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsi7NXITnwjWD_27benchmark_publish_subscribe.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull readonly align 1 %.val.i.i, i64 range(i64 0, -9223372036854775808) %.val1.i.i, i1 false), !noalias !1532
  br label %_RNvXNvXs0_NtNtCsigunbJSLHCW_3std3ffi6os_strNtB8_8OsStringINtNtCs8Chj7Szqq0n_4core7convert4FromRpE4fromRNtNtCsbqH9stoieM8_5alloc6string6StringNtB2_14SpecToOsString17spec_to_os_stringCsi7NXITnwjWD_27benchmark_publish_subscribe.exit

_RNvXNvXs0_NtNtCsigunbJSLHCW_3std3ffi6os_strNtB8_8OsStringINtNtCs8Chj7Szqq0n_4core7convert4FromRpE4fromRNtNtCsbqH9stoieM8_5alloc6string6StringNtB2_14SpecToOsString17spec_to_os_stringCsi7NXITnwjWD_27benchmark_publish_subscribe.exit: ; preds = %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsi7NXITnwjWD_27benchmark_publish_subscribe.exit.i.i, %bb.c
  store i64 %i.g, ptr %0, align 8, !alias.scope !1530
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !1530
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val1.i.i, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !1530
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs16_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix11socket_pairNtB6_15StreamingSocketNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noundef nonnull align 4 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @103, i64 noundef 15, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @100, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @104, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @101) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port21backpressure_strategyNtB5_20BackpressureStrategyNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !11, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 11, i64 19
  %.1 = select i1 %i.b, ptr @106, ptr @105
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.) #17
  ret i1 %i.c
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB5_11TypeVariantNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !range !25, !noundef !5
  %i.b = trunc nuw i32 %i.a to i1                 ; 2 uses
  %. = select i1 %i.b, i64 7, i64 9
  %.1 = select i1 %i.b, ptr @108, ptr @107
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.) #17
  ret i1 %i.c
}
end_hunk_0
