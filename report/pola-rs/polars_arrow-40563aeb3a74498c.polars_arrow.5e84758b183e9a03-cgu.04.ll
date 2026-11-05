Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_arrow-40563aeb3a74498c.polars_arrow.5e84758b183e9a03-cgu.04?download=true
inline.NumInlined: 1394
inline.NumDeleted: 582
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow5array7builderINtNtNtB6_15fixed_size_list7builder25FixedSizeListArrayBuilderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB4_12ArrayBuilderEL_EENtB4_23ArrayBuilderBoxedHelper12freeze_boxedB8_:bb.a
; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow5array7builderINtNtNtB6_4list7builder16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB4_12ArrayBuilderEL_EENtB4_23ArrayBuilderBoxedHelper12freeze_boxedB8_(ptr noalias noundef nonnull align 8 captures(address) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !29789 !guid !29817 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 5 uses
  %i.b = alloca [128 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !29825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef nonnull align 8 dereferenceable(128) %0, i64 128, i1 false), !dbg !29825
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !29826, !noalias !29818
  invoke void @_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB4_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_7builder12ArrayBuilderEL_EENtB1W_18StaticArrayBuilder6freezeBa_(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(128) %i.b)
          to label %.noexc unwind label %bb.e, !dbg !29826

.noexc:                                           ; preds = %bb.a
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !dbg !29827, !noalias !29819
  %i.c = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, 153) 104, i64 noundef range(i64 4, 9) 8) #33, !dbg !29828, !noalias !29819 ; 3 uses
  %i.d = icmp eq ptr %i.c, null, !dbg !29829
  br i1 %i.d, label %bb.b, label %bb.f, !dbg !29830, !prof !983

bb.b:                                             ; preds = %.noexc
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #31
          to label %.noexc1 unwind label %bb.c, !dbg !29831

.noexc1:                                          ; preds = %bb.b
  unreachable, !dbg !29831

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArrayxEEBN_(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.a) #30
          to label %bb.g unwind label %bb.d, !dbg !29832, !noalias !29818

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !29833, !noalias !29818
  unreachable, !dbg !29833

bb.e:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.g, !dbg !29820

bb.f:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false), !dbg !29834, !noalias !29818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !29835, !noalias !29818
  %i.h = insertvalue { ptr, ptr } poison, ptr %i.c, 0, !dbg !29836
  %i.i = insertvalue { ptr, ptr } %i.h, ptr @58, 1, !dbg !29836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !29837
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 8) #33, !dbg !29838
  ret { ptr, ptr } %i.i, !dbg !29839

bb.g:                                             ; preds = %bb.e, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.e, %bb.c ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 8) #33, !dbg !29840
  resume { ptr, i32 } %eh.lpad-body, !dbg !29841
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list7builderINtB4_25FixedSizeListArrayBuilderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_7builder12ArrayBuilderEL_EENtB2g_18StaticArrayBuilder12extend_nullsBa_(ptr noalias noundef align 8 dereferenceable(120) %0, i64 noundef %1) unnamed_addr #2 !dbg !29842 !guid !29846 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !29848
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !29849
  %i.c = load i64, ptr %i.b, align 8, !dbg !29849, !noundef !672
  %i.d = mul i64 %i.c, %1, !dbg !29850
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29847), !dbg !29851
  %i.e = load ptr, ptr %i.a, align 8, !dbg !29852, !alias.scope !29847, !nonnull !672, !noundef !672
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !29852
  %i.g = load ptr, ptr %i.f, align 8, !dbg !29852, !alias.scope !29847, !nonnull !672, !align !813, !noundef !672
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72, !dbg !29852
  %i.i = load ptr, ptr %i.h, align 8, !dbg !29852, !invariant.load !672, !noalias !29847, !nonnull !672
  tail call void %i.i(ptr noundef nonnull %i.e, i64 noundef %i.d) #35, !dbg !29853, !noalias !29847, !inline_history !485
  tail call void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB5_16OptBitmapBuilder15extend_constant(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i1 noundef zeroext false), !dbg !29854
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !29855 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !dbg !29855, !noundef !672
  %i.l = add i64 %i.k, %1, !dbg !29855
  store i64 %i.l, ptr %i.j, align 8, !dbg !29855
  ret void, !dbg !29856
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list7builderINtB4_25FixedSizeListArrayBuilderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_7builder12ArrayBuilderEL_EENtB2g_18StaticArrayBuilder12freeze_resetBa_(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !29857 !guid !29872 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !29877
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29873), !dbg !29878
  %i.f = load ptr, ptr %i.e, align 8, !dbg !29879, !alias.scope !29873, !nonnull !672, !noundef !672
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !29879
  %i.h = load ptr, ptr %i.g, align 8, !dbg !29879, !alias.scope !29873, !nonnull !672, !align !813, !noundef !672
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56, !dbg !29879
  %i.j = load ptr, ptr %i.i, align 8, !dbg !29879, !invariant.load !672, !noalias !29873, !nonnull !672
  %i.k = tail call { ptr, ptr } %i.j(ptr noundef nonnull %i.f) #35, !dbg !29880, !noalias !29873, !inline_history !487 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0, !dbg !29878 ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1, !dbg !29878 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !29881
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !29874
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !dbg !29882
  store i64 -9223372036854775808, ptr %1, align 8, !dbg !29883
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !29883
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !29883
  invoke void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB5_16OptBitmapBuilder17into_opt_validity(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.c)
          to label %bb.c unwind label %bb.b, !dbg !29884

bb.b:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !29885
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !29886
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !29886
  invoke fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o)
          to label %bb.d unwind label %bb.e, !dbg !29887

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !29888 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !dbg !29888, !noundef !672
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l), "nonnull"(ptr %i.m) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !29889
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !29889
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_listNtB2_18FixedSizeListArray3new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.q, ptr noundef nonnull %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @194), !dbg !29890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !29891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !29891
  store i64 0, ptr %i.p, align 8, !dbg !29892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !29893
  ret void, !dbg !29894

bb.e:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %i.d, align 8, !dbg !29895, !alias.scope !29876, !noundef !672
  %i.t = icmp eq ptr %i.s, null, !dbg !29895
  br i1 %i.t, label %bb.i, label %bb.f, !dbg !29895

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.i unwind label %bb.g, !dbg !29896

bb.g:                                             ; preds = %bb.f, %bb.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !29897
  unreachable, !dbg !29897

bb.h:                                             ; preds = %bb.i
  resume { ptr, i32 } %.pn.ph, !dbg !29897

bb.i:                                             ; preds = %bb.b, %bb.f, %bb.e
  %.pn.ph = phi { ptr, i32 } [ %i.n, %bb.b ], [ %i.r, %bb.f ], [ %i.r, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEB1k_(ptr %i.l, ptr nonnull %i.m) #30
          to label %bb.h unwind label %bb.g, !dbg !29898
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list7builderINtB4_25FixedSizeListArrayBuilderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_7builder12ArrayBuilderEL_EENtB2g_18StaticArrayBuilder13gather_extendBa_(ptr noalias noundef align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef range(i64 0, 2305843009213693952) %3, i1 noundef zeroext %4) unnamed_addr #2 !dbg !29899 !guid !29913 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !29919
  %i.b = load ptr, ptr %i.a, align 8, !dbg !29919, !nonnull !672, !noundef !672
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !29919
  %i.d = load ptr, ptr %i.c, align 8, !dbg !29919, !nonnull !672, !align !813, !noundef !672
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !29920
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !29921
  %i.g = load i64, ptr %i.f, align 8, !dbg !29921, !noundef !672 ; 4 uses
  %i.h = mul i64 %i.g, %3, !dbg !29922
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29914), !dbg !29923
  %i.i = load ptr, ptr %i.e, align 8, !dbg !29924, !alias.scope !29914, !nonnull !672, !noundef !672 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !29924
  %i.k = load ptr, ptr %i.j, align 8, !dbg !29924, !alias.scope !29914, !nonnull !672, !align !813, !noundef !672 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !29924
  %i.m = load ptr, ptr %i.l, align 8, !dbg !29924, !invariant.load !672, !noalias !29914, !nonnull !672
  tail call void %i.m(ptr noundef nonnull %i.i, i64 noundef %i.h) #35, !dbg !29925, !noalias !29914, !inline_history !489
  %.not22 = icmp eq i64 %3, 0, !dbg !29926
  br i1 %.not22, label %._crit_edge21, label %.lr.ph20, !dbg !29926

.lr.ph20:                                         ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !invariant.load !672, !noalias !29915, !nonnull !672
  br label %bb.b, !dbg !29926

._crit_edge21:                                    ; preds = %._crit_edge, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !29927 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !dbg !29927, !noundef !672
  %.not = icmp eq ptr %i.q, null, !dbg !29927
  %. = select i1 %.not, ptr null, ptr %i.p, !dbg !29928
  tail call void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB5_16OptBitmapBuilder31gather_extend_from_opt_validity(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noundef align 8 %., ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3), !dbg !29929
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !29930 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !dbg !29930, !noundef !672
  %i.t = add i64 %i.s, %3, !dbg !29930
  store i64 %i.t, ptr %i.r, align 8, !dbg !29930
  ret void, !dbg !29931

bb.b:                                             ; preds = %.lr.ph20, %._crit_edge
  %.sroa.0.018 = phi i64 [ 0, %.lr.ph20 ], [ %.lcssa, %._crit_edge ] ; 4 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.0.018, !dbg !29932
  %i.v = load i32, ptr %i.u, align 4, !dbg !29932, !noundef !672
  %i.w = zext i32 %i.v to i64, !dbg !29932        ; 2 uses
  %i.x = add nuw nsw i64 %.sroa.0.018, 1, !dbg !29933 ; 3 uses
  %i.y = icmp samesign ult i64 %i.x, %3, !dbg !29933
  br i1 %i.y, label %.lr.ph.preheader, label %._crit_edge, !dbg !29933

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.z = sub nsw i64 %3, %.sroa.0.018, !dbg !29934 ; 2 uses
  br label %.lr.ph, !dbg !29934

