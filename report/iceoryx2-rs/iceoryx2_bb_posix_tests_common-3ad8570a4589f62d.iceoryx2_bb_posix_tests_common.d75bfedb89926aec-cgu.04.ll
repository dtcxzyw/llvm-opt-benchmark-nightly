Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_bb_posix_tests_common-3ad8570a4589f62d.iceoryx2_bb_posix_tests_common.d75bfedb89926aec-cgu.04?download=true
inline.NumInlined: 245
inline.NumDeleted: 107
begin_hunk_0_@_RNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common25file_descriptor_set_tests61___iox2_test_file_descriptor_guard_has_access_to_underlying_fd:bb.a
bb.a:
  tail call void @_RNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common25file_descriptor_set_tests49file_descriptor_guard_has_access_to_underlying_fd() #11
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common25file_descriptor_set_tests71file_descriptor_triggering_many_returns_correct_number_of_notifications() unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 4                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 3 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [64 x i8], align 8                ; 10 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [64 x i8], align 8                ; 10 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 7 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 6 uses
  %i.s = alloca [64 x i8], align 8                ; 10 uses
  %i.t = alloca [16 x i8], align 8                ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 6 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [280 x i8], align 8               ; 8 uses
  %i.z = alloca [16 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 9 uses
  %i.ab = alloca [264 x i8], align 8              ; 4 uses
  %i.ac = alloca [280 x i8], align 8              ; 6 uses
  %i.ad = alloca [280 x i8], align 8              ; 4 uses
  %i.ae = alloca [272 x i8], align 8              ; 4 uses
  %i.af = alloca [280 x i8], align 8              ; 6 uses
  %i.ag = alloca [280 x i8], align 8              ; 4 uses
  %i.ah = alloca [264 x i8], align 8              ; 5 uses
  %i.ai = alloca [8 x i8], align 8                ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 8 uses
  %i.ak = alloca [24 x i8], align 8               ; 9 uses
  %i.al = alloca [160 x i8], align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @_RNvMs2_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix19file_descriptor_setNtB5_17FileDescriptorSet3new(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.al) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store i64 0, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 4 uses
  store i64 0, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i64 0, ptr %i.aj, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 4 uses
  store i64 0, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store i64 32, ptr %i.ai, align 8
  call void @_RNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7testing21create_test_directory() #11
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 264
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 268
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  br label %bb.a

._crit_edge:                                      ; preds = %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket18UnixDatagramSenderE8push_mutCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  %.pre = load ptr, ptr %i.am, align 8            ; 2 uses
  %.pre83 = load i64, ptr %i.an, align 8          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i64 0, ptr %i.aa, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  store i64 0, ptr %i.av, align 8
  %.idx = mul nuw nsw i64 %.pre83, 280
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx
  %i.ax = icmp eq i64 %.pre83, 0
  br i1 %i.ax, label %._crit_edge66, label %.lr.ph65

bb.a:                                             ; preds = %.lr.ph, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket18UnixDatagramSenderE8push_mutCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  %.sroa.051.062 = phi i64 [ 0, %.lr.ph ], [ %i.ay, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket18UnixDatagramSenderE8push_mutCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit ] ; 2 uses
  %i.ay = add nuw nsw i64 %.sroa.051.062, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @_RNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7testing18generate_file_path(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.ah) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.ae, ptr noundef nonnull align 8 dereferenceable(264) %i.ah, i64 264, i1 false)
  store i32 448, ptr %i.aq, align 8
  store i8 1, ptr %i.ar, align 4
  call void @_RNvMs6_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socketNtB5_27UnixDatagramReceiverBuilder6create(ptr noalias nofree noundef nonnull sret([280 x i8]) align 8 captures(address) dereferenceable(280) %i.af, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(272) %i.ae) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !423)
  call void @llvm.experimental.noalias.scope.decl(metadata !424)
  %i.az = load i8, ptr %i.as, align 4, !range !7, !alias.scope !424, !noalias !425, !noundef !5
  %i.ba = icmp eq i8 %i.az, 2
  br i1 %i.ba, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket20UnixDatagramReceiverNtBJ_33UnixDatagramReceiverCreationErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !426
  %i.bb = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.bb, i64 12, i1 false), !noalias !425
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #12, !noalias !427
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket20UnixDatagramReceiverNtBJ_33UnixDatagramReceiverCreationErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.ag, ptr noundef nonnull readonly align 8 dereferenceable(280) %i.af, i64 280, i1 false), !alias.scope !427, !noalias !428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.bc = load i64, ptr %i.an, align 8, !alias.scope !429, !noalias !430, !noundef !5 ; 3 uses
  %i.bd = load i64, ptr %i.ak, align 8, !range !9, !alias.scope !429, !noalias !430, !noundef !5
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.c, label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket20UnixDatagramReceiverE8push_mutCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket20UnixDatagramReceiverNtBJ_33UnixDatagramReceiverCreationErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket20UnixDatagramReceiverE8grow_oneCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak) #13, !noalias !430
  br label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket20UnixDatagramReceiverE8push_mutCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit

