inline.NumInlined: 1084
inline.NumDeleted: 543
begin_hunk_0_@_RNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtB8_12UnityCatalog42get_temp_table_credentials_with_permissionReB1M_B1M_B1M_E0B8_:bb.a
  invoke void %i.nm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.nn, ptr noundef %i.np, i64 noundef %i.nr)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit73 unwind label %bb.ey, !inline_history !395

bb.fb:                                            ; preds = %bb.dt
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(136) %i.ag) #20
          to label %bb.dz unwind label %bb.o

bb.fc:                                            ; preds = %bb.dz
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 389
  %i.nt = load i8, ptr %i.ns, align 1, !range !27, !noundef !3
  %i.nu = trunc nuw i8 %i.nt to i1
  br i1 %i.nu, label %bb.fe, label %.body47

bb.fd:                                            ; preds = %bb.dz
  %i.nv = getelementptr inbounds nuw i8, ptr %1, i64 390
  %i.nw = load i8, ptr %i.nv, align 2, !range !27, !noundef !3
  %i.nx = trunc nuw i8 %i.nw to i1
  br i1 %i.nx, label %bb.ff, label %.body47

bb.fe:                                            ; preds = %bb.fc
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models5TableEBK_(ptr noalias noundef align 8 dereferenceable(248) %i.le) #20
          to label %.body47 unwind label %bb.o

bb.ff:                                            ; preds = %bb.fd
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 136
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models13ErrorResponseEBK_(ptr noalias noundef align 8 dereferenceable(72) %i.ny) #20
          to label %.body47 unwind label %bb.o

bb.fg:                                            ; preds = %.body47
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  call void @llvm.experimental.noalias.scope.decl(metadata !1020)
  call void @llvm.experimental.noalias.scope.decl(metadata !1023)
  %i.oa = load ptr, ptr %i.nz, align 8, !alias.scope !1026, !nonnull !3, !align !15, !noundef !3
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 32
  %i.oc = load ptr, ptr %i.ob, align 8, !noalias !1026, !nonnull !3, !noundef !3
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.of = load ptr, ptr %i.oe, align 8, !alias.scope !1026, !noundef !3
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.oh = load i64, ptr %i.og, align 8, !alias.scope !1026, !noundef !3
  invoke void %i.oc(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.od, ptr noundef %i.of, i64 noundef %i.oh)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit75 unwind label %bb.o, !inline_history !395
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB4_8Response5bytes0CsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 7 uses
  %.sroa.431 = alloca [16 x i8], align 8          ; 2 uses
  %.sroa.524 = alloca [104 x i8], align 8         ; 2 uses
  %i.b = alloca [128 x i8], align 8               ; 9 uses
  %i.c = alloca [128 x i8], align 8               ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !range !382, !noundef !3
  switch i8 %i.f, label %default.unreachable35 [
    i8 0, label %bb.b
    i8 1, label %bb.k
    i8 2, label %bb.l
    i8 3, label %bb.h
  ]

default.unreachable35:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.g, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.c, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 128, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !alias.scope !1027
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.c)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %.val1.i.i = load ptr, ptr %i.k, align 8, !alias.scope !1030, !align !15, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val1.i.i) #20
          to label %.body unwind label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %.val.i.i = load ptr, ptr %i.l, align 8, !alias.scope !1030, !align !15, !noundef !3 ; 4 uses
  %i.m = icmp eq ptr %.val.i.i, null
  br i1 %i.m, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 32, i64 noundef 8) #21
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i: ; preds = %bb.e
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 32, i64 noundef 8) #21
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br label %bb.m

.body:                                            ; preds = %bb.c, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.n, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 272
  store i64 3, ptr %i.p, align 8
  %.sroa.816.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 368
  store i64 0, ptr %.sroa.816.0..sroa_idx, align 8
  %.sroa.917.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 376
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.917.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 400
  store <2 x ptr> %i.i, ptr %.sroa.11.0..sroa_idx, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.r, %bb.n, %.body
  %.pn4.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.v, %bb.r ], [ %i.s, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.val9 = load ptr, ptr %i.q, align 8, !nonnull !3, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCseo6ZV82fEK1_3url3UrlEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val9) #20
          to label %.body11 unwind label %bb.ab

