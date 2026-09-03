Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_workspace-6b434d4691723669.ruff_workspace.2e76c9c9f776d8f1-cgu.14?download=true
inline.NumInlined: 1131
inline.NumDeleted: 561
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace9pyproject29get_minimum_supported_versions_0B5_:bb.a
  store i64 %i.bv, ptr %i.db, align 8, !noalias !3527
  %i.dc = add i64 %i.cw, 1
  store i64 %i.dc, ptr %i.cv, align 8, !alias.scope !3528, !noalias !3527
  br label %_RNvMs3_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_7Version12push_release.exit.1.i.i.i

_RNvMs3_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_7Version12push_release.exit.1.i.i.i: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecyE8push_mutCs3ZkgueCtkyH_14ruff_workspace.exit.i.1.i.i.i, %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall12push_release.exit.i.1.i.i.i
  %i.dd = load ptr, ptr %i.a, align 8, !noalias !3527, !nonnull !8, !noundef !8 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load i64, ptr %i.de, align 8, !range !14, !noalias !3527, !noundef !8
  %.not6.i.i.i = icmp eq i64 %i.df, 2
  br i1 %.not6.i.i.i, label %bb.q, label %bb.p

bb.ai:                                            ; preds = %bb.ak
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29, !noalias !3527
  unreachable

bb.aj:                                            ; preds = %bb.v, %bb.k
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.x, %bb.k ], [ %i.ao, %bb.v ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3530)
  call void @llvm.experimental.noalias.scope.decl(metadata !3531)
  call void @llvm.experimental.noalias.scope.decl(metadata !3532)
  %i.dh = load ptr, ptr %i.a, align 8, !alias.scope !3533, !noalias !3527, !nonnull !8, !noundef !8
  %i.di = atomicrmw sub ptr %i.dh, i64 1 release, align 8, !noalias !3534
  %i.dj = icmp eq i64 %i.di, 1
  br i1 %i.dj, label %bb.ak, label %common.resume.i.i

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %common.resume.i.i unwind label %bb.ai, !noalias !3527

_RINvMs3_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB6_7Version3newARyj2_BW_ECs3ZkgueCtkyH_14ruff_workspace.exit.i: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvNvNtCs3ZkgueCtkyH_14ruff_workspace9pyproject29get_minimum_supported_version11major_minor.exit

_RNvNvNtCs3ZkgueCtkyH_14ruff_workspace9pyproject29get_minimum_supported_version11major_minor.exit: ; preds = %bb.d, %.thread.i, %bb.f, %_RINvMs3_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB6_7Version3newARyj2_BW_ECs3ZkgueCtkyH_14ruff_workspace.exit.i
  %.sroa.0.0.i = phi ptr [ %i.dd, %_RINvMs3_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB6_7Version3newARyj2_BW_ECs3ZkgueCtkyH_14ruff_workspace.exit.i ], [ null, %bb.d ], [ null, %bb.f ], [ null, %.thread.i ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 6903721584472138) i64 @_RNvMNtNtCscdodAO9FK5_5alloc3vec13in_place_dropINtB2_11InPlaceDropINtCs5e9M2GLoJMY_8indexmap6BucketINtNtNtCs4NRVxsYgnAr_4core3mem12maybe_uninit11MaybeUninitNtNtCs2AWtUsOyxgP_3std4path7PathBufENtNtCs3ZkgueCtkyH_14ruff_workspace13configuration13ConfigurationEE3lenB37_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noundef !8
  %i.c = load ptr, ptr %0, align 8, !noundef !8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 2672
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 768614336404564651) i64 @_RNvMNtNtCscdodAO9FK5_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternE3lenCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noundef !8
  %i.c = load ptr, ptr %0, align 8, !noundef !8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24
  ret i64 %i.g
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtB1g_6option6OptionTNtCs2Qp84xiUxLo_17ruff_ranged_value11ValueSourcebEEEE10initializeCs3ZkgueCtkyH_14ruff_workspace(ptr noundef nonnull returned align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull %0, ptr noundef nonnull @_RINvNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eager7destroyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtB1a_6option6OptionTNtCs2Qp84xiUxLo_17ruff_ranged_value11ValueSourcebEEEECs3ZkgueCtkyH_14ruff_workspace)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.a, align 8
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathE12insert_routeCs3ZkgueCtkyH_14ruff_workspace(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(152) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [152 x i8], align 8               ; 20 uses
  %i.c = alloca [152 x i8], align 8               ; 21 uses
  %i.d = alloca [152 x i8], align 8               ; 11 uses
  %i.e = alloca [152 x i8], align 8               ; 21 uses
  %i.f = alloca [152 x i8], align 8               ; 11 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [40 x i8], align 8                ; 9 uses
  %i.k = alloca [40 x i8], align 8                ; 7 uses
  %i.l = alloca [40 x i8], align 8                ; 4 uses
  %i.m = alloca [40 x i8], align 8                ; 4 uses
  %i.n = alloca [48 x i8], align 8                ; 5 uses
  %i.o = alloca [152 x i8], align 8               ; 20 uses
  %i.p = alloca [152 x i8], align 8               ; 13 uses
  %i.q = alloca [40 x i8], align 8                ; 4 uses
  %i.r = alloca [40 x i8], align 8                ; 4 uses
  %i.s = alloca [48 x i8], align 8                ; 5 uses
  %i.t = alloca [40 x i8], align 8                ; 8 uses
  %i.u = alloca [32 x i8], align 8                ; 13 uses
  %i.v = alloca [48 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @_RNvNtCskYQKiYedT9l_7matchit4tree13find_wildcard(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.w = load i64, ptr %i.u, align 8, !range !9, !noundef !8
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  %.sroa.4141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.5146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.6.sroa.4160.0..sroa.6.0..sroa_idx151.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.6.sroa.5163.0..sroa.6.0..sroa_idx151.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 148
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.sroa.4116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %.sroa.5121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 149
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %.sroa.5128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %.sroa.5108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 148
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 149
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %.sroa.4141.0..sroa_idx142 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.5146.0..sroa_idx147 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.6.sroa.4160.0..sroa.6.0..sroa_idx152.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.6.sroa.5163.0..sroa.6.0..sroa_idx152.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.sroa.4116.0..sroa_idx117 = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %.sroa.5121.0..sroa_idx122 = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 149
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %.sroa.4167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %.sroa.5168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %.sroa.4103.0..sroa_idx104 = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %.sroa.5108.0..sroa_idx109 = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 148
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 149
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.4141.0..sroa_idx144 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.5146.0..sroa_idx149 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.6.sroa.4160.0..sroa.6.0..sroa_idx153.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.6.sroa.5163.0..sroa.6.0..sroa_idx153.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.4116.0..sroa_idx119 = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.5121.0..sroa_idx124 = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 149
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.2170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %.sroa.3171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %.sroa.4103.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %.sroa.5108.0..sroa_idx111 = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  br label %bb.b

._crit_edge:                                      ; preds = %bb.ax, %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.569.0.copyload = load i64, ptr %.sroa.569.0..sroa_idx, align 8
  %i.bn = load <2 x i64>, ptr %i.bm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store <2 x i64> %i.bn, ptr %0, align 8
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.569.0.copyload, ptr %.sroa.572.0..sroa_idx, align 8
  br label %bb.be

bb.b:                                             ; preds = %.lr.ph, %bb.ax
  %.sroa.0.0297 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.2, %bb.ax ] ; 15 uses
  %.sroa.061.0.copyload = load i64, ptr %i.y, align 8
  %.sroa.462.0.copyload = load i64, ptr %.sroa.462.0..sroa_idx, align 8 ; 10 uses
  %.sroa.563.0.copyload = load i64, ptr %.sroa.563.0..sroa_idx, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.bo = trunc nuw i64 %.sroa.061.0.copyload to i1
  br i1 %i.bo, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bp = load ptr, ptr %2, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.bq = load i64, ptr %i.z, align 8, !noundef !8 ; 4 uses
  %i.br = icmp ult i64 %.sroa.563.0.copyload, %.sroa.462.0.copyload
  %.not188 = icmp ugt i64 %.sroa.563.0.copyload, %i.bq
  %or.cond482 = or i1 %i.br, %.not188
  br i1 %or.cond482, label %bb.f, label %bb.e, !prof !33

bb.d:                                             ; preds = %bb.b
  store i64 1, ptr %.sroa.0.0297, align 8
  %.sroa.4.0..sroa.0.0.21.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0297, i64 8
  store ptr %3, ptr %.sroa.4.0..sroa.0.0.21.sroa_idx, align 8
  %.sroa.5.0..sroa.0.0.21.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0297, i64 16
  store i64 %4, ptr %.sroa.5.0..sroa.0.0.21.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef8to_owned(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2)
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0297, i64 24 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskYQKiYedT9l_7matchit6escape14UnescapedRouteECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(48) %i.bs)
          to label %bb.bd unwind label %bb.bc

bb.e:                                             ; preds = %bb.c
  %i.bt = sub nuw i64 %.sroa.563.0.copyload, %.sroa.462.0.copyload ; 3 uses
  %i.bu = icmp ugt i64 %i.bt, 1
  br i1 %i.bu, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.462.0.copyload, i64 noundef %.sroa.563.0.copyload, i64 noundef %i.bq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #30
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.sroa.462.0.copyload
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !noundef !8
  %i.by = icmp eq i8 %i.bx, 42
  br i1 %i.by, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.e
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #30
  unreachable

bb.i:                                             ; preds = %bb.g
  %.not191 = icmp eq i64 %.sroa.563.0.copyload, %i.bq
  br i1 %.not191, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.g
  %.not189 = icmp eq i64 %.sroa.462.0.copyload, 0
  br i1 %.not189, label %bb.v, label %bb.x

bb.k:                                             ; preds = %bb.i
  %.not192 = icmp eq i64 %.sroa.462.0.copyload, 0
  br i1 %.not192, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.i
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.be

bb.m:                                             ; preds = %bb.p, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef8to_owned(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bz, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store i64 0, ptr %i.ca, align 8
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.488.0..sroa_idx, align 8
  %.sroa.589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.589.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  store i32 0, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.o, i64 148
  store i8 0, ptr %i.cc, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.477.0..sroa_idx, align 8
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  store i64 0, ptr %.sroa.578.0..sroa_idx, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.o, i64 149
  store i8 5, ptr %i.ce, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.o, i64 96 ; 2 uses
  store i64 0, ptr %i.cf, align 8
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.480.0..sroa_idx, align 8
  %.sroa.581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  store i64 0, ptr %i.o, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.581.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.474.0..sroa_idx, align 8
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  store i64 0, ptr %.sroa.575.0..sroa_idx, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.p, i64 144
  store i32 1, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.p, i64 148
  store i8 0, ptr %i.ci, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 24, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.p, i64 149
  store i8 4, ptr %i.ck, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i64 24, i1 false)
  store i64 1, ptr %i.p, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %3, ptr %.sroa.445.0..sroa_idx, align 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %4, ptr %.sroa.546.0..sroa_idx, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 24, i1 false)
  %i.cn = invoke fastcc noundef i64 @_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathE9add_childCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(152) %.sroa.0.0297, ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.p)
          to label %bb.r unwind label %bb.q       ; 3 uses

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef11slice_until(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.462.0.copyload)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef8to_owned(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.s, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0297, i64 24 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskYQKiYedT9l_7matchit6escape14UnescapedRouteECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(48) %i.co)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.co, ptr noundef nonnull align 8 dereferenceable(48) %i.s, i64 48, i1 false)
  br label %common.resume

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.co, ptr noundef nonnull align 8 dereferenceable(48) %i.s, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef9slice_off(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.462.0.copyload)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.q, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.m

