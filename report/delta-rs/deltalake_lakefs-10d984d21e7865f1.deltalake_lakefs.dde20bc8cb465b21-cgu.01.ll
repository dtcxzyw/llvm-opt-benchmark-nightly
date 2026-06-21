inline.NumInlined: 1127
inline.NumDeleted: 348
begin_hunk_0_@_RNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB4_8Response4text0Csj34PGqTgg0L_16deltalake_lakefs:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1515)
  call void @llvm.experimental.noalias.scope.decl(metadata !1518)
  %i.w = load ptr, ptr %i.d, align 8, !alias.scope !1521, !nonnull !7, !align !22, !noundef !7
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !noalias !1521, !nonnull !7, !noundef !7
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.aa = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1521, !noundef !7
  %i.ab = load i64, ptr %.sroa.518.0..sroa_idx, align 8, !alias.scope !1521, !noundef !7
  invoke void %i.y(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef %i.aa, i64 noundef %i.ab)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsj34PGqTgg0L_16deltalake_lakefs.exit8 unwind label %bb.s, !inline_history !1228

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.k, %bb.g, %bb.m, %bb.s
  %.pn4.pn = phi { ptr, i32 } [ %.pn2, %bb.m ], [ %i.ac, %bb.s ], [ %i.m, %bb.k ], [ %i.i, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i8 2, ptr %i.e, align 8
  resume { ptr, i32 } %.pn4.pn

bb.s:                                             ; preds = %bb.r
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsj34PGqTgg0L_16deltalake_lakefs.exit8: ; preds = %bb.r, %bb.u
  %.sroa.019.0 = phi i64 [ -9223372036854775808, %bb.u ], [ %.sroa.019.0.copyload, %bb.r ]
  %.sroa.321.0 = phi ptr [ %.sroa.3.0.copyload, %bb.u ], [ %.sroa.321.0.copyload, %bb.r ]
  %.sroa.424.0 = phi i64 [ undef, %bb.u ], [ %.sroa.424.0.copyload, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %.sroa.019.0, ptr %0, align 8
  %.sroa.321.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.321.0, ptr %.sroa.321.0..sroa_idx22, align 8
  %.sroa.424.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.424.0, ptr %.sroa.424.0..sroa_idx25, align 8
  br label %common.ret

bb.t:                                             ; preds = %bb.m, %bb.g
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.u:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsj34PGqTgg0L_16deltalake_lakefs.exit8
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB4_8Response5bytes0Csj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 7 uses
  %.sroa.431 = alloca [16 x i8], align 8          ; 2 uses
  %.sroa.524 = alloca [104 x i8], align 8         ; 2 uses
  %i.b = alloca [128 x i8], align 8               ; 9 uses
  %i.c = alloca [128 x i8], align 8               ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !range !178, !noundef !7
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
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !alias.scope !1522
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.c)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %.val1.i.i = load ptr, ptr %i.k, align 8, !alias.scope !1525, !align !22, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsj34PGqTgg0L_16deltalake_lakefs(ptr %.val1.i.i) #22
          to label %.body unwind label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %.val.i.i = load ptr, ptr %i.l, align 8, !alias.scope !1525, !align !22, !noundef !7 ; 4 uses
  %i.m = icmp eq ptr %.val.i.i, null
  br i1 %i.m, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 32, i64 noundef 8) #25
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i: ; preds = %bb.e
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 32, i64 noundef 8) #25
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br label %bb.m

.body:                                            ; preds = %bb.c, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.n, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i, %bb.d
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
  %.val9 = load ptr, ptr %i.q, align 8, !nonnull !7, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCseo6ZV82fEK1_3url3UrlEECsj34PGqTgg0L_16deltalake_lakefs(ptr %.val9) #22
          to label %.body11 unwind label %bb.ab

bb.k:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #27
  unreachable

bb.l:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #27
  unreachable

bb.m:                                             ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 3 uses
  invoke void @_RNvXNtNtCs3eCsZ2Mx498_14http_body_util11combinators7collectINtB2_7CollectINtNtB4_8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB2M_6marker4SyncNtB3j_4SendEL_EEENtNtNtB2M_6future6future6Future4pollCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(144) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators7collect7CollectINtNtBL_8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3E_4SendEL_EEEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(144) %i.r) #22
          to label %bb.j unwind label %bb.ab

bb.o:                                             ; preds = %bb.m
  %i.t = load i64, ptr %i.b, align 8, !range !1528, !noundef !7 ; 3 uses
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
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators7collect7CollectINtNtBL_8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3E_4SendEL_EEEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(144) %i.r)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.u, %bb.t, %bb.q
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.s:                                             ; preds = %bb.q
  %i.w = icmp eq i64 %i.t, 4
  br i1 %i.w, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsj34PGqTgg0L_16deltalake_lakefs.exit.thread, label %bb.t

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsj34PGqTgg0L_16deltalake_lakefs.exit.thread: ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload), "nonnull"(ptr %.sroa.4.0.copyload) ]
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1529
  store i64 %i.t, ptr %i.a, align 8, !noalias !1533
  %.sroa.3.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.3.0.copyload, ptr %.sroa.3.0..sroa_idx20, align 8, !noalias !1533
  %.sroa.4.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx22, align 8, !noalias !1533
  %.sroa.524.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.524.0..sroa_idx25, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.524, i64 104, i1 false), !noalias !1533
  invoke void @_RNvMNtCs3eCsZ2Mx498_14http_body_util9collectedINtB2_9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE8to_bytesCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(128) %i.a)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.r

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1529
  %.pr = load ptr, ptr %i.d, align 8, !alias.scope !1534, !noalias !1537 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1537)
  %i.x = icmp eq ptr %.pr, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !1539 ; 2 uses
  %.phi.trans.insert33 = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.x, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsj34PGqTgg0L_16deltalake_lakefs.exit._crit_edge, label %bb.v

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsj34PGqTgg0L_16deltalake_lakefs.exit._crit_edge: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsj34PGqTgg0L_16deltalake_lakefs.exit
  %.pre34 = load ptr, ptr %.phi.trans.insert33, align 8, !alias.scope !1534, !noalias !1537
  br label %bb.u

bb.u:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsj34PGqTgg0L_16deltalake_lakefs.exit._crit_edge, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsj34PGqTgg0L_16deltalake_lakefs.exit.thread
  %i.y = phi ptr [ %.pre34, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsj34PGqTgg0L_16deltalake_lakefs.exit._crit_edge ], [ %.sroa.4.0.copyload, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsj34PGqTgg0L_16deltalake_lakefs.exit.thread ]
  %i.z = phi ptr [ %.pre, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsj34PGqTgg0L_16deltalake_lakefs.exit._crit_edge ], [ %.sroa.3.0.copyload, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsj34PGqTgg0L_16deltalake_lakefs.exit.thread ]
  %i.aa = invoke noundef nonnull align 8 ptr @_RINvNtCsgO6CtM78C4N_7reqwest5error6decodeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB1h_6marker4SyncNtB1O_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs(ptr noundef nonnull %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.y)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB2d_4SendEL_EE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2U_6decodeB1i_EECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.r