bb.k:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #24
  unreachable

bb.l:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #24
  unreachable

bb.m:                                             ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 3 uses
  invoke void @_RNvXNtNtCs3eCsZ2Mx498_14http_body_util11combinators7collectINtB2_7CollectINtNtB4_8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB2M_6marker4SyncNtB3j_4SendEL_EEENtNtNtB2M_6future6future6Future4pollCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(144) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators7collect7CollectINtNtBL_8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3E_4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(144) %i.r) #20
          to label %bb.j unwind label %bb.ab

bb.o:                                             ; preds = %bb.m
  %i.t = load i64, ptr %i.b, align 8, !range !1033, !noundef !3 ; 3 uses
  %i.u = icmp eq i64 %i.t, 5
  br i1 %i.u, label %bb.p, label %bb.q

common.ret:                                       ; preds = %bb.aa, %bb.p
  %storemerge = phi i8 [ 1, %bb.aa ], [ 3, %bb.p ]
  store i8 %storemerge, ptr %i.e, align 8
  ret void

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %common.ret

bb.q:                                             ; preds = %bb.o
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.524, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.524.0..sroa_idx, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators7collect7CollectINtNtBL_8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3E_4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(144) %i.r)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.u, %bb.t, %bb.q
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.s:                                             ; preds = %bb.q
  %i.w = icmp eq i64 %i.t, 4
  br i1 %i.w, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread, label %bb.t

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread: ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload), "nonnull"(ptr %.sroa.4.0.copyload) ]
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1034
  store i64 %i.t, ptr %i.a, align 8, !noalias !1038
  %.sroa.3.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.3.0.copyload, ptr %.sroa.3.0..sroa_idx20, align 8, !noalias !1038
  %.sroa.4.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx22, align 8, !noalias !1038
  %.sroa.524.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.524.0..sroa_idx25, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.524, i64 104, i1 false), !noalias !1038
  invoke void @_RNvMNtCs3eCsZ2Mx498_14http_body_util9collectedINtB2_9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE8to_bytesCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(128) %i.a)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.r

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1034
  %.pr = load ptr, ptr %i.d, align 8, !alias.scope !1039, !noalias !1042 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  %i.x = icmp eq ptr %.pr, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !1044 ; 2 uses
  %.phi.trans.insert33 = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.x, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsgO8S5jLFugx_23deltalake_catalog_unity.exit._crit_edge, label %bb.v

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsgO8S5jLFugx_23deltalake_catalog_unity.exit._crit_edge: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.pre34 = load ptr, ptr %.phi.trans.insert33, align 8, !alias.scope !1039, !noalias !1042
  br label %bb.u

bb.u:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsgO8S5jLFugx_23deltalake_catalog_unity.exit._crit_edge, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread
  %i.y = phi ptr [ %.pre34, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsgO8S5jLFugx_23deltalake_catalog_unity.exit._crit_edge ], [ %.sroa.4.0.copyload, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread ]
  %i.z = phi ptr [ %.pre, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsgO8S5jLFugx_23deltalake_catalog_unity.exit._crit_edge ], [ %.sroa.3.0.copyload, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread ]
  %i.aa = invoke noundef nonnull align 8 ptr @_RINvNtCsgO6CtM78C4N_7reqwest5error6decodeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB1h_6marker4SyncNtB1O_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.y)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB2d_4SendEL_EE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2U_6decodeB1i_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.r

