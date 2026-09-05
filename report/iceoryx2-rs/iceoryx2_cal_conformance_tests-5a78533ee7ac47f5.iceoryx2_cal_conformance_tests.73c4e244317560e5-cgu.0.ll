Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_cal_conformance_tests-5a78533ee7ac47f5.iceoryx2_cal_conformance_tests.73c4e244317560e5-cgu.0?download=true
begin_hunk_0_@_RNvXst_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexNtB5_18MutexCreationErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt:bb.a
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 36) #13
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.j, ptr %i.a, align 8
  %i.k = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @56) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ %i.f, %bb.e ], [ %i.g, %bb.f ], [ %i.h, %bb.g ], [ %i.i, %bb.h ], [ %i.k, %bb.i ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef nonnull align 8 ptr @_RNvYNCNvNvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19shm_allocator_trait19shm_allocator_trait22allocator_id_is_unique13ALLOCATOR_IDS0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceuE9call_onceBc_() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [4 x i8], align 4                 ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %i.ac = alloca [8 x i8], align 4                ; 12 uses
  %i.ad = alloca [16 x i8], align 8               ; 15 uses
  %i.ae = alloca [8 x i8], align 8                ; 17 uses
  %i.af = alloca [8 x i8], align 8                ; 4 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = alloca [8 x i8], align 4                ; 4 uses
  %i.ai = alloca [24 x i8], align 8               ; 7 uses
  %i.aj = alloca [16 x i8], align 4               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @_RNvMsg_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexNtB5_12MutexBuilder3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.aj) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store ptr null, ptr %i.ai, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.ak = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19shm_allocator_trait19shm_allocator_trait22allocator_id_is_unique10MTX_HANDLE, i64 88) acquire, align 8
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_RINvMs0_NtNtCsigunbJSLHCW_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3set8BTreeSethEEE5force0ECs9WeDvfThRIv_30iceoryx2_cal_conformance_tests.exit.i, label %bb.b, !prof !147

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr @_RNvNvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19shm_allocator_trait19shm_allocator_trait22allocator_id_is_unique10MTX_HANDLE, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %i.ag, ptr %i.af, align 8
  call void @_RNvMs0_NtNtNtNtCsigunbJSLHCW_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19shm_allocator_trait19shm_allocator_trait22allocator_id_is_unique10MTX_HANDLE, i64 88), i1 noundef zeroext true, ptr noundef nonnull %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %_RINvMs0_NtNtCsigunbJSLHCW_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3set8BTreeSethEEE5force0ECs9WeDvfThRIv_30iceoryx2_cal_conformance_tests.exit.i

_RINvMs0_NtNtCsigunbJSLHCW_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3set8BTreeSethEEE5force0ECs9WeDvfThRIv_30iceoryx2_cal_conformance_tests.exit.i: ; preds = %bb.b, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !148)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !149
  store ptr %i.aj, ptr %i.ae, align 8, !noalias !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !150
  store ptr @4, ptr %i.ad, align 8, !noalias !150, !captures !151
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 22, ptr %i.am, align 8, !noalias !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !150
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 3 uses
  store i32 0, ptr %i.an, align 8, !noalias !150
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 20 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ae, ptr %i.ab, align 8, !noalias !150
  store ptr %i.ad, ptr %i.ap, align 8, !noalias !150
  store i8 1, ptr %i.ao, align 4, !noalias !150
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.aq = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread22pthread_mutexattr_init(ptr noundef nonnull align 4 dereferenceable(4) %i.an) #13, !noalias !153
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.c, label %_RNCINvMsg_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexNtB8_12MutexBuilder6createINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3set8BTreeSethEE0Cs9WeDvfThRIv_30iceoryx2_cal_conformance_tests.exit.thread11.i.i.i

_RNCINvMsg_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexNtB8_12MutexBuilder6createINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3set8BTreeSethEE0Cs9WeDvfThRIv_30iceoryx2_cal_conformance_tests.exit.thread11.i.i.i: ; preds = %_RINvMs0_NtNtCsigunbJSLHCW_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3set8BTreeSethEEE5force0ECs9WeDvfThRIv_30iceoryx2_cal_conformance_tests.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !154
  store ptr %i.ae, ptr %i.j, align 8, !noalias !154
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex12MutexBuilderNtB6_5Debug3fmtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !154
  store ptr %i.ad, ptr %i.i, align 8, !noalias !154
  %.sroa.47.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests, ptr %.sroa.47.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !154
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @5, ptr noundef nonnull %i.j, ptr noundef nonnull @19, ptr noundef nonnull %i.i) #13, !noalias !155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !154
  br label %bb.x

