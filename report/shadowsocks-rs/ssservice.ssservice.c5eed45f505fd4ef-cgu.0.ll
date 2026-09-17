Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssservice.ssservice.c5eed45f505fd4ef-cgu.0?download=true
inline.NumInlined: 40157
inline.NumDeleted: 17541
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 272
begin_hunk_0_@_RNvMs2_NtCs8AjStw0eGtC_16hickory_resolver8resolverINtB5_15ResolverBuilderNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE5buildCsgZAIVb0XKpv_9ssservice:bb.a
  store i64 %.sroa.6118.0.copyload, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 968
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.24.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7121.0..sroa_idx, i64 32, i1 false)
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 1000
  store i8 %.sroa.010.0, ptr %.sroa.25.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7184)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8185)
  %i.ca = atomicrmw add ptr %i.by, i64 1 monotonic, align 8
  %i.cb = icmp slt i64 %i.ca, 0
  br i1 %i.cb, label %bb.au, label %bb.y

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4name4NameEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.u, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCscDkIWVIZClo_7tinyvec7tinyvec7TinyVecAhj20_EECsgZAIVb0XKpv_9ssservice.exit.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4name4NameEECsgZAIVb0XKpv_9ssservice.exit, %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.667)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.875)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  ret void

bb.y:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) %i.f, ptr noundef nonnull align 8 dereferenceable(136) %i.j, i64 136, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !91150)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.698.0.copyload) ]
  %i.cc = icmp ult i64 %.sroa.7101.0.copyload, 192153584101141163
  call void @llvm.assume(i1 %i.cc)
  %.idx.i = mul nuw nsw i64 %.sroa.7101.0.copyload, 48
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.698.0.copyload, i64 %.idx.i ; 3 uses
  %.not11.i.i.i.i.i.i = icmp eq i64 %.sroa.7101.0.copyload, 0
  br i1 %.not11.i.i.i.i.i.i, label %_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec16in_place_collectINtB6_3VecINtNtB8_4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtB1k_6config16NameServerConfigENCINvMNtB1k_16name_server_poolINtB6n_14NameServerPoolB2f_E11from_configIBP_B5J_EE0EE9from_iterCsgZAIVb0XKpv_9ssservice.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.y
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %.sroa.417.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 98
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 89
  %i.cn = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.co = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.cp = getelementptr inbounds nuw i8, ptr %i.f, i64 90
  %i.cq = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.z

bb.z:                                             ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldNtNtCs8AjStw0eGtC_16hickory_resolver6config16NameServerConfigINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtB13_11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEINtNtNtB23_3vec13in_place_drop11InPlaceDropB1Y_EINtNtBa_6result6ResultB4D_zENCINvMNtB13_16name_server_poolINtB5X_14NameServerPoolB34_E11from_configINtB4I_3VecBZ_EE0NCINvNtB4I_16in_place_collect24write_in_place_with_dropB1Y_E0E0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.sroa.4.012.i.i.i.i.i.i = phi ptr [ %.sroa.698.0.copyload, %.lr.ph.i.i.i.i.i.i ], [ %i.fp, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldNtNtCs8AjStw0eGtC_16hickory_resolver6config16NameServerConfigINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtB13_11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEINtNtNtB23_3vec13in_place_drop11InPlaceDropB1Y_EINtNtBa_6result6ResultB4D_zENCINvMNtB13_16name_server_poolINtB5X_14NameServerPoolB34_E11from_configINtB4I_3VecBZ_EE0NCINvNtB4I_16in_place_collect24write_in_place_with_dropB1Y_E0E0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ] ; 2 uses
  %i.cr = phi ptr [ %.sroa.698.0.copyload, %.lr.ph.i.i.i.i.i.i ], [ %i.cs, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldNtNtCs8AjStw0eGtC_16hickory_resolver6config16NameServerConfigINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtB13_11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEINtNtNtB23_3vec13in_place_drop11InPlaceDropB1Y_EINtNtBa_6result6ResultB4D_zENCINvMNtB13_16name_server_poolINtB5X_14NameServerPoolB34_E11from_configINtB4I_3VecBZ_EE0NCINvNtB4I_16in_place_collect24write_in_place_with_dropB1Y_E0E0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.cr, i64 48, i1 false), !noalias !91151
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !91152
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.53.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !91153)
  %i.ct = load ptr, ptr %i.cf, align 16, !alias.scope !91154, !noalias !91155, !nonnull !178, !noundef !178 ; 2 uses
  %i.cu = atomicrmw add ptr %i.ct, i64 1 monotonic, align 8, !noalias !91156
  %i.cv = icmp slt i64 %i.cu, 0
  br i1 %i.cv, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cw = load i32, ptr %i.cg, align 16, !range !196, !alias.scope !91157, !noalias !91158, !noundef !178 ; 2 uses
  %i.cx = load i32, ptr %i.ch, align 4, !alias.scope !91157, !noalias !91158
  %i.cy = load i16, ptr %i.ci, align 16, !range !239, !alias.scope !91157, !noalias !91158, !noundef !178 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.cy, 2
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.53.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 2 dereferenceable(30) %.sroa.417.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, i64 30, i1 false), !noalias !91159
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cz = load i64, ptr %i.cj, align 8, !range !190, !alias.scope !91157, !noalias !91158, !noundef !178
  %.not18.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cz, -1
  br i1 %.not18.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolverNtB5_24ShadowDnsRuntimeProviderNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cj) #53, !noalias !91159
  %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !91160
  br label %_RNvXs1_NtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolverNtB5_24ShadowDnsRuntimeProviderNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.z
  call void @llvm.trap()
  unreachable

_RNvXs1_NtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolverNtB5_24ShadowDnsRuntimeProviderNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.sroa.05.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i, %bb.ad ], [ -1, %bb.ac ]
  %i.da = load <4 x i32>, ptr %i.ck, align 8, !alias.scope !91157, !noalias !91158
  %i.db = load i8, ptr %i.cl, align 8, !range !181, !alias.scope !91157, !noalias !91158, !noundef !178
  %i.dc = load i8, ptr %i.cm, align 1, !range !181, !alias.scope !91157, !noalias !91158, !noundef !178
  %i.dd = load i64, ptr %i.cn, align 8, !alias.scope !91157, !noalias !91158
  %i.de = load i32, ptr %i.co, align 16, !range !198, !alias.scope !91157, !noalias !91158, !noundef !178
  %i.df = load i8, ptr %i.cp, align 2, !range !181, !alias.scope !91157, !noalias !91158, !noundef !178
  %i.dg = load <2 x i64>, ptr %i.f, align 16, !alias.scope !91157, !noalias !91158
  %i.dh = load i8, ptr %i.cq, align 16, !range !181, !alias.scope !91157, !noalias !91158, !noundef !178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !91161
  %i.di = call noundef nonnull ptr @_RNvNtNtCs1jR6m42rQJO_4rand4rngs6thread3rng() #53, !noalias !91162 ; 12 uses
  store ptr %i.di, ptr %i.b, align 8, !noalias !91161
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 9 uses
  %i.dk = load i32, ptr %i.dj, align 4, !noalias !91163, !noundef !178 ; 4 uses
  %i.dl = icmp ult i32 %i.dk, 63
  br i1 %i.dl, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %_RNvXs1_NtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolverNtB5_24ShadowDnsRuntimeProviderNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 268
  %i.dn = load i32, ptr %i.dm, align 4, !alias.scope !91164, !noalias !91165, !noundef !178
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 272 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 320
  %i.dq = load i64, ptr %i.dp, align 4, !alias.scope !91166, !noalias !91167
  %i.dr = icmp ugt i64 %i.dq, 1023
  br i1 %i.dr, label %bb.ag, label %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !187

