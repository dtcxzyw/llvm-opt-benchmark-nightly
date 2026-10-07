Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_stream-fcae4413b3f98c0a.polars_stream.1a4d324d1ee8f0d2-cgu.13?download=true
inline.NumInlined: 5868
inline.NumDeleted: 2281
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inyNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream:bb.a

bb.d:                                             ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit
  %i.l = shl nuw nsw i64 %2, 3, !dbg !57660
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr nonnull align 8 %1, i64 %i.l, i1 false), !dbg !57660
  store i64 %2, ptr %i.k, align 8, !dbg !57661
  br label %bb.c, !dbg !57662
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs5small8SmallRngNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng8from_rngNtNtB7_6thread9ThreadRngECs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !57663 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [72 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 9 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [4 x i8], align 4                 ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [16 x i8], align 8                ; 8 uses
  %i.q = alloca [40 x i8], align 8                ; 10 uses
  %i.r = alloca [32 x i8], align 1                ; 5 uses
  %i.s = alloca [32 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !57991
  call void @_RNvXst_NtCscgRAwXFJnXP_4core5arrayAhj20_NtNtB7_7default7Default7defaultCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([32 x i8]) align 1 captures(none) dereferenceable(32) %i.s), !dbg !57992
  %.val = load ptr, ptr %1, align 8, !dbg !57993, !alias.scope !57937, !noalias !57938, !nonnull !2247, !noundef !2247 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !57994 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57939), !dbg !57995
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !57996, !noalias !57940
  %i.u = load i32, ptr %i.t, align 4, !dbg !57996, !alias.scope !57939, !noalias !57941, !noundef !2247
  %i.v = zext i32 %i.u to i64, !dbg !57997
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 272 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 320
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br label %bb.b, !dbg !57998

bb.b:                                             ; preds = %bb.s, %bb.a
  %.sroa.0.026.i.i = phi i64 [ 0, %bb.a ], [ %i.cp, %bb.s ] ; 3 uses
  %.sroa.06.025.i.i = phi i64 [ %i.v, %bb.a ], [ %i.ce, %bb.s ] ; 2 uses
  %i.ar = icmp ugt i64 %.sroa.06.025.i.i, 63, !dbg !57999
  br i1 %i.ar, label %bb.c, label %bb.e, !dbg !57999

.loopexit.i.i:                                    ; preds = %bb.s, %bb.o
  %.sroa.06.1.i.i = phi i64 [ %.sroa.06.3.i.i, %bb.o ], [ %i.ce, %bb.s ], !dbg !58000 ; 2 uses
  %i.as = icmp ugt i64 %.sroa.06.1.i.i, 4294967295, !dbg !58001
  br i1 %i.as, label %.split.i.i.i, label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs5smallNtB2_8SmallRngNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed.exit, !dbg !58001

.split.i.i.i:                                     ; preds = %.loopexit.i.i
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @231, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @234, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @280) #40, !dbg !58002, !noalias !57942
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.at = load i64, ptr %i.x, align 4, !dbg !58003, !alias.scope !57943, !noalias !57944
  %i.au = icmp ugt i64 %i.at, 1023, !dbg !58004
  br i1 %i.au, label %bb.d, label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i, !dbg !58004, !prof !2257

bb.d:                                             ; preds = %bb.c
  call void @_RNvMs_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias noundef nonnull align 4 dereferenceable(64) %i.w) #44, !dbg !58005, !noalias !57945
  br label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i, !dbg !58005

_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i: ; preds = %bb.d, %bb.c
  call void @_RNvXs_NtCsejN9i34LGCw_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs53V80GKKPEw_9rand_core5block9Generator8generateCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 4 dereferenceable(64) %i.w, ptr noalias noundef nonnull align 4 dereferenceable(320) %i.t), !dbg !58006, !noalias !57942
  br label %bb.e, !dbg !58007

bb.e:                                             ; preds = %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i, %bb.b
  %.sroa.06.2.i.i = phi i64 [ 0, %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i ], [ %.sroa.06.025.i.i, %bb.b ], !dbg !58000 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !58008, !noalias !57946
  %i.av = sub nuw nsw i64 32, %.sroa.0.026.i.i, !dbg !58009
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.026.i.i, !dbg !58010
  store ptr %i.aw, ptr %i.z, align 8, !dbg !58011, !alias.scope !57947, !noalias !57948
  store i64 %i.av, ptr %i.aa, align 8, !dbg !58011, !alias.scope !57947, !noalias !57948
  store ptr %i.y, ptr %i.q, align 8, !dbg !58011, !alias.scope !57947, !noalias !57948
  store i64 0, ptr %i.ab, align 8, !dbg !58011, !alias.scope !57947, !noalias !57948
  store i64 4, ptr %i.ac, align 8, !dbg !58011, !alias.scope !57947, !noalias !57948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !58012, !noalias !57946
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.sroa.06.2.i.i, !dbg !58013
  store ptr %i.ax, ptr %i.p, align 8, !dbg !58014, !noalias !57946
  store ptr %i.w, ptr %i.ad, align 8, !dbg !58014, !noalias !57946
  store ptr %i.q, ptr %i.o, align 8, !dbg !58015, !alias.scope !57950, !noalias !57951
  store ptr %i.p, ptr %i.ae, align 8, !dbg !58015, !alias.scope !57950, !noalias !57951
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false), !dbg !58015, !alias.scope !57950, !noalias !57951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !58016, !noalias !57946
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !58016, !noalias !57946
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !58017, !noalias !57952
  call void @_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o), !dbg !58018, !noalias !57953
  %i.ay = load i64, ptr %i.j, align 8, !dbg !58019, !noalias !57952, !noundef !2247
  %i.az = load i64, ptr %i.ag, align 8, !dbg !58020, !range !2329, !noalias !57952, !noundef !2247
  %i.ba = load i64, ptr %i.ah, align 8, !dbg !58020, !noalias !57952 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !58021, !noalias !57952
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !58022, !noalias !57952
  call void @_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter4ItermENtB5_8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae), !dbg !58023, !noalias !57953
  %i.bb = load i64, ptr %i.i, align 8, !dbg !58024, !noalias !57952, !noundef !2247
  %i.bc = load i64, ptr %i.ai, align 8, !dbg !58025, !range !2329, !noalias !57952, !noundef !2247 ; 2 uses
  %i.bd = load i64, ptr %i.aj, align 8, !dbg !58025, !noalias !57952 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !58026, !noalias !57952
  %i.be = trunc nuw i64 %i.az to i1, !dbg !58027
  %i.bf = trunc nuw i64 %i.bc to i1, !dbg !58027  ; 2 uses
  br i1 %i.be, label %bb.f, label %bb.g, !dbg !58027

bb.f:                                             ; preds = %bb.e
  br i1 %i.bf, label %bb.h, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCs2g09Ig8GZd6_13polars_stream.exit.i.i, !dbg !58027

bb.g:                                             ; preds = %bb.e
  %.13.i.i.i = select i1 %i.bf, i64 %i.bd, i64 undef, !dbg !58028
  br label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCs2g09Ig8GZd6_13polars_stream.exit.i.i, !dbg !58028

bb.h:                                             ; preds = %bb.f
  %.sroa.0.0.i14.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bd, i64 %i.ba), !dbg !58029
  br label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCs2g09Ig8GZd6_13polars_stream.exit.i.i, !dbg !58030

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCs2g09Ig8GZd6_13polars_stream.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.05.0.i.i.i = phi i64 [ 1, %bb.h ], [ %i.bc, %bb.g ], [ 1, %bb.f ], !dbg !58031 ; 2 uses
  %.sroa.7.0.i.i.i = phi i64 [ %.sroa.0.0.i14.i.i.i, %bb.h ], [ %.13.i.i.i, %bb.g ], [ %i.ba, %bb.f ], !dbg !58031 ; 4 uses
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bb, i64 %i.ay), !dbg !58032 ; 2 uses
  store i64 %.sroa.05.0.i.i.i, ptr %i.m, align 8, !dbg !58033, !noalias !57946
  store i64 %.sroa.7.0.i.i.i, ptr %i.ak, align 8, !dbg !58033, !noalias !57946
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.al, align 8, !dbg !58034, !noalias !57946
  store i64 1, ptr %i.l, align 8, !dbg !58034, !noalias !57946
  %i.bg = trunc nuw i64 %.sroa.05.0.i.i.i to i1, !dbg !58035
  %i.bh = icmp eq i64 %.sroa.7.0.i.i.i, %.sroa.0.0.i.i.i.i
  %or.cond.i.i = select i1 %i.bg, i1 %i.bh, i1 false, !dbg !58035, !prof !2596
  br i1 %or.cond.i.i, label %bb.j, label %bb.i, !dbg !58035, !prof !2596

bb.i:                                             ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCs2g09Ig8GZd6_13polars_stream.exit.i.i
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedINtNtB4_6option6OptionjEBM_EB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @293) #43, !dbg !58036, !noalias !57942
  unreachable, !dbg !58036

bb.j:                                             ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCs2g09Ig8GZd6_13polars_stream.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !58016, !noalias !57946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !58016, !noalias !57946
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !58037, !noalias !57946
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !dbg !58037, !noalias !57946
  call void @llvm.experimental.noalias.scope.decl(metadata !57954), !dbg !58037, !noalias !57942
  call void @llvm.experimental.noalias.scope.decl(metadata !57955), !dbg !58038, !noalias !57942
  %.val.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !57956, !noalias !57946, !nonnull !2247, !align !2484 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 16 ; 2 uses
  %.val13.i.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !57956, !noalias !57946, !nonnull !2247, !align !2484 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.val13.i.i.i.i, i64 8
  br label %bb.k, !dbg !58039

bb.k:                                             ; preds = %._crit_edge.i.i.i.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !58040, !noalias !57958
  call void @_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k), !dbg !58041, !noalias !57959
  %i.bm = load i64, ptr %i.am, align 8, !dbg !58042, !range !2329, !noalias !57958, !noundef !2247
  %i.bn = load i64, ptr %i.an, align 8, !dbg !58042, !noalias !57958 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !58043, !noalias !57958
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !58044, !noalias !57958
  call void @_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter4ItermENtB5_8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ao), !dbg !58045, !noalias !57959
  %i.bo = load i64, ptr %i.ap, align 8, !dbg !58046, !range !2329, !noalias !57958, !noundef !2247
  %i.bp = load i64, ptr %i.aq, align 8, !dbg !58046, !noalias !57958 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !58047, !noalias !57958
  %i.bq = trunc nuw i64 %i.bm to i1, !dbg !58048
  %i.br = trunc nuw i64 %i.bo to i1, !dbg !58049  ; 2 uses
  br i1 %i.bq, label %bb.l, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !58048

bb.l:                                             ; preds = %bb.k
  br i1 %i.br, label %bb.m, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCs2g09Ig8GZd6_13polars_stream.exit.thread.i.i.i.i, !dbg !58048

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i14.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bp, i64 %i.bn), !dbg !58050
  br label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCs2g09Ig8GZd6_13polars_stream.exit.thread.i.i.i.i, !dbg !58051

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i: ; preds = %bb.k
  br i1 %i.br, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCs2g09Ig8GZd6_13polars_stream.exit.thread.i.i.i.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.preheader.i.i.i.i, !dbg !58052

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCs2g09Ig8GZd6_13polars_stream.exit.thread.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, %bb.m, %bb.l
  %.sroa.0.0.i.i19.i.i = phi i64 [ %i.bn, %bb.l ], [ %.sroa.0.0.i14.i.i.i.i.i, %bb.m ], [ %i.bp, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i ], !dbg !58053 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i19.i.i, 0, !dbg !58054
  br i1 %.not.i.i.i.i, label %_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3r_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECs2g09Ig8GZd6_13polars_stream.exit.i.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.preheader.i.i.i.i, !dbg !58055

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.preheader.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCs2g09Ig8GZd6_13polars_stream.exit.thread.i.i.i.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  %.sroa.0.026.i.i.i.i = phi i64 [ %.sroa.0.0.i.i19.i.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCs2g09Ig8GZd6_13polars_stream.exit.thread.i.i.i.i ], [ -1, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i ]
  %i.bs = phi i1 [ true, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCs2g09Ig8GZd6_13polars_stream.exit.thread.i.i.i.i ], [ false, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i ]
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !58056

._crit_edge.i.i.i.i:                              ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  br i1 %i.bs, label %_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3r_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECs2g09Ig8GZd6_13polars_stream.exit.i.i, label %bb.k, !dbg !58057

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.preheader.i.i.i.i
  %.sroa.01.023.i.i.i.i = phi i64 [ %i.bt, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i ], [ 0, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.preheader.i.i.i.i ]
  %i.bt = add nuw i64 %.sroa.01.023.i.i.i.i, 1, !dbg !58058 ; 2 uses
  %i.bu = load i64, ptr %i.bi, align 8, !dbg !58059, !alias.scope !57961, !noalias !57942, !noundef !2247 ; 2 uses
  %i.bv = load i64, ptr %i.bj, align 8, !dbg !58060, !alias.scope !57961, !noalias !57942, !noundef !2247 ; 4 uses
  %.not.i.i.i.i.i.i = icmp ule i64 %i.bv, %i.bu, !dbg !58056
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i), !dbg !58056, !noalias !57942
  %i.bw = load ptr, ptr %i.bk, align 8, !dbg !58059, !alias.scope !57961, !noalias !57942, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bv, !dbg !58061
  %i.by = sub nuw i64 %i.bu, %i.bv, !dbg !58062
  store ptr %i.bx, ptr %i.bk, align 8, !dbg !58063, !alias.scope !57961, !noalias !57942
  store i64 %i.by, ptr %i.bi, align 8, !dbg !58063, !alias.scope !57961, !noalias !57942
  %i.bz = load ptr, ptr %.val13.i.i.i.i, align 8, !dbg !58064, !alias.scope !57963, !noalias !57942, !nonnull !2247, !noundef !2247 ; 3 uses
  %i.ca = load ptr, ptr %i.bl, align 8, !dbg !58065, !alias.scope !57963, !noalias !57942, !nonnull !2247, !noundef !2247
  %i.cb = icmp ne ptr %i.bz, %i.ca, !dbg !58066
  call void @llvm.assume(i1 %i.cb), !dbg !58067, !noalias !57942
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 4, !dbg !58068
  store ptr %i.cc, ptr %.val13.i.i.i.i, align 8, !dbg !58069, !alias.scope !57963, !noalias !57942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !58070, !noalias !57964
  %i.cd = load i32, ptr %i.bz, align 4, !dbg !58070, !noalias !57967, !noundef !2247
  store i32 %i.cd, ptr %i.f, align 4, !dbg !58071, !noalias !57964
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull %i.bw, i64 noundef %i.bv, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @174), !dbg !58072, !noalias !57967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !58073, !noalias !57964
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bt, %.sroa.0.026.i.i.i.i, !dbg !58054
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !58055

