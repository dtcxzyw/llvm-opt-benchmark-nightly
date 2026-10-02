Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_services_tunnel_end_to_end_tests_ponger.iceoryx2_services_tunnel_end_to_end_tests_ponger.f0e58c8986a519e6-cgu.15?download=true
inline.NumInlined: 709
inline.NumDeleted: 406
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvXs1_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pool_allocatorNtB6_13PoolAllocatorNtB8_12ShmAllocator4initNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !703
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocatorNtB5_13BumpAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noundef nonnull align 8 %1, i64 noundef 4, i64 noundef %i.ae) #20
  %i.af = load ptr, ptr %i.b, align 8, !noalias !703, !noundef !5 ; 2 uses
  %.not34.i.i = icmp eq ptr %i.af, null
  br i1 %.not34.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = ptrtoint ptr %i.af to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !703
  %i.ah = load ptr, ptr %i.e, align 8, !noalias !703, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ag, %i.ai
  store atomic i64 %i.aj, ptr %i.ah monotonic, align 8
  %i.ak = load ptr, ptr %i.e, align 8, !noalias !703, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i32, ptr %i.al, align 8, !noundef !5
  %i.an = add i32 %i.am, 1                        ; 3 uses
  %.not36.i.i = icmp eq i32 %i.an, 0
  br i1 %.not36.i.i, label %bb.j, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %wide.trip.count.i.i = zext i32 %i.an to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 3 uses
  %i.ao = icmp ult i32 %i.an, 4
  br i1 %i.ao, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 4294967292
  br label %.lr.ph.i.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.3, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %lcmp.mod28 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod28)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1 ; 2 uses
  %i.ap = load ptr, ptr %i.e, align 8, !noalias !703, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = load atomic i64, ptr %i.ap monotonic, align 8
  %i.as = add i64 %i.ar, %i.aq
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i.i.epil
  %i.av = trunc nuw i64 %indvars.iv.next.i.i.epil to i32
  store i32 %i.av, ptr %i.au, align 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.epil, !llvm.loop !700

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %.pre.i.i = load ptr, ptr %i.e, align 8, !noalias !703
  br label %bb.j

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.aw = load ptr, ptr %i.e, align 8, !noalias !703, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = load atomic i64, ptr %i.aw monotonic, align 8
  %i.az = add i64 %i.ay, %i.ax
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.i.i
  %i.bc = trunc nuw i64 %indvars.iv.next.i.i to i32
  store i32 %i.bc, ptr %i.bb, align 4
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.bd = load ptr, ptr %i.e, align 8, !noalias !703, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = load atomic i64, ptr %i.bd monotonic, align 8
  %i.bg = add i64 %i.bf, %i.be
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.next.i.i
  %i.bj = trunc nuw i64 %indvars.iv.next.i.i.1 to i32
  store i32 %i.bj, ptr %i.bi, align 4
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.bk = load ptr, ptr %i.e, align 8, !noalias !703, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = load atomic i64, ptr %i.bk monotonic, align 8
  %i.bn = add i64 %i.bm, %i.bl
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.next.i.i.1
  %i.bq = trunc nuw i64 %indvars.iv.next.i.i.2 to i32
  store i32 %i.bq, ptr %i.bp, align 4
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 3 uses
  %i.br = load ptr, ptr %i.e, align 8, !noalias !703, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = load atomic i64, ptr %i.br monotonic, align 8
  %i.bu = add i64 %i.bt, %i.bs
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next.i.i.2
  %i.bx = trunc nuw i64 %indvars.iv.next.i.i.3 to i32
  store i32 %i.bx, ptr %i.bw, align 4
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !701
  store ptr %i.i, ptr %i.h, align 8, !noalias !701
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14pool_allocator13PoolAllocatorNtB6_5Debug3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !701
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @1, ptr noundef nonnull %i.h, ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 163 to ptr)) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !701
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !701
  store ptr %i.i, ptr %i.g, align 8, !noalias !701
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14pool_allocator13PoolAllocatorNtB6_5Debug3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !701
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22
  unreachable

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.p, ptr %i.n, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pool_allocator13PoolAllocatorNtB6_5Debug3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.43.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 %i.u, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.o, ptr %i.l, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.47.0..sroa_idx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.m, ptr %i.by, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.r, ptr %i.bz, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.415.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.n, ptr noundef nonnull @25, ptr noundef nonnull %i.l) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !703
  store ptr %i.e, ptr %i.a, align 8, !noalias !703
  %.sroa.431.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_set14UniqueIndexSetNtB6_5Debug3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.431.0..sroa_idx.i.i, align 8, !noalias !703
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.a, ptr noundef nonnull @27, ptr noundef nonnull inttoptr (i64 137 to ptr)) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !701
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !701
  store ptr %i.i, ptr %i.f, align 8, !noalias !701
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14pool_allocator13PoolAllocatorNtB6_5Debug3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !701
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.f, ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 71 to ptr)) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.p, ptr %i.k, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pool_allocator13PoolAllocatorNtB6_5Debug3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.419.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.o, ptr %i.j, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.423.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.k, ptr noundef nonnull @24, ptr noundef nonnull %i.j) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %._crit_edge.loopexit.i.i
  %i.ca = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.ak, %bb.f ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store atomic i8 1, ptr %i.cb monotonic, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !701
  %i.cc = load ptr, ptr %i.i, align 8, !noalias !701, !nonnull !5, !align !11, !noundef !5
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 64
  store atomic i8 1, ptr %i.cd monotonic, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.0.0 = phi i8 [ 2, %bb.j ], [ 0, %bb.h ], [ 1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret i8 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service3ipc7ServiceE11send_sampleCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 16 %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 13 uses
  %i.b = alloca [16 x i8], align 8                ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 16               ; 11 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 9 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [16 x i8], align 8                ; 16 uses
  %i.l = alloca [16 x i8], align 8                ; 15 uses
  %i.m = alloca [8 x i8], align 8                 ; 14 uses
  %i.n = alloca [8 x i8], align 8                 ; 14 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [2 x i8], align 1                 ; 5 uses
  %i.q = alloca [1 x i8], align 1                 ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [8 x i8], align 8                 ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 6 uses
  %i.y = alloca [8 x i8], align 8                 ; 5 uses
  store ptr %1, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr @36, ptr %i.x, align 8, !captures !23
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 21, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 5144
  %i.ab = load atomic i8, ptr %i.aa monotonic, align 8
  %.not = icmp eq i8 %i.ab, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %i.y, ptr %i.w, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtBD_7service3ipc7ServiceENtB6_5Debug3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.410.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.x, ptr %i.v, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.414.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.w, ptr noundef nonnull @37, ptr noundef nonnull %i.v) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %1, ptr %i.s, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 3560
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !5, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = tail call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigEINtB7_14DynamicStorageB1r_E3getCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noundef nonnull align 8 %i.ae) #20
  %i.ag = tail call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig17publish_subscribe(ptr noundef nonnull align 8 %i.af) #20
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 5056 ; 2 uses
  %i.ai = tail call noundef zeroext i1 @_RNvMs4_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB5_9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config17publish_subscribe17SubscriberDetailsE12update_stateCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noundef nonnull align 8 %i.ag, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ah) #20
  br i1 %i.ai, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i8 -1, ptr %i.q, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 3627 ; 2 uses
  %i.ak = atomicrmw add ptr %i.aj, i8 1 monotonic, align 1 ; 0 uses
  call void @_RINvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_14ContainerStateNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config17publish_subscribe17SubscriberDetailsE8for_eachNCNvMs1_NtNtB1u_4port9publisherINtB39_20PublisherSharedStateNtNtB1s_3ipc7ServiceE24force_update_connections0ECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ah, ptr noundef nonnull align 16 %1, ptr noalias nofree noundef nonnull dereferenceable(1) %i.q) #20
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 2656 ; 2 uses
  %i.am = load i64, ptr %i.al, align 16, !noundef !5 ; 3 uses
  %i.an = icmp ult i64 %i.am, 7896722634293473
  call void @llvm.assume(i1 %i.an)
  %.not5.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not5.i.i.i, label %_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service3ipc7ServiceE24force_update_connectionsCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 2648
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %.sroa.01.04.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ap, %bb.i ] ; 5 uses
  %i.ap = add nuw nsw i64 %.sroa.01.04.i.i.i, 1   ; 2 uses
  %i.aq = load i64, ptr %i.al, align 16, !noundef !5 ; 2 uses
  %i.ar = icmp ult i64 %.sroa.01.04.i.i.i, %i.aq
  br i1 %i.ar, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %i.ao, align 8, !nonnull !5, !noundef !5
  %i.at = getelementptr inbounds nuw [1168 x i8], ptr %i.as, i64 %.sroa.01.04.i.i.i ; 2 uses
  %i.au = load i64, ptr %i.at, align 16, !range !12, !noundef !5
  %.not.i.i.i = icmp eq i64 %i.au, 2
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %.sroa.01.04.i.i.i, i64 noundef %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 1152
  %i.aw = load atomic i8, ptr %i.av monotonic, align 16
  %i.ax = load atomic i8, ptr %i.aj monotonic, align 1
  %i.ay = icmp eq i8 %i.aw, %i.ax
  br i1 %i.ay, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.j, %bb.h, %bb.f
  %exitcond.not.i.i.i = icmp eq i64 %i.ap, %i.am
  br i1 %exitcond.not.i.i.i, label %_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service3ipc7ServiceE24force_update_connectionsCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i, label %bb.e