bb.ag:                                            ; preds = %bb.af
  call void @_RNvMs_NtNtCs1jR6m42rQJO_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.do) #60, !noalias !91167
  br label %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ag, %bb.af
  call fastcc void @_RNvXs_NtCs3csC7NK4ZxG_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generateCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.do, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.dj) #53, !noalias !91165
  %i.ds = load i32, ptr %i.dj, align 4, !alias.scope !91164, !noalias !91165, !noundef !178 ; 2 uses
  %.not.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.dk, 63
  br i1 %.not.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsgZAIVb0XKpv_9ssservice.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.di, i64 20
  %i.du = load i32, ptr %i.dt, align 4, !alias.scope !91164, !noalias !91165, !noundef !178
  br label %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsgZAIVb0XKpv_9ssservice.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %_RNvXs1_NtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolverNtB5_24ShadowDnsRuntimeProviderNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i
  %i.dv = zext nneg i32 %i.dk to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dv ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !alias.scope !91164, !noalias !91165, !noundef !178
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !alias.scope !91164, !noalias !91165, !noundef !178
  %i.ea = add nuw nsw i32 %i.dk, 2
  br label %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsgZAIVb0XKpv_9ssservice.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsgZAIVb0XKpv_9ssservice.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ai, %bb.ah, %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.018.i.i.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ea, %bb.ai ], [ 1, %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 2, %bb.ah ] ; 5 uses
  %.sroa.02.017.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.dx, %bb.ai ], [ %i.dn, %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ds, %bb.ah ]
  %.sroa.03.016.i.i.i.i13.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.dz, %bb.ai ], [ %i.ds, %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.du, %bb.ah ]
  store i32 %.sroa.0.018.i.i.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.dj, align 4, !alias.scope !91164, !noalias !91165
  %i.eb = zext i32 %.sroa.03.016.i.i.i.i13.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ec = shl nuw i64 %i.eb, 32
  %i.ed = zext i32 %.sroa.02.017.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ee = or disjoint i64 %i.ec, %i.ed
  %i.ef = zext i64 %i.ee to i128
  %i.eg = mul nuw nsw i128 %i.ef, 31              ; 2 uses
  %i.eh = lshr i128 %i.eg, 64
  %i.ei = trunc nuw nsw i128 %i.eh to i32         ; 2 uses
  %i.ej = trunc i128 %i.eg to i64                 ; 2 uses
  %i.ek = icmp ugt i64 %i.ej, -31
  br i1 %i.ek, label %bb.aj, label %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCsf3Ta7LF998c_4core3ops5range5RangeyEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i

bb.aj:                                            ; preds = %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsgZAIVb0XKpv_9ssservice.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.el = icmp samesign ult i32 %.sroa.0.018.i.i.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.i, 63
  br i1 %i.el, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.em = getelementptr inbounds nuw i8, ptr %i.di, i64 268
  %i.en = load i32, ptr %i.em, align 4, !alias.scope !91168, !noalias !91169, !noundef !178
  %i.eo = getelementptr inbounds nuw i8, ptr %i.di, i64 272 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.di, i64 320
  %i.eq = load i64, ptr %i.ep, align 4, !alias.scope !91170, !noalias !91171
  %i.er = icmp ugt i64 %i.eq, 1023
  br i1 %i.er, label %bb.al, label %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !187

bb.al:                                            ; preds = %bb.ak
  call void @_RNvMs_NtNtCs1jR6m42rQJO_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.eo) #60, !noalias !91171
  br label %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.al, %bb.ak
  call fastcc void @_RNvXs_NtCs3csC7NK4ZxG_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generateCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.eo, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.dj) #53, !noalias !91169
  %i.es = load i32, ptr %i.dj, align 4, !alias.scope !91168, !noalias !91169, !noundef !178 ; 2 uses
  %.not.i.i.i.i16.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.018.i.i.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.i, 63
  br i1 %.not.i.i.i.i16.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsgZAIVb0XKpv_9ssservice.exit20.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.di, i64 20
  %i.eu = load i32, ptr %i.et, align 4, !alias.scope !91168, !noalias !91169, !noundef !178
  br label %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsgZAIVb0XKpv_9ssservice.exit20.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.aj
  %i.ev = zext nneg i32 %.sroa.0.018.i.i.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.ev ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !alias.scope !91168, !noalias !91169, !noundef !178
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !alias.scope !91168, !noalias !91169, !noundef !178
  %i.fa = add nuw nsw i32 %.sroa.0.018.i.i.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  br label %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsgZAIVb0XKpv_9ssservice.exit20.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsgZAIVb0XKpv_9ssservice.exit20.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.an, %bb.am, %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.018.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.fa, %bb.an ], [ 1, %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 2, %bb.am ]
  %.sroa.02.017.i.i.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ex, %bb.an ], [ %i.en, %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.es, %bb.am ]
  %.sroa.03.016.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ez, %bb.an ], [ %i.es, %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.eu, %bb.am ]
  store i32 %.sroa.0.018.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.dj, align 4, !alias.scope !91168, !noalias !91169
  %i.fb = zext i32 %.sroa.03.016.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.fc = shl nuw i64 %i.fb, 32
  %i.fd = zext i32 %.sroa.02.017.i.i.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.fe = or disjoint i64 %i.fc, %i.fd
  %2 = call i64 @llvm.umulh.i64(i64 %i.fe, i64 31)
  %i.ff = xor i64 %i.ej, -1
  %.not6.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %2, %i.ff
  %i.fg = zext i1 %.not6.i.i.i.i.i.i.i.i.i.i.i.i.i to i32
  %i.fh = add nuw nsw i32 %i.fg, %i.ei
  br label %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCsf3Ta7LF998c_4core3ops5range5RangeyEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i

_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCsf3Ta7LF998c_4core3ops5range5RangeyEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsgZAIVb0XKpv_9ssservice.exit20.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsgZAIVb0XKpv_9ssservice.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.fh, %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsgZAIVb0XKpv_9ssservice.exit20.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ei, %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsgZAIVb0XKpv_9ssservice.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.fi = load i64, ptr %i.di, align 8, !noalias !91172, !noundef !178
  %i.fj = add i64 %i.fi, -1                       ; 2 uses
  store i64 %i.fj, ptr %i.di, align 8, !noalias !91172
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %bb.ao, label %_RINvMNtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB3_10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE3newATNtNtCsi1FNhPBS7PW_11hickory_net4xfer8ProtocolINtNtB2M_12dns_exchange11DnsExchangeB16_EEj0_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i

bb.ao:                                            ; preds = %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCsf3Ta7LF998c_4core3ops5range5RangeyEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i
  call void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcINtNtCsf3Ta7LF998c_4core4cell10UnsafeCellINtNtCsfGqwKJg1jQb_9rand_core5block8BlockRngNtNtNtCs1jR6m42rQJO_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #60, !noalias !91162
  br label %_RINvMNtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB3_10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE3newATNtNtCsi1FNhPBS7PW_11hickory_net4xfer8ProtocolINtNtB2M_12dns_exchange11DnsExchangeB16_EEj0_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i

_RINvMNtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB3_10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE3newATNtNtCsi1FNhPBS7PW_11hickory_net4xfer8ProtocolINtNtB2M_12dns_exchange11DnsExchangeB16_EEj0_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ao, %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCsf3Ta7LF998c_4core3ops5range5RangeyEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !91161
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !91173
  %i.fl = call noundef align 8 dereferenceable_or_null(312) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 312, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !91173 ; 29 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.ap, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldNtNtCs8AjStw0eGtC_16hickory_resolver6config16NameServerConfigINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtB13_11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEINtNtNtB23_3vec13in_place_drop11InPlaceDropB1Y_EINtNtBa_6result6ResultB4D_zENCINvMNtB13_16name_server_poolINtB5X_14NameServerPoolB34_E11from_configINtB4I_3VecBZ_EE0NCINvNtB4I_16in_place_collect24write_in_place_with_dropB1Y_E0E0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i, !prof !183

bb.ap:                                            ; preds = %_RINvMNtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB3_10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE3newATNtNtCsi1FNhPBS7PW_11hickory_net4xfer8ProtocolINtNtB2M_12dns_exchange11DnsExchangeB16_EEj0_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 312) #62, !noalias !91173
  unreachable

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldNtNtCs8AjStw0eGtC_16hickory_resolver6config16NameServerConfigINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtB13_11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEINtNtNtB23_3vec13in_place_drop11InPlaceDropB1Y_EINtNtBa_6result6ResultB4D_zENCINvMNtB13_16name_server_poolINtB5X_14NameServerPoolB34_E11from_configINtB4I_3VecBZ_EE0NCINvNtB4I_16in_place_collect24write_in_place_with_dropB1Y_E0E0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB3_10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE3newATNtNtCsi1FNhPBS7PW_11hickory_net4xfer8ProtocolINtNtB2M_12dns_exchange11DnsExchangeB16_EEj0_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i
  %i.fn = add nuw nsw i32 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.fo = trunc nuw i32 %i.cw to i1
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i = select i1 %i.fo, i32 %i.cx, i32 undef
  store i64 1, ptr %i.fl, align 8, !noalias !91159
  %.sroa.418.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store i64 1, ptr %.sroa.418.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !91159
  %.sroa.519.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store <2 x i64> %i.dg, ptr %.sroa.519.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !91159
  %.sroa.721.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  store i8 %i.dh, ptr %.sroa.721.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !91159
  %.sroa.923.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 40
  store i64 %.sroa.05.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.923.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !91159
  %.sroa.1024.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1024.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i64 16, i1 false), !noalias !91159
  %.sroa.1125.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 64
  store i32 %i.cw, ptr %.sroa.1125.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !91159
  %.sroa.1226.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 68
  store i32 %.sroa.5.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.1226.0..sroa_idx.i.i.i.i.i.i.i.i, align 4, !noalias !91159
  %.sroa.1327.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 72
  store <4 x i32> %i.da, ptr %.sroa.1327.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !91159
  %.sroa.1731.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 88
  store i64 %i.dd, ptr %.sroa.1731.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !91159
  %.sroa.1832.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 96
  store i32 %i.de, ptr %.sroa.1832.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !91159
  %.sroa.2034.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 104
  store i8 %i.db, ptr %.sroa.2034.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !91159
  %.sroa.2135.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 105
  store i8 %i.dc, ptr %.sroa.2135.0..sroa_idx.i.i.i.i.i.i.i.i, align 1, !noalias !91159
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 106
  store i8 %i.df, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i, align 2, !noalias !91159
  %.sroa.24.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 112
  store i16 %i.cy, ptr %.sroa.24.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !91159
  %.sroa.25.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.25.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.53.i.i.i.i.i.i.i.i.i.i, i64 30, i1 false), !noalias !91159
  %.sroa.26.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 144
  store ptr %i.ct, ptr %.sroa.26.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !91159
  %.sroa.27.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.27.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.i.i.i.i.i.i, i64 48, i1 false), !noalias !91151
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 200
  store i32 0, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !91159
  %.sroa.29.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 204
  store i8 0, ptr %.sroa.29.0..sroa_idx.i.i.i.i.i.i.i.i, align 4, !noalias !91159
  %.sroa.31.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 208
  store i64 0, ptr %.sroa.31.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !91159
  %.sroa.32.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 216
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.32.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !91159
  %.sroa.33.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.33.0..sroa_idx.i.i.i.i.i.i.i.i, i8 0, i64 40, i1 false), !noalias !91159
  %.sroa.34.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 264
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.34.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !91159
  %.sroa.35.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.35.0..sroa_idx.i.i.i.i.i.i.i.i, i8 0, i64 16, i1 false), !noalias !91159
  %.sroa.37.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 296
  store i32 -1, ptr %.sroa.37.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !91159
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 304
  store i32 %i.fn, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !91159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !91152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.53.i.i.i.i.i.i.i.i.i.i)
  store ptr %i.fl, ptr %.sroa.4.012.i.i.i.i.i.i, align 8, !noalias !91174
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cs, %i.cd
  br i1 %.not.i.i.i.i.i.i, label %_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec16in_place_collectINtB6_3VecINtNtB8_4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtB1k_6config16NameServerConfigENCINvMNtB1k_16name_server_poolINtB6n_14NameServerPoolB2f_E11from_configIBP_B5J_EE0EE9from_iterCsgZAIVb0XKpv_9ssservice.exit.i, label %bb.z

