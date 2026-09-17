Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssmanager.ssmanager.75f5cfe302cf09d8-cgu.0?download=true
inline.NumInlined: 18859
inline.NumDeleted: 9054
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_RNvMs2_NtCs8AjStw0eGtC_16hickory_resolver8resolverINtB5_15ResolverBuilderNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE5buildCsa7TLgTh0CeG_9ssmanager:bb.a
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

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4name4NameEECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.u, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCscDkIWVIZClo_7tinyvec7tinyvec7TinyVecAhj20_EECsa7TLgTh0CeG_9ssmanager.exit.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4name4NameEECsa7TLgTh0CeG_9ssmanager.exit, %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.667)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.875)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  ret void

bb.y:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) %i.f, ptr noundef nonnull align 8 dereferenceable(136) %i.j, i64 136, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !36954)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.698.0.copyload) ]
  %i.cc = icmp ult i64 %.sroa.7101.0.copyload, 192153584101141163
  call void @llvm.assume(i1 %i.cc)
  %.idx.i = mul nuw nsw i64 %.sroa.7101.0.copyload, 48
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.698.0.copyload, i64 %.idx.i ; 3 uses
  %.not11.i.i.i.i.i.i = icmp eq i64 %.sroa.7101.0.copyload, 0
  br i1 %.not11.i.i.i.i.i.i, label %_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec16in_place_collectINtB6_3VecINtNtB8_4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtB1k_6config16NameServerConfigENCINvMNtB1k_16name_server_poolINtB6n_14NameServerPoolB2f_E11from_configIBP_B5J_EE0EE9from_iterCsa7TLgTh0CeG_9ssmanager.exit.i, label %.lr.ph.i.i.i.i.i.i

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

bb.z:                                             ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldNtNtCs8AjStw0eGtC_16hickory_resolver6config16NameServerConfigINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtB13_11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEINtNtNtB23_3vec13in_place_drop11InPlaceDropB1Y_EINtNtBa_6result6ResultB4D_zENCINvMNtB13_16name_server_poolINtB5X_14NameServerPoolB34_E11from_configINtB4I_3VecBZ_EE0NCINvNtB4I_16in_place_collect24write_in_place_with_dropB1Y_E0E0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.sroa.4.012.i.i.i.i.i.i = phi ptr [ %.sroa.698.0.copyload, %.lr.ph.i.i.i.i.i.i ], [ %i.fp, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldNtNtCs8AjStw0eGtC_16hickory_resolver6config16NameServerConfigINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtB13_11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEINtNtNtB23_3vec13in_place_drop11InPlaceDropB1Y_EINtNtBa_6result6ResultB4D_zENCINvMNtB13_16name_server_poolINtB5X_14NameServerPoolB34_E11from_configINtB4I_3VecBZ_EE0NCINvNtB4I_16in_place_collect24write_in_place_with_dropB1Y_E0E0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i ] ; 2 uses
  %i.cr = phi ptr [ %.sroa.698.0.copyload, %.lr.ph.i.i.i.i.i.i ], [ %i.cs, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldNtNtCs8AjStw0eGtC_16hickory_resolver6config16NameServerConfigINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtB13_11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEINtNtNtB23_3vec13in_place_drop11InPlaceDropB1Y_EINtNtBa_6result6ResultB4D_zENCINvMNtB13_16name_server_poolINtB5X_14NameServerPoolB34_E11from_configINtB4I_3VecBZ_EE0NCINvNtB4I_16in_place_collect24write_in_place_with_dropB1Y_E0E0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.cr, i64 48, i1 false), !noalias !36955
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !36956
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.53.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !36957)
  %i.ct = load ptr, ptr %i.cf, align 16, !alias.scope !36958, !noalias !36959, !nonnull !80, !noundef !80 ; 2 uses
  %i.cu = atomicrmw add ptr %i.ct, i64 1 monotonic, align 8, !noalias !36960
  %i.cv = icmp slt i64 %i.cu, 0
  br i1 %i.cv, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cw = load i32, ptr %i.cg, align 16, !range !152, !alias.scope !36961, !noalias !36962, !noundef !80 ; 2 uses
  %i.cx = load i32, ptr %i.ch, align 4, !alias.scope !36961, !noalias !36962
  %i.cy = load i16, ptr %i.ci, align 16, !range !113, !alias.scope !36961, !noalias !36962, !noundef !80 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.cy, 2
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.53.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 2 dereferenceable(30) %.sroa.417.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, i64 30, i1 false), !noalias !36963
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cz = load i64, ptr %i.cj, align 8, !range !115, !alias.scope !36961, !noalias !36962, !noundef !80
  %.not18.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cz, -1
  br i1 %.not18.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolverNtB5_24ShadowDnsRuntimeProviderNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cj) #46, !noalias !36963
  %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !36964
  br label %_RNvXs1_NtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolverNtB5_24ShadowDnsRuntimeProviderNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.z
  call void @llvm.trap()
  unreachable