bb.v:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsj34PGqTgg0L_16deltalake_lakefs.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.431, ptr noundef nonnull align 8 dereferenceable(16) %.phi.trans.insert33, i64 16, i1 false), !alias.scope !1540
  br label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB2d_4SendEL_EE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2U_6decodeB1i_EECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB2d_4SendEL_EE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2U_6decodeB1i_EECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.v, %bb.u
  %.sroa.026.0 = phi ptr [ %.pr, %bb.v ], [ null, %bb.u ]
  %.sroa.328.0 = phi ptr [ %.pre, %bb.v ], [ %i.aa, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.val = load ptr, ptr %i.ab, align 8, !nonnull !7, !noundef !7 ; 5 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(88) %.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i unwind label %bb.w

bb.w:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB2d_4SendEL_EE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2U_6decodeB1i_EECsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(88) %.val)
          to label %bb.z unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB2d_4SendEL_EE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2U_6decodeB1i_EECsj34PGqTgg0L_16deltalake_lakefs.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(88) %.val)
          to label %bb.aa unwind label %bb.y

bb.y:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ae, %bb.y ], [ %i.ac, %bb.w ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 88, i64 noundef 8) #25
  br label %.body11

.body11:                                          ; preds = %bb.z, %bb.j
  %.pn7 = phi { ptr, i32 } [ %.pn4.pn, %bb.j ], [ %eh.lpad-body.i, %bb.z ]
  store i8 2, ptr %i.e, align 8
  resume { ptr, i32 } %.pn7

bb.aa:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 88, i64 noundef 8) #25
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
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtB6_12LakeFSClient13delete_branch0B8_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [72 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 14 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %i.n = alloca [72 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  %i.u = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.6 = alloca [112 x i8], align 8           ; 3 uses
  %i.v = alloca [136 x i8], align 8               ; 9 uses
  %i.w = alloca [272 x i8], align 8               ; 5 uses
  %i.x = alloca [272 x i8], align 8               ; 5 uses
  %i.y = alloca [48 x i8], align 8                ; 10 uses
  %i.z = alloca [24 x i8], align 8                ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 8, !range !182, !noundef !7
  switch i8 %i.ab, label %default.unreachable219 [
    i8 0, label %bb.d
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.q
    i8 4, label %bb.b
  ]

default.unreachable219:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  br label %bb.bn

bb.c:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 129
  store i8 0, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !7, !align !22, !noundef !7 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.af, ptr %i.y, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5.0..sroa_idx, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.ag, ptr %i.aj, align 8
  %.sroa.5147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5147.0..sroa_idx, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr %i.ah, ptr %i.ak, align 8
  %.sroa.5149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5149.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.z, ptr noundef nonnull @33, ptr noundef nonnull %i.y)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.z, i64 24, i1 false), !alias.scope !1541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  invoke void @_RINvMs4_NtNtCsgO6CtM78C4N_7reqwest10async_impl6clientNtB6_6Client6deleteRNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([272 x i8]) align 8 captures(address) dereferenceable(272) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  invoke void @_RINvMs_NtNtCsgO6CtM78C4N_7reqwest10async_impl7requestNtB5_14RequestBuilder10basic_authRNtNtCs6Po7BT7Nknu_5alloc6string6StringB1m_ECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([272 x i8]) align 8 captures(address) dereferenceable(272) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(272) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %i.ap)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB4_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler11pre_execute0B6_:bb.a
  br i1 %i.aa, label %bb.v, label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.f, %bb.i
  %i.ab = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not63 = icmp eq i8 %i.ab, 0
  br i1 %.not63, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.ac = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ad = icmp ult i64 %i.ac, 6
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp samesign ugt i64 %i.ac, 3
  br i1 %i.ae, label %bb.m, label %bb.t

bb.l:                                             ; preds = %bb.m
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.m:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler11pre_execute010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7 ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 32
  %.val21 = load ptr, ptr %i.ah, align 8, !nonnull !7, !noundef !7
  %i.ai = getelementptr i8, ptr %i.ag, i64 40
  %.val22 = load i64, ptr %i.ai, align 8, !noundef !7
  store i64 4, ptr %i.k, align 8, !alias.scope !1579
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.val21, ptr %.sroa.654.0..sroa_idx, align 8, !alias.scope !1579
  %.sroa.855.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.val22, ptr %.sroa.855.0..sroa_idx, align 8, !alias.scope !1579
  %i.aj = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.n unwind label %bb.l       ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0      ; 2 uses
  %i.al = extractvalue { ptr, ptr } %i.aj, 1      ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !invariant.load !7, !nonnull !7
  %i.ao = invoke noundef zeroext i1 %i.an(ptr noundef %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.p:                                             ; preds = %bb.n
  br i1 %i.ao, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.aq = load ptr, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler11pre_execute010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @50, ptr %i.h, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 103 to ptr), ptr %i.as, align 8
  store ptr %i.h, ptr %i.i, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @10, ptr %i.at, align 8
  store i64 1, ptr %i.j, align 8, !alias.scope !1583, !noalias !1586
  %.sroa.4.0..sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx.i29, align 8, !alias.scope !1583, !noalias !1586
  %.sroa.5.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i30, align 8, !alias.scope !1583, !noalias !1586
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.ar, ptr %i.au, align 8, !alias.scope !1583, !noalias !1586
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ag, ptr noundef nonnull %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.al, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p, %bb.k, %bb.j, %bb.aa
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !7, !align !22, !noundef !7 ; 2 uses
  %.val23 = load ptr, ptr %i.ax, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %.val24 = load ptr, ptr %i.ay, align 8          ; 2 uses
  %i.az = atomicrmw add ptr %.val23, i64 1 monotonic, align 8
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %bb.u, label %bb.ac

bb.u:                                             ; preds = %bb.t
  call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.bb = load ptr, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler11pre_execute010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr @50, ptr %i.l, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr inttoptr (i64 103 to ptr), ptr %i.bd, align 8
  store ptr %i.l, ptr %i.m, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @10, ptr %i.be, align 8
  store i64 1, ptr %i.n, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.bc, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %.noexc34 unwind label %bb.z