_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec16in_place_collectINtB6_3VecINtNtB8_4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtB1k_6config16NameServerConfigENCINvMNtB1k_16name_server_poolINtB6n_14NameServerPoolB2f_E11from_configIBP_B5J_EE0EE9from_iterCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldNtNtCs8AjStw0eGtC_16hickory_resolver6config16NameServerConfigINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtB13_11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEINtNtNtB23_3vec13in_place_drop11InPlaceDropB1Y_EINtNtBa_6result6ResultB4D_zENCINvMNtB13_16name_server_poolINtB5X_14NameServerPoolB34_E11from_configINtB4I_3VecBZ_EE0NCINvNtB4I_16in_place_collect24write_in_place_with_dropB1Y_E0E0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i, %bb.y
  %.val2.i.i.i.i = phi ptr [ %.sroa.698.0.copyload, %bb.y ], [ %i.cd, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldNtNtCs8AjStw0eGtC_16hickory_resolver6config16NameServerConfigINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtB13_11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEINtNtNtB23_3vec13in_place_drop11InPlaceDropB1Y_EINtNtBa_6result6ResultB4D_zENCINvMNtB13_16name_server_poolINtB5X_14NameServerPoolB34_E11from_configINtB4I_3VecBZ_EE0NCINvNtB4I_16in_place_collect24write_in_place_with_dropB1Y_E0E0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.4.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.698.0.copyload, %bb.y ], [ %i.fp, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldNtNtCs8AjStw0eGtC_16hickory_resolver6config16NameServerConfigINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtB13_11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEINtNtNtB23_3vec13in_place_drop11InPlaceDropB1Y_EINtNtBa_6result6ResultB4D_zENCINvMNtB13_16name_server_poolINtB5X_14NameServerPoolB34_E11from_configINtB4I_3VecBZ_EE0NCINvNtB4I_16in_place_collect24write_in_place_with_dropB1Y_E0E0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ]
  %i.fq = ptrtoint ptr %i.cd to i64
  %i.fr = ptrtoint ptr %.val2.i.i.i.i to i64
  %i.fs = sub nuw i64 %i.fq, %i.fr
  %i.ft = udiv exact i64 %i.fs, 48
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCs8AjStw0eGtC_16hickory_resolver6config16NameServerConfigECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 %.val2.i.i.i.i, i64 noundef %i.ft) #53, !noalias !91175
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.017.sroa.4.i.i)
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !91176
  %i.fu = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !91176 ; 9 uses
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %bb.aq, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i, !prof !183

bb.aq:                                            ; preds = %_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec16in_place_collectINtB6_3VecINtNtB8_4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtB1k_6config16NameServerConfigENCINvMNtB1k_16name_server_poolINtB6n_14NameServerPoolB2f_E11from_configIBP_B5J_EE0EE9from_iterCsgZAIVb0XKpv_9ssservice.exit.i
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #62, !noalias !91176
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i: ; preds = %_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec16in_place_collectINtB6_3VecINtNtB8_4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtB1k_6config16NameServerConfigENCINvMNtB1k_16name_server_poolINtB6n_14NameServerPoolB2f_E11from_configIBP_B5J_EE0EE9from_iterCsgZAIVb0XKpv_9ssservice.exit.i
  %i.fw = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i.i.i.i to i64
  %i.fx = ptrtoint ptr %.sroa.698.0.copyload to i64
  %i.fy = sub nuw i64 %i.fw, %i.fx
  %i.fz = lshr exact i64 %i.fy, 3
  %i.ga = mul nuw i64 %.sroa.096.0.copyload, 6
  store i64 1, ptr %i.fu, align 8, !noalias !91177
  %.sroa.4.0..sroa_idx20.i.i = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx20.i.i, align 8, !noalias !91177
  %.sroa.5.0..sroa_idx21.i.i = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  store i64 %i.ga, ptr %.sroa.5.0..sroa_idx21.i.i, align 8, !noalias !91178
  %.sroa.4.0..sroa.5.0..sroa_idx21.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  store ptr %.sroa.698.0.copyload, ptr %.sroa.4.0..sroa.5.0..sroa_idx21.i.sroa_idx.i, align 8, !noalias !91178
  %.sroa.5.0..sroa.5.0..sroa_idx21.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  store i64 %i.fz, ptr %.sroa.5.0..sroa.5.0..sroa_idx21.i.sroa_idx.i, align 8, !noalias !91178
  %.sroa.6.0..sroa_idx22.i.i = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  store ptr %i.by, ptr %.sroa.6.0..sroa_idx22.i.i, align 8, !noalias !91177
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fu, i64 48
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !91177
  %i.gb = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 13 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 6 uses
  %i.gd = load i8, ptr %i.gc, align 8, !range !181, !noalias !91179, !noundef !178
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %._RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsgZAIVb0XKpv_9ssservice.exit_crit_edge.i.i.i.i, label %_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, !prof !192

._RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsgZAIVb0XKpv_9ssservice.exit_crit_edge.i.i.i.i: ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i
  %.pre.i.i.i.i = load i64, ptr %i.gb, align 8, !noalias !91180 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %.pre1.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !91180
  %i.gf = insertvalue { i64, i64 } poison, i64 %.pre.i.i.i.i, 0
  %i.gg = insertvalue { i64, i64 } %i.gf, i64 %.pre1.i.i.i.i, 1
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i
  %i.gh = call { i64, i64 } @_RNvNtNtNtCs5Xr050g3D4S_3std3sys6random5linux19hashmap_random_keys() #53, !noalias !91181 ; 3 uses
  %i.gi = extractvalue { i64, i64 } %i.gh, 0
  %i.gj = extractvalue { i64, i64 } %i.gh, 1
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store i64 %i.gj, ptr %i.gk, align 8, !noalias !91182
  store i8 1, ptr %i.gc, align 8, !noalias !91182
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %._RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsgZAIVb0XKpv_9ssservice.exit_crit_edge.i.i.i.i
  %i.gl = phi i64 [ %.pre.i.i.i.i, %._RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsgZAIVb0XKpv_9ssservice.exit_crit_edge.i.i.i.i ], [ %i.gi, %_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ]
  %.merged.i.i.i = phi { i64, i64 } [ %i.gg, %._RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsgZAIVb0XKpv_9ssservice.exit_crit_edge.i.i.i.i ], [ %i.gh, %_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ] ; 2 uses
  %i.gm = add i64 %i.gl, 1
  store i64 %i.gm, ptr %i.gb, align 8, !noalias !91180
  %.sroa.017.sroa.4.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.017.sroa.4.i.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.017.sroa.4.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) @530, i64 32, i1 false), !noalias !91183
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !91184
  %i.gn = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !91184 ; 8 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %bb.ar, label %_RNvMNtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB2_14NameServerPoolNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE16from_nameserversCsgZAIVb0XKpv_9ssservice.exit.i, !prof !183

