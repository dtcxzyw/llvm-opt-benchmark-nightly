Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_bb_trait_tests_common-83cca333329c21c2.iceoryx2_bb_trait_tests_common.956c3c87334914ab-cgu.2?download=true
inline.NumInlined: 157
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RINvXs1_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4spsc30safely_overflowing_index_queue7detailsINtB6_27SafelyOverflowingIndexQueueINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellyEEENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorECscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common:bb.a
  store i64 0, ptr %i.al, align 8
  %i.am = load ptr, ptr %i.e, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = load atomic i64, ptr %i.am monotonic, align 8
  %i.ap = add i64 %i.ao, %i.an
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.sroa.018.021
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 0, ptr %i.as, align 8
  %i.at = load ptr, ptr %i.e, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = load atomic i64, ptr %i.at monotonic, align 8
  %i.aw = add i64 %i.av, %i.au
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.sroa.018.021
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 0, ptr %i.az, align 8
  %i.ba = add nuw i64 %.sroa.018.021, 4           ; 2 uses
  %i.bb = load ptr, ptr %i.e, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = load atomic i64, ptr %i.bb monotonic, align 8
  %i.be = add i64 %i.bd, %i.bc
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.sroa.018.021
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store i64 0, ptr %i.bh, align 8
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %.sroa.0.0 = phi i8 [ %i.w, %bb.e ], [ -1, %._crit_edge ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef range(i8 -1, 5) i8 @_RINvXs3_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_9ContainerAhj7b_ENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorECscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 12 uses
  store ptr %0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load atomic i8, ptr %i.m monotonic, align 8
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @18, ptr %i.i, align 8, !captures !9
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 20, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = tail call fastcc noundef i8 @_RINvXs_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setNtB5_20RobustUniqueIndexSetNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorECscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common(ptr noalias nofree noundef align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 %1) #7 ; 2 uses
  %.not53 = icmp eq i8 %i.q, -1
  br i1 %.not53, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.l, ptr %i.k, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerAhj7b_ENtB6_5Debug3fmtCscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common, ptr %.sroa.421.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @4, ptr noundef nonnull %i.k, ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 163 to ptr)) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerAhj7b_ENtB6_5Debug3fmtCscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common, ptr %.sroa.425.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #8
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.l, ptr %i.h, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerAhj7b_ENtB6_5Debug3fmtCscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common, ptr %.sroa.429.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common, ptr %.sroa.433.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @4, ptr noundef nonnull %i.h, ptr noundef nonnull @20, ptr noundef nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !5
  %i.t = shl i64 %i.s, 3
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocatorNtB5_13BumpAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noundef nonnull align 8 %1, i64 noundef 8, i64 noundef %i.t) #7
  %i.u = load ptr, ptr %i.f, align 8, !noundef !5 ; 2 uses
  %.not54 = icmp eq ptr %i.u, null
  br i1 %.not54, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = ptrtoint ptr %i.u to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.w = load ptr, ptr %i.l, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.v, %i.x
  store atomic i64 %i.y, ptr %i.w monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.z = load ptr, ptr %i.l, align 8, !nonnull !5, !align !7, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !5
  %i.ac = mul i64 %i.ab, 123
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocatorNtB5_13BumpAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noundef nonnull align 8 %1, i64 noundef 1, i64 noundef %i.ac) #7
  %i.ad = load ptr, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %.not55 = icmp eq ptr %i.ad, null
  br i1 %.not55, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.l, ptr %i.e, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerAhj7b_ENtB6_5Debug3fmtCscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common, ptr %.sroa.437.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.i, ptr %i.d, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common, ptr %.sroa.441.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @4, ptr noundef nonnull %i.e, ptr noundef nonnull @21, ptr noundef nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.af = load i8, ptr %i.ae, align 8, !range !6, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ag = ptrtoint ptr %i.ad to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ah = load ptr, ptr %i.l, align 8, !nonnull !5, !align !7, !noundef !5 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.ag, %i.aj
  store atomic i64 %i.ak, ptr %i.ai monotonic, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.am = load i64, ptr %i.al, align 8, !noundef !5 ; 5 uses
  %.not57 = icmp eq i64 %i.am, 0
  br i1 %.not57, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %xtraiter = and i64 %i.am, 1
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.am, -2
  br label %.lr.ph

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.l, ptr %i.b, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContainerAhj7b_ENtB6_5Debug3fmtCscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common, ptr %.sroa.445.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %i.a, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common, ptr %.sroa.449.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @4, ptr noundef nonnull %i.b, ptr noundef nonnull @22, ptr noundef nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = load i8, ptr %i.ao, align 8, !range !6, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi ptr [ %i.ah, %.lr.ph.preheader ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.050.056.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bj, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod62 = trunc i64 %i.am to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.aq = ptrtoint ptr %.epil.init to i64
  %i.ar = load atomic i64, ptr %.epil.init monotonic, align 8
  %i.as = add i64 %i.ar, %i.aq
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.sroa.050.056.epil.init
  store i64 0, ptr %i.au, align 8
  %i.av = load ptr, ptr %i.l, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load atomic i64, ptr %i.aw monotonic, align 8 ; 0 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h
  %i.ay = phi ptr [ %i.ah, %bb.h ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ], [ %i.av, %.lr.ph.epil.preheader ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store atomic i8 1, ptr %i.az monotonic, align 1
  br label %bb.j

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.ba = phi ptr [ %i.ah, %.lr.ph.preheader.new ], [ %i.bq, %.lr.ph ] ; 2 uses
  %.sroa.050.056 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bj, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = load atomic i64, ptr %i.ba monotonic, align 8
  %i.bd = add i64 %i.bc, %i.bb
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.sroa.050.056
  store i64 0, ptr %i.bf, align 8
  %i.bg = load ptr, ptr %i.l, align 8, !nonnull !5, !align !7, !noundef !5 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load atomic i64, ptr %i.bh monotonic, align 8 ; 0 uses
  %i.bj = add nuw i64 %.sroa.050.056, 2           ; 2 uses
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = load atomic i64, ptr %i.bg monotonic, align 8
  %i.bm = add i64 %i.bl, %i.bk
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.sroa.050.056
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 0, ptr %i.bp, align 8
  %i.bq = load ptr, ptr %i.l, align 8, !nonnull !5, !align !7, !noundef !5 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load atomic i64, ptr %i.br monotonic, align 8 ; 0 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.j:                                             ; preds = %bb.d, %bb.g, %bb.i, %._crit_edge
  %.sroa.0.0 = phi i8 [ -1, %._crit_edge ], [ %i.q, %bb.d ], [ %i.af, %bb.g ], [ %i.ap, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret i8 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef range(i8 -1, 5) i8 @_RINvXs3_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_9ContaineroENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorECscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 12 uses
  store ptr %0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load atomic i8, ptr %i.m monotonic, align 8
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @18, ptr %i.i, align 8, !captures !9
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 20, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = tail call fastcc noundef i8 @_RINvXs_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setNtB5_20RobustUniqueIndexSetNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorECscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common(ptr noalias nofree noundef align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 %1) #7 ; 2 uses
  %.not53 = icmp eq i8 %i.q, -1
  br i1 %.not53, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.l, ptr %i.k, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContaineroENtB6_5Debug3fmtCscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common, ptr %.sroa.421.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @4, ptr noundef nonnull %i.k, ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 163 to ptr)) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContaineroENtB6_5Debug3fmtCscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common, ptr %.sroa.425.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #8
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.l, ptr %i.h, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContaineroENtB6_5Debug3fmtCscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common, ptr %.sroa.429.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common, ptr %.sroa.433.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @4, ptr noundef nonnull %i.h, ptr noundef nonnull @20, ptr noundef nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !5
  %i.t = shl i64 %i.s, 3
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocatorNtB5_13BumpAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noundef nonnull align 8 %1, i64 noundef 8, i64 noundef %i.t) #7
  %i.u = load ptr, ptr %i.f, align 8, !noundef !5 ; 2 uses
  %.not54 = icmp eq ptr %i.u, null
  br i1 %.not54, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = ptrtoint ptr %i.u to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.w = load ptr, ptr %i.l, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.v, %i.x
  store atomic i64 %i.y, ptr %i.w monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.z = load ptr, ptr %i.l, align 8, !nonnull !5, !align !7, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !5
  %i.ac = shl i64 %i.ab, 4
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocatorNtB5_13BumpAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noundef nonnull align 8 %1, i64 noundef 16, i64 noundef %i.ac) #7
  %i.ad = load ptr, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %.not55 = icmp eq ptr %i.ad, null
  br i1 %.not55, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.l, ptr %i.e, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContaineroENtB6_5Debug3fmtCscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common, ptr %.sroa.437.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.i, ptr %i.d, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common, ptr %.sroa.441.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @4, ptr noundef nonnull %i.e, ptr noundef nonnull @21, ptr noundef nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.af = load i8, ptr %i.ae, align 8, !range !6, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ag = ptrtoint ptr %i.ad to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ah = load ptr, ptr %i.l, align 8, !nonnull !5, !align !7, !noundef !5 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.ag, %i.aj
  store atomic i64 %i.ak, ptr %i.ai monotonic, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.am = load i64, ptr %i.al, align 8, !noundef !5 ; 5 uses
  %.not57 = icmp eq i64 %i.am, 0
  br i1 %.not57, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %xtraiter = and i64 %i.am, 1
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.am, -2
  br label %.lr.ph

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.l, ptr %i.b, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContaineroENtB6_5Debug3fmtCscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common, ptr %.sroa.445.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %i.a, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common, ptr %.sroa.449.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @4, ptr noundef nonnull %i.b, ptr noundef nonnull @22, ptr noundef nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = load i8, ptr %i.ao, align 8, !range !6, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi ptr [ %i.ah, %.lr.ph.preheader ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.050.056.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bj, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod62 = trunc i64 %i.am to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.aq = ptrtoint ptr %.epil.init to i64
  %i.ar = load atomic i64, ptr %.epil.init monotonic, align 8
  %i.as = add i64 %i.ar, %i.aq
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.sroa.050.056.epil.init
  store i64 0, ptr %i.au, align 8
  %i.av = load ptr, ptr %i.l, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load atomic i64, ptr %i.aw monotonic, align 8 ; 0 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h
  %i.ay = phi ptr [ %i.ah, %bb.h ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ], [ %i.av, %.lr.ph.epil.preheader ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store atomic i8 1, ptr %i.az monotonic, align 1
  br label %bb.j

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.ba = phi ptr [ %i.ah, %.lr.ph.preheader.new ], [ %i.bq, %.lr.ph ] ; 2 uses
  %.sroa.050.056 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bj, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = load atomic i64, ptr %i.ba monotonic, align 8
  %i.bd = add i64 %i.bc, %i.bb
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.sroa.050.056
  store i64 0, ptr %i.bf, align 8
  %i.bg = load ptr, ptr %i.l, align 8, !nonnull !5, !align !7, !noundef !5 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load atomic i64, ptr %i.bh monotonic, align 8 ; 0 uses
  %i.bj = add nuw i64 %.sroa.050.056, 2           ; 2 uses
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = load atomic i64, ptr %i.bg monotonic, align 8
  %i.bm = add i64 %i.bl, %i.bk
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.sroa.050.056
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 0, ptr %i.bp, align 8
  %i.bq = load ptr, ptr %i.l, align 8, !nonnull !5, !align !7, !noundef !5 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load atomic i64, ptr %i.br monotonic, align 8 ; 0 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.j:                                             ; preds = %bb.d, %bb.g, %bb.i, %._crit_edge
  %.sroa.0.0 = phi i8 [ -1, %._crit_edge ], [ %i.q, %bb.d ], [ %i.af, %bb.g ], [ %i.ap, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret i8 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef range(i8 -1, 5) i8 @_RINvXs3_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_9ContaineryENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorECscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 12 uses
  store ptr %0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load atomic i8, ptr %i.m monotonic, align 8
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @18, ptr %i.i, align 8, !captures !9
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 20, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = tail call fastcc noundef i8 @_RINvXs_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_setNtB5_20RobustUniqueIndexSetNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorECscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common(ptr noalias nofree noundef align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 %1) #7 ; 2 uses
  %.not53 = icmp eq i8 %i.q, -1
  br i1 %.not53, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.l, ptr %i.k, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContaineryENtB6_5Debug3fmtCscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common, ptr %.sroa.421.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @4, ptr noundef nonnull %i.k, ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 163 to ptr)) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContaineryENtB6_5Debug3fmtCscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common, ptr %.sroa.425.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #8
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.l, ptr %i.h, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContaineryENtB6_5Debug3fmtCscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common, ptr %.sroa.429.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common, ptr %.sroa.433.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @4, ptr noundef nonnull %i.h, ptr noundef nonnull @20, ptr noundef nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !5
  %i.t = shl i64 %i.s, 3
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocatorNtB5_13BumpAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noundef nonnull align 8 %1, i64 noundef 8, i64 noundef %i.t) #7
  %i.u = load ptr, ptr %i.f, align 8, !noundef !5 ; 2 uses
  %.not54 = icmp eq ptr %i.u, null
  br i1 %.not54, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = ptrtoint ptr %i.u to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.w = load ptr, ptr %i.l, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.v, %i.x
  store atomic i64 %i.y, ptr %i.w monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.z = load ptr, ptr %i.l, align 8, !nonnull !5, !align !7, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !5
  %i.ac = shl i64 %i.ab, 3
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocatorNtB5_13BumpAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noundef nonnull align 8 %1, i64 noundef 8, i64 noundef %i.ac) #7
  %i.ad = load ptr, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %.not55 = icmp eq ptr %i.ad, null
  br i1 %.not55, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.l, ptr %i.e, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContaineryENtB6_5Debug3fmtCscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common, ptr %.sroa.437.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.i, ptr %i.d, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common, ptr %.sroa.441.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @4, ptr noundef nonnull %i.e, ptr noundef nonnull @21, ptr noundef nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.af = load i8, ptr %i.ae, align 8, !range !6, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ag = ptrtoint ptr %i.ad to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ah = load ptr, ptr %i.l, align 8, !nonnull !5, !align !7, !noundef !5 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.ag, %i.aj
  store atomic i64 %i.ak, ptr %i.ai monotonic, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.am = load i64, ptr %i.al, align 8, !noundef !5 ; 5 uses
  %.not57 = icmp eq i64 %i.am, 0
  br i1 %.not57, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %xtraiter = and i64 %i.am, 1
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.am, -2
  br label %.lr.ph

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.l, ptr %i.b, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container9ContaineryENtB6_5Debug3fmtCscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common, ptr %.sroa.445.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %i.a, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common, ptr %.sroa.449.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @4, ptr noundef nonnull %i.b, ptr noundef nonnull @22, ptr noundef nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = load i8, ptr %i.ao, align 8, !range !6, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi ptr [ %i.ah, %.lr.ph.preheader ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.050.056.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bj, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod62 = trunc i64 %i.am to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.aq = ptrtoint ptr %.epil.init to i64
  %i.ar = load atomic i64, ptr %.epil.init monotonic, align 8
  %i.as = add i64 %i.ar, %i.aq
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.sroa.050.056.epil.init
  store i64 0, ptr %i.au, align 8
  %i.av = load ptr, ptr %i.l, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load atomic i64, ptr %i.aw monotonic, align 8 ; 0 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h
  %i.ay = phi ptr [ %i.ah, %bb.h ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ], [ %i.av, %.lr.ph.epil.preheader ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store atomic i8 1, ptr %i.az monotonic, align 1
  br label %bb.j

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.ba = phi ptr [ %i.ah, %.lr.ph.preheader.new ], [ %i.bq, %.lr.ph ] ; 2 uses
  %.sroa.050.056 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bj, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = load atomic i64, ptr %i.ba monotonic, align 8
  %i.bd = add i64 %i.bc, %i.bb
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.sroa.050.056
  store i64 0, ptr %i.bf, align 8
  %i.bg = load ptr, ptr %i.l, align 8, !nonnull !5, !align !7, !noundef !5 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load atomic i64, ptr %i.bh monotonic, align 8 ; 0 uses
  %i.bj = add nuw i64 %.sroa.050.056, 2           ; 2 uses
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = load atomic i64, ptr %i.bg monotonic, align 8
  %i.bm = add i64 %i.bl, %i.bk
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.sroa.050.056
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 0, ptr %i.bp, align 8
  %i.bq = load ptr, ptr %i.l, align 8, !nonnull !5, !align !7, !noundef !5 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load atomic i64, ptr %i.br monotonic, align 8 ; 0 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.j:                                             ; preds = %bb.d, %bb.g, %bb.i, %._crit_edge
  %.sroa.0.0 = phi i8 [ -1, %._crit_edge ], [ %i.q, %bb.d ], [ %i.af, %bb.g ], [ %i.ap, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret i8 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef range(i8 -1, 5) i8 @_RINvXs7_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vecINtB6_14RelocatableVecAhj7b_ENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorECscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = load atomic i64, ptr %0 monotonic, align 8
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.b, label %.split26, !prof !4

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noundef !5
  %i.n = mul i64 %i.m, 123
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocatorNtB5_13BumpAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, ptr noundef nonnull align 8 %1, i64 noundef 1, i64 noundef %i.n) #7
  %i.o = load ptr, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.split, label %bb.c

.split26:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @24, ptr %i.i, align 8, !captures !9
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 9, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.i, ptr %i.h, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common, ptr %.sroa.43.0..sroa_idx, align 8
  call void @_RNvNvNtCsbqH9stoieM8_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @25, ptr noundef nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.j, ptr %i.g, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXsr_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.48.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @4, ptr noundef nonnull %i.g, ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 163 to ptr)) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.j, ptr %i.f, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsr_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.412.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #8
  unreachable

