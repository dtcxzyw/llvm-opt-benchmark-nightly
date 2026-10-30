Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_memory_connection_limits-8f4c5830141bbb49.libp2p_memory_connection_limits.f4e931e5bf6d9348-cgu.0?download=true
inline.NumInlined: 97
inline.NumDeleted: 59
begin_hunk_0_@_RNvMCsl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB2_9Behaviour11check_limit:bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 79 to ptr), ptr %i.am, align 8, !noalias !28
  store ptr %i.g, ptr %i.h, align 8, !noalias !28
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @5, ptr %i.an, align 8, !noalias !28
  store i64 1, ptr %i.i, align 8, !noalias !28
  %.sroa.08.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.h, ptr %.sroa.08.sroa.4.0..sroa_idx.i, align 8, !noalias !28
  %.sroa.08.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx.i, align 8, !noalias !28
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.al, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !28
  call void @_RNvMNtCs9Bqz0CSWZZv_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i), !noalias !28
  %i.ao = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !31
  %.not.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i, label %bb.j, label %_RNCNvMCsl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB4_9Behaviour30refresh_memory_stats_if_needed0B4_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ap = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !31 ; 2 uses
  %i.aq = icmp ult i64 %i.ap, 6
  call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp samesign ugt i64 %i.ap, 1
  br i1 %i.ar, label %bb.k, label %_RNCNvMCsl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB4_9Behaviour30refresh_memory_stats_if_needed0B4_.exit.i

bb.k:                                             ; preds = %bb.j
  %i.as = load ptr, ptr @_RNvNvMCsl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB4_9Behaviour30refresh_memory_stats_if_needed10___CALLSITE, align 8, !noalias !31, !nonnull !4, !align !7, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !noalias !28, !nonnull !4, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.aw = load i64, ptr %i.av, align 8, !noalias !28, !noundef !4
  store i64 2, ptr %i.a, align 8, !noalias !31
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.au, ptr %i.ax, align 8, !noalias !31
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.aw, ptr %i.ay, align 8, !noalias !31
  %i.az = call { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger(), !noalias !28 ; 2 uses
  %i.ba = extractvalue { ptr, ptr } %i.az, 0      ; 2 uses
  %i.bb = extractvalue { ptr, ptr } %i.az, 1      ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !invariant.load !4, !noalias !28, !nonnull !4
  %i.be = call noundef zeroext i1 %i.bd(ptr noundef %i.ba, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #18, !noalias !28, !inline_history !26
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.as, ptr noundef nonnull %i.ba, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bb, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i), !noalias !28
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31
  br label %_RNCNvMCsl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB4_9Behaviour30refresh_memory_stats_if_needed0B4_.exit.i

_RNCNvMCsl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB4_9Behaviour30refresh_memory_stats_if_needed0B4_.exit.i: ; preds = %bb.m, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !28
  br label %_RNvMCsl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB2_9Behaviour30refresh_memory_stats_if_needed.exit

bb.n:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.bf = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !28
  %.not.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i, label %bb.o, label %_RNvMCsl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB2_9Behaviour30refresh_memory_stats_if_needed.exit

bb.o:                                             ; preds = %bb.n
  %i.bg = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !28 ; 2 uses
  %i.bh = icmp ult i64 %i.bg, 6
  call void @llvm.assume(i1 %i.bh)
  %i.bi = icmp samesign ugt i64 %i.bg, 1
  br i1 %i.bi, label %bb.p, label %_RNvMCsl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB2_9Behaviour30refresh_memory_stats_if_needed.exit

bb.p:                                             ; preds = %bb.o
  %i.bj = load ptr, ptr @_RNvNvMCsl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB4_9Behaviour30refresh_memory_stats_if_needed10___CALLSITE, align 8, !noalias !28, !nonnull !4, !align !7, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !28
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !28, !nonnull !4, !noundef !4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !28, !noundef !4
  store i64 2, ptr %i.f, align 8, !noalias !28
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.bl, ptr %i.bo, align 8, !noalias !28
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.bn, ptr %i.bp, align 8, !noalias !28
  %i.bq = call { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger(), !noalias !28 ; 2 uses
  %i.br = extractvalue { ptr, ptr } %i.bq, 0      ; 2 uses
  %i.bs = extractvalue { ptr, ptr } %i.bq, 1      ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !invariant.load !4, !noalias !28, !nonnull !4
  %i.bv = call noundef zeroext i1 %i.bu(ptr noundef %i.br, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f) #18, !noalias !28, !inline_history !27
  br i1 %i.bv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !28
  %i.bw = load ptr, ptr @_RNvNvMCsl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB4_9Behaviour30refresh_memory_stats_if_needed10___CALLSITE, align 8, !noalias !28, !nonnull !4, !align !7, !noundef !4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !28
  store ptr @4, ptr %i.c, align 8, !noalias !28
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 79 to ptr), ptr %i.by, align 8, !noalias !28
  store ptr %i.c, ptr %i.d, align 8, !noalias !28
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @5, ptr %i.bz, align 8, !noalias !28
  store i64 1, ptr %i.e, align 8, !noalias !28
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.d, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !28
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 1, ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !28
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.bx, ptr %i.ca, align 8, !noalias !28
  call void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bj, ptr noundef nonnull %i.br, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bs, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e), !noalias !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !28
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !28
  br label %_RNvMCsl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB2_9Behaviour30refresh_memory_stats_if_needed.exit