._crit_edge.loopexit:                             ; preds = %.lr.ph, %bb.c
  %.sroa.05.0.lcssa.ph = phi i64 [ %i.z, %bb.c ], [ %.sroa.05.013, %.lr.ph ]
  %.lcssa.ph = phi i64 [ %3, %bb.c ], [ %i.ad, %.lr.ph ]
  %i.aa = mul i64 %i.g, %.sroa.05.0.lcssa.ph, !dbg !29935
  br label %._crit_edge, !dbg !29936

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.sroa.05.0.lcssa = phi i64 [ %i.g, %bb.b ], [ %i.aa, %._crit_edge.loopexit ], !dbg !29937
  %.lcssa = phi i64 [ %i.x, %bb.b ], [ %.lcssa.ph, %._crit_edge.loopexit ], !dbg !29933 ; 2 uses
  %i.ab = mul i64 %i.g, %i.w, !dbg !29938
  tail call void %i.o(ptr noundef nonnull %i.i, ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.d, i64 noundef %i.ab, i64 noundef %.sroa.05.0.lcssa, i1 noundef zeroext %4) #35, !dbg !29939, !noalias !29918, !inline_history !490
  %i.ac = icmp ult i64 %.lcssa, %3, !dbg !29926
  br i1 %i.ac, label %bb.b, label %._crit_edge21, !dbg !29926

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %i.ad = phi i64 [ %i.ak, %bb.c ], [ %i.x, %.lr.ph.preheader ] ; 2 uses
  %.sroa.05.013 = phi i64 [ %i.aj, %bb.c ], [ 1, %.lr.ph.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ad, !dbg !29934
  %i.af = load i32, ptr %i.ae, align 4, !dbg !29934, !noundef !672
  %i.ag = zext i32 %i.af to i64, !dbg !29934
  %i.ah = add nuw nsw i64 %.sroa.05.013, %i.w, !dbg !29940
  %i.ai = icmp eq i64 %i.ah, %i.ag, !dbg !29934
  br i1 %i.ai, label %bb.c, label %._crit_edge.loopexit, !dbg !29934

bb.c:                                             ; preds = %.lr.ph
  %i.aj = add nuw nsw i64 %.sroa.05.013, 1, !dbg !29941 ; 3 uses
  %i.ak = add nuw nsw i64 %i.aj, %.sroa.0.018, !dbg !29933
  %exitcond.not = icmp eq i64 %i.aj, %i.z, !dbg !29933
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !dbg !29933
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list7builderINtB4_25FixedSizeListArrayBuilderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_7builder12ArrayBuilderEL_EENtB2g_18StaticArrayBuilder15subslice_extendBa_(ptr noalias noundef align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !492 !guid !29947 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !29954
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !29955
  %i.c = load ptr, ptr %i.b, align 8, !dbg !29955, !nonnull !672, !noundef !672
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !29955
  %i.e = load ptr, ptr %i.d, align 8, !dbg !29955, !nonnull !672, !align !813, !noundef !672
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !29956
  %i.g = load i64, ptr %i.f, align 8, !dbg !29956, !noundef !672 ; 2 uses
  %i.h = mul i64 %i.g, %2, !dbg !29957
  %i.i = mul i64 %i.g, %3, !dbg !29958
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29948), !dbg !29959
  %i.j = load ptr, ptr %i.a, align 8, !dbg !29960, !alias.scope !29948, !nonnull !672, !noundef !672
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !29960
  %i.l = load ptr, ptr %i.k, align 8, !dbg !29960, !alias.scope !29948, !nonnull !672, !align !813, !noundef !672
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 88, !dbg !29960
  %i.n = load ptr, ptr %i.m, align 8, !dbg !29960, !invariant.load !672, !noalias !29949, !nonnull !672
  tail call void %i.n(ptr noundef nonnull %i.j, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.e, i64 noundef %i.h, i64 noundef %i.i, i1 noundef zeroext %4) #35, !dbg !29961, !noalias !29948, !inline_history !490
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !29962 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !dbg !29962, !noundef !672
  %.not = icmp eq ptr %i.p, null, !dbg !29962
  %. = select i1 %.not, ptr null, ptr %i.o, !dbg !29963
  tail call void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB5_16OptBitmapBuilder33subslice_extend_from_opt_validity(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noundef align 8 %., i64 noundef %2, i64 noundef %3), !dbg !29964
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !29965
  %i.r = load i64, ptr %i.q, align 8, !dbg !29965, !noundef !672
  %i.s = tail call i64 @llvm.usub.sat.i64(i64 %i.r, i64 %2), !dbg !29966
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.s, i64 %3), !dbg !29967
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !29968 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !dbg !29968, !noundef !672
  %i.v = add i64 %.sroa.0.0.i, %i.u, !dbg !29968
  store i64 %i.v, ptr %i.t, align 8, !dbg !29968
  ret void, !dbg !29969
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list7builderINtB4_25FixedSizeListArrayBuilderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_7builder12ArrayBuilderEL_EENtB2g_18StaticArrayBuilder17opt_gather_extendBa_(ptr noalias noundef align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef range(i64 0, 2305843009213693952) %3, i1 noundef zeroext %4) unnamed_addr #2 !dbg !29970 !guid !29989 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !29998
  %i.b = load ptr, ptr %i.a, align 8, !dbg !29998, !nonnull !672, !noundef !672
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !29998
  %i.d = load ptr, ptr %i.c, align 8, !dbg !29998, !nonnull !672, !align !813, !noundef !672
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !29999 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !30000
  %i.g = load i64, ptr %i.f, align 8, !dbg !30000, !noundef !672 ; 4 uses
  %i.h = mul i64 %i.g, %3, !dbg !30001
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29990), !dbg !30002
  %i.i = load ptr, ptr %i.e, align 8, !dbg !30003, !alias.scope !29990, !nonnull !672, !noundef !672 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !30003 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !dbg !30003, !alias.scope !29990, !nonnull !672, !align !813, !noundef !672 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !30003
  %i.m = load ptr, ptr %i.l, align 8, !dbg !30003, !invariant.load !672, !noalias !29990, !nonnull !672
  tail call void %i.m(ptr noundef nonnull %i.i, i64 noundef %i.h) #35, !dbg !30004, !noalias !29990, !inline_history !489
  %.not38 = icmp eq i64 %3, 0, !dbg !30005
  br i1 %.not38, label %._crit_edge37, label %.lr.ph36, !dbg !30005

.lr.ph36:                                         ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.b, !dbg !30005

._crit_edge37:                                    ; preds = %bb.d, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !30006 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !dbg !30006, !noundef !672
  %.not = icmp eq ptr %i.p, null, !dbg !30006
  %. = select i1 %.not, ptr null, ptr %i.o, !dbg !30007
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !30008
  %i.r = load i64, ptr %i.q, align 8, !dbg !30008, !noundef !672
  tail call void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB5_16OptBitmapBuilder35opt_gather_extend_from_opt_validity(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noundef align 8 %., ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %i.r), !dbg !30009
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !30010 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !dbg !30010, !noundef !672
  %i.u = add i64 %i.t, %3, !dbg !30010
  store i64 %i.u, ptr %i.s, align 8, !dbg !30010
  ret void, !dbg !30011

bb.b:                                             ; preds = %.lr.ph36, %bb.d
  %i.v = phi ptr [ %i.k, %.lr.ph36 ], [ %i.ap, %bb.d ] ; 2 uses
  %i.w = phi ptr [ %i.i, %.lr.ph36 ], [ %i.aq, %bb.d ] ; 2 uses
  %.sroa.0.033 = phi i64 [ 0, %.lr.ph36 ], [ %i.ar, %bb.d ] ; 7 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.0.033, !dbg !30012
  %i.y = load i32, ptr %i.x, align 4, !dbg !30012, !noundef !672
  %i.z = zext i32 %i.y to i64, !dbg !30012        ; 3 uses
  %i.aa = load i64, ptr %i.n, align 8, !dbg !30013, !noundef !672 ; 3 uses
  %i.ab = icmp ugt i64 %i.aa, %i.z, !dbg !30014
  %i.ac = add nuw nsw i64 %.sroa.0.033, 1, !dbg !30015 ; 3 uses
  %i.ad = icmp samesign ult i64 %i.ac, %3, !dbg !30015 ; 2 uses
  br i1 %i.ab, label %.preheader, label %.preheader23, !dbg !30016

.preheader23:                                     ; preds = %bb.b
  br i1 %i.ad, label %.lr.ph.preheader, label %._crit_edge, !dbg !30017

.lr.ph.preheader:                                 ; preds = %.preheader23
  %i.ae = sub nsw i64 %3, %.sroa.0.033, !dbg !30018 ; 2 uses
  %i.af = trunc nuw i64 %i.aa to i32
  br label %.lr.ph, !dbg !30018

.preheader:                                       ; preds = %bb.b
  br i1 %i.ad, label %.lr.ph28.preheader, label %._crit_edge29, !dbg !30019

.lr.ph28.preheader:                               ; preds = %.preheader
  %i.ag = sub nsw i64 %3, %.sroa.0.033, !dbg !30020 ; 2 uses
  br label %.lr.ph28, !dbg !30020

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %.preheader23
  %.sroa.07.0.lcssa = phi i64 [ 1, %.preheader23 ], [ %.sroa.07.024, %.lr.ph ], [ %i.ae, %bb.c ], !dbg !30021 ; 2 uses
  %i.ah = mul i64 %i.g, %.sroa.07.0.lcssa, !dbg !30022
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 72, !dbg !30023
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !30023, !invariant.load !672, !noalias !29995, !nonnull !672
  tail call void %i.aj(ptr noundef nonnull %i.w, i64 noundef %i.ah) #35, !dbg !30024, !noalias !29995, !inline_history !485
  br label %bb.d, !dbg !30025

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %i.ak = phi i64 [ %i.ao, %bb.c ], [ %i.ac, %.lr.ph.preheader ]
  %.sroa.07.024 = phi i64 [ %i.an, %bb.c ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ak, !dbg !30018
  %i.am = load i32, ptr %i.al, align 4, !dbg !30018, !noundef !672
  %.not22 = icmp ult i32 %i.am, %i.af, !dbg !30018
  br i1 %.not22, label %._crit_edge, label %bb.c, !dbg !30018

bb.c:                                             ; preds = %.lr.ph
  %i.an = add nuw nsw i64 %.sroa.07.024, 1, !dbg !30026 ; 3 uses
  %i.ao = add nuw nsw i64 %i.an, %.sroa.0.033, !dbg !30017
  %exitcond.not = icmp eq i64 %i.an, %i.ae, !dbg !30017
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !30017

bb.d:                                             ; preds = %._crit_edge29, %._crit_edge
  %i.ap = phi ptr [ %i.aw, %._crit_edge29 ], [ %i.v, %._crit_edge ]
  %i.aq = phi ptr [ %i.av, %._crit_edge29 ], [ %i.w, %._crit_edge ]
  %.sroa.07.2 = phi i64 [ %.sroa.07.1.lcssa, %._crit_edge29 ], [ %.sroa.07.0.lcssa, %._crit_edge ], !dbg !30027
  %i.ar = add i64 %.sroa.07.2, %.sroa.0.033, !dbg !30028 ; 2 uses
  %i.as = icmp ult i64 %i.ar, %3, !dbg !30005
  br i1 %i.as, label %bb.b, label %._crit_edge37, !dbg !30005

._crit_edge29:                                    ; preds = %bb.e, %.lr.ph28, %.preheader
  %.sroa.07.1.lcssa = phi i64 [ 1, %.preheader ], [ %.sroa.07.127, %.lr.ph28 ], [ %i.ag, %bb.e ], !dbg !30021 ; 2 uses
  %i.at = mul i64 %i.g, %i.z, !dbg !30029
  %i.au = mul i64 %i.g, %.sroa.07.1.lcssa, !dbg !30030
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29996), !dbg !30031
  %i.av = load ptr, ptr %i.e, align 8, !dbg !30032, !alias.scope !29996, !nonnull !672, !noundef !672 ; 2 uses
  %i.aw = load ptr, ptr %i.j, align 8, !dbg !30032, !alias.scope !29996, !nonnull !672, !align !813, !noundef !672 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 88, !dbg !30032
  %i.ay = load ptr, ptr %i.ax, align 8, !dbg !30032, !invariant.load !672, !noalias !29997, !nonnull !672
  tail call void %i.ay(ptr noundef nonnull %i.av, ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.d, i64 noundef %i.at, i64 noundef %i.au, i1 noundef zeroext %4) #35, !dbg !30033, !noalias !29996, !inline_history !490
  br label %bb.d, !dbg !30025