_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3r_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECs2g09Ig8GZd6_13polars_stream.exit.i.i: ; preds = %._crit_edge.i.i.i.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCs2g09Ig8GZd6_13polars_stream.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !58037, !noalias !57946
  %i.ce = add i64 %.sroa.7.0.i.i.i, %.sroa.06.2.i.i, !dbg !58074 ; 4 uses
  %i.cf = load ptr, ptr %i.p, align 8, !dbg !58075, !noalias !57946, !nonnull !2247, !noundef !2247 ; 3 uses
  %i.cg = load ptr, ptr %i.ad, align 8, !dbg !58076, !noalias !57946, !nonnull !2247, !noundef !2247
  %i.ch = icmp eq ptr %i.cf, %i.cg, !dbg !58077
  br i1 %i.ch, label %bb.s, label %bb.n, !dbg !58078

bb.n:                                             ; preds = %_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3r_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECs2g09Ig8GZd6_13polars_stream.exit.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 4, !dbg !58079
  store ptr %i.ci, ptr %i.p, align 8, !dbg !58080, !noalias !57946
  %i.cj = load ptr, ptr %i.q, align 8, !dbg !58081, !noalias !57946, !nonnull !2247, !noundef !2247
  %i.ck = load i64, ptr %i.ab, align 8, !dbg !58081, !noalias !57946, !noundef !2247 ; 5 uses
  %.not.i.i = icmp eq i64 %i.ck, 0, !dbg !58082
  br i1 %.not.i.i, label %bb.o, label %bb.p, !dbg !58082

bb.o:                                             ; preds = %bb.q, %bb.n
  %.sroa.06.3.i.i = phi i64 [ %i.cn, %bb.q ], [ %i.ce, %bb.n ], !dbg !58083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !58084, !noalias !57946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !58085, !noalias !57946
  br label %.loopexit.i.i, !dbg !58086

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !58087, !noalias !57946
  %i.cl = load i32, ptr %i.cf, align 4, !dbg !58087, !noalias !57942, !noundef !2247
  store i32 %i.cl, ptr %i.n, align 4, !dbg !58088, !noalias !57946
  %i.cm = icmp ult i64 %i.ck, 5
  br i1 %i.cm, label %bb.q, label %bb.r, !dbg !58089, !prof !2596

bb.q:                                             ; preds = %bb.p
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull %i.cj, i64 noundef %i.ck, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.ck, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @294), !dbg !58090, !noalias !57942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !58091, !noalias !57946
  %i.cn = add i64 %i.ce, 1, !dbg !58092
  br label %bb.o, !dbg !58093

bb.r:                                             ; preds = %bb.p
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ck, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #40, !dbg !58094, !noalias !57942
  unreachable

bb.s:                                             ; preds = %_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3r_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECs2g09Ig8GZd6_13polars_stream.exit.i.i
  %i.co = shl i64 %.sroa.7.0.i.i.i, 2, !dbg !58095
  %i.cp = add i64 %i.co, %.sroa.0.026.i.i, !dbg !58096 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !58084, !noalias !57946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !58085, !noalias !57946
  %i.cq = icmp ult i64 %i.cp, 32, !dbg !57998
  br i1 %i.cq, label %bb.b, label %.loopexit.i.i, !dbg !57998

_RNvXNtNtCsci2cbTAlhZn_4rand4rngs5smallNtB2_8SmallRngNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed.exit: ; preds = %.loopexit.i.i
  %i.cr = trunc nuw i64 %.sroa.06.1.i.i to i32, !dbg !58097
  store i32 %i.cr, ptr %i.t, align 4, !dbg !58098, !alias.scope !57939, !noalias !57941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !58099, !noalias !57940
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !58100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.r, ptr noundef nonnull align 1 dereferenceable(32) %i.s, i64 32, i1 false), !dbg !58101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !58102, !noalias !57973
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false), !noalias !57973
  %i.cs = getelementptr inbounds nuw i8, ptr %i.r, i64 32, !dbg !58103
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !58104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !58105, !noalias !57979
  store ptr %i.r, ptr %i.b, align 8, !dbg !58106, !alias.scope !57980, !noalias !57981
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !58106
  store i64 32, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !58106, !alias.scope !57980, !noalias !57981
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !58106
  store ptr %i.cs, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !58106, !alias.scope !57980, !noalias !57981
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !58106
  store i64 0, ptr %.sroa.64.0..sroa_idx.i, align 8, !dbg !58106, !alias.scope !57980, !noalias !57981
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !58106
  store i64 8, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !58106, !alias.scope !57980, !noalias !57981
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !58107, !noalias !57973
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutyEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.ct, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b), !dbg !58108, !noalias !57982
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !58109, !noalias !57979
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.cw = load i64, ptr %i.cu, align 8, !dbg !58110, !alias.scope !57983, !noalias !57984, !noundef !2247 ; 2 uses
  %i.cx = load i64, ptr %i.cv, align 8, !dbg !58111, !alias.scope !57983, !noalias !57984, !noundef !2247
  %i.cy = icmp ult i64 %i.cw, %i.cx, !dbg !58110
  br i1 %i.cy, label %.lr.ph.i, label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs18xoshiro256plusplusNtB2_18Xoshiro256PlusPlusNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed.exit, !dbg !58110

.lr.ph.i:                                         ; preds = %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs5smallNtB2_8SmallRngNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.t, !dbg !58110

bb.t:                                             ; preds = %bb.t, %.lr.ph.i
  %i.da = phi i64 [ %i.cw, %.lr.ph.i ], [ %i.dh, %bb.t ] ; 3 uses
  %i.db = add nuw i64 %i.da, 1, !dbg !58112
  store i64 %i.db, ptr %i.cu, align 8, !dbg !58112, !alias.scope !57983, !noalias !57984
  %.val.i.i = load ptr, ptr %i.d, align 8, !dbg !58113, !alias.scope !57983, !noalias !57984, !nonnull !2247, !noundef !2247
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.da, !dbg !58114
  %i.dd = call { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.cz, i64 noundef %i.da), !dbg !58115, !noalias !57986 ; 2 uses
  %i.de = extractvalue { ptr, i64 } %i.dd, 0, !dbg !58116 ; 2 uses
  %i.df = extractvalue { ptr, i64 } %i.dd, 1, !dbg !58116
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.de) ], !noalias !57987
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !58117, !noalias !57973
  %i.dg = call noundef i64 @_RNvXsR_NtCscgRAwXFJnXP_4core5arrayAhj8_NtNtB7_7default7Default7defaultCs2g09Ig8GZd6_13polars_stream(), !dbg !58118, !noalias !57982
  store i64 %i.dg, ptr %i.c, align 8, !dbg !58118, !noalias !57973
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull %i.c, i64 noundef 8, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.de, i64 noundef %i.df, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27), !dbg !58119, !noalias !57982
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.c, align 8, !dbg !58120, !noalias !57973
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.dc, align 8, !dbg !58121, !noalias !57982
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !58122, !noalias !57973
  %i.dh = load i64, ptr %i.cu, align 8, !dbg !58110, !alias.scope !57983, !noalias !57984, !noundef !2247 ; 2 uses
  %i.di = load i64, ptr %i.cv, align 8, !dbg !58111, !alias.scope !57983, !noalias !57984, !noundef !2247
  %i.dj = icmp ult i64 %i.dh, %i.di, !dbg !58110
  br i1 %i.dj, label %bb.t, label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs18xoshiro256plusplusNtB2_18Xoshiro256PlusPlusNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed.exit, !dbg !58110

_RNvXNtNtCsci2cbTAlhZn_4rand4rngs18xoshiro256plusplusNtB2_18Xoshiro256PlusPlusNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed.exit: ; preds = %bb.t, %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs5smallNtB2_8SmallRngNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !58123, !noalias !57973
  %.sroa.0.0.copyload13.i = load i64, ptr %i.e, align 8, !dbg !58124, !noalias !57988 ; 2 uses
  %.sroa.3.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !58124
  %.sroa.3.0.copyload15.i = load i64, ptr %.sroa.3.0..sroa_idx14.i, align 8, !dbg !58124, !noalias !57988 ; 2 uses
  %.sroa.4.0..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !58124
  %.sroa.4.0.copyload18.i = load i64, ptr %.sroa.4.0..sroa_idx17.i, align 8, !dbg !58124, !noalias !57988 ; 2 uses
  %.sroa.5.0..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !58124
  %.sroa.5.0.copyload21.i = load i64, ptr %.sroa.5.0..sroa_idx20.i, align 8, !dbg !58124, !noalias !57988 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !58125, !noalias !57973
  %i.dk = icmp eq i64 %.sroa.0.0.copyload13.i, 0, !dbg !58126
  %i.dl = icmp eq i64 %.sroa.3.0.copyload15.i, 0
  %or.cond.i = select i1 %i.dk, i1 %i.dl, i1 false, !dbg !58127
  %i.dm = icmp eq i64 %.sroa.4.0.copyload18.i, 0
  %or.cond22.i = select i1 %or.cond.i, i1 %i.dm, i1 false, !dbg !58127
  %i.dn = icmp eq i64 %.sroa.5.0.copyload21.i, 0
  %or.cond23.i = select i1 %or.cond22.i, i1 %i.dn, i1 false, !dbg !58127 ; 4 uses
  %..sroa.0.0.copyload13.i = select i1 %or.cond23.i, i64 -2152535657050944081, i64 %.sroa.0.0.copyload13.i, !dbg !58128
  %..sroa.3.0.copyload15.i = select i1 %or.cond23.i, i64 7960286522194355700, i64 %.sroa.3.0.copyload15.i, !dbg !58128
  %..sroa.4.0.copyload18.i = select i1 %or.cond23.i, i64 487617019471545679, i64 %.sroa.4.0.copyload18.i, !dbg !58128
  %..sroa.5.0.copyload21.i = select i1 %or.cond23.i, i64 -537132696929009172, i64 %.sroa.5.0.copyload21.i, !dbg !58128
  store i64 %..sroa.0.0.copyload13.i, ptr %0, align 8, !dbg !58129, !noalias !57990
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !58129
  store i64 %..sroa.3.0.copyload15.i, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !58129, !noalias !57990
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !58129
  store i64 %..sroa.4.0.copyload18.i, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !58129, !noalias !57990
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !58129
  store i64 %..sroa.5.0.copyload21.i, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !58129, !noalias !57990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !58130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !58131
  ret void, !dbg !58132
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIBR_mEECs2g09Ig8GZd6_13polars_stream(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !58133 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !58244
  %.val = load ptr, ptr %i.b, align 8, !dbg !58244, !nonnull !2247, !noundef !2247 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !58244
  %.val10 = load i64, ptr %i.c, align 8, !dbg !58244, !noundef !2247 ; 3 uses
  %.idx = shl nuw nsw i64 %.val10, 2, !dbg !58245
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx, !dbg !58245
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58230), !dbg !58246
  %.val.i = load ptr, ptr %0, align 8, !dbg !58247, !alias.scope !58230, !noalias !58231, !nonnull !2247, !align !2484, !noundef !2247 ; 6 uses
  tail call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @122, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !58248, !noalias !58232
  %i.e = icmp eq i64 %.val10, 0
  br i1 %i.e, label %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_seqCs2g09Ig8GZd6_13polars_stream.exit.thread, label %.lr.ph.i.i, !dbg !58249

_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_seqCs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.a
  tail call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @126, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !58250, !noalias !58232
  br label %_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCs2g09Ig8GZd6_13polars_stream.exit, !dbg !58251