bb.c:                                             ; preds = %_RINvMs0_NtNtCsigunbJSLHCW_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3set8BTreeSethEEE5force0ECs9WeDvfThRIv_30iceoryx2_cal_conformance_tests.exit.i
  %.sroa.07.0.copyload.i.i.i.i.i.i = load i32, ptr %i.an, align 8, !alias.scope !152, !noalias !156
  %i.as = load i8, ptr %i.ao, align 4, !range !7, !alias.scope !152, !noalias !156, !noundef !4
  %.sroa.9.8.insert.ext.i.i.i.i.i = zext nneg i8 %i.as to i32
  store i32 %.sroa.07.0.copyload.i.i.i.i.i.i, ptr %i.ac, align 4, !noalias !150
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 5 uses
  store i32 %.sroa.9.8.insert.ext.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !noalias !150
  %i.at = load ptr, ptr %i.ae, align 8, !noalias !150, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.av = load i8, ptr %i.au, align 4, !range !7, !noalias !157, !noundef !4 ; 2 uses
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i, %bb.c
  %i.ax = phi ptr [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.at, %bb.c ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i32, ptr %i.ay, align 4, !range !11, !noalias !157, !noundef !4
  %i.ba = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread25pthread_mutexattr_settype(ptr noundef nonnull %i.ac, i32 noundef %i.az) #13, !noalias !157
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.g, label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.bc = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread28pthread_mutexattr_setpshared(ptr noundef nonnull %i.ac, i32 noundef 1) #13, !noalias !157
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %._crit_edge.i.i.i.i.i, label %bb.f

._crit_edge.i.i.i.i.i:                            ; preds = %bb.e
  %.pre.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !noalias !150
  br label %bb.d

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !150
  store ptr %i.ae, ptr %i.aa, align 8, !noalias !150
  %.sroa.439.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex12MutexBuilderNtB6_5Debug3fmtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests, ptr %.sroa.439.0..sroa_idx.i.i.i.i.i, align 8, !noalias !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !150
  store ptr %i.ad, ptr %i.z, align 8, !noalias !150
  %.sroa.443.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests, ptr %.sroa.443.0..sroa_idx.i.i.i.i.i, align 8, !noalias !150
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @5, ptr noundef nonnull %i.aa, ptr noundef nonnull @13, ptr noundef nonnull %i.z) #13, !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !150
  br label %bb.q