_RNvXs1_NtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolverNtB5_24ShadowDnsRuntimeProviderNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.sroa.05.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i, %bb.ad ], [ -1, %bb.ac ]
  %i.da = load <4 x i32>, ptr %i.ck, align 8, !alias.scope !36961, !noalias !36962
  %i.db = load i8, ptr %i.cl, align 8, !range !93, !alias.scope !36961, !noalias !36962, !noundef !80
  %i.dc = load i8, ptr %i.cm, align 1, !range !93, !alias.scope !36961, !noalias !36962, !noundef !80
  %i.dd = load i64, ptr %i.cn, align 8, !alias.scope !36961, !noalias !36962
  %i.de = load i32, ptr %i.co, align 16, !range !103, !alias.scope !36961, !noalias !36962, !noundef !80
  %i.df = load i8, ptr %i.cp, align 2, !range !93, !alias.scope !36961, !noalias !36962, !noundef !80
  %i.dg = load <2 x i64>, ptr %i.f, align 16, !alias.scope !36961, !noalias !36962
  %i.dh = load i8, ptr %i.cq, align 16, !range !93, !alias.scope !36961, !noalias !36962, !noundef !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !36965
  %i.di = call noundef nonnull ptr @_RNvNtNtCs1jR6m42rQJO_4rand4rngs6thread3rng() #46, !noalias !36966 ; 12 uses
  store ptr %i.di, ptr %i.b, align 8, !noalias !36965
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 9 uses
  %i.dk = load i32, ptr %i.dj, align 4, !noalias !36967, !noundef !80 ; 4 uses
  %i.dl = icmp ult i32 %i.dk, 63
  br i1 %i.dl, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %_RNvXs1_NtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolverNtB5_24ShadowDnsRuntimeProviderNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 268
  %i.dn = load i32, ptr %i.dm, align 4, !alias.scope !36968, !noalias !36969, !noundef !80
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 272 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 320
  %i.dq = load i64, ptr %i.dp, align 4, !alias.scope !36970, !noalias !36971
  %i.dr = icmp ugt i64 %i.dq, 1023
  br i1 %i.dr, label %bb.ag, label %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !92

bb.ag:                                            ; preds = %bb.af
  call void @_RNvMs_NtNtCs1jR6m42rQJO_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.do) #53, !noalias !36971
  br label %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ag, %bb.af
  call fastcc void @_RNvXs_NtCs3csC7NK4ZxG_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generateCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.do, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.dj) #46, !noalias !36969
  %i.ds = load i32, ptr %i.dj, align 4, !alias.scope !36968, !noalias !36969, !noundef !80 ; 2 uses
  %.not.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.dk, 63
  br i1 %.not.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsa7TLgTh0CeG_9ssmanager.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.di, i64 20
  %i.du = load i32, ptr %i.dt, align 4, !alias.scope !36968, !noalias !36969, !noundef !80
  br label %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsa7TLgTh0CeG_9ssmanager.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %_RNvXs1_NtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolverNtB5_24ShadowDnsRuntimeProviderNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i
  %i.dv = zext nneg i32 %i.dk to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dv ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !alias.scope !36968, !noalias !36969, !noundef !80
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !alias.scope !36968, !noalias !36969, !noundef !80
  %i.ea = add nuw nsw i32 %i.dk, 2
  br label %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsa7TLgTh0CeG_9ssmanager.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsa7TLgTh0CeG_9ssmanager.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ai, %bb.ah, %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.018.i.i.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ea, %bb.ai ], [ 1, %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 2, %bb.ah ] ; 5 uses
  %.sroa.02.017.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.dx, %bb.ai ], [ %i.dn, %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ds, %bb.ah ]
  %.sroa.03.016.i.i.i.i13.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.dz, %bb.ai ], [ %i.ds, %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.du, %bb.ah ]
  store i32 %.sroa.0.018.i.i.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.dj, align 4, !alias.scope !36968, !noalias !36969
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
  br i1 %i.ek, label %bb.aj, label %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCsf3Ta7LF998c_4core3ops5range5RangeyEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i

bb.aj:                                            ; preds = %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsa7TLgTh0CeG_9ssmanager.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.el = icmp samesign ult i32 %.sroa.0.018.i.i.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.i, 63
  br i1 %i.el, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.em = getelementptr inbounds nuw i8, ptr %i.di, i64 268
  %i.en = load i32, ptr %i.em, align 4, !alias.scope !36972, !noalias !36973, !noundef !80
  %i.eo = getelementptr inbounds nuw i8, ptr %i.di, i64 272 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.di, i64 320
  %i.eq = load i64, ptr %i.ep, align 4, !alias.scope !36974, !noalias !36975
  %i.er = icmp ugt i64 %i.eq, 1023
  br i1 %i.er, label %bb.al, label %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !92