bb.j:                                             ; preds = %bb.h
  call fastcc void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE17remove_connectionCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noundef nonnull align 16 %1, i64 noundef %.sroa.01.04.i.i.i) #20
  br label %bb.i

_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service3ipc7ServiceE24force_update_connectionsCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i: ; preds = %bb.i, %bb.d
  %i.az = load i8, ptr %i.q, align 1, !range !25, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.not.i = icmp eq i8 %i.az, -1
  br i1 %.not.i, label %_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service3ipc7ServiceE24force_update_connectionsCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i._crit_edge, label %bb.l

_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service3ipc7ServiceE24force_update_connectionsCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i._crit_edge: ; preds = %_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service3ipc7ServiceE24force_update_connectionsCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i
  %.pre = load ptr, ptr %i.y, align 8
  br label %bb.m

bb.k:                                             ; preds = %bb.l, %bb.b
  %.sink403 = phi i64 [ 2, %bb.l ], [ 1, %bb.b ]
  %.sink = phi i8 [ %i.az, %bb.l ], [ 2, %bb.b ]
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink403
  store i8 %.sink, ptr %.sroa.424.0..sroa_idx, align 1
  store i8 1, ptr %0, align 8
  br label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE14deliver_offsetCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit

bb.l:                                             ; preds = %_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service3ipc7ServiceE24force_update_connectionsCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.s, ptr %i.r, align 8
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtBD_7service3ipc7ServiceENtB6_5Debug3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.46.0..sroa_idx.i, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.r, ptr noundef nonnull @40, ptr noundef nonnull inttoptr (i64 197 to ptr)) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.y, ptr %i.u, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtBD_7service3ipc7ServiceENtB6_5Debug3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.418.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.x, ptr %i.t, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.422.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.u, ptr noundef nonnull @39, ptr noundef nonnull %i.t) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.ba, align 1
  br label %bb.k

bb.m:                                             ; preds = %_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service3ipc7ServiceE24force_update_connectionsCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i._crit_edge, %bb.c
  %i.bb = phi ptr [ %.pre, %_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service3ipc7ServiceE24force_update_connectionsCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i._crit_edge ], [ %1, %bb.c ] ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 3632
  %i.bd = load i64, ptr %i.bc, align 16, !range !6, !noundef !5
  %i.be = trunc nuw i64 %i.bd to i1
  br i1 %i.be, label %bb.n, label %_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service3ipc7ServiceE21add_sample_to_historyCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 3640 ; 2 uses
  %i.bg = call fastcc { i64, i64 } @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE13borrow_sampleCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noundef nonnull align 16 %i.bb, i64 noundef %2) #20 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !717)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 3672 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !717, !noalias !718, !noundef !5 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 3680
  %i.bk = load i64, ptr %i.bj, align 16, !alias.scope !717, !noalias !718, !noundef !5 ; 3 uses
  %i.bl = icmp eq i64 %i.bi, %i.bk
  br i1 %i.bl, label %bb.o, label %_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher13OffsetAndSizeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8pop_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !719)
  %i.bm = icmp eq i64 %i.bi, 0
  br i1 %i.bm, label %_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher13OffsetAndSizeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8pop_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bb, i64 3664
  %i.bo = load i64, ptr %i.bn, align 16, !alias.scope !720, !noalias !721, !noundef !5
  %i.bp = sub i64 %i.bo, %i.bi
  %i.bq = urem i64 %i.bp, %i.bi
  %i.br = add i64 %i.bi, -1
  %.val.i.i.i = load ptr, ptr %i.bf, align 8, !alias.scope !720, !noalias !721, !noundef !5
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i, i64 %i.bq
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !722
  br label %_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher13OffsetAndSizeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8pop_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i