bb.g:                                             ; preds = %bb.d
  %i.be = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread29pthread_mutexattr_setprotocol(ptr noundef nonnull %i.ac, i32 noundef 0) #13, !noalias !157
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !150
  store ptr %i.ae, ptr %i.y, align 8, !noalias !150
  %.sroa.447.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex12MutexBuilderNtB6_5Debug3fmtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests, ptr %.sroa.447.0..sroa_idx.i.i.i.i.i, align 8, !noalias !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !150
  store ptr %i.ad, ptr %i.x, align 8, !noalias !150
  %.sroa.451.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests, ptr %.sroa.451.0..sroa_idx.i.i.i.i.i, align 8, !noalias !150
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @5, ptr noundef nonnull %i.y, ptr noundef nonnull @12, ptr noundef nonnull %i.x) #13, !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !150
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.bg = load ptr, ptr %i.ae, align 8, !noalias !150, !nonnull !4, !align !13, !noundef !4
  %i.bh = load i32, ptr %i.bg, align 4, !range !12, !noalias !157, !noundef !4
  %i.bi = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread27pthread_mutexattr_setrobust(ptr noundef nonnull %i.ac, i32 noundef %i.bh) #13, !noalias !157
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !150
  store ptr %i.ae, ptr %i.w, align 8, !noalias !150
  %.sroa.455.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex12MutexBuilderNtB6_5Debug3fmtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests, ptr %.sroa.455.0..sroa_idx.i.i.i.i.i, align 8, !noalias !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !150
  store ptr %i.ad, ptr %i.v, align 8, !noalias !150
  %.sroa.459.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests, ptr %.sroa.459.0..sroa_idx.i.i.i.i.i, align 8, !noalias !150
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @5, ptr noundef nonnull %i.w, ptr noundef nonnull @11, ptr noundef nonnull %i.v) #13, !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !150
  br label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.bk = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread18pthread_mutex_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19shm_allocator_trait19shm_allocator_trait22allocator_id_is_unique10MTX_HANDLE, i64 32), ptr noundef nonnull %i.ac) #13, !noalias !157
  %i.bl = call noundef i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef %i.bk) #13, !noalias !157 ; 3 uses
  switch i32 %i.bl, label %bb.m [
    i32 0, label %bb.t
    i32 1, label %bb.n
    i32 11, label %bb.o
    i32 12, label %bb.p
  ]

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !150
  store ptr %i.ae, ptr %i.u, align 8, !noalias !150
  %.sroa.463.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex12MutexBuilderNtB6_5Debug3fmtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests, ptr %.sroa.463.0..sroa_idx.i.i.i.i.i, align 8, !noalias !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !150
  store ptr %i.ad, ptr %i.t, align 8, !noalias !150
  %.sroa.467.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests, ptr %.sroa.467.0..sroa_idx.i.i.i.i.i, align 8, !noalias !150
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @5, ptr noundef nonnull %i.u, ptr noundef nonnull @10, ptr noundef nonnull %i.t) #13, !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !150
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !150
  store i32 %i.bl, ptr %i.m, align 4, !noalias !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !150
  store ptr %i.ae, ptr %i.l, align 8, !noalias !150
  %.sroa.471.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex12MutexBuilderNtB6_5Debug3fmtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests, ptr %.sroa.471.0..sroa_idx.i.i.i.i.i, align 8, !noalias !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !150
  store ptr %i.ad, ptr %i.k, align 8, !noalias !150
  %.sroa.499.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests, ptr %.sroa.499.0..sroa_idx.i.i.i.i.i, align 8, !noalias !150
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.m, ptr %i.bm, align 8, !noalias !150
  %.sroa.4103.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.4103.0..sroa_idx.i.i.i.i.i, align 8, !noalias !150
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @5, ptr noundef nonnull %i.l, ptr noundef nonnull @9, ptr noundef nonnull %i.k) #13, !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !150
  br label %bb.q

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !150
  store ptr %i.ae, ptr %i.o, align 8, !noalias !150
  %.sroa.475.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex12MutexBuilderNtB6_5Debug3fmtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests, ptr %.sroa.475.0..sroa_idx.i.i.i.i.i, align 8, !noalias !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !150
  store ptr %i.ad, ptr %i.n, align 8, !noalias !150
  %.sroa.495.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests, ptr %.sroa.495.0..sroa_idx.i.i.i.i.i, align 8, !noalias !150
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @5, ptr noundef nonnull %i.o, ptr noundef nonnull @6, ptr noundef nonnull %i.n) #13, !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !150
  br label %bb.q

bb.o:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !150
  store ptr %i.ae, ptr %i.q, align 8, !noalias !150
  %.sroa.479.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex12MutexBuilderNtB6_5Debug3fmtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests, ptr %.sroa.479.0..sroa_idx.i.i.i.i.i, align 8, !noalias !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !150
  store ptr %i.ad, ptr %i.p, align 8, !noalias !150
  %.sroa.491.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests, ptr %.sroa.491.0..sroa_idx.i.i.i.i.i, align 8, !noalias !150
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @5, ptr noundef nonnull %i.q, ptr noundef nonnull @7, ptr noundef nonnull %i.p) #13, !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !150
  br label %bb.q