_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket20UnixDatagramReceiverE8push_mutCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket20UnixDatagramReceiverNtBJ_33UnixDatagramReceiverCreationErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit, %bb.c
  %i.bf = load ptr, ptr %i.am, align 8, !alias.scope !429, !noalias !430, !nonnull !5, !noundef !5
  %i.bg = getelementptr inbounds nuw [280 x i8], ptr %i.bf, i64 %i.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.bg, ptr noundef nonnull readonly align 8 dereferenceable(280) %i.ag, i64 280, i1 false)
  %i.bh = add i64 %i.bc, 1
  store i64 %i.bh, ptr %i.an, align 8, !alias.scope !429, !noalias !430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.ab, ptr noundef nonnull align 8 dereferenceable(264) %i.ah, i64 264, i1 false)
  call void @_RNvMs_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socketNtB4_25UnixDatagramSenderBuilder6create(ptr noalias nofree noundef nonnull sret([280 x i8]) align 8 captures(address) dereferenceable(280) %i.ac, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(264) %i.ab) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.experimental.noalias.scope.decl(metadata !431)
  call void @llvm.experimental.noalias.scope.decl(metadata !432)
  %i.bi = load i8, ptr %i.at, align 4, !range !7, !alias.scope !432, !noalias !433, !noundef !5
  %i.bj = icmp eq i8 %i.bi, 2
  br i1 %i.bj, label %bb.d, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket18UnixDatagramSenderNtBJ_31UnixDatagramSenderCreationErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit, !prof !8

bb.d:                                             ; preds = %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket20UnixDatagramReceiverE8push_mutCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !434
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !432, !noalias !433
  store i64 %i.bl, ptr %i.d, align 8, !noalias !434
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #12, !noalias !435
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket18UnixDatagramSenderNtBJ_31UnixDatagramSenderCreationErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit: ; preds = %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket20UnixDatagramReceiverE8push_mutCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(280) %i.ac, i64 280, i1 false), !alias.scope !435, !noalias !436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.bm = load i64, ptr %i.ap, align 8, !alias.scope !437, !noalias !438, !noundef !5 ; 3 uses
  %i.bn = load i64, ptr %i.aj, align 8, !range !9, !alias.scope !437, !noalias !438, !noundef !5
  %i.bo = icmp eq i64 %i.bm, %i.bn
  br i1 %i.bo, label %bb.e, label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket18UnixDatagramSenderE8push_mutCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit

bb.e:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket18UnixDatagramSenderNtBJ_31UnixDatagramSenderCreationErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket18UnixDatagramSenderE8grow_oneCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj) #13, !noalias !438
  br label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket18UnixDatagramSenderE8push_mutCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit

_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket18UnixDatagramSenderE8push_mutCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket18UnixDatagramSenderNtBJ_31UnixDatagramSenderCreationErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit, %bb.e
  %i.bp = load ptr, ptr %i.ao, align 8, !alias.scope !437, !noalias !438, !nonnull !5, !noundef !5 ; 2 uses
  %i.bq = getelementptr inbounds nuw [280 x i8], ptr %i.bp, i64 %i.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.bq, ptr noundef nonnull readonly align 8 dereferenceable(280) %i.ad, i64 280, i1 false)
  %i.br = add i64 %i.bm, 1                        ; 2 uses
  store i64 %i.br, ptr %i.ap, align 8, !alias.scope !437, !noalias !438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.bs = icmp samesign ult i64 %.sroa.051.062, 31
  br i1 %i.bs, label %bb.a, label %._crit_edge