_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher13OffsetAndSizeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8pop_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.4.0.i = phi i64 [ undef, %bb.o ], [ %i.bt, %bb.p ], [ undef, %bb.n ] ; 3 uses
  %i.bu = phi i64 [ 0, %bb.o ], [ %i.br, %bb.p ], [ %i.bi, %bb.n ]
  %storemerge.i.i = phi i1 [ false, %bb.o ], [ true, %bb.p ], [ false, %bb.n ]
  call void @llvm.experimental.noalias.scope.decl(metadata !723)
  %i.bv = icmp eq i64 %i.bk, 0
  br i1 %i.bv, label %bb.q, label %_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher13OffsetAndSizeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE23push_with_overflow_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i

bb.q:                                             ; preds = %_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher13OffsetAndSizeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8pop_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i
  call void @_RNvNtNtCs8Chj7Szqq0n_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #22, !noalias !724
  unreachable

_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher13OffsetAndSizeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE23push_with_overflow_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i: ; preds = %_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher13OffsetAndSizeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8pop_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bb, i64 3664 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 16, !alias.scope !725, !noalias !718, !noundef !5 ; 2 uses
  %i.by = urem i64 %i.bx, %i.bk
  %.val.i1.i.i = load ptr, ptr %i.bf, align 8, !alias.scope !725, !noalias !718, !noundef !5
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %.val.i1.i.i, i64 %i.by ; 2 uses
  store i64 %2, ptr %i.bz, align 8, !noalias !724
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 %3, ptr %i.ca, align 8, !noalias !724
  %i.cb = add i64 %i.bx, 1
  store i64 %i.cb, ptr %i.bw, align 16, !alias.scope !725, !noalias !718
  %i.cc = add i64 %i.bu, 1
  store i64 %i.cc, ptr %i.bh, align 8, !alias.scope !725, !noalias !718
  br i1 %storemerge.i.i, label %bb.r, label %_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service3ipc7ServiceE21add_sample_to_historyCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit

bb.r:                                             ; preds = %_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher13OffsetAndSizeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE23push_with_overflow_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i
  %i.cd = and i64 %.sroa.4.0.i, 255               ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bb, i64 2632
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !5 ; 2 uses
  %i.cg = icmp ult i64 %i.cd, %i.cf
  br i1 %i.cg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bb, i64 2624
  %i.ci = load ptr, ptr %i.ch, align 16, !nonnull !5, !noundef !5
  %i.cj = getelementptr inbounds nuw [32 x i8], ptr %i.ci, i64 %i.cd
  %i.ck = lshr i64 %.sroa.4.0.i, 8
  %i.cl = call noundef i64 @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_stateNtB2_12SegmentState14release_sample(ptr noundef nonnull align 8 %i.cj, i64 noundef %i.ck) #20
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.u, label %_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service3ipc7ServiceE21add_sample_to_historyCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit

bb.t:                                             ; preds = %bb.r
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.cd, i64 noundef %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #22
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bb, i64 128
  call void @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service3ipc7ServiceE17deallocate_bucketCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noundef nonnull align 8 %i.cn, i64 noundef %.sroa.4.0.i) #20
  br label %_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service3ipc7ServiceE21add_sample_to_historyCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit

_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service3ipc7ServiceE21add_sample_to_historyCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit: ; preds = %bb.m, %_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher13OffsetAndSizeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE23push_with_overflow_implCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i, %bb.s, %bb.u
  %i.co = load ptr, ptr %i.y, align 8, !nonnull !5, !align !13, !noundef !5 ; 18 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !726)
  call fastcc void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE25retrieve_returned_samplesCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noundef nonnull align 16 %i.co) #20, !noalias !726
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 2656 ; 3 uses
  %i.cq = load i64, ptr %i.cp, align 16, !noalias !726, !noundef !5 ; 5 uses
  %i.cr = icmp ult i64 %i.cq, 7896722634293473
  call void @llvm.assume(i1 %i.cr)
  %.not73.i = icmp eq i64 %i.cq, 0
  br i1 %.not73.i, label %.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service3ipc7ServiceE21add_sample_to_historyCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit
  %.promoted.i = load i8, ptr %0, align 8, !alias.scope !726
  %i.cs = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 2648 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 3625 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 2632
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 2624
  %i.cz = getelementptr inbounds nuw i8, ptr %i.co, i64 128
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.440.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.444.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.db = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.448.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 6 uses
  %.sroa.424.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.428.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.432.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.de = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.436.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.df = getelementptr inbounds nuw i8, ptr %i.co, i64 3560 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.co, i64 64 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.co, i64 80 ; 2 uses
  %.sroa.452.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.472.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.476.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.sroa.480.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %.sroa.456.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.460.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.464.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.dn = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.468.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %.promoted61.i = load i8, ptr %i.dc, align 1, !alias.scope !726
  %.promoted67.i = load i64, ptr %i.do, align 8, !alias.scope !726
  %.sroa.8.0.copyload126.i.pre = load i8, ptr %.sroa.8.0..sroa_idx.i, align 2, !alias.scope !726 ; 12 uses
  br label %.outer.i

bb.v:                                             ; preds = %bb.ak
  store i8 %i.fd, ptr %i.dc, align 1, !alias.scope !726
  store i64 %.sroa.05.0.i69120.i, ptr %i.do, align 8, !alias.scope !726
  %.not.i27 = icmp eq i8 %.sroa.016.1.i, -1
  br i1 %.not.i27, label %.thread.i, label %bb.aj

.peel.next:                                       ; preds = %.thread127.i.peel, %.thread127.i
  %.sroa.019.057.i = phi i64 [ %i.dp, %.thread127.i ], [ %i.fe, %.thread127.i.peel ] ; 4 uses
  %i.dp = add nuw nsw i64 %.sroa.019.057.i, 1     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !726
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !726
  store ptr %i.co, ptr %i.n, align 8, !noalias !727
  store i64 %2, ptr %i.m, align 8, !noalias !727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !727
  store ptr @47, ptr %i.l, align 8, !noalias !727, !captures !23
  store i64 28, ptr %i.cs, align 8, !noalias !727
  %i.dq = load i64, ptr %i.cp, align 16, !noalias !727, !noundef !5 ; 2 uses
  %i.dr = icmp ult i64 %.sroa.019.057.i, %i.dq
  br i1 %i.dr, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %.peel.next
  %i.ds = load ptr, ptr %i.ct, align 8, !noalias !727, !nonnull !5, !noundef !5
  %i.dt = getelementptr inbounds nuw [1168 x i8], ptr %i.ds, i64 %.sroa.019.057.i ; 8 uses
  %i.du = load i64, ptr %i.dt, align 16, !range !12, !noalias !727, !noundef !5
  %.not.i.i = icmp eq i64 %i.du, 2
  br i1 %.not.i.i, label %.loopexit.i, label %bb.x

