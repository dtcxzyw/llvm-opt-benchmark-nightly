Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/delta_benchmarks-844011e2506a087c.delta_benchmarks.220a0a6f8c333e28-cgu.01?download=true
inline.NumInlined: 8484
inline.NumDeleted: 2578
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMs3_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionjEE11extend_withCs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 8
  store i64 %spec.select.i, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 16
  store i64 %2, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 24
  store i64 %spec.select.i, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 32
  store i64 %2, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 40
  store i64 %spec.select.i, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 48
  store i64 %2, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 56
  store i64 %spec.select.i, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 64
  store i64 %2, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 72
  store i64 %spec.select.i, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 80
  store i64 %2, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 88
  store i64 %spec.select.i, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 96
  store i64 %2, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 104
  store i64 %spec.select.i, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 112
  store i64 %2, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 120
  store i64 %spec.select.i, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 128 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.thread.unr-lcssa, label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source27TableProviderFilterPushDownE11extend_withCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, i8 noundef range(i8 0, 3) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !9431, !noundef !4 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !10, !alias.scope !9431, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source27TableProviderFilterPushDownE7reserveCs2VbMhdeEr66_16delta_benchmarks.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 1)
  %.pre = load i64, ptr %i.a, align 8
  br label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source27TableProviderFilterPushDownE7reserveCs2VbMhdeEr66_16delta_benchmarks.exit

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source27TableProviderFilterPushDownE7reserveCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.i = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr i8, ptr %i.h, i64 %i.f     ; 2 uses
  %i.k = icmp ugt i64 %1, 1
  br i1 %i.k, label %._crit_edge.thread, label %._crit_edge

._crit_edge.thread:                               ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source27TableProviderFilterPushDownE7reserveCs2VbMhdeEr66_16delta_benchmarks.exit
  %i.l = add i64 %1, -1
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.j, i8 %2, i64 %i.l, i1 false)
  %i.m = add i64 %i.f, %1
  %i.n = add i64 %i.m, -1                         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.n
  br label %bb.c

._crit_edge:                                      ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source27TableProviderFilterPushDownE7reserveCs2VbMhdeEr66_16delta_benchmarks.exit
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.sroa.0.0.lcssa29 = phi ptr [ %scevgep, %._crit_edge.thread ], [ %i.j, %._crit_edge ]
  %storemerge.lcssa28 = phi i64 [ %i.n, %._crit_edge.thread ], [ %i.f, %._crit_edge ]
  store i8 %2, ptr %.sroa.0.0.lcssa29, align 1
  %i.o = add i64 %storemerge.lcssa28, 1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %storemerge19 = phi i64 [ %i.o, %bb.c ], [ %i.f, %._crit_edge ]
  store i64 %storemerge19, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecyE11extend_withCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !9434, !noundef !4 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !10, !alias.scope !9434, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecyE7reserveCs2VbMhdeEr66_16delta_benchmarks.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 8)
  %.pre = load i64, ptr %i.a, align 8
  br label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecyE7reserveCs2VbMhdeEr66_16delta_benchmarks.exit

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecyE7reserveCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.i = icmp ult i64 %i.f, 1152921504606846976
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.f ; 4 uses
  %i.k = icmp ugt i64 %1, 1
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecyE7reserveCs2VbMhdeEr66_16delta_benchmarks.exit
  %i.l = add i64 %1, -1                           ; 2 uses
  %min.iters.check = icmp ult i64 %1, 5
  br i1 %min.iters.check, label %.lr.ph.preheader30, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.l, -4                       ; 4 uses
  %i.m = shl i64 %n.vec, 3
  %i.n = getelementptr i8, ptr %i.j, i64 %i.m     ; 2 uses
  %i.o = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.p ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8
  store <2 x i64> %broadcast.splat, ptr %i.q, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !9437

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread, label %.lr.ph.preheader30

.lr.ph.preheader30:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.0.021.ph = phi ptr [ %i.j, %.lr.ph.preheader ], [ %i.n, %middle.block ]
  %.sroa.03.020.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph

._crit_edge.thread:                               ; preds = %.lr.ph, %middle.block
  %.lcssa = phi ptr [ %i.n, %middle.block ], [ %i.w, %.lr.ph ]
  %i.s = add i64 %i.f, %1
  %i.t = add i64 %i.s, -1
  br label %bb.c

._crit_edge:                                      ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecyE7reserveCs2VbMhdeEr66_16delta_benchmarks.exit
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.sroa.0.0.lcssa28 = phi ptr [ %.lcssa, %._crit_edge.thread ], [ %i.j, %._crit_edge ]
  %storemerge.lcssa27 = phi i64 [ %i.t, %._crit_edge.thread ], [ %i.f, %._crit_edge ]
  store i64 %2, ptr %.sroa.0.0.lcssa28, align 8
  %i.u = add i64 %storemerge.lcssa27, 1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %storemerge18 = phi i64 [ %i.u, %bb.c ], [ %i.f, %._crit_edge ]
  store i64 %storemerge18, ptr %i.a, align 8
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader30, %.lr.ph
  %.sroa.0.021 = phi ptr [ %i.w, %.lr.ph ], [ %.sroa.0.021.ph, %.lr.ph.preheader30 ] ; 2 uses
  %.sroa.03.020 = phi i64 [ %i.v, %.lr.ph ], [ %.sroa.03.020.ph, %.lr.ph.preheader30 ]
  %i.v = add nuw i64 %.sroa.03.020, 1             ; 2 uses
  store i64 %2, ptr %.sroa.0.021, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.021, i64 8 ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %1
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !9440
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsE6removeCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([640 x i8]) align 8 captures(none) dereferenceable(640) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 {
bb.a:
  %.sroa.6 = alloca [632 x i8], align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9441)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !9441, !noalias !9444, !noundef !4 ; 5 uses
  %i.c = icmp ult i64 %i.b, 14411518807585588
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsE10try_removeCs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsE10try_removeCs2VbMhdeEr66_16delta_benchmarks.exit.thread

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsE10try_removeCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !9441, !noalias !9444, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw [640 x i8], ptr %i.e, i64 %2 ; 4 uses
  %.sroa.0.0.copyload1 = load i64, ptr %i.f, align 8, !noalias !9441 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(632) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(632) %.sroa.6.0..sroa_idx2, i64 632, i1 false), !noalias !9441
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 640
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = mul nuw nsw i64 %i.i, 640
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !9446
  %i.k = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !9441, !noalias !9444
  %.not = icmp eq i64 %.sroa.0.0.copyload1, 15
  br i1 %.not, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsE10try_removeCs2VbMhdeEr66_16delta_benchmarks.exit.thread, label %bb.b, !prof !9447