bb.al:                                            ; preds = %bb.ak
  call void @_RNvMs_NtNtCs1jR6m42rQJO_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.eo) #53, !noalias !36975
  br label %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.al, %bb.ak
  call fastcc void @_RNvXs_NtCs3csC7NK4ZxG_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generateCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.eo, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.dj) #46, !noalias !36973
  %i.es = load i32, ptr %i.dj, align 4, !alias.scope !36972, !noalias !36973, !noundef !80 ; 2 uses
  %.not.i.i.i.i16.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.018.i.i.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.i, 63
  br i1 %.not.i.i.i.i16.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsa7TLgTh0CeG_9ssmanager.exit20.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.di, i64 20
  %i.eu = load i32, ptr %i.et, align 4, !alias.scope !36972, !noalias !36973, !noundef !80
  br label %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsa7TLgTh0CeG_9ssmanager.exit20.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.aj
  %i.ev = zext nneg i32 %.sroa.0.018.i.i.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.ev ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !alias.scope !36972, !noalias !36973, !noundef !80
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !alias.scope !36972, !noalias !36973, !noundef !80
  %i.fa = add nuw nsw i32 %.sroa.0.018.i.i.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  br label %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsa7TLgTh0CeG_9ssmanager.exit20.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsa7TLgTh0CeG_9ssmanager.exit20.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.an, %bb.am, %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.018.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.fa, %bb.an ], [ 1, %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 2, %bb.am ]
  %.sroa.02.017.i.i.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ex, %bb.an ], [ %i.en, %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.es, %bb.am ]
  %.sroa.03.016.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ez, %bb.an ], [ %i.es, %_RNvXNtNtCs1jR6m42rQJO_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsfGqwKJg1jQb_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.eu, %bb.am ]
  store i32 %.sroa.0.018.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.dj, align 4, !alias.scope !36972, !noalias !36973
  %i.fb = zext i32 %.sroa.03.016.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.fc = shl nuw i64 %i.fb, 32
  %i.fd = zext i32 %.sroa.02.017.i.i.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.fe = or disjoint i64 %i.fc, %i.fd
  %2 = call i64 @llvm.umulh.i64(i64 %i.fe, i64 31)
  %i.ff = xor i64 %i.ej, -1
  %.not6.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %2, %i.ff
  %i.fg = zext i1 %.not6.i.i.i.i.i.i.i.i.i.i.i.i.i to i32
  %i.fh = add nuw nsw i32 %i.fg, %i.ei
  br label %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCsf3Ta7LF998c_4core3ops5range5RangeyEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i

_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCsf3Ta7LF998c_4core3ops5range5RangeyEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsa7TLgTh0CeG_9ssmanager.exit20.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsa7TLgTh0CeG_9ssmanager.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.fh, %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsa7TLgTh0CeG_9ssmanager.exit20.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ei, %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsa7TLgTh0CeG_9ssmanager.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.fi = load i64, ptr %i.di, align 8, !noalias !36976, !noundef !80
  %i.fj = add i64 %i.fi, -1                       ; 2 uses
  store i64 %i.fj, ptr %i.di, align 8, !noalias !36976
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %bb.ao, label %_RINvMNtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB3_10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE3newATNtNtCsi1FNhPBS7PW_11hickory_net4xfer8ProtocolINtNtB2M_12dns_exchange11DnsExchangeB16_EEj0_ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i

bb.ao:                                            ; preds = %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCsf3Ta7LF998c_4core3ops5range5RangeyEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i
  call void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcINtNtCsf3Ta7LF998c_4core4cell10UnsafeCellINtNtCsfGqwKJg1jQb_9rand_core5block8BlockRngNtNtNtCs1jR6m42rQJO_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #53, !noalias !36966
  br label %_RINvMNtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB3_10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE3newATNtNtCsi1FNhPBS7PW_11hickory_net4xfer8ProtocolINtNtB2M_12dns_exchange11DnsExchangeB16_EEj0_ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i

_RINvMNtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB3_10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE3newATNtNtCsi1FNhPBS7PW_11hickory_net4xfer8ProtocolINtNtB2M_12dns_exchange11DnsExchangeB16_EEj0_ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ao, %_RINvYNtNtNtCs1jR6m42rQJO_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCsf3Ta7LF998c_4core3ops5range5RangeyEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !36965
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !36977
  %i.fl = call noundef align 8 dereferenceable_or_null(312) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 312, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !36977 ; 29 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.ap, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldNtNtCs8AjStw0eGtC_16hickory_resolver6config16NameServerConfigINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtB13_11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEINtNtNtB23_3vec13in_place_drop11InPlaceDropB1Y_EINtNtBa_6result6ResultB4D_zENCINvMNtB13_16name_server_poolINtB5X_14NameServerPoolB34_E11from_configINtB4I_3VecBZ_EE0NCINvNtB4I_16in_place_collect24write_in_place_with_dropB1Y_E0E0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i, !prof !83