.lr.ph28:                                         ; preds = %.lr.ph28.preheader, %bb.e
  %i.az = phi i64 [ %i.bh, %bb.e ], [ %i.ac, %.lr.ph28.preheader ]
  %.sroa.07.127 = phi i64 [ %i.bg, %bb.e ], [ 1, %.lr.ph28.preheader ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.az, !dbg !30020
  %i.bb = load i32, ptr %i.ba, align 4, !dbg !30020, !noundef !672
  %i.bc = zext i32 %i.bb to i64, !dbg !30020
  %i.bd = add nuw nsw i64 %.sroa.07.127, %i.z, !dbg !30034 ; 2 uses
  %i.be = icmp eq i64 %i.bd, %i.bc, !dbg !30020
  %i.bf = icmp ult i64 %i.bd, %i.aa
  %or.cond = and i1 %i.bf, %i.be, !dbg !30020
  br i1 %or.cond, label %bb.e, label %._crit_edge29, !dbg !30020

bb.e:                                             ; preds = %.lr.ph28
  %i.bg = add nuw nsw i64 %.sroa.07.127, 1, !dbg !30035 ; 3 uses
  %i.bh = add nuw nsw i64 %i.bg, %.sroa.0.033, !dbg !30019
  %exitcond39.not = icmp eq i64 %i.bg, %i.ag, !dbg !30019
  br i1 %exitcond39.not, label %._crit_edge29, label %.lr.ph28, !dbg !30019
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list7builderINtB4_25FixedSizeListArrayBuilderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_7builder12ArrayBuilderEL_EENtB2g_18StaticArrayBuilder29subslice_extend_each_repeatedBa_(ptr noalias noundef align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !30036 !guid !30058 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !30072
  %i.b = load ptr, ptr %i.a, align 8, !dbg !30072, !nonnull !672, !noundef !672
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !30072
  %i.d = load ptr, ptr %i.c, align 8, !dbg !30072, !nonnull !672, !align !813, !noundef !672
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !30073
  %i.f = mul i64 %4, %3, !dbg !30074
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !30075
  %i.h = load i64, ptr %i.g, align 8, !dbg !30075, !noundef !672 ; 3 uses
  %i.i = mul i64 %i.f, %i.h, !dbg !30074
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30059), !dbg !30076
  %i.j = load ptr, ptr %i.e, align 8, !dbg !30077, !alias.scope !30059, !nonnull !672, !noundef !672 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !30077
  %i.l = load ptr, ptr %i.k, align 8, !dbg !30077, !alias.scope !30059, !nonnull !672, !align !813, !noundef !672 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40, !dbg !30077
  %i.n = load ptr, ptr %i.m, align 8, !dbg !30077, !invariant.load !672, !noalias !30059, !nonnull !672
  tail call void %i.n(ptr noundef nonnull %i.j, i64 noundef %i.i) #35, !dbg !30078, !noalias !30059, !inline_history !489
  %i.o = add i64 %3, %2, !dbg !30079              ; 2 uses
  %i.p = icmp ult i64 %2, %i.o, !dbg !30080
  br i1 %i.p, label %.lr.ph, label %._crit_edge, !dbg !30063

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !672, !noalias !30064, !nonnull !672
  br label %bb.b, !dbg !30063

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !30081 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !dbg !30081, !noundef !672
  %.not = icmp eq ptr %i.t, null, !dbg !30081
  %. = select i1 %.not, ptr null, ptr %i.s, !dbg !30082
  tail call void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB5_16OptBitmapBuilder47subslice_extend_each_repeated_from_opt_validity(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noundef align 8 %., i64 noundef %2, i64 noundef %3, i64 noundef %4), !dbg !30083
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !30084
  %i.v = load i64, ptr %i.u, align 8, !dbg !30084, !noundef !672
  %i.w = tail call i64 @llvm.usub.sat.i64(i64 %i.v, i64 %2), !dbg !30085
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.w, i64 %3), !dbg !30086
  %i.x = mul i64 %.sroa.0.0.i, %4, !dbg !30087
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !30088 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !dbg !30088, !noundef !672
  %i.aa = add i64 %i.x, %i.z, !dbg !30088
  store i64 %i.aa, ptr %i.y, align 8, !dbg !30088
  ret void, !dbg !30089

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.02.05 = phi i64 [ %2, %.lr.ph ], [ %i.ab, %bb.b ] ; 2 uses
  %i.ab = add i64 %.sroa.02.05, 1, !dbg !30090    ; 2 uses
  %i.ac = mul i64 %i.h, %.sroa.02.05, !dbg !30091
  tail call void %i.r(ptr noundef nonnull %i.j, ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.d, i64 noundef %i.ac, i64 noundef %i.h, i64 noundef %4, i1 noundef zeroext %5) #35, !dbg !30092, !noalias !30071, !inline_history !497
  %exitcond.not = icmp eq i64 %i.ab, %i.o, !dbg !30080
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !dbg !30063
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list7builderINtB4_25FixedSizeListArrayBuilderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_7builder12ArrayBuilderEL_EENtB2g_18StaticArrayBuilder6freezeBa_(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(120) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !30093 !guid !30099 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !30101
  %i.d = load ptr, ptr %i.c, align 8, !dbg !30101, !nonnull !672, !noundef !672
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !30101
  %i.f = load ptr, ptr %i.e, align 8, !dbg !30101, !nonnull !672, !align !813, !noundef !672
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !30102
  %i.h = load ptr, ptr %i.g, align 8, !dbg !30102, !invariant.load !672, !alias.scope !30100, !nonnull !672
  %i.i = invoke { ptr, ptr } %i.h(ptr noundef nonnull %i.d) #35
          to label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array7builderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB5_12ArrayBuilderEL_EB1p_6freeze.exit unwind label %bb.b, !dbg !30103, !inline_history !500 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array7builderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB5_12ArrayBuilderEL_EB1p_6freeze.exit: ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 0, !dbg !30101 ; 3 uses
  %i.l = extractvalue { ptr, ptr } %i.i, 1, !dbg !30101 ; 4 uses
  invoke void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB5_16OptBitmapBuilder17into_opt_validity(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1)
          to label %bb.c unwind label %bb.d, !dbg !30104

bb.c:                                             ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array7builderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB5_12ArrayBuilderEL_EB1p_6freeze.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !30105
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !30105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !dbg !30105
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !30106
  %i.o = load i64, ptr %i.n, align 8, !dbg !30106, !noundef !672
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k), "nonnull"(ptr %i.l) ]
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_listNtB2_18FixedSizeListArray3new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, i64 noundef %i.o, ptr noundef nonnull %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @195), !dbg !30107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !30108
  ret void, !dbg !30109

bb.d:                                             ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array7builderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB5_12ArrayBuilderEL_EB1p_6freeze.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEB1k_(ptr %i.k, ptr nonnull %i.l) #30
          to label %bb.g unwind label %bb.e, !dbg !30110

bb.e:                                             ; preds = %bb.d, %bb.i, %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !30111
  unreachable, !dbg !30111

bb.f:                                             ; preds = %bb.g
  br i1 %.sroa.02.0.ph, label %bb.i, label %bb.h, !dbg !30110

bb.g:                                             ; preds = %bb.d, %bb.b
  %.pn.ph = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.p, %bb.d ]
  %.sroa.02.0.ph = phi i1 [ true, %bb.b ], [ false, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !30110
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeEBK_(ptr noalias noundef align 8 dereferenceable(32) %i.r) #30
          to label %bb.f unwind label %bb.e, !dbg !30110

bb.h:                                             ; preds = %bb.i, %bb.f
  resume { ptr, i32 } %.pn.ph, !dbg !30111

bb.i:                                             ; preds = %bb.f
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builder16OptBitmapBuilderEBM_(ptr noalias noundef align 8 dereferenceable(56) %1) #30
          to label %bb.h unwind label %bb.e, !dbg !30110
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list7builderINtB4_25FixedSizeListArrayBuilderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_7builder12ArrayBuilderEL_EENtB2g_18StaticArrayBuilder7reserveBa_(ptr noalias noundef align 8 dereferenceable(120) %0, i64 noundef %1) unnamed_addr #2 !dbg !501 !guid !30115 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !30117
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30116), !dbg !30118
  %i.b = load ptr, ptr %i.a, align 8, !dbg !30119, !alias.scope !30116, !nonnull !672, !noundef !672
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !30119
  %i.d = load ptr, ptr %i.c, align 8, !dbg !30119, !alias.scope !30116, !nonnull !672, !align !813, !noundef !672
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40, !dbg !30119
  %i.f = load ptr, ptr %i.e, align 8, !dbg !30119, !invariant.load !672, !noalias !30116, !nonnull !672
  tail call void %i.f(ptr noundef nonnull %i.b, i64 noundef %1) #35, !dbg !30120, !noalias !30116, !inline_history !489
  tail call void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB5_16OptBitmapBuilder7reserve(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1), !dbg !30121
  ret void, !dbg !30122
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list3ffiINtB6_9ListArraylEINtNtB8_3ffi7FromFfiNtNtNtBa_3ffi5array15ArrowArrayChildE12try_from_ffiBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !30123 !guid !30161 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [72 x i8], align 8                ; 8 uses
  %i.e = alloca [56 x i8], align 8                ; 2 uses
  %i.f = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.616 = alloca [56 x i8], align 8          ; 6 uses
  %i.g = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.67 = alloca [24 x i8], align 8           ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 9 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !30179
  invoke fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.c unwind label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferlEECs8774dFTUdNv_12polars_arrow.exit90, !dbg !30180

bb.b:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferlEECs8774dFTUdNv_12polars_arrow.exit90, %bb.x
  %.pn86 = phi { ptr, i32 } [ %i.p, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferlEECs8774dFTUdNv_12polars_arrow.exit90 ], [ %.pn84.ph, %bb.x ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow3ffi5array15ArrowArrayChildEBM_(ptr noalias noundef align 8 dereferenceable(56) %1) #30
          to label %bb.y unwind label %bb.s, !dbg !30181

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !30182
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !30162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !30162
  invoke void @_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow3ffi5array15ArrowArrayChildNtB4_13ArrowArrayRef8validityB8_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
          to label %bb.e unwind label %bb.d, !dbg !30183

bb.d:                                             ; preds = %bb.u, %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.e:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.i, align 8, !dbg !30184, !range !962, !noundef !672 ; 2 uses
  %.not = icmp eq i64 %i.m, 18, !dbg !30184
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !30185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !dbg !30185
  br i1 %.not, label %bb.g, label %bb.f, !dbg !30186

bb.f:                                             ; preds = %bb.e
  %.sroa.644.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40, !dbg !30187
  %.sroa.347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !30188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.347.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.644.0..sroa_idx, i64 32, i1 false), !dbg !30187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !30189
  %.sroa.246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !30188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.246.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false), !dbg !30189
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30188
  store i64 %i.m, ptr %i.o, align 8, !dbg !30188
  store i8 42, ptr %0, align 8, !dbg !30188
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !30190
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEEB18_.exit, !dbg !30191

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !30189
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB4_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_7builder12ArrayBuilderEL_EENtB1W_18StaticArrayBuilder12freeze_resetBa_:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u), "nonnull"(ptr %i.v) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !30958
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !dbg !30958
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !30959
  call fastcc void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array4listINtB2_9ListArrayxE7try_newB6_(ptr noalias noundef align 8 captures(none) dereferenceable(104) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.v, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.d), !dbg !30959
  call void @llvm.experimental.noalias.scope.decl(metadata !30931), !dbg !30960
  call void @llvm.experimental.noalias.scope.decl(metadata !30932), !dbg !30960
  %i.z = load i8, ptr %i.c, align 8, !dbg !30961, !range !954, !alias.scope !30932, !noundef !672
  %i.aa = icmp eq i8 %i.z, 42, !dbg !30961
  br i1 %i.aa, label %bb.g, label %bb.k, !dbg !30962, !prof !684

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !30963, !noalias !30933
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !30963
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.ab, i64 72, i1 false), !dbg !30963, !noalias !30931
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #31
          to label %bb.i unwind label %bb.h, !dbg !30964, !noalias !30933

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #30
          to label %.body.thread unwind label %bb.j, !dbg !30965, !noalias !30933

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !30966, !noalias !30933
  unreachable, !dbg !30966