bb.ar:                                            ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsgZAIVb0XKpv_9ssservice.exit.i.i
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #62, !noalias !91184
  unreachable

_RNvMNtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB2_14NameServerPoolNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE16from_nameserversCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.gp = extractvalue { i64, i64 } %.merged.i.i.i, 1
  %i.gq = extractvalue { i64, i64 } %.merged.i.i.i, 0
  store i64 1, ptr %i.gn, align 8, !noalias !91177
  %.sroa.424.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store i64 1, ptr %.sroa.424.0..sroa_idx.i.i, align 8, !noalias !91177
  %.sroa.525.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store i8 0, ptr %.sroa.525.0..sroa_idx.i.i, align 8, !noalias !91177
  %.sroa.626.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.626.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.017.sroa.4.i.i, i64 39, i1 false), !noalias !91177
  %.sroa.727.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 56
  store i64 %i.gq, ptr %.sroa.727.0..sroa_idx.i.i, align 8, !noalias !91177
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 64
  store i64 %i.gp, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !91177
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.017.sroa.4.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !91185)
  %i.gr = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !91186)
  call void @llvm.experimental.noalias.scope.decl(metadata !91187)
  call void @llvm.experimental.noalias.scope.decl(metadata !91188)
  %i.gs = load ptr, ptr %i.gr, align 16, !alias.scope !91189, !noalias !91190, !nonnull !178, !noundef !178
  %i.gt = atomicrmw sub ptr %i.gs, i64 1 release, align 8, !noalias !91191
  %i.gu = icmp eq i64 %i.gt, 1
  br i1 %i.gu, label %bb.as, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsi1FNhPBS7PW_11hickory_net7runtime13tokio_runtime11TokioHandleECsgZAIVb0XKpv_9ssservice.exit.i.i

bb.as:                                            ; preds = %_RNvMNtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB2_14NameServerPoolNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE16from_nameserversCsgZAIVb0XKpv_9ssservice.exit.i
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexINtNtNtCsczhfDQ1qNkX_5tokio4task8join_set7JoinSetuEEE9drop_slowCs8AjStw0eGtC_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gr) #60, !noalias !91190
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsi1FNhPBS7PW_11hickory_net7runtime13tokio_runtime11TokioHandleECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsi1FNhPBS7PW_11hickory_net7runtime13tokio_runtime11TokioHandleECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.as, %_RNvMNtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB2_14NameServerPoolNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE16from_nameserversCsgZAIVb0XKpv_9ssservice.exit.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.f, i64 24
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCsf3Ta7LF998c_4core6future6futureINtNtB8_3pin3PinQNCNCNvMs4_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns6serverNtB16_9DnsClient18lookup_local_inner00ENtB4_6Future4pollCsgZAIVb0XKpv_9ssservice:bb.a

bb.i:                                             ; preds = %bb.a, %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 208
  call fastcc void @_RNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cacheNtB4_14DnsClientCache12lookup_local0CsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %0, ptr noundef nonnull align 16 %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #61
  %i.q = load i64, ptr %0, align 8, !range !247, !alias.scope !105705, !noalias !105707, !noundef !178
  %i.r = icmp eq i64 %i.q, -2
  br i1 %i.r, label %_RNCNCNvMs4_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns6serverNtB9_9DnsClient18lookup_local_inner00CsgZAIVb0XKpv_9ssservice.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val, i64 21240
  %i.t = load i8, ptr %i.s, align 8, !range !233, !noalias !105706, !noundef !178
  switch i8 %i.t, label %_RNCNCNvMs4_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns6serverNtB9_9DnsClient18lookup_local_inner00CsgZAIVb0XKpv_9ssservice.exit [
    i8 0, label %bb.k
    i8 3, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 21088
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op7message7MessageECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(152) %i.u) #53, !noalias !105705
  br label %_RNCNCNvMs4_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns6serverNtB9_9DnsClient18lookup_local_inner00CsgZAIVb0XKpv_9ssservice.exit

bb.l:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val, i64 288
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cacheNtBG_14DnsClientCache10lookup_dns0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 16 %i.v) #53, !noalias !105705
  %i.w = getelementptr inbounds nuw i8, ptr %.0.val, i64 240
  call void @llvm.experimental.noalias.scope.decl(metadata !105708)
  %i.x = load i32, ptr %i.w, align 16, !range !259, !alias.scope !105708, !noalias !105706, !noundef !178
  switch i32 %i.x, label %default.unreachable [
    i32 0, label %_RNCNCNvMs4_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns6serverNtB9_9DnsClient18lookup_local_inner00CsgZAIVb0XKpv_9ssservice.exit
    i32 1, label %_RNCNCNvMs4_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns6serverNtB9_9DnsClient18lookup_local_inner00CsgZAIVb0XKpv_9ssservice.exit
    i32 2, label %bb.o
    i32 3, label %bb.m
  ]

default.unreachable:                              ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %.0.val, i64 248
  %i.z = load i16, ptr %i.y, align 8, !range !179, !alias.scope !105709, !noalias !105706, !noundef !178
  %i.aa = icmp eq i16 %i.z, 0
  br i1 %i.aa, label %_RNCNCNvMs4_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns6serverNtB9_9DnsClient18lookup_local_inner00CsgZAIVb0XKpv_9ssservice.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.val, i64 256
  %.val.i.i.i.i.i.i = load i64, ptr %i.ab, align 16, !alias.scope !105710, !noalias !105706 ; 2 uses
  %i.ac = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.ac, label %_RNCNCNvMs4_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns6serverNtB9_9DnsClient18lookup_local_inner00CsgZAIVb0XKpv_9ssservice.exit, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit.sink.split.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit.sink.split.i.i.i: ; preds = %bb.p, %bb.n
  %.val.i.i.i1.sink.i.i.i = phi i64 [ %.val.i.i.i1.i.i.i, %bb.p ], [ %.val.i.i.i.i.i.i, %bb.n ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 264
  %.val1.i.i.i2.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !105708, !noalias !105706, !nonnull !178, !noundef !178
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i2.i.i.i, i64 noundef %.val.i.i.i1.sink.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !105711
  br label %_RNCNCNvMs4_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns6serverNtB9_9DnsClient18lookup_local_inner00CsgZAIVb0XKpv_9ssservice.exit

bb.o:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.val, i64 248
  %i.af = load i16, ptr %i.ae, align 8, !range !179, !alias.scope !105712, !noalias !105706, !noundef !178
  %i.ag = icmp eq i16 %i.af, 0
  br i1 %i.ag, label %_RNCNCNvMs4_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns6serverNtB9_9DnsClient18lookup_local_inner00CsgZAIVb0XKpv_9ssservice.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.val, i64 256
  %.val.i.i.i1.i.i.i = load i64, ptr %i.ah, align 16, !alias.scope !105713, !noalias !105706 ; 2 uses
  %i.ai = icmp eq i64 %.val.i.i.i1.i.i.i, 0
  br i1 %i.ai, label %_RNCNCNvMs4_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns6serverNtB9_9DnsClient18lookup_local_inner00CsgZAIVb0XKpv_9ssservice.exit, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit.sink.split.i.i.i

_RNCNCNvMs4_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns6serverNtB9_9DnsClient18lookup_local_inner00CsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.j, %bb.k, %bb.l, %bb.l, %bb.m, %bb.n, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit.sink.split.i.i.i, %bb.o, %bb.p, %bb.i, %bb.g
  %.sink.i = phi i8 [ 4, %bb.i ], [ 3, %bb.g ], [ 1, %bb.p ], [ 1, %bb.o ], [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit.sink.split.i.i.i ], [ 1, %bb.n ], [ 1, %bb.m ], [ 1, %bb.l ], [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %bb.j ]
  store i8 %.sink.i, ptr %i.b, align 16, !noalias !105706
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtCsf3Ta7LF998c_4core6future6futureINtNtB8_3pin3PinQNCNCNvMs4_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns6serverNtB16_9DnsClient19lookup_remote_inner0s0_0ENtB4_6Future4pollCsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(152) %0, ptr %.0.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [112 x i8], align 8               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105763)
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 168 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !230, !noalias !105764, !noundef !178
  switch i8 %i.d, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.p
    i8 3, label %bb.n
    i8 4, label %bb.s
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 169
  store i8 1, ptr %i.e, align 1, !noalias !105764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !105764
  %i.f = tail call noundef nonnull ptr @_RNvNtNtCs1jR6m42rQJO_4rand4rngs6thread3rng() #53, !noalias !105764 ; 12 uses
  store ptr %i.f, ptr %i.a, align 8, !noalias !105764
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 9 uses
  %i.h = load i32, ptr %i.g, align 4, !noalias !105765, !noundef !178 ; 4 uses
  %i.i = icmp ult i32 %i.h, 63
  br i1 %i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 268
  %i.k = load i32, ptr %i.j, align 4, !alias.scope !105766, !noalias !105767, !noundef !178
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 272 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 320
  %i.n = load i64, ptr %i.m, align 4, !alias.scope !105768, !noalias !105769
  %i.o = icmp ugt i64 %i.n, 1023
  br i1 %i.o, label %bb.e, label %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i, !prof !187

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs_NtNtCs1jR6m42rQJO_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.l) #60, !noalias !105769
  br label %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i