bb.q:                                             ; preds = %bb.m
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskYQKiYedT9l_7matchit6escape14UnescapedRouteECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(48) %i.ca) #28
          to label %common.resume unwind label %bb.u

bb.r:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskYQKiYedT9l_7matchit6escape14UnescapedRouteECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(48) %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.0297, i64 148
  store i8 1, ptr %i.cr, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.0297, i64 112
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !8 ; 2 uses
  %i.cu = icmp ult i64 %i.cn, %i.ct
  br i1 %i.cu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.0297, i64 104
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !8, !noundef !8
  %i.cx = getelementptr inbounds nuw [152 x i8], ptr %i.cw, i64 %i.cn
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cx, ptr %i.cy, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.be

bb.t:                                             ; preds = %bb.r
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cn, i64 noundef %i.ct, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #30
  unreachable

bb.u:                                             ; preds = %bb.aq, %bb.ak, %bb.q
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.v:                                             ; preds = %bb.z, %bb.j
  %i.da = phi i64 [ %.pre381, %bb.z ], [ %i.bq, %bb.j ] ; 4 uses
  %i.db = phi ptr [ %.pre, %bb.z ], [ %i.bp, %bb.j ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.da
  %i.dd = icmp samesign eq i64 %i.da, 0
  br i1 %i.dd, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v, %bb.w
  %.sroa.02.08.i = phi i64 [ %i.dh, %bb.w ], [ 0, %bb.v ] ; 3 uses
  %i.de = phi ptr [ %i.dg, %bb.w ], [ %i.db, %bb.v ] ; 2 uses
  %.val.i = load i8, ptr %i.de, align 1, !noalias !3553, !noundef !8
  %i.df = icmp eq i8 %.val.i, 47
  br i1 %i.df, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 1 ; 2 uses
  %i.dh = add nuw i64 %.sroa.02.08.i, 1
  %i.di = icmp eq ptr %i.dg, %i.dc
  br i1 %i.di, label %.loopexit, label %.lr.ph.i

bb.x:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef11slice_until(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.462.0.copyload)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef8to_owned(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.0297, i64 24 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskYQKiYedT9l_7matchit6escape14UnescapedRouteECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(48) %i.dj)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dj, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false)
  br label %common.resume

bb.z:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dj, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef9slice_off(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.462.0.copyload)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.pre = load ptr, ptr %2, align 8
  %.pre381 = load i64, ptr %i.z, align 8
  br label %bb.v