.lr.ph.i.i:                                       ; preds = %bb.a
  %.val7.peel.i.i = load i32, ptr %.val, align 4, !dbg !58252, !noalias !58233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !58253, !noalias !58234
  %i.f = call noundef i64 @_RNvXst_CsgHtAh0uHj3K_4itoamNtB5_8Unsigned3fmt(i32 noundef %.val7.peel.i.i, ptr noalias noundef nonnull dereferenceable(10) %i.a), !dbg !58254, !noalias !58234 ; 2 uses
  %i.g = sub nuw i64 10, %i.f, !dbg !58255
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f, !dbg !58256
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef range(i64 0, -9223372036854775808) %i.g), !dbg !58257, !noalias !58234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !58258, !noalias !58234
  %i.i = icmp eq i64 %.val10, 1, !dbg !58259
  br i1 %i.i, label %.loopexit, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRmINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB2Y_mEE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.preheader, !dbg !58251

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRmINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB2Y_mEE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.preheader: ; preds = %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 4, !dbg !58260
  br label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRmINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB2Y_mEE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i, !dbg !58251

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRmINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB2Y_mEE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i: ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRmINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB2Y_mEE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.preheader, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRmINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB2Y_mEE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i
  %i.k = phi ptr [ %i.l, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRmINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB2Y_mEE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ %i.j, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRmINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB2Y_mEE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.preheader ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4, !dbg !58260 ; 2 uses
  %.val7.i.i = load i32, ptr %i.k, align 4, !dbg !58252, !noalias !58233
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @124, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !58261, !noalias !58243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !58253, !noalias !58243
  %i.m = call noundef i64 @_RNvXst_CsgHtAh0uHj3K_4itoamNtB5_8Unsigned3fmt(i32 noundef %.val7.i.i, ptr noalias noundef nonnull dereferenceable(10) %i.a), !dbg !58254, !noalias !58243 ; 2 uses
  %i.n = sub nuw i64 10, %i.m, !dbg !58255
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.m, !dbg !58256
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef range(i64 0, -9223372036854775808) %i.n), !dbg !58257, !noalias !58243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !58258, !noalias !58243
end_hunk_0
begin_hunk_1_@llvm.sqrt.v2f64
!57616 = !DILocation(line: 455, column: 27, scope: !57608)
!57617 = !DILocation(line: 434, column: 15, scope: !1090, inlinedAt: !57605)
!57618 = !DILocation(line: 434, column: 9, scope: !1090, inlinedAt: !57605)
!57619 = !DILocation(line: 0, scope: !1090, inlinedAt: !57605)
!57620 = !DILocation(line: 442, column: 17, scope: !1090, inlinedAt: !57605)
!57621 = !DILocation(line: 442, column: 25, scope: !1093, inlinedAt: !57605)
!57622 = !DILocation(line: 435, column: 16, scope: !1090, inlinedAt: !57605)
!57623 = !DILocation(line: 767, column: 9, scope: !1094, inlinedAt: !57606)
!57624 = !DILocation(line: 210, column: 9, scope: !1096, inlinedAt: !57607)
!57625 = !DILocation(line: 443, column: 9, scope: !1090, inlinedAt: !57605)
!57626 = !DILocation(line: 977, column: 9, scope: !57604, inlinedAt: !57612)
!57627 = !DILocation(line: 452, column: 20, scope: !57608)
!57628 = !DILocation(line: 459, column: 14, scope: !57601)
!57629 = !DILocation(line: 552, column: 14, scope: !57609, inlinedAt: !57615)
!57630 = !DILocation(line: 2195, column: 9, scope: !57611, inlinedAt: !57616)
!57631 = !DILocation(line: 452, column: 17, scope: !57608)
!57632 = distinct !DISubprogram(name: "to_vec<u64, alloc::alloc::Global>", linkageName: "_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inyNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream", scope: !2840, file: !2836, line: 446, type: !2248, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57633 = distinct !DISubprogram(name: "with_capacity_in<u64, alloc::alloc::Global>", linkageName: "_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecyE16with_capacity_inCs2g09Ig8GZd6_13polars_stream", scope: !2319, file: !2316, line: 175, type: !2248, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57634 = distinct !DILexicalBlock(scope: !57632, file: !2836, line: 447, column: 17)
!57635 = distinct !DISubprogram(name: "with_capacity_in<u64, alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecyE16with_capacity_inCs2g09Ig8GZd6_13polars_stream", scope: !2322, file: !2320, line: 976, type: !2248, scopeLine: 976, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57636 = distinct !DILocation(line: 177, column: 20, scope: !57633, inlinedAt: !57644)
!57637 = distinct !DILocation(line: 438, column: 50, scope: !1095, inlinedAt: !57636)
!57638 = distinct !DILocation(line: 438, column: 21, scope: !1095, inlinedAt: !57636)
!57639 = distinct !DILexicalBlock(scope: !57634, file: !2836, line: 448, column: 17)
!57640 = distinct !DISubprogram(name: "copy_nonoverlapping<u64>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappingyECs2g09Ig8GZd6_13polars_stream", scope: !2266, file: !2265, line: 531, type: !2248, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57641 = distinct !DISubprogram(name: "copy_to_nonoverlapping<u64>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPy22copy_to_nonoverlappingCs2g09Ig8GZd6_13polars_stream", scope: !2311, file: !2309, line: 1247, type: !2248, scopeLine: 1247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57642 = distinct !DISubprogram(name: "set_len<u64, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecyE7set_lenCs2g09Ig8GZd6_13polars_stream", scope: !2322, file: !2320, line: 2188, type: !2248, scopeLine: 2188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57643 = !DILocation(line: 448, column: 29, scope: !57634)
!57644 = !DILocation(line: 977, column: 20, scope: !57635, inlinedAt: !57643)
!57645 = !DILocation(line: 454, column: 36, scope: !57639)
!57646 = !DILocation(line: 1252, column: 18, scope: !57641, inlinedAt: !57645)
!57647 = !DILocation(line: 455, column: 27, scope: !57639)
!57648 = !DILocation(line: 434, column: 15, scope: !1090, inlinedAt: !57636)
!57649 = !DILocation(line: 434, column: 9, scope: !1090, inlinedAt: !57636)
!57650 = !DILocation(line: 0, scope: !1090, inlinedAt: !57636)
!57651 = !DILocation(line: 442, column: 17, scope: !1090, inlinedAt: !57636)
!57652 = !DILocation(line: 442, column: 25, scope: !1093, inlinedAt: !57636)
!57653 = !DILocation(line: 435, column: 16, scope: !1090, inlinedAt: !57636)
!57654 = !DILocation(line: 767, column: 9, scope: !1094, inlinedAt: !57637)
!57655 = !DILocation(line: 210, column: 9, scope: !1096, inlinedAt: !57638)
!57656 = !DILocation(line: 443, column: 9, scope: !1090, inlinedAt: !57636)
!57657 = !DILocation(line: 977, column: 9, scope: !57635, inlinedAt: !57643)
!57658 = !DILocation(line: 452, column: 20, scope: !57639)
!57659 = !DILocation(line: 459, column: 14, scope: !57632)
!57660 = !DILocation(line: 552, column: 14, scope: !57640, inlinedAt: !57646)
!57661 = !DILocation(line: 2195, column: 9, scope: !57642, inlinedAt: !57647)
!57662 = !DILocation(line: 452, column: 17, scope: !57639)
!57663 = distinct !DISubprogram(name: "from_rng<rand::rngs::small::SmallRng, rand::rngs::thread::ThreadRng>", linkageName: "_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs5small8SmallRngNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng8from_rngNtNtB7_6thread9ThreadRngECs2g09Ig8GZd6_13polars_stream", scope: !57936, file: !57934, line: 147, type: !2248, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57664 = distinct !{!57664, i1 false, !"_RNvXs3_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB5_9ThreadRngNtCs53V80GKKPEw_9rand_core6TryRng14try_fill_bytes"}
!57665 = distinct !{!57665, !57664, !"_RNvXs3_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB5_9ThreadRngNtCs53V80GKKPEw_9rand_core6TryRng14try_fill_bytes: argument 0"}
!57666 = distinct !{!57666, !57664, !"_RNvXs3_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB5_9ThreadRngNtCs53V80GKKPEw_9rand_core6TryRng14try_fill_bytes: argument 1"}
!57667 = distinct !DILexicalBlock(scope: !57663, file: !57934, line: 148, column: 9)
!57668 = distinct !DISubprogram(name: "get<rand_core::block::BlockRng<rand::rngs::thread::ReseedingCore>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtCs53V80GKKPEw_9rand_core5block8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreEE3getCs2g09Ig8GZd6_13polars_stream", scope: !2349, file: !2347, line: 2443, type: !2248, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57669 = distinct !DISubprogram(name: "try_fill_bytes", linkageName: "_RNvXs3_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB5_9ThreadRngNtCs53V80GKKPEw_9rand_core6TryRng14try_fill_bytes", scope: !2374, file: !2370, line: 232, type: !2248, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57670 = distinct !DISubprogram(name: "fill_bytes<rand::rngs::thread::ThreadRng>", linkageName: "_RNvXCs53V80GKKPEw_9rand_coreNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtB2_3Rng10fill_bytesCs2g09Ig8GZd6_13polars_stream", scope: !2376, file: !2375, line: 84, type: !2261, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57671 = distinct !DILocation(line: 149, column: 13, scope: !57667)
!57672 = distinct !DILocation(line: 85, column: 20, scope: !57670, inlinedAt: !57671)
!57673 = distinct !DILocation(line: 235, column: 43, scope: !57669, inlinedAt: !57672)
!57674 = distinct !{!57674, i1 false, !"_RNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB5_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytesCs2g09Ig8GZd6_13polars_stream"}
!57675 = distinct !{!57675, !57674, !"_RNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB5_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytesCs2g09Ig8GZd6_13polars_stream: argument 0"}
!57676 = distinct !DILexicalBlock(scope: !57669, file: !2370, line: 235, column: 9)
!57677 = distinct !{!57677, i1 false, !"_RNvXCs53V80GKKPEw_9rand_coreNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtB2_3Rng10fill_bytesCs2g09Ig8GZd6_13polars_stream"}
!57678 = distinct !{!57678, !57677, !"_RNvXCs53V80GKKPEw_9rand_coreNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtB2_3Rng10fill_bytesCs2g09Ig8GZd6_13polars_stream: argument 0"}
!57679 = distinct !DISubprogram(name: "index<u32, 64, rand::rngs::thread::ReseedingCore>", linkageName: "_RNvMs1_NtCs53V80GKKPEw_9rand_core5blockINtB5_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE5indexCs2g09Ig8GZd6_13polars_stream", scope: !2369, file: !2366, line: 174, type: !2248, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57680 = distinct !DISubprogram(name: "fill_bytes<u32, 64, rand::rngs::thread::ReseedingCore>", linkageName: "_RNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB5_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytesCs2g09Ig8GZd6_13polars_stream", scope: !2369, file: !2366, line: 275, type: !2248, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57681 = distinct !DILexicalBlock(scope: !57680, file: !2366, line: 276, column: 9)
!57682 = distinct !DILocation(line: 236, column: 13, scope: !57676, inlinedAt: !57672)
!57683 = distinct !DILocation(line: 277, column: 30, scope: !57681, inlinedAt: !57682)
!57684 = distinct !{!57684, i1 false, !"_RNvXs3_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB5_9ThreadRngNtCs53V80GKKPEw_9rand_core6TryRng14try_fill_bytes"}
!57685 = distinct !{!57685, !57684, !"_RNvXs3_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB5_9ThreadRngNtCs53V80GKKPEw_9rand_core6TryRng14try_fill_bytes: argument 0"}
!57686 = distinct !{!57686, !57674, !"_RNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB5_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytesCs2g09Ig8GZd6_13polars_stream: argument 1"}
!57687 = distinct !DISubprogram(name: "try_from", linkageName: "_RNvXsi_NtNtNtCscgRAwXFJnXP_4core7convert3num18ptr_try_from_implsjINtB9_7TryFrommE8try_from", scope: !2400, file: !2397, line: 252, type: !2248, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57688 = distinct !DISubprogram(name: "try_into<u32, usize>", linkageName: "_RNvXs4_NtCscgRAwXFJnXP_4core7convertmINtB5_7TryIntojE8try_intoCs2g09Ig8GZd6_13polars_stream", scope: !2401, file: !2262, line: 818, type: !2248, scopeLine: 818, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57689 = distinct !DISubprogram(name: "into_usize", linkageName: "_RNvXNtNtCs53V80GKKPEw_9rand_core4word6sealedmNtB2_6Sealed10into_usize", scope: !2405, file: !2402, line: 40, type: !2248, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57690 = distinct !DILocation(line: 175, column: 25, scope: !57679, inlinedAt: !57683)
!57691 = distinct !DILocation(line: 41, column: 18, scope: !57689, inlinedAt: !57690)
!57692 = distinct !DILocation(line: 819, column: 9, scope: !57688, inlinedAt: !57691)
!57693 = distinct !DILexicalBlock(scope: !57681, file: !2366, line: 277, column: 9)
!57694 = distinct !DISubprogram(name: "try_from", linkageName: "_RNvXs0_NtNtNtCscgRAwXFJnXP_4core7convert3num18ptr_try_from_implsmINtB9_7TryFromjE8try_from", scope: !2406, file: !2397, line: 294, type: !2248, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57695 = distinct !DISubprogram(name: "try_into<usize, u32>", linkageName: "_RNvXs4_NtCscgRAwXFJnXP_4core7convertjINtB5_7TryIntomE8try_intoCs2g09Ig8GZd6_13polars_stream", scope: !2401, file: !2262, line: 818, type: !2248, scopeLine: 818, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57696 = distinct !DISubprogram(name: "from_usize", linkageName: "_RNvXNtNtCs53V80GKKPEw_9rand_core4word6sealedmNtB2_6Sealed10from_usize", scope: !2405, file: !2402, line: 36, type: !2248, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57697 = distinct !DISubprogram(name: "set_index<u32, 64, rand::rngs::thread::ReseedingCore>", linkageName: "_RNvMs1_NtCs53V80GKKPEw_9rand_core5blockINtB5_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE9set_indexCs2g09Ig8GZd6_13polars_stream", scope: !2369, file: !2366, line: 179, type: !2248, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57698 = distinct !DILocation(line: 306, column: 14, scope: !57693, inlinedAt: !57682)
!57699 = distinct !DILocation(line: 181, column: 27, scope: !57697, inlinedAt: !57698)
!57700 = distinct !DILocation(line: 37, column: 17, scope: !57696, inlinedAt: !57699)
!57701 = distinct !DILocation(line: 819, column: 9, scope: !57695, inlinedAt: !57700)
!57702 = distinct !DISubprogram(name: "unwrap<u32, core::num::error::TryFromIntError>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs2g09Ig8GZd6_13polars_stream", scope: !2260, file: !2258, line: 1227, type: !2248, scopeLine: 1227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57703 = distinct !DILexicalBlock(scope: !57702, file: !2258, line: 1233, column: 13)
!57704 = distinct !DILocation(line: 37, column: 28, scope: !57696, inlinedAt: !57699)
!57705 = distinct !{!57705, i1 false, !"_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate"}
!57706 = distinct !{!57706, !57705, !"_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate: argument 0"}
!57707 = distinct !{!57707, !57705, !"_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate: argument 1"}
!57708 = distinct !DILocation(line: 280, column: 27, scope: !57693, inlinedAt: !57682)
!57709 = distinct !DILocation(line: 53, column: 23, scope: !69, inlinedAt: !57708)
!57710 = distinct !DILocation(line: 280, column: 9, scope: !68, inlinedAt: !57709)
!57711 = distinct !DILexicalBlock(scope: !57693, file: !2366, line: 284, column: 13)
!57712 = distinct !DISubprogram(name: "index_mut<u8>", linkageName: "_RNvXs5_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE9index_mutCs2g09Ig8GZd6_13polars_stream", scope: !2414, file: !2411, line: 579, type: !2248, scopeLine: 579, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57713 = distinct !DISubprogram(name: "index_mut<u8, core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXs_NtNtCscgRAwXFJnXP_4core5slice5indexShINtNtNtB8_3ops5index8IndexMutINtNtBK_5range9RangeFromjEE9index_mutCs2g09Ig8GZd6_13polars_stream", scope: !2704, file: !2411, line: 30, type: !2248, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57714 = distinct !DILocation(line: 285, column: 34, scope: !57711, inlinedAt: !57682)
!57715 = distinct !DILocation(line: 31, column: 15, scope: !57713, inlinedAt: !57714)
!57716 = distinct !DISubprogram(name: "get_offset_len_mut_noubcheck<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index28get_offset_len_mut_noubcheckhECs2g09Ig8GZd6_13polars_stream", scope: !2413, file: !2411, line: 94, type: !2248, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57717 = distinct !DILexicalBlock(scope: !57716, file: !2411, line: 99, column: 5)
!57718 = distinct !DILexicalBlock(scope: !57712, file: !2411, line: 585, column: 13)
!57719 = distinct !DILocation(line: 586, column: 19, scope: !57718, inlinedAt: !57715)
!57720 = distinct !{!57720, i1 false, !"_RNvMNtCscgRAwXFJnXP_4core5sliceSh16chunks_exact_mutCs2g09Ig8GZd6_13polars_stream"}
!57721 = distinct !{!57721, !57720, !"_RNvMNtCscgRAwXFJnXP_4core5sliceSh16chunks_exact_mutCs2g09Ig8GZd6_13polars_stream: argument 0"}
!57722 = distinct !{!57722, !57720, !"_RNvMNtCscgRAwXFJnXP_4core5sliceSh16chunks_exact_mutCs2g09Ig8GZd6_13polars_stream: argument 1"}
!57723 = distinct !DISubprogram(name: "new<u8>", linkageName: "_RNvMs1x_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_14ChunksExactMuthE3newCs2g09Ig8GZd6_13polars_stream", scope: !57949, file: !2556, line: 2028, type: !2248, scopeLine: 2028, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57724 = distinct !DILexicalBlock(scope: !57723, file: !2556, line: 2029, column: 9)
!57725 = distinct !DILexicalBlock(scope: !57724, file: !2556, line: 2030, column: 9)
!57726 = distinct !DILexicalBlock(scope: !57725, file: !2556, line: 2032, column: 9)
!57727 = distinct !DISubprogram(name: "chunks_exact_mut<u8>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSh16chunks_exact_mutCs2g09Ig8GZd6_13polars_stream", scope: !2475, file: !2474, line: 1290, type: !2261, scopeLine: 1290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57728 = distinct !DILocation(line: 285, column: 47, scope: !57711, inlinedAt: !57682)
!57729 = distinct !DILocation(line: 1292, column: 9, scope: !57727, inlinedAt: !57728)
!57730 = distinct !DILexicalBlock(scope: !57711, file: !2366, line: 285, column: 13)
!57731 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u32>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckmECs2g09Ig8GZd6_13polars_stream", scope: !2413, file: !2411, line: 82, type: !2248, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57732 = distinct !DILexicalBlock(scope: !57731, file: !2411, line: 87, column: 5)
!57733 = distinct !DISubprogram(name: "index<u32>", linkageName: "_RNvXs5_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSmE5indexCs2g09Ig8GZd6_13polars_stream", scope: !2414, file: !2411, line: 567, type: !2248, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57734 = distinct !DILexicalBlock(scope: !57733, file: !2411, line: 573, column: 13)
!57735 = distinct !DISubprogram(name: "index<u32, core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSmINtNtNtB6_3ops5index5IndexINtNtBI_5range9RangeFromjEE5indexCs2g09Ig8GZd6_13polars_stream", scope: !2415, file: !2411, line: 18, type: !2248, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57736 = distinct !DISubprogram(name: "index<u32, core::ops::range::RangeFrom<usize>, 64>", linkageName: "_RNvXsd_NtCscgRAwXFJnXP_4core5arrayAmj40_INtNtNtB7_3ops5index5IndexINtNtBH_5range9RangeFromjEE5indexCs2g09Ig8GZd6_13polars_stream", scope: !2416, file: !2280, line: 389, type: !2248, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57737 = distinct !DILocation(line: 286, column: 39, scope: !57730, inlinedAt: !57682)
!57738 = distinct !DILocation(line: 390, column: 9, scope: !57736, inlinedAt: !57737)
!57739 = distinct !DILocation(line: 19, column: 15, scope: !57735, inlinedAt: !57738)
!57740 = distinct !DILocation(line: 574, column: 15, scope: !57734, inlinedAt: !57739)
!57741 = distinct !DISubprogram(name: "new<u32>", linkageName: "_RNvMs4_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_4ItermE3newCs2g09Ig8GZd6_13polars_stream", scope: !2559, file: !2556, line: 96, type: !2248, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57742 = distinct !DILexicalBlock(scope: !57741, file: !2556, line: 97, column: 9)
!57743 = distinct !DILexicalBlock(scope: !57742, file: !2556, line: 98, column: 9)
!57744 = distinct !DILexicalBlock(scope: !57743, file: !2556, line: 101, column: 13)
!57745 = distinct !DISubprogram(name: "iter<u32>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSm4iterCs2g09Ig8GZd6_13polars_stream", scope: !2475, file: !2474, line: 1040, type: !2248, scopeLine: 1040, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57746 = distinct !DILocation(line: 286, column: 49, scope: !57730, inlinedAt: !57682)
!57747 = distinct !DILocation(line: 1041, column: 9, scope: !57745, inlinedAt: !57746)
!57748 = distinct !{!57748, i1 false, !"_RINvYQINtNtNtCscgRAwXFJnXP_4core5slice4iter14ChunksExactMuthENtNtNtNtBb_4iter6traits8iterator8Iterator3zipQINtB7_4ItermEECs2g09Ig8GZd6_13polars_stream"}
!57749 = distinct !{!57749, !57748, !"_RINvYQINtNtNtCscgRAwXFJnXP_4core5slice4iter14ChunksExactMuthENtNtNtNtBb_4iter6traits8iterator8Iterator3zipQINtB7_4ItermEECs2g09Ig8GZd6_13polars_stream: argument 0"}
!57750 = distinct !{!57750, i1 false, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E3newCs2g09Ig8GZd6_13polars_stream"}
!57751 = distinct !{!57751, !57750, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E3newCs2g09Ig8GZd6_13polars_stream: argument 0"}
!57752 = distinct !{!57752, !57748, !"_RINvYQINtNtNtCscgRAwXFJnXP_4core5slice4iter14ChunksExactMuthENtNtNtNtBb_4iter6traits8iterator8Iterator3zipQINtB7_4ItermEECs2g09Ig8GZd6_13polars_stream: argument 2"}
!57753 = distinct !{!57753, !57748, !"_RINvYQINtNtNtCscgRAwXFJnXP_4core5slice4iter14ChunksExactMuthENtNtNtNtBb_4iter6traits8iterator8Iterator3zipQINtB7_4ItermEECs2g09Ig8GZd6_13polars_stream: argument 1"}
!57754 = distinct !{!57754, !57750, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E3newCs2g09Ig8GZd6_13polars_stream: argument 2"}
!57755 = distinct !{!57755, !57750, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E3newCs2g09Ig8GZd6_13polars_stream: argument 1"}
!57756 = distinct !DISubprogram(name: "new<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>>", linkageName: "_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E3newCs2g09Ig8GZd6_13polars_stream", scope: !2790, file: !2788, line: 154, type: !2248, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57757 = distinct !DISubprogram(name: "new<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>>", linkageName: "_RNvMNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB2_3ZipQINtNtNtB8_5slice4iter14ChunksExactMuthEQINtBX_4ItermEE3newCs2g09Ig8GZd6_13polars_stream", scope: !2857, file: !2788, line: 23, type: !2248, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57758 = distinct !DISubprogram(name: "zip<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>>", linkageName: "_RINvYQINtNtNtCscgRAwXFJnXP_4core5slice4iter14ChunksExactMuthENtNtNtNtBb_4iter6traits8iterator8Iterator3zipQINtB7_4ItermEECs2g09Ig8GZd6_13polars_stream", scope: !2767, file: !2764, line: 626, type: !2248, scopeLine: 626, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57759 = distinct !DILexicalBlock(scope: !57730, file: !2366, line: 286, column: 13)
!57760 = distinct !DILocation(line: 288, column: 42, scope: !57759, inlinedAt: !57682)
!57761 = distinct !DILocation(line: 631, column: 9, scope: !57758, inlinedAt: !57760)
!57762 = distinct !DILocation(line: 24, column: 9, scope: !57757, inlinedAt: !57761)
!57763 = distinct !DILexicalBlock(scope: !57759, file: !2366, line: 288, column: 13)
!57764 = distinct !{!57764, i1 false, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCs2g09Ig8GZd6_13polars_stream"}
!57765 = distinct !{!57765, !57764, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCs2g09Ig8GZd6_13polars_stream: argument 1"}
!57766 = distinct !{!57766, !57764, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCs2g09Ig8GZd6_13polars_stream: argument 0"}
!57767 = distinct !DISubprogram(name: "size_hint<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>>", linkageName: "_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCs2g09Ig8GZd6_13polars_stream", scope: !2790, file: !2788, line: 220, type: !2248, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57768 = distinct !DISubprogram(name: "size_hint<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>>", linkageName: "_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipQINtNtNtBa_5slice4iter14ChunksExactMuthEQINtBZ_4ItermEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2g09Ig8GZd6_13polars_stream", scope: !2791, file: !2788, line: 89, type: !2248, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57769 = distinct !DISubprogram(name: "len<core::iter::adapters::zip::Zip<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>>>", linkageName: "_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtBU_4ItermEENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenCs2g09Ig8GZd6_13polars_stream", scope: !2957, file: !2955, line: 116, type: !2248, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57770 = distinct !DILocation(line: 289, column: 37, scope: !57763, inlinedAt: !57682)
!57771 = distinct !DILocation(line: 117, column: 35, scope: !57769, inlinedAt: !57770)
!57772 = distinct !DILocation(line: 90, column: 9, scope: !57768, inlinedAt: !57771)
!57773 = distinct !DILexicalBlock(scope: !57767, file: !2788, line: 221, column: 9)
!57774 = distinct !DILexicalBlock(scope: !57773, file: !2788, line: 222, column: 9)
!57775 = distinct !DILexicalBlock(scope: !57774, file: !2788, line: 224, column: 9)
!57776 = distinct !DISubprogram(name: "min<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3cmp3minjECs2g09Ig8GZd6_13polars_stream", scope: !2360, file: !2359, line: 1575, type: !2248, scopeLine: 1575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57777 = distinct !DILexicalBlock(scope: !57775, file: !2788, line: 227, column: 13)
!57778 = distinct !DILocation(line: 227, column: 40, scope: !57777, inlinedAt: !57772)
!57779 = distinct !DILocation(line: 1576, column: 8, scope: !57776, inlinedAt: !57778)
!57780 = distinct !DILocation(line: 224, column: 21, scope: !57774, inlinedAt: !57772)
!57781 = distinct !DILocation(line: 1576, column: 8, scope: !57776, inlinedAt: !57780)
!57782 = distinct !DILexicalBlock(scope: !57769, file: !2955, line: 117, column: 9)
!57783 = distinct !DISubprogram(name: "eq<usize>", linkageName: "_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionjENtNtB7_3cmp9PartialEq2eqCs2g09Ig8GZd6_13polars_stream", scope: !2712, file: !2288, line: 2439, type: !2248, scopeLine: 2439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57784 = distinct !DILexicalBlock(scope: !57782, file: !2289, line: 45, column: 13)
!57785 = distinct !DILocation(line: 46, column: 21, scope: !57784, inlinedAt: !57770)
!57786 = distinct !DILexicalBlock(scope: !57784, file: !2289, line: 47, column: 21)
!57787 = distinct !DISubprogram(name: "fold<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>, (), core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(&mut [u8], &u32), rand_core::block::{impl#5}::fill_bytes::{closure_env#0}<u32, 64, rand::rngs::thread::ReseedingCore>>>", linkageName: "_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1Q_8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB38_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECs2g09Ig8GZd6_13polars_stream", scope: !2791, file: !2788, line: 99, type: !2248, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57788 = distinct !DISubprogram(name: "for_each<core::iter::adapters::zip::Zip<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>>, rand_core::block::{impl#5}::fill_bytes::{closure_env#0}<u32, 64, rand::rngs::thread::ReseedingCore>>", linkageName: "_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtBV_4ItermEENtNtNtBa_6traits8iterator8Iterator8for_eachNCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB2z_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0ECs2g09Ig8GZd6_13polars_stream", scope: !2767, file: !2764, line: 877, type: !2248, scopeLine: 877, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57789 = distinct !DILexicalBlock(scope: !57763, file: !2366, line: 289, column: 13)
!57790 = distinct !DILocation(line: 290, column: 20, scope: !57789, inlinedAt: !57682)
!57791 = distinct !DILocation(line: 887, column: 14, scope: !57788, inlinedAt: !57790)
!57792 = distinct !{!57792, i1 false, !"_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3r_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECs2g09Ig8GZd6_13polars_stream"}
!57793 = distinct !{!57793, !57792, !"_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3r_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECs2g09Ig8GZd6_13polars_stream: argument 0"}
!57794 = distinct !{!57794, i1 false, !"_RINvXsj_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEENtB6_8SpecFold9spec_folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3o_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECs2g09Ig8GZd6_13polars_stream"}
!57795 = distinct !{!57795, !57794, !"_RINvXsj_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEENtB6_8SpecFold9spec_folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3o_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECs2g09Ig8GZd6_13polars_stream: argument 0"}
!57796 = distinct !DISubprogram(name: "fold<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>, (), core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(&mut [u8], &u32), rand_core::block::{impl#5}::fill_bytes::{closure_env#0}<u32, 64, rand::rngs::thread::ReseedingCore>>>", linkageName: "_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3r_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECs2g09Ig8GZd6_13polars_stream", scope: !2790, file: !2788, line: 244, type: !2248, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57797 = distinct !DILocation(line: 103, column: 9, scope: !57787, inlinedAt: !57791)
!57798 = distinct !DISubprogram(name: "spec_fold<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>, (), core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(&mut [u8], &u32), rand_core::block::{impl#5}::fill_bytes::{closure_env#0}<u32, 64, rand::rngs::thread::ReseedingCore>>>", linkageName: "_RINvXsj_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEENtB6_8SpecFold9spec_folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3o_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECs2g09Ig8GZd6_13polars_stream", scope: !57957, file: !2788, line: 660, type: !2248, scopeLine: 660, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57799 = distinct !DILexicalBlock(scope: !57798, file: !2788, line: 664, column: 9)
!57800 = distinct !DILocation(line: 248, column: 9, scope: !57796, inlinedAt: !57797)
!57801 = distinct !{!57801, i1 false, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCs2g09Ig8GZd6_13polars_stream"}
!57802 = distinct !{!57802, !57801, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCs2g09Ig8GZd6_13polars_stream: argument 1"}
!57803 = distinct !{!57803, !57801, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCs2g09Ig8GZd6_13polars_stream: argument 0"}
!57804 = distinct !DILexicalBlock(scope: !57799, file: !2788, line: 666, column: 82)
!57805 = distinct !DILocation(line: 666, column: 54, scope: !57804, inlinedAt: !57800)
!57806 = distinct !DILocation(line: 227, column: 40, scope: !57777, inlinedAt: !57805)
!57807 = distinct !DILocation(line: 1576, column: 8, scope: !57776, inlinedAt: !57806)
!57808 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !2949, file: !2359, line: 1917, type: !2248, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57809 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCs2g09Ig8GZd6_13polars_stream", scope: !2952, file: !2950, line: 780, type: !2248, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57810 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream", scope: !2953, file: !2950, line: 865, type: !2248, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57811 = distinct !DILexicalBlock(scope: !57799, file: !2788, line: 666, column: 13)
!57812 = distinct !DILexicalBlock(scope: !57811, file: !2788, line: 673, column: 13)
!57813 = distinct !DILocation(line: 673, column: 22, scope: !57960, inlinedAt: !57800)
!57814 = distinct !DILocation(line: 866, column: 14, scope: !57810, inlinedAt: !57813)
!57815 = distinct !DILocation(line: 781, column: 12, scope: !57809, inlinedAt: !57814)
!57816 = distinct !DISubprogram(name: "next<core::slice::iter::ChunksExactMut<u8>>", linkageName: "_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator4nextCs2g09Ig8GZd6_13polars_stream", scope: !2787, file: !2764, line: 4265, type: !2261, scopeLine: 4265, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57817 = distinct !DILocation(line: 677, column: 38, scope: !57812, inlinedAt: !57800)
!57818 = distinct !DILocation(line: 4266, column: 18, scope: !57816, inlinedAt: !57817)
!57819 = distinct !DILocation(line: 2053, column: 33, scope: !1039, inlinedAt: !57818)
!57820 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !2518, file: !2462, line: 886, type: !2248, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57821 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !2954, file: !2950, line: 212, type: !2248, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57822 = distinct !DILexicalBlock(scope: !57809, file: !2950, line: 782, column: 13)
!57823 = distinct !DILocation(line: 784, column: 35, scope: !57822, inlinedAt: !57814)
!57824 = distinct !DILocation(line: 214, column: 28, scope: !57821, inlinedAt: !57823)
!57825 = distinct !{!57825, i1 false, !"_RNvXs1y_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream"}
!57826 = distinct !{!57826, !57825, !"_RNvXs1y_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream: argument 0"}
!57827 = distinct !DILocation(line: 2196, column: 32, scope: !1038, inlinedAt: !57819)
!57828 = distinct !DILocation(line: 2109, column: 40, scope: !1037, inlinedAt: !57827)
!57829 = distinct !DISubprogram(name: "{closure#0}<u8>", linkageName: "_RNCNvXs1y_NtNtCscgRAwXFJnXP_4core5slice4iterINtB8_14ChunksExactMuthENtNtNtNtBc_4iter6traits8iterator8Iterator4next0Cs2g09Ig8GZd6_13polars_stream", scope: !57962, file: !2556, line: 2053, type: !2248, scopeLine: 2053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57830 = distinct !DILexicalBlock(scope: !57829, file: !2556, line: 2053, column: 96)
!57831 = distinct !DISubprogram(name: "and_then<(&mut [u8], &mut [u8]), &mut [u8], core::slice::iter::{impl#98}::next::{closure_env#0}<u8>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionTQShBJ_EE8and_thenBJ_NCNvXs1y_NtNtB5_5slice4iterINtB1c_14ChunksExactMuthENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECs2g09Ig8GZd6_13polars_stream", scope: !2291, file: !2288, line: 1541, type: !2248, scopeLine: 1541, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57832 = distinct !DILexicalBlock(scope: !57831, file: !2288, line: 1546, column: 13)
!57833 = distinct !DILocation(line: 2053, column: 71, scope: !1039, inlinedAt: !57818)
!57834 = distinct !DILocation(line: 1546, column: 24, scope: !57832, inlinedAt: !57833)
!57835 = distinct !{!57835, i1 false, !"_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream"}
!57836 = distinct !{!57836, !57835, !"_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream: argument 0"}
!57837 = distinct !DISubprogram(name: "next<core::slice::iter::Iter<u32>>", linkageName: "_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter4ItermENtB5_8Iterator4nextCs2g09Ig8GZd6_13polars_stream", scope: !2787, file: !2764, line: 4265, type: !2261, scopeLine: 4265, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57838 = distinct !DILocation(line: 677, column: 72, scope: !57812, inlinedAt: !57800)
!57839 = distinct !DILocation(line: 4266, column: 18, scope: !57837, inlinedAt: !57838)
!57840 = distinct !DILocation(line: 180, column: 28, scope: !1589, inlinedAt: !57839)
!57841 = distinct !DILocation(line: 185, column: 40, scope: !1589, inlinedAt: !57839)
!57842 = distinct !{!57842, i1 false, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB1u_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0Cs2g09Ig8GZd6_13polars_stream"}
!57843 = distinct !{!57843, !57842, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB1u_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0Cs2g09Ig8GZd6_13polars_stream: argument 0"}
!57844 = distinct !{!57844, i1 false, !"_RNCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB7_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0Cs2g09Ig8GZd6_13polars_stream"}
!57845 = distinct !{!57845, !57844, !"_RNCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB7_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0Cs2g09Ig8GZd6_13polars_stream: argument 0"}
!57846 = distinct !DISubprogram(name: "{closure#0}<u32, 64, rand::rngs::thread::ReseedingCore>", linkageName: "_RNCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB7_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0Cs2g09Ig8GZd6_13polars_stream", scope: !57966, file: !2366, line: 290, type: !2261, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57847 = distinct !DILexicalBlock(scope: !57846, file: !2366, line: 290, column: 44)
!57848 = distinct !DISubprogram(name: "{closure#0}<(&mut [u8], &u32), rand_core::block::{impl#5}::fill_bytes::{closure_env#0}<u32, 64, rand::rngs::thread::ReseedingCore>>", linkageName: "_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB1u_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0Cs2g09Ig8GZd6_13polars_stream", scope: !2794, file: !2764, line: 884, type: !2261, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57849 = distinct !DILexicalBlock(scope: !57812, file: !2788, line: 674, column: 17)
!57850 = distinct !DILocation(line: 678, column: 25, scope: !57849, inlinedAt: !57800)
!57851 = distinct !DILocation(line: 884, column: 29, scope: !57848, inlinedAt: !57850)
!57852 = distinct !DISubprogram(name: "copy_from_slice<u8>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSh15copy_from_sliceCs2g09Ig8GZd6_13polars_stream", scope: !2475, file: !2474, line: 4320, type: !2248, scopeLine: 4320, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57853 = distinct !DILocation(line: 290, column: 50, scope: !57847, inlinedAt: !57851)
!57854 = distinct !DISubprogram(name: "next<u32>", linkageName: "_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream", scope: !2561, file: !2560, line: 157, type: !2248, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57855 = distinct !DILexicalBlock(scope: !57789, file: !2366, line: 294, column: 43)
!57856 = distinct !DILocation(line: 294, column: 36, scope: !57855, inlinedAt: !57682)
!57857 = distinct !DILexicalBlock(scope: !57854, file: !2560, line: 161, column: 17)
!57858 = distinct !DISubprogram(name: "eq<u32>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullmENtNtB9_3cmp9PartialEq2eqCs2g09Ig8GZd6_13polars_stream", scope: !2562, file: !2305, line: 1716, type: !2248, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57859 = distinct !DILexicalBlock(scope: !57857, file: !2560, line: 162, column: 17)
!57860 = distinct !DILocation(line: 180, column: 28, scope: !57859, inlinedAt: !57856)
!57861 = distinct !DISubprogram(name: "add<u32>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullmE3addCs2g09Ig8GZd6_13polars_stream", scope: !2307, file: !2305, line: 651, type: !2248, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57862 = distinct !DILocation(line: 185, column: 40, scope: !57859, inlinedAt: !57856)
!57863 = distinct !DILexicalBlock(scope: !57855, file: !2366, line: 296, column: 17)
!57864 = distinct !DILexicalBlock(scope: !57863, file: !2366, line: 297, column: 17)
!57865 = distinct !DISubprogram(name: "checked_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj11checked_sub", scope: !2518, file: !2462, line: 971, type: !2248, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57866 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE5indexCs2g09Ig8GZd6_13polars_stream", scope: !2693, file: !2411, line: 435, type: !2248, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57867 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range7RangeTojEINtB5_10SliceIndexShE5indexCs2g09Ig8GZd6_13polars_stream", scope: !2784, file: !2411, line: 528, type: !2248, scopeLine: 528, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57868 = distinct !DISubprogram(name: "index<u8, core::ops::range::RangeTo<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexShINtNtNtB6_3ops5index5IndexINtNtBI_5range7RangeTojEE5indexCs2g09Ig8GZd6_13polars_stream", scope: !2415, file: !2411, line: 18, type: !2248, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57869 = distinct !DILocation(line: 299, column: 73, scope: !57864, inlinedAt: !57682)
!57870 = distinct !DILocation(line: 19, column: 15, scope: !57969, inlinedAt: !57869)
!57871 = distinct !DILocation(line: 529, column: 23, scope: !57867, inlinedAt: !57870)
!57872 = distinct !DILocation(line: 437, column: 32, scope: !57866, inlinedAt: !57871)
!57873 = distinct !DISubprogram(name: "copy_from_slice<u8>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSh15copy_from_sliceCs2g09Ig8GZd6_13polars_stream", scope: !2475, file: !2474, line: 4320, type: !2248, scopeLine: 4320, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57874 = distinct !DILocation(line: 299, column: 30, scope: !57864, inlinedAt: !57682)
!57875 = distinct !DISubprogram(name: "from_seed", linkageName: "_RNvXNtNtCsci2cbTAlhZn_4rand4rngs5smallNtB2_8SmallRngNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed", scope: !57972, file: !57970, line: 86, type: !2248, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57876 = distinct !DILocation(line: 150, column: 9, scope: !57667)
!57877 = distinct !{!57877, i1 false, !"_RNvXNtNtCsci2cbTAlhZn_4rand4rngs5smallNtB2_8SmallRngNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed"}
!57878 = distinct !{!57878, !57877, !"_RNvXNtNtCsci2cbTAlhZn_4rand4rngs5smallNtB2_8SmallRngNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed: argument 1"}
!57879 = distinct !{!57879, !57877, !"_RNvXNtNtCsci2cbTAlhZn_4rand4rngs5smallNtB2_8SmallRngNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed: argument 0"}
!57880 = distinct !{!57880, i1 false, !"_RNvXNtNtCsci2cbTAlhZn_4rand4rngs18xoshiro256plusplusNtB2_18Xoshiro256PlusPlusNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed"}
!57881 = distinct !{!57881, !57880, !"_RNvXNtNtCsci2cbTAlhZn_4rand4rngs18xoshiro256plusplusNtB2_18Xoshiro256PlusPlusNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed: argument 1"}
!57882 = distinct !{!57882, !57880, !"_RNvXNtNtCsci2cbTAlhZn_4rand4rngs18xoshiro256plusplusNtB2_18Xoshiro256PlusPlusNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed: argument 0"}
!57883 = distinct !{!57883, i1 false, !"_RINvNtCs53V80GKKPEw_9rand_core5utils10read_wordsyKj4_ECs2g09Ig8GZd6_13polars_stream"}
!57884 = distinct !{!57884, !57883, !"_RINvNtCs53V80GKKPEw_9rand_core5utils10read_wordsyKj4_ECs2g09Ig8GZd6_13polars_stream: argument 1"}
!57885 = distinct !{!57885, !57883, !"_RINvNtCs53V80GKKPEw_9rand_core5utils10read_wordsyKj4_ECs2g09Ig8GZd6_13polars_stream: argument 0"}
!57886 = distinct !DISubprogram(name: "read_words<u64, 4>", linkageName: "_RINvNtCs53V80GKKPEw_9rand_core5utils10read_wordsyKj4_ECs2g09Ig8GZd6_13polars_stream", scope: !57975, file: !57974, line: 141, type: !2248, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57887 = distinct !DISubprogram(name: "from_seed", linkageName: "_RNvXNtNtCsci2cbTAlhZn_4rand4rngs18xoshiro256plusplusNtB2_18Xoshiro256PlusPlusNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed", scope: !57978, file: !57976, line: 34, type: !2248, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57888 = distinct !DILexicalBlock(scope: !57875, file: !57970, line: 90, column: 9)
!57889 = distinct !DILocation(line: 91, column: 18, scope: !57888, inlinedAt: !57876)
!57890 = distinct !DILocation(line: 35, column: 21, scope: !57887, inlinedAt: !57889)
!57891 = distinct !DILexicalBlock(scope: !57886, file: !57974, line: 143, column: 5)
!57892 = distinct !DILocation(line: 144, column: 22, scope: !57891, inlinedAt: !57890)
!57893 = distinct !DILocation(line: 1244, column: 9, scope: !1044, inlinedAt: !57892)
!57894 = distinct !DILocation(line: 1855, column: 41, scope: !1103, inlinedAt: !57893)
!57895 = distinct !DILocation(line: 2053, column: 64, scope: !987, inlinedAt: !57894)
!57896 = distinct !DISubprogram(name: "add<u64>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOy3addCs2g09Ig8GZd6_13polars_stream", scope: !2478, file: !2476, line: 927, type: !2248, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57897 = distinct !DISubprogram(name: "new<u64>", linkageName: "_RNvMsa_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_7IterMutyE3newCs2g09Ig8GZd6_13polars_stream", scope: !2732, file: !2556, line: 221, type: !2248, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57898 = distinct !DILexicalBlock(scope: !57897, file: !2556, line: 222, column: 9)
!57899 = distinct !DILexicalBlock(scope: !57898, file: !2556, line: 223, column: 9)
!57900 = distinct !DISubprogram(name: "iter_mut<u64>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSy8iter_mutCs2g09Ig8GZd6_13polars_stream", scope: !2475, file: !2474, line: 1060, type: !2248, scopeLine: 1060, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57901 = distinct !DILexicalBlock(scope: !57891, file: !57974, line: 144, column: 5)
!57902 = distinct !DILocation(line: 145, column: 29, scope: !57901, inlinedAt: !57890)
!57903 = distinct !DILocation(line: 1061, column: 9, scope: !57900, inlinedAt: !57902)
!57904 = distinct !DILocation(line: 242, column: 82, scope: !57899, inlinedAt: !57903)
!57905 = distinct !{!57905, i1 false, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7IterMutyENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_11ChunksExacthEECs2g09Ig8GZd6_13polars_stream"}
!57906 = distinct !{!57906, !57905, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7IterMutyENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_11ChunksExacthEECs2g09Ig8GZd6_13polars_stream: argument 1"}
!57907 = distinct !{!57907, !57905, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7IterMutyENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_11ChunksExacthEECs2g09Ig8GZd6_13polars_stream: argument 0"}
!57908 = distinct !DILocation(line: 145, column: 40, scope: !57901, inlinedAt: !57890)
!57909 = distinct !{!57909, i1 false, !"_RNvXNtNtNtCscgRAwXFJnXP_4core4iter6traits7collectINtNtNtB8_5slice4iter11ChunksExacthENtB2_12IntoIterator9into_iterCs2g09Ig8GZd6_13polars_stream"}
!57910 = distinct !{!57910, !57909, !"_RNvXNtNtNtCscgRAwXFJnXP_4core4iter6traits7collectINtNtNtB8_5slice4iter11ChunksExacthENtB2_12IntoIterator9into_iterCs2g09Ig8GZd6_13polars_stream: argument 1"}
!57911 = distinct !{!57911, !57909, !"_RNvXNtNtNtCscgRAwXFJnXP_4core4iter6traits7collectINtNtNtB8_5slice4iter11ChunksExacthENtB2_12IntoIterator9into_iterCs2g09Ig8GZd6_13polars_stream: argument 0"}
!57912 = distinct !DILocation(line: 631, column: 30, scope: !1524, inlinedAt: !57908)
!57913 = distinct !DILocation(line: 631, column: 9, scope: !1524, inlinedAt: !57908)
!57914 = distinct !{!57914, i1 false, !"_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutyEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs2g09Ig8GZd6_13polars_stream"}
!57915 = distinct !{!57915, !57914, !"_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutyEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs2g09Ig8GZd6_13polars_stream: argument 1"}
!57916 = distinct !{!57916, !57914, !"_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutyEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs2g09Ig8GZd6_13polars_stream: argument 0"}
!57917 = distinct !DISubprogram(name: "next<core::slice::iter::IterMut<u64>, core::slice::iter::ChunksExact<u8>>", linkageName: "_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter7IterMutyEINtBY_11ChunksExacthEENtNtNtB8_6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream", scope: !2791, file: !2788, line: 84, type: !2248, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57918 = distinct !DILexicalBlock(scope: !57901, file: !57974, line: 145, column: 5)
!57919 = distinct !DILocation(line: 145, column: 25, scope: !57985, inlinedAt: !57890)
!57920 = distinct !DILocation(line: 85, column: 9, scope: !57917, inlinedAt: !57919)
!57921 = distinct !DILocation(line: 313, column: 30, scope: !1528, inlinedAt: !57920)
!57922 = distinct !DILocation(line: 429, column: 60, scope: !1530, inlinedAt: !57921)
!57923 = distinct !DILexicalBlock(scope: !57918, file: !57974, line: 145, column: 5)
!57924 = distinct !DISubprogram(name: "copy_from_slice<u8>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSh15copy_from_sliceCs2g09Ig8GZd6_13polars_stream", scope: !2475, file: !2474, line: 4320, type: !2248, scopeLine: 4320, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57925 = distinct !DILexicalBlock(scope: !57923, file: !57974, line: 146, column: 9)
!57926 = distinct !DILocation(line: 147, column: 22, scope: !57925, inlinedAt: !57890)
!57927 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvXNtNtCsci2cbTAlhZn_4rand4rngs18xoshiro256plusplusNtB4_18Xoshiro256PlusPlusNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed0Cs2g09Ig8GZd6_13polars_stream", scope: !57989, file: !57976, line: 38, type: !2261, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57928 = distinct !DILexicalBlock(scope: !57927, file: !57976, line: 38, column: 34)
!57929 = distinct !DISubprogram(name: "all<u64, rand::rngs::xoshiro256plusplus::{impl#0}::from_seed::{closure_env#0}>", linkageName: "_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvXNtNtCsci2cbTAlhZn_4rand4rngs18xoshiro256plusplusNtB1G_18Xoshiro256PlusPlusNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed0ECs2g09Ig8GZd6_13polars_stream", scope: !2561, file: !2560, line: 309, type: !2248, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!57930 = distinct !DILexicalBlock(scope: !57929, file: !2560, line: 314, column: 49)
!57931 = distinct !DILexicalBlock(scope: !57887, file: !57976, line: 35, column: 9)
!57932 = distinct !DILocation(line: 38, column: 25, scope: !57931, inlinedAt: !57889)
!57933 = distinct !DILocation(line: 315, column: 25, scope: !57930, inlinedAt: !57932)
!57934 = !DIFile(filename: "src/seedable_rng.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rand_core-0.10.1", checksumkind: CSK_MD5, checksum: "eb03674c5280abd989777b5facaedc75")
!57935 = !DINamespace(name: "seedable_rng", scope: !2367)
!57936 = !DINamespace(name: "SeedableRng", scope: !57935)
!57937 = !{!57665}
!57938 = !{!57666}
!57939 = !{!57675}
!57940 = !{!57678}
!57941 = !{!57686, !57685, !57678}
!57942 = !{!57685}
!57943 = !{!57706, !57675}
!57944 = !{!57707, !57686, !57685, !57678}
!57945 = !{!57707, !57685}
!57946 = !{!57675, !57686, !57685, !57678}
!57947 = !{!57721}
!57948 = !{!57722, !57675, !57686, !57685, !57678}
!57949 = !DINamespace(name: "ChunksExactMut", scope: !2557)
!57950 = !{!57751, !57749}
!57951 = !{!57755, !57754, !57753, !57752, !57675, !57686, !57685, !57678}
!57952 = !{!57766, !57765, !57675, !57686, !57685, !57678}
!57953 = !{!57766, !57685}
!57954 = !{!57793}
!57955 = !{!57795}
!57956 = !{!57795, !57793}
!57957 = !DINamespace(name: "{impl#21}", scope: !2789)
!57958 = !{!57803, !57802, !57795, !57793, !57675, !57686, !57685, !57678}
!57959 = !{!57803, !57685}
!57960 = !DILexicalBlockFile(scope: !57812, file: !2788, discriminator: 2)
!57961 = !{!57826}
!57962 = !DINamespace(name: "next", scope: !2786)
!57963 = !{!57836}
!57964 = !{!57845, !57843, !57795, !57793, !57675, !57686, !57685, !57678}
!57965 = !DINamespace(name: "{impl#5}", scope: !2368)
!57966 = !DINamespace(name: "fill_bytes", scope: !57965)
!57967 = !{!57845, !57843, !57685}
!57968 = !DILexicalBlockFile(scope: !57693, file: !2420, discriminator: 0)
!57969 = !DILexicalBlockFile(scope: !57868, file: !2411, discriminator: 2)
!57970 = !DIFile(filename: "src/rngs/small.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rand-0.10.1", checksumkind: CSK_MD5, checksum: "531233836c71e25323418098c336fa10")
!57971 = !DINamespace(name: "small", scope: !2372)
!57972 = !DINamespace(name: "{impl#0}", scope: !57971)
!57973 = !{!57885, !57884, !57882, !57881, !57879, !57878}
!57974 = !DIFile(filename: "src/utils.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rand_core-0.10.1", checksumkind: CSK_MD5, checksum: "fbe1baa64c669dc0f9cae48f4aa2323d")
!57975 = !DINamespace(name: "utils", scope: !2367)
!57976 = !DIFile(filename: "src/rngs/xoshiro256plusplus.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rand-0.10.1", checksumkind: CSK_MD5, checksum: "6a183136163689a7a27dcd72eb7d3554")
!57977 = !DINamespace(name: "xoshiro256plusplus", scope: !2372)
!57978 = !DINamespace(name: "{impl#0}", scope: !57977)
!57979 = !{!57907, !57906, !57885, !57882, !57881, !57879, !57878}
!57980 = !{!57911, !57910}
!57981 = !{!57907, !57885, !57882, !57881, !57879, !57878}
!57982 = !{!57885, !57882, !57879, !57878}
!57983 = !{!57915}
!57984 = !{!57916, !57885, !57882, !57881, !57879, !57878}
!57985 = !DILexicalBlockFile(scope: !57918, file: !57974, discriminator: 2)
!57986 = !{!57916, !57885, !57882, !57879, !57878}
!57987 = !{!57879, !57878}
!57988 = !{!57884, !57882, !57881, !57879, !57878}
!57989 = !DINamespace(name: "from_seed", scope: !57978)
!57990 = !{!57878}
!57991 = !DILocation(line: 148, column: 13, scope: !57663)
!57992 = !DILocation(line: 148, column: 24, scope: !57663)
!57993 = !DILocation(line: 149, column: 13, scope: !57667)
!57994 = !DILocation(line: 2447, column: 9, scope: !57668, inlinedAt: !57673)
!57995 = !DILocation(line: 236, column: 13, scope: !57676, inlinedAt: !57672)
!57996 = !DILocation(line: 175, column: 9, scope: !57679, inlinedAt: !57683)
!57997 = !DILocation(line: 253, column: 20, scope: !57687, inlinedAt: !57692)
!57998 = !DILocation(line: 278, column: 15, scope: !57693, inlinedAt: !57682)
!57999 = !DILocation(line: 279, column: 16, scope: !57693, inlinedAt: !57682)
!58000 = !DILocation(line: 0, scope: !57681, inlinedAt: !57682)
!58001 = !DILocation(line: 295, column: 20, scope: !57694, inlinedAt: !57701)
!58002 = !DILocation(line: 1233, column: 23, scope: !57703, inlinedAt: !57704)
!58003 = !DILocation(line: 70, column: 20, scope: !67, inlinedAt: !57710)
!58004 = !DILocation(line: 53, column: 12, scope: !69, inlinedAt: !57708)
!58005 = !DILocation(line: 54, column: 18, scope: !69, inlinedAt: !57708)
!58006 = !DILocation(line: 56, column: 20, scope: !69, inlinedAt: !57708)
!58007 = !DILocation(line: 279, column: 13, scope: !57693, inlinedAt: !57682)
!58008 = !DILocation(line: 285, column: 17, scope: !57711, inlinedAt: !57682)
!58009 = !DILocation(line: 585, column: 27, scope: !57712, inlinedAt: !57715)
!58010 = !DILocation(line: 101, column: 24, scope: !57717, inlinedAt: !57719)
!58011 = !DILocation(line: 2033, column: 9, scope: !57726, inlinedAt: !57729)
!58012 = !DILocation(line: 286, column: 17, scope: !57730, inlinedAt: !57682)
!58013 = !DILocation(line: 89, column: 24, scope: !57732, inlinedAt: !57740)
!58014 = !DILocation(line: 104, column: 13, scope: !57744, inlinedAt: !57747)
!58015 = !DILocation(line: 155, column: 13, scope: !57756, inlinedAt: !57762)
!58016 = !DILocation(line: 289, column: 37, scope: !57763, inlinedAt: !57682)
!58017 = !DILocation(line: 221, column: 34, scope: !57767, inlinedAt: !57772)
!58018 = !DILocation(line: 221, column: 41, scope: !57767, inlinedAt: !57772)
!58019 = !DILocation(line: 221, column: 14, scope: !57767, inlinedAt: !57772)
!58020 = !DILocation(line: 221, column: 23, scope: !57767, inlinedAt: !57772)
!58021 = !DILocation(line: 221, column: 52, scope: !57767, inlinedAt: !57772)
!58022 = !DILocation(line: 222, column: 34, scope: !57773, inlinedAt: !57772)
!58023 = !DILocation(line: 222, column: 41, scope: !57773, inlinedAt: !57772)
!58024 = !DILocation(line: 222, column: 14, scope: !57773, inlinedAt: !57772)
!58025 = !DILocation(line: 222, column: 23, scope: !57773, inlinedAt: !57772)
!58026 = !DILocation(line: 222, column: 52, scope: !57773, inlinedAt: !57772)
!58027 = !DILocation(line: 226, column: 21, scope: !57775, inlinedAt: !57772)
!58028 = !DILocation(line: 0, scope: !57775, inlinedAt: !57772)
!58029 = !DILocation(line: 1077, column: 12, scope: !969, inlinedAt: !57779)
!58030 = !DILocation(line: 227, column: 54, scope: !57775, inlinedAt: !57772)
!58031 = !DILocation(line: 0, scope: !57773, inlinedAt: !57772)
!58032 = !DILocation(line: 1077, column: 12, scope: !969, inlinedAt: !57781)
!58033 = !DILocation(line: 117, column: 21, scope: !57769, inlinedAt: !57770)
!58034 = !DILocation(line: 122, column: 27, scope: !57782, inlinedAt: !57770)
!58035 = !DILocation(line: 2442, column: 9, scope: !57783, inlinedAt: !57785)
!58036 = !DILocation(line: 51, column: 21, scope: !57786, inlinedAt: !57770)
!58037 = !DILocation(line: 103, column: 9, scope: !57787, inlinedAt: !57791)
!58038 = !DILocation(line: 248, column: 9, scope: !57796, inlinedAt: !57797)
!58039 = !DILocation(line: 665, column: 9, scope: !57799, inlinedAt: !57800)
!58040 = !DILocation(line: 221, column: 34, scope: !57767, inlinedAt: !57805)
!58041 = !DILocation(line: 221, column: 41, scope: !57767, inlinedAt: !57805)
!58042 = !DILocation(line: 221, column: 23, scope: !57767, inlinedAt: !57805)
!58043 = !DILocation(line: 221, column: 52, scope: !57767, inlinedAt: !57805)
!58044 = !DILocation(line: 222, column: 34, scope: !57773, inlinedAt: !57805)
!58045 = !DILocation(line: 222, column: 41, scope: !57773, inlinedAt: !57805)
!58046 = !DILocation(line: 222, column: 23, scope: !57773, inlinedAt: !57805)
!58047 = !DILocation(line: 222, column: 52, scope: !57773, inlinedAt: !57805)
!58048 = !DILocation(line: 226, column: 21, scope: !57775, inlinedAt: !57805)
!58049 = !DILocation(line: 666, scope: !57804, inlinedAt: !57800)
!58050 = !DILocation(line: 1077, column: 12, scope: !969, inlinedAt: !57807)
!58051 = !DILocation(line: 227, column: 54, scope: !57775, inlinedAt: !57805)
!58052 = !DILocation(line: 666, column: 40, scope: !57804, inlinedAt: !57800)
!58053 = !DILocation(line: 0, scope: !57799, inlinedAt: !57800)
!58054 = !DILocation(line: 1917, column: 50, scope: !57808, inlinedAt: !57815)
!58055 = !DILocation(line: 781, column: 12, scope: !57809, inlinedAt: !57814)
!58056 = !DILocation(line: 2193, column: 12, scope: !1038, inlinedAt: !57819)
!58057 = !DILocation(line: 681, column: 17, scope: !57811, inlinedAt: !57800)
!58058 = !DILocation(line: 898, column: 17, scope: !57820, inlinedAt: !57824)
!58059 = !DILocation(line: 2053, column: 18, scope: !1039, inlinedAt: !57818)
!58060 = !DILocation(line: 2053, column: 54, scope: !1039, inlinedAt: !57818)
!58061 = !DILocation(line: 961, column: 18, scope: !1034, inlinedAt: !57828)
!58062 = !DILocation(line: 2109, column: 50, scope: !1037, inlinedAt: !57827)
!58063 = !DILocation(line: 2054, column: 13, scope: !57830, inlinedAt: !57834)
!58064 = !DILocation(line: 161, column: 27, scope: !1586, inlinedAt: !57839)
!58065 = !DILocation(line: 162, column: 34, scope: !1587, inlinedAt: !57839)
!58066 = !DILocation(line: 1717, column: 9, scope: !1588, inlinedAt: !57840)
!58067 = !DILocation(line: 180, column: 28, scope: !1589, inlinedAt: !57839)
!58068 = !DILocation(line: 659, column: 28, scope: !1590, inlinedAt: !57841)
!58069 = !DILocation(line: 185, column: 25, scope: !1589, inlinedAt: !57839)
!58070 = !DILocation(line: 290, column: 66, scope: !57847, inlinedAt: !57851)
!58071 = !DILocation(line: 290, column: 70, scope: !57847, inlinedAt: !57851)
!58072 = !DILocation(line: 4325, column: 18, scope: !57852, inlinedAt: !57853)
!58073 = !DILocation(line: 290, column: 92, scope: !57847, inlinedAt: !57851)
!58074 = !DILocation(line: 291, column: 13, scope: !57789, inlinedAt: !57682)
!58075 = !DILocation(line: 161, column: 27, scope: !57854, inlinedAt: !57856)
!58076 = !DILocation(line: 162, column: 34, scope: !57857, inlinedAt: !57856)
!58077 = !DILocation(line: 1717, column: 9, scope: !57858, inlinedAt: !57860)
!58078 = !DILocation(line: 180, column: 28, scope: !57859, inlinedAt: !57856)
!58079 = !DILocation(line: 659, column: 28, scope: !57861, inlinedAt: !57862)
!58080 = !DILocation(line: 185, column: 25, scope: !57859, inlinedAt: !57856)
!58081 = !DILocation(line: 296, column: 32, scope: !57855, inlinedAt: !57682)
!58082 = !DILocation(line: 298, column: 20, scope: !57864, inlinedAt: !57682)
!58083 = !DILocation(line: 0, scope: !57789, inlinedAt: !57682)
!58084 = !DILocation(line: 305, column: 9, scope: !57730, inlinedAt: !57682)
!58085 = !DILocation(line: 305, column: 9, scope: !57711, inlinedAt: !57682)
!58086 = !DILocation(line: 0, scope: !57968, inlinedAt: !57682)
!58087 = !DILocation(line: 299, column: 47, scope: !57864, inlinedAt: !57682)
!58088 = !DILocation(line: 299, column: 51, scope: !57864, inlinedAt: !57682)
!58089 = !DILocation(line: 977, column: 16, scope: !57865, inlinedAt: !57872)
!58090 = !DILocation(line: 4325, column: 18, scope: !57873, inlinedAt: !57874)
!58091 = !DILocation(line: 299, column: 79, scope: !57864, inlinedAt: !57682)
!58092 = !DILocation(line: 300, column: 21, scope: !57864, inlinedAt: !57682)
!58093 = !DILocation(line: 301, column: 21, scope: !57864, inlinedAt: !57682)
!58094 = !DILocation(line: 443, column: 13, scope: !57866, inlinedAt: !57871)
!58095 = !DILocation(line: 292, column: 25, scope: !57789, inlinedAt: !57682)
!58096 = !DILocation(line: 292, column: 13, scope: !57789, inlinedAt: !57682)
!58097 = !DILocation(line: 298, column: 24, scope: !57694, inlinedAt: !57701)
!58098 = !DILocation(line: 181, column: 9, scope: !57697, inlinedAt: !57698)
!58099 = !DILocation(line: 307, column: 6, scope: !57680, inlinedAt: !57682)
!58100 = !DILocation(line: 90, column: 20, scope: !57875, inlinedAt: !57876)
!58101 = !DILocation(line: 150, column: 25, scope: !57667)
!58102 = !DILocation(line: 143, column: 9, scope: !57886, inlinedAt: !57890)
!58103 = !DILocation(line: 863, column: 18, scope: !984, inlinedAt: !57895)
!58104 = !DILocation(line: 961, column: 18, scope: !57896, inlinedAt: !57904)
!58105 = !DILocation(line: 631, column: 24, scope: !1524, inlinedAt: !57908)
!58106 = !DILocation(line: 323, column: 9, scope: !1105, inlinedAt: !57912)
!58107 = !DILocation(line: 145, column: 25, scope: !57901, inlinedAt: !57890)
!58108 = !DILocation(line: 24, column: 9, scope: !1525, inlinedAt: !57913)
!58109 = !DILocation(line: 631, column: 41, scope: !1524, inlinedAt: !57908)
!58110 = !DILocation(line: 306, column: 12, scope: !1526, inlinedAt: !57920)
!58111 = !DILocation(line: 306, column: 25, scope: !1526, inlinedAt: !57920)
!58112 = !DILocation(line: 310, column: 13, scope: !1528, inlinedAt: !57920)
!58113 = !DILocation(line: 313, column: 30, scope: !1528, inlinedAt: !57920)
!58114 = !DILocation(line: 961, column: 18, scope: !1529, inlinedAt: !57922)
!58115 = !DILocation(line: 313, column: 66, scope: !1528, inlinedAt: !57920)
!58116 = !DILocation(line: 313, column: 59, scope: !1528, inlinedAt: !57920)
!58117 = !DILocation(line: 146, column: 13, scope: !57923, inlinedAt: !57890)
!58118 = !DILocation(line: 146, column: 33, scope: !57923, inlinedAt: !57890)
!58119 = !DILocation(line: 4325, column: 18, scope: !57924, inlinedAt: !57926)
!58120 = !DILocation(line: 148, column: 33, scope: !57925, inlinedAt: !57890)
!58121 = !DILocation(line: 148, column: 9, scope: !57925, inlinedAt: !57890)
!58122 = !DILocation(line: 149, column: 5, scope: !57923, inlinedAt: !57890)
!58123 = !DILocation(line: 149, column: 5, scope: !57901, inlinedAt: !57890)
!58124 = !DILocation(line: 150, column: 5, scope: !57901, inlinedAt: !57890)
!58125 = !DILocation(line: 151, column: 1, scope: !57886, inlinedAt: !57890)
!58126 = !DILocation(line: 38, column: 34, scope: !57928, inlinedAt: !57933)
!58127 = !DILocation(line: 315, column: 25, scope: !57930, inlinedAt: !57932)
!58128 = !DILocation(line: 42, column: 6, scope: !57887, inlinedAt: !57889)
!58129 = !DILocation(line: 91, column: 9, scope: !57888, inlinedAt: !57876)
!58130 = !DILocation(line: 92, column: 6, scope: !57875, inlinedAt: !57876)
!58131 = !DILocation(line: 151, column: 5, scope: !57663)
!58132 = !DILocation(line: 151, column: 6, scope: !57663)
!58133 = distinct !DISubprogram(name: "collect_seq<&mut serde_json::ser::Serializer<&mut alloc::vec::Vec<u8, alloc::alloc::Global>, serde_json::ser::CompactFormatter>, &alloc::vec::Vec<u32, alloc::alloc::Global>>", linkageName: "_RINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIBR_mEECs2g09Ig8GZd6_13polars_stream", scope: !58229, file: !2941, line: 1296, type: !2248, scopeLine: 1296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!58134 = distinct !DISubprogram(name: "add<u32>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOm3addCs2g09Ig8GZd6_13polars_stream", scope: !2478, file: !2476, line: 927, type: !2248, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!58135 = distinct !DISubprogram(name: "new<u32>", linkageName: "_RNvMs4_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_4ItermE3newCs2g09Ig8GZd6_13polars_stream", scope: !2559, file: !2556, line: 96, type: !2248, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!58136 = distinct !DILexicalBlock(scope: !58135, file: !2556, line: 97, column: 9)
!58137 = distinct !DILexicalBlock(scope: !58136, file: !2556, line: 98, column: 9)
!58138 = distinct !DISubprogram(name: "iter<u32>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSm4iterCs2g09Ig8GZd6_13polars_stream", scope: !2475, file: !2474, line: 1040, type: !2248, scopeLine: 1040, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!58139 = distinct !DISubprogram(name: "into_iter<u32, alloc::alloc::Global>", linkageName: "_RNvXsg_NtCsgZ49sUHp3tW_5alloc3vecRINtB5_3VecmENtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12IntoIterator9into_iterCs2g09Ig8GZd6_13polars_stream", scope: !2958, file: !2320, line: 3940, type: !2261, scopeLine: 3940, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!58140 = distinct !DILocation(line: 1301, column: 29, scope: !58133)
!58141 = distinct !DILocation(line: 3941, column: 14, scope: !58139, inlinedAt: !58140)
!58142 = distinct !DILocation(line: 1041, column: 9, scope: !58138, inlinedAt: !58141)
!58143 = distinct !DILocation(line: 102, column: 78, scope: !58137, inlinedAt: !58142)
!58144 = distinct !{!58144, i1 false, !"_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_seqCs2g09Ig8GZd6_13polars_stream"}
!58145 = distinct !{!58145, !58144, !"_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_seqCs2g09Ig8GZd6_13polars_stream: argument 1"}
!58146 = distinct !DILexicalBlock(scope: !58133, file: !2941, line: 1301, column: 9)
!58147 = distinct !{!58147, !58144, !"_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_seqCs2g09Ig8GZd6_13polars_stream: argument 0"}
!58148 = distinct !DISubprogram(name: "serialize_seq<&mut alloc::vec::Vec<u8, alloc::alloc::Global>, serde_json::ser::CompactFormatter>", linkageName: "_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_seqCs2g09Ig8GZd6_13polars_stream", scope: !2935, file: !2932, line: 284, type: !2248, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!58149 = distinct !DILocation(line: 1302, column: 40, scope: !58146)
!58150 = distinct !DISubprogram(name: "begin_array<serde_json::ser::CompactFormatter, &mut alloc::vec::Vec<u8, alloc::alloc::Global>>", linkageName: "_RINvYNtNtCsk1caaszg7Cl_10serde_json3ser16CompactFormatterNtB5_9Formatter11begin_arrayQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream", scope: !2936, file: !2932, line: 1822, type: !2261, scopeLine: 1822, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!58151 = distinct !DILocation(line: 287, column: 14, scope: !58148, inlinedAt: !58149)
!58152 = distinct !DILocation(line: 1826, column: 16, scope: !58150, inlinedAt: !58151)
!58153 = distinct !DILocation(line: 78, column: 18, scope: !1547, inlinedAt: !58152)
!58154 = distinct !DISubprogram(name: "eq<usize>", linkageName: "_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionjENtNtB7_3cmp9PartialEq2eqCs2g09Ig8GZd6_13polars_stream", scope: !2712, file: !2288, line: 2439, type: !2248, scopeLine: 2439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!58155 = distinct !DILocation(line: 289, column: 12, scope: !58148, inlinedAt: !58149)
!58156 = distinct !DISubprogram(name: "end_array<serde_json::ser::CompactFormatter, &mut alloc::vec::Vec<u8, alloc::alloc::Global>>", linkageName: "_RINvYNtNtCsk1caaszg7Cl_10serde_json3ser16CompactFormatterNtB5_9Formatter9end_arrayQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream", scope: !2936, file: !2932, line: 1832, type: !2261, scopeLine: 1832, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!58157 = distinct !DILocation(line: 292, column: 18, scope: !58148, inlinedAt: !58149)
!58158 = distinct !DILocation(line: 1836, column: 16, scope: !58156, inlinedAt: !58157)
!58159 = distinct !DILocation(line: 78, column: 18, scope: !1547, inlinedAt: !58158)
!58160 = distinct !DISubprogram(name: "try_fold<core::slice::iter::Iter<u32>, (), core::iter::traits::iterator::Iterator::try_for_each::call::{closure_env#0}<&u32, core::result::Result<(), serde_json::error::Error>, serde_core::ser::Serializer::collect_seq::{closure_env#0}<&mut serde_json::ser::Serializer<&mut alloc::vec::Vec<u8, alloc::alloc::Global>, serde_json::ser::CompactFormatter>, &alloc::vec::Vec<u32, alloc::alloc::Global>>>, core::result::Result<(), serde_json::error::Error>>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_12try_for_each4callRmINtNtBa_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2w_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3H_mEE0E0B25_ECs2g09Ig8GZd6_13polars_stream", scope: !2767, file: !2764, line: 2501, type: !2248, scopeLine: 2501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!58161 = distinct !DILexicalBlock(scope: !58160, file: !2764, line: 2507, column: 9)
!58162 = distinct !DILexicalBlock(scope: !58161, file: !2764, line: 2508, column: 41)
!58163 = distinct !DISubprogram(name: "try_for_each<core::slice::iter::Iter<u32>, serde_core::ser::Serializer::collect_seq::{closure_env#0}<&mut serde_json::ser::Serializer<&mut alloc::vec::Vec<u8, alloc::alloc::Global>, serde_json::ser::CompactFormatter>, &alloc::vec::Vec<u32, alloc::alloc::Global>>, core::result::Result<(), serde_json::error::Error>>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB2y_mEE0INtNtBa_6result6ResultuNtNtB1Q_5error5ErrorEECs2g09Ig8GZd6_13polars_stream", scope: !2767, file: !2764, line: 2560, type: !2248, scopeLine: 2560, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!58164 = distinct !DILexicalBlock(scope: !58146, file: !2941, line: 1302, column: 9)
!58165 = distinct !DILocation(line: 1303, column: 19, scope: !58164)
!58166 = distinct !DILocation(line: 2571, column: 14, scope: !58163, inlinedAt: !58165)
!58167 = distinct !DILocation(line: 2508, column: 34, scope: !58162, inlinedAt: !58166)
!58168 = distinct !{!58168, i1 false, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB2y_mEE0INtNtBa_6result6ResultuNtNtB1Q_5error5ErrorEECs2g09Ig8GZd6_13polars_stream"}
!58169 = distinct !{!58169, !58168, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB2y_mEE0INtNtBa_6result6ResultuNtNtB1Q_5error5ErrorEECs2g09Ig8GZd6_13polars_stream: argument 1"}
!58170 = distinct !{!58170, !58168, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB2y_mEE0INtNtBa_6result6ResultuNtNtB1Q_5error5ErrorEECs2g09Ig8GZd6_13polars_stream: argument 0"}
!58171 = distinct !{!58171, i1 false, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_12try_for_each4callRmINtNtBa_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2w_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3H_mEE0E0B25_ECs2g09Ig8GZd6_13polars_stream"}
!58172 = distinct !{!58172, !58171, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_12try_for_each4callRmINtNtBa_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2w_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3H_mEE0E0B25_ECs2g09Ig8GZd6_13polars_stream: argument 1"}
!58173 = distinct !{!58173, !58171, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_12try_for_each4callRmINtNtBa_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2w_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3H_mEE0E0B25_ECs2g09Ig8GZd6_13polars_stream: argument 0"}
!58174 = distinct !{!58174, i1 false, !"_RNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIBT_mEE0Cs2g09Ig8GZd6_13polars_stream"}
!58175 = distinct !{!58175, !58174, !"_RNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIBT_mEE0Cs2g09Ig8GZd6_13polars_stream: argument 0"}
!58176 = distinct !{!58176, i1 false, !"_RINvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq17serialize_elementRmECs2g09Ig8GZd6_13polars_stream"}
!58177 = distinct !{!58177, !58176, !"_RINvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq17serialize_elementRmECs2g09Ig8GZd6_13polars_stream: argument 0:Peel0"}
!58178 = distinct !DISubprogram(name: "write_u32<serde_json::ser::CompactFormatter, &mut alloc::vec::Vec<u8, alloc::alloc::Global>>", linkageName: "_RINvYNtNtCsk1caaszg7Cl_10serde_json3ser16CompactFormatterNtB5_9Formatter9write_u32QINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream", scope: !2936, file: !2932, line: 1644, type: !2261, scopeLine: 1644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!58179 = distinct !DISubprogram(name: "serialize_u32<&mut alloc::vec::Vec<u8, alloc::alloc::Global>, serde_json::ser::CompactFormatter>", linkageName: "_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_u32Cs2g09Ig8GZd6_13polars_stream", scope: !2935, file: !2932, line: 135, type: !2261, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!58180 = distinct !DISubprogram(name: "serialize<&mut serde_json::ser::Serializer<&mut alloc::vec::Vec<u8, alloc::alloc::Global>, serde_json::ser::CompactFormatter>>", linkageName: "_RINvXsK_NtNtCs40veMcpUDl8_10serde_core3ser5implsmNtB8_9Serialize9serializeQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECs2g09Ig8GZd6_13polars_stream", scope: !58235, file: !2937, line: 11, type: !2261, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!58181 = distinct !DISubprogram(name: "serialize<u32, &mut serde_json::ser::Serializer<&mut alloc::vec::Vec<u8, alloc::alloc::Global>, serde_json::ser::CompactFormatter>>", linkageName: "_RINvXs1J_NtNtCs40veMcpUDl8_10serde_core3ser5implsRmNtB9_9Serialize9serializeQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECs2g09Ig8GZd6_13polars_stream", scope: !58236, file: !2937, line: 468, type: !2261, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!58182 = distinct !DISubprogram(name: "serialize_element<&mut alloc::vec::Vec<u8, alloc::alloc::Global>, serde_json::ser::CompactFormatter, &u32>", linkageName: "_RINvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq17serialize_elementRmECs2g09Ig8GZd6_13polars_stream", scope: !58237, file: !2932, line: 491, type: !2261, scopeLine: 491, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!58183 = distinct !DILexicalBlock(scope: !58182, file: !2932, line: 496, column: 13)
!58184 = distinct !DISubprogram(name: "{closure#0}<&mut serde_json::ser::Serializer<&mut alloc::vec::Vec<u8, alloc::alloc::Global>, serde_json::ser::CompactFormatter>, &alloc::vec::Vec<u32, alloc::alloc::Global>>", linkageName: "_RNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIBT_mEE0Cs2g09Ig8GZd6_13polars_stream", scope: !58238, file: !2941, line: 1303, type: !2261, scopeLine: 1303, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!58185 = distinct !DISubprogram(name: "{closure#0}<&u32, core::result::Result<(), serde_json::error::Error>, serde_core::ser::Serializer::collect_seq::{closure_env#0}<&mut serde_json::ser::Serializer<&mut alloc::vec::Vec<u8, alloc::alloc::Global>, serde_json::ser::CompactFormatter>, &alloc::vec::Vec<u32, alloc::alloc::Global>>>", linkageName: "_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRmINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB2Y_mEE0E0Cs2g09Ig8GZd6_13polars_stream", scope: !2862, file: !2764, line: 2568, type: !2261, scopeLine: 2568, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!58186 = distinct !DILocation(line: 2509, column: 21, scope: !58162, inlinedAt: !58166)
!58187 = distinct !DILocation(line: 2568, column: 26, scope: !58185, inlinedAt: !58186)
!58188 = distinct !DILocation(line: 1303, column: 50, scope: !58184, inlinedAt: !58187)
!58189 = distinct !DILocation(line: 502, column: 28, scope: !58183, inlinedAt: !58188)
!58190 = distinct !DILocation(line: 472, column: 26, scope: !58181, inlinedAt: !58189)
!58191 = distinct !DILocation(line: 15, column: 28, scope: !58180, inlinedAt: !58190)
!58192 = distinct !DILocation(line: 137, column: 14, scope: !58179, inlinedAt: !58191)
!58193 = distinct !DISubprogram(name: "write", linkageName: "_RNvXsc_CsgHtAh0uHj3K_4itoamNtNtB5_7private6Sealed5write", scope: !58241, file: !58239, line: 152, type: !2248, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!58194 = distinct !DISubprogram(name: "format<u32>", linkageName: "_RINvMs1_CsgHtAh0uHj3K_4itoaNtB6_6Buffer6formatmECs2g09Ig8GZd6_13polars_stream", scope: !58242, file: !58239, line: 106, type: !2248, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!58195 = distinct !DILexicalBlock(scope: !58194, file: !58239, line: 107, column: 9)
!58196 = distinct !DILexicalBlock(scope: !58178, file: !2932, line: 1648, column: 9)
!58197 = distinct !DILocation(line: 1649, column: 24, scope: !58196, inlinedAt: !58192)
!58198 = distinct !DILocation(line: 108, column: 24, scope: !58195, inlinedAt: !58197)
!58199 = distinct !DISubprogram(name: "get_unchecked<core::mem::maybe_uninit::MaybeUninit<u8>>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexSINtNtNtB9_3mem12maybe_uninit11MaybeUninithEE13get_uncheckedCs2g09Ig8GZd6_13polars_stream", scope: !2693, file: !2411, line: 392, type: !2248, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!58200 = distinct !DISubprogram(name: "get_unchecked<core::mem::maybe_uninit::MaybeUninit<u8>>", linkageName: "_RNvXs5_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSINtNtNtB9_3mem12maybe_uninit11MaybeUninithEE13get_uncheckedCs2g09Ig8GZd6_13polars_stream", scope: !2414, file: !2411, line: 555, type: !2248, scopeLine: 555, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!58201 = distinct !DISubprogram(name: "get_unchecked<core::mem::maybe_uninit::MaybeUninit<u8>, core::ops::range::RangeFrom<usize>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB5_3mem12maybe_uninit11MaybeUninithE13get_uncheckedINtNtNtB5_3ops5range9RangeFromjEECs2g09Ig8GZd6_13polars_stream", scope: !2475, file: !2474, line: 639, type: !2248, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!58202 = distinct !DISubprogram(name: "slice_buffer_to_str", linkageName: "_RNvCsgHtAh0uHj3K_4itoa19slice_buffer_to_str", scope: !58240, file: !58239, line: 247, type: !2248, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!58203 = distinct !DILexicalBlock(scope: !58193, file: !58239, line: 153, column: 17)
!58204 = distinct !DILocation(line: 155, column: 26, scope: !58203, inlinedAt: !58198)
!58205 = distinct !DILocation(line: 249, column: 32, scope: !58202, inlinedAt: !58204)
!58206 = distinct !DILocation(line: 646, column: 26, scope: !58201, inlinedAt: !58205)
!58207 = distinct !DILocation(line: 557, column: 44, scope: !58200, inlinedAt: !58206)
!58208 = distinct !DISubprogram(name: "get_offset_len_noubcheck<core::mem::maybe_uninit::MaybeUninit<u8>>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckINtNtNtB6_3mem12maybe_uninit11MaybeUninithEECs2g09Ig8GZd6_13polars_stream", scope: !2413, file: !2411, line: 82, type: !2248, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!58209 = distinct !DILexicalBlock(scope: !58208, file: !2411, line: 87, column: 5)
!58210 = distinct !DILexicalBlock(scope: !58199, file: !2411, line: 410, column: 13)
!58211 = distinct !DILocation(line: 411, column: 13, scope: !58210, inlinedAt: !58207)
!58212 = distinct !DILexicalBlock(scope: !58196, file: !2932, line: 1649, column: 9)
!58213 = distinct !DILocation(line: 1650, column: 16, scope: !58212, inlinedAt: !58192)
!58214 = distinct !DILocation(line: 78, column: 18, scope: !1547, inlinedAt: !58213)
!58215 = distinct !DILocation(line: 180, column: 28, scope: !1589, inlinedAt: !58167)
!58216 = distinct !DILocation(line: 185, column: 40, scope: !1589, inlinedAt: !58167)
!58217 = distinct !{!58217, !58176, !"_RINvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq17serialize_elementRmECs2g09Ig8GZd6_13polars_stream: argument 0"}
!58218 = distinct !DISubprogram(name: "begin_array_value<serde_json::ser::CompactFormatter, &mut alloc::vec::Vec<u8, alloc::alloc::Global>>", linkageName: "_RINvYNtNtCsk1caaszg7Cl_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream", scope: !2936, file: !2932, line: 1842, type: !2261, scopeLine: 1842, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!58219 = distinct !DILocation(line: 499, column: 22, scope: !58183, inlinedAt: !58188)
!58220 = distinct !DILocation(line: 1849, column: 20, scope: !58218, inlinedAt: !58219)
!58221 = distinct !DILocation(line: 78, column: 18, scope: !1547, inlinedAt: !58220)
!58222 = distinct !{!58222, !2959}
!58223 = distinct !DISubprogram(name: "end<&mut alloc::vec::Vec<u8, alloc::alloc::Global>, serde_json::ser::CompactFormatter>", linkageName: "_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCs2g09Ig8GZd6_13polars_stream", scope: !58237, file: !2932, line: 515, type: !2261, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2247)
!58224 = distinct !DILexicalBlock(scope: !58223, file: !2932, line: 517, column: 13)
!58225 = distinct !DILocation(line: 1304, column: 20, scope: !58164)
!58226 = distinct !DILocation(line: 519, column: 36, scope: !58224, inlinedAt: !58225)
!58227 = distinct !DILocation(line: 1836, column: 16, scope: !58156, inlinedAt: !58226)
!58228 = distinct !DILocation(line: 78, column: 18, scope: !1547, inlinedAt: !58227)
!58229 = !DINamespace(name: "Serializer", scope: !2939)
!58230 = !{!58145}
!58231 = !{!58147}
!58232 = !{!58147, !58145}
!58233 = !{!58173, !58172, !58170, !58169}
!58234 = !{!58177, !58175, !58173, !58172, !58170, !58169}
!58235 = !DINamespace(name: "{impl#48}", scope: !2940)
!58236 = !DINamespace(name: "{impl#109}", scope: !2940)
!58237 = !DINamespace(name: "{impl#4}", scope: !2934)
!58238 = !DINamespace(name: "collect_seq", scope: !58229)
!58239 = !DIFile(filename: "src/lib.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/itoa-1.0.18", checksumkind: CSK_MD5, checksum: "0ad2f1613f6af552b168d09efbffa1aa")
!58240 = !DINamespace(name: "itoa", scope: null)
!58241 = !DINamespace(name: "{impl#14}", scope: !58240)
!58242 = !DINamespace(name: "Buffer", scope: !58240)
!58243 = !{!58217, !58175, !58173, !58172, !58170, !58169}
!58244 = !DILocation(line: 1301, column: 29, scope: !58133)
!58245 = !DILocation(line: 961, column: 18, scope: !58134, inlinedAt: !58143)
!58246 = !DILocation(line: 1302, column: 40, scope: !58146)
!58247 = !DILocation(line: 287, column: 14, scope: !58148, inlinedAt: !58149)
!58248 = !DILocation(line: 504, column: 14, scope: !1546, inlinedAt: !58153)
!58249 = !DILocation(line: 2442, column: 9, scope: !58154, inlinedAt: !58155)
!58250 = !DILocation(line: 504, column: 14, scope: !1546, inlinedAt: !58159)
!58251 = !DILocation(line: 180, column: 28, scope: !1589, inlinedAt: !58167)
!58252 = !DILocation(line: 2509, column: 21, scope: !58162, inlinedAt: !58166)
!58253 = !DILocation(line: 1648, column: 13, scope: !58178, inlinedAt: !58192)
!58254 = !DILocation(line: 153, column: 30, scope: !58193, inlinedAt: !58198)
!58255 = !DILocation(line: 410, column: 27, scope: !58199, inlinedAt: !58207)
!58256 = !DILocation(line: 89, column: 24, scope: !58209, inlinedAt: !58211)
!58257 = !DILocation(line: 504, column: 14, scope: !1546, inlinedAt: !58214)
!58258 = !DILocation(line: 1651, column: 5, scope: !58178, inlinedAt: !58192)
!58259 = !DILocation(line: 1717, column: 9, scope: !1588, inlinedAt: !58215)
!58260 = !DILocation(line: 659, column: 28, scope: !1590, inlinedAt: !58216)
end_hunk_1
