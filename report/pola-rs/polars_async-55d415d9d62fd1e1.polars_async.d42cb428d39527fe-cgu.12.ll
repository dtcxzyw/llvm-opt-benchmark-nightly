Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_async-55d415d9d62fd1e1.polars_async.d42cb428d39527fe-cgu.12?download=true
inline.NumInlined: 67
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtCsh8eZTKRCwoO_3std3sys9backtrace28___rust_begin_short_backtraceNCNvMs6_NtCsidoPH4Qgqxm_12polars_async8executorNtB1f_8Executor29spawn_runner_without_identity0uEB1h_:bb.a
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs6_NtCsidoPH4Qgqxm_12polars_async8executorNtB5_8Executor6global(), !dbg !255
  tail call void @_RNvMs6_NtCsidoPH4Qgqxm_12polars_async8executorNtB5_8Executor6runner(ptr noundef nonnull align 128 %i.a, i64 noundef 0, i64 undef), !dbg !256
  tail call void asm sideeffect "", "~{memory}"() #15, !dbg !257, !srcloc !43
  ret void, !dbg !258
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs5small8SmallRngNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng8from_rngNtNtB7_6thread9ThreadRngECsidoPH4Qgqxm_12polars_async(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !259 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [72 x i8], align 8                ; 12 uses
  %i.f = alloca [32 x i8], align 8                ; 10 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [4 x i8], align 4                 ; 4 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 8 uses
  %i.r = alloca [40 x i8], align 8                ; 10 uses
  %i.s = alloca [32 x i8], align 1                ; 6 uses
  %i.t = alloca [32 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !723
  call void @_RNvXst_NtCscgRAwXFJnXP_4core5arrayAhj20_NtNtB7_7default7Default7defaultCsidoPH4Qgqxm_12polars_async(ptr noalias noundef nonnull sret([32 x i8]) align 1 captures(none) dereferenceable(32) %i.t), !dbg !724
  %.val = load ptr, ptr %1, align 8, !dbg !725, !alias.scope !572, !noalias !573, !nonnull !13, !noundef !13 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !726 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !584), !dbg !727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !728, !noalias !585
  %i.v = load i32, ptr %i.u, align 4, !dbg !728, !alias.scope !584, !noalias !589, !noundef !13
  %i.w = zext i32 %i.v to i64, !dbg !729
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 272 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 320
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %bb.b, !dbg !730

bb.b:                                             ; preds = %bb.s, %bb.a
  %.sroa.0.026.i.i = phi i64 [ 0, %bb.a ], [ %i.cq, %bb.s ] ; 3 uses
  %.sroa.06.025.i.i = phi i64 [ %i.w, %bb.a ], [ %i.cf, %bb.s ] ; 2 uses
  %i.as = icmp ugt i64 %.sroa.06.025.i.i, 63, !dbg !731
  br i1 %i.as, label %bb.c, label %bb.e, !dbg !731

.loopexit.i.i:                                    ; preds = %bb.s, %bb.o
  %.sroa.06.1.i.i = phi i64 [ %.sroa.06.3.i.i, %bb.o ], [ %i.cf, %bb.s ], !dbg !732 ; 2 uses
  %i.at = icmp ugt i64 %.sroa.06.1.i.i, 4294967295, !dbg !733
  br i1 %i.at, label %.split.i.i.i, label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs5smallNtB2_8SmallRngNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed.exit, !dbg !733

.split.i.i.i:                                     ; preds = %.loopexit.i.i
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #16, !dbg !734, !noalias !602
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.au = load i64, ptr %i.y, align 4, !dbg !735, !alias.scope !603, !noalias !604
  %i.av = icmp ugt i64 %i.au, 1023, !dbg !736
  br i1 %i.av, label %bb.d, label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i, !dbg !736, !prof !30

bb.d:                                             ; preds = %bb.c
  call void @_RNvMs_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias noundef nonnull align 4 dereferenceable(64) %i.x) #18, !dbg !737, !noalias !612
  br label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i, !dbg !737

_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i: ; preds = %bb.d, %bb.c
  call void @_RNvXs_NtCsejN9i34LGCw_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs53V80GKKPEw_9rand_core5block9Generator8generateCsidoPH4Qgqxm_12polars_async(ptr noalias noundef nonnull align 4 dereferenceable(64) %i.x, ptr noalias noundef nonnull align 4 dereferenceable(320) %i.u), !dbg !738, !noalias !602
  br label %bb.e, !dbg !739

bb.e:                                             ; preds = %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i, %bb.b
  %.sroa.06.2.i.i = phi i64 [ 0, %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i ], [ %.sroa.06.025.i.i, %bb.b ], !dbg !732 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !740, !noalias !613
  %i.aw = sub nuw nsw i64 32, %.sroa.0.026.i.i, !dbg !741
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.026.i.i, !dbg !742
  store ptr %i.ax, ptr %i.aa, align 8, !dbg !743, !alias.scope !616, !noalias !617
  store i64 %i.aw, ptr %i.ab, align 8, !dbg !743, !alias.scope !616, !noalias !617
  store ptr %i.z, ptr %i.r, align 8, !dbg !743, !alias.scope !616, !noalias !617
  store i64 0, ptr %i.ac, align 8, !dbg !743, !alias.scope !616, !noalias !617
  store i64 4, ptr %i.ad, align 8, !dbg !743, !alias.scope !616, !noalias !617
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !744, !noalias !613
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.sroa.06.2.i.i, !dbg !745
  store ptr %i.ay, ptr %i.q, align 8, !dbg !746, !noalias !613
  store ptr %i.x, ptr %i.ae, align 8, !dbg !746, !noalias !613
  store ptr %i.r, ptr %i.p, align 8, !dbg !747, !alias.scope !628, !noalias !629
  store ptr %i.q, ptr %i.af, align 8, !dbg !747, !alias.scope !628, !noalias !629
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false), !dbg !747, !alias.scope !628, !noalias !629
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !748, !noalias !613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !748, !noalias !613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !749, !noalias !640
  call void @_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator9size_hintCsidoPH4Qgqxm_12polars_async(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p), !dbg !750, !noalias !645
  %i.az = load i64, ptr %i.k, align 8, !dbg !751, !noalias !640, !noundef !13
  %i.ba = load i64, ptr %i.ah, align 8, !dbg !752, !range !646, !noalias !640, !noundef !13
  %i.bb = load i64, ptr %i.ai, align 8, !dbg !752, !noalias !640 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !753, !noalias !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !754, !noalias !640
  call void @_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter4ItermENtB5_8Iterator9size_hintCsidoPH4Qgqxm_12polars_async(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.af), !dbg !755, !noalias !645
  %i.bc = load i64, ptr %i.j, align 8, !dbg !756, !noalias !640, !noundef !13
  %i.bd = load i64, ptr %i.aj, align 8, !dbg !757, !range !646, !noalias !640, !noundef !13 ; 2 uses
  %i.be = load i64, ptr %i.ak, align 8, !dbg !757, !noalias !640 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !758, !noalias !640
  %i.bf = trunc nuw i64 %i.ba to i1, !dbg !759
  %i.bg = trunc nuw i64 %i.bd to i1, !dbg !759    ; 2 uses
  br i1 %i.bf, label %bb.f, label %bb.g, !dbg !759

bb.f:                                             ; preds = %bb.e
  br i1 %i.bg, label %bb.h, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsidoPH4Qgqxm_12polars_async.exit.i.i, !dbg !759

bb.g:                                             ; preds = %bb.e
  %.13.i.i.i = select i1 %i.bg, i64 %i.be, i64 undef, !dbg !760
  br label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsidoPH4Qgqxm_12polars_async.exit.i.i, !dbg !760

bb.h:                                             ; preds = %bb.f
  %.sroa.0.0.i14.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.be, i64 %i.bb), !dbg !761
  br label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsidoPH4Qgqxm_12polars_async.exit.i.i, !dbg !762

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsidoPH4Qgqxm_12polars_async.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.05.0.i.i.i = phi i64 [ 1, %bb.h ], [ %i.bd, %bb.g ], [ 1, %bb.f ], !dbg !763 ; 2 uses
  %.sroa.7.0.i.i.i = phi i64 [ %.sroa.0.0.i14.i.i.i, %bb.h ], [ %.13.i.i.i, %bb.g ], [ %i.bb, %bb.f ], !dbg !763 ; 4 uses
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bc, i64 %i.az), !dbg !764 ; 2 uses
  store i64 %.sroa.05.0.i.i.i, ptr %i.n, align 8, !dbg !765, !noalias !613
  store i64 %.sroa.7.0.i.i.i, ptr %i.al, align 8, !dbg !765, !noalias !613
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.am, align 8, !dbg !766, !noalias !613
  store i64 1, ptr %i.m, align 8, !dbg !766, !noalias !613
  %i.bh = trunc nuw i64 %.sroa.05.0.i.i.i to i1, !dbg !767
  %i.bi = icmp eq i64 %.sroa.7.0.i.i.i, %.sroa.0.0.i.i.i.i
  %or.cond.i.i = select i1 %i.bh, i1 %i.bi, i1 false, !dbg !767, !prof !651
  br i1 %or.cond.i.i, label %bb.j, label %bb.i, !dbg !767, !prof !651

bb.i:                                             ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsidoPH4Qgqxm_12polars_async.exit.i.i
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedINtNtB4_6option6OptionjEBM_EB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #19, !dbg !768, !noalias !602
  unreachable, !dbg !768

bb.j:                                             ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsidoPH4Qgqxm_12polars_async.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !748, !noalias !613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !748, !noalias !613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !769, !noalias !613
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false), !dbg !769, !noalias !613
  call void @llvm.experimental.noalias.scope.decl(metadata !652), !dbg !769, !noalias !602
  call void @llvm.experimental.noalias.scope.decl(metadata !653), !dbg !770, !noalias !602
  %.val.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !654, !noalias !613, !nonnull !13, !align !24 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 16 ; 2 uses
  %.val13.i.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !654, !noalias !613, !nonnull !13, !align !24 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val13.i.i.i.i, i64 8
  br label %bb.k, !dbg !771

bb.k:                                             ; preds = %._crit_edge.i.i.i.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !772, !noalias !656
  call void @_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator9size_hintCsidoPH4Qgqxm_12polars_async(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l), !dbg !773, !noalias !657
  %i.bn = load i64, ptr %i.an, align 8, !dbg !774, !range !646, !noalias !656, !noundef !13
  %i.bo = load i64, ptr %i.ao, align 8, !dbg !774, !noalias !656 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !775, !noalias !656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !776, !noalias !656
  call void @_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter4ItermENtB5_8Iterator9size_hintCsidoPH4Qgqxm_12polars_async(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ap), !dbg !777, !noalias !657
  %i.bp = load i64, ptr %i.aq, align 8, !dbg !778, !range !646, !noalias !656, !noundef !13
  %i.bq = load i64, ptr %i.ar, align 8, !dbg !778, !noalias !656 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !779, !noalias !656
  %i.br = trunc nuw i64 %i.bn to i1, !dbg !780
  %i.bs = trunc nuw i64 %i.bp to i1, !dbg !781    ; 2 uses
  br i1 %i.br, label %bb.l, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsidoPH4Qgqxm_12polars_async.exit.i.i.i.i, !dbg !780

bb.l:                                             ; preds = %bb.k
  br i1 %i.bs, label %bb.m, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsidoPH4Qgqxm_12polars_async.exit.thread.i.i.i.i, !dbg !780

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i14.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bq, i64 %i.bo), !dbg !782
  br label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsidoPH4Qgqxm_12polars_async.exit.thread.i.i.i.i, !dbg !783

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsidoPH4Qgqxm_12polars_async.exit.i.i.i.i: ; preds = %bb.k
  br i1 %i.bs, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsidoPH4Qgqxm_12polars_async.exit.thread.i.i.i.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator4nextCsidoPH4Qgqxm_12polars_async.exit.preheader.i.i.i.i, !dbg !784

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsidoPH4Qgqxm_12polars_async.exit.thread.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsidoPH4Qgqxm_12polars_async.exit.i.i.i.i, %bb.m, %bb.l
  %.sroa.0.0.i.i19.i.i = phi i64 [ %i.bo, %bb.l ], [ %.sroa.0.0.i14.i.i.i.i.i, %bb.m ], [ %i.bq, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsidoPH4Qgqxm_12polars_async.exit.i.i.i.i ], !dbg !785 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i19.i.i, 0, !dbg !786
  br i1 %.not.i.i.i.i, label %_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3r_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECsidoPH4Qgqxm_12polars_async.exit.i.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator4nextCsidoPH4Qgqxm_12polars_async.exit.preheader.i.i.i.i, !dbg !787

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator4nextCsidoPH4Qgqxm_12polars_async.exit.preheader.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsidoPH4Qgqxm_12polars_async.exit.thread.i.i.i.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsidoPH4Qgqxm_12polars_async.exit.i.i.i.i
  %.sroa.0.026.i.i.i.i = phi i64 [ %.sroa.0.0.i.i19.i.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsidoPH4Qgqxm_12polars_async.exit.thread.i.i.i.i ], [ -1, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsidoPH4Qgqxm_12polars_async.exit.i.i.i.i ]
  %i.bt = phi i1 [ true, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsidoPH4Qgqxm_12polars_async.exit.thread.i.i.i.i ], [ false, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsidoPH4Qgqxm_12polars_async.exit.i.i.i.i ]
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator4nextCsidoPH4Qgqxm_12polars_async.exit.i.i.i.i, !dbg !787

._crit_edge.i.i.i.i:                              ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator4nextCsidoPH4Qgqxm_12polars_async.exit.i.i.i.i
  br i1 %i.bt, label %_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3r_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECsidoPH4Qgqxm_12polars_async.exit.i.i, label %bb.k, !dbg !788

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator4nextCsidoPH4Qgqxm_12polars_async.exit.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator4nextCsidoPH4Qgqxm_12polars_async.exit.i.i.i.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator4nextCsidoPH4Qgqxm_12polars_async.exit.preheader.i.i.i.i
  %.sroa.01.023.i.i.i.i = phi i64 [ %i.bu, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator4nextCsidoPH4Qgqxm_12polars_async.exit.i.i.i.i ], [ 0, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator4nextCsidoPH4Qgqxm_12polars_async.exit.preheader.i.i.i.i ]
  %i.bu = add nuw i64 %.sroa.01.023.i.i.i.i, 1, !dbg !789 ; 2 uses
  %i.bv = load i64, ptr %i.bj, align 8, !dbg !790, !alias.scope !668, !noalias !602, !noundef !13 ; 2 uses
  %i.bw = load i64, ptr %i.bk, align 8, !dbg !791, !alias.scope !668, !noalias !602, !noundef !13 ; 4 uses
  %.not.i.i.i.i.i.i = icmp ule i64 %i.bw, %i.bv, !dbg !792
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i), !dbg !792, !noalias !602
  %i.bx = load ptr, ptr %i.bl, align 8, !dbg !790, !alias.scope !668, !noalias !602, !nonnull !13, !noundef !13 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw, !dbg !793
  %i.bz = sub nuw i64 %i.bv, %i.bw, !dbg !794
  store ptr %i.by, ptr %i.bl, align 8, !dbg !795, !alias.scope !668, !noalias !602
  store i64 %i.bz, ptr %i.bj, align 8, !dbg !795, !alias.scope !668, !noalias !602
  %i.ca = load ptr, ptr %.val13.i.i.i.i, align 8, !dbg !796, !alias.scope !672, !noalias !602, !nonnull !13, !noundef !13 ; 3 uses
  %i.cb = load ptr, ptr %i.bm, align 8, !dbg !797, !alias.scope !672, !noalias !602, !nonnull !13, !noundef !13
  %i.cc = icmp ne ptr %i.ca, %i.cb, !dbg !798
  call void @llvm.assume(i1 %i.cc), !dbg !799, !noalias !602
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 4, !dbg !800
  store ptr %i.cd, ptr %.val13.i.i.i.i, align 8, !dbg !801, !alias.scope !672, !noalias !602
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !802, !noalias !679
  %i.ce = load i32, ptr %i.ca, align 4, !dbg !802, !noalias !684, !noundef !13
  store i32 %i.ce, ptr %i.g, align 4, !dbg !803, !noalias !679
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECsidoPH4Qgqxm_12polars_async(ptr noalias noundef nonnull %i.bx, i64 noundef %i.bw, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7), !dbg !804, !noalias !684
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !805, !noalias !679
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bu, %.sroa.0.026.i.i.i.i, !dbg !786
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator4nextCsidoPH4Qgqxm_12polars_async.exit.i.i.i.i, !dbg !787