bb.p:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !150
  store ptr %i.ae, ptr %i.s, align 8, !noalias !150
  %.sroa.483.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex12MutexBuilderNtB6_5Debug3fmtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests, ptr %.sroa.483.0..sroa_idx.i.i.i.i.i, align 8, !noalias !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !150
  store ptr %i.ad, ptr %i.r, align 8, !noalias !150
  %.sroa.487.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests, ptr %.sroa.487.0..sroa_idx.i.i.i.i.i, align 8, !noalias !150
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @5, ptr noundef nonnull %i.s, ptr noundef nonnull @8, ptr noundef nonnull %i.r) #13, !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !150
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.j, %bb.h, %bb.f
  %.sroa.12.sroa.0.2.i.i.i.i.i = phi i32 [ %i.bl, %bb.m ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.l ], [ 0, %bb.j ], [ 0, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %.sroa.0.2.i.i.i.i.i = phi i32 [ 7, %bb.m ], [ 2, %bb.n ], [ 1, %bb.o ], [ 0, %bb.p ], [ 6, %bb.l ], [ 5, %bb.j ], [ 4, %bb.h ], [ 3, %bb.f ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.bn = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !range !7, !alias.scope !160, !noalias !150, !noundef !4
  %i.bo = trunc nuw i8 %i.bn to i1
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !alias.scope !160, !noalias !150
  br i1 %i.bo, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.bp = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread25pthread_mutexattr_destroy(ptr noundef nonnull align 4 dereferenceable(8) %i.ac) #13, !noalias !157
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.x, label %bb.s, !prof !147

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !161
  store ptr @20, ptr %i.h, align 8, !noalias !161, !captures !151
  %i.br = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 44, ptr %i.br, align 8, !noalias !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !161
  store ptr %i.h, ptr %i.g, align 8, !noalias !161
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !161
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull @21, ptr noundef nonnull %i.g) #13, !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !161
  store ptr @20, ptr %i.f, align 8, !noalias !161, !captures !151
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 44, ptr %i.bs, align 8, !noalias !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !161
  store ptr %i.f, ptr %i.e, align 8, !noalias !161
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !161
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @21, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #14, !noalias !157
  unreachable

bb.t:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  call void @llvm.experimental.noalias.scope.decl(metadata !163), !noalias !157
  %i.bt = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !range !7, !alias.scope !164, !noalias !157, !noundef !4
  %i.bu = trunc nuw i8 %i.bt to i1
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !alias.scope !164, !noalias !157
  br i1 %i.bu, label %bb.u, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guard10ScopeGuardNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux19pthread_mutexattr_tNCINvMsg_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexNtB2Z_12MutexBuilder16initialize_mutexINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3set8BTreeSethEEs_0EECs9WeDvfThRIv_30iceoryx2_cal_conformance_tests.exit

bb.u:                                             ; preds = %bb.t
  %i.bv = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread25pthread_mutexattr_destroy(ptr noundef nonnull align 4 dereferenceable(8) %i.ac) #13, !noalias !157
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guard10ScopeGuardNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux19pthread_mutexattr_tNCINvMsg_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexNtB2Z_12MutexBuilder16initialize_mutexINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3set8BTreeSethEEs_0EECs9WeDvfThRIv_30iceoryx2_cal_conformance_tests.exit, label %bb.v, !prof !147

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !165
  store ptr @20, ptr %i.d, align 8, !noalias !165, !captures !151
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 44, ptr %i.bx, align 8, !noalias !165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !165
  store ptr %i.d, ptr %i.c, align 8, !noalias !165
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !165
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull @21, ptr noundef nonnull %i.c) #13, !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !165
  store ptr @20, ptr %i.b, align 8, !noalias !165, !captures !151
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 44, ptr %i.by, align 8, !noalias !165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !165
  store ptr %i.b, ptr %i.a, align 8, !noalias !165
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !165
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @21, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #14, !noalias !157
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guard10ScopeGuardNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux19pthread_mutexattr_tNCINvMsg_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexNtB2Z_12MutexBuilder16initialize_mutexINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3set8BTreeSethEEs_0EECs9WeDvfThRIv_30iceoryx2_cal_conformance_tests.exit: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !149
  store atomic i8 %i.av, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19shm_allocator_trait19shm_allocator_trait22allocator_id_is_unique10MTX_HANDLE, i64 72) monotonic, align 8, !noalias !166
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19shm_allocator_trait19shm_allocator_trait22allocator_id_is_unique10MTX_HANDLE, i64 73) monotonic, align 1, !noalias !166
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !range !12, !alias.scope !148, !noalias !157, !noundef !4
  store i32 %i.ca, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19shm_allocator_trait19shm_allocator_trait22allocator_id_is_unique10MTX_HANDLE, i64 80), align 8, !noalias !167
  %i.cb = load i64, ptr @_RNvNvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19shm_allocator_trait19shm_allocator_trait22allocator_id_is_unique10MTX_HANDLE, align 8, !range !168, !noalias !167, !noundef !4
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %_RNCNvNvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19shm_allocator_trait19shm_allocator_trait22allocator_id_is_unique13ALLOCATOR_IDS0B9_.exit, label %bb.w