bb.ap:                                            ; preds = %_RINvMNtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB3_10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE3newATNtNtCsi1FNhPBS7PW_11hickory_net4xfer8ProtocolINtNtB2M_12dns_exchange11DnsExchangeB16_EEj0_ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 312) #55, !noalias !36977
  unreachable

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldNtNtCs8AjStw0eGtC_16hickory_resolver6config16NameServerConfigINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtB13_11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEINtNtNtB23_3vec13in_place_drop11InPlaceDropB1Y_EINtNtBa_6result6ResultB4D_zENCINvMNtB13_16name_server_poolINtB5X_14NameServerPoolB34_E11from_configINtB4I_3VecBZ_EE0NCINvNtB4I_16in_place_collect24write_in_place_with_dropB1Y_E0E0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB3_10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE3newATNtNtCsi1FNhPBS7PW_11hickory_net4xfer8ProtocolINtNtB2M_12dns_exchange11DnsExchangeB16_EEj0_ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i
  %i.fn = add nuw nsw i32 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.fo = trunc nuw i32 %i.cw to i1
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i = select i1 %i.fo, i32 %i.cx, i32 undef
  store i64 1, ptr %i.fl, align 8, !noalias !36963
  %.sroa.418.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store i64 1, ptr %.sroa.418.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !36963
  %.sroa.519.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store <2 x i64> %i.dg, ptr %.sroa.519.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !36963
  %.sroa.721.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  store i8 %i.dh, ptr %.sroa.721.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !36963
  %.sroa.923.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 40
  store i64 %.sroa.05.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.923.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !36963
  %.sroa.1024.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1024.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i64 16, i1 false), !noalias !36963
  %.sroa.1125.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 64
  store i32 %i.cw, ptr %.sroa.1125.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !36963
  %.sroa.1226.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 68
  store i32 %.sroa.5.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.1226.0..sroa_idx.i.i.i.i.i.i.i.i, align 4, !noalias !36963
  %.sroa.1327.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 72
  store <4 x i32> %i.da, ptr %.sroa.1327.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !36963
  %.sroa.1731.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 88
  store i64 %i.dd, ptr %.sroa.1731.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !36963
  %.sroa.1832.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 96
  store i32 %i.de, ptr %.sroa.1832.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !36963
  %.sroa.2034.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 104
  store i8 %i.db, ptr %.sroa.2034.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !36963
  %.sroa.2135.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 105
  store i8 %i.dc, ptr %.sroa.2135.0..sroa_idx.i.i.i.i.i.i.i.i, align 1, !noalias !36963
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 106
  store i8 %i.df, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i, align 2, !noalias !36963
  %.sroa.24.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 112
  store i16 %i.cy, ptr %.sroa.24.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !36963
  %.sroa.25.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.25.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.53.i.i.i.i.i.i.i.i.i.i, i64 30, i1 false), !noalias !36963
  %.sroa.26.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 144
  store ptr %i.ct, ptr %.sroa.26.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !36963
  %.sroa.27.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.27.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.i.i.i.i.i.i, i64 48, i1 false), !noalias !36955
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 200
  store i32 0, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !36963
  %.sroa.29.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 204
  store i8 0, ptr %.sroa.29.0..sroa_idx.i.i.i.i.i.i.i.i, align 4, !noalias !36963
  %.sroa.31.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 208
  store i64 0, ptr %.sroa.31.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !36963
  %.sroa.32.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 216
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.32.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !36963
  %.sroa.33.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.33.0..sroa_idx.i.i.i.i.i.i.i.i, i8 0, i64 40, i1 false), !noalias !36963
  %.sroa.34.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 264
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.34.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !36963
  %.sroa.35.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.35.0..sroa_idx.i.i.i.i.i.i.i.i, i8 0, i64 16, i1 false), !noalias !36963
  %.sroa.37.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 296
  store i32 -1, ptr %.sroa.37.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !36963
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 304
  store i32 %i.fn, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !36963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !36956
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.53.i.i.i.i.i.i.i.i.i.i)
  store ptr %i.fl, ptr %.sroa.4.012.i.i.i.i.i.i, align 8, !noalias !36978
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cs, %i.cd
  br i1 %.not.i.i.i.i.i.i, label %_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec16in_place_collectINtB6_3VecINtNtB8_4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtB1k_6config16NameServerConfigENCINvMNtB1k_16name_server_poolINtB6n_14NameServerPoolB2f_E11from_configIBP_B5J_EE0EE9from_iterCsa7TLgTh0CeG_9ssmanager.exit.i, label %bb.z