bb.aa:                                            ; preds = %.lr.ph.i
  %i.dl = icmp ult i64 %.sroa.02.08.i, %i.da
  call void @llvm.assume(i1 %i.dl)
  %i.dm = add nuw i64 %.sroa.02.08.i, 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.w, %bb.v, %bb.aa
  %.sroa.052.0 = phi i64 [ %i.dm, %bb.aa ], [ 0, %bb.v ], [ %i.da, %bb.w ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef11slice_until(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %i.bt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef11slice_until(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.052.0)
  %i.dn = load i64, ptr %i.aa, align 8, !noundef !8
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef9slice_off(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i, i64 noundef %i.dn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef9slice_off(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.052.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false)
  call void @_RNvNtCskYQKiYedT9l_7matchit4tree13find_wildcard(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.do = load i64, ptr %i.g, align 8, !range !9, !noundef !8 ; 2 uses
  %i.dp = trunc nuw i64 %i.do to i1
  %i.dq = load i64, ptr %i.ab, align 8, !range !21 ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 0
  %or.cond.not = select i1 %i.dp, i1 true, i1 %i.dr
  br i1 %or.cond.not, label %bb.ab, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtNtB4_3ops5range5RangejEENtNtCskYQKiYedT9l_7matchit5error11InsertErrorEECs3ZkgueCtkyH_14ruff_workspace.exit200

bb.ab:                                            ; preds = %.loopexit
  %i.ds = icmp ne i64 %i.do, 0
  %i.dt = icmp sgt i64 %i.dq, -1
  %or.cond = select i1 %i.ds, i1 %i.dt, i1 false
  br i1 %or.cond, label %bb.ac, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtNtB4_3ops5range5RangejEENtNtCskYQKiYedT9l_7matchit5error11InsertErrorEECs3ZkgueCtkyH_14ruff_workspace.exit

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.af unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.ab, align 8, !range !15, !alias.scope !3554, !noundef !8 ; 2 uses
  %i.dv = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.dv, label %common.resume, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.val3.i.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !3555, !nonnull !8, !noundef !8
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !3556
  br label %common.resume

bb.af:                                            ; preds = %bb.ac
  %.val.i.i.i.i = load i64, ptr %i.ab, align 8, !range !15, !alias.scope !3554, !noundef !8 ; 2 uses
  %i.dw = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.dw, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtNtB4_3ops5range5RangejEENtNtCskYQKiYedT9l_7matchit5error11InsertErrorEECs3ZkgueCtkyH_14ruff_workspace.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.val1.i.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !3555, !nonnull !8, !noundef !8
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !3557
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtNtB4_3ops5range5RangejEENtNtCskYQKiYedT9l_7matchit5error11InsertErrorEECs3ZkgueCtkyH_14ruff_workspace.exit

common.resume:                                    ; preds = %bb.q, %bb.bc, %bb.aq, %bb.ak, %bb.y, %bb.o, %bb.ad, %bb.ae
  %common.resume.op = phi { ptr, i32 } [ %i.du, %bb.ad ], [ %i.du, %bb.ae ], [ %i.fu, %bb.bc ], [ %i.dk, %bb.y ], [ %i.cq, %bb.q ], [ %i.cp, %bb.o ], [ %i.ep, %bb.aq ], [ %i.ee, %bb.ak ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtNtB4_3ops5range5RangejEENtNtCskYQKiYedT9l_7matchit5error11InsertErrorEECs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %bb.ab, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.dx = load i64, ptr %i.ad, align 8, !noundef !8 ; 2 uses
  %i.dy = icmp eq i64 %i.dx, 0
  switch i64 %i.dx, label %bb.aj [
    i64 0, label %bb.ah
    i64 1, label %bb.ai
  ]

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtNtB4_3ops5range5RangejEENtNtCskYQKiYedT9l_7matchit5error11InsertErrorEECs3ZkgueCtkyH_14ruff_workspace.exit200: ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.be

bb.ah:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtNtB4_3ops5range5RangejEENtNtCskYQKiYedT9l_7matchit5error11InsertErrorEECs3ZkgueCtkyH_14ruff_workspace.exit, %bb.aj, %bb.ai
  %.sroa.056.0 = phi i8 [ 1, %bb.aj ], [ %i.ed, %bb.ai ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtNtB4_3ops5range5RangejEENtNtCskYQKiYedT9l_7matchit5error11InsertErrorEECs3ZkgueCtkyH_14ruff_workspace.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef8to_owned(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.al, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.ae, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4141.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5146.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.sroa.4160.0..sroa.6.0..sroa_idx151.sroa_idx, align 8
  store i32 0, ptr %i.af, align 8
  store i8 0, ptr %i.ag, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.5163.0..sroa.6.0..sroa_idx151.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4116.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.5121.0..sroa_idx, align 8
  store i8 5, ptr %i.ai, align 1
  store i64 0, ptr %i.aj, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4127.0..sroa_idx, align 8
  store i64 0, ptr %i.e, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5128.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4103.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.5108.0..sroa_idx, align 8
  store i32 1, ptr %i.am, align 8
  store i8 0, ptr %i.an, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  store i8 %.sroa.056.0, ptr %i.ap, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  %i.dz = invoke fastcc noundef i64 @_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathE9add_childCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(152) %.sroa.0.0297, ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.f)
          to label %bb.al unwind label %bb.ak     ; 3 uses

bb.ai:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtNtB4_3ops5range5RangejEENtNtCskYQKiYedT9l_7matchit5error11InsertErrorEECs3ZkgueCtkyH_14ruff_workspace.exit
  %i.ea = load ptr, ptr %i.j, align 8, !nonnull !8, !noundef !8
  %i.eb = load i8, ptr %i.ea, align 1, !noundef !8
  %i.ec = icmp ne i8 %i.eb, 47
  %i.ed = zext i1 %i.ec to i8
  br label %bb.ah

bb.aj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtNtB4_3ops5range5RangejEENtNtCskYQKiYedT9l_7matchit5error11InsertErrorEECs3ZkgueCtkyH_14ruff_workspace.exit
  br label %bb.ah

bb.ak:                                            ; preds = %bb.ah
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskYQKiYedT9l_7matchit6escape14UnescapedRouteECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(48) %i.ae) #28
          to label %common.resume unwind label %bb.u

bb.al:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskYQKiYedT9l_7matchit6escape14UnescapedRouteECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(48) %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.0297, i64 148
  store i8 1, ptr %i.ef, align 4
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.0297, i64 112
  %i.eh = load i64, ptr %i.eg, align 8, !noundef !8 ; 2 uses
  %i.ei = icmp ult i64 %i.dz, %i.eh
  br i1 %i.ei, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.0297, i64 104
  %i.ek = load ptr, ptr %i.ej, align 8, !nonnull !8, !noundef !8
  %i.el = getelementptr inbounds nuw [152 x i8], ptr %i.ek, i64 %i.dz ; 4 uses
  br i1 %i.dy, label %bb.ap, label %bb.ao

bb.an:                                            ; preds = %bb.al
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.dz, i64 noundef %i.eh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #30
  unreachable

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef8to_owned(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.az, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.as, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4141.0..sroa_idx142, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5146.0..sroa_idx147, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.sroa.4160.0..sroa.6.0..sroa_idx152.sroa_idx, align 8
  store i32 0, ptr %i.at, align 8
  store i8 0, ptr %i.au, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.5163.0..sroa.6.0..sroa_idx152.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4116.0..sroa_idx117, align 8
  store i64 0, ptr %.sroa.5121.0..sroa_idx122, align 8
  store i8 5, ptr %i.aw, align 1
  store i64 0, ptr %i.ax, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4167.0..sroa_idx, align 8
  store i64 0, ptr %i.c, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5168.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4103.0..sroa_idx104, align 8
  store i64 0, ptr %.sroa.5108.0..sroa_idx109, align 8
  store i32 1, ptr %i.ba, align 8
  store i8 0, ptr %i.bb, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  store i8 5, ptr %i.bd, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false)
  %i.em = invoke fastcc noundef i64 @_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathE16add_suffix_childCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(152) %i.el, ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.d)
          to label %bb.ar unwind label %bb.aq     ; 3 uses

bb.ap:                                            ; preds = %bb.as, %bb.am
  %.sroa.0.1 = phi ptr [ %i.el, %bb.am ], [ %i.ev, %bb.as ] ; 11 uses
  %i.en = load i64, ptr %i.z, align 8, !noundef !8
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %bb.au, label %bb.av

bb.aq:                                            ; preds = %bb.ao
  %i.ep = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskYQKiYedT9l_7matchit6escape14UnescapedRouteECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(48) %i.as) #28
          to label %common.resume unwind label %bb.u

bb.ar:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskYQKiYedT9l_7matchit6escape14UnescapedRouteECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(48) %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 112
  %i.er = load i64, ptr %i.eq, align 8, !noundef !8 ; 2 uses
  %i.es = icmp ult i64 %i.em, %i.er
  br i1 %i.es, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.et = getelementptr inbounds nuw i8, ptr %i.el, i64 104
  %i.eu = load ptr, ptr %i.et, align 8, !nonnull !8, !noundef !8
  %i.ev = getelementptr inbounds nuw [152 x i8], ptr %i.eu, i64 %i.em
  br label %bb.ap

bb.at:                                            ; preds = %bb.ar
end_hunk_0
begin_hunk_1_@_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathE9add_childCs3ZkgueCtkyH_14ruff_workspace:bb.a

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathEE8grow_oneCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathEE8push_mutCs3ZkgueCtkyH_14ruff_workspace.exit unwind label %bb.d, !noalias !3728

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathEECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.a) #28
          to label %common.resume unwind label %bb.e, !noalias !3727

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29, !noalias !3727
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.d ], [ %i.v, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathEE8push_mutCs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %bb.b, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !3727, !noalias !3728, !nonnull !8, !noundef !8
  %i.q = getelementptr inbounds nuw [152 x i8], ptr %i.p, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.q, ptr noundef nonnull align 8 dereferenceable(152) %1, i64 152, i1 false)
  %i.r = add nuw nsw i64 %i.e, 1
  store i64 %i.r, ptr %i.d, align 8, !alias.scope !3727, !noalias !3728
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.s = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr noundef nonnull align 8 dereferenceable(152) %1, i64 152, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3729)
  %i.t = load i64, ptr %i.c, align 8, !range !15, !alias.scope !3729, !noalias !3730, !noundef !8
  %i.u = icmp eq i64 %i.e, %i.t
  br i1 %i.u, label %bb.g, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathEE10insert_mutCs3ZkgueCtkyH_14ruff_workspace.exit

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathEE8grow_oneCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathEE10insert_mutCs3ZkgueCtkyH_14ruff_workspace.exit unwind label %bb.h, !noalias !3730

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathEECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.b) #28
          to label %common.resume unwind label %bb.i, !noalias !3729

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29, !noalias !3729
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathEE10insert_mutCs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %bb.g, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !3729, !noalias !3730, !nonnull !8, !noundef !8
  %i.z = getelementptr inbounds nuw [152 x i8], ptr %i.y, i64 %i.s ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.aa, ptr noundef nonnull align 8 dereferenceable(152) %i.z, i64 152, i1 false), !noalias !3731
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.z, ptr noundef nonnull align 8 dereferenceable(152) %1, i64 152, i1 false)
  %i.ab = add nuw nsw i64 %i.e, 1
  store i64 %i.ab, ptr %i.d, align 8, !alias.scope !3729, !noalias !3730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathEE10insert_mutCs3ZkgueCtkyH_14ruff_workspace.exit, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathEE8push_mutCs3ZkgueCtkyH_14ruff_workspace.exit
  %.sroa.0.0 = phi i64 [ %i.s, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathEE10insert_mutCs3ZkgueCtkyH_14ruff_workspace.exit ], [ %i.e, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCskYQKiYedT9l_7matchit4tree4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathEE8push_mutCs3ZkgueCtkyH_14ruff_workspace.exit ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodejE12insert_routeCs3ZkgueCtkyH_14ruff_workspace(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(144) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [144 x i8], align 8               ; 20 uses
  %i.c = alloca [144 x i8], align 8               ; 21 uses
  %i.d = alloca [144 x i8], align 8               ; 12 uses
  %i.e = alloca [144 x i8], align 8               ; 21 uses
  %i.f = alloca [144 x i8], align 8               ; 12 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [40 x i8], align 8                ; 9 uses
  %i.k = alloca [40 x i8], align 8                ; 7 uses
  %i.l = alloca [40 x i8], align 8                ; 4 uses
  %i.m = alloca [40 x i8], align 8                ; 4 uses
  %i.n = alloca [48 x i8], align 8                ; 5 uses
  %i.o = alloca [144 x i8], align 8               ; 20 uses
  %i.p = alloca [144 x i8], align 8               ; 12 uses
  %i.q = alloca [40 x i8], align 8                ; 4 uses
  %i.r = alloca [40 x i8], align 8                ; 4 uses
  %i.s = alloca [48 x i8], align 8                ; 5 uses
  %i.t = alloca [40 x i8], align 8                ; 8 uses
  %i.u = alloca [32 x i8], align 8                ; 13 uses
  %i.v = alloca [48 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @_RNvNtCskYQKiYedT9l_7matchit4tree13find_wildcard(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.w = load i64, ptr %i.u, align 8, !range !9, !noundef !8
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %.sroa.4124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.5129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.6.sroa.4143.0..sroa.6.0..sroa_idx134.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.6.sroa.5146.0..sroa.6.0..sroa_idx134.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 140
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.4105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.sroa.5110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 141
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 2 uses
  %.sroa.4116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %.sroa.5117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %.sroa.597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 140
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 141
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %.sroa.4124.0..sroa_idx125 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.5129.0..sroa_idx130 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.6.sroa.4143.0..sroa.6.0..sroa_idx135.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.6.sroa.5146.0..sroa.6.0..sroa_idx135.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 140
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.4105.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.sroa.5110.0..sroa_idx111 = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 141
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  %.sroa.4150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %.sroa.5151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %.sroa.492.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %.sroa.597.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 140
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 141
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4124.0..sroa_idx127 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.5129.0..sroa_idx132 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.6.sroa.4143.0..sroa.6.0..sroa_idx136.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.6.sroa.5146.0..sroa.6.0..sroa_idx136.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.4105.0..sroa_idx108 = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.5110.0..sroa_idx113 = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 141
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.2153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.3154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %.sroa.492.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %.sroa.597.0..sroa_idx100 = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  br label %bb.b

._crit_edge:                                      ; preds = %bb.ax, %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.560.0.copyload = load i64, ptr %.sroa.560.0..sroa_idx, align 8
  %i.br = load <2 x i64>, ptr %i.bq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store <2 x i64> %i.br, ptr %0, align 8
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.560.0.copyload, ptr %.sroa.563.0..sroa_idx, align 8
  br label %bb.be

bb.b:                                             ; preds = %.lr.ph, %bb.ax
  %.sroa.0.0280 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.2, %bb.ax ] ; 14 uses
  %.sroa.052.0.copyload = load i64, ptr %i.y, align 8
  %.sroa.453.0.copyload = load i64, ptr %.sroa.453.0..sroa_idx, align 8 ; 10 uses
  %.sroa.554.0.copyload = load i64, ptr %.sroa.554.0..sroa_idx, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.bs = trunc nuw i64 %.sroa.052.0.copyload to i1
  br i1 %i.bs, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bt = load ptr, ptr %2, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.bu = load i64, ptr %i.z, align 8, !noundef !8 ; 4 uses
  %i.bv = icmp ult i64 %.sroa.554.0.copyload, %.sroa.453.0.copyload
  %.not171 = icmp ugt i64 %.sroa.554.0.copyload, %i.bu
  %or.cond465 = or i1 %i.bv, %.not171
  br i1 %or.cond465, label %bb.f, label %bb.e, !prof !33

bb.d:                                             ; preds = %bb.b
  store i64 1, ptr %.sroa.0.0280, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0280, i64 8
  store i64 %3, ptr %i.bw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef8to_owned(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2)
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.0280, i64 16 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskYQKiYedT9l_7matchit6escape14UnescapedRouteECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(48) %i.bx)
          to label %bb.bd unwind label %bb.bc

bb.e:                                             ; preds = %bb.c
  %i.by = sub nuw i64 %.sroa.554.0.copyload, %.sroa.453.0.copyload ; 3 uses
  %i.bz = icmp ugt i64 %i.by, 1
  br i1 %i.bz, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.453.0.copyload, i64 noundef %.sroa.554.0.copyload, i64 noundef %i.bu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #30
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.453.0.copyload
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !noundef !8
  %i.cd = icmp eq i8 %i.cc, 42
  br i1 %i.cd, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.e
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #30
  unreachable

bb.i:                                             ; preds = %bb.g
  %.not174 = icmp eq i64 %.sroa.554.0.copyload, %i.bu
  br i1 %.not174, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.g
  %.not172 = icmp eq i64 %.sroa.453.0.copyload, 0
  br i1 %.not172, label %bb.v, label %bb.x

bb.k:                                             ; preds = %bb.i
  %.not175 = icmp eq i64 %.sroa.453.0.copyload, 0
  br i1 %.not175, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.i
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.be

bb.m:                                             ; preds = %bb.p, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef8to_owned(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ce, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  store i64 0, ptr %i.cf, align 8
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.477.0..sroa_idx, align 8
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.578.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.cg = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  store i32 0, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.o, i64 140
  store i8 0, ptr %i.ch, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.468.0..sroa_idx, align 8
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store i64 0, ptr %.sroa.569.0..sroa_idx, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.o, i64 141
  store i8 5, ptr %i.cj, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.o, i64 88 ; 2 uses
  store i64 0, ptr %i.ck, align 8
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.471.0..sroa_idx, align 8
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  store i64 0, ptr %i.o, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.572.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.465.0..sroa_idx, align 8
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  store i64 0, ptr %.sroa.566.0..sroa_idx, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  store i32 1, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.p, i64 140
  store i8 0, ptr %i.cn, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i64 24, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.p, i64 141
  store i8 4, ptr %i.cp, align 1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i64 24, i1 false)
  store i64 1, ptr %i.p, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %3, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false)
  %i.ct = invoke fastcc noundef i64 @_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodejE9add_childCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(144) %.sroa.0.0280, ptr noalias noundef align 8 captures(address) dereferenceable(144) %i.p)
          to label %bb.r unwind label %bb.q       ; 3 uses

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef11slice_until(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.453.0.copyload)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef8to_owned(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.s, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0280, i64 16 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskYQKiYedT9l_7matchit6escape14UnescapedRouteECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(48) %i.cu)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cu, ptr noundef nonnull align 8 dereferenceable(48) %i.s, i64 48, i1 false)
  br label %common.resume

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cu, ptr noundef nonnull align 8 dereferenceable(48) %i.s, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef9slice_off(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.453.0.copyload)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.q, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.m