bb.k:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.c, i64 104, i1 false), !dbg !30967, !alias.scope !30933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !30968
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !30969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !30969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !30969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !30970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !30971
  ret void, !dbg !30972

bb.l:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = load ptr, ptr %i.h, align 8, !dbg !30973, !alias.scope !30934, !noundef !672
  %i.ag = icmp eq ptr %i.af, null, !dbg !30973
  br i1 %i.ag, label %bb.o, label %bb.m, !dbg !30973

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %bb.o unwind label %bb.n, !dbg !30974

bb.n:                                             ; preds = %bb.p, %bb.m, %bb.o
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !30975
  unreachable, !dbg !30975

bb.o:                                             ; preds = %bb.d, %bb.m, %bb.l
  %.pn.ph = phi { ptr, i32 } [ %i.x, %bb.d ], [ %i.ae, %bb.m ], [ %i.ae, %bb.l ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEB1k_(ptr %i.u, ptr nonnull %i.v) #30
          to label %bb.p unwind label %bb.n, !dbg !30976

.body.thread:                                     ; preds = %bb.p, %bb.h
  %.pn.pn14 = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %.pn.pn.ph, %bb.p ]
  resume { ptr, i32 } %.pn.pn14, !dbg !30975

bb.p:                                             ; preds = %bb.o, %bb.c
  %.pn.pn.ph = phi { ptr, i32 } [ %i.t, %bb.c ], [ %.pn.ph, %bb.o ]
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragexENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body.thread unwind label %bb.n, !dbg !30977
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB4_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_7builder12ArrayBuilderEL_EENtB1W_18StaticArrayBuilder13gather_extendBa_(ptr noalias noundef align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef range(i64 0, 2305843009213693952) %3, i1 noundef zeroext %4) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !30978 !guid !31038 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !31061
  %i.d = load ptr, ptr %i.c, align 8, !dbg !31061, !nonnull !672, !noundef !672
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !31061
  %i.f = load ptr, ptr %i.e, align 8, !dbg !31061, !nonnull !672, !align !813, !noundef !672
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !31062
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31040), !dbg !31063
  %i.h = icmp eq i64 %3, 0, !dbg !31064
  br i1 %i.h, label %._crit_edge23.critedge, label %bb.b, !dbg !31065

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !31040, !noundef !672 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !31040, !noundef !672 ; 3 uses
  %xtraiter = and i64 %3, 1, !dbg !31066
  %i.m = icmp eq i64 %3, 1, !dbg !31066
  br i1 %i.m, label %.epil.preheader, label %.new, !dbg !31066

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %3, 2305843009213693950, !dbg !31066
  br label %bb.c, !dbg !31066

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.04.0.i = phi i64 [ 0, %.new ], [ %i.ae, %bb.c ], !dbg !31067 ; 3 uses
  %.sroa.02.0.i = phi i64 [ 0, %.new ], [ %i.ad, %bb.c ], !dbg !31068
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i, !dbg !31069
  %.val13.i = load i32, ptr %i.n, align 4, !dbg !31070, !noalias !31040, !noundef !672
  %i.o = zext i32 %.val13.i to i64, !dbg !31071   ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.o, !dbg !31072
  %.val1.i.i.i = load i64, ptr %i.p, align 8, !dbg !31073, !noalias !31040, !noundef !672
  %i.q = add nuw nsw i64 %i.o, 1, !dbg !31074     ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.l, !dbg !31075
  tail call void @llvm.assume(i1 %i.r), !dbg !31076
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.q, !dbg !31077
  %.val.i.i.i = load i64, ptr %i.s, align 8, !dbg !31078, !noalias !31040, !noundef !672
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i, !dbg !31069
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4, !dbg !31069
  %.val13.i.1 = load i32, ptr %i.u, align 4, !dbg !31070, !noalias !31040, !noundef !672
  %i.v = zext i32 %.val13.i.1 to i64, !dbg !31071 ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.v, !dbg !31072
  %.val1.i.i.i.1 = load i64, ptr %i.w, align 8, !dbg !31073, !noalias !31040, !noundef !672
  %i.x = add nuw nsw i64 %i.v, 1, !dbg !31074     ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.l, !dbg !31075
  tail call void @llvm.assume(i1 %i.y), !dbg !31076
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.x, !dbg !31077
  %.val.i.i.i.1 = load i64, ptr %i.z, align 8, !dbg !31078, !noalias !31040, !noundef !672
  %i.aa = add i64 %.sroa.02.0.i, %.val.i.i.i, !dbg !31079
  %i.ab = add i64 %.val1.i.i.i, %.val1.i.i.i.1, !dbg !31079
  %i.ac = sub i64 %i.aa, %i.ab, !dbg !31079
  %i.ad = add i64 %.val.i.i.i.1, %i.ac, !dbg !31080 ; 3 uses
  %i.ae = add nuw nsw i64 %.sroa.04.0.i, 2, !dbg !31081 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2, !dbg !31082 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !31082
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB2m_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2q_7builder12ArrayBuilderEL_EENtB4f_18StaticArrayBuilder13gather_extend0NCINvXsK_NtBW_5accumjNtB5B_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2s_.exit.unr-lcssa, label %bb.c, !dbg !31082

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB2m_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2q_7builder12ArrayBuilderEL_EENtB4f_18StaticArrayBuilder13gather_extend0NCINvXsK_NtBW_5accumjNtB5B_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2s_.exit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !31082
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB2m_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2q_7builder12ArrayBuilderEL_EENtB4f_18StaticArrayBuilder13gather_extend0NCINvXsK_NtBW_5accumjNtB5B_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2s_.exit, label %.epil.preheader, !dbg !31082

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB2m_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2q_7builder12ArrayBuilderEL_EENtB4f_18StaticArrayBuilder13gather_extend0NCINvXsK_NtBW_5accumjNtB5B_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2s_.exit.unr-lcssa, %bb.b
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.ae, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB2m_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2q_7builder12ArrayBuilderEL_EENtB4f_18StaticArrayBuilder13gather_extend0NCINvXsK_NtBW_5accumjNtB5B_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2s_.exit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.ad, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB2m_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2q_7builder12ArrayBuilderEL_EENtB4f_18StaticArrayBuilder13gather_extend0NCINvXsK_NtBW_5accumjNtB5B_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2s_.exit.unr-lcssa ]
  %lcmp.mod33 = trunc i64 %3 to i1, !dbg !31082
  tail call void @llvm.assume(i1 %lcmp.mod33), !dbg !31082
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i.epil.init, !dbg !31069
  %.val13.i.epil = load i32, ptr %i.af, align 4, !dbg !31070, !noalias !31040, !noundef !672
  %i.ag = zext i32 %.val13.i.epil to i64, !dbg !31071 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ag, !dbg !31072
  %.val1.i.i.i.epil = load i64, ptr %i.ah, align 8, !dbg !31073, !noalias !31040, !noundef !672
  %i.ai = add nuw nsw i64 %i.ag, 1, !dbg !31074   ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.l, !dbg !31075
  tail call void @llvm.assume(i1 %i.aj), !dbg !31076
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ai, !dbg !31077
  %.val.i.i.i.epil = load i64, ptr %i.ak, align 8, !dbg !31078, !noalias !31040, !noundef !672
  %i.al = sub i64 %.sroa.02.0.i.epil.init, %.val1.i.i.i.epil, !dbg !31079
  %i.am = add i64 %.val.i.i.i.epil, %i.al, !dbg !31080
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB2m_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2q_7builder12ArrayBuilderEL_EENtB4f_18StaticArrayBuilder13gather_extend0NCINvXsK_NtBW_5accumjNtB5B_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2s_.exit, !dbg !31083

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB2m_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2q_7builder12ArrayBuilderEL_EENtB4f_18StaticArrayBuilder13gather_extend0NCINvXsK_NtBW_5accumjNtB5B_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2s_.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB2m_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2q_7builder12ArrayBuilderEL_EENtB4f_18StaticArrayBuilder13gather_extend0NCINvXsK_NtBW_5accumjNtB5B_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2s_.exit.unr-lcssa, %.epil.preheader
  %.lcssa31 = phi i64 [ %i.ad, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB2m_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2q_7builder12ArrayBuilderEL_EENtB4f_18StaticArrayBuilder13gather_extend0NCINvXsK_NtBW_5accumjNtB5B_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2s_.exit.unr-lcssa ], [ %i.am, %.epil.preheader ], !dbg !31080
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !31083 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31046), !dbg !31084
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !31085, !alias.scope !31046, !nonnull !672, !noundef !672
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !31085 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !31085, !alias.scope !31046, !nonnull !672, !align !813, !noundef !672
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40, !dbg !31085
  %i.as = load ptr, ptr %i.ar, align 8, !dbg !31085, !invariant.load !672, !noalias !31046, !nonnull !672
  tail call void %i.as(ptr noundef nonnull %i.ao, i64 noundef %.lcssa31) #35, !dbg !31086, !noalias !31046, !inline_history !489
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %bb.d, !dbg !31087

._crit_edge23.critedge:                           ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !31083
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31046), !dbg !31084
  %i.aw = load ptr, ptr %i.av, align 8, !dbg !31085, !alias.scope !31046, !nonnull !672, !noundef !672
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !31085
  %i.ay = load ptr, ptr %i.ax, align 8, !dbg !31085, !alias.scope !31046, !nonnull !672, !align !813, !noundef !672
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40, !dbg !31085
  %i.ba = load ptr, ptr %i.az, align 8, !dbg !31085, !invariant.load !672, !noalias !31046, !nonnull !672
  tail call void %i.ba(ptr noundef nonnull %i.aw, i64 noundef 0) #35, !dbg !31086, !noalias !31046, !inline_history !489
  br label %._crit_edge23, !dbg !31087

._crit_edge23:                                    ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs8774dFTUdNv_12polars_arrow.exit, %._crit_edge23.critedge
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !31088 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !dbg !31088, !noundef !672
  %.not = icmp eq ptr %i.bc, null, !dbg !31088
  %. = select i1 %.not, ptr null, ptr %i.bb, !dbg !31089
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !31090
  tail call void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB5_16OptBitmapBuilder31gather_extend_from_opt_validity(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bd, ptr noundef align 8 %., ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3), !dbg !31091
  ret void, !dbg !31092

bb.d:                                             ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB2m_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2q_7builder12ArrayBuilderEL_EENtB4f_18StaticArrayBuilder13gather_extend0NCINvXsK_NtBW_5accumjNtB5B_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2s_.exit, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs8774dFTUdNv_12polars_arrow.exit
  %.sroa.0.021 = phi i64 [ 0, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB2m_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2q_7builder12ArrayBuilderEL_EENtB4f_18StaticArrayBuilder13gather_extend0NCINvXsK_NtBW_5accumjNtB5B_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2s_.exit ], [ %.lcssa, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs8774dFTUdNv_12polars_arrow.exit ] ; 4 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.0.021, !dbg !31093
  %i.bf = load i32, ptr %i.be, align 4, !dbg !31093, !noundef !672
  %i.bg = zext i32 %i.bf to i64, !dbg !31093      ; 5 uses
  %i.bh = add nuw nsw i64 %.sroa.0.021, 1, !dbg !31094 ; 3 uses
  %i.bi = icmp samesign ult i64 %i.bh, %3, !dbg !31094
  br i1 %i.bi, label %.lr.ph.preheader, label %._crit_edge, !dbg !31094

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.bj = sub nsw i64 %3, %.sroa.0.021, !dbg !31095 ; 2 uses
  br label %.lr.ph, !dbg !31095