.lr.ph65:                                         ; preds = %._crit_edge, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCs8Chj7Szqq0n_4core6result6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix19file_descriptor_set22FileDescriptorSetGuardNtB1j_25FileDescriptorSetAddErrorEE8push_mutCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  %.sroa.0.063 = phi ptr [ %i.bt, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCs8Chj7Szqq0n_4core6result6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix19file_descriptor_set22FileDescriptorSetGuardNtB1j_25FileDescriptorSetAddErrorEE8push_mutCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.063, i64 280 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @_RNvMs2_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix19file_descriptor_setNtB5_17FileDescriptorSet8add_impl(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.z, ptr noundef nonnull align 8 %i.al, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %.sroa.0.063) #11
  %i.bu = load i64, ptr %i.av, align 8, !alias.scope !439, !noalias !440, !noundef !5 ; 3 uses
  %i.bv = load i64, ptr %i.aa, align 8, !range !9, !alias.scope !439, !noalias !440, !noundef !5
  %i.bw = icmp eq i64 %i.bu, %i.bv
  br i1 %i.bw, label %bb.f, label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCs8Chj7Szqq0n_4core6result6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix19file_descriptor_set22FileDescriptorSetGuardNtB1j_25FileDescriptorSetAddErrorEE8push_mutCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit

bb.f:                                             ; preds = %.lr.ph65
  call void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecINtNtCs8Chj7Szqq0n_4core6result6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix19file_descriptor_set22FileDescriptorSetGuardNtB1q_25FileDescriptorSetAddErrorEE8grow_oneCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa) #13, !noalias !440
  br label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCs8Chj7Szqq0n_4core6result6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix19file_descriptor_set22FileDescriptorSetGuardNtB1j_25FileDescriptorSetAddErrorEE8push_mutCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit

_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCs8Chj7Szqq0n_4core6result6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix19file_descriptor_set22FileDescriptorSetGuardNtB1j_25FileDescriptorSetAddErrorEE8push_mutCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit: ; preds = %.lr.ph65, %bb.f
  %i.bx = load ptr, ptr %i.au, align 8, !alias.scope !439, !noalias !440, !nonnull !5, !noundef !5
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.z, i64 16, i1 false)
  %i.bz = add i64 %i.bu, 1
  store i64 %i.bz, ptr %i.av, align 8, !alias.scope !439, !noalias !440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.ca = icmp eq ptr %i.bt, %i.aw
  br i1 %i.ca, label %._crit_edge66.loopexit, label %.lr.ph65

._crit_edge66.loopexit:                           ; preds = %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCs8Chj7Szqq0n_4core6result6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix19file_descriptor_set22FileDescriptorSetGuardNtB1j_25FileDescriptorSetAddErrorEE8push_mutCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  %.pre84 = load ptr, ptr %i.ao, align 8
  %.pre85 = load i64, ptr %i.ap, align 8
  br label %._crit_edge66

._crit_edge66:                                    ; preds = %._crit_edge66.loopexit, %._crit_edge
  %i.cb = phi i64 [ %.pre85, %._crit_edge66.loopexit ], [ %i.br, %._crit_edge ] ; 3 uses
  %i.cc = phi ptr [ %.pre84, %._crit_edge66.loopexit ], [ %i.bp, %._crit_edge ] ; 3 uses
  %i.cd = load i64, ptr %i.aj, align 8, !range !9, !noundef !5
  %i.ce = icmp ult i64 %i.cb, 32940614417338486
  call void @llvm.assume(i1 %i.ce)
  %.idx70 = mul nuw nsw i64 %i.cb, 280
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.idx70 ; 3 uses
  %i.cg = icmp eq i64 %i.cb, 0
  br i1 %i.cg, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsbqH9stoieM8_5alloc3vec9into_iter8IntoIterNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket18UnixDatagramSenderEECsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit, label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket18UnixDatagramSenderENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit.lr.ph

_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket18UnixDatagramSenderENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit.lr.ph: ; preds = %._crit_edge66
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 5
  %i.ch = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  br label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket18UnixDatagramSenderENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit

_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket18UnixDatagramSenderENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit: ; preds = %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket18UnixDatagramSenderENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit.lr.ph, %bb.n
  %.sroa.4.067 = phi ptr [ %i.cc, %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket18UnixDatagramSenderENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit.lr.ph ], [ %i.ci, %bb.n ] ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.4.067, i64 280 ; 5 uses
  %.sroa.5.0..sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.067, i64 4
  %.sroa.5.0.copyload56 = load i8, ptr %.sroa.5.0..sroa.4.8..sroa_idx, align 4, !noalias !441 ; 2 uses
  %.not = icmp eq i8 %.sroa.5.0.copyload56, 2
  br i1 %.not, label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket18UnixDatagramSenderENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit.thread, label %bb.g

bb.g:                                             ; preds = %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket18UnixDatagramSenderENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  %.sroa.7.0..sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.067, i64 5
  %.sroa.054.0.copyload55 = load i32, ptr %.sroa.4.067, align 8, !noalias !441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i32 %.sroa.054.0.copyload55, ptr %i.y, align 8
  store i8 %.sroa.5.0.copyload56, ptr %.sroa.5.0..sroa_idx, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(275) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(275) %.sroa.7.0..sroa.4.8..sroa_idx, i64 275, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_RNvMs2_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socketNtB5_18UnixDatagramSender8try_send(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.w, ptr noundef nonnull align 8 %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 3) #11
  store ptr %i.w, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr @149, ptr %i.v, align 8, !captures !10
  %.val = load i32, ptr %i.w, align 8, !range !19, !noundef !5
  %.val53 = load i8, ptr %i.ch, align 4
  %.not.i = icmp eq i32 %.val, -1
  %i.cj = trunc nuw i8 %.val53 to i1
  %spec.select.i = select i1 %.not.i, i1 %i.cj, i1 false
  br i1 %spec.select.i, label %bb.n, label %bb.m, !prof !11

_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket18UnixDatagramSenderENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit.thread: ; preds = %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket18UnixDatagramSenderENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  %i.ck = ptrtoint ptr %i.cf to i64
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = sub nuw i64 %i.ck, %i.cl
  %i.cn = udiv exact i64 %i.cm, 280
  %i.co = icmp eq ptr %i.cf, %i.ci
  br i1 %i.co, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsbqH9stoieM8_5alloc3vec9into_iter8IntoIterNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket18UnixDatagramSenderEECsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket18UnixDatagramSenderENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit.thread, %.lr.ph.i.i.i
  %.sroa.0.03.i.i.i = phi i64 [ %i.cq, %.lr.ph.i.i.i ], [ 0, %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket18UnixDatagramSenderENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit.thread ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [280 x i8], ptr %i.ci, i64 %.sroa.0.03.i.i.i ; 2 uses
  %i.cq = add nuw nsw i64 %.sroa.0.03.i.i.i, 1    ; 2 uses
  call void @_RNvXs1_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socketNtB5_18UnixDatagramSenderNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %i.cp) #11, !noalias !442
  call void @_RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptorNtB5_14FileDescriptorNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %i.cp) #11, !noalias !442
  %i.cr = icmp eq i64 %i.cq, %i.cn
  br i1 %i.cr, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsbqH9stoieM8_5alloc3vec9into_iter8IntoIterNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket18UnixDatagramSenderEECsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit, label %.lr.ph.i.i.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsbqH9stoieM8_5alloc3vec9into_iter8IntoIterNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket18UnixDatagramSenderEECsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit: ; preds = %bb.n, %.lr.ph.i.i.i, %._crit_edge66, %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket18UnixDatagramSenderENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !442
  store i64 %i.cd, ptr %i.a, align 8, !noalias !442
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.cc, ptr %i.cs, align 8, !noalias !442
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket18UnixDatagramSenderENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #11, !noalias !442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 0, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 10000, ptr %i.ct, align 8
  call void @_RINvMs2_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix19file_descriptor_setNtB6_17FileDescriptorSet4waitNCNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common25file_descriptor_set_tests71file_descriptor_triggering_many_returns_correct_number_of_notifications0EB1z_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.p, ptr noundef nonnull align 8 %i.al, ptr noundef nonnull %i.e, i8 noundef 0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !443)
  %i.cu = load i32, ptr %i.p, align 8, !range !15, !alias.scope !443, !noalias !444, !noundef !5
  %i.cv = trunc nuw i32 %i.cu to i1
  br i1 %i.cv, label %bb.h, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix19file_descriptor_set26FileDescriptorSetWaitErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit, !prof !8