.noexc34:                                         ; preds = %bb.v
  %i.bf = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1589
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %.noexc34
  %i.bh = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1589 ; 2 uses
  %i.bi = icmp ult i64 %i.bh, 6
  call void @llvm.assume(i1 %i.bi)
  %i.bj = icmp samesign ugt i64 %i.bh, 3
  br i1 %i.bj, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.bk = load ptr, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler11pre_execute010___CALLSITE, align 8, !noalias !1589, !nonnull !7, !align !22, !noundef !7 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !7, !noundef !7
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !7
  store i64 4, ptr %i.b, align 8, !noalias !1589
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.bm, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !1589
  %.sroa.5.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.bo, ptr %.sroa.5.0..sroa_idx.i33, align 8, !noalias !1589
  %i.bp = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc35 unwind label %bb.z   ; 2 uses

.noexc35:                                         ; preds = %bb.x
  %i.bq = extractvalue { ptr, ptr } %i.bp, 0      ; 2 uses
  %i.br = extractvalue { ptr, ptr } %i.bp, 1      ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !invariant.load !7, !nonnull !7
  %i.bu = invoke noundef zeroext i1 %i.bt(ptr noundef %i.bq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b) #26
          to label %.noexc36 unwind label %bb.z, !inline_history !1592

.noexc36:                                         ; preds = %.noexc35
  br i1 %i.bu, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %.noexc36
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bk, ptr noundef nonnull %i.bq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.br, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %bb.y, %.noexc35, %bb.x, %bb.v
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.aa:                                            ; preds = %.noexc36, %bb.w, %.noexc34, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.t

bb.ab:                                            ; preds = %bb.ac
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.ac:                                            ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val24) ]
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.val24, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !7, !nonnull !7
  %i.ca = invoke { ptr, ptr } %i.bz(ptr noundef nonnull %.val23)
          to label %bb.ad unwind label %bb.ab     ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %i.cb = extractvalue { ptr, ptr } %i.ca, 0      ; 3 uses
  %i.cc = extractvalue { ptr, ptr } %i.ca, 1      ; 4 uses
  store ptr %i.cb, ptr %i.bx, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.cc, ptr %i.cd, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb), "nonnull"(ptr %i.cc) ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !range !59, !invariant.load !7
  %i.cg = add nsw i64 %i.cf, -1
  %i.ch = and i64 %i.cg, -16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cc, i64 24
  %.val27 = load ptr, ptr %i.ck, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void %.val27(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.cj) #26
          to label %bb.ag unwind label %bb.af, !inline_history !1593

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit: ; preds = %bb.aw, %bb.aq, %bb.ap, %bb.af
  %.pn11.pn = phi { ptr, i32 } [ %i.cp, %bb.af ], [ %i.dh, %bb.aw ], [ %i.cx, %bb.ap ], [ %i.cx, %bb.aq ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1594)
  call void @llvm.experimental.noalias.scope.decl(metadata !1597)
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !1600, !nonnull !7, !noundef !7
  %i.cn = atomicrmw sub ptr %i.cm, i64 1 release, align 8, !noalias !1600
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.ae:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs4m0Tg8nAduX_20datafusion_execution(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cl) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.ay

bb.af:                                            ; preds = %bb.ad
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit

bb.ag:                                            ; preds = %bb.ad
  %i.cq = load i128, ptr %i.a, align 16, !noundef !7
  %.not = icmp eq i128 %i.cq, -55836113038573738235370198513345853248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !1601)
  call void @llvm.experimental.noalias.scope.decl(metadata !1604)
  %i.cr = load ptr, ptr %i.bx, align 8, !alias.scope !1607, !nonnull !7, !noundef !7
  %i.cs = atomicrmw sub ptr %i.cr, i64 1 release, align 8, !noalias !1607
  %i.ct = icmp eq i64 %i.cs, 1
  br i1 %i.ct, label %bb.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit41

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs4m0Tg8nAduX_20datafusion_execution(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bx) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit41 unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ag
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.cj, ptr %i.cu, align 8
  %.sroa.761.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.761.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1016
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.ar

bb.ak:                                            ; preds = %bb.ax, %bb.ai
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit41: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RINvMs0_NtCs14kWLkQVSKO_14deltalake_core6errorsNtB6_15DeltaTableError7genericReECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 67)
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit41
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.am:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.e, ptr noundef nonnull align 16 dereferenceable(96) %i.d, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit47

common.ret:                                       ; preds = %bb.at, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit47
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit47 ], [ 3, %bb.at ]
  store i8 %storemerge, ptr %i.o, align 8
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit47: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit45, %bb.ax, %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.e, i64 96, i1 false)
  br label %common.ret

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit, %bb.ae, %bb.l, %bb.r, %bb.o, %bb.ab, %bb.ak, %bb.e, %bb.g, %bb.z, %bb.al
  %.pn14.pn = phi { ptr, i32 } [ %.pn11.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit ], [ %i.cw, %bb.al ], [ %i.bv, %bb.z ], [ %i.cv, %bb.ak ], [ %i.bw, %bb.ab ], [ %i.ap, %bb.o ], [ %i.af, %bb.l ], [ %i.y, %bb.g ], [ %i.av, %bb.r ], [ %i.w, %bb.e ], [ %.pn11.pn, %bb.ae ]
  store i8 2, ptr %i.o, align 8
  resume { ptr, i32 } %.pn14.pn

bb.an:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #27
  unreachable

bb.ao:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #27
  unreachable

bb.ap:                                            ; preds = %bb.ar
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 1016
  %i.cz = load i8, ptr %i.cy, align 8, !range !178, !noundef !7
  %cond.i = icmp eq i8 %i.cz, 3
  br i1 %cond.i, label %bb.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit

bb.aq:                                            ; preds = %bb.ap
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBN_12LakeFSClient13create_branch0EBP_(ptr noundef nonnull align 8 %i.da)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit unwind label %bb.ay

bb.ar:                                            ; preds = %bb.a, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke fastcc void @_RNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtB4_14LakeFSLogStore11pre_execute0B6_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.f, ptr noundef nonnull align 8 %i.db, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.as unwind label %bb.ap

bb.as:                                            ; preds = %bb.ar
  %i.dc = load i64, ptr %i.f, align 16, !range !1608, !noundef !7
  %i.dd = icmp eq i64 %i.dc, -9223372036854775710
  br i1 %i.dd, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 -9223372036854775710, ptr %0, align 16
  br label %common.ret

bb.au:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.e, ptr noundef nonnull align 16 dereferenceable(96) %i.f, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 1016
  %i.df = load i8, ptr %i.de, align 8, !range !178, !noundef !7
  %cond.i43 = icmp eq i8 %i.df, 3
  br i1 %cond.i43, label %bb.av, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit45