.loopexit:                                        ; preds = %.outer.i, %.peel.next
  %.lcssa201 = phi i8 [ 3, %.peel.next ], [ %.ph.i, %.outer.i ]
  %.sroa.019.057.i.lcssa = phi i64 [ %.sroa.019.057.i, %.peel.next ], [ %.sroa.019.057.ph.i, %.outer.i ]
  %.lcssa158 = phi i8 [ 1, %.peel.next ], [ %.ph145.i, %.outer.i ]
  %.lcssa = phi i64 [ %i.dq, %.peel.next ], [ %i.ff, %.outer.i ]
  store i8 %.lcssa201, ptr %i.dc, align 1, !alias.scope !726
  store i64 %.sroa.05.0.i68.ph.i, ptr %i.do, align 8, !alias.scope !726
  store i8 %.lcssa158, ptr %0, align 8, !alias.scope !726
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 7896722634293472) %.sroa.019.057.i.lcssa, i64 noundef %.lcssa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22, !noalias !727
  unreachable

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !727
  %i.dv = load i128, ptr %i.co, align 16, !range !21, !noalias !727, !noundef !5
  %i.dw = trunc nuw i128 %i.dv to i1
  %i.dx = load i8, ptr %i.cu, align 1, !range !14, !noalias !727, !noundef !5 ; 2 uses
  br i1 %i.dw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %..i.i = add nuw nsw i8 %i.dx, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !727
  store ptr %4, ptr %i.j, align 8, !noalias !727
  store ptr %i.co, ptr %5, align 8, !noalias !727
  store ptr %i.dt, ptr %i.cv, align 8, !noalias !727
  call void @_RINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB6_6SenderINtNtNtBc_15dynamic_storage19posix_shared_memory7StorageNtB6_20SharedManagementDataEENtBa_14ZeroCopySender13blocking_sendNCNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB3x_6SenderNtNtNtB3D_7service3ipc7ServiceE33deliver_offset_to_connection_impl0ECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noundef nonnull align 8 %i.dt, i64 noundef %2, i64 noundef %3, i64 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j, i8 noundef %..i.i) #20, !noalias !727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !727
  br label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @_RNvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_6SenderINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_14ZeroCopySender8try_sendCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.k, ptr noundef nonnull align 8 %i.dt, i64 noundef %2, i64 noundef %3, i64 noundef 0) #20, !noalias !727
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  call void @_RINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB6_6SenderINtNtNtBc_15dynamic_storage19posix_shared_memory7StorageNtB6_20SharedManagementDataEENtBa_14ZeroCopySender13blocking_sendNCNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB3x_6SenderNtNtNtB3D_7service3ipc7ServiceE33deliver_offset_to_connection_impls_0ECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noundef nonnull align 8 %i.dt, i64 noundef %2, i64 noundef %3, i64 noundef 0, i8 noundef 1) #20, !noalias !727
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.y
  %i.dz = load i64, ptr %i.k, align 8, !range !12, !noalias !727, !noundef !5 ; 2 uses
  %i.ea = icmp eq i64 %i.dz, 2
  br i1 %i.ea, label %bb.ad, label %.loopexit248

bb.ad:                                            ; preds = %bb.ac
  %i.eb = load i8, ptr %i.cw, align 8, !range !17, !noalias !727, !noundef !5
  switch i8 %i.eb, label %.unreachabledefault [
    i8 0, label %bb.ai
    i8 1, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE14release_sampleCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i
    i8 2, label %.loopexit249
    i8 3, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE14release_sampleCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i
    i8 4, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE14release_sampleCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i
    i8 5, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE14release_sampleCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i
    i8 6, label %.loopexit250
  ]

.loopexit248:                                     ; preds = %bb.ac, %bb.ar
  %.lcssa220 = phi i64 [ %i.fo, %bb.ar ], [ %i.dz, %bb.ac ]
  %.lcssa203 = phi i8 [ %.ph.i, %bb.ar ], [ 3, %bb.ac ] ; 4 uses
  %.sroa.6.056.i.lcssa181 = phi i8 [ %.sroa.6.056.ph.i, %bb.ar ], [ %.sroa.8.0.copyload126.i.pre, %bb.ac ] ; 3 uses
  %.sroa.016.054.i.lcssa169 = phi i8 [ %.sroa.016.054.ph.i, %bb.ar ], [ 3, %bb.ac ] ; 3 uses
  %.lcssa160 = phi i8 [ %.ph145.i, %bb.ar ], [ 1, %bb.ac ]
  %.lcssa150 = phi i64 [ %i.fe, %bb.ar ], [ %i.dp, %bb.ac ] ; 3 uses
  %i.ec = load i64, ptr %i.cw, align 8, !noalias !727 ; 3 uses
  %i.ed = call fastcc { i64, i64 } @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE13borrow_sampleCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noundef nonnull align 16 %i.co, i64 noundef %2) #20, !noalias !727 ; 0 uses
  %i.ee = trunc nuw i64 %.lcssa220 to i1
  br i1 %i.ee, label %bb.ae, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE14release_sampleCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i

bb.ae:                                            ; preds = %.loopexit248
  %i.ef = and i64 %i.ec, 255                      ; 3 uses
  %i.eg = load i64, ptr %i.cx, align 8, !noalias !727, !noundef !5 ; 2 uses
  %i.eh = icmp ult i64 %i.ef, %i.eg
  br i1 %i.eh, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ei = load ptr, ptr %i.cy, align 16, !noalias !727, !nonnull !5, !noundef !5
  %i.ej = getelementptr inbounds nuw [32 x i8], ptr %i.ei, i64 %i.ef
  %i.ek = lshr i64 %i.ec, 8
  %i.el = call noundef i64 @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_stateNtB2_12SegmentState14release_sample(ptr noundef nonnull align 8 %i.ej, i64 noundef %i.ek) #20, !noalias !727
  %i.em = icmp eq i64 %i.el, 1
  br i1 %i.em, label %bb.ah, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE14release_sampleCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i