._crit_edge:                                      ; preds = %bb.j, %.lr.ph, %bb.d
  %.sroa.05.0.lcssa = phi i64 [ 1, %bb.d ], [ %.sroa.05.016, %.lr.ph ], [ %i.bj, %bb.j ], !dbg !31096 ; 2 uses
  %.lcssa = phi i64 [ %i.bh, %bb.d ], [ %i.ca, %.lr.ph ], [ %3, %bb.j ], !dbg !31094 ; 2 uses
  %i.bk = load ptr, ptr %i.at, align 8, !dbg !31097, !noundef !672 ; 2 uses
  %i.bl = load i64, ptr %i.au, align 8, !dbg !31098, !noundef !672 ; 2 uses
  %i.bm = icmp ugt i64 %i.bl, %i.bg, !dbg !31099
  tail call void @llvm.assume(i1 %i.bm), !dbg !31100
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bg, !dbg !31101
  %.val14 = load i64, ptr %i.bn, align 8, !dbg !31102, !noundef !672 ; 2 uses
  %i.bo = add i64 %.sroa.05.0.lcssa, %i.bg, !dbg !31103 ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %i.bl, !dbg !31104
  tail call void @llvm.assume(i1 %i.bp), !dbg !31105
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bo, !dbg !31106
  %.val = load i64, ptr %i.bq, align 8, !dbg !31107, !noundef !672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !31108
  call void @_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetsxE21try_extend_from_sliceB7_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g, i64 noundef %i.bg, i64 noundef %.sroa.05.0.lcssa), !dbg !31109
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31056), !dbg !31110
  %i.br = load i64, ptr %i.b, align 8, !dbg !31111, !range !962, !alias.scope !31056, !noundef !672
  %.not.i = icmp eq i64 %i.br, 18, !dbg !31111
  br i1 %.not.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs8774dFTUdNv_12polars_arrow.exit, label %bb.e, !dbg !31112, !prof !1020

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !31113, !noalias !31057
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.b, i64 72, i1 false), !dbg !31113, !noalias !31058
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @197) #31
          to label %bb.g unwind label %bb.f, !dbg !31114, !noalias !31056

bb.f:                                             ; preds = %bb.e
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #30
          to label %bb.i unwind label %bb.h, !dbg !31115, !noalias !31056

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !31116, !noalias !31056
  unreachable, !dbg !31116

bb.i:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.bs, !dbg !31116

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs8774dFTUdNv_12polars_arrow.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !31117
  %i.bu = sub i64 %.val, %.val14, !dbg !31118
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31059), !dbg !31119
  %i.bv = load ptr, ptr %i.an, align 8, !dbg !31120, !alias.scope !31059, !nonnull !672, !noundef !672
  %i.bw = load ptr, ptr %i.ap, align 8, !dbg !31120, !alias.scope !31059, !nonnull !672, !align !813, !noundef !672
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 88, !dbg !31120
  %i.by = load ptr, ptr %i.bx, align 8, !dbg !31120, !invariant.load !672, !noalias !31060, !nonnull !672
  tail call void %i.by(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.f, i64 noundef %.val14, i64 noundef %i.bu, i1 noundef zeroext %4) #35, !dbg !31121, !noalias !31059, !inline_history !490
  %i.bz = icmp ult i64 %.lcssa, %3, !dbg !31087
  br i1 %i.bz, label %bb.d, label %._crit_edge23, !dbg !31087

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %i.ca = phi i64 [ %i.ch, %bb.j ], [ %i.bh, %.lr.ph.preheader ] ; 2 uses
  %.sroa.05.016 = phi i64 [ %i.cg, %bb.j ], [ 1, %.lr.ph.preheader ] ; 3 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ca, !dbg !31095
  %i.cc = load i32, ptr %i.cb, align 4, !dbg !31095, !noundef !672
  %i.cd = zext i32 %i.cc to i64, !dbg !31095
  %i.ce = add nuw nsw i64 %.sroa.05.016, %i.bg, !dbg !31122
  %i.cf = icmp eq i64 %i.ce, %i.cd, !dbg !31095
  br i1 %i.cf, label %bb.j, label %._crit_edge, !dbg !31095

bb.j:                                             ; preds = %.lr.ph
  %i.cg = add nuw nsw i64 %.sroa.05.016, 1, !dbg !31123 ; 3 uses
  %i.ch = add nuw nsw i64 %i.cg, %.sroa.0.021, !dbg !31094
  %exitcond.not = icmp eq i64 %i.cg, %i.bj, !dbg !31094
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !31094
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB4_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_7builder12ArrayBuilderEL_EENtB1W_18StaticArrayBuilder15subslice_extendBa_(ptr noalias noundef align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !31124 !guid !31139 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !31149
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !31150
  %i.e = load i64, ptr %i.d, align 8, !dbg !31150, !noundef !672 ; 4 uses
  %i.f = icmp ult i64 %2, %i.e, !dbg !31140
  br i1 %i.f, label %bb.b, label %bb.c, !dbg !31140

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !31149
  %i.h = load ptr, ptr %i.g, align 8, !dbg !31149, !noundef !672 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %2, !dbg !31140
  %.val5 = load i64, ptr %i.i, align 8, !dbg !31151, !noundef !672 ; 2 uses
  %i.j = add i64 %3, %2, !dbg !31152              ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.e, !dbg !31153
  br i1 %i.k, label %bb.d, label %bb.j, !dbg !31153

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @198) #36, !dbg !31140
  unreachable, !dbg !31140

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j, !dbg !31153
  %.val = load i64, ptr %i.l, align 8, !dbg !31154, !noundef !672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !31155
  call void @_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetsxE21try_extend_from_sliceB7_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, i64 noundef %2, i64 noundef %3), !dbg !31156
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31142), !dbg !31157
  %i.m = load i64, ptr %i.b, align 8, !dbg !31158, !range !962, !alias.scope !31142, !noundef !672
  %.not.i = icmp eq i64 %i.m, 18, !dbg !31158
  br i1 %.not.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs8774dFTUdNv_12polars_arrow.exit, label %bb.e, !dbg !31159, !prof !1020

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !31160, !noalias !31143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.b, i64 72, i1 false), !dbg !31160, !noalias !31144
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @200) #31
          to label %bb.g unwind label %bb.f, !dbg !31161, !noalias !31142

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #30
          to label %bb.i unwind label %bb.h, !dbg !31162, !noalias !31142

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !31163, !noalias !31142
  unreachable, !dbg !31163

bb.i:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.n, !dbg !31163

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs8774dFTUdNv_12polars_arrow.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !31164
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !31165
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !31166
  %i.r = load ptr, ptr %i.q, align 8, !dbg !31166, !nonnull !672, !noundef !672
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !31166
  %i.t = load ptr, ptr %i.s, align 8, !dbg !31166, !nonnull !672, !align !813, !noundef !672
  %i.u = sub i64 %.val, %.val5, !dbg !31167
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31145), !dbg !31168
  %i.v = load ptr, ptr %i.p, align 8, !dbg !31169, !alias.scope !31145, !nonnull !672, !noundef !672
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !31169
  %i.x = load ptr, ptr %i.w, align 8, !dbg !31169, !alias.scope !31145, !nonnull !672, !align !813, !noundef !672
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 88, !dbg !31169
  %i.z = load ptr, ptr %i.y, align 8, !dbg !31169, !invariant.load !672, !noalias !31146, !nonnull !672
  tail call void %i.z(ptr noundef nonnull %i.v, ptr noundef nonnull %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.t, i64 noundef %.val5, i64 noundef %i.u, i1 noundef zeroext %4) #35, !dbg !31170, !noalias !31145, !inline_history !490
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !31171 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !31171, !noundef !672
  %.not = icmp eq ptr %i.ab, null, !dbg !31171
  %. = select i1 %.not, ptr null, ptr %i.aa, !dbg !31172
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !31173
  tail call void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB5_16OptBitmapBuilder33subslice_extend_from_opt_validity(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ac, ptr noundef align 8 %., i64 noundef %2, i64 noundef %3), !dbg !31174
  ret void, !dbg !31175

bb.j:                                             ; preds = %bb.b
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @199) #36, !dbg !31153
  unreachable, !dbg !31153
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB4_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_7builder12ArrayBuilderEL_EENtB1W_18StaticArrayBuilder17opt_gather_extendBa_(ptr noalias noundef align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef range(i64 0, 2305843009213693952) %3, i1 noundef zeroext %4) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !31176 !guid !31262 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !31296
  %i.d = load ptr, ptr %i.c, align 8, !dbg !31296, !nonnull !672, !noundef !672
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !31296
  %i.f = load ptr, ptr %i.e, align 8, !dbg !31296, !nonnull !672, !align !813, !noundef !672
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !31297
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31264), !dbg !31298
  %i.h = icmp eq i64 %3, 0, !dbg !31299
  br i1 %i.h, label %._crit_edge40.critedge, label %bb.b, !dbg !31300

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load i64, ptr %i.i, align 8, !noalias !31264, !noundef !672 ; 4 uses
  %i.k = add i64 %i.j, -1                         ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !31264 ; 6 uses
  %xtraiter = and i64 %3, 1, !dbg !31301
  %i.n = icmp eq i64 %3, 1, !dbg !31301
  br i1 %i.n, label %.epil.preheader, label %.new, !dbg !31301

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %3, 2305843009213693950, !dbg !31301
  br label %bb.c, !dbg !31301

bb.c:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB15_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB19_7builder12ArrayBuilderEL_EENtB2Y_18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtNtB8_6traits5accumjNtB4o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0B1b_.exit.i.1, %.new
  %.sroa.04.0.i = phi i64 [ 0, %.new ], [ %i.ah, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB15_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB19_7builder12ArrayBuilderEL_EENtB2Y_18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtNtB8_6traits5accumjNtB4o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0B1b_.exit.i.1 ], !dbg !31302 ; 3 uses
  %.sroa.02.0.i = phi i64 [ 0, %.new ], [ %i.ag, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB15_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB19_7builder12ArrayBuilderEL_EENtB2Y_18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtNtB8_6traits5accumjNtB4o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0B1b_.exit.i.1 ], !dbg !31303
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB15_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB19_7builder12ArrayBuilderEL_EENtB2Y_18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtNtB8_6traits5accumjNtB4o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0B1b_.exit.i.1 ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i, !dbg !31304
  %.val14.i = load i32, ptr %i.o, align 4, !dbg !31305, !noalias !31264, !noundef !672
  %i.p = zext i32 %.val14.i to i64, !dbg !31306   ; 3 uses
  %i.q = icmp ugt i64 %i.k, %i.p, !dbg !31306
  br i1 %i.q, label %bb.d, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB15_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB19_7builder12ArrayBuilderEL_EENtB2Y_18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtNtB8_6traits5accumjNtB4o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0B1b_.exit.i, !dbg !31306

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.p, !dbg !31307
  %.val1.i.i.i = load i64, ptr %i.r, align 8, !dbg !31308, !noalias !31264, !noundef !672
  %i.s = add nuw nsw i64 %i.p, 1, !dbg !31309     ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.j, !dbg !31310
  tail call void @llvm.assume(i1 %i.t), !dbg !31311
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.s, !dbg !31312
  %.val.i.i.i = load i64, ptr %i.u, align 8, !dbg !31313, !noalias !31264, !noundef !672
  %i.v = sub i64 %.val.i.i.i, %.val1.i.i.i, !dbg !31314
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB15_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB19_7builder12ArrayBuilderEL_EENtB2Y_18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtNtB8_6traits5accumjNtB4o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0B1b_.exit.i, !dbg !31315

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB15_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB19_7builder12ArrayBuilderEL_EENtB2Y_18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtNtB8_6traits5accumjNtB4o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0B1b_.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i = phi i64 [ %i.v, %bb.d ], [ 0, %bb.c ], !dbg !31316
  %i.w = add i64 %.sroa.0.0.i.i.i, %.sroa.02.0.i, !dbg !31317
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i, !dbg !31304
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4, !dbg !31304
  %.val14.i.1 = load i32, ptr %i.y, align 4, !dbg !31305, !noalias !31264, !noundef !672
  %i.z = zext i32 %.val14.i.1 to i64, !dbg !31306 ; 3 uses
  %i.aa = icmp ugt i64 %i.k, %i.z, !dbg !31306
  br i1 %i.aa, label %bb.e, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB15_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB19_7builder12ArrayBuilderEL_EENtB2Y_18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtNtB8_6traits5accumjNtB4o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0B1b_.exit.i.1, !dbg !31306