bb.v:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.431, ptr noundef nonnull align 8 dereferenceable(16) %.phi.trans.insert33, i64 16, i1 false), !alias.scope !1045
  br label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB2d_4SendEL_EE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2U_6decodeB1i_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB2d_4SendEL_EE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2U_6decodeB1i_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.v, %bb.u
  %.sroa.026.0 = phi ptr [ %.pr, %bb.v ], [ null, %bb.u ]
  %.sroa.328.0 = phi ptr [ %.pre, %bb.v ], [ %i.aa, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.val = load ptr, ptr %i.ab, align 8, !nonnull !3, !noundef !3 ; 5 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(88) %.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.w

bb.w:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB2d_4SendEL_EE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2U_6decodeB1i_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(88) %.val)
          to label %bb.z unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB2d_4SendEL_EE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2U_6decodeB1i_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(88) %.val)
          to label %bb.aa unwind label %bb.y

bb.y:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ae, %bb.y ], [ %i.ac, %bb.w ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 88, i64 noundef 8) #21
  br label %.body11

.body11:                                          ; preds = %bb.z, %bb.j
  %.pn7 = phi { ptr, i32 } [ %.pn4.pn, %bb.j ], [ %eh.lpad-body.i, %bb.z ]
  store i8 2, ptr %i.e, align 8
  resume { ptr, i32 } %.pn7

bb.aa:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 88, i64 noundef 8) #21
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.026.0, ptr %i.af, align 8
  %.sroa.328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.328.0, ptr %.sroa.328.0..sroa_idx, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.431.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.431, i64 16, i1 false)
  store i64 0, ptr %0, align 8
  br label %common.ret

bb.ab:                                            ; preds = %bb.j, %bb.n
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs2_NtCsjkRrtHEnRPD_18reqwest_middleware6clientNtB7_14RequestBuilder4send0CsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(136) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [264 x i8], align 8               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [264 x i8], align 8               ; 7 uses
  %.sroa.5 = alloca [112 x i8], align 8           ; 2 uses
  %i.d = alloca [136 x i8], align 8               ; 10 uses
  %i.e = alloca [312 x i8], align 8               ; 5 uses
  %i.f = alloca [304 x i8], align 8               ; 8 uses
  %.sroa.4 = alloca [248 x i8], align 8           ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1240 ; 3 uses
  %i.h = load i8, ptr %i.g, align 8, !range !382, !noundef !3
  switch i8 %i.h, label %default.unreachable57 [
    i8 0, label %bb.b
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.n
  ]

default.unreachable57:                            ; preds = %bb.n, %bb.a
  unreachable

.body:                                            ; preds = %bb.ak, %bb.g, %.body.sink.split, %bb.c
  %.pn10.pn = phi { ptr, i32 } [ %i.q, %bb.c ], [ %.pn6, %bb.ak ], [ %i.aa, %bb.g ], [ %.pn10.ph, %.body.sink.split ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1241 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !range !27, !noundef !3
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.aq, label %bb.ap

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1241 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.m, ptr noundef nonnull align 8 dereferenceable(312) %1, i64 312, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 624 ; 5 uses
  %i.p = load ptr, ptr %i.n, align 8, !alias.scope !1046, !align !15, !noundef !3
  store ptr null, ptr %i.n, align 8, !alias.scope !1046
  store ptr %i.p, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 0, ptr %i.l, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.e, ptr noundef nonnull align 8 dereferenceable(312) %i.m, i64 312, i1 false)
  invoke void @_RNvMs2_NtCsjkRrtHEnRPD_18reqwest_middleware6clientNtB5_14RequestBuilder11build_split(ptr noalias noundef nonnull sret([304 x i8]) align 8 captures(none) dereferenceable(304) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(312) %i.e)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.val18 = load ptr, ptr %i.o, align 8, !align !15, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val18) #20
          to label %.body unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 632 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.0.0.copyload = load i64, ptr %i.s, align 8 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.4.0..sroa_idx, i64 248, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 672 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  %i.u = icmp eq i64 %.sroa.0.0.copyload, 2
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 2 uses
  br i1 %i.u, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.d
  store i64 %.sroa.0.0.copyload, ptr %i.t, align 8, !alias.scope !1052
  store ptr %.sroa.3.0.copyload, ptr %i.v, align 8, !alias.scope !1052
  %.sroa.4.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %1, i64 688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.4.0..sroa_idx36, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.4, i64 248, i1 false), !alias.scope !1052
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 936
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.w, ptr noundef nonnull align 8 dereferenceable(264) %i.t, i64 264, i1 false)
  %.sroa.840.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1200
  store ptr %i.r, ptr %.sroa.840.0..sroa_idx, align 8
  %.sroa.941.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1208
  store ptr %i.o, ptr %.sroa.941.0..sroa_idx, align 8
  %.sroa.1143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1232
  store i8 0, ptr %.sroa.1143.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 936
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 1232
  br label %bb.p