_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i: ; preds = %bb.e, %bb.d
  tail call fastcc void @_RNvXs_NtCs3csC7NK4ZxG_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generateCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.l, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.g) #53, !noalias !105767
  %i.p = load i32, ptr %i.g, align 4, !alias.scope !105766, !noalias !105767, !noundef !178 ; 2 uses
  %.not.i.i.i.i10.i.i.i.i.i = icmp eq i32 %i.h, 63
  br i1 %.not.i.i.i.i10.i.i.i.i.i, label %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsgZAIVb0XKpv_9ssservice.exit14.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.r = load i32, ptr %i.q, align 4, !alias.scope !105766, !noalias !105767, !noundef !178
  br label %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsgZAIVb0XKpv_9ssservice.exit14.i.i.i.i.i

bb.g:                                             ; preds = %bb.c
  %i.s = zext nneg i32 %i.h to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !alias.scope !105766, !noalias !105767, !noundef !178
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.w = load i32, ptr %i.v, align 4, !alias.scope !105766, !noalias !105767, !noundef !178
  %i.x = add nuw nsw i32 %i.h, 2
  br label %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsgZAIVb0XKpv_9ssservice.exit14.i.i.i.i.i

_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsgZAIVb0XKpv_9ssservice.exit14.i.i.i.i.i: ; preds = %bb.g, %bb.f, %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i
  %.sroa.0.018.i.i.i.i11.i.i.i.i.i = phi i32 [ %i.x, %bb.g ], [ 1, %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i ], [ 2, %bb.f ] ; 5 uses
  %.sroa.02.017.i.i.i.i12.i.i.i.i.i = phi i32 [ %i.u, %bb.g ], [ %i.k, %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i ], [ %i.p, %bb.f ]
  %.sroa.03.016.i.i.i.i13.i.i.i.i.i = phi i32 [ %i.w, %bb.g ], [ %i.p, %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i ], [ %i.r, %bb.f ]
  store i32 %.sroa.0.018.i.i.i.i11.i.i.i.i.i, ptr %i.g, align 4, !alias.scope !105766, !noalias !105767
  %i.y = zext i32 %.sroa.03.016.i.i.i.i13.i.i.i.i.i to i64
  %i.z = shl nuw i64 %i.y, 32
  %i.aa = zext i32 %.sroa.02.017.i.i.i.i12.i.i.i.i.i to i64
  %i.ab = or disjoint i64 %i.z, %i.aa
  %i.ac = zext i64 %i.ab to i128
  %i.ad = mul nuw nsw i128 %i.ac, 1001            ; 2 uses
  %i.ae = lshr i128 %i.ad, 64
  %i.af = trunc nuw nsw i128 %i.ae to i64         ; 2 uses
  %i.ag = trunc i128 %i.ad to i64                 ; 2 uses
  %i.ah = icmp ugt i64 %i.ag, -1001
  br i1 %i.ah, label %bb.h, label %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusiveyEECsgZAIVb0XKpv_9ssservice.exit.i.i

bb.h:                                             ; preds = %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsgZAIVb0XKpv_9ssservice.exit14.i.i.i.i.i
  %i.ai = icmp samesign ult i32 %.sroa.0.018.i.i.i.i11.i.i.i.i.i, 63
  br i1 %i.ai, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 268
  %i.ak = load i32, ptr %i.aj, align 4, !alias.scope !105770, !noalias !105771, !noundef !178
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 272 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 320
  %i.an = load i64, ptr %i.am, align 4, !alias.scope !105772, !noalias !105773
  %i.ao = icmp ugt i64 %i.an, 1023
  br i1 %i.ao, label %bb.j, label %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i, !prof !187

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvMs_NtNtCs1jR6m42rQJO_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.al) #60, !noalias !105773
  br label %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i

_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i: ; preds = %bb.j, %bb.i
  tail call fastcc void @_RNvXs_NtCs3csC7NK4ZxG_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generateCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.al, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.g) #53, !noalias !105771
  %i.ap = load i32, ptr %i.g, align 4, !alias.scope !105770, !noalias !105771, !noundef !178 ; 2 uses
  %.not.i.i.i.i16.i.i.i.i.i = icmp eq i32 %.sroa.0.018.i.i.i.i11.i.i.i.i.i, 63
  br i1 %.not.i.i.i.i16.i.i.i.i.i, label %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsgZAIVb0XKpv_9ssservice.exit20.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.ar = load i32, ptr %i.aq, align 4, !alias.scope !105770, !noalias !105771, !noundef !178
  br label %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsgZAIVb0XKpv_9ssservice.exit20.i.i.i.i.i

bb.l:                                             ; preds = %bb.h
  %i.as = zext nneg i32 %.sroa.0.018.i.i.i.i11.i.i.i.i.i to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !alias.scope !105770, !noalias !105771, !noundef !178
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !alias.scope !105770, !noalias !105771, !noundef !178
  %i.ax = add nuw nsw i32 %.sroa.0.018.i.i.i.i11.i.i.i.i.i, 2
  br label %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsgZAIVb0XKpv_9ssservice.exit20.i.i.i.i.i

_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsgZAIVb0XKpv_9ssservice.exit20.i.i.i.i.i: ; preds = %bb.l, %bb.k, %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i
  %.sroa.0.018.i.i.i.i17.i.i.i.i.i = phi i32 [ %i.ax, %bb.l ], [ 1, %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i ], [ 2, %bb.k ]
  %.sroa.02.017.i.i.i.i18.i.i.i.i.i = phi i32 [ %i.au, %bb.l ], [ %i.ak, %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i ], [ %i.ap, %bb.k ]
  %.sroa.03.016.i.i.i.i19.i.i.i.i.i = phi i32 [ %i.aw, %bb.l ], [ %i.ap, %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i ], [ %i.ar, %bb.k ]
  store i32 %.sroa.0.018.i.i.i.i17.i.i.i.i.i, ptr %i.g, align 4, !alias.scope !105770, !noalias !105771
  %i.ay = zext i32 %.sroa.03.016.i.i.i.i19.i.i.i.i.i to i64
  %i.az = shl nuw i64 %i.ay, 32
  %i.ba = zext i32 %.sroa.02.017.i.i.i.i18.i.i.i.i.i to i64
  %i.bb = or disjoint i64 %i.az, %i.ba
  %2 = tail call i64 @llvm.umulh.i64(i64 %i.bb, i64 1001)
  %i.bc = xor i64 %i.ag, -1
  %.not6.i.i.i.i.i = icmp ugt i64 %2, %i.bc
  %i.bd = zext i1 %.not6.i.i.i.i.i to i64
  %i.be = add nuw nsw i64 %i.bd, %i.af
  br label %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusiveyEECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusiveyEECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsgZAIVb0XKpv_9ssservice.exit20.i.i.i.i.i, %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsgZAIVb0XKpv_9ssservice.exit14.i.i.i.i.i
  %.sroa.01.0.i.i.i.i.i = phi i64 [ %i.be, %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsgZAIVb0XKpv_9ssservice.exit20.i.i.i.i.i ], [ %i.af, %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsgZAIVb0XKpv_9ssservice.exit14.i.i.i.i.i ]
  %.sroa.01.0.i.i.i.i.fr.i = freeze i64 %.sroa.01.0.i.i.i.i.i ; 3 uses
  %i.bf = add i64 %.sroa.01.0.i.i.i.i.fr.i, 500   ; 2 uses
  %i.bg = load i64, ptr %i.f, align 8, !noalias !105774, !noundef !178
  %i.bh = add i64 %i.bg, -1                       ; 2 uses
  store i64 %i.bh, ptr %i.f, align 8, !noalias !105774
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.m, label %_RINvCs1jR6m42rQJO_4rand12random_rangeyINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusiveyEECsgZAIVb0XKpv_9ssservice.exit.i

bb.m:                                             ; preds = %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusiveyEECsgZAIVb0XKpv_9ssservice.exit.i.i
  call void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcINtNtCsf3Ta7LF998c_4core4cell10UnsafeCellINtNtCsfGqwKJg1jQb_9rand_core5block8BlockRngNtNtNtCs1jR6m42rQJO_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #60, !noalias !105764
  br label %_RINvCs1jR6m42rQJO_4rand12random_rangeyINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusiveyEECsgZAIVb0XKpv_9ssservice.exit.i