bb.w:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guard10ScopeGuardNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux19pthread_mutexattr_tNCINvMsg_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexNtB2Z_12MutexBuilder16initialize_mutexINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3set8BTreeSethEEs_0EECs9WeDvfThRIv_30iceoryx2_cal_conformance_tests.exit
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3set8BTreeSethEECs9WeDvfThRIv_30iceoryx2_cal_conformance_tests(ptr noalias nofree noundef align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19shm_allocator_trait19shm_allocator_trait22allocator_id_is_unique10MTX_HANDLE, i64 8)) #13, !noalias !157
  br label %_RNCNvNvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19shm_allocator_trait19shm_allocator_trait22allocator_id_is_unique13ALLOCATOR_IDS0B9_.exit

bb.x:                                             ; preds = %bb.r, %bb.q, %_RNCINvMsg_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexNtB8_12MutexBuilder6createINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3set8BTreeSethEE0Cs9WeDvfThRIv_30iceoryx2_cal_conformance_tests.exit.thread11.i.i.i
  %.sroa.12.sroa.0.0.insert.insert.i.i9.i.ph.i.i = phi i32 [ 0, %_RNCINvMsg_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexNtB8_12MutexBuilder6createINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3set8BTreeSethEE0Cs9WeDvfThRIv_30iceoryx2_cal_conformance_tests.exit.thread11.i.i.i ], [ %.sroa.12.sroa.0.2.i.i.i.i.i, %bb.r ], [ %.sroa.12.sroa.0.2.i.i.i.i.i, %bb.q ]
  %.sroa.0.1.i.i7.i.ph.i.i = phi i32 [ 0, %_RNCINvMsg_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexNtB8_12MutexBuilder6createINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3set8BTreeSethEE0Cs9WeDvfThRIv_30iceoryx2_cal_conformance_tests.exit.thread11.i.i.i ], [ %.sroa.0.2.i.i.i.i.i, %bb.r ], [ %.sroa.0.2.i.i.i.i.i, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !149
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3set8BTreeSethEECs9WeDvfThRIv_30iceoryx2_cal_conformance_tests(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.ai) #13, !noalias !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !170
  store i32 %.sroa.0.1.i.i7.i.ph.i.i, ptr %i.ah, align 4, !noalias !170
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 %.sroa.12.sroa.0.0.insert.insert.i.i9.i.ph.i.i, ptr %i.cd, align 4, !noalias !170
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 43, ptr noundef nonnull %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @27, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #14, !noalias !170
  unreachable

_RNCNvNvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19shm_allocator_trait19shm_allocator_trait22allocator_id_is_unique13ALLOCATOR_IDS0B9_.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guard10ScopeGuardNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux19pthread_mutexattr_tNCINvMsg_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexNtB2Z_12MutexBuilder16initialize_mutexINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3set8BTreeSethEEs_0EECs9WeDvfThRIv_30iceoryx2_cal_conformance_tests.exit, %bb.w
  store i64 1, ptr @_RNvNvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19shm_allocator_trait19shm_allocator_trait22allocator_id_is_unique10MTX_HANDLE, align 8, !noalias !167
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19shm_allocator_trait19shm_allocator_trait22allocator_id_is_unique10MTX_HANDLE, i64 8), ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  ret ptr @_RNvNvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19shm_allocator_trait19shm_allocator_trait22allocator_id_is_unique10MTX_HANDLE
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: cold nounwind nonlazybind uwtable
declare void @_RNvMs0_NtNtNtNtCsigunbJSLHCW_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4, i1 noundef zeroext, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread28pthread_mutexattr_setpshared(ptr noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread25pthread_mutexattr_settype(ptr noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread29pthread_mutexattr_setprotocol(ptr noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread27pthread_mutexattr_setrobust(ptr noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread18pthread_mutex_init(ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, -2147483648) i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef range(i8 0, 6), ptr noundef nonnull, ptr noundef nonnull, ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix9directoryNtB5_9Directory6create(ptr dead_on_unwind noalias nofree noundef writable sret([280 x i8]) align 8 captures(none) dereferenceable(280), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264), i32 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socketNtB2_13ConfigurationNtNtCs8Chj7Szqq0n_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable sret([792 x i8]) align 8 captures(none) dereferenceable(792)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7testing18generate_file_path(ptr dead_on_unwind noalias nofree noundef writable sret([264 x i8]) align 8 captures(address) dereferenceable(264)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtB2_8FilePath9file_name(ptr dead_on_unwind noalias nofree noundef writable sret([264 x i8]) align 8 captures(address) dereferenceable(264), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtCs8tG85QUCESg_24iceoryx2_bb_system_types4pathNtB5_4PathNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptorNtB5_14FileDescriptorNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 4 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix9directoryNtB4_9DirectoryNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(280)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread22pthread_mutexattr_init(ptr noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread25pthread_mutexattr_destroy(ptr noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtNtCsigunbJSLHCW_3std4sync9lazy_lock14panic_poisoned() unnamed_addr #7

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMsg_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexNtB5_12MutexBuilder3new(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i64 @_RNvMs0_NtCslCQgxiHprg6_19iceoryx2_bb_testing16lifetime_trackerNtB5_15LifetimeTracker3new() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXsf_NtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socketNtB5_15ListenerBuilderINtNtB9_13named_concept19NamedConceptBuilderNtB5_9EventImplE3new(ptr dead_on_unwind noalias nofree noundef writable sret([1056 x i8]) align 8 captures(none) dereferenceable(1056), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXsg_NtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socketNtB5_15ListenerBuilderINtB7_15ListenerBuilderNtB5_9EventImplE6create(ptr dead_on_unwind noalias nofree noundef writable sret([544 x i8]) align 8 captures(none) dereferenceable(544), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(1056)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs7_NtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socketNtB5_15NotifierBuilderINtNtB9_13named_concept19NamedConceptBuilderNtB5_9EventImplE3new(ptr dead_on_unwind noalias nofree noundef writable sret([1056 x i8]) align 8 captures(none) dereferenceable(1056), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs8_NtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socketNtB5_15NotifierBuilderINtB7_15NotifierBuilderNtB5_9EventImplE4open(ptr dead_on_unwind noalias nofree noundef writable sret([544 x i8]) align 8 captures(none) dereferenceable(544), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(1056)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #0

; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsbqH9stoieM8_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #9

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCs8Chj7Szqq0n_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #10

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs8Chj7Szqq0n_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsx_NtNtCs8Chj7Szqq0n_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsv_NtNtCs8Chj7Szqq0n_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 2) i32 @_RNvXs_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clockNtB4_9ClockTypeNtNtCs8Chj7Szqq0n_4core7default7Default7default() unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsicpYtSlSgpD_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) local_unnamed_addr #12

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { cold minsize noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nounwind }
attributes #14 = { noinline noreturn nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (0ed41eb41 2026-09-04)"}
!4 = !{}
!5 = !{i64 8}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{i8 0, i8 2}
!8 = !{i8 0, i8 3}
!9 = !{i32 0, i32 17}
!10 = !{i8 0, i8 6}
!11 = !{i32 0, i32 3}
!12 = !{i32 0, i32 2}
!13 = !{i64 4}
!14 = distinct !{!14, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMaphNtNtBG_7set_val9SetValZSTEECs9WeDvfThRIv_30iceoryx2_cal_conformance_tests"}
!15 = distinct !{!15, !14, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMaphNtNtBG_7set_val9SetValZSTEECs9WeDvfThRIv_30iceoryx2_cal_conformance_tests: argument 0"}
!16 = distinct !{!16, !"_RNvXNtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB2_8BTreeMaphNtNtB4_7set_val9SetValZSTENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests"}
!17 = distinct !{!17, !16, !"_RNvXNtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB2_8BTreeMaphNtNtB4_7set_val9SetValZSTENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests: argument 0"}
!18 = distinct !{!18, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8IntoIterhNtNtBG_7set_val9SetValZSTEECs9WeDvfThRIv_30iceoryx2_cal_conformance_tests"}
!19 = distinct !{!19, !18, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8IntoIterhNtNtBG_7set_val9SetValZSTEECs9WeDvfThRIv_30iceoryx2_cal_conformance_tests: argument 0"}
!20 = distinct !{!20, !"_RNvXsy_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_8IntoIterhNtNtB7_7set_val9SetValZSTENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests"}
!21 = distinct !{!21, !20, !"_RNvXsy_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_8IntoIterhNtNtB7_7set_val9SetValZSTENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests: argument 0"}
!22 = distinct !{!22, !"_RNvMsz_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_8IntoIterhNtNtB7_7set_val9SetValZSTE10dying_nextCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests"}
!23 = distinct !{!23, !22, !"_RNvMsz_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_8IntoIterhNtNtB7_7set_val9SetValZSTE10dying_nextCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests: argument 1"}
!24 = distinct !{!24, !22, !"_RNvMsz_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_8IntoIterhNtNtB7_7set_val9SetValZSTE10dying_nextCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests: argument 0"}
end_hunk_0