bb.b:                                             ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsE10try_removeCs2VbMhdeEr66_16delta_benchmarks.exit
  store i64 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(632) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(632) %.sroa.6, i64 632, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsE10try_removeCs2VbMhdeEr66_16delta_benchmarks.exit.thread: ; preds = %bb.a, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsE10try_removeCs2VbMhdeEr66_16delta_benchmarks.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsE10try_removeCs2VbMhdeEr66_16delta_benchmarks.exit ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 14411518807585588
  tail call void @llvm.assume(i1 %i.m)
  tail call void @_RNvNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs4s1dLWtJWRF_12clap_builder4util2id2IdE6removeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9448)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !9448, !noundef !4 ; 5 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %1, %i.b
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !9448, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %1 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !9448, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noalias !9448, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = xor i64 %1, -1
  %i.l = add nsw i64 %i.b, %i.k
  %i.m = shl nuw nsw i64 %i.l, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.j, i64 %i.m, i1 false), !noalias !9448
  %i.n = add nsw i64 %i.b, -1
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !9448
  %i.o = insertvalue { ptr, i64 } poison, ptr %i.g, 0
  %i.p = insertvalue { ptr, i64 } %i.o, i64 %i.i, 1
  ret { ptr, i64 } %i.p

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %1, i64 noundef %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs4s1dLWtJWRF_12clap_builder6parser7matches11matched_arg10MatchedArgE6removeCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 {
bb.a:
  %.sroa.6 = alloca [96 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9451)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !9451, !noalias !9454, !noundef !4 ; 5 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs4s1dLWtJWRF_12clap_builder6parser7matches11matched_arg10MatchedArgE10try_removeCs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs4s1dLWtJWRF_12clap_builder6parser7matches11matched_arg10MatchedArgE10try_removeCs2VbMhdeEr66_16delta_benchmarks.exit.thread

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs4s1dLWtJWRF_12clap_builder6parser7matches11matched_arg10MatchedArgE10try_removeCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !9451, !noalias !9454, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw [104 x i8], ptr %i.e, i64 %2 ; 4 uses
  %.sroa.0.0.copyload1 = load i64, ptr %i.f, align 8, !noalias !9451 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6.0..sroa_idx2, i64 96, i1 false), !noalias !9451
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = mul nuw nsw i64 %i.i, 104
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !9456
  %i.k = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !9451, !noalias !9454
  %.not = icmp eq i64 %.sroa.0.0.copyload1, 2
  br i1 %.not, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs4s1dLWtJWRF_12clap_builder6parser7matches11matched_arg10MatchedArgE10try_removeCs2VbMhdeEr66_16delta_benchmarks.exit.thread, label %bb.b, !prof !9447

bb.b:                                             ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs4s1dLWtJWRF_12clap_builder6parser7matches11matched_arg10MatchedArgE10try_removeCs2VbMhdeEr66_16delta_benchmarks.exit
  store i64 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs4s1dLWtJWRF_12clap_builder6parser7matches11matched_arg10MatchedArgE10try_removeCs2VbMhdeEr66_16delta_benchmarks.exit.thread: ; preds = %bb.a, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs4s1dLWtJWRF_12clap_builder6parser7matches11matched_arg10MatchedArgE10try_removeCs2VbMhdeEr66_16delta_benchmarks.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs4s1dLWtJWRF_12clap_builder6parser7matches11matched_arg10MatchedArgE10try_removeCs2VbMhdeEr66_16delta_benchmarks.exit ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 88686269585142076
  tail call void @llvm.assume(i1 %i.m)
  tail call void @_RNvNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !10, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 1)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecIBL_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEEINtB2_12SpecFromIterBU_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB29_3map3MapINtNtNtB2d_5slice4iter4IterIBL_NtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB4K_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14build_order_by0EINtNtB2d_6result6ResultNtNtB2d_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE9from_iterCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9457)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !9460
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !9460
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB3a_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14build_order_by0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(48) %1), !noalias !9457
  %i.j = load i64, ptr %i.h, align 8, !range !43, !noalias !9460, !noundef !4
  %.not.i = icmp eq i64 %i.j, -9223372036854775808
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !9460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !9460
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !9460
  invoke void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB3a_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14build_order_by0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.e unwind label %bb.d, !noalias !9457

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !9457, !noalias !9462
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8, !alias.scope !9457, !noalias !9462
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.l, align 8, !alias.scope !9457, !noalias !9462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9460
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecIBS_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEEINtB2_18SpecFromIterNestedB11_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB2n_3map3MapINtNtNtB2r_5slice4iter4IterIBS_NtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB4Y_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14build_order_by0EINtNtB2r_6result6ResultNtNtB2r_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE9from_iterCs2VbMhdeEr66_16delta_benchmarks.exit

bb.d:                                             ; preds = %bb.f, %bb.e, %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.g) #23
          to label %bb.n unwind label %bb.m, !noalias !9457