bb.ag:                                            ; preds = %bb.ae
  store i8 %.lcssa203, ptr %i.dc, align 1, !alias.scope !726
  store i64 %.sroa.05.0.i68.ph.i, ptr %i.do, align 8, !alias.scope !726
  store i8 %.lcssa160, ptr %0, align 8, !alias.scope !726
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.ef, i64 noundef %i.eg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #22, !noalias !727
  unreachable

bb.ah:                                            ; preds = %bb.af
  call void @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service3ipc7ServiceE17deallocate_bucketCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noundef nonnull align 8 %i.cz, i64 noundef %i.ec) #20, !noalias !727
  br label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE14release_sampleCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i

_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE14release_sampleCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i: ; preds = %bb.ad, %bb.ad, %bb.ad, %bb.ad, %bb.as, %bb.as, %bb.as, %bb.as, %.loopexit146.i, %bb.ah, %bb.af, %.loopexit248
  %i.en = phi i8 [ %i.ev, %.loopexit146.i ], [ %.lcssa203, %bb.ah ], [ %.lcssa203, %.loopexit248 ], [ %.lcssa203, %bb.af ], [ %.ph.i, %bb.as ], [ %.ph.i, %bb.as ], [ %.ph.i, %bb.as ], [ %.ph.i, %bb.as ], [ 3, %bb.ad ], [ 3, %bb.ad ], [ 3, %bb.ad ], [ 3, %bb.ad ]
  %.sroa.6.056.i190 = phi i8 [ %.sroa.6.056.i191, %.loopexit146.i ], [ %.sroa.6.056.i.lcssa181, %bb.ah ], [ %.sroa.6.056.i.lcssa181, %.loopexit248 ], [ %.sroa.6.056.i.lcssa181, %bb.af ], [ %.sroa.6.056.ph.i, %bb.as ], [ %.sroa.6.056.ph.i, %bb.as ], [ %.sroa.6.056.ph.i, %bb.as ], [ %.sroa.6.056.ph.i, %bb.as ], [ %.sroa.8.0.copyload126.i.pre, %bb.ad ], [ %.sroa.8.0.copyload126.i.pre, %bb.ad ], [ %.sroa.8.0.copyload126.i.pre, %bb.ad ], [ %.sroa.8.0.copyload126.i.pre, %bb.ad ]
  %.sroa.016.054.i178 = phi i8 [ %.sroa.016.054.i179, %.loopexit146.i ], [ %.sroa.016.054.i.lcssa169, %bb.ah ], [ %.sroa.016.054.i.lcssa169, %.loopexit248 ], [ %.sroa.016.054.i.lcssa169, %bb.af ], [ %.sroa.016.054.ph.i, %bb.as ], [ %.sroa.016.054.ph.i, %bb.as ], [ %.sroa.016.054.ph.i, %bb.as ], [ %.sroa.016.054.ph.i, %bb.as ], [ 3, %bb.ad ], [ 3, %bb.ad ], [ 3, %bb.ad ], [ 3, %bb.ad ]
  %i.eo = phi i64 [ %i.ew, %.loopexit146.i ], [ %.lcssa150, %bb.ah ], [ %.lcssa150, %.loopexit248 ], [ %.lcssa150, %bb.af ], [ %i.fe, %bb.as ], [ %i.fe, %bb.as ], [ %i.fe, %bb.as ], [ %i.fe, %bb.as ], [ %i.dp, %bb.ad ], [ %i.dp, %bb.ad ], [ %i.dp, %bb.ad ], [ %i.dp, %bb.ad ]
  %.sroa.05.1.i.i = phi i64 [ 0, %.loopexit146.i ], [ 1, %bb.ah ], [ 1, %.loopexit248 ], [ 1, %bb.af ], [ 0, %bb.as ], [ 0, %bb.as ], [ 0, %bb.as ], [ 0, %bb.as ], [ 0, %bb.ad ], [ 0, %bb.ad ], [ 0, %bb.ad ], [ 0, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !727
  br label %.loopexit.i

.unreachabledefault:                              ; preds = %bb.ad
  unreachable

default.unreachable:                              ; preds = %bb.at, %bb.as, %bb.ai
  unreachable

bb.ai:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !727
  %i.ep = load ptr, ptr %i.df, align 8, !noalias !727, !nonnull !5, !noundef !5
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 2592
  %.sroa.081.0.copyload.i.i = load i128, ptr %i.eq, align 8, !noalias !727
  %i.er = load i128, ptr %i.dg, align 16, !noalias !727, !noundef !5
  %i.es = getelementptr inbounds nuw i8, ptr %i.dt, i64 1136 ; 3 uses
  %i.et = load i128, ptr %i.es, align 16, !noalias !727, !noundef !5
  store i128 %.sroa.081.0.copyload.i.i, ptr %i.e, align 16, !noalias !727
  store i128 %i.er, ptr %i.dh, align 16, !noalias !727
  store i128 %i.et, ptr %i.di, align 16, !noalias !727
  %i.eu = call noundef i8 @_RNvMs_NvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB4_11TinyClosureKj18_E4callCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.dj, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.e) #20, !noalias !727
  switch i8 %i.eu, label %default.unreachable [
    i8 0, label %.loopexit146.i
    i8 1, label %.loopexit251
    i8 2, label %.thread127.i
  ]