_RNvMCsl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB2_9Behaviour30refresh_memory_stats_if_needed.exit: ; preds = %.split.i, %bb.b, %bb.d, %_RNCNvMCsl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB4_9Behaviour30refresh_memory_stats_if_needed0B4_.exit.i, %bb.n, %bb.o, %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !4 ; 2 uses
  %i.cd = load i64, ptr %0, align 8, !noundef !4  ; 2 uses
  %i.ce = icmp ugt i64 %i.cc, %i.cd
  br i1 %i.ce, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_RNvMCsl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB2_9Behaviour30refresh_memory_stats_if_needed.exit
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16
  %i.cf = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #16 ; 4 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.t, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !32

bb.t:                                             ; preds = %bb.s
  call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #19
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.s
  store i64 %i.cc, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i64 %i.cd, ptr %i.ch, align 8
  br label %bb.u

bb.u:                                             ; preds = %_RNvMCsl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB2_9Behaviour30refresh_memory_stats_if_needed.exit, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %.sroa.0.0 = phi ptr [ %i.cf, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit ], [ null, %_RNvMCsl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB2_9Behaviour30refresh_memory_stats_if_needed.exit ]
  %i.ci = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.cj = insertvalue { ptr, ptr } %i.ci, ptr @1, 1
  ret { ptr, ptr } %i.cj
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMCsl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB2_9Behaviour14with_max_bytes(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 28)) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvCs8BVNPLexBuN_12memory_stats12memory_stats(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a)
  %i.b = load i64, ptr %i.a, align 8, !range !6, !noundef !4
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %.sroa.0.0 = select i1 %i.c, i64 %i.e, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = call { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.g = extractvalue { i64, i32 } %i.f, 0
  %i.h = extractvalue { i64, i32 } %i.f, 1
  store i64 %1, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.h, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMCsl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB2_9Behaviour19with_max_percentage(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, double noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [14 x i8], align 1                ; 5 uses
  %i.c = alloca [376 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 2, ptr %i.b, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i8 2, ptr %i.f, align 1
  store i8 1, ptr %i.d, align 1
  store i8 0, ptr %i.e, align 1
  call void @_RNvMs_NtNtCsjxhXpl572Cv_7sysinfo6common6systemNtB4_6System18new_with_specifics(ptr noalias nofree noundef nonnull sret([376 x i8]) align 8 captures(none) dereferenceable(376) %i.c, ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(14) %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.h = load i64, ptr %i.g, align 8, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 232 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !80, !noundef !4 ; 3 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjxhXpl572Cv_7sysinfo6common6system6SystemECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !82, !noundef !4 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtB1c_7ProcessEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.i, align 8, !alias.scope !82, !nonnull !4, !noundef !4 ; 3 uses
  %.val3.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.p, align 16, !noalias !83
  %i.q = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = bitcast <16 x i1> %i.q to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtBE_7ProcessEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i, %bb.c
  %.sroa.05.018.i.i.i.i.i.i.i.i = phi ptr [ %i.p, %bb.c ], [ %.sroa.05.1.i.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtBE_7ProcessEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.017.i.i.i.i.i.i.i.i = phi ptr [ %i.r, %bb.c ], [ %.sroa.6.1.i.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtBE_7ProcessEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.86.016.i.i.i.i.i.i.i.i = phi i16 [ %i.s, %bb.c ], [ %i.ab, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtBE_7ProcessEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.107.015.i.i.i.i.i.i.i.i = phi i64 [ %i.n, %bb.c ], [ %i.ae, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtBE_7ProcessEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i ]
  %.not11.i.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.86.016.i.i.i.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtBX_7ProcessEE9next_implKb0_ECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.t = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.017.i.i.i.i.i.i.i.i, %bb.d ] ; 2 uses
  %i.u = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.05.018.i.i.i.i.i.i.i.i, %bb.d ]
  %.val9.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.t, align 16, !noalias !84
  %i.v = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -6528 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.v to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtBX_7ProcessEE9next_implKb0_ECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtBX_7ProcessEE9next_implKb0_ECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.017.i.i.i.i.i.i.i.i, %bb.d ], [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.sroa.05.1.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.05.018.i.i.i.i.i.i.i.i, %bb.d ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.86.016.i.i.i.i.i.i.i.i, %bb.d ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.y = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.z = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = and i16 %i.y, %.lcssa.i.i.i.i.i.i.i.i.i
  %i.ac = sub nsw i64 0, %i.aa
  %i.ad = getelementptr inbounds [408 x i8], ptr %.sroa.05.1.i.i.i.i.i.i.i.i, i64 %i.ac ; 21 uses
  %i.ae = add i64 %.sroa.107.015.i.i.i.i.i.i.i.i, -1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 -400
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.af, align 8, !alias.scope !88, !noalias !82 ; 2 uses
  %i.ag = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ag, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtBX_7ProcessEE9next_implKb0_ECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i
  %i.ah = getelementptr inbounds i8, ptr %i.ad, i64 -392
  %.val14.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ah, align 8, !alias.scope !88, !noalias !82, !nonnull !4, !noundef !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val14.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !89
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtBX_7ProcessEE9next_implKb0_ECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i
  %i.ai = getelementptr inbounds i8, ptr %i.ad, i64 -376
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.aj = getelementptr inbounds i8, ptr %i.ad, i64 -368
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !91, !noalias !82, !nonnull !4, !noundef !4 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.ad, i64 -360
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ak, align 8, !alias.scope !91, !noalias !82, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.al = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.al, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.an, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.an = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.am, align 8, !alias.scope !92, !noalias !93 ; 2 uses
  %i.ao = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ao, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ap = getelementptr i8, ptr %i.am, i64 8
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !92, !noalias !93, !nonnull !4, !noundef !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !94
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aq = icmp eq i64 %i.an, %.val1.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.aq, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ai, align 8, !range !5, !alias.scope !91, !noalias !82, !noundef !4 ; 2 uses
  %i.ar = icmp eq i64 %.val2.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ar, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.as = mul nuw i64 %.val2.i.i.i.i.i.i.i.i.i.i.i.i, 24
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) 8) #16, !noalias !93
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.at = getelementptr inbounds i8, ptr %i.ad, i64 -304
  %.val27.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.at, align 8, !range !95, !alias.scope !88, !noalias !82, !noundef !4 ; 2 uses
  %i.au = icmp sgt i64 %.val27.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.au, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit37.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.av = getelementptr inbounds i8, ptr %i.ad, i64 -296
  %.val28.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.av, align 8, !alias.scope !88, !noalias !82, !nonnull !4, !noundef !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val28.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val27.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !89
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit37.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit37.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.aw = getelementptr inbounds i8, ptr %i.ad, i64 -352
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.ax = getelementptr inbounds i8, ptr %i.ad, i64 -344
  %.val.i38.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !97, !noalias !82, !nonnull !4, !noundef !4 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ad, i64 -336
  %.val1.i39.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ay, align 8, !alias.scope !97, !noalias !82, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.az = icmp eq i64 %.val1.i39.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.az, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i45.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i40.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i40.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit37.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i44.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i41.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i44.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit37.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %.val.i38.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.011.i.i.i41.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bb = add nuw nsw i64 %.sroa.0.011.i.i.i41.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i42.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ba, align 8, !alias.scope !98, !noalias !99 ; 2 uses
  %i.bc = icmp eq i64 %.val8.i.i.i42.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i44.i.i.i.i.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i40.i.i.i.i.i.i.i.i.i.i.i
  %i.bd = getelementptr i8, ptr %i.ba, i64 8
  %.val9.i.i.i43.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !98, !noalias !99, !nonnull !4, !noundef !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i43.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i42.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !100
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i44.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i44.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i40.i.i.i.i.i.i.i.i.i.i.i
  %i.be = icmp eq i64 %i.bb, %.val1.i39.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.be, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i45.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i40.i.i.i.i.i.i.i.i.i.i.i

_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i45.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i44.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit37.i.i.i.i.i.i.i.i.i.i.i
  %.val2.i46.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aw, align 8, !range !5, !alias.scope !97, !noalias !82, !noundef !4 ; 2 uses
  %i.bf = icmp eq i64 %.val2.i46.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit47.i.i.i.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i45.i.i.i.i.i.i.i.i.i.i.i
  %i.bg = mul nuw i64 %.val2.i46.i.i.i.i.i.i.i.i.i.i.i, 24
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i38.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) 8) #16, !noalias !99
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit47.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit47.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i45.i.i.i.i.i.i.i.i.i.i.i
  %i.bh = getelementptr inbounds i8, ptr %i.ad, i64 -280
  %.val23.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bh, align 8, !range !95, !alias.scope !88, !noalias !82, !noundef !4 ; 2 uses
  %i.bi = icmp sgt i64 %.val23.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bi, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit53.i.i.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit47.i.i.i.i.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds i8, ptr %i.ad, i64 -272
  %.val24.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bj, align 8, !alias.scope !88, !noalias !82, !nonnull !4, !noundef !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val23.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !89
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit53.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit53.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit47.i.i.i.i.i.i.i.i.i.i.i
  %i.bk = getelementptr inbounds i8, ptr %i.ad, i64 -256
  %.val19.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bk, align 8, !range !95, !alias.scope !88, !noalias !82, !noundef !4 ; 2 uses
  %i.bl = icmp sgt i64 %.val19.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bl, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit59.i.i.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit53.i.i.i.i.i.i.i.i.i.i.i
  %i.bm = getelementptr inbounds i8, ptr %i.ad, i64 -248
  %.val20.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bm, align 8, !alias.scope !88, !noalias !82, !nonnull !4, !noundef !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val20.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val19.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !89
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit59.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit59.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit53.i.i.i.i.i.i.i.i.i.i.i
  %i.bn = getelementptr inbounds i8, ptr %i.ad, i64 -104
  %.val31.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bn, align 8, !alias.scope !88, !noalias !82, !noundef !4 ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %i.ad, i64 -96
  %.val32.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bo, align 8, !alias.scope !88, !noalias !82 ; 4 uses
  %i.bp = icmp eq ptr %.val31.i.i.i.i.i.i.i.i.i.i.i, null
  %i.bq = icmp eq i64 %.val32.i.i.i.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bp, i1 true, i1 %i.bq
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidEEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit59.i.i.i.i.i.i.i.i.i.i.i
  %i.br = icmp slt i64 %.val32.i.i.i.i.i.i.i.i.i.i.i, 4611686018427387900
  call void @llvm.assume(i1 %i.br)
  %2 = shl i64 %.val32.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.bs = and i64 %2, -16                         ; 2 uses
  %i.bt = add i64 %i.bs, 16                       ; 2 uses
  %i.bu = add nsw i64 %.val32.i.i.i.i.i.i.i.i.i.i.i, 17
  %i.bv = add i64 %i.bu, %i.bt                    ; 4 uses
  %i.bw = icmp uge i64 %i.bv, %i.bt
  call void @llvm.assume(i1 %i.bw)
  %3 = icmp ult i64 %i.bv, 9223372036854775793
  call void @llvm.assume(i1 %3)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val31.i.i.i.i.i.i.i.i.i.i.i) ]
  %i.bx = icmp eq i64 %i.bv, 0
  br i1 %i.bx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidEEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.by = sub nuw nsw i64 -16, %i.bs
  %i.bz = getelementptr inbounds i8, ptr %.val31.i.i.i.i.i.i.i.i.i.i.i, i64 %i.by
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bz, i64 noundef %i.bv, i64 noundef range(i64 1, -9223372036854775807) 16) #16, !noalias !89
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidEEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidEEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.m, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit59.i.i.i.i.i.i.i.i.i.i.i
  %i.ca = getelementptr inbounds i8, ptr %i.ad, i64 -8 ; 4 uses
  %i.cb = load i32, ptr %i.ca, align 8, !alias.scope !101, !noalias !82, !noundef !4
  %i.cc = icmp eq i32 %i.cb, -1
  br i1 %i.cc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjxhXpl572Cv_7sysinfo4unix5linux7process11FileCounterEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidEEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvXs7_NtNtNtCsjxhXpl572Cv_7sysinfo4unix5linux7processNtB5_11FileCounterNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.ca)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjxhXpl572Cv_7sysinfo4unix5linux7process11FileCounterECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.body.i.i.i.i.i.i.i.i.i.i.i, !noalias !82