bb.e:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB15_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB19_7builder12ArrayBuilderEL_EENtB2Y_18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtNtB8_6traits5accumjNtB4o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0B1b_.exit.i
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.z, !dbg !31307
  %.val1.i.i.i.1 = load i64, ptr %i.ab, align 8, !dbg !31308, !noalias !31264, !noundef !672
  %i.ac = add nuw nsw i64 %i.z, 1, !dbg !31309    ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.j, !dbg !31310
  tail call void @llvm.assume(i1 %i.ad), !dbg !31311
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ac, !dbg !31312
  %.val.i.i.i.1 = load i64, ptr %i.ae, align 8, !dbg !31313, !noalias !31264, !noundef !672
  %i.af = sub i64 %.val.i.i.i.1, %.val1.i.i.i.1, !dbg !31314
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB15_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB19_7builder12ArrayBuilderEL_EENtB2Y_18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtNtB8_6traits5accumjNtB4o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0B1b_.exit.i.1, !dbg !31315

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB15_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB19_7builder12ArrayBuilderEL_EENtB2Y_18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtNtB8_6traits5accumjNtB4o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0B1b_.exit.i.1: ; preds = %bb.e, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB15_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB19_7builder12ArrayBuilderEL_EENtB2Y_18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtNtB8_6traits5accumjNtB4o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0B1b_.exit.i
  %.sroa.0.0.i.i.i.1 = phi i64 [ %i.af, %bb.e ], [ 0, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB15_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB19_7builder12ArrayBuilderEL_EENtB2Y_18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtNtB8_6traits5accumjNtB4o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0B1b_.exit.i ], !dbg !31316
  %i.ag = add i64 %.sroa.0.0.i.i.i.1, %i.w, !dbg !31317 ; 3 uses
  %i.ah = add nuw nsw i64 %.sroa.04.0.i, 2, !dbg !31318 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2, !dbg !31319 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !31319
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB2m_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2q_7builder12ArrayBuilderEL_EENtB4f_18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtBW_5accumjNtB5F_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2s_.exit.unr-lcssa, label %bb.c, !dbg !31319

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB2m_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2q_7builder12ArrayBuilderEL_EENtB4f_18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtBW_5accumjNtB5F_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2s_.exit.unr-lcssa: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB15_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB19_7builder12ArrayBuilderEL_EENtB2Y_18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtNtB8_6traits5accumjNtB4o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0B1b_.exit.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !31306
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB2m_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2q_7builder12ArrayBuilderEL_EENtB4f_18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtBW_5accumjNtB5F_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2s_.exit, label %.epil.preheader, !dbg !31306

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB2m_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2q_7builder12ArrayBuilderEL_EENtB4f_18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtBW_5accumjNtB5F_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2s_.exit.unr-lcssa, %bb.b
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.ah, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB2m_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2q_7builder12ArrayBuilderEL_EENtB4f_18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtBW_5accumjNtB5F_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2s_.exit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.ag, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB2m_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2q_7builder12ArrayBuilderEL_EENtB4f_18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtBW_5accumjNtB5F_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2s_.exit.unr-lcssa ]
  %lcmp.mod58 = trunc i64 %3 to i1, !dbg !31306
  tail call void @llvm.assume(i1 %lcmp.mod58), !dbg !31306
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i.epil.init, !dbg !31304
  %.val14.i.epil = load i32, ptr %i.ai, align 4, !dbg !31305, !noalias !31264, !noundef !672
  %i.aj = zext i32 %.val14.i.epil to i64, !dbg !31306 ; 3 uses
  %i.ak = icmp ugt i64 %i.k, %i.aj, !dbg !31306
  br i1 %i.ak, label %bb.f, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB15_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB19_7builder12ArrayBuilderEL_EENtB2Y_18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtNtB8_6traits5accumjNtB4o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0B1b_.exit.i.epil, !dbg !31306

bb.f:                                             ; preds = %.epil.preheader
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.aj, !dbg !31307
  %.val1.i.i.i.epil = load i64, ptr %i.al, align 8, !dbg !31308, !noalias !31264, !noundef !672
  %i.am = add nuw nsw i64 %i.aj, 1, !dbg !31309   ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.j, !dbg !31310
  tail call void @llvm.assume(i1 %i.an), !dbg !31311
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.am, !dbg !31312
  %.val.i.i.i.epil = load i64, ptr %i.ao, align 8, !dbg !31313, !noalias !31264, !noundef !672
  %i.ap = sub i64 %.val.i.i.i.epil, %.val1.i.i.i.epil, !dbg !31314
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB15_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB19_7builder12ArrayBuilderEL_EENtB2Y_18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtNtB8_6traits5accumjNtB4o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0B1b_.exit.i.epil, !dbg !31315

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB15_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB19_7builder12ArrayBuilderEL_EENtB2Y_18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtNtB8_6traits5accumjNtB4o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0B1b_.exit.i.epil: ; preds = %bb.f, %.epil.preheader
  %.sroa.0.0.i.i.i.epil = phi i64 [ %i.ap, %bb.f ], [ 0, %.epil.preheader ], !dbg !31316
  %i.aq = add i64 %.sroa.0.0.i.i.i.epil, %.sroa.02.0.i.epil.init, !dbg !31317
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB2m_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2q_7builder12ArrayBuilderEL_EENtB4f_18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtBW_5accumjNtB5F_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2s_.exit, !dbg !31320

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB2m_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2q_7builder12ArrayBuilderEL_EENtB4f_18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtBW_5accumjNtB5F_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2s_.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB2m_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2q_7builder12ArrayBuilderEL_EENtB4f_18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtBW_5accumjNtB5F_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2s_.exit.unr-lcssa, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB15_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB19_7builder12ArrayBuilderEL_EENtB2Y_18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtNtB8_6traits5accumjNtB4o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0B1b_.exit.i.epil
  %.lcssa = phi i64 [ %i.ag, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB2m_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2q_7builder12ArrayBuilderEL_EENtB4f_18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtBW_5accumjNtB5F_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2s_.exit.unr-lcssa ], [ %i.aq, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB15_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB19_7builder12ArrayBuilderEL_EENtB2Y_18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtNtB8_6traits5accumjNtB4o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItermEBY_EE0E0B1b_.exit.i.epil ], !dbg !31317
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !31320 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31270), !dbg !31321
  %i.as = load ptr, ptr %i.ar, align 8, !dbg !31322, !alias.scope !31270, !nonnull !672, !noundef !672
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !31322 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !dbg !31322, !alias.scope !31270, !nonnull !672, !align !813, !noundef !672
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40, !dbg !31322
  %i.aw = load ptr, ptr %i.av, align 8, !dbg !31322, !invariant.load !672, !noalias !31270, !nonnull !672
  tail call void %i.aw(ptr noundef nonnull %i.as, i64 noundef %.lcssa) #35, !dbg !31323, !noalias !31270, !inline_history !489
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.g, !dbg !31324

._crit_edge40.critedge:                           ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !31320
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31270), !dbg !31321
  %i.bc = load ptr, ptr %i.bb, align 8, !dbg !31322, !alias.scope !31270, !nonnull !672, !noundef !672
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !31322
  %i.be = load ptr, ptr %i.bd, align 8, !dbg !31322, !alias.scope !31270, !nonnull !672, !align !813, !noundef !672
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40, !dbg !31322
  %i.bg = load ptr, ptr %i.bf, align 8, !dbg !31322, !invariant.load !672, !noalias !31270, !nonnull !672
  tail call void %i.bg(ptr noundef nonnull %i.bc, i64 noundef 0) #35, !dbg !31323, !noalias !31270, !inline_history !489
  br label %._crit_edge40, !dbg !31324

._crit_edge40:                                    ; preds = %_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetsxE15extend_constantB7_.exit, %._crit_edge40.critedge
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !31325 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !dbg !31325, !noundef !672
  %.not = icmp eq ptr %i.bi, null, !dbg !31325
  %. = select i1 %.not, ptr null, ptr %i.bh, !dbg !31326
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !31327
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !31328
  %i.bl = load i64, ptr %i.bk, align 8, !dbg !31328, !noundef !672
  %i.bm = add i64 %i.bl, -1, !dbg !31329
  tail call void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB5_16OptBitmapBuilder35opt_gather_extend_from_opt_validity(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bj, ptr noundef align 8 %., ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %i.bm), !dbg !31330
  ret void, !dbg !31331

bb.g:                                             ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB2m_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2q_7builder12ArrayBuilderEL_EENtB4f_18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtBW_5accumjNtB5F_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2s_.exit, %_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetsxE15extend_constantB7_.exit
  %.sroa.0.037 = phi i64 [ 0, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB2m_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2q_7builder12ArrayBuilderEL_EENtB4f_18StaticArrayBuilder17opt_gather_extend0NCINvXsK_NtBW_5accumjNtB5F_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2s_.exit ], [ %i.cy, %_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetsxE15extend_constantB7_.exit ] ; 7 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.0.037, !dbg !31332
  %i.bo = load i32, ptr %i.bn, align 4, !dbg !31332, !noundef !672
  %i.bp = zext i32 %i.bo to i64, !dbg !31332      ; 6 uses
  %i.bq = load i64, ptr %i.ax, align 8, !dbg !31333, !noundef !672 ; 3 uses
  %i.br = add i64 %i.bq, -1, !dbg !31334          ; 3 uses
  %i.bs = icmp ugt i64 %i.br, %i.bp, !dbg !31335
  %i.bt = add nuw nsw i64 %.sroa.0.037, 1, !dbg !31336 ; 3 uses
  %i.bu = icmp samesign ult i64 %i.bt, %3, !dbg !31336 ; 2 uses
  br i1 %i.bs, label %.preheader, label %.preheader27, !dbg !31337

.preheader27:                                     ; preds = %bb.g
  br i1 %i.bu, label %.lr.ph.preheader, label %._crit_edge.thread, !dbg !31338