_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec16in_place_collectINtB6_3VecINtNtB8_4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtB1k_6config16NameServerConfigENCINvMNtB1k_16name_server_poolINtB6n_14NameServerPoolB2f_E11from_configIBP_B5J_EE0EE9from_iterCsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldNtNtCs8AjStw0eGtC_16hickory_resolver6config16NameServerConfigINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtB13_11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEINtNtNtB23_3vec13in_place_drop11InPlaceDropB1Y_EINtNtBa_6result6ResultB4D_zENCINvMNtB13_16name_server_poolINtB5X_14NameServerPoolB34_E11from_configINtB4I_3VecBZ_EE0NCINvNtB4I_16in_place_collect24write_in_place_with_dropB1Y_E0E0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i, %bb.y
  %.val2.i.i.i.i = phi ptr [ %.sroa.698.0.copyload, %bb.y ], [ %i.cd, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldNtNtCs8AjStw0eGtC_16hickory_resolver6config16NameServerConfigINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtB13_11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEINtNtNtB23_3vec13in_place_drop11InPlaceDropB1Y_EINtNtBa_6result6ResultB4D_zENCINvMNtB13_16name_server_poolINtB5X_14NameServerPoolB34_E11from_configINtB4I_3VecBZ_EE0NCINvNtB4I_16in_place_collect24write_in_place_with_dropB1Y_E0E0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.4.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.698.0.copyload, %bb.y ], [ %i.fp, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldNtNtCs8AjStw0eGtC_16hickory_resolver6config16NameServerConfigINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtB13_11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEINtNtNtB23_3vec13in_place_drop11InPlaceDropB1Y_EINtNtBa_6result6ResultB4D_zENCINvMNtB13_16name_server_poolINtB5X_14NameServerPoolB34_E11from_configINtB4I_3VecBZ_EE0NCINvNtB4I_16in_place_collect24write_in_place_with_dropB1Y_E0E0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i ]
  %i.fq = ptrtoint ptr %i.cd to i64
  %i.fr = ptrtoint ptr %.val2.i.i.i.i to i64
  %i.fs = sub nuw i64 %i.fq, %i.fr
  %i.ft = udiv exact i64 %i.fs, 48
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCs8AjStw0eGtC_16hickory_resolver6config16NameServerConfigECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 %.val2.i.i.i.i, i64 noundef %i.ft) #46, !noalias !36979
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.017.sroa.4.i.i)
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !36980
  %i.fu = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !36980 ; 9 uses
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %bb.aq, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i, !prof !83

bb.aq:                                            ; preds = %_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec16in_place_collectINtB6_3VecINtNtB8_4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtB1k_6config16NameServerConfigENCINvMNtB1k_16name_server_poolINtB6n_14NameServerPoolB2f_E11from_configIBP_B5J_EE0EE9from_iterCsa7TLgTh0CeG_9ssmanager.exit.i
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #55, !noalias !36980
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i: ; preds = %_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec16in_place_collectINtB6_3VecINtNtB8_4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtB1k_6config16NameServerConfigENCINvMNtB1k_16name_server_poolINtB6n_14NameServerPoolB2f_E11from_configIBP_B5J_EE0EE9from_iterCsa7TLgTh0CeG_9ssmanager.exit.i
  %i.fw = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i.i.i.i to i64
  %i.fx = ptrtoint ptr %.sroa.698.0.copyload to i64
  %i.fy = sub nuw i64 %i.fw, %i.fx
  %i.fz = lshr exact i64 %i.fy, 3
  %i.ga = mul nuw i64 %.sroa.096.0.copyload, 6
  store i64 1, ptr %i.fu, align 8, !noalias !36981
  %.sroa.4.0..sroa_idx20.i.i = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx20.i.i, align 8, !noalias !36981
  %.sroa.5.0..sroa_idx21.i.i = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  store i64 %i.ga, ptr %.sroa.5.0..sroa_idx21.i.i, align 8, !noalias !36982
  %.sroa.4.0..sroa.5.0..sroa_idx21.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  store ptr %.sroa.698.0.copyload, ptr %.sroa.4.0..sroa.5.0..sroa_idx21.i.sroa_idx.i, align 8, !noalias !36982
  %.sroa.5.0..sroa.5.0..sroa_idx21.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  store i64 %i.fz, ptr %.sroa.5.0..sroa.5.0..sroa_idx21.i.sroa_idx.i, align 8, !noalias !36982
  %.sroa.6.0..sroa_idx22.i.i = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  store ptr %i.by, ptr %.sroa.6.0..sroa_idx22.i.i, align 8, !noalias !36981
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fu, i64 48
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !36981
  %i.gb = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 13 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 6 uses
  %i.gd = load i8, ptr %i.gc, align 8, !range !93, !noalias !36983, !noundef !80
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %._RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsa7TLgTh0CeG_9ssmanager.exit_crit_edge.i.i.i.i, label %_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, !prof !89

._RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsa7TLgTh0CeG_9ssmanager.exit_crit_edge.i.i.i.i: ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i
  %.pre.i.i.i.i = load i64, ptr %i.gb, align 8, !noalias !36984 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %.pre1.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !36984
  %i.gf = insertvalue { i64, i64 } poison, i64 %.pre.i.i.i.i, 0
  %i.gg = insertvalue { i64, i64 } %i.gf, i64 %.pre1.i.i.i.i, 1
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsa7TLgTh0CeG_9ssmanager.exit.i.i