_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3r_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECsidoPH4Qgqxm_12polars_async.exit.i.i: ; preds = %._crit_edge.i.i.i.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsidoPH4Qgqxm_12polars_async.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !769, !noalias !613
  %i.cf = add i64 %.sroa.7.0.i.i.i, %.sroa.06.2.i.i, !dbg !806 ; 4 uses
  %i.cg = load ptr, ptr %i.q, align 8, !dbg !807, !noalias !613, !nonnull !13, !noundef !13 ; 3 uses
  %i.ch = load ptr, ptr %i.ae, align 8, !dbg !808, !noalias !613, !nonnull !13, !noundef !13
  %i.ci = icmp eq ptr %i.cg, %i.ch, !dbg !809
  br i1 %i.ci, label %bb.s, label %bb.n, !dbg !810

bb.n:                                             ; preds = %_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3r_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECsidoPH4Qgqxm_12polars_async.exit.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 4, !dbg !811
  store ptr %i.cj, ptr %i.q, align 8, !dbg !812, !noalias !613
  %i.ck = load ptr, ptr %i.r, align 8, !dbg !813, !noalias !613, !nonnull !13, !noundef !13
  %i.cl = load i64, ptr %i.ac, align 8, !dbg !813, !noalias !613, !noundef !13 ; 5 uses
  %.not.i.i = icmp eq i64 %i.cl, 0, !dbg !814
  br i1 %.not.i.i, label %bb.o, label %bb.p, !dbg !814

bb.o:                                             ; preds = %bb.q, %bb.n
  %.sroa.06.3.i.i = phi i64 [ %i.co, %bb.q ], [ %i.cf, %bb.n ], !dbg !815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !816, !noalias !613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !817, !noalias !613
  br label %.loopexit.i.i, !dbg !818

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !819, !noalias !613
  %i.cm = load i32, ptr %i.cg, align 4, !dbg !819, !noalias !602, !noundef !13
  store i32 %i.cm, ptr %i.o, align 4, !dbg !820, !noalias !613
  %i.cn = icmp ult i64 %i.cl, 5
  br i1 %i.cn, label %bb.q, label %bb.r, !dbg !821, !prof !651

bb.q:                                             ; preds = %bb.p
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECsidoPH4Qgqxm_12polars_async(ptr noalias noundef nonnull %i.ck, i64 noundef %i.cl, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.cl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12), !dbg !822, !noalias !602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !823, !noalias !613
  %i.co = add i64 %i.cf, 1, !dbg !824
  br label %bb.o, !dbg !825

bb.r:                                             ; preds = %bb.p
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.cl, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #16, !dbg !826, !noalias !602
  unreachable

bb.s:                                             ; preds = %_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3r_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECsidoPH4Qgqxm_12polars_async.exit.i.i
  %i.cp = shl i64 %.sroa.7.0.i.i.i, 2, !dbg !827
  %i.cq = add i64 %i.cp, %.sroa.0.026.i.i, !dbg !828 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !816, !noalias !613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !817, !noalias !613
  %i.cr = icmp ult i64 %i.cq, 32, !dbg !730
  br i1 %i.cr, label %bb.b, label %.loopexit.i.i, !dbg !730

_RNvXNtNtCsci2cbTAlhZn_4rand4rngs5smallNtB2_8SmallRngNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed.exit: ; preds = %.loopexit.i.i
  %i.cs = trunc nuw i64 %.sroa.06.1.i.i to i32, !dbg !829
  store i32 %i.cs, ptr %i.u, align 4, !dbg !830, !alias.scope !584, !noalias !589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !831, !noalias !585
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !832
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.s, ptr noundef nonnull align 1 dereferenceable(32) %i.t, i64 32, i1 false), !dbg !833
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !834, !noalias !692
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false), !noalias !692
  %i.ct = getelementptr inbounds nuw i8, ptr %i.s, i64 32, !dbg !835 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !836 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !837, !noalias !703
  store ptr %i.s, ptr %i.c, align 8, !dbg !838, !alias.scope !704, !noalias !705
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !838
  store i64 32, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !838, !alias.scope !704, !noalias !705
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !838
  store ptr %i.ct, ptr %.sroa.67.0..sroa_idx.i, align 8, !dbg !838, !alias.scope !704, !noalias !705
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !838
  store i64 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !838, !alias.scope !704, !noalias !705
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !838
  store i64 8, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !838, !alias.scope !704, !noalias !705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !703
  store ptr %i.f, ptr %i.b, align 8, !noalias !709
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.cu, ptr %i.cv, align 8, !noalias !709
  %i.cw = call noundef i64 @_RNvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7IterMutyENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsidoPH4Qgqxm_12polars_async(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b), !dbg !839, !noalias !710
  %i.cx = call noundef i64 @_RNvYINtNtNtCscgRAwXFJnXP_4core5slice4iter11ChunksExacthENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsidoPH4Qgqxm_12polars_async(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.c), !dbg !840, !noalias !712
  %.sroa.0.0.i.i.i.i2 = call noundef i64 @llvm.umin.i64(i64 %i.cx, i64 %i.cw), !dbg !841 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !842, !noalias !703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !843, !noalias !703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !844, !noalias !692
  store ptr %i.f, ptr %i.e, align 8, !dbg !844, !noalias !692
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !844
  store ptr %i.cu, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !844, !noalias !692
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !844 ; 2 uses
  store ptr %i.s, ptr %.sroa.515.0..sroa_idx.i, align 8, !dbg !844, !noalias !692
  %.sroa.616.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !844
  store i64 32, ptr %.sroa.616.0..sroa_idx.i, align 8, !dbg !844, !noalias !692
  %.sroa.717.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !844
  store ptr %i.ct, ptr %.sroa.717.0..sroa_idx.i, align 8, !dbg !844, !noalias !692
  %.sroa.818.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40, !dbg !844
  store i64 0, ptr %.sroa.818.0..sroa_idx.i, align 8, !dbg !844, !noalias !692
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48, !dbg !844
  store i64 8, ptr %.sroa.9.0..sroa_idx.i, align 8, !dbg !844, !noalias !692
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56, !dbg !844 ; 2 uses
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64, !dbg !844 ; 2 uses
  store i64 %.sroa.0.0.i.i.i.i2, ptr %.sroa.11.0..sroa_idx.i, align 8, !dbg !844, !noalias !692
  %.not.i = icmp eq i64 %.sroa.0.0.i.i.i.i2, 0, !dbg !845
  br i1 %.not.i, label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs18xoshiro256plusplusNtB2_18Xoshiro256PlusPlusNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed.exit, label %.lr.ph.i, !dbg !845

.lr.ph.i:                                         ; preds = %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs5smallNtB2_8SmallRngNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed.exit, %.lr.ph.i
  %i.cy = phi i64 [ %i.df, %.lr.ph.i ], [ 0, %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs5smallNtB2_8SmallRngNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed.exit ] ; 3 uses
  %i.cz = add nuw i64 %i.cy, 1, !dbg !846
  store i64 %i.cz, ptr %.sroa.10.0..sroa_idx.i, align 8, !dbg !846, !alias.scope !714, !noalias !715
  %.val.i.i = load ptr, ptr %i.e, align 8, !dbg !847, !alias.scope !714, !noalias !715, !nonnull !13, !noundef !13
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.cy, !dbg !848
  %i.db = call { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsidoPH4Qgqxm_12polars_async(ptr noalias noundef nonnull align 8 dereferenceable(40) %.sroa.515.0..sroa_idx.i, i64 noundef %i.cy), !dbg !849, !noalias !717 ; 2 uses
  %i.dc = extractvalue { ptr, i64 } %i.db, 0, !dbg !850 ; 2 uses
  %i.dd = extractvalue { ptr, i64 } %i.db, 1, !dbg !850
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dc) ], !noalias !718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !851, !noalias !692
  %i.de = call noundef i64 @_RNvXsR_NtCscgRAwXFJnXP_4core5arrayAhj8_NtNtB7_7default7Default7defaultCsidoPH4Qgqxm_12polars_async(), !dbg !852, !noalias !719
  store i64 %i.de, ptr %i.d, align 8, !dbg !852, !noalias !692
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECsidoPH4Qgqxm_12polars_async(ptr noalias noundef nonnull %i.d, i64 noundef 8, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dc, i64 noundef %i.dd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1), !dbg !853, !noalias !719
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !dbg !854, !noalias !692
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.da, align 8, !dbg !855, !noalias !719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !856, !noalias !692
  %i.df = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !dbg !845, !alias.scope !714, !noalias !715, !noundef !13 ; 2 uses
  %i.dg = load i64, ptr %.sroa.11.0..sroa_idx.i, align 8, !dbg !857, !alias.scope !714, !noalias !715, !noundef !13
  %i.dh = icmp ult i64 %i.df, %i.dg, !dbg !845
  br i1 %i.dh, label %.lr.ph.i, label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs18xoshiro256plusplusNtB2_18Xoshiro256PlusPlusNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed.exit, !dbg !845