bb.av:                                            ; preds = %bb.au
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBN_12LakeFSClient13create_branch0EBP_(ptr noundef nonnull align 8 %i.dg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit45 unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit45: ; preds = %bb.au, %bb.av
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1609)
  call void @llvm.experimental.noalias.scope.decl(metadata !1612)
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !1615, !nonnull !7, !noundef !7
  %i.dk = atomicrmw sub ptr %i.dj, i64 1 release, align 8, !noalias !1615
  %i.dl = icmp eq i64 %i.dk, 1
  br i1 %i.dl, label %bb.ax, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit47

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit45
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs4m0Tg8nAduX_20datafusion_execution(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.di) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit47 unwind label %bb.ak

bb.ay:                                            ; preds = %bb.aq, %bb.ae
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB4_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler12post_execute0B6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [72 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [96 x i8], align 16               ; 5 uses
  %i.i = alloca [16 x i8], align 1                ; 5 uses
  %.sroa.3 = alloca [64 x i8], align 8            ; 2 uses
  %i.j = alloca [72 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 1                ; 5 uses
  %i.l = alloca [72 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 12 uses
  %.sroa.086 = alloca [48 x i8], align 8          ; 3 uses
  %i.n = alloca [96 x i8], align 16               ; 11 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [72 x i8], align 8                ; 9 uses
  %i.q = alloca [24 x i8], align 8                ; 9 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [32 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 6 uses
  %i.w = alloca [16 x i8], align 8                ; 6 uses
end_hunk_1
begin_hunk_2_@_RNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB4_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler12post_execute0B6_:bb.a
  br i1 %i.am, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.g, %bb.j
  %i.an = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not96 = icmp eq i8 %i.an, 0
  br i1 %.not96, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.ao = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 6
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp samesign ugt i64 %i.ao, 3
  br i1 %i.aq, label %bb.n, label %bb.u

bb.m:                                             ; preds = %bb.n
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.n:                                             ; preds = %bb.l
  %i.as = load ptr, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler12post_execute010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7 ; 3 uses
  %i.at = getelementptr i8, ptr %i.as, i64 32
  %.val31 = load ptr, ptr %i.at, align 8, !nonnull !7, !noundef !7
  %i.au = getelementptr i8, ptr %i.as, i64 40
  %.val32 = load i64, ptr %i.au, align 8, !noundef !7
  store i64 4, ptr %i.u, align 8, !alias.scope !1616
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.val31, ptr %.sroa.684.0..sroa_idx, align 8, !alias.scope !1616
  %.sroa.885.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %.val32, ptr %.sroa.885.0..sroa_idx, align 8, !alias.scope !1616
  %i.av = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.o unwind label %bb.m       ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.aw = extractvalue { ptr, ptr } %i.av, 0      ; 2 uses
  %i.ax = extractvalue { ptr, ptr } %i.av, 1      ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !invariant.load !7, !nonnull !7
  %i.ba = invoke noundef zeroext i1 %i.az(ptr noundef %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.q:                                             ; preds = %bb.o
  br i1 %i.ba, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.bc = load ptr, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler12post_execute010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr @54, ptr %i.r, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr inttoptr (i64 105 to ptr), ptr %i.be, align 8
  store ptr %i.r, ptr %i.s, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @10, ptr %i.bf, align 8
  store i64 1, ptr %i.t, align 8, !alias.scope !1620, !noalias !1623
  %.sroa.4.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx.i41, align 8, !alias.scope !1620, !noalias !1623
  %.sroa.5.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i42, align 8, !alias.scope !1620, !noalias !1623
  %i.bg = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %i.bd, ptr %i.bg, align 8, !alias.scope !1620, !noalias !1623
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.as, ptr noundef nonnull %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ax, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.t)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q, %bb.l, %bb.k, %bb.ab
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 984
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !7, !align !22, !noundef !7 ; 2 uses
  %.val33 = load ptr, ptr %i.bj, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %.val34 = load ptr, ptr %i.bk, align 8          ; 2 uses
  %i.bl = atomicrmw add ptr %.val33, i64 1 monotonic, align 8
  %i.bm = icmp slt i64 %i.bl, 0
  br i1 %i.bm, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %bb.u
  call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.bn = load ptr, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler12post_execute010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr @54, ptr %i.v, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr inttoptr (i64 105 to ptr), ptr %i.bp, align 8
  store ptr %i.v, ptr %i.w, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @10, ptr %i.bq, align 8
  store i64 1, ptr %i.x, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.w, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %i.bo, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x)
          to label %.noexc46 unwind label %bb.aa

.noexc46:                                         ; preds = %bb.w
  %i.br = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1626
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %.noexc46
  %i.bt = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1626 ; 2 uses
  %i.bu = icmp ult i64 %i.bt, 6
  call void @llvm.assume(i1 %i.bu)
  %i.bv = icmp samesign ugt i64 %i.bt, 3
  br i1 %i.bv, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.bw = load ptr, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler12post_execute010___CALLSITE, align 8, !noalias !1626, !nonnull !7, !align !22, !noundef !7 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !7, !noundef !7
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.ca = load i64, ptr %i.bz, align 8, !noundef !7
  store i64 4, ptr %i.f, align 8, !noalias !1626
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.by, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !1626
  %.sroa.5.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.ca, ptr %.sroa.5.0..sroa_idx.i45, align 8, !noalias !1626
  %i.cb = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc47 unwind label %bb.aa  ; 2 uses

.noexc47:                                         ; preds = %bb.y
  %i.cc = extractvalue { ptr, ptr } %i.cb, 0      ; 2 uses
  %i.cd = extractvalue { ptr, ptr } %i.cb, 1      ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !invariant.load !7, !nonnull !7
  %i.cg = invoke noundef zeroext i1 %i.cf(ptr noundef %i.cc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f) #26
          to label %.noexc48 unwind label %bb.aa, !inline_history !1629

.noexc48:                                         ; preds = %.noexc47
  br i1 %i.cg, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %.noexc48
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bw, ptr noundef nonnull %i.cc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cd, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x)
          to label %bb.ab unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.noexc47, %bb.y, %bb.w
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.ab:                                            ; preds = %.noexc48, %bb.x, %.noexc46, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.u

bb.ac:                                            ; preds = %bb.ad
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.ad:                                            ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val34) ]
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.val34, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !7, !nonnull !7
  %i.cm = invoke { ptr, ptr } %i.cl(ptr noundef nonnull %.val33)
          to label %bb.ae unwind label %bb.ac     ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.cn = extractvalue { ptr, ptr } %i.cm, 0      ; 3 uses
  %i.co = extractvalue { ptr, ptr } %i.cm, 1      ; 4 uses
  store ptr %i.cn, ptr %i.cj, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.co, ptr %i.cp, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cn), "nonnull"(ptr %i.co) ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !range !59, !invariant.load !7
  %i.cs = add nsw i64 %i.cr, -1
  %i.ct = and i64 %i.cs, -16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ct ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cw = getelementptr i8, ptr %i.co, i64 24
  %.val37 = load ptr, ptr %i.cw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void %.val37(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noundef nonnull %i.cv) #26
          to label %bb.ai unwind label %bb.ah, !inline_history !1593