.loopexit146.i:                                   ; preds = %bb.ai, %bb.at, %.loopexit251
  %i.ev = phi i8 [ %.lcssa209, %.loopexit251 ], [ %.ph.i, %bb.at ], [ 3, %bb.ai ]
  %.sroa.6.056.i191 = phi i8 [ %.sroa.6.056.i.lcssa187, %.loopexit251 ], [ %.sroa.6.056.ph.i, %bb.at ], [ %.sroa.8.0.copyload126.i.pre, %bb.ai ]
  %.sroa.016.054.i179 = phi i8 [ %.sroa.016.054.i.lcssa175, %.loopexit251 ], [ %.sroa.016.054.ph.i, %bb.at ], [ 3, %bb.ai ]
  %i.ew = phi i64 [ %.lcssa156, %.loopexit251 ], [ %i.fe, %bb.at ], [ %i.dp, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !727
  br label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE14release_sampleCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i

.loopexit251:                                     ; preds = %bb.ai, %bb.at
  %.lcssa229 = phi ptr [ %i.fu, %bb.at ], [ %i.es, %bb.ai ]
  %.lcssa209 = phi i8 [ %.ph.i, %bb.at ], [ 3, %bb.ai ]
  %.sroa.6.056.i.lcssa187 = phi i8 [ %.sroa.6.056.ph.i, %bb.at ], [ %.sroa.8.0.copyload126.i.pre, %bb.ai ]
  %.sroa.016.054.i.lcssa175 = phi i8 [ %.sroa.016.054.ph.i, %bb.at ], [ 3, %bb.ai ]
  %.lcssa156 = phi i64 [ %i.fe, %bb.at ], [ %i.dp, %bb.ai ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !727
  store ptr %i.n, ptr %i.d, align 8, !noalias !727
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.456.0..sroa_idx.i.i, align 8, !noalias !727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !727
  store ptr %i.l, ptr %i.c, align 8, !noalias !727
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.460.0..sroa_idx.i.i, align 8, !noalias !727
  store ptr %i.m, ptr %i.dm, align 8, !noalias !727
  store ptr @_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pointer_offsetNtB5_13PointerOffsetNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.464.0..sroa_idx.i.i, align 8, !noalias !727
  store ptr %.lcssa229, ptr %i.dn, align 8, !noalias !727
  store ptr @_RNvXsY_NtNtCs8Chj7Szqq0n_4core3fmt3numoNtB7_5Debug3fmt, ptr %.sroa.468.0..sroa_idx.i.i, align 8, !noalias !727
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 4, ptr noundef nonnull @1, ptr noundef nonnull %i.d, ptr noundef nonnull @48, ptr noundef nonnull %i.c) #20, !noalias !727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !727
  br label %.loopexit146.i

bb.aj:                                            ; preds = %.thread137.i, %bb.v
  %.sroa.016.1134144.i = phi i8 [ 3, %.thread137.i ], [ %.sroa.016.1.i, %bb.v ]
  %.sroa.6.1136143.i = phi i8 [ %.sroa.8.0.copyload126.i.pre, %.thread137.i ], [ %.sroa.6.1.i, %bb.v ]
  store i8 %.sroa.016.1134144.i, ptr %i.dc, align 1, !alias.scope !726
  store i8 %.sroa.6.1136143.i, ptr %.sroa.8.0..sroa_idx.i, align 2, !alias.scope !726
  store i8 1, ptr %0, align 8, !alias.scope !726
  br label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE14deliver_offsetCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit

.thread.i:                                        ; preds = %bb.v, %_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service3ipc7ServiceE21add_sample_to_historyCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit
  %.sroa.03.0.lcssa118.i = phi i64 [ %.sroa.03.1.i, %bb.v ], [ 0, %_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service3ipc7ServiceE21add_sample_to_historyCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit ]
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.03.0.lcssa118.i, ptr %i.ex, align 8, !alias.scope !726
  store i8 0, ptr %0, align 8, !alias.scope !726
  br label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE14deliver_offsetCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit

.loopexit.i:                                      ; preds = %bb.w, %bb.al, %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE14release_sampleCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i
  %i.ey = phi i8 [ %i.en, %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE14release_sampleCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i ], [ %.ph.i, %bb.al ], [ 3, %bb.w ]
  %.sroa.6.056.i189 = phi i8 [ %.sroa.6.056.i190, %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE14release_sampleCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i ], [ %.sroa.6.056.ph.i, %bb.al ], [ %.sroa.8.0.copyload126.i.pre, %bb.w ]
  %.sroa.016.054.i177 = phi i8 [ %.sroa.016.054.i178, %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE14release_sampleCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i ], [ %.sroa.016.054.ph.i, %bb.al ], [ 3, %bb.w ]
  %i.ez = phi i64 [ %i.eo, %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE14release_sampleCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i ], [ %i.fe, %bb.al ], [ %i.dp, %bb.w ]
  %.sroa.05.0.i69.ph.i = phi i64 [ %.sroa.05.1.i.i, %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE14release_sampleCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i ], [ 0, %bb.al ], [ 0, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !726
  %i.fa = add i64 %.sroa.05.0.i69.ph.i, %.sroa.03.055.ph.i
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit249, %.loopexit.i
  %i.fb = phi i64 [ %i.ez, %.loopexit.i ], [ %.lcssa153, %.loopexit249 ] ; 2 uses
  %i.fc = phi i8 [ 0, %.loopexit.i ], [ 1, %.loopexit249 ]
  %i.fd = phi i8 [ %i.ey, %.loopexit.i ], [ 6, %.loopexit249 ] ; 2 uses
  %.sroa.05.0.i69120.i = phi i64 [ %.sroa.05.0.i69.ph.i, %.loopexit.i ], [ %.sroa.05.0.i68.ph.i, %.loopexit249 ] ; 2 uses
  %.sroa.016.1.i = phi i8 [ %.sroa.016.054.i177, %.loopexit.i ], [ %spec.select.i, %.loopexit249 ] ; 3 uses
  %.sroa.03.1.i = phi i64 [ %i.fa, %.loopexit.i ], [ %.sroa.03.055.ph.i, %.loopexit249 ] ; 2 uses
  %.sroa.6.1.i = phi i8 [ %.sroa.6.056.i189, %.loopexit.i ], [ %spec.select27.i, %.loopexit249 ] ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fb, %i.cq
  br i1 %exitcond.not.i, label %bb.v, label %.outer.i

.outer.i:                                         ; preds = %bb.ak, %.lr.ph.i
  %.sroa.05.0.i68.ph.i = phi i64 [ %.sroa.05.0.i69120.i, %bb.ak ], [ %.promoted67.i, %.lr.ph.i ] ; 5 uses
  %.ph.i = phi i8 [ %i.fd, %bb.ak ], [ %.promoted61.i, %.lr.ph.i ] ; 9 uses
  %.sroa.019.057.ph.i = phi i64 [ %i.fb, %bb.ak ], [ 0, %.lr.ph.i ] ; 4 uses
  %.sroa.6.056.ph.i = phi i8 [ %.sroa.6.1.i, %bb.ak ], [ undef, %.lr.ph.i ] ; 9 uses
  %.sroa.03.055.ph.i = phi i64 [ %.sroa.03.1.i, %bb.ak ], [ 0, %.lr.ph.i ] ; 2 uses
  %.sroa.016.054.ph.i = phi i8 [ %.sroa.016.1.i, %bb.ak ], [ -1, %.lr.ph.i ] ; 9 uses
  %.ph145.i = phi i8 [ %i.fc, %bb.ak ], [ %.promoted.i, %.lr.ph.i ] ; 2 uses
  %i.fe = add nuw nsw i64 %.sroa.019.057.ph.i, 1  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !726
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !726
  store ptr %i.co, ptr %i.n, align 8, !noalias !727
  store i64 %2, ptr %i.m, align 8, !noalias !727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !727
  store ptr @47, ptr %i.l, align 8, !noalias !727, !captures !23
  store i64 28, ptr %i.cs, align 8, !noalias !727
  %i.ff = load i64, ptr %i.cp, align 16, !noalias !727, !noundef !5 ; 2 uses
  %i.fg = icmp ult i64 %.sroa.019.057.ph.i, %i.ff
  br i1 %i.fg, label %bb.al, label %.loopexit

bb.al:                                            ; preds = %.outer.i
  %i.fh = load ptr, ptr %i.ct, align 8, !noalias !727, !nonnull !5, !noundef !5
  %i.fi = getelementptr inbounds nuw [1168 x i8], ptr %i.fh, i64 %.sroa.019.057.ph.i ; 8 uses
  %i.fj = load i64, ptr %i.fi, align 16, !range !12, !noalias !727, !noundef !5
  %.not.i.i.peel = icmp eq i64 %i.fj, 2
  br i1 %.not.i.i.peel, label %.loopexit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !727
  %i.fk = load i128, ptr %i.co, align 16, !range !21, !noalias !727, !noundef !5
  %i.fl = trunc nuw i128 %i.fk to i1
  %i.fm = load i8, ptr %i.cu, align 1, !range !14, !noalias !727, !noundef !5 ; 2 uses
  br i1 %i.fl, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_RINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB6_6SenderINtNtNtBc_15dynamic_storage19posix_shared_memory7StorageNtB6_20SharedManagementDataEENtBa_14ZeroCopySender13blocking_sendNCNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB3x_6SenderNtNtNtB3D_7service3ipc7ServiceE33deliver_offset_to_connection_impls_0ECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noundef nonnull align 8 %i.fi, i64 noundef %2, i64 noundef %3, i64 noundef 0, i8 noundef 1) #20, !noalias !727
  br label %bb.ar

bb.ap:                                            ; preds = %bb.an
  call void @_RNvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_6SenderINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_14ZeroCopySender8try_sendCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.k, ptr noundef nonnull align 8 %i.fi, i64 noundef %2, i64 noundef %3, i64 noundef 0) #20, !noalias !727
  br label %bb.ar