bb.q:                                             ; preds = %bb.m
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskYQKiYedT9l_7matchit6escape14UnescapedRouteECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(48) %i.cf) #28
          to label %common.resume unwind label %bb.u

bb.r:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskYQKiYedT9l_7matchit6escape14UnescapedRouteECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(48) %i.cf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0280, i64 140
  store i8 1, ptr %i.cx, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.0280, i64 104
  %i.cz = load i64, ptr %i.cy, align 8, !noundef !8 ; 2 uses
  %i.da = icmp ult i64 %i.ct, %i.cz
  br i1 %i.da, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.0280, i64 96
  %i.dc = load ptr, ptr %i.db, align 8, !nonnull !8, !noundef !8
  %i.dd = getelementptr inbounds nuw [144 x i8], ptr %i.dc, i64 %i.ct
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dd, ptr %i.de, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.be

bb.t:                                             ; preds = %bb.r
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ct, i64 noundef %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #30
  unreachable

bb.u:                                             ; preds = %bb.aq, %bb.ak, %bb.q
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.v:                                             ; preds = %bb.z, %bb.j
  %i.dg = phi i64 [ %.pre364, %bb.z ], [ %i.bu, %bb.j ] ; 4 uses
  %i.dh = phi ptr [ %.pre, %bb.z ], [ %i.bt, %bb.j ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dg
  %i.dj = icmp samesign eq i64 %i.dg, 0
  br i1 %i.dj, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v, %bb.w
  %.sroa.02.08.i = phi i64 [ %i.dn, %bb.w ], [ 0, %bb.v ] ; 3 uses
  %i.dk = phi ptr [ %i.dm, %bb.w ], [ %i.dh, %bb.v ] ; 2 uses
  %.val.i = load i8, ptr %i.dk, align 1, !noalias !3750, !noundef !8
  %i.dl = icmp eq i8 %.val.i, 47
  br i1 %i.dl, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 1 ; 2 uses
  %i.dn = add nuw i64 %.sroa.02.08.i, 1
  %i.do = icmp eq ptr %i.dm, %i.di
  br i1 %i.do, label %.loopexit, label %.lr.ph.i

bb.x:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef11slice_until(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.453.0.copyload)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef8to_owned(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.0280, i64 16 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskYQKiYedT9l_7matchit6escape14UnescapedRouteECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(48) %i.dp)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dp, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false)
  br label %common.resume

