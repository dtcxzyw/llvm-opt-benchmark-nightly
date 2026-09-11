Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/ech_client.ech_client.d1de0ba1dca76c98-cgu.13?download=true
inline.NumInlined: 1021
inline.NumDeleted: 561
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_folduQQNCINvNvB1O_8find_map5checkBX_BX_QNCNvMs_NtCs9RFwvXNxPyg_16hickory_resolver14caching_clientINtB3z_13CachingClientINtNtB3B_8resolver12LookupEitherNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE14handle_noerrors0_0E0INtNtNtB1W_3ops12control_flow11ControlFlowBX_EECsi17nFaBu4HY_10ech_client:bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(270) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(270) %.sroa.6.0..sroa_idx, i64 270, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !840
  br label %._crit_edge

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !840
  %.not = icmp eq ptr %i.g, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool8CacheKeyEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [1 x i8], align 1                 ; 4 uses
  %i.h = alloca [2 x i8], align 2                 ; 4 uses
  %i.i = alloca [2 x i8], align 2                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [2 x i8], align 2                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %i.n = alloca [1 x i8], align 1                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [1 x i8], align 1                 ; 4 uses
  %i.q = alloca [1 x i8], align 1                 ; 4 uses
  %i.r = alloca [1 x i8], align 1                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [72 x i8], align 16               ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 4 uses
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 3 uses
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.u = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.v = shufflevector <2 x i64> %i.u, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.w = xor <2 x i64> %i.v, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.w, ptr %i.t, align 16, !alias.scope !924
  %i.x = shufflevector <2 x i64> %i.u, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.y = xor <2 x i64> %i.x, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.y, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !924
  store <2 x i64> %i.u, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !924
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !924
  tail call void @llvm.experimental.noalias.scope.decl(metadata !925)
  %.val.i = load ptr, ptr %1, align 8, !noalias !925, !nonnull !6, !noundef !6 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !928)
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  %i.aa = load i8, ptr %i.z, align 8, !range !16, !alias.scope !927, !noalias !929, !noundef !6 ; 2 uses
  %i.ab = zext nneg i8 %i.aa to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !930
  store i64 %i.ab, ptr %i.s, align 8, !noalias !930
  call fastcc void @_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef 8) #33, !noalias !927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !930
  %i.ac = icmp eq i8 %i.aa, 4
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i, i64 41
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !927, !noalias !929, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !931
  store i8 %i.ae, ptr %i.r, align 1, !noalias !931
  call fastcc void @_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef 1) #33, !noalias !927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !931
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i, i64 42
  %i.ag = load i8, ptr %i.af, align 2, !range !17, !alias.scope !927, !noalias !929, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !932
  store i8 %i.ag, ptr %i.q, align 1, !noalias !932
  call fastcc void @_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef 1) #33, !noalias !927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !932
  %i.ah = getelementptr inbounds nuw i8, ptr %.val.i, i64 43
  %i.ai = load i8, ptr %i.ah, align 1, !range !17, !alias.scope !927, !noalias !929, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !933
  store i8 %i.ai, ptr %i.p, align 1, !noalias !933
  call fastcc void @_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef 1) #33, !noalias !927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !933
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !927, !noalias !929, !nonnull !6, !noundef !6 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !927, !noalias !929, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !934
  store i64 %i.am, ptr %i.o, align 8, !noalias !934
  call fastcc void @_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef 8) #33, !noalias !927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !934
  tail call void @llvm.experimental.noalias.scope.decl(metadata !935)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !936)
  %.idx.i.i.i.i = mul nuw nsw i64 %i.am, 88
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i.i.i.i
  %i.ao = icmp eq i64 %i.am, 0
  br i1 %i.ao, label %_RINvYNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryNtNtCsj6eKBz9Db1c_4core4hash4Hash10hash_sliceNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECsi17nFaBu4HY_10ech_client.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %.sroa.5.0..sroa_idx2.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 64 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 56 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_RINvXs6_NtNtCsjXdHNeFfodD_13hickory_proto2op5queryNtB6_5QueryNtNtCsj6eKBz9Db1c_4core4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECsi17nFaBu4HY_10ech_client.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.0.03.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %i.ar, %_RINvXs6_NtNtCsjXdHNeFfodD_13hickory_proto2op5queryNtB6_5QueryNtNtCsj6eKBz9Db1c_4core4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECsi17nFaBu4HY_10ech_client.exit.i.i.i.i ] ; 10 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i, i64 88 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !937)
  call void @llvm.experimental.noalias.scope.decl(metadata !938)
  call void @llvm.experimental.noalias.scope.decl(metadata !939)
  call void @llvm.experimental.noalias.scope.decl(metadata !940)
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i, i64 72
  %i.at = load i8, ptr %i.as, align 8, !range !17, !alias.scope !941, !noalias !942, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !943
  store i8 %i.at, ptr %i.n, align 1, !noalias !943
  call fastcc void @_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef 1) #33, !noalias !944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !943
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i, i64 40
  %i.av = load i16, ptr %i.au, align 8, !range !14, !alias.scope !941, !noalias !942, !noundef !6
  %i.aw = trunc nuw i16 %i.av to i1
  br i1 %i.aw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i, i64 64
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !941, !noalias !942, !noundef !6 ; 2 uses
  %i.az = icmp sgt i64 %i.ay, -1
  call void @llvm.assume(i1 %i.az)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i, i64 42
  %i.bb = load i16, ptr %i.ba, align 2, !alias.scope !941, !noalias !942, !noundef !6
  %i.bc = zext i16 %i.bb to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.01.0.i.i.i.i.i.i = phi i64 [ %i.ay, %bb.e ], [ %i.bc, %bb.f ]
  call void @llvm.experimental.noalias.scope.decl(metadata !945)
  %.sroa.4.8.insert.ext.i.i.i.i.i.i = shl i64 %.sroa.01.0.i.i.i.i.i.i, 8
  %.sroa.4.8.insert.shift.i.i.i.i.i.i = and i64 %.sroa.4.8.insert.ext.i.i.i.i.i.i, 65280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !946
  store ptr %.sroa.0.03.i.i.i.i, ptr %i.m, align 8, !noalias !946
  store i64 %.sroa.4.8.insert.shift.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx2.i.i.i.i.i.i.i, align 8, !noalias !946
  %i.bd = call { ptr, i64 } @_RNvXs2_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB5_9LabelIterNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m), !noalias !947 ; 2 uses
  %i.be = extractvalue { ptr, i64 } %i.bd, 0      ; 2 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not8.i.i.i.i.i.i.i.i, label %_RINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB6_4NameNtNtCsj6eKBz9Db1c_4core4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECsi17nFaBu4HY_10ech_client.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.g
  %.promoted19.i.i.i.i.i.i.i = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !948, !noalias !949 ; 2 uses
  %.promoted20.i.i.i.i.i.i.i = load i64, ptr %i.ap, align 16, !alias.scope !948, !noalias !949 ; 2 uses
  %.promoted23.i.i.i.i.i.i.i = load i64, ptr %i.aq, align 8, !alias.scope !948, !noalias !949 ; 2 uses
  %.promoted.i.i.i.i.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !948, !noalias !949 ; 2 uses
  %.promoted32.i.i.i.i.i.i.i = load i64, ptr %i.t, align 16, !alias.scope !948, !noalias !949 ; 2 uses
  %.promoted39.i.i.i.i.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !948, !noalias !949 ; 2 uses
  %.promoted46.i.i.i.i.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !948, !noalias !949 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %storemerge.i.i.i.i.i.i.i.i.i.i.lcssa23 = phi i64 [ %.promoted20.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %storemerge.i.i.i.i.i.i.i.i.i.i.lcssa24, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.i.i ]
  %i.bf = phi i64 [ %.promoted19.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.dg, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.i.i ]
  %.lcssa621 = phi i64 [ %.promoted32.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa620, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa518 = phi i64 [ %.promoted46.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa517, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa415 = phi i64 [ %.promoted.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa414, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa12 = phi i64 [ %.promoted39.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa11, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.2.i14.i.i.i14.i.i.i.i.i.i.i.lcssa38 = phi i64 [ %.promoted23.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.0.2.i14.i.i.i14.i.i.i.i.i.i.i.lcssa39, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.i.i ]
  %.promoted1852.i.i.i.i.i.i.i = phi i64 [ %.promoted46.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.promoted1851.i.i.i.i.i.i.i, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %.promoted1745.i.i.i.i.i.i.i = phi i64 [ %.promoted39.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.promoted1744.i.i.i.i.i.i.i, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %.promoted1638.i.i.i.i.i.i.i = phi i64 [ %.promoted32.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.promoted1637.i.i.i.i.i.i.i, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %.promoted1531.i.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.promoted1530.i.i.i.i.i.i.i, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %.promoted25.i.i.i.i.i.i.i = phi i64 [ %.promoted23.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.promoted24.i.i.i.i.i.i.i, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %storemerge.i.i.i.lcssa22.i.i.i.i.i.i.i = phi i64 [ %.promoted20.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %storemerge.i.i.i.lcssa21.i.i.i.i.i.i.i, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bg = phi i64 [ %.promoted19.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.dh, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bh = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.dj, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.i.i ]
  %i.bi = phi { ptr, i64 } [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.di, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.i.i ]
  %i.bj = extractvalue { ptr, i64 } %i.bi, 1      ; 3 uses
  %i.bk = icmp samesign eq i64 %i.bj, 0
  br i1 %i.bk, label %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %bb.h, %_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write.exit.i.i.i.i.i.i.i.i
  %i.bl = phi i64 [ %i.cv, %_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write.exit.i.i.i.i.i.i.i.i ], [ %.lcssa621, %bb.h ] ; 2 uses
  %i.bm = phi i64 [ %i.cw, %_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write.exit.i.i.i.i.i.i.i.i ], [ %.lcssa518, %bb.h ] ; 2 uses
  %i.bn = phi i64 [ %i.cx, %_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write.exit.i.i.i.i.i.i.i.i ], [ %.lcssa415, %bb.h ] ; 2 uses
  %i.bo = phi i64 [ %i.cy, %_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write.exit.i.i.i.i.i.i.i.i ], [ %.lcssa12, %bb.h ] ; 2 uses
  %.promoted1850.i.i.i.i.i.i.i = phi i64 [ %.promoted1847.i.i.i.i.i.i.i, %_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write.exit.i.i.i.i.i.i.i.i ], [ %.promoted1852.i.i.i.i.i.i.i, %bb.h ] ; 2 uses
  %.promoted1743.i.i.i.i.i.i.i = phi i64 [ %.promoted1740.i.i.i.i.i.i.i, %_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write.exit.i.i.i.i.i.i.i.i ], [ %.promoted1745.i.i.i.i.i.i.i, %bb.h ] ; 2 uses
  %.promoted1636.i.i.i.i.i.i.i = phi i64 [ %.promoted1633.i.i.i.i.i.i.i, %_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write.exit.i.i.i.i.i.i.i.i ], [ %.promoted1638.i.i.i.i.i.i.i, %bb.h ] ; 2 uses
  %.promoted1529.i.i.i.i.i.i.i = phi i64 [ %.promoted1526.i.i.i.i.i.i.i, %_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write.exit.i.i.i.i.i.i.i.i ], [ %.promoted1531.i.i.i.i.i.i.i, %bb.h ] ; 2 uses
  %i.bp = phi i64 [ %i.cz, %_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write.exit.i.i.i.i.i.i.i.i ], [ %.promoted1852.i.i.i.i.i.i.i, %bb.h ] ; 3 uses
  %i.bq = phi i64 [ %i.da, %_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write.exit.i.i.i.i.i.i.i.i ], [ %.promoted1745.i.i.i.i.i.i.i, %bb.h ] ; 5 uses
  %i.br = phi i64 [ %i.db, %_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write.exit.i.i.i.i.i.i.i.i ], [ %.promoted1638.i.i.i.i.i.i.i, %bb.h ] ; 3 uses
  %i.bs = phi i64 [ %i.dc, %_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write.exit.i.i.i.i.i.i.i.i ], [ %.promoted1531.i.i.i.i.i.i.i, %bb.h ] ; 3 uses
  %.sroa.0.2.i14.i.i.i13.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.2.i14.i.i.i14.i.i.i.i.i.i.i, %_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write.exit.i.i.i.i.i.i.i.i ], [ %.promoted25.i.i.i.i.i.i.i, %bb.h ]
  %storemerge.i.i7.i.i.i.i.i.i.i.i = phi i64 [ %storemerge.i.i.i.i.i.i.i.i.i.i, %_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write.exit.i.i.i.i.i.i.i.i ], [ %storemerge.i.i.i.lcssa22.i.i.i.i.i.i.i, %bb.h ] ; 5 uses
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dd, %_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write.exit.i.i.i.i.i.i.i.i ], [ 0, %bb.h ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i
  %.val8.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.bt, align 1, !alias.scope !950, !noalias !951, !noundef !6 ; 2 uses
  %i.bu = add i8 %.val8.i.i.i.i.i.i.i.i.i.i.i, -65
  %i.bv = icmp ult i8 %i.bu, 26
  %i.bw = select i1 %i.bv, i8 32, i8 0
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = or i8 %i.bw, %.val8.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bx = icmp eq i64 %storemerge.i.i7.i.i.i.i.i.i.i.i, 0
  br i1 %i.bx, label %..thread.i_crit_edge.i.i.i.i.i.i.i, label %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit.i.i.i.i.i.i.i.i.i.i

..thread.i_crit_edge.i.i.i.i.i.i.i:               ; preds = %.preheader.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i = zext i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  br label %_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write.exit.i.i.i.i.i.i.i.i

_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i
  %.not4.i.i.i.i.i.i.i.i = icmp eq i64 %storemerge.i.i7.i.i.i.i.i.i.i.i, 8
  %i.by = zext i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not4.i.i.i.i.i.i.i.i, i64 0, i64 %i.by
  %i.bz = shl i64 %storemerge.i.i7.i.i.i.i.i.i.i.i, 3
  %i.ca = and i64 %i.bz, 56
  %i.cb = shl nuw i64 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i, %i.ca
  %i.cc = or i64 %i.cb, %.sroa.0.2.i14.i.i.i13.i.i.i.i.i.i.i ; 3 uses
  %notsub.i.i.i.i.i.i.i.i = add i64 %storemerge.i.i7.i.i.i.i.i.i.i.i, -9
  %i.cd = icmp ult i64 %notsub.i.i.i.i.i.i.i.i, -2
  br i1 %i.cd, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit.i.i.i.i.i.i.i.i.i.i
  %i.ce = xor i64 %i.cc, %i.bs                    ; 3 uses
  %i.cf = add i64 %i.br, %i.bq                    ; 3 uses
  %i.cg = add i64 %i.ce, %i.bp                    ; 2 uses
  %i.ch = call noundef i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 13)
  %i.ci = xor i64 %i.cf, %i.ch                    ; 3 uses
  %i.cj = call noundef i64 @llvm.fshl.i64(i64 %i.ce, i64 %i.ce, i64 16)
  %i.ck = xor i64 %i.cg, %i.cj                    ; 3 uses
  %i.cl = call noundef i64 @llvm.fshl.i64(i64 %i.cf, i64 %i.cf, i64 32)
  %i.cm = add i64 %i.cg, %i.ci                    ; 3 uses
  %i.cn = add i64 %i.ck, %i.cl                    ; 2 uses
  %i.co = call noundef i64 @llvm.fshl.i64(i64 %i.ci, i64 %i.ci, i64 17)
  %i.cp = xor i64 %i.cm, %i.co                    ; 3 uses
  %i.cq = call noundef i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 21)
  %i.cr = xor i64 %i.cq, %i.cn                    ; 3 uses
  %i.cs = call noundef i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 32) ; 3 uses
  %i.ct = xor i64 %i.cn, %i.cc                    ; 3 uses
  br label %_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit.i.i.i.i.i.i.i.i.i.i
  %i.cu = add i64 %storemerge.i.i7.i.i.i.i.i.i.i.i, 1
  br label %_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write.exit.i.i.i.i.i.i.i.i

_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write.exit.i.i.i.i.i.i.i.i: ; preds = %..thread.i_crit_edge.i.i.i.i.i.i.i, %bb.i, %bb.j
  %i.cv = phi i64 [ %i.bl, %bb.j ], [ %i.bl, %..thread.i_crit_edge.i.i.i.i.i.i.i ], [ %i.ct, %bb.i ] ; 2 uses
  %i.cw = phi i64 [ %i.bm, %bb.j ], [ %i.bm, %..thread.i_crit_edge.i.i.i.i.i.i.i ], [ %i.cs, %bb.i ] ; 2 uses
  %i.cx = phi i64 [ %i.bn, %bb.j ], [ %i.bn, %..thread.i_crit_edge.i.i.i.i.i.i.i ], [ %i.cr, %bb.i ] ; 2 uses
  %i.cy = phi i64 [ %i.bo, %bb.j ], [ %i.bo, %..thread.i_crit_edge.i.i.i.i.i.i.i ], [ %i.cp, %bb.i ] ; 2 uses
  %.promoted1847.i.i.i.i.i.i.i = phi i64 [ %.promoted1850.i.i.i.i.i.i.i, %bb.j ], [ %.promoted1850.i.i.i.i.i.i.i, %..thread.i_crit_edge.i.i.i.i.i.i.i ], [ %i.cs, %bb.i ] ; 2 uses
  %.promoted1740.i.i.i.i.i.i.i = phi i64 [ %.promoted1743.i.i.i.i.i.i.i, %bb.j ], [ %.promoted1743.i.i.i.i.i.i.i, %..thread.i_crit_edge.i.i.i.i.i.i.i ], [ %i.cp, %bb.i ] ; 2 uses
  %.promoted1633.i.i.i.i.i.i.i = phi i64 [ %.promoted1636.i.i.i.i.i.i.i, %bb.j ], [ %.promoted1636.i.i.i.i.i.i.i, %..thread.i_crit_edge.i.i.i.i.i.i.i ], [ %i.ct, %bb.i ] ; 2 uses
  %.promoted1526.i.i.i.i.i.i.i = phi i64 [ %.promoted1529.i.i.i.i.i.i.i, %bb.j ], [ %.promoted1529.i.i.i.i.i.i.i, %..thread.i_crit_edge.i.i.i.i.i.i.i ], [ %i.cr, %bb.i ] ; 2 uses
  %i.cz = phi i64 [ %i.bp, %bb.j ], [ %i.bp, %..thread.i_crit_edge.i.i.i.i.i.i.i ], [ %i.cs, %bb.i ]
  %i.da = phi i64 [ %i.bq, %bb.j ], [ %i.bq, %..thread.i_crit_edge.i.i.i.i.i.i.i ], [ %i.cp, %bb.i ]
  %i.db = phi i64 [ %i.br, %bb.j ], [ %i.br, %..thread.i_crit_edge.i.i.i.i.i.i.i ], [ %i.ct, %bb.i ]
  %i.dc = phi i64 [ %i.bs, %bb.j ], [ %i.bs, %..thread.i_crit_edge.i.i.i.i.i.i.i ], [ %i.cr, %bb.i ]
  %.sroa.0.2.i14.i.i.i14.i.i.i.i.i.i.i = phi i64 [ %i.cc, %bb.j ], [ %.pre.i.i.i.i.i.i.i, %..thread.i_crit_edge.i.i.i.i.i.i.i ], [ %i.by, %bb.i ] ; 3 uses
  %storemerge.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cu, %bb.j ], [ 1, %..thread.i_crit_edge.i.i.i.i.i.i.i ], [ 1, %bb.i ] ; 3 uses
  %i.dd = add nuw nsw i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.de = icmp eq i64 %i.dd, %i.bj
  br i1 %i.de, label %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.loopexit.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i

_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.loopexit.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write.exit.i.i.i.i.i.i.i.i
  %i.df = add i64 %i.bj, %i.bg                    ; 2 uses
  br label %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.i.i

_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.i.i: ; preds = %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.loopexit.i.i.i.i.i.i.i.i, %bb.h
  %storemerge.i.i.i.i.i.i.i.i.i.i.lcssa24 = phi i64 [ %storemerge.i.i.i.i.i.i.i.i.i.i, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.loopexit.i.i.i.i.i.i.i.i ], [ %storemerge.i.i.i.i.i.i.i.i.i.i.lcssa23, %bb.h ] ; 2 uses
  %i.dg = phi i64 [ %i.df, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.loopexit.i.i.i.i.i.i.i.i ], [ %i.bf, %bb.h ] ; 2 uses
  %.lcssa620 = phi i64 [ %i.cv, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.loopexit.i.i.i.i.i.i.i.i ], [ %.lcssa621, %bb.h ] ; 2 uses
  %.lcssa517 = phi i64 [ %i.cw, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.loopexit.i.i.i.i.i.i.i.i ], [ %.lcssa518, %bb.h ] ; 2 uses
  %.lcssa414 = phi i64 [ %i.cx, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.loopexit.i.i.i.i.i.i.i.i ], [ %.lcssa415, %bb.h ] ; 2 uses
  %.lcssa11 = phi i64 [ %i.cy, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.loopexit.i.i.i.i.i.i.i.i ], [ %.lcssa12, %bb.h ] ; 2 uses
  %.sroa.0.2.i14.i.i.i14.i.i.i.i.i.i.i.lcssa39 = phi i64 [ %.sroa.0.2.i14.i.i.i14.i.i.i.i.i.i.i, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.loopexit.i.i.i.i.i.i.i.i ], [ %.sroa.0.2.i14.i.i.i14.i.i.i.i.i.i.i.lcssa38, %bb.h ] ; 2 uses
  %.promoted1851.i.i.i.i.i.i.i = phi i64 [ %.promoted1847.i.i.i.i.i.i.i, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.loopexit.i.i.i.i.i.i.i.i ], [ %.promoted1852.i.i.i.i.i.i.i, %bb.h ]
  %.promoted1744.i.i.i.i.i.i.i = phi i64 [ %.promoted1740.i.i.i.i.i.i.i, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.loopexit.i.i.i.i.i.i.i.i ], [ %.promoted1745.i.i.i.i.i.i.i, %bb.h ]
  %.promoted1637.i.i.i.i.i.i.i = phi i64 [ %.promoted1633.i.i.i.i.i.i.i, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.loopexit.i.i.i.i.i.i.i.i ], [ %.promoted1638.i.i.i.i.i.i.i, %bb.h ]
  %.promoted1530.i.i.i.i.i.i.i = phi i64 [ %.promoted1526.i.i.i.i.i.i.i, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.loopexit.i.i.i.i.i.i.i.i ], [ %.promoted1531.i.i.i.i.i.i.i, %bb.h ]
  %.promoted24.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.2.i14.i.i.i14.i.i.i.i.i.i.i, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.loopexit.i.i.i.i.i.i.i.i ], [ %.promoted25.i.i.i.i.i.i.i, %bb.h ]
  %storemerge.i.i.i.lcssa21.i.i.i.i.i.i.i = phi i64 [ %storemerge.i.i.i.i.i.i.i.i.i.i, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.loopexit.i.i.i.i.i.i.i.i ], [ %storemerge.i.i.i.lcssa22.i.i.i.i.i.i.i, %bb.h ]
  %i.dh = phi i64 [ %i.df, %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.loopexit.i.i.i.i.i.i.i.i ], [ %i.bg, %bb.h ]
  %i.di = call { ptr, i64 } @_RNvXs2_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB5_9LabelIterNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m), !noalias !947 ; 2 uses
  %i.dj = extractvalue { ptr, i64 } %i.di, 0      ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB6_4NameNtNtCsj6eKBz9Db1c_4core4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECsi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.loopexit, label %bb.h

_RINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB6_4NameNtNtCsj6eKBz9Db1c_4core4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECsi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.loopexit: ; preds = %_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherE0E0E0E0Csi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.i.i.i
  store i64 %.sroa.0.2.i14.i.i.i14.i.i.i.i.i.i.i.lcssa39, ptr %i.aq, align 8
  store i64 %.lcssa11, ptr %.sroa.59.0..sroa_idx.i, align 16
  store i64 %.lcssa414, ptr %.sroa.610.0..sroa_idx.i, align 8
  store i64 %.lcssa517, ptr %.sroa.48.0..sroa_idx.i, align 8
  store i64 %.lcssa620, ptr %i.t, align 16
  store i64 %i.dg, ptr %.sroa.913.0..sroa_idx.i, align 16
  store i64 %storemerge.i.i.i.i.i.i.i.i.i.i.lcssa24, ptr %i.ap, align 16
  br label %_RINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB6_4NameNtNtCsj6eKBz9Db1c_4core4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECsi17nFaBu4HY_10ech_client.exit.i.i.i.i.i

_RINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB6_4NameNtNtCsj6eKBz9Db1c_4core4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECsi17nFaBu4HY_10ech_client.exit.i.i.i.i.i: ; preds = %_RINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB6_4NameNtNtCsj6eKBz9Db1c_4core4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECsi17nFaBu4HY_10ech_client.exit.i.i.i.i.i.loopexit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !946
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i, i64 84
  %i.dl = load i16, ptr %i.dk, align 4, !range !20, !alias.scope !952, !noalias !953, !noundef !6 ; 2 uses
  %i.dm = zext nneg i16 %i.dl to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !954
  store i64 %i.dm, ptr %i.l, align 8, !noalias !954
  call fastcc void @_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef 8) #33, !noalias !927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !954
  %i.dn = icmp eq i16 %i.dl, 37
  br i1 %i.dn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB6_4NameNtNtCsj6eKBz9Db1c_4core4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECsi17nFaBu4HY_10ech_client.exit.i.i.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i, i64 86
  %i.dp = load i16, ptr %i.do, align 2, !alias.scope !952, !noalias !953, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !955
  store i16 %i.dp, ptr %i.k, align 2, !noalias !955
  call fastcc void @_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef 2) #33, !noalias !927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !955
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_RINvXsa_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB6_4NameNtNtCsj6eKBz9Db1c_4core4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECsi17nFaBu4HY_10ech_client.exit.i.i.i.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i, i64 80
  %i.dr = load i16, ptr %i.dq, align 8, !range !21, !alias.scope !952, !noalias !953, !noundef !6 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i, i64 82 ; 2 uses
  %i.dt = zext nneg i16 %i.dr to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !956
  store i64 %i.dt, ptr %i.j, align 8, !noalias !956
  call fastcc void @_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef 8) #33, !noalias !927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !956
  switch i16 %i.dr, label %_RINvXs6_NtNtCsjXdHNeFfodD_13hickory_proto2op5queryNtB6_5QueryNtNtCsj6eKBz9Db1c_4core4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECsi17nFaBu4HY_10ech_client.exit.i.i.i.i [
    i16 5, label %bb.m
    i16 6, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.du = load i16, ptr %i.ds, align 2, !alias.scope !952, !noalias !953, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !957
  store i16 %i.du, ptr %i.i, align 2, !noalias !957
  call fastcc void @_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 2) #33, !noalias !927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !957
  br label %_RINvXs6_NtNtCsjXdHNeFfodD_13hickory_proto2op5queryNtB6_5QueryNtNtCsj6eKBz9Db1c_4core4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECsi17nFaBu4HY_10ech_client.exit.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.dv = load i16, ptr %i.ds, align 2, !alias.scope !952, !noalias !953, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !958
  store i16 %i.dv, ptr %i.h, align 2, !noalias !958
  call fastcc void @_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 2) #33, !noalias !927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !958
  br label %_RINvXs6_NtNtCsjXdHNeFfodD_13hickory_proto2op5queryNtB6_5QueryNtNtCsj6eKBz9Db1c_4core4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECsi17nFaBu4HY_10ech_client.exit.i.i.i.i