bb.h:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsbqH9stoieM8_5alloc3vec9into_iter8IntoIterNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket18UnixDatagramSenderEECsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !445
  %i.cw = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !range !20, !alias.scope !443, !noalias !444, !noundef !5
  %i.cy = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.cz = load i32, ptr %i.cy, align 8, !alias.scope !443, !noalias !444
  store i32 %i.cx, ptr %i.b, align 4, !noalias !445
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.cz, ptr %i.da, align 4, !noalias !445
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #12, !noalias !443
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix19file_descriptor_set26FileDescriptorSetWaitErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsbqH9stoieM8_5alloc3vec9into_iter8IntoIterNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket18UnixDatagramSenderEECsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  %i.db = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !443, !noalias !444, !noundef !5 ; 2 uses
  store i64 %i.dc, ptr %i.q, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.r, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.ai, ptr %i.n, align 8
  %i.dd = load i64, ptr %i.r, align 8, !noundef !5 ; 2 uses
  %i.de = load i64, ptr %i.ai, align 8, !noundef !5
  %i.df = icmp eq i64 %i.dd, %i.de
  br i1 %i.df, label %bb.j, label %bb.i, !prof !11

bb.i:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix19file_descriptor_set26FileDescriptorSetWaitErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.dg = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #11 ; 2 uses
  %spec.select = select i1 %i.dg, ptr @16, ptr inttoptr (i64 1 to ptr)
  %spec.select92 = select i1 %i.dg, i64 9, i64 0
  store ptr %spec.select, ptr %i.m, align 8, !captures !10
  %i.dh = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %spec.select92, ptr %i.dh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.di = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #11 ; 2 uses
  %.sink74 = select i1 %i.di, ptr @17, ptr inttoptr (i64 1 to ptr)
  %.sink73 = select i1 %i.di, i64 4, i64 0
  store ptr %.sink74, ptr %i.l, align 8, !captures !10
  %i.dj = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %.sink73, ptr %i.dj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.m, ptr %i.k, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.422.0..sroa_idx, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.o, ptr %i.dk, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.426.0..sroa_idx, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %i.n, ptr %i.dl, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.430.0..sroa_idx, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store ptr %i.l, ptr %i.dm, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.434.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @144, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #12
  unreachable