bb.z:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dp, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef9slice_off(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.453.0.copyload)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.pre = load ptr, ptr %2, align 8
  %.pre364 = load i64, ptr %i.z, align 8
  br label %bb.v

bb.aa:                                            ; preds = %.lr.ph.i
  %i.dr = icmp ult i64 %.sroa.02.08.i, %i.dg
  call void @llvm.assume(i1 %i.dr)
  %i.ds = add nuw i64 %.sroa.02.08.i, 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.w, %bb.v, %bb.aa
  %.sroa.046.0 = phi i64 [ %i.ds, %bb.aa ], [ 0, %bb.v ], [ %i.dg, %bb.w ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef11slice_until(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef11slice_until(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.046.0)
  %i.dt = load i64, ptr %i.aa, align 8, !noundef !8
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef9slice_off(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i, i64 noundef %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef9slice_off(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.046.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false)
  call void @_RNvNtCskYQKiYedT9l_7matchit4tree13find_wildcard(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.du = load i64, ptr %i.g, align 8, !range !9, !noundef !8 ; 2 uses
  %i.dv = trunc nuw i64 %i.du to i1
  %i.dw = load i64, ptr %i.ab, align 8, !range !21 ; 2 uses
  %i.dx = icmp eq i64 %i.dw, 0
  %or.cond.not = select i1 %i.dv, i1 true, i1 %i.dx
  br i1 %or.cond.not, label %bb.ab, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtNtB4_3ops5range5RangejEENtNtCskYQKiYedT9l_7matchit5error11InsertErrorEECs3ZkgueCtkyH_14ruff_workspace.exit183

bb.ab:                                            ; preds = %.loopexit
  %i.dy = icmp ne i64 %i.du, 0
  %i.dz = icmp sgt i64 %i.dw, -1
  %or.cond = select i1 %i.dy, i1 %i.dz, i1 false
  br i1 %or.cond, label %bb.ac, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtNtB4_3ops5range5RangejEENtNtCskYQKiYedT9l_7matchit5error11InsertErrorEECs3ZkgueCtkyH_14ruff_workspace.exit

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.af unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ea = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.ab, align 8, !range !15, !alias.scope !3751, !noundef !8 ; 2 uses
  %i.eb = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.eb, label %common.resume, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.val3.i.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !3752, !nonnull !8, !noundef !8
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !3753
  br label %common.resume

bb.af:                                            ; preds = %bb.ac
  %.val.i.i.i.i = load i64, ptr %i.ab, align 8, !range !15, !alias.scope !3751, !noundef !8 ; 2 uses
  %i.ec = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ec, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtNtB4_3ops5range5RangejEENtNtCskYQKiYedT9l_7matchit5error11InsertErrorEECs3ZkgueCtkyH_14ruff_workspace.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.val1.i.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !3752, !nonnull !8, !noundef !8
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !3754
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtNtB4_3ops5range5RangejEENtNtCskYQKiYedT9l_7matchit5error11InsertErrorEECs3ZkgueCtkyH_14ruff_workspace.exit

common.resume:                                    ; preds = %bb.q, %bb.bc, %bb.aq, %bb.ak, %bb.y, %bb.o, %bb.ad, %bb.ae
  %common.resume.op = phi { ptr, i32 } [ %i.ea, %bb.ad ], [ %i.ea, %bb.ae ], [ %i.gd, %bb.bc ], [ %i.dq, %bb.y ], [ %i.cw, %bb.q ], [ %i.cv, %bb.o ], [ %i.ex, %bb.aq ], [ %i.el, %bb.ak ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtNtB4_3ops5range5RangejEENtNtCskYQKiYedT9l_7matchit5error11InsertErrorEECs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %bb.ab, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ed = load i64, ptr %i.ad, align 8, !noundef !8 ; 2 uses
  %i.ee = icmp eq i64 %i.ed, 0
  switch i64 %i.ed, label %bb.aj [
    i64 0, label %bb.ah
    i64 1, label %bb.ai
  ]

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtNtB4_3ops5range5RangejEENtNtCskYQKiYedT9l_7matchit5error11InsertErrorEECs3ZkgueCtkyH_14ruff_workspace.exit183: ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.be

bb.ah:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtNtB4_3ops5range5RangejEENtNtCskYQKiYedT9l_7matchit5error11InsertErrorEECs3ZkgueCtkyH_14ruff_workspace.exit, %bb.aj, %bb.ai
  %.sroa.050.0 = phi i8 [ 1, %bb.aj ], [ %i.ek, %bb.ai ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtNtB4_3ops5range5RangejEENtNtCskYQKiYedT9l_7matchit5error11InsertErrorEECs3ZkgueCtkyH_14ruff_workspace.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef8to_owned(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.am, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.ae, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4124.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5129.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.sroa.4143.0..sroa.6.0..sroa_idx134.sroa_idx, align 8
  store i32 0, ptr %i.af, align 8
  store i8 0, ptr %i.ag, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.5146.0..sroa.6.0..sroa_idx134.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4105.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.5110.0..sroa_idx, align 8
  store i8 5, ptr %i.ai, align 1
  store i64 0, ptr %i.aj, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4116.0..sroa_idx, align 8
  store i64 0, ptr %i.e, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5117.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.492.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.597.0..sroa_idx, align 8
  store i32 1, ptr %i.an, align 8
  store i8 0, ptr %i.ao, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  store i8 %.sroa.050.0, ptr %i.aq, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  %i.ef = load i64, ptr %i.ak, align 8
  store i64 0, ptr %i.f, align 8
  store i64 %i.ef, ptr %i.as, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  %i.eg = invoke fastcc noundef i64 @_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodejE9add_childCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(144) %.sroa.0.0280, ptr noalias noundef align 8 captures(address) dereferenceable(144) %i.f)
          to label %bb.al unwind label %bb.ak     ; 3 uses

bb.ai:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtNtB4_3ops5range5RangejEENtNtCskYQKiYedT9l_7matchit5error11InsertErrorEECs3ZkgueCtkyH_14ruff_workspace.exit
  %i.eh = load ptr, ptr %i.j, align 8, !nonnull !8, !noundef !8
  %i.ei = load i8, ptr %i.eh, align 1, !noundef !8
  %i.ej = icmp ne i8 %i.ei, 47
  %i.ek = zext i1 %i.ej to i8
  br label %bb.ah

bb.aj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtNtB4_3ops5range5RangejEENtNtCskYQKiYedT9l_7matchit5error11InsertErrorEECs3ZkgueCtkyH_14ruff_workspace.exit
  br label %bb.ah

bb.ak:                                            ; preds = %bb.ah
  %i.el = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskYQKiYedT9l_7matchit6escape14UnescapedRouteECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(48) %i.ae) #28
          to label %common.resume unwind label %bb.u

bb.al:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskYQKiYedT9l_7matchit6escape14UnescapedRouteECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(48) %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.0280, i64 140
  store i8 1, ptr %i.em, align 4
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0.0280, i64 104
  %i.eo = load i64, ptr %i.en, align 8, !noundef !8 ; 2 uses
  %i.ep = icmp ult i64 %i.eg, %i.eo
  br i1 %i.ep, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0.0280, i64 96
  %i.er = load ptr, ptr %i.eq, align 8, !nonnull !8, !noundef !8
  %i.es = getelementptr inbounds nuw [144 x i8], ptr %i.er, i64 %i.eg ; 4 uses
  br i1 %i.ee, label %bb.ap, label %bb.ao

bb.an:                                            ; preds = %bb.al
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.eg, i64 noundef %i.eo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #30
  unreachable

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef8to_owned(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bc, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.au, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4124.0..sroa_idx125, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5129.0..sroa_idx130, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.sroa.4143.0..sroa.6.0..sroa_idx135.sroa_idx, align 8
  store i32 0, ptr %i.av, align 8
  store i8 0, ptr %i.aw, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.5146.0..sroa.6.0..sroa_idx135.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4105.0..sroa_idx106, align 8
  store i64 0, ptr %.sroa.5110.0..sroa_idx111, align 8
  store i8 5, ptr %i.ay, align 1
  store i64 0, ptr %i.az, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4150.0..sroa_idx, align 8
  store i64 0, ptr %i.c, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5151.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.492.0..sroa_idx93, align 8
  store i64 0, ptr %.sroa.597.0..sroa_idx98, align 8
  store i32 1, ptr %i.bd, align 8
  store i8 0, ptr %i.be, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false)
  store i8 5, ptr %i.bg, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false)
  %i.et = load i64, ptr %i.ba, align 8
  store i64 0, ptr %i.d, align 8
  store i64 %i.et, ptr %i.bi, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false)
  %i.eu = invoke fastcc noundef i64 @_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodejE16add_suffix_childCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(144) %i.es, ptr noalias noundef align 8 captures(address) dereferenceable(144) %i.d)
          to label %bb.ar unwind label %bb.aq     ; 3 uses

bb.ap:                                            ; preds = %bb.as, %bb.am
  %.sroa.0.1 = phi ptr [ %i.es, %bb.am ], [ %i.fd, %bb.as ] ; 10 uses
  %i.ev = load i64, ptr %i.z, align 8, !noundef !8
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %bb.au, label %bb.av

bb.aq:                                            ; preds = %bb.ao
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskYQKiYedT9l_7matchit6escape14UnescapedRouteECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(48) %i.au) #28
          to label %common.resume unwind label %bb.u

bb.ar:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskYQKiYedT9l_7matchit6escape14UnescapedRouteECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(48) %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.es, i64 104
  %i.ez = load i64, ptr %i.ey, align 8, !noundef !8 ; 2 uses
  %i.fa = icmp ult i64 %i.eu, %i.ez
  br i1 %i.fa, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fb = getelementptr inbounds nuw i8, ptr %i.es, i64 96
  %i.fc = load ptr, ptr %i.fb, align 8, !nonnull !8, !noundef !8
end_hunk_1
begin_hunk_2_@_RNvXs1_NtNtCsEhZmuQNqkz_11ruff_linter8settings5typesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_13PythonVersionE4from
declare noundef nonnull ptr @_RNvXs1_NtNtCsEhZmuQNqkz_11ruff_linter8settings5typesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_13PythonVersionE4from(i8 noundef range(i8 0, 9)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 -1, 2) i8 @_RNvMs3_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_7Version8cmp_slow(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsEhZmuQNqkz_11ruff_linter13rule_selectorNtB2_22UnresolvedRuleSelector7resolve(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCsEhZmuQNqkz_11ruff_linter13rule_selectorNtB4_19RuleResolutionError11log_warning(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #21

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #22

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #23

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #24

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path() unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local11destructors10linux_like8register(ptr noundef, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCskYQKiYedT9l_7matchit4tree13find_wildcard(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef11slice_until(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef8to_owned(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef9slice_off(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh12rotate_rightCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #12

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCskYQKiYedT9l_7matchit6escapeNtB2_14UnescapedRoute3new(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCskYQKiYedT9l_7matchit4tree16normalize_params(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs3ZkgueCtkyH_14ruff_workspace(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs3_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_7Version9make_full(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #18

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecReEENCNvMs9_B10_BX_3new0ECs3ZkgueCtkyH_14ruff_workspace(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtNtNtB6_11collections4hash3set7HashSetNtNtCscdodAO9FK5_5alloc6string6StringNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEENCNvMs9_B10_BX_3new0ECs3ZkgueCtkyH_14ruff_workspace(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultuTINtNtCscdodAO9FK5_5alloc3vec3VecINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs3ZkgueCtkyH_14ruff_workspace8resolver12ResolvedFileNtCsizY4S0OBG5z_6ignore5ErrorEEIB1l_uNtCsiXichZnxgbf_6anyhow5ErrorEENCNvMs5_NtB2_5mutexINtB45_5MutexBN_E10into_inner0EB20_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), i1 noundef zeroext, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardTINtNtCscdodAO9FK5_5alloc3vec3VecINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs3ZkgueCtkyH_14ruff_workspace8resolver12ResolvedFileNtCsizY4S0OBG5z_6ignore5ErrorEEIB1V_uNtCsiXichZnxgbf_6anyhow5ErrorEEENCNvMs9_B10_BX_3new0EB2A_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultuNtNtCs3ZkgueCtkyH_14ruff_workspace8resolver8ResolverNCNvMs9_NtB2_6rwlockINtB1L_6RwLockBN_E10into_inner0EBR_(ptr dead_on_unwind noalias noundef writable sret([184 x i8]) align 8 captures(none) dereferenceable(184), i1 noundef zeroext, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(176)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCsgHAIXRTqFF5_9pep440_rs(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardNtNtCs3ZkgueCtkyH_14ruff_workspace8resolver8ResolverENCNvMsd_BQ_BN_3new0EB1n_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCs9VIZOfz6gNk_13serde_spanned7spanned7SpannedINtNtBc_6borrow3CoweEEIB18_NtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue7DeValueEE3geteECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsx_NtNtCsEhZmuQNqkz_11ruff_linter8settings5typesNtB5_15RequiredVersionNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options25validate_required_version(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs4AlrTBRgZ9a_8etcetera13base_strategy20choose_base_strategy(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCs4AlrTBRgZ9a_8etcetera13base_strategy3xdgNtB4_3XdgNtB6_12BaseStrategy10config_dir(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs2AWtUsOyxgP_3std2fs8metadataRNtNtB4_4path4PathECs3ZkgueCtkyH_14ruff_workspace(ptr dead_on_unwind noalias noundef writable sret([176 x i8]) align 8 captures(none) dereferenceable(176), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtCsiXichZnxgbf_6anyhow5errorNtB7_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_7VersionNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtCs2AWtUsOyxgP_3std7process5abort() unnamed_addr #25

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs4NRVxsYgnAr_4core3mem11conjure_zstuECs3ZkgueCtkyH_14ruff_workspace() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCs2AWtUsOyxgP_3std2io5errorNtB2_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtCs6nZeqdiIoCH_10serde_core2deDNtB5_8ExpectedEL_NtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsq_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3str5error9Utf8ErrorNtB6_5Debug3fmtCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs3ZkgueCtkyH_14ruff_workspace(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerE9drop_slowBJ_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufE9drop_slowCs2Qp84xiUxLo_17ruff_ranged_value(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCsFAmsutybIp_4toml(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecyENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs3ZkgueCtkyH_14ruff_workspace(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsgHAIXRTqFF5_9pep440_rs7version12LocalSegmentENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs3ZkgueCtkyH_14ruff_workspace(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXso_NtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB5_13SystemPathBufNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCs4NRVxsYgnAr_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingss_1__NtB7_12ConstantTypeNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1p_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs3_NtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unixNtB5_6StderrNtNtBb_2io5Write5write(ptr noalias noundef nonnull, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { cold }
attributes #29 = { cold noreturn nounwind }
attributes #30 = { noreturn }
attributes #31 = { nounwind }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}

!0 = distinct !{!0, !"_RINvNtCs3ZkgueCtkyH_14ruff_workspace9pyproject10parse_tomlRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtB2_9PyprojectEB4_"}
!1 = distinct !{!1, !0, !"_RINvNtCs3ZkgueCtkyH_14ruff_workspace9pyproject10parse_tomlRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtB2_9PyprojectEB4_: argument 1"}
!2 = distinct !{!2, !0, !"_RINvNtCs3ZkgueCtkyH_14ruff_workspace9pyproject10parse_tomlRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtB2_9PyprojectEB4_: argument 0"}
!3 = distinct !{null, null}
!4 = distinct !{null, null}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 2, !"RtLibUseGOT", i32 1}
!7 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!8 = !{}
!9 = !{i64 0, i64 2}
!10 = !{!"branch_weights", !"expected", i32 2145337238, i32 2146410}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{i64 -1, i64 -9223372036854775808}
!13 = !{i8 0, i8 3}
!14 = !{i64 0, i64 3}
!15 = !{i64 0, i64 -9223372036854775808}
!16 = !{i64 -1, i64 4}
!17 = !{i64 -2, i64 3}
!18 = !{i64 -2, i64 -9223372036854775808}
!19 = !{!1}
!20 = !{!2}
!21 = !{i64 0, i64 -9223372036854775805}
!22 = !{i64 8}
!23 = !{i8 0, i8 2}
!24 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!25 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!26 = !{i64 -1, i64 5}
!27 = !{i64 0, i64 -9223372036854775807}
!28 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!29 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000}
!30 = !{i8 0, i8 5}
!31 = !{i8 0, i8 6}
!32 = !{!"branch_weights", i32 4000000, i32 4001}
!33 = !{!"branch_weights", i32 4001, i32 4000000}
!34 = !{i64 -1, i64 -9223372036854775805}
!35 = !{!"branch_weights", i32 2002, i32 2000}
!36 = !{i8 0, i8 42}
!37 = distinct !{!37, !"_RNvXs4_NtCskYQKiYedT9l_7matchit6escapeNtB5_14UnescapedRouteNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone"}
!38 = distinct !{!38, !37, !"_RNvXs4_NtCskYQKiYedT9l_7matchit6escapeNtB5_14UnescapedRouteNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone: argument 1"}
!39 = distinct !{!39, !37, !"_RNvXs4_NtCskYQKiYedT9l_7matchit6escapeNtB5_14UnescapedRouteNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone: argument 0"}
!40 = distinct !{!40, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String9from_utf8"}
!41 = distinct !{!41, !40, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String9from_utf8: argument 0"}
!42 = distinct !{!42, !40, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String9from_utf8: argument 1"}
!43 = distinct !{!43, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtBJ_13FromUtf8ErrorE6unwrapCs3ZkgueCtkyH_14ruff_workspace"}
!44 = distinct !{!44, !43, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtBJ_13FromUtf8ErrorE6unwrapCs3ZkgueCtkyH_14ruff_workspace: argument 2"}
!45 = distinct !{!45, !43, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtBJ_13FromUtf8ErrorE6unwrapCs3ZkgueCtkyH_14ruff_workspace: argument 1"}
!46 = distinct !{!46, !43, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtBJ_13FromUtf8ErrorE6unwrapCs3ZkgueCtkyH_14ruff_workspace: argument 0"}
!47 = distinct !{!47, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String9from_utf8"}
!48 = distinct !{!48, !47, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String9from_utf8: argument 0"}
!49 = distinct !{!49, !47, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String9from_utf8: argument 1"}
!50 = distinct !{!50, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtBJ_13FromUtf8ErrorE6unwrapCs3ZkgueCtkyH_14ruff_workspace"}
!51 = distinct !{!51, !50, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtBJ_13FromUtf8ErrorE6unwrapCs3ZkgueCtkyH_14ruff_workspace: argument 2"}
!52 = distinct !{!52, !50, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtBJ_13FromUtf8ErrorE6unwrapCs3ZkgueCtkyH_14ruff_workspace: argument 1"}
!53 = distinct !{!53, !50, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtBJ_13FromUtf8ErrorE6unwrapCs3ZkgueCtkyH_14ruff_workspace: argument 0"}
!54 = !{!39, !38}
!55 = !{!39}
!56 = !{!38}
!57 = !{!41}
!58 = !{!42}
!59 = !{!41, !42}
!60 = !{!46, !45, !44}
!61 = !{!46, !44}
!62 = !{!46, !45}
!63 = !{!48}
!64 = !{!49}
!65 = !{!48, !49}
!66 = !{!53, !52, !51}
!67 = !{!53, !51}
!68 = !{!53, !52}
!69 = distinct !{!69, !"_RNvXs4_NtCskYQKiYedT9l_7matchit6escapeNtB5_14UnescapedRouteNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone"}
!70 = distinct !{!70, !69, !"_RNvXs4_NtCskYQKiYedT9l_7matchit6escapeNtB5_14UnescapedRouteNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone: argument 1"}
!71 = distinct !{!71, !69, !"_RNvXs4_NtCskYQKiYedT9l_7matchit6escapeNtB5_14UnescapedRouteNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone: argument 0"}
!72 = distinct !{!72, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String9from_utf8"}
!73 = distinct !{!73, !72, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String9from_utf8: argument 0"}
!74 = distinct !{!74, !72, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String9from_utf8: argument 1"}
!75 = distinct !{!75, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtBJ_13FromUtf8ErrorE6unwrapCs3ZkgueCtkyH_14ruff_workspace"}
!76 = distinct !{!76, !75, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtBJ_13FromUtf8ErrorE6unwrapCs3ZkgueCtkyH_14ruff_workspace: argument 2"}
!77 = distinct !{!77, !75, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtBJ_13FromUtf8ErrorE6unwrapCs3ZkgueCtkyH_14ruff_workspace: argument 1"}
!78 = distinct !{!78, !75, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtBJ_13FromUtf8ErrorE6unwrapCs3ZkgueCtkyH_14ruff_workspace: argument 0"}
!79 = distinct !{!79, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String9from_utf8"}
!80 = distinct !{!80, !79, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String9from_utf8: argument 0"}
!81 = distinct !{!81, !79, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String9from_utf8: argument 1"}
!82 = distinct !{!82, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtBJ_13FromUtf8ErrorE6unwrapCs3ZkgueCtkyH_14ruff_workspace"}
!83 = distinct !{!83, !82, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtBJ_13FromUtf8ErrorE6unwrapCs3ZkgueCtkyH_14ruff_workspace: argument 2"}
!84 = distinct !{!84, !82, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtBJ_13FromUtf8ErrorE6unwrapCs3ZkgueCtkyH_14ruff_workspace: argument 1"}
!85 = distinct !{!85, !82, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtBJ_13FromUtf8ErrorE6unwrapCs3ZkgueCtkyH_14ruff_workspace: argument 0"}
!86 = !{!71, !70}
!87 = !{!71}
!88 = !{!70}
!89 = !{!73}
!90 = !{!74}
!91 = !{!73, !74}
!92 = !{!78, !77, !76}
!93 = !{!78, !76}
!94 = !{!78, !77}
!95 = !{!80}
!96 = !{!81}
!97 = !{!80, !81}
!98 = !{!85, !84, !83}
!99 = !{!85, !83}
!100 = !{!85, !84}
!101 = distinct !{!101, !"_RINvNtCs3ZkgueCtkyH_14ruff_workspace9pyproject15parse_ruff_tomlRNtNtCs2AWtUsOyxgP_3std4path4PathEB4_"}
!102 = distinct !{!102, !101, !"_RINvNtCs3ZkgueCtkyH_14ruff_workspace9pyproject15parse_ruff_tomlRNtNtCs2AWtUsOyxgP_3std4path4PathEB4_: argument 0"}
!103 = distinct !{!103, !"_RINvNtCs3ZkgueCtkyH_14ruff_workspace9pyproject10parse_tomlRNtNtCs2AWtUsOyxgP_3std4path4PathNtNtB4_7options7OptionsEB4_"}
!104 = distinct !{!104, !103, !"_RINvNtCs3ZkgueCtkyH_14ruff_workspace9pyproject10parse_tomlRNtNtCs2AWtUsOyxgP_3std4path4PathNtNtB4_7options7OptionsEB4_: argument 0"}
!105 = distinct !{!105, !101, !"_RINvNtCs3ZkgueCtkyH_14ruff_workspace9pyproject15parse_ruff_tomlRNtNtCs2AWtUsOyxgP_3std4path4PathEB4_: argument 1"}
!106 = distinct !{!106, !103, !"_RINvNtCs3ZkgueCtkyH_14ruff_workspace9pyproject10parse_tomlRNtNtCs2AWtUsOyxgP_3std4path4PathNtNtB4_7options7OptionsEB4_: argument 1"}
!107 = distinct !{!107, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEE3newCs3ZkgueCtkyH_14ruff_workspace"}
!108 = distinct !{!108, !107, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEE3newCs3ZkgueCtkyH_14ruff_workspace: argument 0"}
!109 = distinct !{!109, !"_RNCINvNtCs3ZkgueCtkyH_14ruff_workspace9pyproject10parse_tomlRNtNtCs2AWtUsOyxgP_3std4path4PathNtNtB6_7options7OptionsEs0_0B6_"}
!110 = distinct !{!110, !109, !"_RNCINvNtCs3ZkgueCtkyH_14ruff_workspace9pyproject10parse_tomlRNtNtCs2AWtUsOyxgP_3std4path4PathNtNtB6_7options7OptionsEs0_0B6_: argument 0"}
!111 = distinct !{!111, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs3ZkgueCtkyH_14ruff_workspace"}
!112 = distinct !{!112, !111, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs3ZkgueCtkyH_14ruff_workspace: argument 0"}
!113 = distinct !{!113, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs3ZkgueCtkyH_14ruff_workspace"}
!114 = distinct !{!114, !113, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs3ZkgueCtkyH_14ruff_workspace: argument 0"}
!115 = distinct !{!115, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3ZkgueCtkyH_14ruff_workspace"}
!116 = distinct !{!116, !115, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3ZkgueCtkyH_14ruff_workspace: argument 0"}
!117 = distinct !{!117, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3ZkgueCtkyH_14ruff_workspace"}
!118 = distinct !{!118, !117, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3ZkgueCtkyH_14ruff_workspace: argument 0"}
!119 = distinct !{!119, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3ZkgueCtkyH_14ruff_workspace"}
!120 = distinct !{!120, !119, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3ZkgueCtkyH_14ruff_workspace: argument 0"}
!121 = distinct !{!121, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs2Qp84xiUxLo_17ruff_ranged_value11ValueSourcebEEECs3ZkgueCtkyH_14ruff_workspace"}
!122 = distinct !{!122, !121, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs2Qp84xiUxLo_17ruff_ranged_value11ValueSourcebEEECs3ZkgueCtkyH_14ruff_workspace: argument 0"}
!123 = distinct !{!123, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs2Qp84xiUxLo_17ruff_ranged_value16ValueSourceGuardECs3ZkgueCtkyH_14ruff_workspace"}
!124 = distinct !{!124, !123, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs2Qp84xiUxLo_17ruff_ranged_value16ValueSourceGuardECs3ZkgueCtkyH_14ruff_workspace: argument 0"}
!125 = distinct !{!125, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs2Qp84xiUxLo_17ruff_ranged_value11ValueSourcebEECs3ZkgueCtkyH_14ruff_workspace"}
!126 = distinct !{!126, !125, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs2Qp84xiUxLo_17ruff_ranged_value11ValueSourcebEECs3ZkgueCtkyH_14ruff_workspace: argument 0"}
!127 = distinct !{!127, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs2Qp84xiUxLo_17ruff_ranged_value11ValueSourceECs3ZkgueCtkyH_14ruff_workspace"}
!128 = distinct !{!128, !127, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs2Qp84xiUxLo_17ruff_ranged_value11ValueSourceECs3ZkgueCtkyH_14ruff_workspace: argument 0"}
!129 = distinct !{!129, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEECs3ZkgueCtkyH_14ruff_workspace"}
!130 = distinct !{!130, !129, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEECs3ZkgueCtkyH_14ruff_workspace: argument 0"}
!131 = distinct !{!131, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3ZkgueCtkyH_14ruff_workspace"}
!132 = distinct !{!132, !131, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3ZkgueCtkyH_14ruff_workspace: argument 0"}
!133 = distinct !{!133, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs3ZkgueCtkyH_14ruff_workspace"}
!134 = distinct !{!134, !133, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs3ZkgueCtkyH_14ruff_workspace: argument 0"}
!135 = distinct !{!135, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs3ZkgueCtkyH_14ruff_workspace"}
!136 = distinct !{!136, !135, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs3ZkgueCtkyH_14ruff_workspace: argument 0"}
!137 = distinct !{!137, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3ZkgueCtkyH_14ruff_workspace"}
!138 = distinct !{!138, !137, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3ZkgueCtkyH_14ruff_workspace: argument 0"}
!139 = distinct !{!139, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3ZkgueCtkyH_14ruff_workspace"}
!140 = distinct !{!140, !139, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3ZkgueCtkyH_14ruff_workspace: argument 0"}
!141 = distinct !{!141, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3ZkgueCtkyH_14ruff_workspace"}
!142 = distinct !{!142, !141, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3ZkgueCtkyH_14ruff_workspace: argument 0"}
!143 = distinct !{!143, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs2Qp84xiUxLo_17ruff_ranged_value11ValueSourcebEEECs3ZkgueCtkyH_14ruff_workspace"}
!144 = distinct !{!144, !143, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs2Qp84xiUxLo_17ruff_ranged_value11ValueSourcebEEECs3ZkgueCtkyH_14ruff_workspace: argument 0"}
!145 = distinct !{!145, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs2Qp84xiUxLo_17ruff_ranged_value16ValueSourceGuardECs3ZkgueCtkyH_14ruff_workspace"}
!146 = distinct !{!146, !145, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs2Qp84xiUxLo_17ruff_ranged_value16ValueSourceGuardECs3ZkgueCtkyH_14ruff_workspace: argument 0"}
!147 = distinct !{!147, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs2Qp84xiUxLo_17ruff_ranged_value11ValueSourcebEECs3ZkgueCtkyH_14ruff_workspace"}
!148 = distinct !{!148, !147, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs2Qp84xiUxLo_17ruff_ranged_value11ValueSourcebEECs3ZkgueCtkyH_14ruff_workspace: argument 0"}
!149 = distinct !{!149, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs2Qp84xiUxLo_17ruff_ranged_value11ValueSourceECs3ZkgueCtkyH_14ruff_workspace"}
!150 = distinct !{!150, !149, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs2Qp84xiUxLo_17ruff_ranged_value11ValueSourceECs3ZkgueCtkyH_14ruff_workspace: argument 0"}
!151 = distinct !{!151, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEECs3ZkgueCtkyH_14ruff_workspace"}
!152 = distinct !{!152, !151, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEECs3ZkgueCtkyH_14ruff_workspace: argument 0"}
!153 = distinct !{!153, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3ZkgueCtkyH_14ruff_workspace"}
!154 = distinct !{!154, !153, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3ZkgueCtkyH_14ruff_workspace: argument 0"}
!155 = distinct !{!155, !"_RINvNtCs3ZkgueCtkyH_14ruff_workspace9pyproject20parse_pyproject_tomlRNtNtCs2AWtUsOyxgP_3std4path4PathEB4_"}
!156 = distinct !{!156, !155, !"_RINvNtCs3ZkgueCtkyH_14ruff_workspace9pyproject20parse_pyproject_tomlRNtNtCs2AWtUsOyxgP_3std4path4PathEB4_: argument 0"}
!157 = distinct !{!157, !"_RINvNtCs3ZkgueCtkyH_14ruff_workspace9pyproject10parse_tomlRNtNtCs2AWtUsOyxgP_3std4path4PathNtB2_9PyprojectEB4_"}
!158 = distinct !{!158, !157, !"_RINvNtCs3ZkgueCtkyH_14ruff_workspace9pyproject10parse_tomlRNtNtCs2AWtUsOyxgP_3std4path4PathNtB2_9PyprojectEB4_: argument 0"}
!159 = distinct !{!159, !155, !"_RINvNtCs3ZkgueCtkyH_14ruff_workspace9pyproject20parse_pyproject_tomlRNtNtCs2AWtUsOyxgP_3std4path4PathEB4_: argument 1"}
!160 = distinct !{!160, !157, !"_RINvNtCs3ZkgueCtkyH_14ruff_workspace9pyproject10parse_tomlRNtNtCs2AWtUsOyxgP_3std4path4PathNtB2_9PyprojectEB4_: argument 1"}
!161 = distinct !{!161, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEE3newCs3ZkgueCtkyH_14ruff_workspace"}
!162 = distinct !{!162, !161, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEE3newCs3ZkgueCtkyH_14ruff_workspace: argument 0"}
!163 = distinct !{!163, !"_RNCINvNtCs3ZkgueCtkyH_14ruff_workspace9pyproject10parse_tomlRNtNtCs2AWtUsOyxgP_3std4path4PathNtB4_9PyprojectEs0_0B6_"}
end_hunk_2