_RINvXs6_NtNtCsjXdHNeFfodD_13hickory_proto2op5queryNtB6_5QueryNtNtCsj6eKBz9Db1c_4core4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECsi17nFaBu4HY_10ech_client.exit.i.i.i.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.dw = icmp eq ptr %i.ar, %i.an
  br i1 %i.dw, label %_RINvYNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryNtNtCsj6eKBz9Db1c_4core4hash4Hash10hash_sliceNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECsi17nFaBu4HY_10ech_client.exit.i.i.i, label %bb.d

_RINvYNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryNtNtCsj6eKBz9Db1c_4core4hash4Hash10hash_sliceNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECsi17nFaBu4HY_10ech_client.exit.i.i.i: ; preds = %_RINvXs6_NtNtCsjXdHNeFfodD_13hickory_proto2op5queryNtB6_5QueryNtNtCsj6eKBz9Db1c_4core4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECsi17nFaBu4HY_10ech_client.exit.i.i.i.i, %bb.c
  %i.dx = getelementptr inbounds nuw i8, ptr %.val.i, i64 44
  %i.dy = load i8, ptr %i.dx, align 4, !range !17, !alias.scope !927, !noalias !929, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !959
  store i8 %i.dy, ptr %i.g, align 1, !noalias !959
  call fastcc void @_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 1) #33, !noalias !927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !959
  %i.dz = getelementptr inbounds nuw i8, ptr %.val.i, i64 45
  %i.ea = load i8, ptr %i.dz, align 1, !range !15, !alias.scope !927, !noalias !929, !noundef !6 ; 4 uses
  %i.eb = icmp ne i8 %i.ea, 2
  %i.ec = zext i1 %i.eb to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !960
  store i64 %i.ec, ptr %i.f, align 8, !noalias !960
  call fastcc void @_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 8) #33, !noalias !927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !960
  %.not.i.i.i = icmp eq i8 %i.ea, 2
  br i1 %.not.i.i.i, label %_RINvXs3_NtNtCsj6eKBz9Db1c_4core4hash5implsRINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool8CacheKeyENtB8_4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECsi17nFaBu4HY_10ech_client.exit, label %bb.o