bb.af:                                            ; preds = %bb.cb, %.body, %bb.ah
  %.pn17.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn17.pn.pn.pn.pn, %bb.cb ], [ %eh.lpad-body, %.body ], [ %i.db, %bb.ah ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1630)
  call void @llvm.experimental.noalias.scope.decl(metadata !1633)
  %i.cy = load ptr, ptr %i.cx, align 8, !alias.scope !1636, !nonnull !7, !noundef !7
  %i.cz = atomicrmw sub ptr %i.cy, i64 1 release, align 8, !noalias !1636
  %i.da = icmp eq i64 %i.cz, 1
  br i1 %i.da, label %bb.ag, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.ag:                                            ; preds = %bb.af
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs4m0Tg8nAduX_20datafusion_execution(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cx) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.bi

bb.ah:                                            ; preds = %bb.ae
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ai:                                            ; preds = %bb.ae
  %i.dc = load i128, ptr %i.e, align 16, !noundef !7
  %.not = icmp eq i128 %i.dc, -55836113038573738235370198513345853248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %.not, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !1637)
  call void @llvm.experimental.noalias.scope.decl(metadata !1640)
  %i.dd = load ptr, ptr %i.cj, align 8, !alias.scope !1643, !nonnull !7, !noundef !7
  %i.de = atomicrmw sub ptr %i.dd, i64 1 release, align 8, !noalias !1643
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.ak, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit53

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs4m0Tg8nAduX_20datafusion_execution(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cj) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit53 unwind label %bb.bg

bb.al:                                            ; preds = %bb.aq
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.an, %bb.al
  %eh.lpad-body = phi { ptr, i32 } [ %i.dg, %bb.al ], [ %i.do, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.af

bb.am:                                            ; preds = %bb.ai
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 896 ; 2 uses
  store ptr %i.cv, ptr %i.dh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.di = getelementptr inbounds nuw i8, ptr %i.cu, i64 328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.dj = getelementptr i8, ptr %i.cu, i64 248
  %.val38 = load ptr, ptr %i.dj, align 8, !nonnull !7, !noundef !7
  %i.dk = getelementptr i8, ptr %i.cu, i64 256
  %.val39 = load i64, ptr %i.dk, align 8, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1644
  store i64 0, ptr %i.d, align 8, !noalias !1644
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1644
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !1644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1644
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 1610612768, ptr %i.dl, align 8, !noalias !1644
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !1644
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !noalias !1644
  store ptr %i.d, ptr %i.c, align 8, !noalias !1644
  %i.dm = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @186, ptr %i.dm, align 8, !noalias !1644
  %i.dn = invoke noundef zeroext i1 @_RNvXsi_NtCsbvkFyIu7lgC_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val38, i64 noundef %.val39, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNvXs2_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt.exit.i.i unwind label %bb.an, !noalias !1644

bb.an:                                            ; preds = %bb.ao, %bb.am
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #22
          to label %.body unwind label %bb.ap, !noalias !1644

_RNvXs2_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt.exit.i.i: ; preds = %bb.am
  br i1 %i.dn, label %bb.ao, label %bb.aq, !prof !834

bb.ao:                                            ; preds = %_RNvXs2_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt.exit.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #28
          to label %.noexc.i.i unwind label %bb.an, !noalias !1644

.noexc.i.i:                                       ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1644
  unreachable

bb.aq:                                            ; preds = %_RNvXs2_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1644
  invoke void @_RNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtB4_12LakeFSClient13decompose_url(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.di, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
          to label %bb.ar unwind label %bb.al

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i8 1, ptr %i.ab, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dq)
          to label %.body54 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.ar
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.au

bb.au:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %.body54

.body54:                                          ; preds = %bb.as, %bb.au
  %eh.lpad-body55 = phi { ptr, i32 } [ %i.dt, %bb.au ], [ %i.dr, %bb.as ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.du) #22
          to label %.body59 unwind label %bb.bi

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i58 unwind label %bb.av

bb.av:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dv)
          to label %.body59 unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i58: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit62 unwind label %bb.ax

.body59:                                          ; preds = %bb.ax, %bb.av, %.body54
  %.pn12 = phi { ptr, i32 } [ %eh.lpad-body55, %.body54 ], [ %i.dy, %bb.ax ], [ %i.dw, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.bk

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i58
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.body59

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit62: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.dz = load ptr, ptr %i.dh, align 8, !nonnull !7, !align !22, !noundef !7
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 312 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i8 0, ptr %i.ab, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false)
  invoke void @_RNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtB4_12LakeFSClient15get_transaction(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ea, ptr noalias noundef nonnull readonly align 1 captures(address) dereferenceable(16) %i.k)
          to label %bb.az unwind label %bb.ay
end_hunk_2
begin_hunk_3_@_RNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB4_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler22after_post_commit_hook0B6_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1313
  %i.p = load i8, ptr %i.o, align 1, !range !180, !noundef !7
  %i.q = trunc nuw i8 %i.p to i1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  br i1 %i.q, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.r = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.s = icmp samesign ult i64 %i.r, 2
  br i1 %i.s, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.t = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler22after_post_commit_hook010___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.u = icmp ult i8 %i.t, 3
  br i1 %i.u, label %bb.g, label %bb.e, !prof !1143

bb.e:                                             ; preds = %bb.d
  %i.v = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler22after_post_commit_hook010___CALLSITE) #23
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.i31 = phi i8 [ %i.t, %bb.d ], [ %i.v, %bb.e ] ; 2 uses
  %i.x = icmp eq i8 %.sroa.0.0.i31, 0
  br i1 %i.x, label %bb.k, label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.i:                                             ; preds = %bb.g
  %i.z = load ptr, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler22after_post_commit_hook010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7
  %i.aa = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.z, i8 noundef %.sroa.0.0.i31)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  br i1 %i.aa, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.g, %bb.j
  %i.ab = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not71 = icmp eq i8 %i.ab, 0
  br i1 %.not71, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.ac = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ad = icmp ult i64 %i.ac, 6
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp samesign ugt i64 %i.ac, 3
  br i1 %i.ae, label %bb.n, label %bb.u