._crit_edge.thread:                               ; preds = %.preheader27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31281), !dbg !31339
  %i.bv = load i64, ptr %i.ay, align 8, !dbg !31340, !alias.scope !31281, !noundef !672 ; 2 uses
  %i.bw = load ptr, ptr %i.az, align 8, !dbg !31341, !alias.scope !31281, !nonnull !672 ; 2 uses
  %i.bx = getelementptr [8 x i8], ptr %i.bw, i64 %i.bv, !dbg !31341
  %i.by = getelementptr i8, ptr %i.bx, i64 -8, !dbg !31341
  %i.bz = load i64, ptr %i.by, align 8, !dbg !31342, !noalias !31281, !noundef !672
  br label %bb.h, !dbg !31343

.lr.ph.preheader:                                 ; preds = %.preheader27
  %i.ca = sub nsw i64 %3, %.sroa.0.037, !dbg !31344 ; 2 uses
  %i.cb = trunc nuw i64 %i.br to i32
  br label %.lr.ph, !dbg !31344

.preheader:                                       ; preds = %bb.g
  br i1 %i.bu, label %.lr.ph32.preheader, label %._crit_edge33, !dbg !31345

.lr.ph32.preheader:                               ; preds = %.preheader
  %i.cc = sub nsw i64 %3, %.sroa.0.037, !dbg !31346 ; 2 uses
  br label %.lr.ph32, !dbg !31346

._crit_edge:                                      ; preds = %bb.k, %.lr.ph
  %.sroa.07.0.lcssa = phi i64 [ %.sroa.07.028, %.lr.ph ], [ %i.ca, %bb.k ], !dbg !31347 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31282), !dbg !31339
  %i.cd = load i64, ptr %i.ay, align 8, !dbg !31340, !alias.scope !31282, !noundef !672 ; 4 uses
  %i.ce = load ptr, ptr %i.az, align 8, !dbg !31341, !alias.scope !31282, !nonnull !672 ; 2 uses
  %i.cf = getelementptr [8 x i8], ptr %i.ce, i64 %i.cd, !dbg !31341
  %i.cg = getelementptr i8, ptr %i.cf, i64 -8, !dbg !31341
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !31342, !noalias !31282, !noundef !672 ; 2 uses
  %i.ci = icmp eq i64 %.sroa.07.0.lcssa, 1, !dbg !31343
  br i1 %i.ci, label %bb.h, label %bb.j, !dbg !31343

bb.h:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.cj = phi i64 [ %i.bz, %._crit_edge.thread ], [ %i.ch, %._crit_edge ]
  %i.ck = phi ptr [ %i.bw, %._crit_edge.thread ], [ %i.ce, %._crit_edge ]
  %i.cl = phi i64 [ %i.bv, %._crit_edge.thread ], [ %i.cd, %._crit_edge ] ; 3 uses
  %i.cm = load i64, ptr %0, align 8, !dbg !31348, !range !804, !alias.scope !31283, !noundef !672
  %i.cn = icmp eq i64 %i.cl, %i.cm, !dbg !31349
  br i1 %i.cn, label %bb.i, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxE8push_mutCs8774dFTUdNv_12polars_arrow.exit.i, !dbg !31349

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !dbg !31350
  %.pre.i = load ptr, ptr %i.az, align 8, !dbg !31351, !alias.scope !31283
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxE8push_mutCs8774dFTUdNv_12polars_arrow.exit.i, !dbg !31350

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxE8push_mutCs8774dFTUdNv_12polars_arrow.exit.i: ; preds = %bb.i, %bb.h
  %i.co = phi ptr [ %i.ck, %bb.h ], [ %.pre.i, %bb.i ], !dbg !31351
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cl, !dbg !31352
  store i64 %i.cj, ptr %i.cp, align 8, !dbg !31353
  %i.cq = add i64 %i.cl, 1, !dbg !31354
  store i64 %i.cq, ptr %i.ay, align 8, !dbg !31354, !alias.scope !31283
  br label %_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetsxE15extend_constantB7_.exit, !dbg !31355

bb.j:                                             ; preds = %._crit_edge
  %i.cr = icmp ult i64 %i.cd, 1152921504606846976, !dbg !31356
  tail call void @llvm.assume(i1 %i.cr), !dbg !31357
  %i.cs = add i64 %i.cd, %.sroa.07.0.lcssa, !dbg !31358
  tail call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxE6resizeCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.cs, i64 noundef %i.ch), !dbg !31359
  br label %_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetsxE15extend_constantB7_.exit, !dbg !31355

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %i.ct = phi i64 [ %i.cx, %bb.k ], [ %i.bt, %.lr.ph.preheader ]
  %.sroa.07.028 = phi i64 [ %i.cw, %bb.k ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ct, !dbg !31344
  %i.cv = load i32, ptr %i.cu, align 4, !dbg !31344, !noundef !672
  %.not23 = icmp ult i32 %i.cv, %i.cb, !dbg !31344
  br i1 %.not23, label %._crit_edge, label %bb.k, !dbg !31344

bb.k:                                             ; preds = %.lr.ph
  %i.cw = add nuw nsw i64 %.sroa.07.028, 1, !dbg !31360 ; 3 uses
  %i.cx = add nuw nsw i64 %i.cw, %.sroa.0.037, !dbg !31338
  %exitcond.not = icmp eq i64 %i.cw, %i.ca, !dbg !31338
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !31338

_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetsxE15extend_constantB7_.exit: ; preds = %bb.j, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxE8push_mutCs8774dFTUdNv_12polars_arrow.exit.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs8774dFTUdNv_12polars_arrow.exit
  %.sroa.07.2 = phi i64 [ %.sroa.07.1.lcssa, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs8774dFTUdNv_12polars_arrow.exit ], [ 1, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxE8push_mutCs8774dFTUdNv_12polars_arrow.exit.i ], [ %.sroa.07.0.lcssa, %bb.j ], !dbg !31361
  %i.cy = add i64 %.sroa.07.2, %.sroa.0.037, !dbg !31362 ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %3, !dbg !31324
  br i1 %i.cz, label %bb.g, label %._crit_edge40, !dbg !31324

._crit_edge33:                                    ; preds = %bb.q, %.lr.ph32, %.preheader
  %.sroa.07.1.lcssa = phi i64 [ 1, %.preheader ], [ %.sroa.07.131, %.lr.ph32 ], [ %i.cc, %bb.q ], !dbg !31347 ; 3 uses
  %i.da = load ptr, ptr %i.ba, align 8, !dbg !31363, !noundef !672 ; 2 uses
  %i.db = icmp ugt i64 %i.bq, %i.bp, !dbg !31364
  tail call void @llvm.assume(i1 %i.db), !dbg !31365
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.bp, !dbg !31366
  %.val24 = load i64, ptr %i.dc, align 8, !dbg !31367, !noundef !672 ; 2 uses
  %i.dd = add i64 %.sroa.07.1.lcssa, %i.bp, !dbg !31368 ; 2 uses
  %i.de = icmp ult i64 %i.dd, %i.bq, !dbg !31369
  tail call void @llvm.assume(i1 %i.de), !dbg !31370
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dd, !dbg !31371
  %.val = load i64, ptr %i.df, align 8, !dbg !31372, !noundef !672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !31373
  call void @_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetsxE21try_extend_from_sliceB7_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g, i64 noundef %i.bp, i64 noundef %.sroa.07.1.lcssa), !dbg !31374
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31291), !dbg !31375
  %i.dg = load i64, ptr %i.b, align 8, !dbg !31376, !range !962, !alias.scope !31291, !noundef !672
  %.not.i = icmp eq i64 %i.dg, 18, !dbg !31376
  br i1 %.not.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs8774dFTUdNv_12polars_arrow.exit, label %bb.l, !dbg !31377, !prof !1020

bb.l:                                             ; preds = %._crit_edge33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !31378, !noalias !31292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.b, i64 72, i1 false), !dbg !31378, !noalias !31293
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @201) #31
          to label %bb.n unwind label %bb.m, !dbg !31379, !noalias !31291

bb.m:                                             ; preds = %bb.l
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #30
          to label %bb.p unwind label %bb.o, !dbg !31380, !noalias !31291

bb.n:                                             ; preds = %bb.l
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !31381, !noalias !31291
  unreachable, !dbg !31381

bb.p:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.dh, !dbg !31381

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs8774dFTUdNv_12polars_arrow.exit: ; preds = %._crit_edge33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !31382
  %i.dj = sub i64 %.val, %.val24, !dbg !31383
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31294), !dbg !31384
  %i.dk = load ptr, ptr %i.ar, align 8, !dbg !31385, !alias.scope !31294, !nonnull !672, !noundef !672
  %i.dl = load ptr, ptr %i.at, align 8, !dbg !31385, !alias.scope !31294, !nonnull !672, !align !813, !noundef !672
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 88, !dbg !31385
  %i.dn = load ptr, ptr %i.dm, align 8, !dbg !31385, !invariant.load !672, !noalias !31295, !nonnull !672
  tail call void %i.dn(ptr noundef nonnull %i.dk, ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.f, i64 noundef %.val24, i64 noundef %i.dj, i1 noundef zeroext %4) #35, !dbg !31386, !noalias !31294, !inline_history !490
  br label %_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetsxE15extend_constantB7_.exit, !dbg !31387

.lr.ph32:                                         ; preds = %.lr.ph32.preheader, %bb.q
  %i.do = phi i64 [ %i.dw, %bb.q ], [ %i.bt, %.lr.ph32.preheader ]
  %.sroa.07.131 = phi i64 [ %i.dv, %bb.q ], [ 1, %.lr.ph32.preheader ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.do, !dbg !31346
  %i.dq = load i32, ptr %i.dp, align 4, !dbg !31346, !noundef !672
  %i.dr = zext i32 %i.dq to i64, !dbg !31346
  %i.ds = add nuw nsw i64 %.sroa.07.131, %i.bp, !dbg !31388 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, %i.dr, !dbg !31346
  %i.du = icmp ult i64 %i.ds, %i.br
  %or.cond = and i1 %i.du, %i.dt, !dbg !31346
  br i1 %or.cond, label %bb.q, label %._crit_edge33, !dbg !31346

bb.q:                                             ; preds = %.lr.ph32
  %i.dv = add nuw nsw i64 %.sroa.07.131, 1, !dbg !31389 ; 3 uses
  %i.dw = add nuw nsw i64 %i.dv, %.sroa.0.037, !dbg !31345
  %exitcond42.not = icmp eq i64 %i.dv, %i.cc, !dbg !31345
  br i1 %exitcond42.not, label %._crit_edge33, label %.lr.ph32, !dbg !31345
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB4_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_7builder12ArrayBuilderEL_EENtB1W_18StaticArrayBuilder29subslice_extend_each_repeatedBa_(ptr noalias noundef align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !31390 !guid !31451 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !31486
  %i.b = load ptr, ptr %i.a, align 8, !dbg !31486, !nonnull !672, !noundef !672 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !31486
  %i.d = load ptr, ptr %i.c, align 8, !dbg !31486, !nonnull !672, !align !813, !noundef !672 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !31487 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !31488 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !31488, !noundef !672 ; 4 uses
  %i.h = icmp ult i64 %2, %i.g, !dbg !31452
  br i1 %i.h, label %bb.b, label %bb.c, !dbg !31452

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %3, %2, !dbg !31489              ; 6 uses
  %i.j = icmp ult i64 %i.i, %i.g, !dbg !31490
  br i1 %i.j, label %bb.d, label %bb.h, !dbg !31490

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @202) #36, !dbg !31452
  unreachable, !dbg !31452

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.e, align 8, !dbg !31487, !noundef !672 ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %2, !dbg !31452
  %.val17 = load i64, ptr %i.l, align 8, !dbg !31491, !noundef !672
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.i, !dbg !31490
  %.val16 = load i64, ptr %i.m, align 8, !dbg !31492, !noundef !672
  %i.n = mul i64 %4, %3, !dbg !31493
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecxE7reserveCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.n), !dbg !31494
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !31495 ; 3 uses
  %i.p = sub i64 %.val16, %.val17, !dbg !31496
  %i.q = mul i64 %i.p, %4, !dbg !31496
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31455), !dbg !31497
  %i.r = load ptr, ptr %i.o, align 8, !dbg !31498, !alias.scope !31455, !nonnull !672, !noundef !672
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !31498 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !dbg !31498, !alias.scope !31455, !nonnull !672, !align !813, !noundef !672
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40, !dbg !31498
  %i.v = load ptr, ptr %i.u, align 8, !dbg !31498, !invariant.load !672, !noalias !31455, !nonnull !672
  tail call void %i.v(ptr noundef nonnull %i.r, i64 noundef %i.q) #35, !dbg !31499, !noalias !31455, !inline_history !489
  %i.w = icmp ult i64 %2, %i.i, !dbg !31500
  br i1 %i.w, label %.lr.ph27, label %._crit_edge28, !dbg !31459