.body.i.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.n
  %i.cd = landingpad { ptr, i32 }
          cleanup
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ca, align 4, !range !102, !alias.scope !103, !noalias !82, !noundef !4
  %i.ce = call noundef i32 @close(i32 noundef %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i) #16, !noalias !82 ; 0 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ad, i64 -328
  %.val17.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cf, align 8, !alias.scope !88, !noalias !82 ; 2 uses
  %i.cg = icmp eq i64 %.val17.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cg, label %.body.i.i, label %bb.o

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjxhXpl572Cv_7sysinfo4unix5linux7process11FileCounterECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ca, align 8, !range !102, !alias.scope !103, !noalias !82, !noundef !4
  %i.ch = call noundef i32 @close(i32 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i) #16, !noalias !82 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjxhXpl572Cv_7sysinfo4unix5linux7process11FileCounterEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %.body.i.i.i.i.i.i.i.i.i.i.i
  %i.ci = getelementptr inbounds i8, ptr %i.ad, i64 -320
  %.val18.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ci, align 8, !alias.scope !88, !noalias !82, !nonnull !4, !noundef !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val18.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val17.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !82
  br label %.body.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjxhXpl572Cv_7sysinfo4unix5linux7process11FileCounterEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjxhXpl572Cv_7sysinfo4unix5linux7process11FileCounterECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidEEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.cj = getelementptr inbounds i8, ptr %i.ad, i64 -328
  %.val15.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cj, align 8, !alias.scope !88, !noalias !82 ; 2 uses
  %i.ck = icmp eq i64 %.val15.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ck, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtBE_7ProcessEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjxhXpl572Cv_7sysinfo4unix5linux7process11FileCounterEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.cl = getelementptr inbounds i8, ptr %i.ad, i64 -320
  %.val16.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !88, !noalias !82, !nonnull !4, !noundef !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val16.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val15.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !82
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtBE_7ProcessEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtBE_7ProcessEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i: ; preds = %bb.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjxhXpl572Cv_7sysinfo4unix5linux7process11FileCounterEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.cm = icmp eq i64 %i.ae, 0
  br i1 %i.cm, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtB1c_7ProcessEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i, label %bb.d

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtB1c_7ProcessEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtBE_7ProcessEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i, %bb.b
  %i.cn = mul i64 %i.k, 408                       ; 2 uses
  %4 = add i64 %i.cn, 408
  %5 = icmp ult i64 %4, -15
  call void @llvm.assume(i1 %5)
  %i.co = and i64 %i.cn, -16                      ; 2 uses
  %i.cp = add i64 %i.co, 416                      ; 2 uses
  %i.cq = add i64 %i.k, 17
  %i.cr = add i64 %i.cq, %i.cp                    ; 4 uses
  %i.cs = icmp uge i64 %i.cr, %i.cp
  call void @llvm.assume(i1 %i.cs)
  %6 = icmp ult i64 %i.cr, 9223372036854775793
  call void @llvm.assume(i1 %6)
  %i.ct = icmp eq i64 %i.cr, 0
  br i1 %i.ct, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjxhXpl572Cv_7sysinfo6common6system6SystemECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit, label %bb.q