_RINvCs1jR6m42rQJO_4rand12random_rangeyINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusiveyEECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.m, %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusiveyEECsgZAIVb0XKpv_9ssservice.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !105764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !105764
  %.cmp.i = icmp ugt i64 %.sroa.01.0.i.i.i.i.fr.i, 499
  %i.bj = zext i1 %.cmp.i to i64
  %.urem.i = add i64 %.sroa.01.0.i.i.i.i.fr.i, 4294966796
  %.cmp14.i = icmp ult i64 %i.bf, 1000
  %i.bk = select i1 %.cmp14.i, i64 %i.bf, i64 %.urem.i
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = mul nuw nsw i32 %i.bl, 1000000
  call void @_RNvNtNtCsczhfDQ1qNkX_5tokio4time5sleep5sleep(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.b, i64 noundef %i.bj, i32 noundef %i.bm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @841) #53, !noalias !105764
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.val, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.bn, ptr noundef nonnull align 8 dereferenceable(112) %i.b, i64 112, i1 false), !noalias !105764
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !105764
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_RINvCs1jR6m42rQJO_4rand12random_rangeyINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusiveyEECsgZAIVb0XKpv_9ssservice.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.val, i64 176 ; 3 uses
  %i.bp = call noundef zeroext i1 @_RNvXs_NtNtCsczhfDQ1qNkX_5tokio4time5sleepNtB4_5SleepNtNtNtCsf3Ta7LF998c_4core6future6future6Future4poll(ptr noundef nonnull align 8 %i.bo, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #53, !noalias !105763
  br i1 %i.bp, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @842) #63, !noalias !105764
  unreachable

bb.q:                                             ; preds = %bb.o
  store i64 -2, ptr %0, align 8, !alias.scope !105763, !noalias !105775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !105764
  br label %_RNCNCNvMs4_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns6serverNtB9_9DnsClient19lookup_remote_inner0s0_0CsgZAIVb0XKpv_9ssservice.exit

bb.r:                                             ; preds = %bb.o
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio4time5sleep5SleepECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.bo) #53, !noalias !105763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !105764
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.val, i64 152 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !105764, !nonnull !178, !align !186, !noundef !178
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = call noundef nonnull ptr @_RNvMs4_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB5_12PingBalancer15best_tcp_server(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bs) #53, !noalias !105763 ; 2 uses
  store ptr %i.bt, ptr %i.bo, align 16, !noalias !105764
  %i.bu = load ptr, ptr %i.bq, align 8, !noalias !105764, !nonnull !178, !align !186, !noundef !178 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.val1.i = load ptr, ptr %i.bw, align 8, !noalias !105763, !nonnull !178, !noundef !178
  %i.bx = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 880
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.val, i64 160
  %i.ca = load ptr, ptr %i.bz, align 16, !noalias !105764, !nonnull !178, !align !186, !noundef !178
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.val, i64 169
  store i8 0, ptr %i.cb, align 1, !noalias !105764
  %.sroa.1013.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 21056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(152) %.sroa.1013.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(152) %.0.val, i64 152, i1 false), !noalias !105764
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 21024
  store ptr %i.bv, ptr %.sroa.69.0..sroa_idx.i, align 16, !noalias !105764
  %.sroa.710.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 21032
  store ptr %i.bx, ptr %.sroa.710.0..sroa_idx.i, align 8, !noalias !105764
  %.sroa.811.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 21040
  store ptr %i.by, ptr %.sroa.811.0..sroa_idx.i, align 16, !noalias !105764
  %.sroa.912.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 21048
  store ptr %i.ca, ptr %.sroa.912.0..sroa_idx.i, align 8, !noalias !105764
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 21208
  store i8 0, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !105764
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 21209
  store i8 0, ptr %.sroa.12.0..sroa_idx.i, align 1, !noalias !105764
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.val, i64 192 ; 2 uses
  call fastcc void @_RNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cacheNtB4_14DnsClientCache13lookup_remote0CsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %0, ptr noundef nonnull align 16 %i.cc, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #61
  %i.cd = load i64, ptr %0, align 8, !range !247, !alias.scope !105763, !noalias !105775, !noundef !178
  %i.ce = icmp eq i64 %i.cd, -2
  br i1 %i.ce, label %_RNCNCNvMs4_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns6serverNtB9_9DnsClient19lookup_remote_inner0s0_0CsgZAIVb0XKpv_9ssservice.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.val, i64 21208
  %i.cg = load i8, ptr %i.cf, align 8, !range !233, !noalias !105764, !noundef !178
  switch i8 %i.cg, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cacheNtBG_14DnsClientCache13lookup_remote0ECsgZAIVb0XKpv_9ssservice.exit.i [
    i8 0, label %bb.u
    i8 3, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.val, i64 21056
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op7message7MessageECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(152) %i.ch) #53, !noalias !105763
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cacheNtBG_14DnsClientCache13lookup_remote0ECsgZAIVb0XKpv_9ssservice.exit.i

bb.v:                                             ; preds = %bb.t
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.val, i64 240
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cacheNtBG_14DnsClientCache10lookup_dns0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 16 %i.ci) #53, !noalias !105763
  call void @llvm.experimental.noalias.scope.decl(metadata !105776)
  %i.cj = load i32, ptr %i.cc, align 8, !range !259, !alias.scope !105776, !noalias !105764, !noundef !178
  switch i32 %i.cj, label %default.unreachable [
    i32 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cacheNtBG_14DnsClientCache13lookup_remote0ECsgZAIVb0XKpv_9ssservice.exit.i
    i32 1, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cacheNtBG_14DnsClientCache13lookup_remote0ECsgZAIVb0XKpv_9ssservice.exit.i
    i32 2, label %bb.y
    i32 3, label %bb.w
  ]

default.unreachable:                              ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.val, i64 200
  %i.cl = load i16, ptr %i.ck, align 8, !range !179, !alias.scope !105777, !noalias !105764, !noundef !178
  %i.cm = icmp eq i16 %i.cl, 0
  br i1 %i.cm, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cacheNtBG_14DnsClientCache13lookup_remote0ECsgZAIVb0XKpv_9ssservice.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.val, i64 208
  %.val.i.i.i.i.i.i = load i64, ptr %i.cn, align 8, !alias.scope !105778, !noalias !105764 ; 2 uses
  %i.co = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.co, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cacheNtBG_14DnsClientCache13lookup_remote0ECsgZAIVb0XKpv_9ssservice.exit.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit.sink.split.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit.sink.split.i.i.i: ; preds = %bb.z, %bb.x
  %.val.i.i.i1.sink.i.i.i = phi i64 [ %.val.i.i.i1.i.i.i, %bb.z ], [ %.val.i.i.i.i.i.i, %bb.x ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.val, i64 216
  %.val1.i.i.i2.i.i.i = load ptr, ptr %i.cp, align 8, !alias.scope !105776, !noalias !105764, !nonnull !178, !noundef !178
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i2.i.i.i, i64 noundef %.val.i.i.i1.sink.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !105779
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cacheNtBG_14DnsClientCache13lookup_remote0ECsgZAIVb0XKpv_9ssservice.exit.i

bb.y:                                             ; preds = %bb.v
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.val, i64 200
  %i.cr = load i16, ptr %i.cq, align 8, !range !179, !alias.scope !105780, !noalias !105764, !noundef !178
  %i.cs = icmp eq i16 %i.cr, 0
  br i1 %i.cs, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cacheNtBG_14DnsClientCache13lookup_remote0ECsgZAIVb0XKpv_9ssservice.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.val, i64 208
  %.val.i.i.i1.i.i.i = load i64, ptr %i.ct, align 8, !alias.scope !105781, !noalias !105764 ; 2 uses
  %i.cu = icmp eq i64 %.val.i.i.i1.i.i.i, 0
  br i1 %i.cu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cacheNtBG_14DnsClientCache13lookup_remote0ECsgZAIVb0XKpv_9ssservice.exit.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit.sink.split.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cacheNtBG_14DnsClientCache13lookup_remote0ECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.z, %bb.y, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit.sink.split.i.i.i, %bb.x, %bb.w, %bb.v, %bb.v, %bb.u, %bb.t
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.val, i64 176 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !105782)
  call void @llvm.experimental.noalias.scope.decl(metadata !105783)
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !105784, !noalias !105764, !nonnull !178, !noundef !178
  %i.cx = atomicrmw sub ptr %i.cw, i64 1 release, align 8, !noalias !105785
  %i.cy = icmp eq i64 %i.cx, 1
  br i1 %i.cy, label %bb.aa, label %_RNCNCNvMs4_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns6serverNtB9_9DnsClient19lookup_remote_inner0s0_0CsgZAIVb0XKpv_9ssservice.exit

bb.aa:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cacheNtBG_14DnsClientCache13lookup_remote0ECsgZAIVb0XKpv_9ssservice.exit.i
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing11server_data11ServerIdentE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cv) #60, !noalias !105763
  br label %_RNCNCNvMs4_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns6serverNtB9_9DnsClient19lookup_remote_inner0s0_0CsgZAIVb0XKpv_9ssservice.exit