bb.o:                                             ; preds = %_RINvYNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryNtNtCsj6eKBz9Db1c_4core4hash4Hash10hash_sliceNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECsi17nFaBu4HY_10ech_client.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !961)
  %i.ed = trunc nuw i8 %i.ea to i1
  %i.ee = zext nneg i8 %i.ea to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !962
  store i64 %i.ee, ptr %i.e, align 8, !noalias !962
  call fastcc void @_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8) #33, !noalias !963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !962
  %i.ef = getelementptr inbounds nuw i8, ptr %.val.i, i64 46 ; 2 uses
  br i1 %i.ed, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.0.0.copyload.i.i.i.i = load i128, ptr %i.ef, align 2, !alias.scope !963, !noalias !964
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !965
  store i128 %.sroa.0.0.copyload.i.i.i.i, ptr %i.d, align 16, !noalias !965
  call fastcc void @_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 16) #33, !noalias !963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !965
  br label %_RINvXsY_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata3optNtB6_12ClientSubnetNtNtCsj6eKBz9Db1c_4core4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECsi17nFaBu4HY_10ech_client.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %.sroa.01.0.copyload.i.i.i.i = load i32, ptr %i.ef, align 2, !alias.scope !963, !noalias !964
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !966
  store i32 %.sroa.01.0.copyload.i.i.i.i, ptr %i.c, align 4, !noalias !966
  call fastcc void @_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 4) #33, !noalias !963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !966
  br label %_RINvXsY_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata3optNtB6_12ClientSubnetNtNtCsj6eKBz9Db1c_4core4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECsi17nFaBu4HY_10ech_client.exit.i.i.i