_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i: ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i
  %i.gh = call { i64, i64 } @_RNvNtNtNtCs5Xr050g3D4S_3std3sys6random5linux19hashmap_random_keys() #46, !noalias !36985 ; 3 uses
  %i.gi = extractvalue { i64, i64 } %i.gh, 0
  %i.gj = extractvalue { i64, i64 } %i.gh, 1
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store i64 %i.gj, ptr %i.gk, align 8, !noalias !36986
  store i8 1, ptr %i.gc, align 8, !noalias !36986
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsa7TLgTh0CeG_9ssmanager.exit.i.i

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, %._RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsa7TLgTh0CeG_9ssmanager.exit_crit_edge.i.i.i.i
  %i.gl = phi i64 [ %.pre.i.i.i.i, %._RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsa7TLgTh0CeG_9ssmanager.exit_crit_edge.i.i.i.i ], [ %i.gi, %_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ]
  %.merged.i.i.i = phi { i64, i64 } [ %i.gg, %._RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsa7TLgTh0CeG_9ssmanager.exit_crit_edge.i.i.i.i ], [ %i.gh, %_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ] ; 2 uses
  %i.gm = add i64 %i.gl, 1
  store i64 %i.gm, ptr %i.gb, align 8, !noalias !36984
  %.sroa.017.sroa.4.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.017.sroa.4.i.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.017.sroa.4.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) @390, i64 32, i1 false), !noalias !36987
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !36988
  %i.gn = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !36988 ; 8 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %bb.ar, label %_RNvMNtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB2_14NameServerPoolNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE16from_nameserversCsa7TLgTh0CeG_9ssmanager.exit.i, !prof !83

bb.ar:                                            ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsa7TLgTh0CeG_9ssmanager.exit.i.i
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #55, !noalias !36988
  unreachable

_RNvMNtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB2_14NameServerPoolNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE16from_nameserversCsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsa7TLgTh0CeG_9ssmanager.exit.i.i
  %i.gp = extractvalue { i64, i64 } %.merged.i.i.i, 1
  %i.gq = extractvalue { i64, i64 } %.merged.i.i.i, 0
  store i64 1, ptr %i.gn, align 8, !noalias !36981
  %.sroa.424.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store i64 1, ptr %.sroa.424.0..sroa_idx.i.i, align 8, !noalias !36981
  %.sroa.525.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store i8 0, ptr %.sroa.525.0..sroa_idx.i.i, align 8, !noalias !36981
  %.sroa.626.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.626.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.017.sroa.4.i.i, i64 39, i1 false), !noalias !36981
  %.sroa.727.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 56
  store i64 %i.gq, ptr %.sroa.727.0..sroa_idx.i.i, align 8, !noalias !36981
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 64
  store i64 %i.gp, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !36981
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.017.sroa.4.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !36989)
  %i.gr = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36990)
  call void @llvm.experimental.noalias.scope.decl(metadata !36991)
  call void @llvm.experimental.noalias.scope.decl(metadata !36992)
  %i.gs = load ptr, ptr %i.gr, align 16, !alias.scope !36993, !noalias !36994, !nonnull !80, !noundef !80
  %i.gt = atomicrmw sub ptr %i.gs, i64 1 release, align 8, !noalias !36995
  %i.gu = icmp eq i64 %i.gt, 1
  br i1 %i.gu, label %bb.as, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsi1FNhPBS7PW_11hickory_net7runtime13tokio_runtime11TokioHandleECsa7TLgTh0CeG_9ssmanager.exit.i.i