bb.q:                                             ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtB1c_7ProcessEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i
  %i.cu = load ptr, ptr %i.i, align 8, !alias.scope !80, !nonnull !4, !noundef !4
  %i.cv = sub i64 -416, %i.co
  %i.cw = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cw, i64 noundef %i.cr, i64 noundef range(i64 1, -9223372036854775807) 16) #16, !noalias !80
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjxhXpl572Cv_7sysinfo6common6system6SystemECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit

.body.i.i:                                        ; preds = %bb.o, %.body.i.i.i.i.i.i.i.i.i.i.i
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjxhXpl572Cv_7sysinfo4unix5linux3cpu11CpusWrapperECsl1EC4Y8FHbU_31libp2p_memory_connection_limits(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(376) %i.c) #20
  resume { ptr, i32 } %i.cd

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjxhXpl572Cv_7sysinfo6common6system6SystemECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit: ; preds = %bb.a, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtB1c_7ProcessEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i, %bb.q
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjxhXpl572Cv_7sysinfo4unix5linux3cpu11CpusWrapperECsl1EC4Y8FHbU_31libp2p_memory_connection_limits(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(376) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cx = uitofp i64 %i.h to double
  %i.cy = fmul double %1, %i.cx
  %i.cz = call double @llvm.round.f64(double %i.cy)
  %i.da = call i64 @llvm.fptoui.sat.i64.f64(double %i.cz)
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104
  call void @_RNvCs8BVNPLexBuN_12memory_stats12memory_stats(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a), !noalias !104
  %i.db = load i64, ptr %i.a, align 8, !range !6, !noalias !104, !noundef !4
  %i.dc = trunc nuw i64 %i.db to i1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !noalias !104
  %.sroa.0.0.i = select i1 %i.dc, i64 %i.de, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104
  %i.df = call { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now(), !noalias !104 ; 2 uses
  %i.dg = extractvalue { i64, i32 } %i.df, 0
  %i.dh = extractvalue { i64, i32 } %i.df, 1
  store i64 %i.da, ptr %0, align 8, !alias.scope !104
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i, ptr %i.di, align 8, !alias.scope !104
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dg, ptr %i.dj, align 8, !alias.scope !104
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.dh, ptr %i.dk, align 8, !alias.scope !104
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRjNtB6_5Debug3fmtCsl1EC4Y8FHbU_31libp2p_memory_connection_limits(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !7, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !107, !noundef !4 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt.exit

_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_Csl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB5_24MemoryUsageLimitExceededNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !7, !noundef !4
  %i.g = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @12, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_Csl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB5_24MemoryUsageLimitExceededNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 24, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 29, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 17, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs_Csl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB4_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour33handle_pending_inbound_connection(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr nofree noundef nonnull readnone align 8 captures(none) %2, ptr nofree noundef nonnull readnone align 8 captures(none) %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc { ptr, ptr } @_RNvMCsl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB2_9Behaviour11check_limit(ptr noalias nofree noundef align 8 dereferenceable(32) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_Csl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB4_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour34handle_pending_outbound_connection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %3, ptr nofree noundef nonnull readnone align 8 captures(none) %4, i64 noundef range(i64 0, 288230376151711744) %5, i1 noundef zeroext %6) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc { ptr, ptr } @_RNvMCsl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB2_9Behaviour11check_limit(ptr noalias nofree noundef align 8 dereferenceable(32) %1)
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 2 uses
  %.not = icmp ne ptr %i.b, null                  ; 3 uses
  %.sink7 = sext i1 %.not to i64
  %.sink6 = select i1 %.not, ptr %i.b, ptr inttoptr (i64 8 to ptr)
  %.sink = select i1 %.not, ptr @1, ptr null
  store i64 %.sink7, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink6, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink, ptr %i.d, align 8
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !7, !noundef !4
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtCsl1EC4Y8FHbU_31libp2p_memory_connection_limits24MemoryUsageLimitExceededNtNtCskKLDkoKarTP_4core5error5Error11descriptionB4_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @18, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtCsl1EC4Y8FHbU_31libp2p_memory_connection_limits24MemoryUsageLimitExceededNtNtCskKLDkoKarTP_4core5error5Error5causeB4_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtCsl1EC4Y8FHbU_31libp2p_memory_connection_limits24MemoryUsageLimitExceededNtNtCskKLDkoKarTP_4core5error5Error6sourceB4_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCsl1EC4Y8FHbU_31libp2p_memory_connection_limits24MemoryUsageLimitExceededNtNtCskKLDkoKarTP_4core5error5Error7provideB4_(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCsl1EC4Y8FHbU_31libp2p_memory_connection_limits24MemoryUsageLimitExceededNtNtCskKLDkoKarTP_4core5error5Error7type_idB4_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @19, i64 16, i1 false)
  ret void
}
end_hunk_0