bb.e:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.f, align 8, !noalias !9460, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9460
  %i.o = tail call i64 @llvm.uadd.sat.i64(i64 %i.n, i64 1)
  %.sroa.0.0.i.i = tail call noundef range(i64 4, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.o, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9460
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.sroa.0.0.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc.i unwind label %bb.d, !noalias !9457

.noexc.i:                                         ; preds = %bb.e
  %i.p = load i64, ptr %i.d, align 8, !range !5, !noalias !9460, !noundef !4
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !43, !noalias !9460, !noundef !4 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %.noexc.i
  %i.u = load i64, ptr %i.t, align 8, !noalias !9460
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.u) #21
          to label %.noexc5.i unwind label %bb.d, !noalias !9457

.noexc5.i:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %.noexc.i
  %i.v = load ptr, ptr %i.t, align 8, !noalias !9460, !nonnull !4, !noundef !4 ; 2 uses
  %i.w = icmp ule i64 %.sroa.0.0.i.i, %i.s
  tail call void @llvm.assume(i1 %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !9457
  store i64 %i.s, ptr %i.i, align 8, !noalias !9460
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.v, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !9460
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !9460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9460
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !9457
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9466)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9469
  invoke void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB3a_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14build_order_by0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %.noexc6.i unwind label %.loopexit.split-lp.i, !noalias !9457

.noexc6.i:                                        ; preds = %bb.g
  %i.x = load i64, ptr %i.c, align 8, !range !43, !noalias !9469, !noundef !4
  %.not4.i.i.i = icmp eq i64 %i.x, -9223372036854775808
  br i1 %.not4.i.i.i, label %.loopexit8.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc6.i, %.noexc7.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9469
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !9469
  %i.y = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !9472, !noalias !9473, !noundef !4 ; 4 uses
  %i.z = icmp ult i64 %i.y, 384307168202282326
  call void @llvm.assume(i1 %i.z)
  %i.aa = load i64, ptr %i.i, align 8, !range !10, !alias.scope !9472, !noalias !9473, !noundef !4
  %i.ab = icmp eq i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.h, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecIBv_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEE7reserveCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9469
  invoke void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB3a_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14build_order_by0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e)
          to label %bb.j unwind label %bb.i, !noalias !9457

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecIBv_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEE7reserveCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.k, %bb.j, %.lr.ph.i.i.i
  %i.ac = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !9472, !noalias !9473, !nonnull !4, !noundef !4
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !9457
  %i.ae = add nuw nsw i64 %i.y, 1
  store i64 %i.ae, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !9472, !noalias !9473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9469
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9469
  invoke void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB3a_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14build_order_by0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %.noexc7.i unwind label %.loopexit.i, !noalias !9457

.noexc7.i:                                        ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecIBv_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEE7reserveCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.af = load i64, ptr %i.c, align 8, !range !43, !noalias !9469, !noundef !4
  %.not.i.i.i = icmp eq i64 %i.af, -9223372036854775808
  br i1 %.not.i.i.i, label %.loopexit8.i, label %.lr.ph.i.i.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.b) #23
          to label %.body.i unwind label %bb.l, !noalias !9457

bb.j:                                             ; preds = %bb.h
  %i.ah = load i64, ptr %i.a, align 8, !noalias !9469, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9469
  %i.ai = call i64 @llvm.uadd.sat.i64(i64 %i.ah, i64 1) ; 2 uses
  %i.aj = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !9474, !noalias !9473, !noundef !4 ; 2 uses
  %i.ak = load i64, ptr %i.i, align 8, !range !10, !alias.scope !9474, !noalias !9473, !noundef !4
  %i.al = sub i64 %i.ak, %i.aj
  %i.am = icmp ugt i64 %i.ai, %i.al
  br i1 %i.am, label %bb.k, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecIBv_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEE7reserveCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, !prof !11

bb.k:                                             ; preds = %bb.j
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.aj, i64 noundef range(i64 1, 0) %i.ai, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecIBv_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEE7reserveCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.i, !noalias !9457

bb.l:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !9457
  unreachable

.loopexit.i:                                      ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecIBv_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEE7reserveCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.g
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

end_hunk_0