bb.m:                                             ; preds = %bb.n
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.n:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler22after_post_commit_hook010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7 ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 32
  %.val24 = load ptr, ptr %i.ah, align 8, !nonnull !7, !noundef !7
  %i.ai = getelementptr i8, ptr %i.ag, i64 40
  %.val25 = load i64, ptr %i.ai, align 8, !noundef !7
  store i64 4, ptr %i.h, align 8, !alias.scope !1675
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.val24, ptr %.sroa.652.0..sroa_idx, align 8, !alias.scope !1675
  %.sroa.853.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.val25, ptr %.sroa.853.0..sroa_idx, align 8, !alias.scope !1675
  %i.aj = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.o unwind label %bb.m       ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0      ; 2 uses
  %i.al = extractvalue { ptr, ptr } %i.aj, 1      ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !invariant.load !7, !nonnull !7
  %i.ao = invoke noundef zeroext i1 %i.an(ptr noundef %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.q:                                             ; preds = %bb.o
  br i1 %i.ao, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.aq = load ptr, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler22after_post_commit_hook010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @56, ptr %i.e, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 107 to ptr), ptr %i.as, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @10, ptr %i.at, align 8
  store i64 1, ptr %i.g, align 8, !alias.scope !1679, !noalias !1682
  %.sroa.4.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx.i32, align 8, !alias.scope !1679, !noalias !1682
  %.sroa.5.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i33, align 8, !alias.scope !1679, !noalias !1682
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.ar, ptr %i.au, align 8, !alias.scope !1679, !noalias !1682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ag, ptr noundef nonnull %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.al, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q, %bb.l, %bb.k, %bb.y
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 1304
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !7, !align !22, !noundef !7 ; 2 uses
  %.val26 = load ptr, ptr %i.ax, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %.val27 = load ptr, ptr %i.ay, align 8          ; 2 uses
  %i.az = atomicrmw add ptr %.val26, i64 1 monotonic, align 8
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.bb = load ptr, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler22after_post_commit_hook010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @56, ptr %i.i, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 107 to ptr), ptr %i.bd, align 8
  store ptr %i.i, ptr %i.j, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @10, ptr %i.be, align 8
  store i64 1, ptr %i.k, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.j, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.bc, ptr %.sroa.8.0..sroa_idx, align 8
  invoke fastcc void @_RNCNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler22after_post_commit_hook00B8_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.k)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.u

bb.z:                                             ; preds = %bb.aa
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.aa:                                            ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27) ]
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val27, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !invariant.load !7, !nonnull !7
  %i.bk = invoke { ptr, ptr } %i.bj(ptr noundef nonnull %.val26)
          to label %bb.ab unwind label %bb.z      ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.bl = extractvalue { ptr, ptr } %i.bk, 0      ; 3 uses
  %i.bm = extractvalue { ptr, ptr } %i.bk, 1      ; 4 uses
  store ptr %i.bl, ptr %i.bh, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.bm, ptr %i.bn, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bl), "nonnull"(ptr %i.bm) ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !range !59, !invariant.load !7
  %i.bq = add nsw i64 %i.bp, -1
  %i.br = and i64 %i.bq, -16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bm, i64 24
  %.val30 = load ptr, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void %.val30(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.bt) #26
          to label %bb.af unwind label %bb.ae, !inline_history !1593

bb.ac:                                            ; preds = %bb.ao, %bb.at, %bb.ae
  %.pn11.pn = phi { ptr, i32 } [ %i.bz, %bb.ae ], [ %i.cl, %bb.at ], [ %i.ch, %bb.ao ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1685)
  call void @llvm.experimental.noalias.scope.decl(metadata !1688)
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !1691, !nonnull !7, !noundef !7
  %i.bx = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !1691
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs4m0Tg8nAduX_20datafusion_execution(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bv) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.ax

bb.ae:                                            ; preds = %bb.ab
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.af:                                            ; preds = %bb.ab
  %i.ca = load i128, ptr %i.a, align 16, !noundef !7
  %.not = icmp eq i128 %i.ca, -55836113038573738235370198513345853248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !1692)
  call void @llvm.experimental.noalias.scope.decl(metadata !1695)
  %i.cb = load ptr, ptr %i.bh, align 8, !alias.scope !1698, !nonnull !7, !noundef !7
  %i.cc = atomicrmw sub ptr %i.cb, i64 1 release, align 8, !noalias !1698
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.ah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit39

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs4m0Tg8nAduX_20datafusion_execution(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bh) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit39 unwind label %bb.aj

bb.ai:                                            ; preds = %bb.af
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull align 1 dereferenceable(16) %i.l, i64 16, i1 false)
  %.sroa.762.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr %i.bt, ptr %.sroa.762.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 228
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 4
  br label %bb.ap

bb.aj:                                            ; preds = %bb.av, %bb.ah
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit39: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvMs0_NtCs14kWLkQVSKO_14deltalake_core6errorsNtB6_15DeltaTableError7genericReECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 67)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit39
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.al:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit39
  %.sroa.065.0.copyload = load i64, ptr %i.c, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit42

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit42: ; preds = %bb.au, %bb.av, %bb.al
  %.sroa.065.0 = phi i64 [ %.sroa.065.0.copyload, %bb.al ], [ %i.cj, %bb.av ], [ %i.cj, %bb.au ] ; 2 uses
  %.not.i40 = icmp eq i64 %.sroa.065.0, -9223372036854775711
  br i1 %.not.i40, label %.sink.split, label %bb.aw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.ak, %bb.aj, %bb.z, %bb.ad, %bb.ac, %bb.m, %bb.s, %bb.p, %bb.f, %bb.h, %bb.x
  %.pn17.pn = phi { ptr, i32 } [ %i.y, %bb.h ], [ %i.bf, %bb.x ], [ %i.af, %bb.m ], [ %i.w, %bb.f ], [ %i.av, %bb.s ], [ %i.ap, %bb.p ], [ %.pn11.pn, %bb.ad ], [ %.pn11.pn, %bb.ac ], [ %i.cg, %bb.ak ], [ %i.cf, %bb.aj ], [ %i.bg, %bb.z ]
  store i8 2, ptr %i.m, align 8
  resume { ptr, i32 } %.pn17.pn

bb.am:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #27
  unreachable

bb.an:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #27
  unreachable

bb.ao:                                            ; preds = %bb.ap
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore12commit_merge0EBN_(ptr noundef nonnull align 8 %i.ci) #22
          to label %bb.ac unwind label %bb.ax