_RNvXNtNtCsci2cbTAlhZn_4rand4rngs18xoshiro256plusplusNtB2_18Xoshiro256PlusPlusNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed.exit: ; preds = %.lr.ph.i, %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs5smallNtB2_8SmallRngNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !858, !noalias !692
  %.sroa.0.0.copyload27.i = load i64, ptr %i.f, align 8, !dbg !859, !noalias !720 ; 2 uses
  %.sroa.3.0..sroa_idx28.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !859
  %.sroa.3.0.copyload29.i = load i64, ptr %.sroa.3.0..sroa_idx28.i, align 8, !dbg !859, !noalias !720 ; 2 uses
  %.sroa.4.0..sroa_idx31.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !859
  %.sroa.4.0.copyload32.i = load i64, ptr %.sroa.4.0..sroa_idx31.i, align 8, !dbg !859, !noalias !720 ; 2 uses
  %.sroa.5.0..sroa_idx34.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !859
  %.sroa.5.0.copyload35.i = load i64, ptr %.sroa.5.0..sroa_idx34.i, align 8, !dbg !859, !noalias !720 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !860, !noalias !692
  %i.di = icmp eq i64 %.sroa.0.0.copyload27.i, 0, !dbg !861
  %i.dj = icmp eq i64 %.sroa.3.0.copyload29.i, 0
  %or.cond.i = select i1 %i.di, i1 %i.dj, i1 false, !dbg !862
  %i.dk = icmp eq i64 %.sroa.4.0.copyload32.i, 0
  %or.cond36.i = select i1 %or.cond.i, i1 %i.dk, i1 false, !dbg !862
  %i.dl = icmp eq i64 %.sroa.5.0.copyload35.i, 0
  %or.cond37.i = select i1 %or.cond36.i, i1 %i.dl, i1 false, !dbg !862 ; 4 uses
  %..sroa.0.0.copyload27.i = select i1 %or.cond37.i, i64 -2152535657050944081, i64 %.sroa.0.0.copyload27.i, !dbg !863
  %..sroa.3.0.copyload29.i = select i1 %or.cond37.i, i64 7960286522194355700, i64 %.sroa.3.0.copyload29.i, !dbg !863
  %..sroa.4.0.copyload32.i = select i1 %or.cond37.i, i64 487617019471545679, i64 %.sroa.4.0.copyload32.i, !dbg !863
  %..sroa.5.0.copyload35.i = select i1 %or.cond37.i, i64 -537132696929009172, i64 %.sroa.5.0.copyload35.i, !dbg !863
  store i64 %..sroa.0.0.copyload27.i, ptr %0, align 8, !dbg !864, !noalias !722
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !864
  store i64 %..sroa.3.0.copyload29.i, ptr %.sroa.44.0..sroa_idx, align 8, !dbg !864, !noalias !722
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !864
  store i64 %..sroa.4.0.copyload32.i, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !864, !noalias !722
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !864
  store i64 %..sroa.5.0.copyload35.i, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !864, !noalias !722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !866
  ret void, !dbg !867
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtCsh8eZTKRCwoO_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCscgRAwXFJnXP_4core3fmt5Write9write_strCsidoPH4Qgqxm_12polars_async(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !868, !nonnull !13, !noundef !13
  %i.b = tail call noundef ptr @_RNvYNtNtNtNtCsh8eZTKRCwoO_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCsidoPH4Qgqxm_12polars_async(ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !869 ; 3 uses
  %.not = icmp ne ptr %i.b, null, !dbg !868       ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c, !dbg !870

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !871 ; 3 uses
  %.val = load ptr, ptr %i.c, align 8, !dbg !871, !noundef !13
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsidoPH4Qgqxm_12polars_async(ptr %.val)
          to label %bb.e unwind label %bb.d, !dbg !871

bb.c:                                             ; preds = %bb.a, %bb.e
  ret i1 %.not, !dbg !872

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  store ptr %i.b, ptr %i.c, align 8, !dbg !871
  resume { ptr, i32 } %i.d, !dbg !873

bb.e:                                             ; preds = %bb.b
  store ptr %i.b, ptr %i.c, align 8, !dbg !871
  br label %bb.c, !dbg !874
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRuNtB6_5Debug3fmtCsidoPH4Qgqxm_12polars_async(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !875 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter3pad(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 2), !dbg !880
  ret i1 %i.a, !dbg !881
}

end_hunk_0
begin_hunk_1_@llvm.umin.i64
!216 = !DILocation(line: 90, column: 68, scope: !210, inlinedAt: !211)
!217 = !DILocation(line: 90, column: 74, scope: !210, inlinedAt: !211)
!218 = !DILocation(line: 90, column: 78, scope: !210, inlinedAt: !211)
!219 = !DILocation(line: 491, column: 5, scope: !212, inlinedAt: !215)
!220 = !DILocation(line: 172, column: 2, scope: !207)
!221 = distinct !DISubprogram(name: "__rust_begin_short_backtrace<std::thread::lifecycle::spawn_unchecked::{closure#1}::{closure#0}::{closure_env#0}<polars_async::executor::{impl#8}::spawn_runner_without_identity::{closure_env#0}, ()>, ()>", linkageName: "_RINvNtNtCsh8eZTKRCwoO_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNCINvNtNtB6_6thread9lifecycle15spawn_uncheckedNCNvMs6_NtCsidoPH4Qgqxm_12polars_async8executorNtB23_8Executor29spawn_runner_without_identity0uEs_000uEB25_", scope: !36, file: !34, line: 162, type: !18, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!222 = distinct !{!222, i1 false, !"_RNCNCNCINvNtNtCsh8eZTKRCwoO_3std6thread9lifecycle15spawn_uncheckedNCNvMs6_NtCsidoPH4Qgqxm_12polars_async8executorNtB1a_8Executor29spawn_runner_without_identity0uEs_000B1c_"}
!223 = distinct !{!223, !222, !"_RNCNCNCINvNtNtCsh8eZTKRCwoO_3std6thread9lifecycle15spawn_uncheckedNCNvMs6_NtCsidoPH4Qgqxm_12polars_async8executorNtB1a_8Executor29spawn_runner_without_identity0uEs_000B1c_: argument 0"}
!224 = distinct !DISubprogram(name: "{closure#0}<polars_async::executor::{impl#8}::spawn_runner_without_identity::{closure_env#0}, ()>", linkageName: "_RNCNCNCINvNtNtCsh8eZTKRCwoO_3std6thread9lifecycle15spawn_uncheckedNCNvMs6_NtCsidoPH4Qgqxm_12polars_async8executorNtB1a_8Executor29spawn_runner_without_identity0uEs_000B1c_", scope: !42, file: !37, line: 90, type: !18, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!225 = distinct !DILocation(line: 166, column: 18, scope: !221)
!226 = distinct !DISubprogram(name: "black_box<()>", linkageName: "_RINvNtCscgRAwXFJnXP_4core4hint9black_boxuECsidoPH4Qgqxm_12polars_async", scope: !45, file: !44, line: 490, type: !18, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!227 = distinct !DILexicalBlock(scope: !221, file: !34, line: 166, column: 5)
!228 = !{!223}
!229 = !DILocation(line: 169, column: 5, scope: !227)
!230 = !DILocation(line: 90, column: 68, scope: !224, inlinedAt: !225)
!231 = !DILocation(line: 90, column: 74, scope: !224, inlinedAt: !225)
!232 = !DILocation(line: 90, column: 78, scope: !224, inlinedAt: !225)
!233 = !DILocation(line: 491, column: 5, scope: !226, inlinedAt: !229)
!234 = !DILocation(line: 172, column: 2, scope: !221)
!235 = distinct !DISubprogram(name: "__rust_begin_short_backtrace<polars_async::executor::{impl#8}::global::{closure#0}::{closure#0}::{closure_env#0}, ()>", linkageName: "_RINvNtNtCsh8eZTKRCwoO_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNCNvMs6_NtCsidoPH4Qgqxm_12polars_async8executorNtB1j_8Executor6global000uEB1l_", scope: !36, file: !34, line: 162, type: !18, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!236 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNCNCNvMs6_NtCsidoPH4Qgqxm_12polars_async8executorNtBb_8Executor6global000Bd_", scope: !242, file: !46, line: 406, type: !18, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!237 = distinct !DILocation(line: 166, column: 18, scope: !235)
!238 = distinct !DISubprogram(name: "black_box<()>", linkageName: "_RINvNtCscgRAwXFJnXP_4core4hint9black_boxuECsidoPH4Qgqxm_12polars_async", scope: !45, file: !44, line: 490, type: !18, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!239 = distinct !DILexicalBlock(scope: !235, file: !34, line: 166, column: 5)
!240 = !DINamespace(name: "global", scope: !49)
!241 = !DINamespace(name: "{closure#0}", scope: !240)
!242 = !DINamespace(name: "{closure#0}", scope: !241)
!243 = !DILocation(line: 169, column: 5, scope: !239)
!244 = !DILocation(line: 406, column: 40, scope: !236, inlinedAt: !237)
!245 = !DILocation(line: 406, column: 55, scope: !236, inlinedAt: !237)
!246 = !DILocation(line: 491, column: 5, scope: !238, inlinedAt: !243)
!247 = !DILocation(line: 172, column: 2, scope: !235)
!248 = distinct !DISubprogram(name: "__rust_begin_short_backtrace<polars_async::executor::{impl#8}::spawn_runner_without_identity::{closure_env#0}, ()>", linkageName: "_RINvNtNtCsh8eZTKRCwoO_3std3sys9backtrace28___rust_begin_short_backtraceNCNvMs6_NtCsidoPH4Qgqxm_12polars_async8executorNtB1f_8Executor29spawn_runner_without_identity0uEB1h_", scope: !36, file: !34, line: 162, type: !18, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!249 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvMs6_NtCsidoPH4Qgqxm_12polars_async8executorNtB7_8Executor29spawn_runner_without_identity0B9_", scope: !253, file: !46, line: 354, type: !18, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!250 = distinct !DILocation(line: 166, column: 18, scope: !248)
!251 = distinct !DISubprogram(name: "black_box<()>", linkageName: "_RINvNtCscgRAwXFJnXP_4core4hint9black_boxuECsidoPH4Qgqxm_12polars_async", scope: !45, file: !44, line: 490, type: !18, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!252 = distinct !DILexicalBlock(scope: !248, file: !34, line: 166, column: 5)
!253 = !DINamespace(name: "spawn_runner_without_identity", scope: !49)
!254 = !DILocation(line: 169, column: 5, scope: !252)
!255 = !DILocation(line: 354, column: 28, scope: !249, inlinedAt: !250)
!256 = !DILocation(line: 354, column: 43, scope: !249, inlinedAt: !250)
!257 = !DILocation(line: 491, column: 5, scope: !251, inlinedAt: !254)
!258 = !DILocation(line: 172, column: 2, scope: !248)
!259 = distinct !DISubprogram(name: "from_rng<rand::rngs::small::SmallRng, rand::rngs::thread::ThreadRng>", linkageName: "_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs5small8SmallRngNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng8from_rngNtNtB7_6thread9ThreadRngECsidoPH4Qgqxm_12polars_async", scope: !571, file: !568, line: 147, type: !18, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!260 = distinct !{!260, i1 false, !"_RNvXs3_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB5_9ThreadRngNtCs53V80GKKPEw_9rand_core6TryRng14try_fill_bytes"}
!261 = distinct !{!261, !260, !"_RNvXs3_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB5_9ThreadRngNtCs53V80GKKPEw_9rand_core6TryRng14try_fill_bytes: argument 0"}
!262 = distinct !{!262, !260, !"_RNvXs3_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB5_9ThreadRngNtCs53V80GKKPEw_9rand_core6TryRng14try_fill_bytes: argument 1"}
!263 = distinct !DILexicalBlock(scope: !259, file: !568, line: 148, column: 9)
!264 = distinct !DISubprogram(name: "get<rand_core::block::BlockRng<rand::rngs::thread::ReseedingCore>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtCs53V80GKKPEw_9rand_core5block8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreEE3getCsidoPH4Qgqxm_12polars_async", scope: !576, file: !574, line: 2443, type: !18, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!265 = distinct !DISubprogram(name: "try_fill_bytes", linkageName: "_RNvXs3_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB5_9ThreadRngNtCs53V80GKKPEw_9rand_core6TryRng14try_fill_bytes", scope: !581, file: !577, line: 232, type: !18, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!266 = distinct !DISubprogram(name: "fill_bytes<rand::rngs::thread::ThreadRng>", linkageName: "_RNvXCs53V80GKKPEw_9rand_coreNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtB2_3Rng10fill_bytesCsidoPH4Qgqxm_12polars_async", scope: !583, file: !582, line: 84, type: !14, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!267 = distinct !DILocation(line: 149, column: 13, scope: !263)
!268 = distinct !DILocation(line: 85, column: 20, scope: !266, inlinedAt: !267)
!269 = distinct !DILocation(line: 235, column: 43, scope: !265, inlinedAt: !268)
!270 = distinct !{!270, i1 false, !"_RNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB5_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytesCsidoPH4Qgqxm_12polars_async"}
!271 = distinct !{!271, !270, !"_RNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB5_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytesCsidoPH4Qgqxm_12polars_async: argument 0"}
!272 = distinct !DILexicalBlock(scope: !265, file: !577, line: 235, column: 9)
!273 = distinct !{!273, i1 false, !"_RNvXCs53V80GKKPEw_9rand_coreNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtB2_3Rng10fill_bytesCsidoPH4Qgqxm_12polars_async"}
!274 = distinct !{!274, !273, !"_RNvXCs53V80GKKPEw_9rand_coreNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtB2_3Rng10fill_bytesCsidoPH4Qgqxm_12polars_async: argument 0"}
!275 = distinct !DISubprogram(name: "index<u32, 64, rand::rngs::thread::ReseedingCore>", linkageName: "_RNvMs1_NtCs53V80GKKPEw_9rand_core5blockINtB5_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE5indexCsidoPH4Qgqxm_12polars_async", scope: !588, file: !586, line: 174, type: !18, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!276 = distinct !DISubprogram(name: "fill_bytes<u32, 64, rand::rngs::thread::ReseedingCore>", linkageName: "_RNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB5_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytesCsidoPH4Qgqxm_12polars_async", scope: !588, file: !586, line: 275, type: !18, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!277 = distinct !DILexicalBlock(scope: !276, file: !586, line: 276, column: 9)
!278 = distinct !DILocation(line: 236, column: 13, scope: !272, inlinedAt: !268)
!279 = distinct !DILocation(line: 277, column: 30, scope: !277, inlinedAt: !278)
!280 = distinct !{!280, i1 false, !"_RNvXs3_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB5_9ThreadRngNtCs53V80GKKPEw_9rand_core6TryRng14try_fill_bytes"}
!281 = distinct !{!281, !280, !"_RNvXs3_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB5_9ThreadRngNtCs53V80GKKPEw_9rand_core6TryRng14try_fill_bytes: argument 0"}
!282 = distinct !{!282, !270, !"_RNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB5_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytesCsidoPH4Qgqxm_12polars_async: argument 1"}
!283 = distinct !DISubprogram(name: "try_from", linkageName: "_RNvXsi_NtNtNtCscgRAwXFJnXP_4core7convert3num18ptr_try_from_implsjINtB9_7TryFrommE8try_from", scope: !594, file: !590, line: 252, type: !18, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!284 = distinct !DISubprogram(name: "try_into<u32, usize>", linkageName: "_RNvXs4_NtCscgRAwXFJnXP_4core7convertmINtB5_7TryIntojE8try_intoCsidoPH4Qgqxm_12polars_async", scope: !596, file: !595, line: 818, type: !18, scopeLine: 818, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!285 = distinct !DISubprogram(name: "into_usize", linkageName: "_RNvXNtNtCs53V80GKKPEw_9rand_core4word6sealedmNtB2_6Sealed10into_usize", scope: !600, file: !597, line: 40, type: !18, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!286 = distinct !DILocation(line: 175, column: 25, scope: !275, inlinedAt: !279)
!287 = distinct !DILocation(line: 41, column: 18, scope: !285, inlinedAt: !286)
!288 = distinct !DILocation(line: 819, column: 9, scope: !284, inlinedAt: !287)
!289 = distinct !DILexicalBlock(scope: !277, file: !586, line: 277, column: 9)
!290 = distinct !DISubprogram(name: "try_from", linkageName: "_RNvXs0_NtNtNtCscgRAwXFJnXP_4core7convert3num18ptr_try_from_implsmINtB9_7TryFromjE8try_from", scope: !601, file: !590, line: 294, type: !18, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!291 = distinct !DISubprogram(name: "try_into<usize, u32>", linkageName: "_RNvXs4_NtCscgRAwXFJnXP_4core7convertjINtB5_7TryIntomE8try_intoCsidoPH4Qgqxm_12polars_async", scope: !596, file: !595, line: 818, type: !18, scopeLine: 818, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!292 = distinct !DISubprogram(name: "from_usize", linkageName: "_RNvXNtNtCs53V80GKKPEw_9rand_core4word6sealedmNtB2_6Sealed10from_usize", scope: !600, file: !597, line: 36, type: !18, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!293 = distinct !DISubprogram(name: "set_index<u32, 64, rand::rngs::thread::ReseedingCore>", linkageName: "_RNvMs1_NtCs53V80GKKPEw_9rand_core5blockINtB5_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE9set_indexCsidoPH4Qgqxm_12polars_async", scope: !588, file: !586, line: 179, type: !18, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!294 = distinct !DILocation(line: 306, column: 14, scope: !289, inlinedAt: !278)
!295 = distinct !DILocation(line: 181, column: 27, scope: !293, inlinedAt: !294)
!296 = distinct !DILocation(line: 37, column: 17, scope: !292, inlinedAt: !295)
!297 = distinct !DILocation(line: 819, column: 9, scope: !291, inlinedAt: !296)
!298 = distinct !DISubprogram(name: "unwrap<u32, core::num::error::TryFromIntError>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsidoPH4Qgqxm_12polars_async", scope: !29, file: !26, line: 1227, type: !18, scopeLine: 1227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!299 = distinct !DILexicalBlock(scope: !298, file: !26, line: 1233, column: 13)
!300 = distinct !DILocation(line: 37, column: 28, scope: !292, inlinedAt: !295)
!301 = distinct !{!301, i1 false, !"_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate"}
!302 = distinct !{!302, !301, !"_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate: argument 0"}
!303 = distinct !{!303, !301, !"_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate: argument 1"}
!304 = distinct !DISubprogram(name: "get_block_pos", linkageName: "_RNvXs1_NtCsejN9i34LGCw_8chacha208variantsNtB5_6LegacyNtB5_7Variant13get_block_pos", scope: !608, file: !605, line: 69, type: !18, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!305 = distinct !DISubprogram(name: "get_block_pos<chacha20::R12, chacha20::variants::Legacy>", linkageName: "_RNvMs1_CsejN9i34LGCw_8chacha20INtB5_10ChaChaCoreNtB5_3R12NtNtB5_8variants6LegacyE13get_block_posCsidoPH4Qgqxm_12polars_async", scope: !610, file: !609, line: 279, type: !18, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!306 = distinct !DISubprogram(name: "generate", linkageName: "_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate", scope: !611, file: !577, line: 52, type: !18, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!307 = distinct !DILocation(line: 280, column: 27, scope: !289, inlinedAt: !278)
!308 = distinct !DILocation(line: 53, column: 23, scope: !306, inlinedAt: !307)
!309 = distinct !DILocation(line: 280, column: 9, scope: !305, inlinedAt: !308)
!310 = distinct !DILexicalBlock(scope: !289, file: !586, line: 284, column: 13)
!311 = distinct !DISubprogram(name: "index_mut<u8>", linkageName: "_RNvXs5_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE9index_mutCsidoPH4Qgqxm_12polars_async", scope: !614, file: !31, line: 579, type: !18, scopeLine: 579, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!312 = distinct !DISubprogram(name: "index_mut<u8, core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXs_NtNtCscgRAwXFJnXP_4core5slice5indexShINtNtNtB8_3ops5index8IndexMutINtNtBK_5range9RangeFromjEE9index_mutCsidoPH4Qgqxm_12polars_async", scope: !615, file: !31, line: 30, type: !18, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!313 = distinct !DILocation(line: 285, column: 34, scope: !310, inlinedAt: !278)
!314 = distinct !DILocation(line: 31, column: 15, scope: !312, inlinedAt: !313)
!315 = distinct !DISubprogram(name: "get_offset_len_mut_noubcheck<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index28get_offset_len_mut_noubcheckhECsidoPH4Qgqxm_12polars_async", scope: !33, file: !31, line: 94, type: !18, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!316 = distinct !DILexicalBlock(scope: !315, file: !31, line: 99, column: 5)
!317 = distinct !DILexicalBlock(scope: !311, file: !31, line: 585, column: 13)
!318 = distinct !DILocation(line: 586, column: 19, scope: !317, inlinedAt: !314)
!319 = distinct !{!319, i1 false, !"_RNvMNtCscgRAwXFJnXP_4core5sliceSh16chunks_exact_mutCsidoPH4Qgqxm_12polars_async"}
!320 = distinct !{!320, !319, !"_RNvMNtCscgRAwXFJnXP_4core5sliceSh16chunks_exact_mutCsidoPH4Qgqxm_12polars_async: argument 0"}
!321 = distinct !{!321, !319, !"_RNvMNtCscgRAwXFJnXP_4core5sliceSh16chunks_exact_mutCsidoPH4Qgqxm_12polars_async: argument 1"}
!322 = distinct !DISubprogram(name: "new<u8>", linkageName: "_RNvMs1x_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_14ChunksExactMuthE3newCsidoPH4Qgqxm_12polars_async", scope: !620, file: !618, line: 2028, type: !18, scopeLine: 2028, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!323 = distinct !DILexicalBlock(scope: !322, file: !618, line: 2029, column: 9)
!324 = distinct !DILexicalBlock(scope: !323, file: !618, line: 2030, column: 9)
!325 = distinct !DILexicalBlock(scope: !324, file: !618, line: 2032, column: 9)
!326 = distinct !DISubprogram(name: "chunks_exact_mut<u8>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSh16chunks_exact_mutCsidoPH4Qgqxm_12polars_async", scope: !622, file: !621, line: 1290, type: !14, scopeLine: 1290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!327 = distinct !DILocation(line: 285, column: 47, scope: !310, inlinedAt: !278)
!328 = distinct !DILocation(line: 1292, column: 9, scope: !326, inlinedAt: !327)
!329 = distinct !DILexicalBlock(scope: !310, file: !586, line: 285, column: 13)
!330 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u32>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckmECsidoPH4Qgqxm_12polars_async", scope: !33, file: !31, line: 82, type: !18, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!331 = distinct !DILexicalBlock(scope: !330, file: !31, line: 87, column: 5)
!332 = distinct !DISubprogram(name: "index<u32>", linkageName: "_RNvXs5_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSmE5indexCsidoPH4Qgqxm_12polars_async", scope: !614, file: !31, line: 567, type: !18, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!333 = distinct !DILexicalBlock(scope: !332, file: !31, line: 573, column: 13)
!334 = distinct !DISubprogram(name: "index<u32, core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSmINtNtNtB6_3ops5index5IndexINtNtBI_5range9RangeFromjEE5indexCsidoPH4Qgqxm_12polars_async", scope: !623, file: !31, line: 18, type: !18, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!335 = distinct !DISubprogram(name: "index<u32, core::ops::range::RangeFrom<usize>, 64>", linkageName: "_RNvXsd_NtCscgRAwXFJnXP_4core5arrayAmj40_INtNtNtB7_3ops5index5IndexINtNtBH_5range9RangeFromjEE5indexCsidoPH4Qgqxm_12polars_async", scope: !626, file: !624, line: 389, type: !18, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!336 = distinct !DILocation(line: 286, column: 39, scope: !329, inlinedAt: !278)
!337 = distinct !DILocation(line: 390, column: 9, scope: !335, inlinedAt: !336)
!338 = distinct !DILocation(line: 19, column: 15, scope: !334, inlinedAt: !337)
!339 = distinct !DILocation(line: 574, column: 15, scope: !333, inlinedAt: !338)
!340 = distinct !DISubprogram(name: "new<u32>", linkageName: "_RNvMs4_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_4ItermE3newCsidoPH4Qgqxm_12polars_async", scope: !627, file: !618, line: 96, type: !18, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!341 = distinct !DILexicalBlock(scope: !340, file: !618, line: 97, column: 9)
!342 = distinct !DILexicalBlock(scope: !341, file: !618, line: 98, column: 9)
!343 = distinct !DILexicalBlock(scope: !342, file: !618, line: 101, column: 13)
!344 = distinct !DISubprogram(name: "iter<u32>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSm4iterCsidoPH4Qgqxm_12polars_async", scope: !622, file: !621, line: 1040, type: !18, scopeLine: 1040, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!345 = distinct !DILocation(line: 286, column: 49, scope: !329, inlinedAt: !278)
!346 = distinct !DILocation(line: 1041, column: 9, scope: !344, inlinedAt: !345)
!347 = distinct !{!347, i1 false, !"_RINvYQINtNtNtCscgRAwXFJnXP_4core5slice4iter14ChunksExactMuthENtNtNtNtBb_4iter6traits8iterator8Iterator3zipQINtB7_4ItermEECsidoPH4Qgqxm_12polars_async"}
!348 = distinct !{!348, !347, !"_RINvYQINtNtNtCscgRAwXFJnXP_4core5slice4iter14ChunksExactMuthENtNtNtNtBb_4iter6traits8iterator8Iterator3zipQINtB7_4ItermEECsidoPH4Qgqxm_12polars_async: argument 0"}
!349 = distinct !{!349, i1 false, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E3newCsidoPH4Qgqxm_12polars_async"}
!350 = distinct !{!350, !349, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E3newCsidoPH4Qgqxm_12polars_async: argument 0"}
!351 = distinct !{!351, !347, !"_RINvYQINtNtNtCscgRAwXFJnXP_4core5slice4iter14ChunksExactMuthENtNtNtNtBb_4iter6traits8iterator8Iterator3zipQINtB7_4ItermEECsidoPH4Qgqxm_12polars_async: argument 2"}
!352 = distinct !{!352, !347, !"_RINvYQINtNtNtCscgRAwXFJnXP_4core5slice4iter14ChunksExactMuthENtNtNtNtBb_4iter6traits8iterator8Iterator3zipQINtB7_4ItermEECsidoPH4Qgqxm_12polars_async: argument 1"}
!353 = distinct !{!353, !349, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E3newCsidoPH4Qgqxm_12polars_async: argument 2"}
!354 = distinct !{!354, !349, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E3newCsidoPH4Qgqxm_12polars_async: argument 1"}
!355 = distinct !DISubprogram(name: "new<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>>", linkageName: "_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E3newCsidoPH4Qgqxm_12polars_async", scope: !634, file: !630, line: 154, type: !18, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!356 = distinct !DISubprogram(name: "new<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>>", linkageName: "_RNvMNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB2_3ZipQINtNtNtB8_5slice4iter14ChunksExactMuthEQINtBX_4ItermEE3newCsidoPH4Qgqxm_12polars_async", scope: !635, file: !630, line: 23, type: !18, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!357 = distinct !DISubprogram(name: "zip<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>>", linkageName: "_RINvYQINtNtNtCscgRAwXFJnXP_4core5slice4iter14ChunksExactMuthENtNtNtNtBb_4iter6traits8iterator8Iterator3zipQINtB7_4ItermEECsidoPH4Qgqxm_12polars_async", scope: !639, file: !636, line: 626, type: !18, scopeLine: 626, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!358 = distinct !DILexicalBlock(scope: !329, file: !586, line: 286, column: 13)
!359 = distinct !DILocation(line: 288, column: 42, scope: !358, inlinedAt: !278)
!360 = distinct !DILocation(line: 631, column: 9, scope: !357, inlinedAt: !359)
!361 = distinct !DILocation(line: 24, column: 9, scope: !356, inlinedAt: !360)
!362 = distinct !DILexicalBlock(scope: !358, file: !586, line: 288, column: 13)
!363 = distinct !{!363, i1 false, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsidoPH4Qgqxm_12polars_async"}
!364 = distinct !{!364, !363, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsidoPH4Qgqxm_12polars_async: argument 1"}
!365 = distinct !{!365, !363, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsidoPH4Qgqxm_12polars_async: argument 0"}
!366 = distinct !DISubprogram(name: "size_hint<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>>", linkageName: "_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsidoPH4Qgqxm_12polars_async", scope: !634, file: !630, line: 220, type: !18, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!367 = distinct !DISubprogram(name: "size_hint<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>>", linkageName: "_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipQINtNtNtBa_5slice4iter14ChunksExactMuthEQINtBZ_4ItermEENtNtNtB8_6traits8iterator8Iterator9size_hintCsidoPH4Qgqxm_12polars_async", scope: !641, file: !630, line: 89, type: !18, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!368 = distinct !DISubprogram(name: "len<core::iter::adapters::zip::Zip<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>>>", linkageName: "_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtBU_4ItermEENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenCsidoPH4Qgqxm_12polars_async", scope: !644, file: !642, line: 116, type: !18, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!369 = distinct !DILocation(line: 289, column: 37, scope: !362, inlinedAt: !278)
!370 = distinct !DILocation(line: 117, column: 35, scope: !368, inlinedAt: !369)
!371 = distinct !DILocation(line: 90, column: 9, scope: !367, inlinedAt: !370)
!372 = distinct !DILexicalBlock(scope: !366, file: !630, line: 221, column: 9)
!373 = distinct !DILexicalBlock(scope: !372, file: !630, line: 222, column: 9)
!374 = distinct !DILexicalBlock(scope: !373, file: !630, line: 224, column: 9)
!375 = distinct !DISubprogram(name: "min<usize>", linkageName: "_RNvYjNtNtCscgRAwXFJnXP_4core3cmp3Ord3minCsidoPH4Qgqxm_12polars_async", scope: !649, file: !647, line: 1073, type: !18, scopeLine: 1073, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!376 = distinct !DISubprogram(name: "min<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3cmp3minjECsidoPH4Qgqxm_12polars_async", scope: !648, file: !647, line: 1575, type: !18, scopeLine: 1575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!377 = distinct !DILexicalBlock(scope: !374, file: !630, line: 227, column: 13)
!378 = distinct !DILocation(line: 227, column: 40, scope: !377, inlinedAt: !371)
!379 = distinct !DILocation(line: 1576, column: 8, scope: !376, inlinedAt: !378)
!380 = distinct !DILocation(line: 224, column: 21, scope: !373, inlinedAt: !371)
!381 = distinct !DILocation(line: 1576, column: 8, scope: !376, inlinedAt: !380)
!382 = distinct !DILexicalBlock(scope: !368, file: !642, line: 117, column: 9)
!383 = distinct !DISubprogram(name: "eq<usize>", linkageName: "_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionjENtNtB7_3cmp9PartialEq2eqCsidoPH4Qgqxm_12polars_async", scope: !650, file: !21, line: 2439, type: !18, scopeLine: 2439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!384 = distinct !DILexicalBlock(scope: !382, file: !27, line: 45, column: 13)
!385 = distinct !DILocation(line: 46, column: 21, scope: !384, inlinedAt: !369)
!386 = distinct !DILexicalBlock(scope: !384, file: !27, line: 47, column: 21)
!387 = distinct !DISubprogram(name: "fold<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>, (), core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(&mut [u8], &u32), rand_core::block::{impl#5}::fill_bytes::{closure_env#0}<u32, 64, rand::rngs::thread::ReseedingCore>>>", linkageName: "_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1Q_8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB38_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECsidoPH4Qgqxm_12polars_async", scope: !641, file: !630, line: 99, type: !18, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!388 = distinct !DISubprogram(name: "for_each<core::iter::adapters::zip::Zip<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>>, rand_core::block::{impl#5}::fill_bytes::{closure_env#0}<u32, 64, rand::rngs::thread::ReseedingCore>>", linkageName: "_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtBV_4ItermEENtNtNtBa_6traits8iterator8Iterator8for_eachNCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB2z_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0ECsidoPH4Qgqxm_12polars_async", scope: !639, file: !636, line: 877, type: !18, scopeLine: 877, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!389 = distinct !DILexicalBlock(scope: !362, file: !586, line: 289, column: 13)
!390 = distinct !DILocation(line: 290, column: 20, scope: !389, inlinedAt: !278)
!391 = distinct !DILocation(line: 887, column: 14, scope: !388, inlinedAt: !390)
!392 = distinct !{!392, i1 false, !"_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3r_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECsidoPH4Qgqxm_12polars_async"}
!393 = distinct !{!393, !392, !"_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3r_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECsidoPH4Qgqxm_12polars_async: argument 0"}
!394 = distinct !{!394, i1 false, !"_RINvXsj_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEENtB6_8SpecFold9spec_folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3o_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECsidoPH4Qgqxm_12polars_async"}
!395 = distinct !{!395, !394, !"_RINvXsj_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEENtB6_8SpecFold9spec_folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3o_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECsidoPH4Qgqxm_12polars_async: argument 0"}
!396 = distinct !DISubprogram(name: "fold<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>, (), core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(&mut [u8], &u32), rand_core::block::{impl#5}::fill_bytes::{closure_env#0}<u32, 64, rand::rngs::thread::ReseedingCore>>>", linkageName: "_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3r_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECsidoPH4Qgqxm_12polars_async", scope: !634, file: !630, line: 244, type: !18, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!397 = distinct !DILocation(line: 103, column: 9, scope: !387, inlinedAt: !391)
!398 = distinct !DISubprogram(name: "spec_fold<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>, (), core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(&mut [u8], &u32), rand_core::block::{impl#5}::fill_bytes::{closure_env#0}<u32, 64, rand::rngs::thread::ReseedingCore>>>", linkageName: "_RINvXsj_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEENtB6_8SpecFold9spec_folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3o_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECsidoPH4Qgqxm_12polars_async", scope: !655, file: !630, line: 660, type: !18, scopeLine: 660, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!399 = distinct !DILexicalBlock(scope: !398, file: !630, line: 664, column: 9)
!400 = distinct !DILocation(line: 248, column: 9, scope: !396, inlinedAt: !397)
!401 = distinct !{!401, i1 false, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsidoPH4Qgqxm_12polars_async"}
!402 = distinct !{!402, !401, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsidoPH4Qgqxm_12polars_async: argument 1"}
!403 = distinct !{!403, !401, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsidoPH4Qgqxm_12polars_async: argument 0"}
!404 = distinct !DILexicalBlock(scope: !399, file: !630, line: 666, column: 82)
!405 = distinct !DILocation(line: 666, column: 54, scope: !404, inlinedAt: !400)
!406 = distinct !DILocation(line: 227, column: 40, scope: !377, inlinedAt: !405)
!407 = distinct !DILocation(line: 1576, column: 8, scope: !376, inlinedAt: !406)
!408 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !659, file: !647, line: 1917, type: !18, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!409 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCsidoPH4Qgqxm_12polars_async", scope: !662, file: !660, line: 780, type: !18, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!410 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsidoPH4Qgqxm_12polars_async", scope: !663, file: !660, line: 865, type: !18, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!411 = distinct !DILexicalBlock(scope: !399, file: !630, line: 666, column: 13)
!412 = distinct !DILexicalBlock(scope: !411, file: !630, line: 673, column: 13)
!413 = distinct !DILocation(line: 673, column: 22, scope: !664, inlinedAt: !400)
!414 = distinct !DILocation(line: 866, column: 14, scope: !410, inlinedAt: !413)
!415 = distinct !DILocation(line: 781, column: 12, scope: !409, inlinedAt: !414)
!416 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !666, file: !665, line: 886, type: !18, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!417 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !667, file: !660, line: 212, type: !18, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!418 = distinct !DILexicalBlock(scope: !409, file: !660, line: 782, column: 13)
!419 = distinct !DILocation(line: 784, column: 35, scope: !418, inlinedAt: !414)
!420 = distinct !DILocation(line: 214, column: 28, scope: !417, inlinedAt: !419)
!421 = distinct !{!421, i1 false, !"_RNvXs1y_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsidoPH4Qgqxm_12polars_async"}
!422 = distinct !{!422, !421, !"_RNvXs1y_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsidoPH4Qgqxm_12polars_async: argument 0"}
!423 = distinct !DISubprogram(name: "next<u8>", linkageName: "_RNvXs1y_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsidoPH4Qgqxm_12polars_async", scope: !669, file: !618, line: 2051, type: !18, scopeLine: 2051, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!424 = distinct !DISubprogram(name: "next<core::slice::iter::ChunksExactMut<u8>>", linkageName: "_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator4nextCsidoPH4Qgqxm_12polars_async", scope: !670, file: !636, line: 4265, type: !14, scopeLine: 4265, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!425 = distinct !DILocation(line: 677, column: 38, scope: !412, inlinedAt: !400)
!426 = distinct !DILocation(line: 4266, column: 18, scope: !424, inlinedAt: !425)
!427 = distinct !DISubprogram(name: "split_at_mut_checked<u8>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSh20split_at_mut_checkedCsidoPH4Qgqxm_12polars_async", scope: !622, file: !621, line: 2192, type: !18, scopeLine: 2192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!428 = distinct !DILocation(line: 2053, column: 33, scope: !423, inlinedAt: !426)
!429 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOh3addCsidoPH4Qgqxm_12polars_async", scope: !17, file: !15, line: 927, type: !18, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!430 = distinct !DISubprogram(name: "split_at_mut_unchecked<u8>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSh22split_at_mut_uncheckedCsidoPH4Qgqxm_12polars_async", scope: !622, file: !621, line: 2092, type: !14, scopeLine: 2092, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!431 = distinct !DILexicalBlock(scope: !430, file: !621, line: 2093, column: 9)
!432 = distinct !DILexicalBlock(scope: !431, file: !621, line: 2094, column: 9)
!433 = distinct !DILocation(line: 2196, column: 32, scope: !427, inlinedAt: !428)
!434 = distinct !DILocation(line: 2109, column: 40, scope: !432, inlinedAt: !433)
!435 = distinct !DISubprogram(name: "{closure#0}<u8>", linkageName: "_RNCNvXs1y_NtNtCscgRAwXFJnXP_4core5slice4iterINtB8_14ChunksExactMuthENtNtNtNtBc_4iter6traits8iterator8Iterator4next0CsidoPH4Qgqxm_12polars_async", scope: !671, file: !618, line: 2053, type: !18, scopeLine: 2053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!436 = distinct !DILexicalBlock(scope: !435, file: !618, line: 2053, column: 96)
!437 = distinct !DISubprogram(name: "and_then<(&mut [u8], &mut [u8]), &mut [u8], core::slice::iter::{impl#98}::next::{closure_env#0}<u8>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionTQShBJ_EE8and_thenBJ_NCNvXs1y_NtNtB5_5slice4iterINtB1c_14ChunksExactMuthENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsidoPH4Qgqxm_12polars_async", scope: !23, file: !21, line: 1541, type: !18, scopeLine: 1541, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!438 = distinct !DILexicalBlock(scope: !437, file: !21, line: 1546, column: 13)
!439 = distinct !DILocation(line: 2053, column: 71, scope: !423, inlinedAt: !426)
!440 = distinct !DILocation(line: 1546, column: 24, scope: !438, inlinedAt: !439)
!441 = distinct !{!441, i1 false, !"_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsidoPH4Qgqxm_12polars_async"}
!442 = distinct !{!442, !441, !"_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsidoPH4Qgqxm_12polars_async: argument 0"}
!443 = distinct !DISubprogram(name: "next<u32>", linkageName: "_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsidoPH4Qgqxm_12polars_async", scope: !674, file: !673, line: 157, type: !18, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!444 = distinct !DISubprogram(name: "next<core::slice::iter::Iter<u32>>", linkageName: "_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter4ItermENtB5_8Iterator4nextCsidoPH4Qgqxm_12polars_async", scope: !670, file: !636, line: 4265, type: !14, scopeLine: 4265, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!445 = distinct !DILocation(line: 677, column: 72, scope: !412, inlinedAt: !400)
!446 = distinct !DILocation(line: 4266, column: 18, scope: !444, inlinedAt: !445)
!447 = distinct !DILexicalBlock(scope: !443, file: !673, line: 161, column: 17)
!448 = distinct !DISubprogram(name: "eq<u32>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullmENtNtB9_3cmp9PartialEq2eqCsidoPH4Qgqxm_12polars_async", scope: !677, file: !675, line: 1716, type: !18, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!449 = distinct !DILexicalBlock(scope: !447, file: !673, line: 162, column: 17)
!450 = distinct !DILocation(line: 180, column: 28, scope: !449, inlinedAt: !446)
!451 = distinct !DISubprogram(name: "add<u32>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullmE3addCsidoPH4Qgqxm_12polars_async", scope: !678, file: !675, line: 651, type: !18, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!452 = distinct !DILocation(line: 185, column: 40, scope: !449, inlinedAt: !446)
!453 = distinct !{!453, i1 false, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB1u_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0CsidoPH4Qgqxm_12polars_async"}
!454 = distinct !{!454, !453, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB1u_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0CsidoPH4Qgqxm_12polars_async: argument 0"}
!455 = distinct !{!455, i1 false, !"_RNCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB7_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0CsidoPH4Qgqxm_12polars_async"}
!456 = distinct !{!456, !455, !"_RNCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB7_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0CsidoPH4Qgqxm_12polars_async: argument 0"}
!457 = distinct !DISubprogram(name: "{closure#0}<u32, 64, rand::rngs::thread::ReseedingCore>", linkageName: "_RNCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB7_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0CsidoPH4Qgqxm_12polars_async", scope: !681, file: !586, line: 290, type: !14, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!458 = distinct !DILexicalBlock(scope: !457, file: !586, line: 290, column: 44)
!459 = distinct !DISubprogram(name: "{closure#0}<(&mut [u8], &u32), rand_core::block::{impl#5}::fill_bytes::{closure_env#0}<u32, 64, rand::rngs::thread::ReseedingCore>>", linkageName: "_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB1u_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0CsidoPH4Qgqxm_12polars_async", scope: !683, file: !636, line: 884, type: !14, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!460 = distinct !DILexicalBlock(scope: !412, file: !630, line: 674, column: 17)
!461 = distinct !DILocation(line: 678, column: 25, scope: !460, inlinedAt: !400)
!462 = distinct !DILocation(line: 884, column: 29, scope: !459, inlinedAt: !461)
!463 = distinct !DISubprogram(name: "copy_from_slice<u8>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSh15copy_from_sliceCsidoPH4Qgqxm_12polars_async", scope: !622, file: !621, line: 4320, type: !18, scopeLine: 4320, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!464 = distinct !DILocation(line: 290, column: 50, scope: !458, inlinedAt: !462)
!465 = distinct !DISubprogram(name: "next<u32>", linkageName: "_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsidoPH4Qgqxm_12polars_async", scope: !674, file: !673, line: 157, type: !18, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!466 = distinct !DILexicalBlock(scope: !389, file: !586, line: 294, column: 43)
!467 = distinct !DILocation(line: 294, column: 36, scope: !466, inlinedAt: !278)
!468 = distinct !DILexicalBlock(scope: !465, file: !673, line: 161, column: 17)
!469 = distinct !DISubprogram(name: "eq<u32>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullmENtNtB9_3cmp9PartialEq2eqCsidoPH4Qgqxm_12polars_async", scope: !677, file: !675, line: 1716, type: !18, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!470 = distinct !DILexicalBlock(scope: !468, file: !673, line: 162, column: 17)
!471 = distinct !DILocation(line: 180, column: 28, scope: !470, inlinedAt: !467)
!472 = distinct !DISubprogram(name: "add<u32>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullmE3addCsidoPH4Qgqxm_12polars_async", scope: !678, file: !675, line: 651, type: !18, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!473 = distinct !DILocation(line: 185, column: 40, scope: !470, inlinedAt: !467)
!474 = distinct !DILexicalBlock(scope: !466, file: !586, line: 296, column: 17)
!475 = distinct !DILexicalBlock(scope: !474, file: !586, line: 297, column: 17)
!476 = distinct !DISubprogram(name: "checked_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj11checked_sub", scope: !666, file: !665, line: 971, type: !18, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!477 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE5indexCsidoPH4Qgqxm_12polars_async", scope: !686, file: !31, line: 435, type: !18, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!478 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range7RangeTojEINtB5_10SliceIndexShE5indexCsidoPH4Qgqxm_12polars_async", scope: !687, file: !31, line: 528, type: !18, scopeLine: 528, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!479 = distinct !DISubprogram(name: "index<u8, core::ops::range::RangeTo<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexShINtNtNtB6_3ops5index5IndexINtNtBI_5range7RangeTojEE5indexCsidoPH4Qgqxm_12polars_async", scope: !623, file: !31, line: 18, type: !18, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!480 = distinct !DILocation(line: 299, column: 73, scope: !475, inlinedAt: !278)
!481 = distinct !DILocation(line: 19, column: 15, scope: !688, inlinedAt: !480)
!482 = distinct !DILocation(line: 529, column: 23, scope: !478, inlinedAt: !481)
!483 = distinct !DILocation(line: 437, column: 32, scope: !477, inlinedAt: !482)
!484 = distinct !DISubprogram(name: "copy_from_slice<u8>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSh15copy_from_sliceCsidoPH4Qgqxm_12polars_async", scope: !622, file: !621, line: 4320, type: !18, scopeLine: 4320, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!485 = distinct !DILocation(line: 299, column: 30, scope: !475, inlinedAt: !278)
!486 = distinct !DISubprogram(name: "from_seed", linkageName: "_RNvXNtNtCsci2cbTAlhZn_4rand4rngs5smallNtB2_8SmallRngNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed", scope: !691, file: !689, line: 86, type: !18, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!487 = distinct !DILocation(line: 150, column: 9, scope: !263)
!488 = distinct !{!488, i1 false, !"_RNvXNtNtCsci2cbTAlhZn_4rand4rngs5smallNtB2_8SmallRngNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed"}
!489 = distinct !{!489, !488, !"_RNvXNtNtCsci2cbTAlhZn_4rand4rngs5smallNtB2_8SmallRngNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed: argument 1"}
!490 = distinct !{!490, !488, !"_RNvXNtNtCsci2cbTAlhZn_4rand4rngs5smallNtB2_8SmallRngNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed: argument 0"}
!491 = distinct !{!491, i1 false, !"_RNvXNtNtCsci2cbTAlhZn_4rand4rngs18xoshiro256plusplusNtB2_18Xoshiro256PlusPlusNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed"}
!492 = distinct !{!492, !491, !"_RNvXNtNtCsci2cbTAlhZn_4rand4rngs18xoshiro256plusplusNtB2_18Xoshiro256PlusPlusNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed: argument 1"}
!493 = distinct !{!493, !491, !"_RNvXNtNtCsci2cbTAlhZn_4rand4rngs18xoshiro256plusplusNtB2_18Xoshiro256PlusPlusNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed: argument 0"}
!494 = distinct !{!494, i1 false, !"_RINvNtCs53V80GKKPEw_9rand_core5utils10read_wordsyKj4_ECsidoPH4Qgqxm_12polars_async"}
!495 = distinct !{!495, !494, !"_RINvNtCs53V80GKKPEw_9rand_core5utils10read_wordsyKj4_ECsidoPH4Qgqxm_12polars_async: argument 1"}
!496 = distinct !{!496, !494, !"_RINvNtCs53V80GKKPEw_9rand_core5utils10read_wordsyKj4_ECsidoPH4Qgqxm_12polars_async: argument 0"}
!497 = distinct !DISubprogram(name: "read_words<u64, 4>", linkageName: "_RINvNtCs53V80GKKPEw_9rand_core5utils10read_wordsyKj4_ECsidoPH4Qgqxm_12polars_async", scope: !694, file: !693, line: 141, type: !18, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!498 = distinct !DISubprogram(name: "from_seed", linkageName: "_RNvXNtNtCsci2cbTAlhZn_4rand4rngs18xoshiro256plusplusNtB2_18Xoshiro256PlusPlusNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed", scope: !697, file: !695, line: 34, type: !18, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!499 = distinct !DILexicalBlock(scope: !486, file: !689, line: 90, column: 9)
!500 = distinct !DILocation(line: 91, column: 18, scope: !499, inlinedAt: !487)
!501 = distinct !DILocation(line: 35, column: 21, scope: !498, inlinedAt: !500)
!502 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPh3addCsidoPH4Qgqxm_12polars_async", scope: !700, file: !698, line: 829, type: !18, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!503 = distinct !DISubprogram(name: "split_at_unchecked<u8>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSh18split_at_uncheckedCsidoPH4Qgqxm_12polars_async", scope: !622, file: !621, line: 2038, type: !14, scopeLine: 2038, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!504 = distinct !DILexicalBlock(scope: !503, file: !621, line: 2043, column: 9)
!505 = distinct !DILexicalBlock(scope: !504, file: !621, line: 2044, column: 9)
!506 = distinct !DISubprogram(name: "new<u8>", linkageName: "_RNvMs1o_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthE3newCsidoPH4Qgqxm_12polars_async", scope: !701, file: !618, line: 1851, type: !18, scopeLine: 1851, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!507 = distinct !DILexicalBlock(scope: !506, file: !618, line: 1852, column: 9)
!508 = distinct !DILexicalBlock(scope: !507, file: !618, line: 1853, column: 9)
!509 = distinct !DISubprogram(name: "chunks_exact<u8>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSh12chunks_exactCsidoPH4Qgqxm_12polars_async", scope: !622, file: !621, line: 1242, type: !14, scopeLine: 1242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!510 = distinct !DILexicalBlock(scope: !497, file: !693, line: 143, column: 5)
!511 = distinct !DILocation(line: 144, column: 22, scope: !510, inlinedAt: !501)
!512 = distinct !DILocation(line: 1244, column: 9, scope: !509, inlinedAt: !511)
!513 = distinct !DILocation(line: 1855, column: 41, scope: !508, inlinedAt: !512)
!514 = distinct !DILocation(line: 2053, column: 64, scope: !505, inlinedAt: !513)
!515 = distinct !DISubprogram(name: "add<u64>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOy3addCsidoPH4Qgqxm_12polars_async", scope: !17, file: !15, line: 927, type: !18, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!516 = distinct !DISubprogram(name: "new<u64>", linkageName: "_RNvMsa_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_7IterMutyE3newCsidoPH4Qgqxm_12polars_async", scope: !702, file: !618, line: 221, type: !18, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!517 = distinct !DILexicalBlock(scope: !516, file: !618, line: 222, column: 9)
!518 = distinct !DILexicalBlock(scope: !517, file: !618, line: 223, column: 9)
!519 = distinct !DISubprogram(name: "iter_mut<u64>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSy8iter_mutCsidoPH4Qgqxm_12polars_async", scope: !622, file: !621, line: 1060, type: !18, scopeLine: 1060, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!520 = distinct !DILexicalBlock(scope: !510, file: !693, line: 144, column: 5)
!521 = distinct !DILocation(line: 145, column: 29, scope: !520, inlinedAt: !501)
!522 = distinct !DILocation(line: 1061, column: 9, scope: !519, inlinedAt: !521)
!523 = distinct !DILocation(line: 242, column: 82, scope: !518, inlinedAt: !522)
!524 = distinct !{!524, i1 false, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7IterMutyENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_11ChunksExacthEECsidoPH4Qgqxm_12polars_async"}
!525 = distinct !{!525, !524, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7IterMutyENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_11ChunksExacthEECsidoPH4Qgqxm_12polars_async: argument 1"}
!526 = distinct !{!526, !524, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7IterMutyENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_11ChunksExacthEECsidoPH4Qgqxm_12polars_async: argument 0"}
!527 = distinct !DISubprogram(name: "zip<core::slice::iter::IterMut<u64>, core::slice::iter::ChunksExact<u8>>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7IterMutyENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_11ChunksExacthEECsidoPH4Qgqxm_12polars_async", scope: !639, file: !636, line: 626, type: !18, scopeLine: 626, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!528 = distinct !DILocation(line: 145, column: 40, scope: !520, inlinedAt: !501)
!529 = distinct !{!529, i1 false, !"_RNvXNtNtNtCscgRAwXFJnXP_4core4iter6traits7collectINtNtNtB8_5slice4iter11ChunksExacthENtB2_12IntoIterator9into_iterCsidoPH4Qgqxm_12polars_async"}
!530 = distinct !{!530, !529, !"_RNvXNtNtNtCscgRAwXFJnXP_4core4iter6traits7collectINtNtNtB8_5slice4iter11ChunksExacthENtB2_12IntoIterator9into_iterCsidoPH4Qgqxm_12polars_async: argument 1"}
!531 = distinct !{!531, !529, !"_RNvXNtNtNtCscgRAwXFJnXP_4core4iter6traits7collectINtNtNtB8_5slice4iter11ChunksExacthENtB2_12IntoIterator9into_iterCsidoPH4Qgqxm_12polars_async: argument 0"}
!532 = distinct !DISubprogram(name: "into_iter<core::slice::iter::ChunksExact<u8>>", linkageName: "_RNvXNtNtNtCscgRAwXFJnXP_4core4iter6traits7collectINtNtNtB8_5slice4iter11ChunksExacthENtB2_12IntoIterator9into_iterCsidoPH4Qgqxm_12polars_async", scope: !708, file: !706, line: 322, type: !18, scopeLine: 322, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!533 = distinct !DILocation(line: 631, column: 30, scope: !527, inlinedAt: !528)
!534 = distinct !{!534, i1 false, !"_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutyEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCsidoPH4Qgqxm_12polars_async"}
!535 = distinct !{!535, !534, !"_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutyEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCsidoPH4Qgqxm_12polars_async: argument 1"}
!536 = distinct !{!536, !534, !"_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutyEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCsidoPH4Qgqxm_12polars_async: argument 0"}
!537 = distinct !DISubprogram(name: "new<core::slice::iter::IterMut<u64>, core::slice::iter::ChunksExact<u8>>", linkageName: "_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutyEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCsidoPH4Qgqxm_12polars_async", scope: !711, file: !630, line: 299, type: !18, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!538 = distinct !DISubprogram(name: "new<core::slice::iter::IterMut<u64>, core::slice::iter::ChunksExact<u8>>", linkageName: "_RNvMNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB2_3ZipINtNtNtB8_5slice4iter7IterMutyEINtBW_11ChunksExacthEE3newCsidoPH4Qgqxm_12polars_async", scope: !635, file: !630, line: 23, type: !18, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!539 = distinct !DILocation(line: 631, column: 9, scope: !527, inlinedAt: !528)
!540 = distinct !DILocation(line: 24, column: 9, scope: !538, inlinedAt: !539)
!541 = distinct !DISubprogram(name: "min<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3cmp3minjECsidoPH4Qgqxm_12polars_async", scope: !648, file: !647, line: 1575, type: !18, scopeLine: 1575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!542 = distinct !DILocation(line: 300, column: 19, scope: !537, inlinedAt: !540)
!543 = distinct !DILocation(line: 1576, column: 8, scope: !541, inlinedAt: !542)
!544 = distinct !DISubprogram(name: "next<core::slice::iter::IterMut<u64>, core::slice::iter::ChunksExact<u8>>", linkageName: "_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutyEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCsidoPH4Qgqxm_12polars_async", scope: !711, file: !630, line: 305, type: !18, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!545 = distinct !DISubprogram(name: "next<core::slice::iter::IterMut<u64>, core::slice::iter::ChunksExact<u8>>", linkageName: "_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter7IterMutyEINtBY_11ChunksExacthEENtNtNtB8_6traits8iterator8Iterator4nextCsidoPH4Qgqxm_12polars_async", scope: !641, file: !630, line: 84, type: !18, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!546 = distinct !DILexicalBlock(scope: !520, file: !693, line: 145, column: 5)
!547 = distinct !DILocation(line: 145, column: 25, scope: !713, inlinedAt: !501)
!548 = distinct !DILocation(line: 85, column: 9, scope: !545, inlinedAt: !547)
!549 = distinct !DILexicalBlock(scope: !544, file: !630, line: 307, column: 13)
!550 = distinct !{!550, i1 false, !"_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutyEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCsidoPH4Qgqxm_12polars_async"}
!551 = distinct !{!551, !550, !"_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutyEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCsidoPH4Qgqxm_12polars_async: argument 1"}
!552 = distinct !{!552, !550, !"_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutyEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCsidoPH4Qgqxm_12polars_async: argument 0"}
!553 = distinct !DISubprogram(name: "add<u64>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOy3addCsidoPH4Qgqxm_12polars_async", scope: !17, file: !15, line: 927, type: !18, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!554 = distinct !DISubprogram(name: "__iterator_get_unchecked<u64>", linkageName: "_RNvXs2R_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_7IterMutyENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsidoPH4Qgqxm_12polars_async", scope: !716, file: !673, line: 418, type: !14, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!555 = distinct !DILocation(line: 313, column: 30, scope: !549, inlinedAt: !548)
!556 = distinct !DILocation(line: 429, column: 60, scope: !554, inlinedAt: !555)
!557 = distinct !DILexicalBlock(scope: !546, file: !693, line: 145, column: 5)
!558 = distinct !DISubprogram(name: "copy_from_slice<u8>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSh15copy_from_sliceCsidoPH4Qgqxm_12polars_async", scope: !622, file: !621, line: 4320, type: !18, scopeLine: 4320, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!559 = distinct !DILexicalBlock(scope: !557, file: !693, line: 146, column: 9)
!560 = distinct !DILocation(line: 147, column: 22, scope: !559, inlinedAt: !501)
!561 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvXNtNtCsci2cbTAlhZn_4rand4rngs18xoshiro256plusplusNtB4_18Xoshiro256PlusPlusNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed0CsidoPH4Qgqxm_12polars_async", scope: !721, file: !695, line: 38, type: !14, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!562 = distinct !DILexicalBlock(scope: !561, file: !695, line: 38, column: 34)
!563 = distinct !DISubprogram(name: "all<u64, rand::rngs::xoshiro256plusplus::{impl#0}::from_seed::{closure_env#0}>", linkageName: "_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvXNtNtCsci2cbTAlhZn_4rand4rngs18xoshiro256plusplusNtB1G_18Xoshiro256PlusPlusNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed0ECsidoPH4Qgqxm_12polars_async", scope: !674, file: !673, line: 309, type: !18, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!564 = distinct !DILexicalBlock(scope: !563, file: !673, line: 314, column: 49)
!565 = distinct !DILexicalBlock(scope: !498, file: !695, line: 35, column: 9)
!566 = distinct !DILocation(line: 38, column: 25, scope: !565, inlinedAt: !500)
!567 = distinct !DILocation(line: 315, column: 25, scope: !564, inlinedAt: !566)
!568 = !DIFile(filename: "src/seedable_rng.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rand_core-0.10.1", checksumkind: CSK_MD5, checksum: "eb03674c5280abd989777b5facaedc75")
!569 = !DINamespace(name: "rand_core", scope: null)
!570 = !DINamespace(name: "seedable_rng", scope: !569)
!571 = !DINamespace(name: "SeedableRng", scope: !570)
!572 = !{!261}
!573 = !{!262}
!574 = !DIFile(filename: "library/core/src/cell.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "3b26dc07b7a3365bdb6c33c2b1762988")
!575 = !DINamespace(name: "cell", scope: !11)
!576 = !DINamespace(name: "UnsafeCell", scope: !575)
!577 = !DIFile(filename: "src/rngs/thread.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rand-0.10.1", checksumkind: CSK_MD5, checksum: "df6773183ceecd8f30e63b8ea4079038")
!578 = !DINamespace(name: "rand", scope: null)
!579 = !DINamespace(name: "rngs", scope: !578)
!580 = !DINamespace(name: "thread", scope: !579)
!581 = !DINamespace(name: "{impl#5}", scope: !580)
!582 = !DIFile(filename: "src/lib.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rand_core-0.10.1", checksumkind: CSK_MD5, checksum: "975a4bbb89e6beb781c3af1d0e423338")
!583 = !DINamespace(name: "{impl#0}", scope: !569)
!584 = !{!271}
!585 = !{!274}
!586 = !DIFile(filename: "src/block.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rand_core-0.10.1", checksumkind: CSK_MD5, checksum: "05a8db703173f32a64ac37e21576a74a")
!587 = !DINamespace(name: "block", scope: !569)
!588 = !DINamespace(name: "BlockRng", scope: !587)
!589 = !{!282, !281, !274}
!590 = !DIFile(filename: "library/core/src/convert/num.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "30106f13a83326e9aeb1563ee1913ab6")
!591 = !DINamespace(name: "convert", scope: !11)
!592 = !DINamespace(name: "num", scope: !591)
!593 = !DINamespace(name: "ptr_try_from_impls", scope: !592)
!594 = !DINamespace(name: "{impl#20}", scope: !593)
!595 = !DIFile(filename: "library/core/src/convert/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "895b07ad419949eb0829369911de237b")
!596 = !DINamespace(name: "{impl#6}", scope: !591)
!597 = !DIFile(filename: "src/word.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rand_core-0.10.1", checksumkind: CSK_MD5, checksum: "604c84d04a2b49fce54326900523aa64")
!598 = !DINamespace(name: "word", scope: !569)
!599 = !DINamespace(name: "sealed", scope: !598)
!600 = !DINamespace(name: "{impl#0}", scope: !599)
!601 = !DINamespace(name: "{impl#2}", scope: !593)
!602 = !{!281}
!603 = !{!302, !271}
!604 = !{!303, !282, !281, !274}
!605 = !DIFile(filename: "src/variants.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/chacha20-0.10.0", checksumkind: CSK_MD5, checksum: "b95ebc19fd2a8bf9e14b229a727fcb3d")
!606 = !DINamespace(name: "chacha20", scope: null)
!607 = !DINamespace(name: "variants", scope: !606)
!608 = !DINamespace(name: "{impl#3}", scope: !607)
!609 = !DIFile(filename: "src/lib.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/chacha20-0.10.0", checksumkind: CSK_MD5, checksum: "89e7403dfb892fecb85a0562600a2d06")
!610 = !DINamespace(name: "ChaChaCore", scope: !606)
!611 = !DINamespace(name: "{impl#0}", scope: !580)
!612 = !{!303, !281}
!613 = !{!271, !282, !281, !274}
!614 = !DINamespace(name: "{impl#7}", scope: !33)
!615 = !DINamespace(name: "{impl#1}", scope: !33)
!616 = !{!320}
!617 = !{!321, !271, !282, !281, !274}
!618 = !DIFile(filename: "library/core/src/slice/iter.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "f33ab2e22fe09095bf73c41c52bd166c")
!619 = !DINamespace(name: "iter", scope: !32)
!620 = !DINamespace(name: "ChunksExactMut", scope: !619)
!621 = !DIFile(filename: "library/core/src/slice/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "b606e5d97bff599edd0dcbc6067a14f1")
!622 = !DINamespace(name: "{impl#0}", scope: !32)
!623 = !DINamespace(name: "{impl#0}", scope: !33)
!624 = !DIFile(filename: "library/core/src/array/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "c726f515c254459c73cb9352206a49a4")
!625 = !DINamespace(name: "array", scope: !11)
!626 = !DINamespace(name: "{impl#15}", scope: !625)
!627 = !DINamespace(name: "Iter", scope: !619)
!628 = !{!350, !348}
!629 = !{!354, !353, !352, !351, !271, !282, !281, !274}
!630 = !DIFile(filename: "library/core/src/iter/adapters/zip.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "3b799775cfe5a249b4485e2512707a77")
!631 = !DINamespace(name: "iter", scope: !11)
!632 = !DINamespace(name: "adapters", scope: !631)
!633 = !DINamespace(name: "zip", scope: !632)
!634 = !DINamespace(name: "{impl#3}", scope: !633)
!635 = !DINamespace(name: "Zip", scope: !633)
!636 = !DIFile(filename: "library/core/src/iter/traits/iterator.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "d5544ea6028134339a685b720f104b0d")
!637 = !DINamespace(name: "traits", scope: !631)
!638 = !DINamespace(name: "iterator", scope: !637)
!639 = !DINamespace(name: "Iterator", scope: !638)
!640 = !{!365, !364, !271, !282, !281, !274}
!641 = !DINamespace(name: "{impl#1}", scope: !633)
!642 = !DIFile(filename: "library/core/src/iter/traits/exact_size.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "b65df84932b5452054a09996bbfca6e2")
!643 = !DINamespace(name: "exact_size", scope: !637)
!644 = !DINamespace(name: "ExactSizeIterator", scope: !643)
!645 = !{!365, !281}
!646 = !{i64 0, i64 2}
!647 = !DIFile(filename: "library/core/src/cmp.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "93720ae7898ae8b09789e408e6950d44")
!648 = !DINamespace(name: "cmp", scope: !11)
!649 = !DINamespace(name: "Ord", scope: !648)
!650 = !DINamespace(name: "{impl#17}", scope: !22)
!651 = !{!"branch_weights", i32 4000000, i32 4001}
!652 = !{!393}
!653 = !{!395}
!654 = !{!395, !393}
!655 = !DINamespace(name: "{impl#21}", scope: !633)
!656 = !{!403, !402, !395, !393, !271, !282, !281, !274}
!657 = !{!403, !281}
!658 = !DINamespace(name: "impls", scope: !648)
!659 = !DINamespace(name: "{impl#58}", scope: !658)
!660 = !DIFile(filename: "library/core/src/iter/range.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "7915aa40df45185604e056d6562b6895")
!661 = !DINamespace(name: "range", scope: !631)
!662 = !DINamespace(name: "{impl#5}", scope: !661)
!663 = !DINamespace(name: "{impl#6}", scope: !661)
!664 = !DILexicalBlockFile(scope: !412, file: !630, discriminator: 2)
!665 = !DIFile(filename: "library/core/src/num/uint_macros.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "7da08fe6de751b90c62a398311fb672e")
!666 = !DINamespace(name: "{impl#11}", scope: !50)
!667 = !DINamespace(name: "{impl#43}", scope: !661)
!668 = !{!422}
!669 = !DINamespace(name: "{impl#98}", scope: !619)
!670 = !DINamespace(name: "{impl#2}", scope: !638)
!671 = !DINamespace(name: "next", scope: !669)
!672 = !{!442}
!673 = !DIFile(filename: "library/core/src/slice/iter/macros.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "87d1f0c2746f51593d75ddf4c9271f14")
!674 = !DINamespace(name: "{impl#171}", scope: !619)
!675 = !DIFile(filename: "library/core/src/ptr/non_null.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "84a86787d0c87de0d69993189aea0a0d")
!676 = !DINamespace(name: "non_null", scope: !12)
!677 = !DINamespace(name: "{impl#15}", scope: !676)
!678 = !DINamespace(name: "NonNull", scope: !676)
!679 = !{!456, !454, !395, !393, !271, !282, !281, !274}
!680 = !DINamespace(name: "{impl#5}", scope: !587)
!681 = !DINamespace(name: "fill_bytes", scope: !680)
!682 = !DINamespace(name: "for_each", scope: !639)
!683 = !DINamespace(name: "call", scope: !682)
!684 = !{!456, !454, !281}
!685 = !DILexicalBlockFile(scope: !289, file: !51, discriminator: 0)
!686 = !DINamespace(name: "{impl#4}", scope: !33)
!687 = !DINamespace(name: "{impl#6}", scope: !33)
!688 = !DILexicalBlockFile(scope: !479, file: !31, discriminator: 2)
!689 = !DIFile(filename: "src/rngs/small.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rand-0.10.1", checksumkind: CSK_MD5, checksum: "531233836c71e25323418098c336fa10")
!690 = !DINamespace(name: "small", scope: !579)
!691 = !DINamespace(name: "{impl#0}", scope: !690)
!692 = !{!496, !495, !493, !492, !490, !489}
!693 = !DIFile(filename: "src/utils.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rand_core-0.10.1", checksumkind: CSK_MD5, checksum: "fbe1baa64c669dc0f9cae48f4aa2323d")
!694 = !DINamespace(name: "utils", scope: !569)
!695 = !DIFile(filename: "src/rngs/xoshiro256plusplus.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rand-0.10.1", checksumkind: CSK_MD5, checksum: "6a183136163689a7a27dcd72eb7d3554")
!696 = !DINamespace(name: "xoshiro256plusplus", scope: !579)
!697 = !DINamespace(name: "{impl#0}", scope: !696)
!698 = !DIFile(filename: "library/core/src/ptr/const_ptr.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "48638a38fe414ca30cde797e4a40b3a9")
!699 = !DINamespace(name: "const_ptr", scope: !12)
!700 = !DINamespace(name: "{impl#0}", scope: !699)
!701 = !DINamespace(name: "ChunksExact", scope: !619)
!702 = !DINamespace(name: "IterMut", scope: !619)
!703 = !{!526, !525, !496, !493, !492, !490, !489}
!704 = !{!531, !530}
!705 = !{!526, !496, !493, !492, !490, !489}
!706 = !DIFile(filename: "library/core/src/iter/traits/collect.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "35d2b5f35e8dd294396f20d1a263fa6f")
!707 = !DINamespace(name: "collect", scope: !637)
!708 = !DINamespace(name: "{impl#0}", scope: !707)
!709 = !{!536, !535, !526, !525, !496, !493, !492, !490, !489}
!710 = !{!536, !535, !526, !525, !496, !493, !490, !489}
!711 = !DINamespace(name: "{impl#5}", scope: !633)
!712 = !{!536, !526, !525, !496, !493, !490, !489}
!713 = !DILexicalBlockFile(scope: !546, file: !693, discriminator: 2)
!714 = !{!551}
!715 = !{!552, !496, !493, !492, !490, !489}
!716 = !DINamespace(name: "{impl#179}", scope: !619)
!717 = !{!552, !496, !493, !490, !489}
!718 = !{!490, !489}
!719 = !{!496, !493, !490, !489}
!720 = !{!495, !493, !492, !490, !489}
!721 = !DINamespace(name: "from_seed", scope: !697)
!722 = !{!489}
!723 = !DILocation(line: 148, column: 13, scope: !259)
!724 = !DILocation(line: 148, column: 24, scope: !259)
!725 = !DILocation(line: 149, column: 13, scope: !263)
!726 = !DILocation(line: 2447, column: 9, scope: !264, inlinedAt: !269)
!727 = !DILocation(line: 236, column: 13, scope: !272, inlinedAt: !268)
!728 = !DILocation(line: 175, column: 9, scope: !275, inlinedAt: !279)
!729 = !DILocation(line: 253, column: 20, scope: !283, inlinedAt: !288)
!730 = !DILocation(line: 278, column: 15, scope: !289, inlinedAt: !278)
!731 = !DILocation(line: 279, column: 16, scope: !289, inlinedAt: !278)
!732 = !DILocation(line: 0, scope: !277, inlinedAt: !278)
!733 = !DILocation(line: 295, column: 20, scope: !290, inlinedAt: !297)
!734 = !DILocation(line: 1233, column: 23, scope: !299, inlinedAt: !300)
!735 = !DILocation(line: 70, column: 20, scope: !304, inlinedAt: !309)
!736 = !DILocation(line: 53, column: 12, scope: !306, inlinedAt: !307)
!737 = !DILocation(line: 54, column: 18, scope: !306, inlinedAt: !307)
!738 = !DILocation(line: 56, column: 20, scope: !306, inlinedAt: !307)
!739 = !DILocation(line: 279, column: 13, scope: !289, inlinedAt: !278)
!740 = !DILocation(line: 285, column: 17, scope: !310, inlinedAt: !278)
!741 = !DILocation(line: 585, column: 27, scope: !311, inlinedAt: !314)
!742 = !DILocation(line: 101, column: 24, scope: !316, inlinedAt: !318)
!743 = !DILocation(line: 2033, column: 9, scope: !325, inlinedAt: !328)
!744 = !DILocation(line: 286, column: 17, scope: !329, inlinedAt: !278)
!745 = !DILocation(line: 89, column: 24, scope: !331, inlinedAt: !339)
!746 = !DILocation(line: 104, column: 13, scope: !343, inlinedAt: !346)
!747 = !DILocation(line: 155, column: 13, scope: !355, inlinedAt: !361)
!748 = !DILocation(line: 289, column: 37, scope: !362, inlinedAt: !278)
!749 = !DILocation(line: 221, column: 34, scope: !366, inlinedAt: !371)
!750 = !DILocation(line: 221, column: 41, scope: !366, inlinedAt: !371)
!751 = !DILocation(line: 221, column: 14, scope: !366, inlinedAt: !371)
!752 = !DILocation(line: 221, column: 23, scope: !366, inlinedAt: !371)
!753 = !DILocation(line: 221, column: 52, scope: !366, inlinedAt: !371)
!754 = !DILocation(line: 222, column: 34, scope: !372, inlinedAt: !371)
!755 = !DILocation(line: 222, column: 41, scope: !372, inlinedAt: !371)
!756 = !DILocation(line: 222, column: 14, scope: !372, inlinedAt: !371)
!757 = !DILocation(line: 222, column: 23, scope: !372, inlinedAt: !371)
!758 = !DILocation(line: 222, column: 52, scope: !372, inlinedAt: !371)
!759 = !DILocation(line: 226, column: 21, scope: !374, inlinedAt: !371)
!760 = !DILocation(line: 0, scope: !374, inlinedAt: !371)
!761 = !DILocation(line: 1077, column: 12, scope: !375, inlinedAt: !379)
!762 = !DILocation(line: 227, column: 54, scope: !374, inlinedAt: !371)
!763 = !DILocation(line: 0, scope: !372, inlinedAt: !371)
!764 = !DILocation(line: 1077, column: 12, scope: !375, inlinedAt: !381)
!765 = !DILocation(line: 117, column: 21, scope: !368, inlinedAt: !369)
!766 = !DILocation(line: 122, column: 27, scope: !382, inlinedAt: !369)
!767 = !DILocation(line: 2442, column: 9, scope: !383, inlinedAt: !385)
!768 = !DILocation(line: 51, column: 21, scope: !386, inlinedAt: !369)
!769 = !DILocation(line: 103, column: 9, scope: !387, inlinedAt: !391)
!770 = !DILocation(line: 248, column: 9, scope: !396, inlinedAt: !397)
!771 = !DILocation(line: 665, column: 9, scope: !399, inlinedAt: !400)
!772 = !DILocation(line: 221, column: 34, scope: !366, inlinedAt: !405)
!773 = !DILocation(line: 221, column: 41, scope: !366, inlinedAt: !405)
!774 = !DILocation(line: 221, column: 23, scope: !366, inlinedAt: !405)
!775 = !DILocation(line: 221, column: 52, scope: !366, inlinedAt: !405)
!776 = !DILocation(line: 222, column: 34, scope: !372, inlinedAt: !405)
!777 = !DILocation(line: 222, column: 41, scope: !372, inlinedAt: !405)
!778 = !DILocation(line: 222, column: 23, scope: !372, inlinedAt: !405)
!779 = !DILocation(line: 222, column: 52, scope: !372, inlinedAt: !405)
!780 = !DILocation(line: 226, column: 21, scope: !374, inlinedAt: !405)
!781 = !DILocation(line: 666, scope: !404, inlinedAt: !400)
!782 = !DILocation(line: 1077, column: 12, scope: !375, inlinedAt: !407)
!783 = !DILocation(line: 227, column: 54, scope: !374, inlinedAt: !405)
!784 = !DILocation(line: 666, column: 40, scope: !404, inlinedAt: !400)
!785 = !DILocation(line: 0, scope: !399, inlinedAt: !400)
!786 = !DILocation(line: 1917, column: 50, scope: !408, inlinedAt: !415)
!787 = !DILocation(line: 781, column: 12, scope: !409, inlinedAt: !414)
!788 = !DILocation(line: 681, column: 17, scope: !411, inlinedAt: !400)
!789 = !DILocation(line: 898, column: 17, scope: !416, inlinedAt: !420)
!790 = !DILocation(line: 2053, column: 18, scope: !423, inlinedAt: !426)
!791 = !DILocation(line: 2053, column: 54, scope: !423, inlinedAt: !426)
!792 = !DILocation(line: 2193, column: 12, scope: !427, inlinedAt: !428)
!793 = !DILocation(line: 961, column: 18, scope: !429, inlinedAt: !434)
!794 = !DILocation(line: 2109, column: 50, scope: !432, inlinedAt: !433)
!795 = !DILocation(line: 2054, column: 13, scope: !436, inlinedAt: !440)
!796 = !DILocation(line: 161, column: 27, scope: !443, inlinedAt: !446)
!797 = !DILocation(line: 162, column: 34, scope: !447, inlinedAt: !446)
!798 = !DILocation(line: 1717, column: 9, scope: !448, inlinedAt: !450)
!799 = !DILocation(line: 180, column: 28, scope: !449, inlinedAt: !446)
!800 = !DILocation(line: 659, column: 28, scope: !451, inlinedAt: !452)
!801 = !DILocation(line: 185, column: 25, scope: !449, inlinedAt: !446)
!802 = !DILocation(line: 290, column: 66, scope: !458, inlinedAt: !462)
!803 = !DILocation(line: 290, column: 70, scope: !458, inlinedAt: !462)
!804 = !DILocation(line: 4325, column: 18, scope: !463, inlinedAt: !464)
!805 = !DILocation(line: 290, column: 92, scope: !458, inlinedAt: !462)
!806 = !DILocation(line: 291, column: 13, scope: !389, inlinedAt: !278)
!807 = !DILocation(line: 161, column: 27, scope: !465, inlinedAt: !467)
!808 = !DILocation(line: 162, column: 34, scope: !468, inlinedAt: !467)
!809 = !DILocation(line: 1717, column: 9, scope: !469, inlinedAt: !471)
!810 = !DILocation(line: 180, column: 28, scope: !470, inlinedAt: !467)
!811 = !DILocation(line: 659, column: 28, scope: !472, inlinedAt: !473)
!812 = !DILocation(line: 185, column: 25, scope: !470, inlinedAt: !467)
!813 = !DILocation(line: 296, column: 32, scope: !466, inlinedAt: !278)
!814 = !DILocation(line: 298, column: 20, scope: !475, inlinedAt: !278)
!815 = !DILocation(line: 0, scope: !389, inlinedAt: !278)
!816 = !DILocation(line: 305, column: 9, scope: !329, inlinedAt: !278)
!817 = !DILocation(line: 305, column: 9, scope: !310, inlinedAt: !278)
!818 = !DILocation(line: 0, scope: !685, inlinedAt: !278)
!819 = !DILocation(line: 299, column: 47, scope: !475, inlinedAt: !278)
!820 = !DILocation(line: 299, column: 51, scope: !475, inlinedAt: !278)
!821 = !DILocation(line: 977, column: 16, scope: !476, inlinedAt: !483)
!822 = !DILocation(line: 4325, column: 18, scope: !484, inlinedAt: !485)
!823 = !DILocation(line: 299, column: 79, scope: !475, inlinedAt: !278)
!824 = !DILocation(line: 300, column: 21, scope: !475, inlinedAt: !278)
!825 = !DILocation(line: 301, column: 21, scope: !475, inlinedAt: !278)
!826 = !DILocation(line: 443, column: 13, scope: !477, inlinedAt: !482)
!827 = !DILocation(line: 292, column: 25, scope: !389, inlinedAt: !278)
!828 = !DILocation(line: 292, column: 13, scope: !389, inlinedAt: !278)
!829 = !DILocation(line: 298, column: 24, scope: !290, inlinedAt: !297)
!830 = !DILocation(line: 181, column: 9, scope: !293, inlinedAt: !294)
!831 = !DILocation(line: 307, column: 6, scope: !276, inlinedAt: !278)
!832 = !DILocation(line: 90, column: 20, scope: !486, inlinedAt: !487)
!833 = !DILocation(line: 150, column: 25, scope: !263)
!834 = !DILocation(line: 143, column: 9, scope: !497, inlinedAt: !501)
!835 = !DILocation(line: 863, column: 18, scope: !502, inlinedAt: !514)
!836 = !DILocation(line: 961, column: 18, scope: !515, inlinedAt: !523)
!837 = !DILocation(line: 631, column: 24, scope: !527, inlinedAt: !528)
!838 = !DILocation(line: 323, column: 9, scope: !532, inlinedAt: !533)
!839 = !DILocation(line: 300, column: 30, scope: !537, inlinedAt: !540)
!840 = !DILocation(line: 300, column: 40, scope: !537, inlinedAt: !540)
!841 = !DILocation(line: 1077, column: 12, scope: !375, inlinedAt: !543)
!842 = !DILocation(line: 302, column: 6, scope: !537, inlinedAt: !540)
!843 = !DILocation(line: 631, column: 41, scope: !527, inlinedAt: !528)
!844 = !DILocation(line: 145, column: 25, scope: !520, inlinedAt: !501)
!845 = !DILocation(line: 306, column: 12, scope: !544, inlinedAt: !548)
!846 = !DILocation(line: 310, column: 13, scope: !549, inlinedAt: !548)
!847 = !DILocation(line: 313, column: 30, scope: !549, inlinedAt: !548)
!848 = !DILocation(line: 961, column: 18, scope: !553, inlinedAt: !556)
!849 = !DILocation(line: 313, column: 66, scope: !549, inlinedAt: !548)
!850 = !DILocation(line: 313, column: 59, scope: !549, inlinedAt: !548)
!851 = !DILocation(line: 146, column: 13, scope: !557, inlinedAt: !501)
!852 = !DILocation(line: 146, column: 33, scope: !557, inlinedAt: !501)
!853 = !DILocation(line: 4325, column: 18, scope: !558, inlinedAt: !560)
!854 = !DILocation(line: 148, column: 33, scope: !559, inlinedAt: !501)
!855 = !DILocation(line: 148, column: 9, scope: !559, inlinedAt: !501)
!856 = !DILocation(line: 149, column: 5, scope: !557, inlinedAt: !501)
!857 = !DILocation(line: 306, column: 25, scope: !544, inlinedAt: !548)
!858 = !DILocation(line: 149, column: 5, scope: !520, inlinedAt: !501)
!859 = !DILocation(line: 150, column: 5, scope: !520, inlinedAt: !501)
!860 = !DILocation(line: 151, column: 1, scope: !497, inlinedAt: !501)
!861 = !DILocation(line: 38, column: 34, scope: !562, inlinedAt: !567)
!862 = !DILocation(line: 315, column: 25, scope: !564, inlinedAt: !566)
!863 = !DILocation(line: 42, column: 6, scope: !498, inlinedAt: !500)
!864 = !DILocation(line: 91, column: 9, scope: !499, inlinedAt: !487)
!865 = !DILocation(line: 92, column: 6, scope: !486, inlinedAt: !487)
!866 = !DILocation(line: 151, column: 5, scope: !259)
!867 = !DILocation(line: 151, column: 6, scope: !259)
!868 = !DILocation(line: 628, column: 19, scope: !2)
!869 = !DILocation(line: 628, column: 30, scope: !2)
!870 = !DILocation(line: 628, column: 13, scope: !2)
!871 = !DILocation(line: 631, column: 21, scope: !3)
!872 = !DILocation(line: 635, column: 10, scope: !2)
!873 = !DILocation(line: 627, column: 9, scope: !2)
!874 = !DILocation(line: 634, column: 13, scope: !2)
!875 = distinct !DISubprogram(name: "fmt<()>", linkageName: "_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRuNtB6_5Debug3fmtCsidoPH4Qgqxm_12polars_async", scope: !878, file: !54, line: 2866, type: !18, scopeLine: 2866, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!876 = distinct !DISubprogram(name: "fmt", linkageName: "_RNvXss_NtCscgRAwXFJnXP_4core3fmtuNtB5_5Debug3fmt", scope: !879, file: !54, line: 3124, type: !14, scopeLine: 3124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!877 = distinct !DILocation(line: 2866, column: 62, scope: !875)
!878 = !DINamespace(name: "{impl#80}", scope: !55)
!879 = !DINamespace(name: "{impl#30}", scope: !55)
!880 = !DILocation(line: 3125, column: 11, scope: !876, inlinedAt: !877)
!881 = !DILocation(line: 2866, column: 84, scope: !875)
!882 = distinct !DISubprogram(name: "fmt<str>", linkageName: "_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsidoPH4Qgqxm_12polars_async", scope: !883, file: !54, line: 2866, type: !18, scopeLine: 2866, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!883 = !DINamespace(name: "{impl#82}", scope: !55)
!884 = !DILocation(line: 2866, column: 71, scope: !882)
!885 = !DILocation(line: 2866, column: 62, scope: !882)
!886 = !DILocation(line: 2866, column: 84, scope: !882)
!887 = distinct !DISubprogram(name: "fmt", linkageName: "_RNvXs5_NtNtCscgRAwXFJnXP_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt", scope: !890, file: !888, line: 9, type: !18, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!888 = !DIFile(filename: "library/core/src/num/error.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "c1c00b456b2b3426c92f6a02de4c0d43")
!889 = !DINamespace(name: "error", scope: !50)
!890 = !DINamespace(name: "{impl#7}", scope: !889)
!891 = !DILocation(line: 10, column: 28, scope: !887)
!892 = !DILocation(line: 9, column: 10, scope: !887)
!893 = !DILocation(line: 9, column: 14, scope: !887)
!894 = !DILocation(line: 9, column: 15, scope: !887)
!895 = distinct !DISubprogram(name: "write_char<std::io::default_write_fmt::Adapter<std::sys::stdio::unix::Stderr>>", linkageName: "_RNvYINtNvNtCsh8eZTKRCwoO_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCscgRAwXFJnXP_4core3fmt5Write10write_charCsidoPH4Qgqxm_12polars_async", scope: !56, file: !54, line: 183, type: !18, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!896 = distinct !DISubprogram(name: "len_utf8", linkageName: "_RNvNtNtCscgRAwXFJnXP_4core4char7methods8len_utf8", scope: !924, file: !922, line: 2038, type: !18, scopeLine: 2038, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!897 = distinct !DISubprogram(name: "encode_utf8_raw", linkageName: "_RNvNtNtCscgRAwXFJnXP_4core4char7methods15encode_utf8_raw", scope: !924, file: !922, line: 2069, type: !18, scopeLine: 2069, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!898 = distinct !DISubprogram(name: "encode_utf8", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core4char7methodsc11encode_utf8", scope: !925, file: !922, line: 714, type: !18, scopeLine: 714, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!899 = distinct !DILocation(line: 716, column: 42, scope: !898, inlinedAt: !926)
!900 = distinct !DILocation(line: 2070, column: 15, scope: !897, inlinedAt: !899)
!901 = distinct !DISubprogram(name: "encode_utf8_raw_unchecked", linkageName: "_RNvNtNtCscgRAwXFJnXP_4core4char7methods25encode_utf8_raw_unchecked", scope: !924, file: !922, line: 2106, type: !18, scopeLine: 2106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!902 = distinct !DILexicalBlock(scope: !901, file: !922, line: 2107, column: 5)
!903 = distinct !DILexicalBlock(scope: !897, file: !922, line: 2070, column: 5)
!904 = distinct !DILocation(line: 2082, column: 14, scope: !903, inlinedAt: !899)
!905 = distinct !DILexicalBlock(scope: !902, file: !922, line: 2116, column: 9)
!906 = distinct !DILexicalBlock(scope: !905, file: !922, line: 2117, column: 9)
!907 = distinct !DILexicalBlock(scope: !906, file: !922, line: 2118, column: 9)
!908 = distinct !DILexicalBlock(scope: !907, file: !922, line: 2119, column: 9)
!909 = distinct !{!909, i1 false, !"_RNvNtNtCscgRAwXFJnXP_4core4char7methods15encode_utf8_raw"}
!910 = distinct !{!910, !909, !"_RNvNtNtCscgRAwXFJnXP_4core4char7methods15encode_utf8_raw: argument 0"}
!911 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOh3addCsidoPH4Qgqxm_12polars_async", scope: !17, file: !15, line: 927, type: !18, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!912 = distinct !DILocation(line: 2123, column: 18, scope: !908, inlinedAt: !904)
!913 = distinct !DILocation(line: 2129, column: 18, scope: !908, inlinedAt: !904)
!914 = distinct !DILocation(line: 2130, column: 18, scope: !908, inlinedAt: !904)
!915 = distinct !DILocation(line: 2135, column: 14, scope: !908, inlinedAt: !904)
!916 = distinct !DILocation(line: 2136, column: 14, scope: !908, inlinedAt: !904)
!917 = distinct !DILocation(line: 2137, column: 14, scope: !908, inlinedAt: !904)
!918 = distinct !{!918, i1 false, !"_RNvXNvNtCsh8eZTKRCwoO_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCscgRAwXFJnXP_4core3fmt5Write9write_strCsidoPH4Qgqxm_12polars_async"}
!919 = distinct !{!919, !918, !"_RNvXNvNtCsh8eZTKRCwoO_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCscgRAwXFJnXP_4core3fmt5Write9write_strCsidoPH4Qgqxm_12polars_async: argument 0"}
!920 = distinct !{!920, !918, !"_RNvXNvNtCsh8eZTKRCwoO_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCscgRAwXFJnXP_4core3fmt5Write9write_strCsidoPH4Qgqxm_12polars_async: argument 1"}
!921 = distinct !DILocation(line: 184, column: 14, scope: !895)
!922 = !DIFile(filename: "library/core/src/char/methods.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "250be42d67a870f63f129e5a4f1373a2")
!923 = !DINamespace(name: "char", scope: !11)
!924 = !DINamespace(name: "methods", scope: !923)
!925 = !DINamespace(name: "{impl#0}", scope: !924)
!926 = !DILocation(line: 184, column: 26, scope: !895)
!927 = !{!910}
!928 = !DILexicalBlockFile(scope: !902, file: !51, discriminator: 0)
!929 = !DILexicalBlockFile(scope: !908, file: !51, discriminator: 0)
!930 = !{!919}
!931 = !{!920}
!932 = !DILocation(line: 184, column: 43, scope: !895)
!933 = !DILocation(line: 2040, column: 9, scope: !896, inlinedAt: !900)
!934 = !DILocation(line: 2041, column: 9, scope: !896, inlinedAt: !900)
!935 = !DILocation(line: 2116, column: 21, scope: !902, inlinedAt: !904)
!936 = !DILocation(line: 2117, column: 22, scope: !905, inlinedAt: !904)
!937 = !DILocation(line: 2117, column: 21, scope: !905, inlinedAt: !904)
!938 = !DILocation(line: 2118, column: 22, scope: !906, inlinedAt: !904)
!939 = !DILocation(line: 2118, column: 21, scope: !906, inlinedAt: !904)
!940 = !DILocation(line: 2119, column: 22, scope: !907, inlinedAt: !904)
!941 = !DILocation(line: 2119, column: 21, scope: !907, inlinedAt: !904)
!942 = !DILocation(line: 2121, column: 12, scope: !908, inlinedAt: !904)
!943 = !DILocation(line: 2112, column: 13, scope: !902, inlinedAt: !904)
!944 = !DILocation(line: 0, scope: !928, inlinedAt: !904)
!945 = !DILocation(line: 2122, column: 13, scope: !908, inlinedAt: !904)
!946 = !DILocation(line: 961, column: 18, scope: !911, inlinedAt: !912)
!947 = !DILocation(line: 2123, column: 13, scope: !908, inlinedAt: !904)
!948 = !DILocation(line: 0, scope: !929, inlinedAt: !904)
!949 = !DILocation(line: 2127, column: 12, scope: !908, inlinedAt: !904)
!950 = !DILocation(line: 2128, column: 13, scope: !908, inlinedAt: !904)
!951 = !DILocation(line: 961, column: 18, scope: !911, inlinedAt: !913)
!952 = !DILocation(line: 2129, column: 13, scope: !908, inlinedAt: !904)
!953 = !DILocation(line: 961, column: 18, scope: !911, inlinedAt: !914)
!954 = !DILocation(line: 2130, column: 13, scope: !908, inlinedAt: !904)
!955 = !DILocation(line: 2134, column: 9, scope: !908, inlinedAt: !904)
!956 = !DILocation(line: 961, column: 18, scope: !911, inlinedAt: !915)
!957 = !DILocation(line: 2135, column: 9, scope: !908, inlinedAt: !904)
!958 = !DILocation(line: 961, column: 18, scope: !911, inlinedAt: !916)
!959 = !DILocation(line: 2136, column: 9, scope: !908, inlinedAt: !904)
!960 = !DILocation(line: 961, column: 18, scope: !911, inlinedAt: !917)
!961 = !DILocation(line: 2137, column: 9, scope: !908, inlinedAt: !904)
!962 = !DILocation(line: 2139, column: 2, scope: !901, inlinedAt: !904)
!963 = !DILocation(line: 184, column: 14, scope: !895)
!964 = !DILocation(line: 628, column: 19, scope: !2, inlinedAt: !921)
!965 = !DILocation(line: 628, column: 30, scope: !2, inlinedAt: !921)
!966 = !DILocation(line: 628, column: 13, scope: !2, inlinedAt: !921)
!967 = !DILocation(line: 631, column: 21, scope: !3, inlinedAt: !921)
!968 = !DILocation(line: 627, column: 9, scope: !2, inlinedAt: !921)
!969 = !DILocation(line: 634, column: 13, scope: !2, inlinedAt: !921)
!970 = !DILocation(line: 184, column: 67, scope: !895)
!971 = !DILocation(line: 185, column: 6, scope: !895)
!972 = distinct !DISubprogram(name: "write_fmt<std::io::default_write_fmt::Adapter<std::sys::stdio::unix::Stderr>>", linkageName: "_RNvYINtNvNtCsh8eZTKRCwoO_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCscgRAwXFJnXP_4core3fmt5Write9write_fmtCsidoPH4Qgqxm_12polars_async", scope: !56, file: !54, line: 212, type: !18, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!973 = distinct !{null}
!974 = distinct !DISubprogram(name: "spec_write_fmt<std::io::default_write_fmt::Adapter<std::sys::stdio::unix::Stderr>>", linkageName: "_RNvXs_NvNtNtCscgRAwXFJnXP_4core3fmt5Write9write_fmtQINtNvNtCsh8eZTKRCwoO_3std2io17default_write_fmt7AdapterNtNtNtNtBV_3sys5stdio4unix6StderrENtB4_12SpecWriteFmt14spec_write_fmtCsidoPH4Qgqxm_12polars_async", scope: !977, file: !54, line: 232, type: !18, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !13)
!975 = distinct !DILocation(line: 241, column: 14, scope: !972)
!976 = !DINamespace(name: "write_fmt", scope: !56)
!977 = !DINamespace(name: "{impl#1}", scope: !976)
!978 = !DILocation(line: 236, column: 21, scope: !974, inlinedAt: !975)
!979 = !DILocation(line: 242, column: 6, scope: !972)
end_hunk_1