bb.j:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix19file_descriptor_set26FileDescriptorSetWaitErrorE6unwrapCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.q, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.ai, ptr %i.i, align 8
  %i.dn = icmp eq i64 %i.dc, %i.dd
  br i1 %i.dn, label %bb.l, label %bb.k, !prof !11

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.do = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #11 ; 2 uses
  %spec.select93 = select i1 %i.do, ptr @16, ptr inttoptr (i64 1 to ptr)
  %spec.select94 = select i1 %i.do, i64 9, i64 0
  store ptr %spec.select93, ptr %i.h, align 8, !captures !10
  %i.dp = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %spec.select94, ptr %i.dp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.dq = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #11 ; 2 uses
  %.sink78 = select i1 %i.dq, ptr @17, ptr inttoptr (i64 1 to ptr)
  %.sink77 = select i1 %i.dq, i64 4, i64 0
  store ptr %.sink78, ptr %i.g, align 8, !captures !10
  %i.dr = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sink77, ptr %i.dr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.h, ptr %i.f, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.438.0..sroa_idx, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.j, ptr %i.ds, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.442.0..sroa_idx, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.i, ptr %i.dt, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.446.0..sroa_idx, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %i.g, ptr %i.du, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.450.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @146, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @147) #12
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCs8Chj7Szqq0n_4core6result6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix19file_descriptor_set22FileDescriptorSetGuardNtB1j_25FileDescriptorSetAddErrorEENtNtNtBK_3ops4drop4Drop4dropCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa) #11
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecINtNtCs8Chj7Szqq0n_4core6result6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix19file_descriptor_set22FileDescriptorSetGuardNtB1q_25FileDescriptorSetAddErrorEENtNtNtBR_3ops4drop4Drop4dropCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket20UnixDatagramReceiverENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak) #11
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket20UnixDatagramReceiverENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VeclENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.al) #11
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVeclENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.al) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  ret void

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.dv = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #11 ; 2 uses
  %spec.select95 = select i1 %i.dv, ptr @16, ptr inttoptr (i64 1 to ptr)
  %spec.select96 = select i1 %i.dv, i64 9, i64 0
  store ptr %spec.select95, ptr %i.u, align 8, !captures !10
  %i.dw = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %spec.select96, ptr %i.dw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.dx = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #11 ; 2 uses
  %.sink82 = select i1 %i.dx, ptr @17, ptr inttoptr (i64 1 to ptr)
  %.sink81 = select i1 %i.dx, i64 4, i64 0
  store ptr %.sink82, ptr %i.t, align 8, !captures !10
  %i.dy = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %.sink81, ptr %i.dy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.u, ptr %i.s, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.46.0..sroa_idx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.x, ptr %i.dz, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6result6ResultbNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket21UnixDatagramSendErrorENtB6_5Debug3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.410.0..sroa_idx, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.v, ptr %i.ea, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6result6ResultbNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket21UnixDatagramSendErrorENtB6_5Debug3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.414.0..sroa_idx, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store ptr %i.t, ptr %i.eb, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common, ptr %.sroa.418.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @150, ptr noundef nonnull %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #12
  unreachable