.lr.ph27:                                         ; preds = %bb.d
  %.not34 = icmp eq i64 %4, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not34, label %.lr.ph27.split, label %.lr.ph27.split.us

.lr.ph27.split.us:                                ; preds = %.lr.ph27, %._crit_edge.us
  %.sroa.02.025.us = phi i64 [ %i.z, %._crit_edge.us ], [ %2, %.lr.ph27 ] ; 4 uses
  %i.z = add i64 %.sroa.02.025.us, 1, !dbg !31501 ; 5 uses
  %i.aa = load i64, ptr %i.f, align 8, !dbg !31502, !noundef !672 ; 4 uses
  %i.ab = icmp ult i64 %.sroa.02.025.us, %i.aa, !dbg !31463
  br i1 %i.ab, label %bb.e, label %.split.us, !dbg !31463

bb.e:                                             ; preds = %.lr.ph27.split.us
  %i.ac = load ptr, ptr %i.e, align 8, !dbg !31503, !noundef !672 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.sroa.02.025.us, !dbg !31463
  %.val15.us = load i64, ptr %i.ad, align 8, !dbg !31504, !noundef !672 ; 2 uses
  %i.ae = icmp ult i64 %i.z, %i.aa, !dbg !31505
  br i1 %i.ae, label %.lr.ph.us, label %.split31.us, !dbg !31505

.lr.ph.us:                                        ; preds = %bb.e
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.z, !dbg !31505
  %.val.us = load i64, ptr %i.af, align 8, !dbg !31506, !noundef !672
  %i.ag = sub i64 %.val.us, %.val15.us            ; 2 uses
  %.pre = load i64, ptr %i.x, align 8, !dbg !31507, !alias.scope !31465
  br label %bb.f, !dbg !31508

bb.f:                                             ; preds = %.lr.ph.us, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs8774dFTUdNv_12polars_arrow.exit.us
  %i.ah = phi i64 [ %.pre, %.lr.ph.us ], [ %i.as, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs8774dFTUdNv_12polars_arrow.exit.us ], !dbg !31507 ; 4 uses
  %.sroa.04.024.us = phi i64 [ 0, %.lr.ph.us ], [ %i.ai, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs8774dFTUdNv_12polars_arrow.exit.us ]
  %i.ai = add nuw i64 %.sroa.04.024.us, 1, !dbg !31509 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31465), !dbg !31510
  %i.aj = load ptr, ptr %i.y, align 8, !dbg !31511, !alias.scope !31465, !nonnull !672 ; 2 uses
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %i.ah, !dbg !31511
  %i.al = getelementptr i8, ptr %i.ak, i64 -8, !dbg !31511
  %i.am = load i64, ptr %i.al, align 8, !dbg !31512, !noalias !31474, !noundef !672
  %i.an = load i64, ptr %0, align 8, !dbg !31513, !range !804, !alias.scope !31475, !noundef !672
  %i.ao = icmp eq i64 %i.ah, %i.an, !dbg !31514
  br i1 %i.ao, label %bb.g, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs8774dFTUdNv_12polars_arrow.exit.us, !dbg !31514

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !dbg !31515, !noalias !31476
  %.pre.i.us = load ptr, ptr %i.y, align 8, !dbg !31516, !alias.scope !31475
  br label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs8774dFTUdNv_12polars_arrow.exit.us, !dbg !31515

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs8774dFTUdNv_12polars_arrow.exit.us: ; preds = %bb.g, %bb.f
  %i.ap = phi ptr [ %i.aj, %bb.f ], [ %.pre.i.us, %bb.g ], !dbg !31516
  %i.aq = add i64 %i.ag, %i.am, !dbg !31517
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ah, !dbg !31518
  store i64 %i.aq, ptr %i.ar, align 8, !dbg !31519, !noalias !31476
  %i.as = add i64 %i.ah, 1, !dbg !31520           ; 2 uses
  store i64 %i.as, ptr %i.x, align 8, !dbg !31520, !alias.scope !31475
  %exitcond.not = icmp eq i64 %i.ai, %4, !dbg !31521
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.f, !dbg !31508

._crit_edge.us:                                   ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs8774dFTUdNv_12polars_arrow.exit.us
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31482), !dbg !31522
  %i.at = load ptr, ptr %i.o, align 8, !dbg !31523, !alias.scope !31482, !nonnull !672, !noundef !672
  %i.au = load ptr, ptr %i.s, align 8, !dbg !31523, !alias.scope !31482, !nonnull !672, !align !813, !noundef !672
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 96, !dbg !31523
  %i.aw = load ptr, ptr %i.av, align 8, !dbg !31523, !invariant.load !672, !noalias !31483, !nonnull !672
  tail call void %i.aw(ptr noundef nonnull %i.at, ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.d, i64 noundef %.val15.us, i64 noundef %i.ag, i64 noundef %4, i1 noundef zeroext %5) #35, !dbg !31524, !noalias !31482, !inline_history !497
  %exitcond53.not = icmp eq i64 %i.z, %i.i, !dbg !31500
  br i1 %exitcond53.not, label %._crit_edge28, label %.lr.ph27.split.us, !dbg !31459

bb.h:                                             ; preds = %bb.b
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #36, !dbg !31490
  unreachable, !dbg !31490

._crit_edge28:                                    ; preds = %._crit_edge.us, %bb.j, %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !31525 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !dbg !31525, !noundef !672
  %.not = icmp eq ptr %i.ay, null, !dbg !31525
  %. = select i1 %.not, ptr null, ptr %i.ax, !dbg !31526
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !31527
  tail call void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB5_16OptBitmapBuilder47subslice_extend_each_repeated_from_opt_validity(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.az, ptr noundef align 8 %., i64 noundef %2, i64 noundef %3, i64 noundef %4), !dbg !31528
  ret void, !dbg !31529

.lr.ph27.split:                                   ; preds = %.lr.ph27, %bb.j
  %.sroa.02.025 = phi i64 [ %i.ba, %bb.j ], [ %2, %.lr.ph27 ] ; 4 uses
  %i.ba = add i64 %.sroa.02.025, 1, !dbg !31501   ; 5 uses
  %i.bb = load i64, ptr %i.f, align 8, !dbg !31502, !noundef !672 ; 4 uses
  %i.bc = icmp ult i64 %.sroa.02.025, %i.bb, !dbg !31463
  br i1 %i.bc, label %bb.i, label %.split.us, !dbg !31463

bb.i:                                             ; preds = %.lr.ph27.split
  %i.bd = icmp ult i64 %i.ba, %i.bb, !dbg !31505
  br i1 %i.bd, label %bb.j, label %.split31.us, !dbg !31505

.split.us:                                        ; preds = %.lr.ph27.split.us, %.lr.ph27.split
  %.us-phi = phi i64 [ %i.bb, %.lr.ph27.split ], [ %i.aa, %.lr.ph27.split.us ], !dbg !31463
  %.us-phi29 = phi i64 [ %.sroa.02.025, %.lr.ph27.split ], [ %.sroa.02.025.us, %.lr.ph27.split.us ], !dbg !31463
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.us-phi29, i64 noundef %.us-phi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #36, !dbg !31463
  unreachable, !dbg !31463

bb.j:                                             ; preds = %bb.i
  %i.be = load ptr, ptr %i.e, align 8, !dbg !31503, !noundef !672 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.sroa.02.025, !dbg !31463
  %.val15 = load i64, ptr %i.bf, align 8, !dbg !31504, !noundef !672 ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.ba, !dbg !31505
  %.val = load i64, ptr %i.bg, align 8, !dbg !31506, !noundef !672
  %i.bh = sub i64 %.val, %.val15, !dbg !31530
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31482), !dbg !31522
  %i.bi = load ptr, ptr %i.o, align 8, !dbg !31523, !alias.scope !31482, !nonnull !672, !noundef !672
  %i.bj = load ptr, ptr %i.s, align 8, !dbg !31523, !alias.scope !31482, !nonnull !672, !align !813, !noundef !672
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 96, !dbg !31523
  %i.bl = load ptr, ptr %i.bk, align 8, !dbg !31523, !invariant.load !672, !noalias !31483, !nonnull !672
  tail call void %i.bl(ptr noundef nonnull %i.bi, ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.d, i64 noundef %.val15, i64 noundef %i.bh, i64 noundef 0, i1 noundef zeroext %5) #35, !dbg !31524, !noalias !31482, !inline_history !497
  %exitcond54.not = icmp eq i64 %i.ba, %i.i, !dbg !31500
  br i1 %exitcond54.not, label %._crit_edge28, label %.lr.ph27.split, !dbg !31459

.split31.us:                                      ; preds = %bb.e, %bb.i
  %.us-phi32 = phi i64 [ %i.ba, %bb.i ], [ %i.z, %bb.e ], !dbg !31505
  %.us-phi33 = phi i64 [ %i.bb, %bb.i ], [ %i.aa, %bb.e ], !dbg !31505
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.us-phi32, i64 noundef %.us-phi33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @205) #36, !dbg !31505
  unreachable, !dbg !31505
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array4list7builderINtB4_16ListArrayBuilderxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_7builder12ArrayBuilderEL_EENtB1W_18StaticArrayBuilder6freezeBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(128) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !31531 !guid !31550 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [104 x i8], align 8               ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 2 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !31560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !31561
  %i.h = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragexE8from_vecCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1)
          to label %bb.c unwind label %bb.b, !dbg !31562

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferxE12from_storageCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull %i.h)
          to label %bb.d unwind label %bb.b, !dbg !31563

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !31564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !31565
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !31566
  %i.k = load ptr, ptr %i.j, align 8, !dbg !31566, !nonnull !672, !noundef !672
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !31566
  %i.m = load ptr, ptr %i.l, align 8, !dbg !31566, !nonnull !672, !align !813, !noundef !672
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !31567
  %i.o = load ptr, ptr %i.n, align 8, !dbg !31567, !invariant.load !672, !alias.scope !31555, !nonnull !672
  %i.p = invoke { ptr, ptr } %i.o(ptr noundef nonnull %i.k) #35
          to label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array7builderINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB5_12ArrayBuilderEL_EB1p_6freeze.exit unwind label %bb.e, !dbg !31568, !inline_history !500 ; 2 uses
end_hunk_1