bb.ap:                                            ; preds = %bb.a, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  invoke fastcc void @_RNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtB4_14LakeFSLogStore12commit_merge0B6_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.d, ptr noundef nonnull align 8 %i.ci, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.aq unwind label %bb.ao

bb.aq:                                            ; preds = %bb.ap
  %i.cj = load i64, ptr %i.d, align 16, !range !1608, !noundef !7 ; 3 uses
  %i.ck = icmp eq i64 %i.cj, -9223372036854775710
  br i1 %i.ck, label %bb.ar, label %bb.as

common.ret:                                       ; preds = %.sink.split, %bb.ar
  %storemerge = phi i8 [ 1, %.sink.split ], [ 3, %bb.ar ]
  store i8 %storemerge, ptr %i.m, align 8
  ret void

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 -9223372036854775710, ptr %0, align 16
  br label %common.ret

bb.as:                                            ; preds = %bb.aq
  %.sroa.4.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx67, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore12commit_merge0EBN_(ptr noundef nonnull align 8 %i.ci)
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.au:                                            ; preds = %bb.as
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1699)
  call void @llvm.experimental.noalias.scope.decl(metadata !1702)
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !1705, !nonnull !7, !noundef !7
  %i.co = atomicrmw sub ptr %i.cn, i64 1 release, align 8, !noalias !1705
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.av, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit42

bb.av:                                            ; preds = %bb.au
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs4m0Tg8nAduX_20datafusion_execution(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cm) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit42 unwind label %bb.aj

.sink.split:                                      ; preds = %bb.aw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit42, %bb.b
  %.sroa.0.0 = phi i64 [ -9223372036854775711, %bb.b ], [ %.sroa.065.0, %bb.aw ], [ -9223372036854775711, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit42 ]
  store i64 %.sroa.0.0, ptr %0, align 16
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3, i64 88, i1 false)
  br label %common.ret

bb.aw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4, i64 88, i1 false)
  br label %.sink.split

bb.ax:                                            ; preds = %bb.ad, %bb.ao
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB4_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler23before_post_commit_hook0B6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 6 uses
  %.sroa.4 = alloca [88 x i8], align 8            ; 3 uses
  %i.d = alloca [96 x i8], align 16               ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 2 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.3 = alloca [88 x i8], align 8            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 3 uses
  %i.n = load i8, ptr %i.m, align 8, !range !178, !noundef !7
  switch i8 %i.n, label %default.unreachable77 [
    i8 0, label %bb.b
    i8 1, label %bb.al
    i8 2, label %bb.am
    i8 3, label %bb.ap
  ]

default.unreachable77:                            ; preds = %bb.a
end_hunk_3
begin_hunk_4_@_RNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB4_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler23before_post_commit_hook0B6_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1025
  %i.p = load i8, ptr %i.o, align 1, !range !180, !noundef !7
  %i.q = trunc nuw i8 %i.p to i1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  br i1 %i.q, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.r = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.s = icmp samesign ult i64 %i.r, 2
  br i1 %i.s, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.t = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler23before_post_commit_hook010___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.u = icmp ult i8 %i.t, 3
  br i1 %i.u, label %bb.g, label %bb.e, !prof !1143

bb.e:                                             ; preds = %bb.d
  %i.v = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler23before_post_commit_hook010___CALLSITE) #23
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.i31 = phi i8 [ %i.t, %bb.d ], [ %i.v, %bb.e ] ; 2 uses
  %i.x = icmp eq i8 %.sroa.0.0.i31, 0
  br i1 %i.x, label %bb.k, label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.i:                                             ; preds = %bb.g
  %i.z = load ptr, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler23before_post_commit_hook010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7
  %i.aa = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.z, i8 noundef %.sroa.0.0.i31)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  br i1 %i.aa, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.g, %bb.j
  %i.ab = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not75 = icmp eq i8 %i.ab, 0
  br i1 %.not75, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.ac = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ad = icmp ult i64 %i.ac, 6
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp samesign ugt i64 %i.ac, 3
  br i1 %i.ae, label %bb.n, label %bb.u

bb.m:                                             ; preds = %bb.n
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.n:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler23before_post_commit_hook010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7 ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 32
  %.val24 = load ptr, ptr %i.ah, align 8, !nonnull !7, !noundef !7
  %i.ai = getelementptr i8, ptr %i.ag, i64 40
  %.val25 = load i64, ptr %i.ai, align 8, !noundef !7
  store i64 4, ptr %i.i, align 8, !alias.scope !1706
  %.sroa.656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.val24, ptr %.sroa.656.0..sroa_idx, align 8, !alias.scope !1706
  %.sroa.857.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.val25, ptr %.sroa.857.0..sroa_idx, align 8, !alias.scope !1706
  %i.aj = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.o unwind label %bb.m       ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0      ; 2 uses
  %i.al = extractvalue { ptr, ptr } %i.aj, 1      ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !invariant.load !7, !nonnull !7
  %i.ao = invoke noundef zeroext i1 %i.an(ptr noundef %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.q:                                             ; preds = %bb.o
  br i1 %i.ao, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.aq = load ptr, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler23before_post_commit_hook010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @58, ptr %i.f, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 105 to ptr), ptr %i.as, align 8
  store ptr %i.f, ptr %i.g, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @10, ptr %i.at, align 8
  store i64 1, ptr %i.h, align 8, !alias.scope !1710, !noalias !1713
  %.sroa.4.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx.i32, align 8, !alias.scope !1710, !noalias !1713
  %.sroa.5.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i33, align 8, !alias.scope !1710, !noalias !1713
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.ar, ptr %i.au, align 8, !alias.scope !1710, !noalias !1713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ag, ptr noundef nonnull %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.al, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q, %bb.l, %bb.k, %bb.y
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 1016
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !7, !align !22, !noundef !7 ; 2 uses
  %.val26 = load ptr, ptr %i.ax, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %.val27 = load ptr, ptr %i.ay, align 8          ; 2 uses
  %i.az = atomicrmw add ptr %.val26, i64 1 monotonic, align 8
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.bb = load ptr, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler23before_post_commit_hook010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr @58, ptr %i.j, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 105 to ptr), ptr %i.bd, align 8
  store ptr %i.j, ptr %i.k, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @10, ptr %i.be, align 8
  store i64 1, ptr %i.l, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.bc, ptr %.sroa.8.0..sroa_idx, align 8
  invoke fastcc void @_RNCNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler23before_post_commit_hook00B8_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.l)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.u