bb.n:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @_RNvXs1_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socketNtB5_18UnixDatagramSenderNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %i.y) #11
  call void @_RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptorNtB5_14FileDescriptorNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %i.y) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.ec = icmp eq ptr %i.ci, %i.cf
  br i1 %i.ec, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsbqH9stoieM8_5alloc3vec9into_iter8IntoIterNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket18UnixDatagramSenderEECsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit, label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket18UnixDatagramSenderENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common25file_descriptor_set_tests83___iox2_test_file_descriptor_triggering_many_returns_correct_number_of_notifications() unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common25file_descriptor_set_tests71file_descriptor_triggering_many_returns_correct_number_of_notifications() #11
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_tests1__6___ctor() unnamed_addr #0 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_tests1__11___INVENTORY, align 8, !nonnull !5, !noundef !5
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_tests1__11___INVENTORY, i64 8), align 8, !nonnull !5, !align !6, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !5, !nonnull !5
  tail call void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_tests1__11___INVENTORY) #15
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss0_1__6___ctor() unnamed_addr #0 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss0_1__11___INVENTORY, align 8, !nonnull !5, !noundef !5
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss0_1__11___INVENTORY, i64 8), align 8, !nonnull !5, !align !6, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !5, !nonnull !5
  tail call void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss0_1__11___INVENTORY) #15
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss1_1__6___ctor() unnamed_addr #0 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss1_1__11___INVENTORY, align 8, !nonnull !5, !noundef !5
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss1_1__11___INVENTORY, i64 8), align 8, !nonnull !5, !align !6, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !5, !nonnull !5
  tail call void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss1_1__11___INVENTORY) #15
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss2_1__6___ctor() unnamed_addr #0 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss2_1__11___INVENTORY, align 8, !nonnull !5, !noundef !5
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss2_1__11___INVENTORY, i64 8), align 8, !nonnull !5, !align !6, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !5, !nonnull !5
  tail call void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss2_1__11___INVENTORY) #15
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss3_1__6___ctor() unnamed_addr #0 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss3_1__11___INVENTORY, align 8, !nonnull !5, !noundef !5
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss3_1__11___INVENTORY, i64 8), align 8, !nonnull !5, !align !6, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !5, !nonnull !5
  tail call void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss3_1__11___INVENTORY) #15
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss4_1__6___ctor() unnamed_addr #0 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss4_1__11___INVENTORY, align 8, !nonnull !5, !noundef !5
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss4_1__11___INVENTORY, i64 8), align 8, !nonnull !5, !align !6, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !5, !nonnull !5
  tail call void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss4_1__11___INVENTORY) #15
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss5_1__6___ctor() unnamed_addr #0 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss5_1__11___INVENTORY, align 8, !nonnull !5, !noundef !5
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss5_1__11___INVENTORY, i64 8), align 8, !nonnull !5, !align !6, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !5, !nonnull !5
  tail call void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss5_1__11___INVENTORY) #15
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss6_1__6___ctor() unnamed_addr #0 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss6_1__11___INVENTORY, align 8, !nonnull !5, !noundef !5
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss6_1__11___INVENTORY, i64 8), align 8, !nonnull !5, !align !6, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !5, !nonnull !5
  tail call void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss6_1__11___INVENTORY) #15
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss7_1__6___ctor() unnamed_addr #0 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss7_1__11___INVENTORY, align 8, !nonnull !5, !noundef !5
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss7_1__11___INVENTORY, i64 8), align 8, !nonnull !5, !align !6, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !5, !nonnull !5
  tail call void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss7_1__11___INVENTORY) #15
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss8_1__6___ctor() unnamed_addr #0 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss8_1__11___INVENTORY, align 8, !nonnull !5, !noundef !5
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss8_1__11___INVENTORY, i64 8), align 8, !nonnull !5, !align !6, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !5, !nonnull !5
  tail call void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss8_1__11___INVENTORY) #15
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss9_1__6___ctor() unnamed_addr #0 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss9_1__11___INVENTORY, align 8, !nonnull !5, !noundef !5
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss9_1__11___INVENTORY, i64 8), align 8, !nonnull !5, !align !6, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !5, !nonnull !5
  tail call void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss9_1__11___INVENTORY) #15
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss_1__6___ctor() unnamed_addr #0 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss_1__11___INVENTORY, align 8, !nonnull !5, !noundef !5
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss_1__11___INVENTORY, i64 8), align 8, !nonnull !5, !align !6, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !5, !nonnull !5
  tail call void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testss_1__11___INVENTORY) #15
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testssa_1__6___ctor() unnamed_addr #0 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testssa_1__11___INVENTORY, align 8, !nonnull !5, !noundef !5
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testssa_1__11___INVENTORY, i64 8), align 8, !nonnull !5, !align !6, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !5, !nonnull !5
  tail call void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common12signal_testssa_1__11___INVENTORY) #15
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common16signal_set_tests1__6___ctor() unnamed_addr #0 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common16signal_set_tests1__11___INVENTORY, align 8, !nonnull !5, !noundef !5
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common16signal_set_tests1__11___INVENTORY, i64 8), align 8, !nonnull !5, !align !6, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !5, !nonnull !5
  tail call void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common16signal_set_tests1__11___INVENTORY) #15
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common16signal_set_testss0_1__6___ctor() unnamed_addr #0 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common16signal_set_testss0_1__11___INVENTORY, align 8, !nonnull !5, !noundef !5
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common16signal_set_testss0_1__11___INVENTORY, i64 8), align 8, !nonnull !5, !align !6, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !5, !nonnull !5
  tail call void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common16signal_set_testss0_1__11___INVENTORY) #15
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common16signal_set_testss1_1__6___ctor() unnamed_addr #0 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common16signal_set_testss1_1__11___INVENTORY, align 8, !nonnull !5, !noundef !5
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common16signal_set_testss1_1__11___INVENTORY, i64 8), align 8, !nonnull !5, !align !6, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !5, !nonnull !5
  tail call void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common16signal_set_testss1_1__11___INVENTORY) #15
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common16signal_set_testss2_1__6___ctor() unnamed_addr #0 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common16signal_set_testss2_1__11___INVENTORY, align 8, !nonnull !5, !noundef !5
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common16signal_set_testss2_1__11___INVENTORY, i64 8), align 8, !nonnull !5, !align !6, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !5, !nonnull !5
  tail call void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common16signal_set_testss2_1__11___INVENTORY) #15
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common16signal_set_testss3_1__6___ctor() unnamed_addr #0 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtCsiulSbLFg4oq_30iceoryx2_bb_posix_tests_common16signal_set_testss3_1__11___INVENTORY, align 8, !nonnull !5, !noundef !5
end_hunk_0