bb.e:                                             ; preds = %bb.c, %bb.g, %bb.ak, %bb.aq, %.body20, %bb.ai
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

.body.sink.split:                                 ; preds = %bb.ao, %bb.j
  %.val15.sink = phi ptr [ %.val15, %bb.j ], [ %.val, %bb.ao ]
  %.pn10.ph = phi { ptr, i32 } [ %i.ac, %bb.j ], [ %i.cg, %bb.ao ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val15.sink, i64 noundef 32, i64 noundef 8) #21
  br label %.body

bb.f:                                             ; preds = %bb.d
end_hunk_0
begin_hunk_1_@_RNvXNtCsgO6CtM78C4N_7reqwest5proxyRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB2_9IntoProxy10into_proxyCsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  br i1 %i.aq, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.k
  %bcmp17 = call i32 @bcmp(ptr nonnull %.val22, ptr nonnull @63, i64 %i.z)
  %i.ar = icmp eq i32 %bcmp17, 0
  br i1 %i.ar, label %bb.o, label %.thread

bb.n:                                             ; preds = %bb.l
  %bcmp18 = call i32 @bcmp(ptr nonnull %.val22, ptr nonnull @64, i64 %i.z)
  %i.as = icmp eq i32 %bcmp18, 0
  br i1 %i.as, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.k, %bb.l, %bb.m, %bb.n
  %i.at = invoke noundef zeroext i1 @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url8set_port(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.h, i16 noundef 1, i16 1080)
          to label %.thread unwind label %bb.i    ; 0 uses

bb.p:                                             ; preds = %bb.ac, %bb.i
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !3, !align !15, !noundef !3
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.v
  %.sroa.02.144 = phi ptr [ %i.bi, %bb.v ], [ %i.s, %.lr.ph.preheader ] ; 4 uses
  %.sroa.5.143 = phi ptr [ %i.bj, %bb.v ], [ %i.aw, %.lr.ph.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.143) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.5.143, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !invariant.load !3, !nonnull !3 ; 2 uses
  invoke void %i.ay(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull %.sroa.02.144)
          to label %bb.q unwind label %.loopexit

bb.q:                                             ; preds = %.lr.ph
  %i.az = load i128, ptr %i.d, align 16, !noundef !3
  %i.ba = icmp eq i128 %i.az, 52593667306140550496992397592266880609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.ba, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void %i.ay(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull %.sroa.02.144)
          to label %bb.t unwind label %.loopexit