_RINvXsY_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata3optNtB6_12ClientSubnetNtNtCsj6eKBz9Db1c_4core4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECsi17nFaBu4HY_10ech_client.exit.i.i.i: ; preds = %bb.q, %bb.p
  %i.eg = getelementptr inbounds nuw i8, ptr %.val.i, i64 62
  %i.eh = load i8, ptr %i.eg, align 2, !alias.scope !963, !noalias !964, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !967
  store i8 %i.eh, ptr %i.b, align 1, !noalias !967
  call fastcc void @_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1) #33, !noalias !963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !967
  %i.ei = getelementptr inbounds nuw i8, ptr %.val.i, i64 63
  %i.ej = load i8, ptr %i.ei, align 1, !alias.scope !963, !noalias !964, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !968
  store i8 %i.ej, ptr %i.a, align 1, !noalias !968
  call fastcc void @_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #33, !noalias !963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !968
  br label %_RINvXs3_NtNtCsj6eKBz9Db1c_4core4hash5implsRINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool8CacheKeyENtB8_4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECsi17nFaBu4HY_10ech_client.exit

_RINvXs3_NtNtCsj6eKBz9Db1c_4core4hash5implsRINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool8CacheKeyENtB8_4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECsi17nFaBu4HY_10ech_client.exit: ; preds = %_RINvYNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryNtNtCsj6eKBz9Db1c_4core4hash4Hash10hash_sliceNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECsi17nFaBu4HY_10ech_client.exit.i.i.i, %_RINvXsY_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata3optNtB6_12ClientSubnetNtNtCsj6eKBz9Db1c_4core4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECsi17nFaBu4HY_10ech_client.exit.i.i.i
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.t, align 16, !alias.scope !969
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !969
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !969 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !969
  %i.ek = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !969, !noundef !6
  %i.el = shl i64 %i.ek, 56
  %i.em = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.en = load i64, ptr %i.em, align 8, !alias.scope !969, !noundef !6
  %i.eo = or i64 %i.el, %i.en                     ; 2 uses
  %i.ep = xor i64 %i.eo, %.sroa.22.0.copyload.i.i ; 3 uses
  %i.eq = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.er = add i64 %i.ep, %.sroa.10.0.copyload.i.i ; 2 uses
  %i.es = call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.et = xor i64 %i.es, %i.eq                    ; 3 uses
  %i.eu = call noundef i64 @llvm.fshl.i64(i64 %i.ep, i64 %i.ep, i64 16)
  %i.ev = xor i64 %i.eu, %i.er                    ; 3 uses
  %i.ew = call noundef i64 @llvm.fshl.i64(i64 %i.eq, i64 %i.eq, i64 32)
  %i.ex = add i64 %i.er, %i.et                    ; 3 uses
  %i.ey = add i64 %i.ev, %i.ew                    ; 2 uses
  %i.ez = call noundef i64 @llvm.fshl.i64(i64 %i.et, i64 %i.et, i64 17)
  %i.fa = xor i64 %i.ex, %i.ez                    ; 3 uses
  %i.fb = call noundef i64 @llvm.fshl.i64(i64 %i.ev, i64 %i.ev, i64 21)
  %i.fc = xor i64 %i.fb, %i.ey                    ; 3 uses
  %i.fd = call noundef i64 @llvm.fshl.i64(i64 %i.ex, i64 %i.ex, i64 32)
  %i.fe = xor i64 %i.ey, %i.eo
  %i.ff = xor i64 %i.fd, 255
  %i.fg = add i64 %i.fe, %i.fa                    ; 3 uses
  %i.fh = add i64 %i.fc, %i.ff                    ; 2 uses
  %i.fi = call noundef i64 @llvm.fshl.i64(i64 %i.fa, i64 %i.fa, i64 13)
  %i.fj = xor i64 %i.fg, %i.fi                    ; 3 uses
  %i.fk = call noundef i64 @llvm.fshl.i64(i64 %i.fc, i64 %i.fc, i64 16)
  %i.fl = xor i64 %i.fk, %i.fh                    ; 3 uses
  %i.fm = call noundef i64 @llvm.fshl.i64(i64 %i.fg, i64 %i.fg, i64 32)
  %i.fn = add i64 %i.fj, %i.fh                    ; 3 uses
  %i.fo = add i64 %i.fl, %i.fm                    ; 2 uses
  %i.fp = call noundef i64 @llvm.fshl.i64(i64 %i.fj, i64 %i.fj, i64 17)
  %i.fq = xor i64 %i.fn, %i.fp                    ; 3 uses
  %i.fr = call noundef i64 @llvm.fshl.i64(i64 %i.fl, i64 %i.fl, i64 21)
  %i.fs = xor i64 %i.fr, %i.fo                    ; 3 uses
  %i.ft = call noundef i64 @llvm.fshl.i64(i64 %i.fn, i64 %i.fn, i64 32)
  %i.fu = add i64 %i.fq, %i.fo                    ; 3 uses
  %i.fv = add i64 %i.fs, %i.ft                    ; 2 uses
  %i.fw = call noundef i64 @llvm.fshl.i64(i64 %i.fq, i64 %i.fq, i64 13)
  %i.fx = xor i64 %i.fw, %i.fu                    ; 3 uses
  %i.fy = call noundef i64 @llvm.fshl.i64(i64 %i.fs, i64 %i.fs, i64 16)
  %i.fz = xor i64 %i.fy, %i.fv                    ; 3 uses
end_hunk_0