bb.z:                                             ; preds = %bb.aa
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.aa:                                            ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27) ]
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val27, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !invariant.load !7, !nonnull !7
  %i.bk = invoke { ptr, ptr } %i.bj(ptr noundef nonnull %.val26)
          to label %bb.ab unwind label %bb.z      ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.bl = extractvalue { ptr, ptr } %i.bk, 0      ; 3 uses
  %i.bm = extractvalue { ptr, ptr } %i.bk, 1      ; 4 uses
  store ptr %i.bl, ptr %i.bh, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.bm, ptr %i.bn, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bl), "nonnull"(ptr %i.bm) ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !range !59, !invariant.load !7
  %i.bq = add nsw i64 %i.bp, -1
  %i.br = and i64 %i.bq, -16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bm, i64 24
  %.val30 = load ptr, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void %.val30(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.bt) #26
          to label %bb.ae unwind label %bb.ad, !inline_history !1593

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit: ; preds = %bb.au, %bb.ao, %bb.an, %bb.ad
  %.pn11.pn = phi { ptr, i32 } [ %i.bz, %bb.ad ], [ %i.cr, %bb.au ], [ %i.ch, %bb.an ], [ %i.ch, %bb.ao ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1716)
  call void @llvm.experimental.noalias.scope.decl(metadata !1719)
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !1722, !nonnull !7, !noundef !7
  %i.bx = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !1722
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs4m0Tg8nAduX_20datafusion_execution(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bv) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.ax

bb.ad:                                            ; preds = %bb.ab
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit

bb.ae:                                            ; preds = %bb.ab
  %i.ca = load i128, ptr %i.a, align 16, !noundef !7
  %.not = icmp eq i128 %i.ca, -55836113038573738235370198513345853248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !1723)
  call void @llvm.experimental.noalias.scope.decl(metadata !1726)
  %i.cb = load ptr, ptr %i.bh, align 8, !alias.scope !1729, !nonnull !7, !noundef !7
  %i.cc = atomicrmw sub ptr %i.cb, i64 1 release, align 8, !noalias !1729
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.ag, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit39

bb.ag:                                            ; preds = %bb.af
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs4m0Tg8nAduX_20datafusion_execution(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bh) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit39 unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ae
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.bt, ptr %i.ce, align 8
  %.sroa.766.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.766.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1000
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.ap

bb.ai:                                            ; preds = %bb.av, %bb.ag
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit39: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvMs0_NtCs14kWLkQVSKO_14deltalake_core6errorsNtB6_15DeltaTableError7genericReECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 67)
          to label %bb.ak unwind label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit39
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.ak:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit39
  %.sroa.069.0.copyload = load i64, ptr %i.c, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit46

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit46: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit44, %bb.av, %bb.ak
  %.sroa.069.0 = phi i64 [ %.sroa.069.0.copyload, %bb.ak ], [ %i.cm, %bb.av ], [ %i.cm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit44 ] ; 2 uses
  %.not.i40 = icmp eq i64 %.sroa.069.0, -9223372036854775711
  br i1 %.not.i40, label %.sink.split, label %bb.aw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.aj, %bb.ai, %bb.z, %bb.ac, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit, %bb.m, %bb.s, %bb.p, %bb.f, %bb.h, %bb.x
  %.pn17.pn = phi { ptr, i32 } [ %i.y, %bb.h ], [ %i.bf, %bb.x ], [ %i.af, %bb.m ], [ %i.w, %bb.f ], [ %i.av, %bb.s ], [ %i.ap, %bb.p ], [ %.pn11.pn, %bb.ac ], [ %.pn11.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit ], [ %i.cg, %bb.aj ], [ %i.cf, %bb.ai ], [ %i.bg, %bb.z ]
  store i8 2, ptr %i.m, align 8
  resume { ptr, i32 } %.pn17.pn

bb.al:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #27
  unreachable

bb.am:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #27
  unreachable

bb.an:                                            ; preds = %bb.ap
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 1000
  %i.cj = load i8, ptr %i.ci, align 8, !range !178, !noundef !7
  %cond.i = icmp eq i8 %i.cj, 3
  br i1 %cond.i, label %bb.ao, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit

bb.ao:                                            ; preds = %bb.an
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBN_12LakeFSClient13create_branch0EBP_(ptr noundef nonnull align 8 %i.ck)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit unwind label %bb.ax

bb.ap:                                            ; preds = %bb.a, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke fastcc void @_RNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtB4_14LakeFSLogStore11pre_execute0B6_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.d, ptr noundef nonnull align 8 %i.cl, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.aq unwind label %bb.an

bb.aq:                                            ; preds = %bb.ap
  %i.cm = load i64, ptr %i.d, align 16, !range !1608, !noundef !7 ; 3 uses
  %i.cn = icmp eq i64 %i.cm, -9223372036854775710
  br i1 %i.cn, label %bb.ar, label %bb.as

common.ret:                                       ; preds = %.sink.split, %bb.ar
  %storemerge = phi i8 [ 1, %.sink.split ], [ 3, %bb.ar ]
  store i8 %storemerge, ptr %i.m, align 8
  ret void

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 -9223372036854775710, ptr %0, align 16
  br label %common.ret

bb.as:                                            ; preds = %bb.aq
  %.sroa.4.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx71, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 1000
  %i.cp = load i8, ptr %i.co, align 8, !range !178, !noundef !7
  %cond.i42 = icmp eq i8 %i.cp, 3
  br i1 %cond.i42, label %bb.at, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit44

bb.at:                                            ; preds = %bb.as
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBN_12LakeFSClient13create_branch0EBP_(ptr noundef nonnull align 8 %i.cq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit44 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit44: ; preds = %bb.as, %bb.at
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1730)
  call void @llvm.experimental.noalias.scope.decl(metadata !1733)
  %i.ct = load ptr, ptr %i.cs, align 8, !alias.scope !1736, !nonnull !7, !noundef !7
  %i.cu = atomicrmw sub ptr %i.ct, i64 1 release, align 8, !noalias !1736
  %i.cv = icmp eq i64 %i.cu, 1
  br i1 %i.cv, label %bb.av, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit46

bb.av:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit44
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs4m0Tg8nAduX_20datafusion_execution(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cs) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit46 unwind label %bb.ai

.sink.split:                                      ; preds = %bb.aw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit46, %bb.b
  %.sroa.0.0 = phi i64 [ -9223372036854775711, %bb.b ], [ %.sroa.069.0, %bb.aw ], [ -9223372036854775711, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit46 ]
  store i64 %.sroa.0.0, ptr %0, align 16
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3, i64 88, i1 false)
  br label %common.ret

bb.aw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4, i64 88, i1 false)
  br label %.sink.split

bb.ax:                                            ; preds = %bb.ao, %bb.ac
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not = icmp eq i64 %i.c, 0
  %i.d = lshr i64 %i.b, 1                         ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1737)
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1740)
end_hunk_4