bb.s:                                             ; preds = %bb.q
  %i.bb = load i8, ptr %.sroa.02.144, align 1, !range !729, !noundef !3
  %i.bc = icmp eq i8 %i.bb, 6
  br i1 %i.bc, label %bb.w, label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bd = load i128, ptr %i.c, align 16, !noundef !3
  %i.be = icmp eq i128 %i.bd, -125903109373568333414932580469899486726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.be, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.5.143, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !3, !nonnull !3
  %i.bh = invoke { ptr, ptr } %i.bg(ptr noundef nonnull %.sroa.02.144)
          to label %bb.v unwind label %.loopexit  ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.bi = extractvalue { ptr, ptr } %i.bh, 0      ; 2 uses
  %i.bj = extractvalue { ptr, ptr } %i.bh, 1
  %.not20 = icmp eq ptr %i.bi, null
  br i1 %.not20, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.v, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 0, ptr %i.b, align 8
  %i.bk = call noundef nonnull align 8 ptr @_RINvMNtCsgO6CtM78C4N_7reqwest5errorNtB3_5Error3newBx_ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bk, ptr %i.bl, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXNtCsgO6CtM78C4N_7reqwest5proxyRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtBL_9IntoProxy10into_proxy0ECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.w:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.k, ptr %i.f, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.m, ptr %i.bm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr %.sroa.48.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @65, ptr noundef nonnull %i.e)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %.loopexit.split-lp

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXs5_NtCsgO6CtM78C4N_7reqwest8into_urlNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13IntoUrlSealed8into_url(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.x unwind label %.loopexit.split-lp

bb.x:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.bn = load i64, ptr %0, align 8, !range !235, !noundef !3
  %i.bo = icmp eq i64 %i.bn, -9223372036854775808
  br i1 %i.bo, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !3, !align !15, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1126
  store i16 0, ptr %i.a, align 8, !noalias !1126
  %i.br = invoke noundef nonnull align 8 ptr @_RINvMNtCsgO6CtM78C4N_7reqwest5errorNtB3_5Error3newBx_ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 %i.q)
          to label %_RNCNvXNtCsgO6CtM78C4N_7reqwest5proxyRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB4_9IntoProxy10into_proxy0CsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.z, !noalias !1130

bb.z:                                             ; preds = %bb.y
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull align 8 %i.bq) #20
          to label %.body.thread unwind label %bb.aa

_RNCNvXNtCsgO6CtM78C4N_7reqwest5proxyRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB4_9IntoProxy10into_proxy0CsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1126
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull align 8 %i.bq)
  store ptr %i.br, ptr %i.bp, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXNtCsgO6CtM78C4N_7reqwest5proxyRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtBL_9IntoProxy10into_proxy0ECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.aa:                                            ; preds = %bb.z
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.ab:                                            ; preds = %bb.x
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %i.q)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXNtCsgO6CtM78C4N_7reqwest5proxyRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtBL_9IntoProxy10into_proxy0ECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXNtCsgO6CtM78C4N_7reqwest5proxyRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtBL_9IntoProxy10into_proxy0ECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %.thread, %_RNCNvXNtCsgO6CtM78C4N_7reqwest5proxyRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB4_9IntoProxy10into_proxy0CsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.ab, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

.loopexit:                                        ; preds = %.lr.ph, %bb.r, %bb.u
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit.split-lp:                               ; preds = %bb.w, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %i.q) #20
          to label %.body.thread unwind label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs3eCsZ2Mx498_14http_body_util11combinators7collectINtB2_7CollectINtNtB4_8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB2M_6marker4SyncNtB3j_4SendEL_EEENtNtNtB2M_6future6future6Future4pollCsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef align 8 dereferenceable(144) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4 = alloca [72 x i8], align 8            ; 2 uses
  %i.a = alloca [96 x i8], align 8                ; 9 uses
  %i.b = alloca [96 x i8], align 8                ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs0_NtNtCs3eCsZ2Mx498_14http_body_util11combinators8box_bodyINtB5_7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB2r_6marker4SyncNtB2Y_4SendEL_EENtCs574AjYkQ1m0_9http_body4Body10poll_frameCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.d = load i64, ptr %i.b, align 8, !range !1131, !noundef !3
  %i.e = icmp eq i64 %i.d, 6
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  store i64 5, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.0.copyload = load i64, ptr %i.b, align 8 ; 2 uses
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 3 uses
  %.sroa.3.0.copyload68 = load ptr, ptr %.sroa.3.0..sroa_idx67, align 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx69, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  switch i64 %.sroa.0.0.copyload, label %bb.e [
    i64 5, label %bb.c
    i64 4, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %.sroa.019.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  store i64 4, ptr %1, align 8
  %.not41 = icmp eq i64 %.sroa.019.0.copyload, 4
  br i1 %.not41, label %bb.m, label %bb.l, !prof !30

bb.d:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload), "nonnull"(ptr %.sroa.3.0.copyload68) ]
  store i64 4, ptr %0, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.2.0.copyload, ptr %.sroa.433.0..sroa_idx, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.3.0.copyload68, ptr %.sroa.534.0..sroa_idx, align 8
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.618.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4, i64 72, i1 false)
  store i64 %.sroa.0.0.copyload, ptr %i.a, align 8
  store ptr %.sroa.2.0.copyload, ptr %.sroa.416.0..sroa_idx, align 8
  store ptr %.sroa.3.0.copyload68, ptr %.sroa.517.0..sroa_idx, align 8
  %i.f = load i64, ptr %1, align 8, !range !356, !noundef !3
  %.not42 = icmp eq i64 %i.f, 4
  br i1 %.not42, label %bb.g, label %bb.f, !prof !30