_RNCNCNvMs4_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns6serverNtB9_9DnsClient19lookup_remote_inner0s0_0CsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.s, %bb.q, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cacheNtBG_14DnsClientCache13lookup_remote0ECsgZAIVb0XKpv_9ssservice.exit.i, %bb.aa
  %.sink.i = phi i8 [ 3, %bb.q ], [ 1, %bb.aa ], [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cacheNtBG_14DnsClientCache13lookup_remote0ECsgZAIVb0XKpv_9ssservice.exit.i ], [ 4, %bb.s ]
  store i8 %.sink.i, ptr %i.c, align 8, !noalias !105764
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtCsf3Ta7LF998c_4core6future6futureINtNtB8_3pin3PinQNCNCNvMs4_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns6serverNtB16_9DnsClient19lookup_remote_inner0s1_0ENtB4_6Future4pollCsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(152) %0, ptr %.0.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105807)
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 21200 ; 2 uses
  %i.b = load i8, ptr %i.a, align 16, !range !233, !noalias !105808, !noundef !178
  switch i8 %i.b, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.e
    i8 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 21032 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !105808, !nonnull !178, !align !186, !noundef !178
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 21024
  %i.g = tail call noundef nonnull ptr @_RNvMs4_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB5_12PingBalancer15best_udp_server(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e) #53, !noalias !105808 ; 2 uses
  store ptr %i.g, ptr %i.f, align 16, !noalias !105808
  %i.h = load ptr, ptr %i.c, align 8, !noalias !105808, !nonnull !178, !align !186, !noundef !178 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val1.i = load ptr, ptr %i.j, align 8, !noalias !105808, !nonnull !178, !noundef !178
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 880
end_hunk_1
begin_hunk_2_@_RNvXsx_NtNtCsf3Ta7LF998c_4core3fmt3numlNtB7_8UpperHex3fmt
; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsv_NtNtCsf3Ta7LF998c_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCsf3Ta7LF998c_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXso_NtNtCsf3Ta7LF998c_4core3fmt3numtNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsm_NtNtCsf3Ta7LF998c_4core3fmt3numtNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCsf3Ta7LF998c_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nounwind nonlazybind uwtable
declare noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task5error9JoinErrorECs8UFHSMUhzWe_19shadowsocks_service(i8 noundef range(i8 0, 44), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #8

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, -1) i32 @_RNvXsb_NtCsbrWK7tW1wl7_7socket23sysNtNtB7_6socket6SocketNtNtNtNtCs5Xr050g3D4S_3std2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, -1) i32 @_RNvXsg_NtCsbrWK7tW1wl7_7socket23sysNtNtB7_6socket6SocketNtNtNtNtCs5Xr050g3D4S_3std2os2fd3raw9FromRawFd11from_raw_fd(i32 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, -1) i32 @_RNvXs2_NtCs4KmrmuXgih0_9tokio_tfo6streamNtB5_9TfoStreamNtNtNtNtCs5Xr050g3D4S_3std2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, -1) i32 @_RNvXs1_NtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6socketNtB5_9TcpSocketNtNtNtNtCs5Xr050g3D4S_3std2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, -1) i32 @_RNvXs_NtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream3sysNtB6_9TcpStreamNtNtNtNtCs5Xr050g3D4S_3std2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCs2dlyTE5y14r_2h25codec11framed_read12decode_frame(ptr dead_on_unwind noalias nofree noundef writable sret([296 x i8]) align 8 captures(none) dereferenceable(296), ptr noalias nofree noundef align 8 dereferenceable(104), i64 noundef, i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(336), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCs2dlyTE5y14r_2h25codec11framed_read7map_err(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXs_NtNtCs8UFHSMUhzWe_19shadowsocks_service6server8tcprelayNtB4_12RemoteStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef align 8 dereferenceable(1160), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXs0_NtNtCs8UFHSMUhzWe_19shadowsocks_service6server8tcprelayNtB5_12RemoteStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_flush(ptr noalias nofree noundef align 8 dereferenceable(1160), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXs0_NtNtCs8UFHSMUhzWe_19shadowsocks_service6server8tcprelayNtB5_12RemoteStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite13poll_shutdown(ptr noalias nofree noundef align 8 dereferenceable(1160), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCsczhfDQ1qNkX_5tokio4time7timeout10poll_delay(i1 noundef zeroext, ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtB2_9UdpSocket12poll_send_to(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtB2_9UdpSocket14poll_recv_from(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvXs1_NtNtCsiuBVzwTdaUB_4zstd6stream3rawNtB5_7DecoderNtB5_9Operation6reinit(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB2_5RulesNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(176), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs_NtNtCs7ewmRfXve8r_4http6header4nameNtB4_10HeaderName10from_bytes(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs7_NtCs2dlyTE5y14r_2h26clientNtB5_14ResponseFutureNtNtNtCsf3Ta7LF998c_4core6future6future6Future4poll(ptr dead_on_unwind noalias nofree noundef writable sret([128 x i8]) align 8 captures(none) dereferenceable(128), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h24pingNtB4_8Recorder15record_non_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, i64 } @_RNvNtCsaI3lGUjttVO_5hyper7headers24content_length_parse_all(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, ptr } @_RNvNtCsaI3lGUjttVO_5hyper7upgrade7pending() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXs2_NtNtNtCsaI3lGUjttVO_5hyper5proto2h27upgradeNtB5_10H2UpgradedNtNtNtBb_2rt2io4Read9poll_read(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXs3_NtNtNtCsaI3lGUjttVO_5hyper5proto2h27upgradeNtB5_10H2UpgradedNtNtNtBb_2rt2io5Write10poll_write(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXs3_NtNtNtCsaI3lGUjttVO_5hyper5proto2h27upgradeNtB5_10H2UpgradedNtNtNtBb_2rt2io5Write10poll_flush(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXs3_NtNtNtCsaI3lGUjttVO_5hyper5proto2h27upgradeNtB5_10H2UpgradedNtNtNtBb_2rt2io5Write13poll_shutdown(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMNtCsaI3lGUjttVO_5hyper5errorNtB2_5Error6new_h2(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h24pingNtB4_8Recorder10for_stream(ptr noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtNtCsaI3lGUjttVO_5hyper4body8incomingNtB2_8Incoming2h2(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(16), i64 noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef align 8 ptr @_RNvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h24pingNtB4_8Recorder20ensure_not_timed_out(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold nounwind nonlazybind uwtable
declare void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #3

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsaI3lGUjttVO_5hyper5proto2h224strip_connection_headers(ptr noalias nofree noundef align 8 dereferenceable(96), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtCsaI3lGUjttVO_5hyper7headers29set_content_length_if_missing(ptr noalias nofree noundef align 8 dereferenceable(96), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMNtCsaI3lGUjttVO_5hyper5errorNtB2_5Error24new_user_invalid_connect() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtCs7ewmRfXve8r_4http6methodNtB2_6Method10from_bytes(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtNtCsczhfDQ1qNkX_5tokio4sync15batch_semaphoreNtB2_9Semaphore7release(ptr noundef nonnull align 8, i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs_NtNtNtCsczhfDQ1qNkX_5tokio7runtime4task3rawNtB4_7RawTask7dealloc(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtCsgNLA4kpd9RZ_7smoltcp4wire3tcpNtB4_9SeqNumberNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs9_NtNtCsgNLA4kpd9RZ_7smoltcp4wire3tcpNtB5_9TcpOption5parse(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs2_NtCs1kwRxRulhfk_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs1_NtNtCscVsx2cUGvkQ_12futures_util4lock5mutexNtB5_6Waiter8register(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCsaI3lGUjttVO_5hyper5errorNtB4_5ErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtNtNtCsaI3lGUjttVO_5hyper5proto2h16encodeNtB5_6NotEofNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXsf_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtBd_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtB12_6marker4SendNtB1z_4SyncEL_EINtNtB12_7convert4FromNtNtBf_6string6StringE4fromNtB5_11StringErrorNtNtB12_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NvXsf_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtBc_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @"\01aws_lc_0_44_0_EVP_AEAD_CTX_free"(ptr noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs1_NtCsi1FNhPBS7PW_11hickory_net5errorNtB5_8NetErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtCs2dlyTE5y14r_2h25error5ErrorE4from(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull ptr @_RNvXNtNtNtCslxdWNweD0x2_11shadowsocks5relay8udprelay12proxy_socketNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorINtNtB18_7convert4FromNtB2_16ProxySocketErrorE4from(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter3pad(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcINtNtCsf3Ta7LF998c_4core4cell10UnsafeCellINtNtCsfGqwKJg1jQb_9rand_core5block8BlockRngNtNtNtCs1jR6m42rQJO_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXsb_NtCs5Xr050g3D4S_3std2fsNtB5_4FileNtNtNtCsf3Ta7LF998c_4core2io5write5Write5write(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsaI3lGUjttVO_5hyper7headers21connection_keep_alive(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nounwind nonlazybind
define noundef i32 @main(i32 %0, ptr %1) unnamed_addr #57 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = sext i32 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_RNvCsgZAIVb0XKpv_9ssservice4main, ptr %i.a, align 8
  %i.c = call noundef i64 @_RNvNtCs5Xr050g3D4S_3std2rt19lang_start_internal(ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @350, i64 noundef %i.b, ptr noundef %1, i8 noundef 0) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = trunc i64 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #58

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #42

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #42

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #42

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #59

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshl.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #42

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.fshl.v8i32(<8 x i32>, <8 x i32>, <8 x i32>) #42

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #42

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #42

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #42

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #50

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #42

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+aes,+sse,+sse2" }
attributes #2 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #8 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+sse,+sse2,+sse3,+sse4.1,+ssse3" }
attributes #13 = { alwaysinline nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+aes,+sse,+sse2" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { norecurse nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #34 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #35 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #36 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #37 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #38 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #39 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #40 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #41 = { cold minsize noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #42 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #43 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #44 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #45 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #46 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #47 = { cold noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #48 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #49 = { cold noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #50 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #51 = { nofree nosync nounwind nonlazybind memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #52 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #53 = { nounwind }
attributes #54 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #55 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #56 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #57 = { nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #58 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #59 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #60 = { noinline nounwind }
attributes #61 = { inlinehint nounwind }
attributes #62 = { noreturn nounwind }
attributes #63 = { noinline noreturn nounwind }

!llvm.module.flags = !{!173, !174, !175, !176}
!llvm.ident = !{!177}

!0 = distinct !{null, null}
!1 = distinct !{!1, !"_RINvNtNtNtCsfRIMZ2Mh1DJ_3aes8backends7x86_aes6encdec7decryptKjb_ECsgZAIVb0XKpv_9ssservice"}
!2 = distinct !{!2, !1, !"_RINvNtNtNtCsfRIMZ2Mh1DJ_3aes8backends7x86_aes6encdec7decryptKjb_ECsgZAIVb0XKpv_9ssservice: argument 0"}
!3 = distinct !{!3, !"_RINvNtNtNtCsfRIMZ2Mh1DJ_3aes8backends7x86_aes6encdec7decryptKjf_ECsgZAIVb0XKpv_9ssservice"}
!4 = distinct !{!4, !3, !"_RINvNtNtNtCsfRIMZ2Mh1DJ_3aes8backends7x86_aes6encdec7decryptKjf_ECsgZAIVb0XKpv_9ssservice: argument 0"}
!5 = distinct !{null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!6 = distinct !{null, null, null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!7 = distinct !{null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!8 = distinct !{null, null, null, null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!9 = distinct !{null, null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!10 = distinct !{null, null, null, null, null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!11 = distinct !{!11, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio3net4unix8listenerNtB3_12UnixListener4bindRNtNtCs5Xr050g3D4S_3std4path7PathBufECsgZAIVb0XKpv_9ssservice"}
!12 = distinct !{!12, !11, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio3net4unix8listenerNtB3_12UnixListener4bindRNtNtCs5Xr050g3D4S_3std4path7PathBufECsgZAIVb0XKpv_9ssservice: argument 1"}
!13 = distinct !{!13, !11, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio3net4unix8listenerNtB3_12UnixListener4bindRNtNtCs5Xr050g3D4S_3std4path7PathBufECsgZAIVb0XKpv_9ssservice: argument 0"}
!14 = distinct !{ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!15 = distinct !{null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice, null, null, null, null}
!16 = distinct !{null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice, null, null, null, null}
!17 = distinct !{ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice, null, null, null, null}
!18 = distinct !{null, null, null}
!19 = distinct !{null, null, null}
!20 = distinct !{null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!21 = distinct !{null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamECsgZAIVb0XKpv_9ssservice, null, null, null, null, null, null, null}
!22 = distinct !{null, null, null}
!23 = distinct !{null, null}
!24 = distinct !{null, null, null}
!25 = distinct !{null, null}
!26 = distinct !{null, null, null, null, null}
!27 = distinct !{null, null, null, null, null}
!28 = distinct !{null, null}
!29 = distinct !{null, null, null, null, null, null, null, null, null, null, null}
!30 = distinct !{!30, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice"}
!31 = distinct !{!31, !30, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice: argument 0"}
!32 = distinct !{null, null, null, null, null, null, null, null, null, null}
!33 = distinct !{null, null, null, null, null, null, null, null, null, null, null}
!34 = distinct !{null, null, null, null, null, null}
!35 = distinct !{ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamECsgZAIVb0XKpv_9ssservice, null, null, null, null, null, null, null}
!36 = distinct !{null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamECsgZAIVb0XKpv_9ssservice, null, null, null, null, null, null, null}
!37 = distinct !{!37, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!38 = distinct !{!38, !37, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!39 = distinct !{null, null, null, null, null, null}
!40 = distinct !{!40, !"_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtB12_3ops4drop4Drop4dropCsgZAIVb0XKpv_9ssservice"}
!41 = distinct !{!41, !40, !"_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtB12_3ops4drop4Drop4dropCsgZAIVb0XKpv_9ssservice: argument 0"}
!42 = distinct !{null, null, null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!43 = distinct !{null, null, null, null}
!44 = distinct !{null, null, null, null, null, null, null, null, null, null}
!45 = distinct !{null, null, null, null, null, null, null, null, null, null}
!46 = distinct !{null, null}
!47 = distinct !{null, null, null, null, null, null, null, null, null, null, null}
!48 = distinct !{null, null, null, null, null, null, null, null, null, null, null}
!49 = distinct !{null, null, null, null, null, null, null, null, null, null}
!50 = distinct !{!50, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice"}
!51 = distinct !{!51, !50, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice: argument 0"}
!52 = distinct !{!52, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice"}
!53 = distinct !{!53, !52, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice: argument 0"}
!54 = distinct !{!54, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice"}
!55 = distinct !{!55, !54, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice: argument 0"}
!56 = distinct !{!56, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice"}
!57 = distinct !{!57, !56, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice: argument 0"}
!58 = distinct !{!58, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice"}
!59 = distinct !{!59, !58, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice: argument 0"}
!60 = distinct !{null, null, null, null, null, null, null, null, null, null}
!61 = distinct !{null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamECsgZAIVb0XKpv_9ssservice, null, null, null, null, null, null, null}
!62 = distinct !{null, null, null, null, null}
!63 = distinct !{!63, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsgZAIVb0XKpv_9ssservice"}
!64 = distinct !{!64, !63, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsgZAIVb0XKpv_9ssservice: argument 0"}
!65 = distinct !{null, null, null, null, null, null, null}
!66 = distinct !{null, null, null, null, null, null, null}
!67 = distinct !{null, null, null, null, null, null, null}
!68 = distinct !{null, null}
!69 = distinct !{null, null, null, null}
!70 = distinct !{null, null, null, null, null}
!71 = distinct !{null, null, null, null, null}
!72 = distinct !{null, null}
!73 = distinct !{null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!74 = distinct !{ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs7ewmRfXve8r_4http3uri3UriECsgZAIVb0XKpv_9ssservice, null, null, null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!75 = distinct !{ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs7ewmRfXve8r_4http3uri3UriECsgZAIVb0XKpv_9ssservice, null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!76 = distinct !{ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs7ewmRfXve8r_4http3uri3UriECsgZAIVb0XKpv_9ssservice, null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!77 = distinct !{!77, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice"}
!78 = distinct !{!78, !77, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice: argument 0"}
!79 = distinct !{null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice, null, null, null, null}
!80 = distinct !{null, null, null}
!81 = distinct !{null, null, null, null, null, null, null, null, null, null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!82 = distinct !{null}
!83 = distinct !{null, null, null, null, null, null, null, null}
!84 = distinct !{null, null, null, null, null, null, null, null}
!85 = distinct !{null, null, null, null, null, null, null, null}
!86 = distinct !{null, null, null, null, null, null, null, null}
!87 = distinct !{null, null, null, null, null, null, null, null}
!88 = distinct !{null, null, null, null, null, null, null, null}
!89 = distinct !{null, null, null, null, null, null, null, null}
!90 = distinct !{null, null, null, null, null, null, null, null}
!91 = distinct !{null, null, null, null, null, null, null, null}
!92 = distinct !{null, null, null, null, null, null, null, null}
!93 = distinct !{null, null, null, null, null, null, null, null}
!94 = distinct !{null, null, null, null, null, null, null, null}
!95 = distinct !{null, null, null, null, null, null, null, null}
!96 = distinct !{null, null, null, null, null, null, null, null}
!97 = distinct !{null, null, null, null, null, null, null, null}
!98 = distinct !{null, null, null, null, null, null, null, null}
!99 = distinct !{null, null, null, null, null, null, null, null}
!100 = distinct !{null, null, null, null, null, null, null, null}
!101 = distinct !{null, null, null, null, null, null, null, null}
!102 = distinct !{null, null, null, null, null, null, null, null}
end_hunk_2