.split:                                           ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.s = load i8, ptr %i.r, align 8, !range !6, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @24, ptr %i.c, align 8, !captures !9
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 9, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common, ptr %.sroa.416.0..sroa_idx, align 8
  call void @_RNvNvNtCsbqH9stoieM8_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @25, ptr noundef nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsr_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.422.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @4, ptr noundef nonnull %i.a, ptr noundef nonnull @12, ptr noundef nonnull inttoptr (i64 137 to ptr)) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #7
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = ptrtoint ptr %i.o to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.v = ptrtoint ptr %0 to i64
  %i.w = sub i64 %i.u, %i.v
  store atomic i64 %i.w, ptr %0 monotonic, align 8
  br label %bb.d

bb.d:                                             ; preds = %.split, %bb.c
  %.sroa.0.0 = phi i8 [ %i.s, %.split ], [ -1, %bb.c ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef range(i8 -1, 5) i8 @_RINvXs7_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vecINtB6_14RelocatableVecoENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorECscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = load atomic i64, ptr %0 monotonic, align 8
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.b, label %.split26, !prof !4

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noundef !5
  %i.n = shl i64 %i.m, 4
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocatorNtB5_13BumpAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, ptr noundef nonnull align 8 %1, i64 noundef 16, i64 noundef %i.n) #7
  %i.o = load ptr, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.split, label %bb.c

.split26:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @28, ptr %i.i, align 8, !captures !9
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 4, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.i, ptr %i.h, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common, ptr %.sroa.43.0..sroa_idx, align 8
  call void @_RNvNvNtCsbqH9stoieM8_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @25, ptr noundef nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.j, ptr %i.g, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXsr_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.48.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @4, ptr noundef nonnull %i.g, ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 163 to ptr)) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.j, ptr %i.f, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsr_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.412.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #8
  unreachable

.split:                                           ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.s = load i8, ptr %i.r, align 8, !range !6, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @28, ptr %i.c, align 8, !captures !9
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 4, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCscPnbQKjJT5f_30iceoryx2_bb_trait_tests_common, ptr %.sroa.416.0..sroa_idx, align 8
  call void @_RNvNvNtCsbqH9stoieM8_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @25, ptr noundef nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_0