bb.f:                                             ; preds = %bb.e
  call void @_RNvMNtCs3eCsZ2Mx498_14http_body_util9collectedINtB2_9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE10push_frameCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(128) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs0_NtNtCs3eCsZ2Mx498_14http_body_util11combinators8box_bodyINtB5_7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB2r_6marker4SyncNtB2Y_4SendEL_EENtCs574AjYkQ1m0_9http_body4Body10poll_frameCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.g = load i64, ptr %i.b, align 8, !range !1131, !noundef !3
  %i.h = icmp eq i64 %i.g, 6
  br i1 %i.h, label %._crit_edge, label %bb.b

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #23
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs574AjYkQ1m0_9http_body5frame5FrameNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(96) %i.a) #20
          to label %.thread44 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.k:                                             ; preds = %bb.l, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.l:                                             ; preds = %bb.c
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.426.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.521.0..sroa_idx, i64 120, i1 false)
  store i64 %.sroa.019.0.copyload, ptr %0, align 8
  br label %bb.k

bb.m:                                             ; preds = %bb.c
  call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #23
  unreachable

.thread44:                                        ; preds = %bb.i
  resume { ptr, i32 } %i.i

bb.n:                                             ; preds = %bb.k, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write9write_strCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = tail call noundef ptr @_RNvYNtNtNtNtCs2pqxYH9ZEk8_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp ne ptr %i.b, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %i.d = icmp eq ptr %.val, null
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  ret i1 %.not

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  store ptr %i.b, ptr %i.c, align 8
  resume { ptr, i32 } %i.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b, %bb.c
  store ptr %i.b, ptr %i.c, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsbvkFyIu7lgC_4core6future7poll_fnINtB5_6PollFnNCNCINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB12_13CurrentThread8block_onINtNtB9_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3r_19UnityCatalogBuilder25get_uc_location_and_token0EEE00ENtNtB7_6future6Future4pollB3r_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !align !15, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.b, align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  %i.c = load ptr, ptr %.val, align 8, !noalias !1135, !nonnull !3, !align !15, !noundef !3
  %i.d = tail call noundef zeroext i1 @_RNvXsa_NtNtCskQDtHcQtBkN_5tokio4sync6notifyNtB5_8NotifiedNtNtNtCsbvkFyIu7lgC_4core6future6future6Future4poll(ptr noundef nonnull align 8 %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !1132
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8, !alias.scope !1132, !noalias !1137
  br label %_RNCNCINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2L_19UnityCatalogBuilder25get_uc_location_and_token0EEE00B2L_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1135
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.e = load ptr, ptr %.val1, align 8, !noalias !1135, !nonnull !3, !align !15, !noundef !3
  call void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB1C_19UnityCatalogBuilder25get_uc_location_and_token0EENtB4_6Future4pollB1C_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !1132
  %i.f = load i64, ptr %i.a, align 8, !range !31, !noalias !1135, !noundef !3
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1135
  store i64 3, ptr %0, align 8, !alias.scope !1132, !noalias !1137
  br label %_RNCNCINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2L_19UnityCatalogBuilder25get_uc_location_and_token0EEE00B2L_.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !1137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1135
  br label %_RNCNCINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2L_19UnityCatalogBuilder25get_uc_location_and_token0EEE00B2L_.exit

_RNCNCINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2L_19UnityCatalogBuilder25get_uc_location_and_token0EEE00B2L_.exit: ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsbvkFyIu7lgC_4core6future7poll_fnINtB5_6PollFnNCNCINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB12_13CurrentThread8block_onNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2C_19UnityCatalogBuilder25get_uc_location_and_token0E00ENtNtB7_6future6Future4pollB2C_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 14 uses
  %i.g = alloca [80 x i8], align 8                ; 21 uses
  %i.h = alloca [72 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [72 x i8], align 8                ; 8 uses
  %i.m = alloca [48 x i8], align 8                ; 5 uses
  %i.n = alloca [48 x i8], align 8                ; 7 uses
  %i.o = alloca [256 x i8], align 8               ; 6 uses
  %.sroa.3261.i.i = alloca [72 x i8], align 8     ; 8 uses
  %.sroa.5262.i.i = alloca [176 x i8], align 8    ; 4 uses
  %i.p = alloca [256 x i8], align 8               ; 10 uses
  %i.q = alloca [48 x i8], align 8                ; 7 uses
  %i.r = alloca [256 x i8], align 8               ; 4 uses
  %.sroa.3219.i.i = alloca [72 x i8], align 8     ; 6 uses
  %.sroa.5220.i.i = alloca [176 x i8], align 8    ; 4 uses
  %i.s = alloca [256 x i8], align 8               ; 8 uses
  %.sroa.3184.i.i = alloca [24 x i8], align 8     ; 5 uses
  %.sroa.5185.i.i = alloca [40 x i8], align 8     ; 4 uses
  %i.t = alloca [72 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.8167.i.i = alloca [40 x i8], align 8     ; 5 uses
  %.sroa.5173.i.i = alloca [112 x i8], align 8    ; 4 uses
  %i.v = alloca [640 x i8], align 8               ; 5 uses
  %i.w = alloca [160 x i8], align 8               ; 8 uses
  %.sroa.8158.i.i = alloca [40 x i8], align 8     ; 5 uses
  %.sroa.5.i.i = alloca [112 x i8], align 8       ; 4 uses
  %i.x = alloca [640 x i8], align 8               ; 5 uses
  %i.y = alloca [160 x i8], align 8               ; 8 uses
  %i.z = alloca [40 x i8], align 8                ; 5 uses
  %i.aa = alloca [40 x i8], align 8               ; 6 uses
  %i.ab = alloca [640 x i8], align 8              ; 6 uses
  %i.ac = alloca [640 x i8], align 8              ; 8 uses
  %.sroa.8150.i.i = alloca [40 x i8], align 8     ; 7 uses
  %i.ad = alloca [640 x i8], align 8              ; 10 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !align !15, !noundef !3
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.ae, align 8           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  %i.af = load ptr, ptr %.val, align 8, !noalias !1141, !nonnull !3, !align !15, !noundef !3
  %i.ag = tail call noundef zeroext i1 @_RNvXsa_NtNtCskQDtHcQtBkN_5tokio4sync6notifyNtB5_8NotifiedNtNtNtCsbvkFyIu7lgC_4core6future6future6Future4poll(ptr noundef nonnull align 8 %i.af, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !1138
  br i1 %i.ag, label %bb.b, label %_RNCNCINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB1G_19UnityCatalogBuilder25get_uc_location_and_token0E00B1G_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.ah = load ptr, ptr %.val1, align 8, !noalias !1141, !nonnull !3, !align !15, !noundef !3 ; 116 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1141
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3261.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5262.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1141
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3219.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5220.i.i)
end_hunk_1