bb.aq:                                            ; preds = %bb.am
  %..i.i.peel = add nuw nsw i8 %i.fm, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !727
  store ptr %4, ptr %i.j, align 8, !noalias !727
  store ptr %i.co, ptr %5, align 8, !noalias !727
  store ptr %i.fi, ptr %i.cv, align 8, !noalias !727
  call void @_RINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB6_6SenderINtNtNtBc_15dynamic_storage19posix_shared_memory7StorageNtB6_20SharedManagementDataEENtBa_14ZeroCopySender13blocking_sendNCNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB3x_6SenderNtNtNtB3D_7service3ipc7ServiceE33deliver_offset_to_connection_impl0ECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noundef nonnull align 8 %i.fi, i64 noundef %2, i64 noundef %3, i64 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j, i8 noundef %..i.i.peel) #20, !noalias !727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !727
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.fo = load i64, ptr %i.k, align 8, !range !12, !noalias !727, !noundef !5 ; 2 uses
  %i.fp = icmp eq i64 %i.fo, 2
  br i1 %i.fp, label %bb.as, label %.loopexit248

bb.as:                                            ; preds = %bb.ar
  %i.fq = load i8, ptr %i.cw, align 8, !range !17, !noalias !727, !noundef !5
  switch i8 %i.fq, label %default.unreachable [
    i8 0, label %bb.at
    i8 1, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE14release_sampleCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i
    i8 2, label %.loopexit249
    i8 3, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE14release_sampleCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i
    i8 4, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE14release_sampleCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i
    i8 5, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE14release_sampleCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit.i.i
    i8 6, label %.loopexit250
  ]

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !727
  %i.fr = load ptr, ptr %i.df, align 8, !noalias !727, !nonnull !5, !noundef !5
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 2592
  %.sroa.081.0.copyload.i.i.peel = load i128, ptr %i.fs, align 8, !noalias !727
  %i.ft = load i128, ptr %i.dg, align 16, !noalias !727, !noundef !5
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fi, i64 1136 ; 3 uses
  %i.fv = load i128, ptr %i.fu, align 16, !noalias !727, !noundef !5
  store i128 %.sroa.081.0.copyload.i.i.peel, ptr %i.e, align 16, !noalias !727
  store i128 %i.ft, ptr %i.dh, align 16, !noalias !727
  store i128 %i.fv, ptr %i.di, align 16, !noalias !727
  %i.fw = call noundef i8 @_RNvMs_NvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB4_11TinyClosureKj18_E4callCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.dj, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.e) #20, !noalias !727
  switch i8 %i.fw, label %default.unreachable [
    i8 0, label %.loopexit146.i
    i8 1, label %.loopexit251
    i8 2, label %.thread127.i.peel
  ]

.thread127.i.peel:                                ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !727
  store ptr %i.n, ptr %i.b, align 8, !noalias !727
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.452.0..sroa_idx.i.i, align 8, !noalias !727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !727
  store ptr %i.l, ptr %i.a, align 8, !noalias !727
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.472.0..sroa_idx.i.i, align 8, !noalias !727
  store ptr %i.m, ptr %i.dk, align 8, !noalias !727
  store ptr @_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pointer_offsetNtB5_13PointerOffsetNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.476.0..sroa_idx.i.i, align 8, !noalias !727
  store ptr %i.fu, ptr %i.dl, align 8, !noalias !727
  store ptr @_RNvXsY_NtNtCs8Chj7Szqq0n_4core3fmt3numoNtB7_5Debug3fmt, ptr %.sroa.480.0..sroa_idx.i.i, align 8, !noalias !727
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.b, ptr noundef nonnull @48, ptr noundef nonnull %i.a) #20, !noalias !727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !726
  %exitcond.not132.i.peel = icmp eq i64 %i.fe, %i.cq
  br i1 %exitcond.not132.i.peel, label %.thread137.i, label %.peel.next