bb.as:                                            ; preds = %_RNvMNtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB2_14NameServerPoolNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE16from_nameserversCsa7TLgTh0CeG_9ssmanager.exit.i
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexINtNtNtCsczhfDQ1qNkX_5tokio4task8join_set7JoinSetuEEE9drop_slowCs8AjStw0eGtC_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gr) #53, !noalias !36994
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsi1FNhPBS7PW_11hickory_net7runtime13tokio_runtime11TokioHandleECsa7TLgTh0CeG_9ssmanager.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsi1FNhPBS7PW_11hickory_net7runtime13tokio_runtime11TokioHandleECsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %bb.as, %_RNvMNtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB2_14NameServerPoolNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE16from_nameserversCsa7TLgTh0CeG_9ssmanager.exit.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.f, i64 24
end_hunk_0
begin_hunk_1_@_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime8blocking4pool5InnerE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler12multi_thread4park5InnerE9drop_slowBQ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcSNtNtB7_6string6StringE9drop_slowCs3CTGzuVCXxV_5regex(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcSNtNtCsi1FNhPBS7PW_11hickory_net5error13ForwardNSDataE9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcSNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6record6RecordE9drop_slowCsi1FNhPBS7PW_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcShE9drop_slowCsZrdUsNZROY_9aws_lc_rs(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCsb6671No4yaL_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcuE9drop_slowCsczhfDQ1qNkX_5tokio(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCskLEkjrY29GY_16rustls_pki_types11server_nameNtB4_10ServerNameNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtNtNtCsf3Ta7LF998c_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsx_NtNtCsf3Ta7LF998c_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i16(i16, i16) #36

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
declare { i64, ptr } @_RNvXs0_NtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6streamNtB5_9TcpStreamNtNtNtBb_2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

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
declare noundef zeroext i1 @_RNvXNtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB2_5RulesNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(176), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs_NtNtCs7ewmRfXve8r_4http6header4nameNtB4_10HeaderName10from_bytes(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold nounwind nonlazybind uwtable
declare void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #3

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtNtCsczhfDQ1qNkX_5tokio4sync15batch_semaphoreNtB2_9Semaphore7release(ptr noundef nonnull align 8, i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs_NtNtNtCsczhfDQ1qNkX_5tokio7runtime4task3rawNtB4_7RawTask7dealloc(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs2_NtCs1kwRxRulhfk_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs1_NtNtCscVsx2cUGvkQ_12futures_util4lock5mutexNtB5_6Waiter8register(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCsaI3lGUjttVO_5hyper5errorNtB4_5ErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, ptr } @_RNvXs4_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, ptr } @_RNvXs4_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error5cause(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

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
declare noundef nonnull ptr @_RNvXs1_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtNtNtCsf3Ta7LF998c_4core2io5error5ErrorINtNtBT_7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #0

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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #36

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsaI3lGUjttVO_5hyper7headers21connection_keep_alive(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nounwind nonlazybind
define noundef i32 @main(i32 %0, ptr %1) unnamed_addr #50 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = sext i32 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_RNvCsa7TLgTh0CeG_9ssmanager4main, ptr %i.a, align 8
  %i.c = call noundef i64 @_RNvNtCs5Xr050g3D4S_3std2rt19lang_start_internal(ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @303, i64 noundef %i.b, ptr noundef %1, i8 noundef 0) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = trunc i64 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #36

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #51

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #36

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #52

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshl.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.fshl.v8i32(<8 x i32>, <8 x i32>, <8 x i32>) #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #36

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
attributes #10 = { nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+sse,+sse2,+sse3,+sse4.1,+ssse3" }
attributes #12 = { alwaysinline nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+aes,+sse,+sse2" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { norecurse nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #33 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #34 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #35 = { cold minsize noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #36 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #38 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #39 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #40 = { cold noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #41 = { cold noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #42 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #43 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #44 = { nofree nosync nounwind nonlazybind memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #45 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #46 = { nounwind }
attributes #47 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #48 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #49 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #50 = { nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #51 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #52 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #53 = { noinline nounwind }
attributes #54 = { inlinehint nounwind }
attributes #55 = { noreturn nounwind }
attributes #56 = { noinline noreturn nounwind }

!llvm.module.flags = !{!75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = distinct !{!0, !"_RINvNtNtNtCsfRIMZ2Mh1DJ_3aes8backends7x86_aes6encdec7decryptKjb_ECsa7TLgTh0CeG_9ssmanager"}
!1 = distinct !{!1, !0, !"_RINvNtNtNtCsfRIMZ2Mh1DJ_3aes8backends7x86_aes6encdec7decryptKjb_ECsa7TLgTh0CeG_9ssmanager: argument 0"}
!2 = distinct !{!2, !"_RINvNtNtNtCsfRIMZ2Mh1DJ_3aes8backends7x86_aes6encdec7decryptKjf_ECsa7TLgTh0CeG_9ssmanager"}
!3 = distinct !{!3, !2, !"_RINvNtNtNtCsfRIMZ2Mh1DJ_3aes8backends7x86_aes6encdec7decryptKjf_ECsa7TLgTh0CeG_9ssmanager: argument 0"}
!4 = distinct !{null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsa7TLgTh0CeG_9ssmanager, null}
!5 = distinct !{null, null, null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsa7TLgTh0CeG_9ssmanager, null}
!6 = distinct !{null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsa7TLgTh0CeG_9ssmanager, null}
!7 = distinct !{null, null, null, null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsa7TLgTh0CeG_9ssmanager, null}
!8 = distinct !{null, null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsa7TLgTh0CeG_9ssmanager, null}
!9 = distinct !{null, null, null, null, null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsa7TLgTh0CeG_9ssmanager, null}
!10 = distinct !{ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsa7TLgTh0CeG_9ssmanager, null, null, null, null}
!11 = distinct !{null, null, null, null, null, null, null, null, null, null}
!12 = distinct !{null, null, null}
!13 = distinct !{null, null}
!14 = distinct !{null, null}
!15 = distinct !{null, null, null, null, null}
!16 = distinct !{null, null, null, null, null}
!17 = distinct !{null, null}
!18 = distinct !{null, null, null, null, null, null, null, null, null, null}
!19 = distinct !{null, null, null, null, null, null, null, null, null}
!20 = distinct !{null, null, null, null, null, null}
!21 = distinct !{!21, !"_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtB12_3ops4drop4Drop4dropCsa7TLgTh0CeG_9ssmanager"}
!22 = distinct !{!22, !21, !"_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtB12_3ops4drop4Drop4dropCsa7TLgTh0CeG_9ssmanager: argument 0"}
!23 = distinct !{null, null}
!24 = distinct !{null, null, null, null, null, null, null, null, null, null, null}
!25 = distinct !{null, null, null, null, null, null, null, null, null, null}
!26 = distinct !{!26, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager"}
!27 = distinct !{!27, !26, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager: argument 0"}
!28 = distinct !{!28, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsa7TLgTh0CeG_9ssmanager"}
!29 = distinct !{!29, !28, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsa7TLgTh0CeG_9ssmanager: argument 0"}
!30 = distinct !{!30, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager"}
!31 = distinct !{!31, !30, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager: argument 0"}
!32 = distinct !{!32, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager"}
!33 = distinct !{!33, !32, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager: argument 0"}
!34 = distinct !{!34, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsa7TLgTh0CeG_9ssmanager"}
!35 = distinct !{!35, !34, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsa7TLgTh0CeG_9ssmanager: argument 0"}
!36 = distinct !{null, null, null, null, null, null, null, null, null}
!37 = distinct !{null, null, null, null, null}
!38 = distinct !{!38, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsa7TLgTh0CeG_9ssmanager"}
!39 = distinct !{!39, !38, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsa7TLgTh0CeG_9ssmanager: argument 0"}
!40 = distinct !{null, null}
!41 = distinct !{null, null, null, null}
!42 = distinct !{null, null}
!43 = distinct !{!43, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsa7TLgTh0CeG_9ssmanager"}
!44 = distinct !{!44, !43, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsa7TLgTh0CeG_9ssmanager: argument 0"}
!45 = distinct !{null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsa7TLgTh0CeG_9ssmanager, null, null, null, null}
!46 = distinct !{null, null, null, null, null, null, null, null, null, null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsa7TLgTh0CeG_9ssmanager, null}
!47 = distinct !{null}
!48 = distinct !{null, null, null, null, null, null, null, null}
!49 = distinct !{null, null, null, null, null, null, null, null}
!50 = distinct !{null, null, null, null, null, null, null, null}
!51 = distinct !{null, null, null, null, null, null, null, null}
!52 = distinct !{null, null, null, null, null, null, null, null}
!53 = distinct !{null, null, null, null, null, null, null, null}
!54 = distinct !{null, null, null, null, null, null, null, null}
!55 = distinct !{null, null, null, null, null, null, null, null}
!56 = distinct !{null, null, null, null, null, null, null, null}
!57 = distinct !{null, null, null, null, null, null, null, null}
!58 = distinct !{null, null, null, null, null, null, null, null}
!59 = distinct !{null, null, null, null, null, null, null, null}
!60 = distinct !{null, null, null, null, null, null, null, null}
!61 = distinct !{null, null, null, null, null, null, null, null}
!62 = distinct !{null, null, null, null, null, null, null, null}
!63 = distinct !{null, null, null, null, null, null, null, null}
!64 = distinct !{null, null, null, null, null, null, null, null}
!65 = distinct !{null, null, null, null, null, null, null, null}
!66 = distinct !{ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsa7TLgTh0CeG_9ssmanager, null}
!67 = distinct !{null}
!68 = distinct !{null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsa7TLgTh0CeG_9ssmanager, null}
!69 = distinct !{null, null, null}
!70 = distinct !{null, null, null, null, null, null}
!71 = distinct !{null, null, null, null, null, null}
!72 = distinct !{null, null, null, null, null, null}
!73 = distinct !{null, null}
!74 = distinct !{null, null}
!75 = !{i32 8, !"PIC Level", i32 2}
!76 = !{i32 7, !"PIE Level", i32 2}
!77 = !{i32 2, !"RtLibUseGOT", i32 1}
!78 = !{i32 7, !"uwtable", i32 2}
!79 = !{!"rustc version 1.100.0-nightly (809936eac 2026-09-12)"}
!80 = !{}
!81 = !{i16 0, i16 2}
!82 = !{i64 0, i64 -9223372036854775808}
!83 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!84 = !{i64 1, i64 536870913}
!85 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!86 = !{i64 8}
!87 = !{i64 0, i64 2}
!88 = !{i64 0, i64 3}
!89 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!90 = !{i32 0, i32 3}
!91 = !{i64 1, i64 0}
!92 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!93 = !{i8 0, i8 2}
!94 = !{i32 0, i32 10}
!95 = !{i8 0, i8 3}
!96 = !{i8 0, i8 81}
!97 = !{i64 0, i64 4}
!98 = !{!"branch_weights", i32 4001, i32 4000000}
!99 = !{!"llvm.loop.unroll.disable"}
!100 = !{i64 64}
!101 = !{i64 0, i64 5}
!102 = !{!"branch_weights", i32 4000000, i32 4001}
!103 = !{i32 -1, i32 1000000000}
!104 = !{i8 -1, i8 3}
!105 = !{!"branch_weights", !"expected", i32 2145766842, i32 1716806}
!106 = !{i64 0, i64 -9223372036854775804}
!107 = !{i8 0, i8 5}
!108 = !{i8 0, i8 6}
!109 = !{i32 -3, i32 3}
!110 = !{i32 0, i32 -1}
!111 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
end_hunk_1
