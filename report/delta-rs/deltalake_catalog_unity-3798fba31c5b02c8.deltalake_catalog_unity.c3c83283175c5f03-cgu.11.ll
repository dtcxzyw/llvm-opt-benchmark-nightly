inline.NumInlined: 1030
inline.NumDeleted: 496
begin_hunk_0_@_RNvMNtCsgO8S5jLFugx_23deltalake_catalog_unity6clientNtB2_13ClientOptions6client:bb.a
  %.sroa.10 = alloca [3 x i8], align 1            ; 2 uses
  %i.i = alloca [1016 x i8], align 8              ; 3 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %2 = alloca [1016 x i8], align 8                ; 4 uses
  %3 = alloca [1016 x i8], align 8                ; 4 uses
  %4 = alloca [1016 x i8], align 8                ; 4 uses
  %i.k = alloca [1016 x i8], align 8              ; 4 uses
  %i.l = alloca [1016 x i8], align 8              ; 4 uses
  %i.m = alloca [1016 x i8], align 8              ; 4 uses
  %i.n = alloca [256 x i8], align 8               ; 7 uses
  %i.o = alloca [256 x i8], align 8               ; 10 uses
  %i.p = alloca [96 x i8], align 8                ; 9 uses
  %5 = alloca [1016 x i8], align 8                ; 5 uses
  %6 = alloca [1016 x i8], align 8                ; 4 uses
  %7 = alloca [1016 x i8], align 8                ; 4 uses
  %i.q = alloca [1016 x i8], align 8              ; 4 uses
  %i.r = alloca [1016 x i8], align 8              ; 4 uses
  %i.s = alloca [1016 x i8], align 8              ; 4 uses
  %i.t = alloca [1016 x i8], align 8              ; 29 uses
end_hunk_0
begin_hunk_1_@_RNvMNtCsgO8S5jLFugx_23deltalake_catalog_unity6clientNtB2_13ClientOptions6client:bb.a
bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1016) %i.r, ptr noundef nonnull align 8 dereferenceable(1016) %i.t, i64 1016, i1 false)
  call void @_RINvMs2_NtNtCsgO6CtM78C4N_7reqwest10async_impl6clientNtB6_13ClientBuilder10user_agentRNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([1016 x i8]) align 8 captures(none) dereferenceable(1016) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1016) %i.r, ptr noundef nonnull align 8 %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1016) %i.t, ptr noundef nonnull align 8 dereferenceable(1016) %i.s, i64 1016, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1016) %7, ptr noundef nonnull align 8 dereferenceable(1016) %i.t, i64 1016, i1 false)
  call void @_RINvMs2_NtNtCsgO6CtM78C4N_7reqwest10async_impl6clientNtB6_13ClientBuilder10user_agentReECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([1016 x i8]) align 8 captures(none) dereferenceable(1016) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1016) %7, ptr noalias noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 30)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1016) %i.t, ptr noundef nonnull align 8 dereferenceable(1016) %i.q, i64 1016, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.e

bb.d:                                             ; preds = %bb.o
end_hunk_1
begin_hunk_2_@_RNvMNtCsgO8S5jLFugx_23deltalake_catalog_unity6clientNtB2_13ClientOptions6client:bb.a
  br i1 %.not148, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1016) %5, ptr noundef nonnull align 8 dereferenceable(1016) %i.t, i64 1016, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !2828)
  call void @llvm.experimental.noalias.scope.decl(metadata !2831)
end_hunk_2
begin_hunk_3_@_RNvMNtCsgO8S5jLFugx_23deltalake_catalog_unity6clientNtB2_13ClientOptions6client:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.x, i64 24, i1 false), !alias.scope !2833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2833
  call void @_RNvMs2_NtNtCsgO6CtM78C4N_7reqwest10async_impl6clientNtB5_13ClientBuilder15default_headers(ptr noalias noundef nonnull sret([1016 x i8]) align 8 captures(none) dereferenceable(1016) %6, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1016) %5, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1016) %i.t, ptr noundef nonnull align 8 dereferenceable(1016) %6, i64 1016, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.l

.body.thread:                                     ; preds = %bb.g, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %.body.thread219
  %eh.lpad-body218 = phi { ptr, i32 } [ %i.ad, %.body.thread219 ], [ %.pn.i, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i ], [ %.pn.i, %bb.g ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client13ClientBuilderECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(1016) %5) #37
          to label %.thread unwind label %bb.n

bb.n:                                             ; preds = %bb.ay, %.thread208, %.body.thread
end_hunk_3
begin_hunk_4_@_RNvMNtCsgO8S5jLFugx_23deltalake_catalog_unity6clientNtB2_13ClientOptions6client:bb.a
  store i64 %.sroa.5125.sroa.6.0.copyload, ptr %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx2.sroa_idx, align 8
  store <2 x ptr> %i.bf, ptr %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx2.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1016) %i.l, ptr noundef nonnull align 8 dereferenceable(1016) %i.t, i64 1016, i1 false)
  call void @_RNvMs2_NtNtCsgO6CtM78C4N_7reqwest10async_impl6clientNtB5_13ClientBuilder5proxy(ptr noalias noundef nonnull sret([1016 x i8]) align 8 captures(none) dereferenceable(1016) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1016) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(256) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1016) %i.t, ptr noundef nonnull align 8 dereferenceable(1016) %i.m, i64 1016, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.p

end_hunk_4
begin_hunk_5_@_RNvMNtCsgO8S5jLFugx_23deltalake_catalog_unity6clientNtB2_13ClientOptions6client:bb.a
bb.ab:                                            ; preds = %bb.aa
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bq = load i64, ptr %i.bp, align 8, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1016) %4, ptr noundef nonnull align 8 dereferenceable(1016) %i.t, i64 1016, i1 false)
  call void @_RINvMs2_NtNtCsgO6CtM78C4N_7reqwest10async_impl6clientNtB6_13ClientBuilder17pool_idle_timeoutNtNtCsbvkFyIu7lgC_4core4time8DurationECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([1016 x i8]) align 8 captures(none) dereferenceable(1016) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1016) %4, i64 noundef %i.bq, i32 noundef %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1016) %i.t, ptr noundef nonnull align 8 dereferenceable(1016) %i.k, i64 1016, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
end_hunk_5
begin_hunk_6_@_RNvMNtCsgO8S5jLFugx_23deltalake_catalog_unity6clientNtB2_13ClientOptions6client:bb.a
bb.af:                                            ; preds = %bb.ae
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.by = load i64, ptr %i.bx, align 8, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1016) %2, ptr noundef nonnull align 8 dereferenceable(1016) %i.t, i64 1016, i1 false)
  call void @_RINvMs2_NtNtCsgO6CtM78C4N_7reqwest10async_impl6clientNtB6_13ClientBuilder25http2_keep_alive_intervalNtNtCsbvkFyIu7lgC_4core4time8DurationECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([1016 x i8]) align 8 captures(none) dereferenceable(1016) %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1016) %2, i64 noundef %i.by, i32 noundef %i.bw)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1016) %i.t, ptr noundef nonnull align 8 dereferenceable(1016) %3, i64 1016, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
end_hunk_6