.thread127.i:                                     ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !727
  store ptr %i.n, ptr %i.b, align 8, !noalias !727
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.452.0..sroa_idx.i.i, align 8, !noalias !727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !727
  store ptr %i.l, ptr %i.a, align 8, !noalias !727
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.472.0..sroa_idx.i.i, align 8, !noalias !727
  store ptr %i.m, ptr %i.dk, align 8, !noalias !727
  store ptr @_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pointer_offsetNtB5_13PointerOffsetNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.476.0..sroa_idx.i.i, align 8, !noalias !727
  store ptr %i.es, ptr %i.dl, align 8, !noalias !727
  store ptr @_RNvXsY_NtNtCs8Chj7Szqq0n_4core3fmt3numoNtB7_5Debug3fmt, ptr %.sroa.480.0..sroa_idx.i.i, align 8, !noalias !727
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.b, ptr noundef nonnull @48, ptr noundef nonnull %i.a) #20, !noalias !727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !726
  %exitcond.not132.i = icmp eq i64 %i.dp, %i.cq
  br i1 %exitcond.not132.i, label %.thread137.i, label %.peel.next, !llvm.loop !716

.thread137.i:                                     ; preds = %.thread127.i.peel, %.thread127.i
  store i64 %.sroa.05.0.i68.ph.i, ptr %i.do, align 8, !alias.scope !726
  br label %bb.aj

.loopexit250:                                     ; preds = %bb.as, %bb.ad
  %.lcssa216 = phi ptr [ %i.dt, %bb.ad ], [ %i.fi, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !727
  store ptr %i.n, ptr %i.g, align 8, !noalias !727
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.420.0..sroa_idx.i.i, align 8, !noalias !727
  %i.fx = getelementptr inbounds nuw i8, ptr %.lcssa216, i64 1136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !727
  store ptr %i.l, ptr %i.f, align 8, !noalias !727
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.440.0..sroa_idx.i.i, align 8, !noalias !727
  store ptr %i.m, ptr %i.da, align 8, !noalias !727
  store ptr @_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pointer_offsetNtB5_13PointerOffsetNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.444.0..sroa_idx.i.i, align 8, !noalias !727
  store ptr %i.fx, ptr %i.db, align 8, !noalias !727
  store ptr @_RNvXsY_NtNtCs8Chj7Szqq0n_4core3fmt3numoNtB7_5Debug3fmt, ptr %.sroa.448.0..sroa_idx.i.i, align 8, !noalias !727
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.g, ptr noundef nonnull @50, ptr noundef nonnull %i.f) #20, !noalias !727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !726
  store i8 7, ptr %i.dc, align 1, !alias.scope !726
  store i64 %.sroa.05.0.i68.ph.i, ptr %i.do, align 8, !alias.scope !726
  store i8 1, ptr %0, align 8, !alias.scope !726
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !726
  store i8 7, ptr %i.p, align 1, !noalias !726
  %.sroa.8.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 %.sroa.8.0.copyload126.i.pre, ptr %.sroa.8.0..sroa_idx10.i, align 1, !noalias !726
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !726
  store ptr %i.p, ptr %i.o, align 8, !noalias !726
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXsE_NtCsg6ZEkMtNi4J_8iceoryx24portNtB5_9SendErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.424.0..sroa_idx.i, align 8, !noalias !726
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull @43, ptr noundef nonnull %i.o) #20, !noalias !726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !726
  br label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE14deliver_offsetCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit

.loopexit249:                                     ; preds = %bb.ad, %bb.as
  %.lcssa215 = phi ptr [ %i.fi, %bb.as ], [ %i.dt, %bb.ad ]
  %.sroa.6.056.i.lcssa184 = phi i8 [ %.sroa.6.056.ph.i, %bb.as ], [ %.sroa.8.0.copyload126.i.pre, %bb.ad ]
  %.sroa.016.054.i.lcssa172 = phi i8 [ %.sroa.016.054.ph.i, %bb.as ], [ 3, %bb.ad ] ; 2 uses
  %.lcssa153 = phi i64 [ %i.fe, %bb.as ], [ %i.dp, %bb.ad ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !727
  store ptr %i.n, ptr %i.i, align 8, !noalias !727
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBF_7service3ipc7ServiceENtB6_5Debug3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.424.0..sroa_idx.i.i, align 8, !noalias !727
  %i.fy = getelementptr inbounds nuw i8, ptr %.lcssa215, i64 1136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !727
  store ptr %i.l, ptr %i.h, align 8, !noalias !727
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger, ptr %.sroa.428.0..sroa_idx.i.i, align 8, !noalias !727
  store ptr %i.m, ptr %i.dd, align 8, !noalias !727
  store ptr @_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pointer_offsetNtB5_13PointerOffsetNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.432.0..sroa_idx.i.i, align 8, !noalias !727
  store ptr %i.fy, ptr %i.de, align 8, !noalias !727
  store ptr @_RNvXsY_NtNtCs8Chj7Szqq0n_4core3fmt3numoNtB7_5Debug3fmt, ptr %.sroa.436.0..sroa_idx.i.i, align 8, !noalias !727
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.i, ptr noundef nonnull @49, ptr noundef nonnull %i.h) #20, !noalias !727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !726
  %.not26.i = icmp eq i8 %.sroa.016.054.i.lcssa172, -1 ; 2 uses
  %spec.select.i = select i1 %.not26.i, i8 6, i8 %.sroa.016.054.i.lcssa172
  %spec.select27.i = select i1 %.not26.i, i8 %.sroa.8.0.copyload126.i.pre, i8 %.sroa.6.056.i.lcssa184
  br label %bb.ak

_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE14deliver_offsetCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger.exit: ; preds = %.loopexit250, %.thread.i, %bb.aj, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs2_NtNtCsbqH9stoieM8_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringE9move_tailCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.g = add i64 %i.f, %i.d                       ; 2 uses
  %i.h = load i64, ptr %i.b, align 8, !range !9, !noundef !5
  %i.i = sub i64 %i.h, %i.g
  %i.j = icmp ugt i64 %1, %i.i
  br i1 %i.j, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.k = add i64 %i.d, %1                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.d
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.k
  %i.p = mul nuw nsw i64 %i.f, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.n, i64 %i.p, i1 false)
  store i64 %i.k, ptr %i.c, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsbqH9stoieM8_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %i.g, i64 noundef %1, i64 noundef 8, i64 noundef 24) #20
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE13borrow_sampleCskGhOA1yjEoc_48iceoryx2_services_tunnel_end_to_end_tests_ponger(ptr noundef nonnull align 16 %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = trunc i64 %1 to i8
  %i.b = and i64 %1, 255                          ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2632
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2624
  %i.g = load ptr, ptr %i.f, align 16, !nonnull !5, !noundef !5
end_hunk_0
