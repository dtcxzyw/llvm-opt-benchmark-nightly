Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_datafusion-09ae4ce666a6227b.lance_datafusion.247659090e7cec5-cgu.0?download=true
inline.NumInlined: 35549
inline.NumDeleted: 12223
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast26AttachDuckDBDatabaseOptionENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion:bb.a
  br i1 %i.c, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %bb.b

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !noalias !117451
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.d, align 8, !noalias !117451
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast26AttachDuckDBDatabaseOptionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !117452
  %i.f = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, 17) 8) #71, !noalias !117452 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.b) #72, !noalias !117451
  unreachable

.lr.ph.i:                                         ; preds = %bb.b
  store i64 %.16.val, ptr %i.a, align 8, !noalias !117451
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.h, align 8, !noalias !117451
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw [64 x i8], ptr %.8.val, i64 %.16.val
  %.sroa.0.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 24
  %.sroa.515.0..sroa.0.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 8
  %.sroa.6.0..sroa.0.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 9
  br label %bb.d

bb.d:                                             ; preds = %_RNvXspZ_NtCs40MM8ukkVQd_9sqlparser3astNtB6_26AttachDuckDBDatabaseOptionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i, %.lr.ph.i
  %.sroa.012.044.i = phi ptr [ %.8.val, %.lr.ph.i ], [ %i.m, %_RNvXspZ_NtCs40MM8ukkVQd_9sqlparser3astNtB6_26AttachDuckDBDatabaseOptionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i ] ; 7 uses
  %.sroa.7.043.i = phi i64 [ 0, %.lr.ph.i ], [ %i.n, %_RNvXspZ_NtCs40MM8ukkVQd_9sqlparser3astNtB6_26AttachDuckDBDatabaseOptionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i ] ; 3 uses
  %.sroa.10.042.i = phi i64 [ %.16.val, %.lr.ph.i ], [ %i.k, %_RNvXspZ_NtCs40MM8ukkVQd_9sqlparser3astNtB6_26AttachDuckDBDatabaseOptionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i ]
  %i.k = add nsw i64 %.sroa.10.042.i, -1          ; 2 uses
  %i.l = icmp eq ptr %.sroa.012.044.i, %i.j
  br i1 %i.l, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast26AttachDuckDBDatabaseOptionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i, i64 64
  %i.n = add nuw nsw i64 %.sroa.7.043.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117453)
  %i.o = load i64, ptr %.sroa.012.044.i, align 8, !range !334, !alias.scope !117454, !noalias !117455, !noundef !315
  %.not.i.i = icmp eq i64 %i.o, -1
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i), !noalias !117456
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.0.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.012.044.i)
          to label %.noexc.i unwind label %bb.h, !noalias !117457

.noexc.i:                                         ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i, i64 56
  %i.q = load i32, ptr %i.p, align 8, !range !541, !alias.scope !117454, !noalias !117455, !noundef !315
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.24..sroa_idx.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.r, i64 32, i1 false), !noalias !117455
  %.sroa.013.0.copyload14.i = load i64, ptr %.sroa.0.i.i, align 8, !noalias !117458
  %.sroa.515.0.copyload16.i = load i8, ptr %.sroa.515.0..sroa.0.i.sroa_idx.i, align 8, !noalias !117458
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.6.i, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.6.0..sroa.0.i.sroa_idx.i, i64 47, i1 false), !noalias !117458
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i), !noalias !117456
  br label %_RNvXspZ_NtCs40MM8ukkVQd_9sqlparser3astNtB6_26AttachDuckDBDatabaseOptionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i, i64 8
  %i.t = load i8, ptr %i.s, align 8, !range !391, !alias.scope !117454, !noalias !117455, !noundef !315
  br label %_RNvXspZ_NtCs40MM8ukkVQd_9sqlparser3astNtB6_26AttachDuckDBDatabaseOptionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i

_RNvXspZ_NtCs40MM8ukkVQd_9sqlparser3astNtB6_26AttachDuckDBDatabaseOptionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i: ; preds = %bb.g, %.noexc.i
  %.sroa.617.0.i = phi i32 [ undef, %bb.g ], [ %i.q, %.noexc.i ]
  %.sroa.515.0.i = phi i8 [ %i.t, %bb.g ], [ %.sroa.515.0.copyload16.i, %.noexc.i ]
  %.sroa.013.0.i = phi i64 [ -1, %bb.g ], [ %.sroa.013.0.copyload14.i, %.noexc.i ]
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %i.f, i64 %.sroa.7.043.i ; 4 uses
  %.sroa.531.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.531.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.6.i, i64 47, i1 false), !noalias !117457
  store i64 %.sroa.013.0.i, ptr %i.u, align 8, !noalias !117457
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i8 %.sroa.515.0.i, ptr %.sroa.430.0..sroa_idx.i, align 8, !noalias !117457
  %.sroa.632.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i32 %.sroa.617.0.i, ptr %.sroa.632.0..sroa_idx.i, align 8, !noalias !117457
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  %i.v = icmp eq i64 %i.k, 0
  br i1 %i.v, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast26AttachDuckDBDatabaseOptionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.d

bb.h:                                             ; preds = %bb.f
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.043.i, ptr %i.i, align 8, !noalias !117451
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast26AttachDuckDBDatabaseOptionEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.a) #73, !noalias !117457
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast26AttachDuckDBDatabaseOptionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.d, %_RNvXspZ_NtCs40MM8ukkVQd_9sqlparser3astNtB6_26AttachDuckDBDatabaseOptionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread.i
  %i.w = phi ptr [ %i.e, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread.i ], [ %i.i, %_RNvXspZ_NtCs40MM8ukkVQd_9sqlparser3astNtB6_26AttachDuckDBDatabaseOptionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i ], [ %i.i, %bb.d ]
  store i64 %.16.val, ptr %i.w, align 8, !noalias !117451
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !117450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !117451
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117467)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !117468
  %i.c = shl nuw nsw i64 %.16.val, 6              ; 2 uses
  %i.d = icmp eq i64 %.16.val, 0
  br i1 %i.d, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %bb.b

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !noalias !117468
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !noalias !117468
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !117469
  %i.g = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, 17) 8) #71, !noalias !117469 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.c) #72, !noalias !117468
  unreachable

.lr.ph.i:                                         ; preds = %bb.b
  store i64 %.16.val, ptr %i.b, align 8, !noalias !117468
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.i, align 8, !noalias !117468
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw [64 x i8], ptr %.8.val, i64 %.16.val
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.012.023.i = phi ptr [ %.8.val, %.lr.ph.i ], [ %i.q, %bb.f ] ; 5 uses
  %.sroa.7.022.i = phi i64 [ 0, %.lr.ph.i ], [ %i.p, %bb.f ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %.16.val, %.lr.ph.i ], [ %i.n, %bb.f ]
  %i.n = add nsw i64 %.sroa.10.021.i, -1          ; 2 uses
  %i.o = icmp eq ptr %.sroa.012.023.i, %i.k
  br i1 %i.o, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !117468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117471)
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.012.023.i)
          to label %bb.f unwind label %bb.g, !noalias !117472

bb.f:                                             ; preds = %bb.e
  %i.p = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 56
  %i.s = load i32, ptr %i.r, align 8, !range !541, !alias.scope !117473, !noalias !117474, !noundef !315
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.t, i64 32, i1 false), !alias.scope !117475, !noalias !117472
  store i32 %i.s, ptr %i.m, align 8, !alias.scope !117470, !noalias !117476
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.u, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !117472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !117468
  %i.v = icmp eq i64 %i.n, 0
  br i1 %i.v, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.d

bb.g:                                             ; preds = %bb.e
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.j, align 8, !noalias !117468
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #73, !noalias !117472
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.d, %bb.f, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread.i
  %i.w = phi ptr [ %i.f, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread.i ], [ %i.j, %bb.f ], [ %i.j, %bb.d ]
  store i64 %.16.val, ptr %i.w, align 8, !noalias !117468
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !117467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !117468
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast6ActionENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.518.i = alloca [16 x i8], align 8        ; 4 uses
  %.sroa.514.i = alloca [16 x i8], align 8        ; 4 uses
  %.sroa.510.i = alloca [16 x i8], align 8        ; 4 uses
  %.sroa.5.i = alloca [16 x i8], align 8          ; 4 uses
  %.sroa.56 = alloca [16 x i8], align 8           ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !315, !noundef !315 ; 2 uses
  %i.k = load i64, ptr %i.h, align 8, !noundef !315 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !117500
  %i.l = shl i64 %i.k, 5                          ; 4 uses
  %i.m = icmp ugt i64 %i.k, 576460752303423487
  %.not.i.i = icmp ugt i64 %i.l, 9223372036854775800
  %or.cond.i.i = or i1 %i.m, %.not.i.i
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !317

bb.b:                                             ; preds = %bb.a
  %i.n = icmp eq i64 %i.l, 0
  br i1 %i.n, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread, label %bb.c

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread: ; preds = %bb.b
  %i.o = icmp eq i64 %i.k, 0
  tail call void @llvm.assume(i1 %i.o), !noalias !117500
  store i64 0, ptr %i.g, align 8, !noalias !117500
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.p, align 8, !noalias !117500
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast6ActionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !117501
  %i.r = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.l, i64 noundef range(i64 1, 17) 8) #71, !noalias !117501 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %.lr.ph

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.l) #72, !noalias !117500
  unreachable

.lr.ph:                                           ; preds = %bb.c
  store i64 %i.k, ptr %i.g, align 8, !noalias !117500
  %2 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.r, ptr %2, align 8, !noalias !117500
  %3 = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %4 = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.k
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit
  %.sroa.012.052 = phi ptr [ %i.j, %.lr.ph ], [ %i.v, %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit ] ; 26 uses
  %.sroa.7.050 = phi i64 [ 0, %.lr.ph ], [ %i.w, %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit ] ; 3 uses
  %.sroa.10.049 = phi i64 [ %i.k, %.lr.ph ], [ %i.t, %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit ]
  %i.t = add nsw i64 %.sroa.10.049, -1            ; 2 uses
  %i.u = icmp eq ptr %.sroa.012.052, %4
  br i1 %i.u, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast6ActionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.012.052, i64 32
  %i.w = add nuw nsw i64 %.sroa.7.050, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.56)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117502)
  %i.x = load i8, ptr %.sroa.012.052, align 8, !range !447, !alias.scope !117502, !noalias !117503, !noundef !315 ; 2 uses
  switch i8 %i.x, label %default.unreachable [
    i8 0, label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit
    i8 1, label %bb.g
    i8 2, label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit
    i8 3, label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit
    i8 4, label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit
    i8 5, label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit
    i8 6, label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit
    i8 7, label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit
    i8 8, label %bb.h
    i8 9, label %bb.i
    i8 10, label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit
    i8 11, label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit
    i8 12, label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit
    i8 13, label %bb.j
    i8 14, label %bb.k
    i8 15, label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit
    i8 16, label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit
    i8 17, label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit
    i8 18, label %bb.l
    i8 19, label %bb.m
    i8 20, label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit
    i8 21, label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit
    i8 22, label %bb.n
    i8 23, label %bb.o
    i8 24, label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit
    i8 25, label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit
    i8 26, label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit
    i8 27, label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit
    i8 28, label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit
    i8 29, label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit
    i8 30, label %bb.p
    i8 31, label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit
    i8 32, label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit
    i8 33, label %bb.q
    i8 34, label %bb.r
    i8 35, label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit
    i8 36, label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit
    i8 37, label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit
    i8 38, label %bb.s
    i8 39, label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit
  ]

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.052, i64 1
  %.val35.i = load i8, ptr %i.y, align 1, !range !397, !alias.scope !117502, !noalias !117503, !noundef !315
  br label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.h:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.012.052, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !range !574, !alias.scope !117502, !noalias !117503, !noundef !315
  br label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !117504
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.012.052, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.012.052, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !117505, !noalias !117506, !nonnull !315, !noundef !315
  %i.ae = load i64, ptr %i.ab, align 8, !alias.scope !117505, !noalias !117506, !noundef !315
  invoke fastcc void @_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ad, i64 noundef %i.ae)
          to label %.noexc unwind label %bb.ac, !inline_history !117491

.noexc:                                           ; preds = %bb.i
  %.sroa.031.0.copyload = load i64, ptr %i.b, align 8, !noalias !117507
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.432.0..sroa_idx, i64 16, i1 false), !noalias !117508
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !117504
  br label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.j:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.012.052, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !range !562, !alias.scope !117502, !noalias !117503, !noundef !315
  br label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.k:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.012.052, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !range !562, !alias.scope !117502, !noalias !117503, !noundef !315
  br label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.l:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.012.052, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !range !334, !alias.scope !117502, !noalias !117503, !noundef !315
  %.not24.i = icmp eq i64 %i.ak, -1
  br i1 %.not24.i, label %bb.u, label %bb.t

bb.m:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.012.052, i64 1
  %.val36.i = load i8, ptr %i.al, align 1, !range !565, !alias.scope !117502, !noalias !117503, !noundef !315
  br label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.n:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.012.052, i64 1
  %i.an = load i8, ptr %i.am, align 1, !range !547, !alias.scope !117502, !noalias !117503, !noundef !315
  br label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.o:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.012.052, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !range !548, !alias.scope !117502, !noalias !117503, !noundef !315
  br label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.p:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.510.i)
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.012.052, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !range !334, !alias.scope !117502, !noalias !117503, !noundef !315
  %.not21.i = icmp eq i64 %i.ar, -1
  br i1 %.not21.i, label %bb.w, label %bb.v

bb.q:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !117509
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.012.052, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.012.052, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !117510, !noalias !117511, !nonnull !315, !noundef !315
  %i.av = load i64, ptr %i.as, align 8, !alias.scope !117510, !noalias !117511, !noundef !315
  invoke fastcc void @_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.au, i64 noundef %i.av)
          to label %.noexc3 unwind label %bb.ac, !inline_history !117491

.noexc3:                                          ; preds = %bb.q
  %.sroa.033.0.copyload = load i64, ptr %i.a, align 8, !noalias !117512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.434.0..sroa_idx, i64 16, i1 false), !noalias !117508
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !117509
  br label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.r:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.514.i)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.012.052, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !range !334, !alias.scope !117502, !noalias !117503, !noundef !315
  %.not20.i = icmp eq i64 %i.ax, -1
  br i1 %.not20.i, label %bb.y, label %bb.x

bb.s:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.518.i)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.012.052, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !range !334, !alias.scope !117502, !noalias !117503, !noundef !315
  %.not.i1 = icmp eq i64 %i.az, -1
  br i1 %.not.i1, label %bb.aa, label %bb.z

bb.t:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !117513
  %i.ba = getelementptr i8, ptr %.sroa.012.052, i64 16
  %.val33.i = load ptr, ptr %i.ba, align 8, !alias.scope !117502, !noalias !117503, !nonnull !315, !noundef !315
  %i.bb = getelementptr i8, ptr %.sroa.012.052, i64 24
  %.val34.i = load i64, ptr %i.bb, align 8, !alias.scope !117502, !noalias !117503, !noundef !315
  invoke fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %.val33.i, i64 %.val34.i)
          to label %.noexc4 unwind label %bb.ac, !inline_history !117498

.noexc4:                                          ; preds = %bb.t
  %.sroa.03.0.copyload.i = load i64, ptr %i.c, align 8, !noalias !117513
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i64 16, i1 false), !noalias !117513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !117513
  br label %bb.u

bb.u:                                             ; preds = %.noexc4, %bb.l
  %.sroa.03.0.i = phi i64 [ %.sroa.03.0.copyload.i, %.noexc4 ], [ -1, %bb.l ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !noalias !117508
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.v:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !117513
  %i.bc = getelementptr i8, ptr %.sroa.012.052, i64 16
  %.val31.i = load ptr, ptr %i.bc, align 8, !alias.scope !117502, !noalias !117503, !nonnull !315, !noundef !315
  %i.bd = getelementptr i8, ptr %.sroa.012.052, i64 24
  %.val32.i = load i64, ptr %i.bd, align 8, !alias.scope !117502, !noalias !117503, !noundef !315
  invoke fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr nonnull %.val31.i, i64 %.val32.i)
          to label %.noexc5 unwind label %bb.ac, !inline_history !117498

.noexc5:                                          ; preds = %bb.v
  %.sroa.08.0.copyload.i = load i64, ptr %i.d, align 8, !noalias !117513
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.510.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.510.0..sroa_idx.i, i64 16, i1 false), !noalias !117513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !117513
  br label %bb.w

bb.w:                                             ; preds = %.noexc5, %bb.p
  %.sroa.08.0.i = phi i64 [ %.sroa.08.0.copyload.i, %.noexc5 ], [ -1, %bb.p ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.510.i, i64 16, i1 false), !noalias !117508
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.510.i)
  br label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.x:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !117513
  %i.be = getelementptr i8, ptr %.sroa.012.052, i64 16
  %.val29.i = load ptr, ptr %i.be, align 8, !alias.scope !117502, !noalias !117503, !nonnull !315, !noundef !315
  %i.bf = getelementptr i8, ptr %.sroa.012.052, i64 24
  %.val30.i = load i64, ptr %i.bf, align 8, !alias.scope !117502, !noalias !117503, !noundef !315
  invoke fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr nonnull %.val29.i, i64 %.val30.i)
          to label %.noexc6 unwind label %bb.ac, !inline_history !117498

.noexc6:                                          ; preds = %bb.x
  %.sroa.012.0.copyload.i = load i64, ptr %i.e, align 8, !noalias !117513
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.514.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.514.0..sroa_idx.i, i64 16, i1 false), !noalias !117513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !117513
  br label %bb.y

bb.y:                                             ; preds = %.noexc6, %bb.r
  %.sroa.012.0.i = phi i64 [ %.sroa.012.0.copyload.i, %.noexc6 ], [ -1, %bb.r ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.514.i, i64 16, i1 false), !noalias !117508
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.514.i)
  br label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.z:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !117513
  %i.bg = getelementptr i8, ptr %.sroa.012.052, i64 16
  %.val.i2 = load ptr, ptr %i.bg, align 8, !alias.scope !117502, !noalias !117503, !nonnull !315, !noundef !315
  %i.bh = getelementptr i8, ptr %.sroa.012.052, i64 24
  %.val28.i = load i64, ptr %i.bh, align 8, !alias.scope !117502, !noalias !117503, !noundef !315
  invoke fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr nonnull %.val.i2, i64 %.val28.i)
          to label %.noexc7 unwind label %bb.ac, !inline_history !117498

.noexc7:                                          ; preds = %bb.z
  %.sroa.016.0.copyload.i = load i64, ptr %i.f, align 8, !noalias !117513
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.518.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.518.0..sroa_idx.i, i64 16, i1 false), !noalias !117513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !117513
  br label %bb.aa

bb.aa:                                            ; preds = %.noexc7, %bb.s
  %.sroa.016.0.i = phi i64 [ %.sroa.016.0.copyload.i, %.noexc7 ], [ -1, %bb.s ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.518.i, i64 16, i1 false), !noalias !117508
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518.i)
  br label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit: ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.o, %bb.n, %bb.k, %bb.j, %bb.h, %bb.aa, %bb.y, %bb.w, %bb.u, %.noexc3, %bb.m, %.noexc, %bb.g, %bb.f
  %.sroa.5014.0 = phi i64 [ undef, %bb.f ], [ undef, %bb.g ], [ undef, %bb.o ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ %.sroa.031.0.copyload, %.noexc ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.h ], [ undef, %bb.j ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ %.sroa.03.0.i, %bb.u ], [ undef, %bb.m ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.k ], [ undef, %bb.n ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ %.sroa.08.0.i, %bb.w ], [ undef, %bb.f ], [ undef, %bb.f ], [ %.sroa.033.0.copyload, %.noexc3 ], [ %.sroa.012.0.i, %bb.y ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ %.sroa.016.0.i, %bb.aa ], [ undef, %bb.f ]
  %.sroa.43.0 = phi i8 [ undef, %bb.f ], [ %.val35.i, %bb.g ], [ %i.ap, %bb.o ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %.noexc ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ %i.aa, %bb.h ], [ %i.ag, %bb.j ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.u ], [ %.val36.i, %bb.m ], [ undef, %bb.f ], [ undef, %bb.f ], [ %i.ai, %bb.k ], [ %i.an, %bb.n ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.w ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %.noexc3 ], [ undef, %bb.y ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.aa ], [ undef, %bb.f ]
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %.sroa.7.050 ; 4 uses
  %.sroa.730.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.730.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56, i64 16, i1 false), !noalias !117514
  store i8 %i.x, ptr %i.bi, align 8, !noalias !117514
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  store i8 %.sroa.43.0, ptr %.sroa.427.0..sroa_idx, align 1, !noalias !117514
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 %.sroa.5014.0, ptr %.sroa.629.0..sroa_idx, align 8, !noalias !117514
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  %i.bj = icmp eq i64 %i.t, 0
  br i1 %i.bj, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast6ActionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.e

bb.ab:                                            ; preds = %bb.ac
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !117514, !inline_history !117499
  unreachable

bb.ac:                                            ; preds = %bb.t, %bb.v, %bb.x, %bb.z, %bb.q, %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.050, ptr %3, align 8, !noalias !117514
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast6ActionEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.g) #73
          to label %bb.ad unwind label %bb.ab, !noalias !117514, !inline_history !117499

bb.ad:                                            ; preds = %bb.ac
  resume { ptr, i32 } %lpad.loopexit

_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast6ActionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit, %bb.e, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread
  %5 = phi ptr [ %i.q, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread ], [ %3, %bb.e ], [ %3, %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit ]
  store i64 %i.k, ptr %5, align 8, !noalias !117500
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !117515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !117500
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast7DeclareENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 4 uses
  %i.b = alloca [328 x i8], align 8               ; 4 uses
  %i.c = alloca [328 x i8], align 8               ; 4 uses
  %i.d = alloca [328 x i8], align 8               ; 4 uses
  %i.e = alloca [328 x i8], align 8               ; 4 uses
  %i.f = alloca [1400 x i8], align 8              ; 4 uses
  %i.g = alloca [56 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [56 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.562 = alloca [24 x i8], align 8          ; 4 uses
  %.sroa.663 = alloca [56 x i8], align 8          ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !315, !noundef !315 ; 2 uses
  %i.o = load i64, ptr %i.l, align 8, !noundef !315 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !117557
  %i.p = mul i64 %i.o, 112                        ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.o, 82351536043346212
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !317

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread, label %bb.c

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread: ; preds = %bb.b
  %i.r = icmp eq i64 %i.o, 0
  tail call void @llvm.assume(i1 %i.r), !noalias !117557
  store i64 0, ptr %i.k, align 8, !noalias !117557
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !noalias !117557
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast7DeclareNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !117558
  %i.u = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef range(i64 1, 17) 8) #71, !noalias !117558 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.d, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.p) #72, !noalias !117557
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.c
  store i64 %i.o, ptr %i.k, align 8, !noalias !117557
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.u, ptr %i.w, align 8, !noalias !117557
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  %i.y = getelementptr inbounds nuw [112 x i8], ptr %i.n, i64 %i.o
  %i.z = icmp eq i64 %i.o, 0
  br i1 %i.z, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast7DeclareNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.af
  %.sroa.6.0.i.i71120 = phi ptr [ undef, %.lr.ph ], [ %.sroa.6.0.i.i72, %bb.af ]
  %.sroa.032.0119 = phi ptr [ %i.n, %.lr.ph ], [ %i.ad, %bb.af ] ; 10 uses
  %.sroa.7.0118 = phi i64 [ 0, %.lr.ph ], [ %i.ae, %bb.af ] ; 3 uses
  %.sroa.10.0117 = phi i64 [ %i.o, %.lr.ph ], [ %i.ab, %bb.af ]
  %i.ab = add nsw i64 %.sroa.10.0117, -1          ; 2 uses
  %i.ac = icmp eq ptr %.sroa.032.0119, %i.y
  br i1 %i.ac, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast7DeclareNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.f

.loopexit:                                        ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.032.0119, i64 112
  %i.ae = add nuw nsw i64 %.sroa.7.0118, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117559)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !117560
  %i.af = getelementptr i8, ptr %.sroa.032.0119, i64 24
  %.val.i1 = load ptr, ptr %i.af, align 8, !alias.scope !117559, !noalias !117561, !nonnull !315, !noundef !315
  %i.ag = getelementptr i8, ptr %.sroa.032.0119, i64 32
  %.val8.i = load i64, ptr %i.ag, align 8, !alias.scope !117559, !noalias !117561, !noundef !315
  invoke fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j, ptr nonnull %.val.i1, i64 %.val8.i)
          to label %.noexc unwind label %.loopexit, !inline_history !117524

.noexc:                                           ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !117560
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.032.0119, i64 40 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !range !371, !alias.scope !117559, !noalias !117561, !noundef !315
  %.not.i2 = icmp eq i8 %i.ai, -1
  br i1 %.not.i2, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !117560
  invoke fastcc void @_RNvXsh_NtNtCs40MM8ukkVQd_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ah)
          to label %bb.k unwind label %bb.j, !noalias !117561, !inline_history !117524

bb.h:                                             ; preds = %.noexc
  store i8 -1, ptr %i.i, align 8, !noalias !117560
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !117560
  %i.aj = load i64, ptr %.sroa.032.0119, align 8, !range !366, !alias.scope !117559, !noalias !117561, !noundef !315 ; 4 uses
  %.not3.i = icmp eq i64 %i.aj, -1
  br i1 %.not3.i, label %bb.w, label %bb.l

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeEECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %.body6, %bb.y, %bb.j
  %.pn.pn.i = phi { ptr, i32 } [ %i.ak, %bb.j ], [ %.pn.i, %bb.y ], [ %.pn.i, %.body6 ]
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #73, !noalias !117561, !inline_history !117524
  br label %bb.ah

bb.j:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeEECsc85D0lJ81Z_16lance_datafusion.exit.i

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !noalias !117560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !117560
  br label %bb.i

bb.l:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.032.0119, i64 8 ; 5 uses
  switch i64 %i.aj, label %default.unreachable [
    i64 0, label %bb.m
    i64 1, label %bb.o
    i64 2, label %bb.q
    i64 3, label %bb.s
    i64 4, label %bb.u
  ]

default.unreachable:                              ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117562)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !117563, !inline_history !117527
  %i.am = tail call noalias noundef align 8 dereferenceable_or_null(328) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 328, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !117563, !inline_history !117527 ; 4 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %.invoke, label %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit.i26, !prof !316

.invoke:                                          ; preds = %bb.u, %bb.s, %bb.q, %bb.o, %bb.m
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 328) #72
          to label %.cont unwind label %bb.z, !inline_history !117527

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit.i26: ; preds = %bb.m
  %i.ao = load ptr, ptr %i.al, align 8, !alias.scope !117562, !noalias !117561, !nonnull !315, !noundef !315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !117564
  invoke fastcc void @_RNvXs7L_NtCs40MM8ukkVQd_9sqlparser3astNtB6_4ExprNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ao)
          to label %.noexc.i unwind label %bb.n, !noalias !117563, !inline_history !117530

bb.n:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit.i26
  %i.ap = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.am, i64 noundef 328, i64 noundef 8) #71, !noalias !117563, !inline_history !117527
  br label %.body6

.noexc.i:                                         ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit.i26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.am, ptr noundef nonnull align 8 dereferenceable(328) %i.a, i64 328, i1 false), !noalias !117564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !117564
  br label %_RNvXscd_NtCs40MM8ukkVQd_9sqlparser3astNtB6_17DeclareAssignmentNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i

bb.o:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117565)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !117566, !inline_history !117527
  %i.aq = tail call noalias noundef align 8 dereferenceable_or_null(328) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 328, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !117566, !inline_history !117527 ; 4 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.invoke, label %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit.i20, !prof !316

_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit.i20: ; preds = %bb.o
  %i.as = load ptr, ptr %i.al, align 8, !alias.scope !117565, !noalias !117561, !nonnull !315, !noundef !315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !117567
  invoke fastcc void @_RNvXs7L_NtCs40MM8ukkVQd_9sqlparser3astNtB6_4ExprNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.as)
          to label %.noexc10.i unwind label %bb.p, !noalias !117566, !inline_history !117530

bb.p:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit.i20
  %i.at = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef 328, i64 noundef 8) #71, !noalias !117566, !inline_history !117527
  br label %.body6

.noexc10.i:                                       ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit.i20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.aq, ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 328, i1 false), !noalias !117567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !117567
  br label %_RNvXscd_NtCs40MM8ukkVQd_9sqlparser3astNtB6_17DeclareAssignmentNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i

bb.q:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117568)
end_hunk_0
begin_hunk_1_@_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast8CaseWhenENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !117595
  %i.ab = getelementptr inbounds nuw [656 x i8], ptr %i.n, i64 %.sroa.7.013
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(656) %i.ab, ptr noundef nonnull align 8 dereferenceable(656) %i.c, i64 656, i1 false), !noalias !117598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ac = icmp eq i64 %i.u, 0
  br i1 %i.ac, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast8CaseWhenNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.e

bb.j:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !117598, !inline_history !117592
  unreachable

bb.k:                                             ; preds = %.loopexit, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.g ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.013, ptr %i.q, align 8, !noalias !117598
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast8CaseWhenEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #73
          to label %bb.l unwind label %bb.j, !noalias !117598, !inline_history !117592

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %eh.lpad-body

_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast8CaseWhenNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.i, %bb.e, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit
  %i.ae = phi ptr [ %i.m, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread ], [ %i.q, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit ], [ %i.q, %bb.e ], [ %i.q, %bb.i ]
  store i64 %i.h, ptr %i.ae, align 8, !noalias !117593
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !117599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !117593
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast8MacroArgENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 5 uses
  %.sroa.5.i = alloca [320 x i8], align 8         ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 8 uses
  %.sroa.414 = alloca [320 x i8], align 8         ; 4 uses
  %.sroa.515 = alloca [64 x i8], align 8          ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !315, !noundef !315 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !315 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !117617
  %i.h = mul i64 %i.g, 392                        ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.g, 23529010298098917
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !317

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread, label %bb.c

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread: ; preds = %bb.b
  %i.j = icmp eq i64 %i.g, 0
  tail call void @llvm.assume(i1 %i.j), !noalias !117617
  store i64 0, ptr %i.c, align 8, !noalias !117617
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8, !noalias !117617
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast8MacroArgNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !117618
  %i.m = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.h, i64 noundef range(i64 1, 17) 8) #71, !noalias !117618 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.h) #72, !noalias !117617
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.c
  store i64 %i.g, ptr %i.c, align 8, !noalias !117617
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.m, ptr %i.o, align 8, !noalias !117617
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw [392 x i8], ptr %i.f, i64 %i.g
  %i.r = icmp eq i64 %i.g, 0
  br i1 %i.r, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast8MacroArgNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.03.028 = phi ptr [ %i.f, %.lr.ph ], [ %i.w, %bb.k ] ; 7 uses
  %.sroa.7.027 = phi i64 [ 0, %.lr.ph ], [ %i.x, %bb.k ] ; 3 uses
  %.sroa.10.026 = phi i64 [ %i.g, %.lr.ph ], [ %i.u, %bb.k ]
  %i.u = add nsw i64 %.sroa.10.026, -1            ; 2 uses
  %i.v = icmp eq ptr %.sroa.03.028, %i.q
  br i1 %i.v, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast8MacroArgNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.f

.loopexit:                                        ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.03.028, i64 392
  %i.x = add nuw nsw i64 %.sroa.7.027, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117619)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !117620
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.03.028, i64 328
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117621), !noalias !117622
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117623), !noalias !117622
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.y)
          to label %.noexc unwind label %.loopexit, !inline_history !117611

.noexc:                                           ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.03.028, i64 384
  %i.aa = load i32, ptr %i.z, align 8, !range !541, !alias.scope !117624, !noalias !117625, !noundef !315
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.03.028, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ab, i64 32, i1 false), !alias.scope !117626, !noalias !117627
  store i32 %i.aa, ptr %i.t, align 8, !alias.scope !117621, !noalias !117628
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.ac = load i64, ptr %.sroa.03.028, align 8, !range !347, !alias.scope !117619, !noalias !117627, !noundef !315
  %.not.i1 = icmp eq i64 %i.ac, -4
  br i1 %.not.i1, label %bb.k, label %bb.g

bb.g:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !117620
  invoke fastcc void @_RNvXs7L_NtCs40MM8ukkVQd_9sqlparser3astNtB6_4ExprNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %.sroa.03.028)
          to label %bb.j unwind label %bb.h, !noalias !117627, !inline_history !117611

bb.h:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117629), !noalias !117622
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117630), !noalias !117622
  %.val.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !117631, !noalias !117620 ; 2 uses
  %i.ae = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ae, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !117631, !noalias !117620, !nonnull !315, !noundef !315
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !117632, !inline_history !117611
  br label %bb.m

bb.j:                                             ; preds = %bb.g
  %.sroa.0.0.copyload1.i = load i64, ptr %i.a, align 8, !noalias !117620
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.0..sroa_idx2.i, i64 320, i1 false), !noalias !117620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !117620
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.noexc
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload1.i, %bb.j ], [ -4, %.noexc ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.515)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.515, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !117622
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.414)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.414, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.i, i64 320, i1 false), !noalias !117622
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !117620
  %i.ag = getelementptr inbounds nuw [392 x i8], ptr %i.m, i64 %.sroa.7.027 ; 3 uses
  store i64 %.sroa.0.0.i, ptr %i.ag, align 8, !noalias !117622
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.414.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.414, i64 320, i1 false), !noalias !117622
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.515.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.515, i64 64, i1 false), !noalias !117622
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.414)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.515)
  %i.ah = icmp eq i64 %i.u, 0
  br i1 %i.ah, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast8MacroArgNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.e

bb.l:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !117622, !inline_history !117616
  unreachable

bb.m:                                             ; preds = %.loopexit, %bb.i, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.h ], [ %i.ad, %bb.i ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.027, ptr %i.p, align 8, !noalias !117622
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast8MacroArgEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.c) #73
          to label %bb.n unwind label %bb.l, !noalias !117622, !inline_history !117616

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %eh.lpad-body

_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast8MacroArgNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.k, %bb.e, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit
  %i.aj = phi ptr [ %i.l, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread ], [ %i.p, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit ], [ %i.p, %bb.e ], [ %i.p, %bb.k ]
  store i64 %i.g, ptr %i.aj, align 8, !noalias !117617
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !117633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !117617
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast8MapEntryENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 4 uses
  %i.b = alloca [328 x i8], align 8               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !315, !noundef !315 ; 2 uses
  %i.h = load i64, ptr %i.e, align 8, !noundef !315 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !117652
  %i.i = shl i64 %i.h, 4                          ; 4 uses
  %i.j = icmp ugt i64 %i.h, 1152921504606846975
  %.not.i.i = icmp ugt i64 %i.i, 9223372036854775800
  %or.cond.i.i = or i1 %i.j, %.not.i.i
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !317

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread, label %bb.c

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread: ; preds = %bb.b
  %i.l = icmp eq i64 %i.h, 0
  tail call void @llvm.assume(i1 %i.l), !noalias !117652
  store i64 0, ptr %i.d, align 8, !noalias !117652
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.m, align 8, !noalias !117652
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast8MapEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !117653
  %i.o = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, 17) 8) #71, !noalias !117653 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.d, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.i) #72, !noalias !117652
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.c
  store i64 %i.h, ptr %i.d, align 8, !noalias !117652
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !117652
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.h
  br label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit, %bb.m
  %.sroa.07.030 = phi ptr [ %i.w, %bb.m ], [ %i.g, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit ] ; 4 uses
  %.sroa.7.029 = phi i64 [ %i.x, %bb.m ], [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit ] ; 3 uses
  %.sroa.10.028 = phi i64 [ %i.t, %bb.m ], [ %i.h, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit ]
  %i.t = add nsw i64 %.sroa.10.028, -1            ; 2 uses
  %i.u = icmp eq ptr %.sroa.07.030, %i.s
  br i1 %i.u, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast8MapEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.f

bb.e:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.f:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.07.030, i64 16
  %i.x = add nuw nsw i64 %.sroa.7.029, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117654)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !117655
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117656), !noalias !117657
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.y = tail call noalias noundef align 8 dereferenceable_or_null(328) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 328, i64 noundef range(i64 1, -9223372036854775807) 8) #71 ; 5 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.g, label %.noexc, !prof !316

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 328) #72
          to label %.noexc5 unwind label %bb.e

.noexc5:                                          ; preds = %bb.g
  unreachable

.noexc:                                           ; preds = %bb.f
  %i.aa = load ptr, ptr %.sroa.07.030, align 8, !alias.scope !117658, !noalias !117657, !nonnull !315, !noundef !315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !117659
  invoke fastcc void @_RNvXs7L_NtCs40MM8ukkVQd_9sqlparser3astNtB6_4ExprNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.aa)
          to label %_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i unwind label %bb.h, !inline_history !117645

bb.h:                                             ; preds = %.noexc
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef 328, i64 noundef 8) #71, !noalias !117660
  br label %bb.o

_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.y, ptr noundef nonnull align 8 dereferenceable(328) %i.a, i64 328, i1 false), !noalias !117659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !117659
  store ptr %i.y, ptr %i.c, align 8, !noalias !117655
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117661), !noalias !117657
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !117655
  %i.ac = tail call noalias noundef align 8 dereferenceable_or_null(328) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 328, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !117655 ; 4 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.i, label %.noexc.i, !prof !316

bb.i:                                             ; preds = %_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 328) #72
          to label %.noexc2 unwind label %bb.k

.noexc2:                                          ; preds = %bb.i
  unreachable

.noexc.i:                                         ; preds = %_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.07.030, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !117662, !noalias !117657, !nonnull !315, !noundef !315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !117663
  invoke fastcc void @_RNvXs7L_NtCs40MM8ukkVQd_9sqlparser3astNtB6_4ExprNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.af)
          to label %bb.m unwind label %bb.j, !inline_history !117645

bb.j:                                             ; preds = %.noexc.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ac, i64 noundef 328, i64 noundef 8) #71, !noalias !117664
  br label %.body.i

bb.k:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %bb.j
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ah, %bb.k ], [ %i.ag, %bb.j ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #73
          to label %bb.o unwind label %bb.l, !noalias !117655, !inline_history !117650

bb.l:                                             ; preds = %.body.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !117655, !inline_history !117650
  unreachable

bb.m:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.ac, ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 328, i1 false), !noalias !117663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !117663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !117655
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.7.029 ; 2 uses
  store ptr %i.y, ptr %i.aj, align 8, !noalias !117657
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ac, ptr %i.ak, align 8, !noalias !117657
  %i.al = icmp eq i64 %i.t, 0
  br i1 %i.al, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast8MapEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit, label %.lr.ph

bb.n:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !117657, !inline_history !117651
  unreachable

bb.o:                                             ; preds = %bb.e, %bb.h, %.body.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.ab, %bb.h ], [ %eh.lpad-body.i, %.body.i ]
  store i64 %.sroa.7.029, ptr %i.r, align 8, !noalias !117657
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast8MapEntryEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.d) #73
          to label %bb.p unwind label %bb.n, !noalias !117657, !inline_history !117651

bb.p:                                             ; preds = %bb.o
  resume { ptr, i32 } %eh.lpad-body

_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast8MapEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.m, %.lr.ph, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread
  %2 = phi ptr [ %i.n, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread ], [ %i.r, %.lr.ph ], [ %i.r, %bb.m ]
  store i64 %i.h, ptr %2, align 8, !noalias !117652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !117665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !117652
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast9LockTableENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.4.i.i = alloca [48 x i8], align 8        ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.1052.i = alloca [48 x i8], align 8       ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117678)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !117679
  %i.d = mul nuw nsw i64 %.16.val, 136            ; 2 uses
  %i.e = icmp eq i64 %.16.val, 0
  br i1 %i.e, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %bb.b

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.c, align 8, !noalias !117679
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !noalias !117679
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast9LockTableNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !117680
  %i.h = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.d, i64 noundef range(i64 1, 17) 8) #71, !noalias !117680 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.d) #72, !noalias !117679
  unreachable

.lr.ph.i:                                         ; preds = %bb.b
  store i64 %.16.val, ptr %i.c, align 8, !noalias !117679
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.h, ptr %i.j, align 8, !noalias !117679
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store i64 0, ptr %i.k, align 8, !noalias !117679
  %i.l = getelementptr inbounds nuw [136 x i8], ptr %.8.val, i64 %.16.val
  %.sroa.5.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0..sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.j, %.lr.ph.i
  %.sroa.013.070.i = phi ptr [ %.8.val, %.lr.ph.i ], [ %i.o, %bb.j ] ; 10 uses
  %.sroa.7.069.i = phi i64 [ 0, %.lr.ph.i ], [ %i.p, %bb.j ] ; 3 uses
  %.sroa.10.068.i = phi i64 [ %.16.val, %.lr.ph.i ], [ %i.m, %bb.j ]
  %i.m = add nsw i64 %.sroa.10.068.i, -1          ; 2 uses
  %i.n = icmp eq ptr %.sroa.013.070.i, %i.l
  br i1 %i.n, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast9LockTableNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.e

.loopexit.i:                                      ; preds = %bb.e
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.070.i, i64 136
  %i.p = add nuw nsw i64 %.sroa.7.069.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117681)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !117682
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %.sroa.013.070.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !117683

.noexc.i:                                         ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.070.i, i64 56
  %i.r = load i32, ptr %i.q, align 8, !range !541, !alias.scope !117684, !noalias !117685, !noundef !315
  %.sroa.0.0.copyload7.i.i = load i64, ptr %i.b, align 8, !noalias !117682 ; 3 uses
  %.sroa.5.0.copyload10.i.i = load ptr, ptr %.sroa.5.0..sroa_idx9.i.i, align 8, !noalias !117682 ; 3 uses
  %i.s = load i64, ptr %.sroa.6.0..sroa_idx11.i.i, align 8, !noalias !117682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !117682
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.070.i, i64 64 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !range !334, !alias.scope !117684, !noalias !117685, !noundef !315
  %.not.i.i = icmp eq i64 %i.u, -1
  br i1 %.not.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !117682
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t)
          to label %bb.i unwind label %bb.g, !noalias !117685

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = icmp eq i64 %.sroa.0.0.copyload7.i.i, 0
  br i1 %i.w, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload10.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload10.i.i, i64 noundef %.sroa.0.0.copyload7.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !117686
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.013.070.i, i64 120
  %i.y = load i32, ptr %i.x, align 8, !range !541, !alias.scope !117684, !noalias !117685, !noundef !315
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.013.070.i, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.24..sroa_idx.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.z, i64 32, i1 false), !noalias !117685
  %.sroa.03.0.copyload.i.i = load i64, ptr %i.a, align 8, !noalias !117682
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !noalias !117682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !117682
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.noexc.i
  %.sroa.5.sroa.4.0.i.i = phi i32 [ %i.y, %bb.i ], [ undef, %.noexc.i ]
  %.sroa.0.0.i12.i = phi i64 [ %.sroa.03.0.copyload.i.i, %bb.i ], [ -1, %.noexc.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.013.070.i, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.013.070.i, i64 128
  %i.ac = load i8, ptr %i.ab, align 8, !range !327, !alias.scope !117684, !noalias !117685, !noundef !315
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.013.070.i, i64 129
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !117684, !noalias !117685, !noundef !315
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1052.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1052.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.i.i, i64 48, i1 false), !noalias !117679
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  %i.af = getelementptr inbounds nuw [136 x i8], ptr %i.h, i64 %.sroa.7.069.i ; 10 uses
  store i64 %.sroa.0.0.copyload7.i.i, ptr %i.af, align 8, !noalias !117683
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %.sroa.5.0.copyload10.i.i, ptr %.sroa.446.0..sroa_idx.i, align 8, !noalias !117683
  %.sroa.547.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %i.s, ptr %.sroa.547.0..sroa_idx.i, align 8, !noalias !117683
  %.sroa.648.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.648.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false), !noalias !117683
  %.sroa.749.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  store i32 %i.r, ptr %.sroa.749.0..sroa_idx.i, align 8, !noalias !117683
  %.sroa.951.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  store i64 %.sroa.0.0.i12.i, ptr %.sroa.951.0..sroa_idx.i, align 8, !noalias !117683
  %.sroa.1052.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1052.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1052.i, i64 48, i1 false), !noalias !117683
  %.sroa.1153.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 120
  store i32 %.sroa.5.sroa.4.0.i.i, ptr %.sroa.1153.0..sroa_idx.i, align 8, !noalias !117683
  %.sroa.1355.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  store i8 %i.ac, ptr %.sroa.1355.0..sroa_idx.i, align 8, !noalias !117683
  %.sroa.1456.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 129
  store i8 %i.ae, ptr %.sroa.1456.0..sroa_idx.i, align 1, !noalias !117683
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1052.i)
  %i.ag = icmp eq i64 %i.m, 0
  br i1 %i.ag, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast9LockTableNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.d

bb.k:                                             ; preds = %bb.h, %bb.g, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.v, %bb.g ], [ %i.v, %bb.h ], [ %lpad.loopexit.i, %.loopexit.i ]
  store i64 %.sroa.7.069.i, ptr %i.k, align 8, !noalias !117679
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast9LockTableEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.c) #73, !noalias !117683
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast9LockTableNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.d, %bb.j, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread.i
  %i.ah = phi ptr [ %i.g, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread.i ], [ %i.k, %bb.j ], [ %i.k, %bb.d ]
  store i64 %.16.val, ptr %i.ah, align 8, !noalias !117679
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !117678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !117679
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast3ddl11IndexOptionENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.4.i.i = alloca [48 x i8], align 8        ; 5 uses
  %i.b = alloca [64 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117695)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !117696
  %i.d = shl nuw nsw i64 %.16.val, 6              ; 2 uses
  %i.e = icmp eq i64 %.16.val, 0
  br i1 %i.e, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %bb.b

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.c, align 8, !noalias !117696
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !noalias !117696
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtNtCs40MM8ukkVQd_9sqlparser3ast3ddl11IndexOptionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !117697
  %i.h = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.d, i64 noundef range(i64 1, 17) 8) #71, !noalias !117697 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.d) #72, !noalias !117696
  unreachable

.lr.ph.i:                                         ; preds = %bb.b
  store i64 %.16.val, ptr %i.c, align 8, !noalias !117696
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.h, ptr %i.j, align 8, !noalias !117696
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw [64 x i8], ptr %.8.val, i64 %.16.val
  %.sroa.4.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.11.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx2.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
end_hunk_1
begin_hunk_2_@_RNvXsek_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_3TopNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq:bb.a
  %i.d = load i8, ptr %i.c, align 8, !range !327, !noundef !315
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXseu_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_11TopQuantityNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 329
  %i.g = load i8, ptr %i.f, align 1, !range !327, !noundef !315
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 329
  %i.i = load i8, ptr %i.h, align 1, !range !327, !noundef !315
  %i.j = icmp eq i8 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_RNvXseu_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_11TopQuantityNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %0, align 8, !range !345, !noundef !315 ; 2 uses
  %.not = icmp eq i64 %i.k, -5                    ; 2 uses
  %i.l = load i64, ptr %1, align 8, !range !345, !noundef !315 ; 2 uses
  %i.m = icmp eq i64 %i.l, -5                     ; 2 uses
  %brmerge = or i1 %.not, %i.m
  %.mux = and i1 %.not, %i.m
  br i1 %brmerge, label %_RNvXseu_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_11TopQuantityNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.d

_RNvXseu_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_11TopQuantityNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit: ; preds = %bb.c, %bb.g, %bb.f, %bb.d, %bb.a, %bb.b
  %.sroa.0.0.shrunk = phi i1 [ %.mux, %bb.c ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.b ], [ %i.u, %bb.f ], [ %i.w, %bb.g ]
  ret i1 %.sroa.0.0.shrunk

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123042)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123043)
  %i.n = icmp eq i64 %i.k, -4                     ; 2 uses
  %i.o = icmp eq i64 %i.l, -4                     ; 3 uses
  %i.p = xor i1 %i.n, %i.o
  br i1 %i.p, label %_RNvXseu_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_11TopQuantityNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.assume(i1 %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !123042, !noalias !123043, !noundef !315
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !123043, !noalias !123042, !noundef !315
  %i.u = icmp eq i64 %i.r, %i.t
  br label %_RNvXseu_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_11TopQuantityNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.e
  %i.v = xor i1 %i.o, true
  tail call void @llvm.assume(i1 %i.v)
  %i.w = tail call fastcc noundef zeroext i1 @_RNvXs7N_NtCs40MM8ukkVQd_9sqlparser3astNtB6_4ExprNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %1), !inline_history !123041
  br label %_RNvXseu_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_11TopQuantityNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXset_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_14AlterCollationNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i = alloca [56 x i8], align 8          ; 6 uses
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.78 = alloca [48 x i8], align 8           ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !123065, !noalias !123066, !nonnull !315, !noundef !315
  %i.g = load i64, ptr %i.d, align 8, !alias.scope !123065, !noalias !123066, !noundef !315
  call fastcc void @_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.f, i64 noundef %i.g), !noalias !315
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123067)
  %i.h = load i64, ptr %1, align 8, !range !399, !alias.scope !123067, !noalias !123068, !noundef !315 ; 2 uses
  switch i64 %i.h, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.h
    i64 3, label %_RNvXseD_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_23AlterCollationOperationNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !123069
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123070)
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.i)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = load i32, ptr %i.j, align 8, !range !541, !alias.scope !123071, !noalias !123070, !noundef !315
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.l, i64 32, i1 false), !alias.scope !123072
  %.sroa.7.sroa.0.0.copyload10 = load i64, ptr %i.b, align 8, !noalias !123067
  %.sroa.7.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.78, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.sroa.6.0..sroa_idx, i64 48, i1 false)
  %.sroa.7.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %.sroa.7.sroa.8.0.copyload14 = load i32, ptr %.sroa.7.sroa.8.0..sroa_idx, align 4, !noalias !123067
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !123069
  br label %_RNvXseD_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_23AlterCollationOperationNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123073)
  %i.o = load i64, ptr %i.n, align 8, !range !348, !alias.scope !123073, !noalias !123074, !noundef !315 ; 2 uses
  %i.p = icmp slt i64 %i.o, 0
  %i.q = add i64 %i.o, -9223372036854775807
  %i.r = select i1 %i.p, i64 %i.q, i64 0
  switch i64 %i.r, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %_RNvXseD_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_23AlterCollationOperationNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit
    i64 2, label %bb.f
    i64 3, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i), !noalias !123075
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.n)
          to label %.noexc4 unwind label %bb.i

.noexc4:                                          ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.t = load i32, ptr %i.s, align 8, !range !541, !alias.scope !123073, !noalias !123074, !noundef !315
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.24..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.u, i64 32, i1 false), !noalias !123074
  %.sroa.06.0.copyload7 = load i64, ptr %.sroa.0.i, align 8, !noalias !123073
  %.sroa.78.0..sroa.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.78, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.78.0..sroa.0.i.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i), !noalias !123075
  br label %_RNvXseD_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_23AlterCollationOperationNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.f:                                             ; preds = %bb.c
  br label %_RNvXseD_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_23AlterCollationOperationNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.g:                                             ; preds = %bb.c
  br label %_RNvXseD_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_23AlterCollationOperationNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123076)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !123077
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !123078, !noalias !123079, !nonnull !315, !noundef !315
  %i.y = load i64, ptr %i.v, align 8, !alias.scope !123078, !noalias !123079, !noundef !315
  invoke fastcc void @_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.x, i64 noundef %i.y)
          to label %.noexc2 unwind label %bb.i, !inline_history !123064

.noexc2:                                          ; preds = %bb.h
  %.sroa.015.0.copyload = load i64, ptr %i.a, align 8, !noalias !123076
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.78, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !123077
  br label %_RNvXseD_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_23AlterCollationOperationNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.i:                                             ; preds = %bb.b, %bb.e, %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast10ObjectNameECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #73
          to label %bb.k unwind label %bb.j

_RNvXseD_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_23AlterCollationOperationNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit: ; preds = %bb.c, %.noexc4, %bb.f, %bb.g, %.noexc2, %.noexc, %bb.a
  %.sroa.7.sroa.8.0 = phi i32 [ %.sroa.7.sroa.8.0.copyload14, %.noexc ], [ undef, %bb.a ], [ undef, %.noexc2 ], [ undef, %bb.g ], [ undef, %bb.f ], [ undef, %.noexc4 ], [ undef, %bb.c ]
  %.sroa.7.sroa.7.0 = phi i32 [ %i.k, %.noexc ], [ undef, %bb.a ], [ undef, %.noexc2 ], [ undef, %bb.g ], [ undef, %bb.f ], [ %i.t, %.noexc4 ], [ undef, %bb.c ]
  %.sroa.7.sroa.0.0 = phi i64 [ %.sroa.7.sroa.0.0.copyload10, %.noexc ], [ undef, %bb.a ], [ %.sroa.015.0.copyload, %.noexc2 ], [ -9223372036854775806, %bb.g ], [ -9223372036854775807, %bb.f ], [ %.sroa.06.0.copyload7, %.noexc4 ], [ -9223372036854775808, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 %i.h, ptr %0, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.sroa.0.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.78, i64 48, i1 false)
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %.sroa.7.sroa.7.0, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %.sroa.7.sroa.8.0, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.z
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXseu_NtCs40MM8ukkVQd_9sqlparser3astNtB6_4LockNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.014 = alloca [24 x i8], align 8          ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123099)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !123099, !noalias !123100, !nonnull !315, !noundef !315 ; 2 uses
  %i.f = load i64, ptr %i.c, align 8, !alias.scope !123099, !noalias !123100, !noundef !315 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !123101
  %i.g = shl i64 %i.f, 5                          ; 4 uses
  %i.h = icmp ugt i64 %i.f, 576460752303423487
  %.not.i.i.i = icmp ugt i64 %i.g, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.h, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.b, !prof !317

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.i.thread, label %bb.c

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.i.thread: ; preds = %bb.b
  %i.j = icmp eq i64 %i.f, 0
  tail call void @llvm.assume(i1 %i.j), !noalias !123099
  store i64 0, ptr %i.b, align 8, !noalias !123101
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8, !noalias !123101
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast15LockTableTargetNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !123102, !inline_history !123088
  %i.m = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef range(i64 1, 17) 8) #71, !noalias !123102, !inline_history !123088 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.g) #72, !noalias !123101, !inline_history !123088
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.c
  store i64 %i.f, ptr %i.b, align 8, !noalias !123101
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.m, ptr %i.o, align 8, !noalias !123101
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.f
  br label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.i, %_RNvXseE_NtCs40MM8ukkVQd_9sqlparser3astNtB6_15LockTableTargetNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i
  %.sroa.02.028 = phi ptr [ %i.y, %_RNvXseE_NtCs40MM8ukkVQd_9sqlparser3astNtB6_15LockTableTargetNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i ], [ %i.e, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.i ] ; 6 uses
  %.sroa.7.027 = phi i64 [ %i.x, %_RNvXseE_NtCs40MM8ukkVQd_9sqlparser3astNtB6_15LockTableTargetNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.i ] ; 3 uses
  %.sroa.10.026 = phi i64 [ %i.r, %_RNvXseE_NtCs40MM8ukkVQd_9sqlparser3astNtB6_15LockTableTargetNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i ], [ %i.f, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.i ]
  %i.r = add nsw i64 %.sroa.10.026, -1            ; 2 uses
  %i.s = icmp eq ptr %.sroa.02.028, %i.q
  br i1 %i.s, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast15LockTableTargetNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.f

bb.e:                                             ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.027, ptr %i.p, align 8, !noalias !123103
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast15LockTableTargetEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #73
          to label %bb.h unwind label %bb.g, !noalias !123103, !inline_history !123088

bb.f:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123104)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !123105
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.02.028, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.02.028, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !123106, !noalias !123107, !nonnull !315, !noundef !315
  %i.w = load i64, ptr %i.t, align 8, !alias.scope !123106, !noalias !123107, !noundef !315
  invoke fastcc void @_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.v, i64 noundef %i.w)
          to label %_RNvXseE_NtCs40MM8ukkVQd_9sqlparser3astNtB6_15LockTableTargetNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i unwind label %bb.e, !inline_history !123095

_RNvXseE_NtCs40MM8ukkVQd_9sqlparser3astNtB6_15LockTableTargetNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i: ; preds = %bb.f
  %i.x = add nuw nsw i64 %.sroa.7.027, 1
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.02.028, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.014)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.014, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !123103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !123105
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.02.028, i64 24
  %i.aa = load i8, ptr %i.z, align 8, !range !327, !alias.scope !123108, !noalias !123109, !noundef !315
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.02.028, i64 25
  %i.ac = load i8, ptr %i.ab, align 1, !range !327, !alias.scope !123108, !noalias !123109, !noundef !315
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.sroa.7.027 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.014, i64 24, i1 false), !noalias !123103
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i8 %i.aa, ptr %.sroa.415.0..sroa_idx, align 8, !noalias !123103
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 25
  store i8 %i.ac, ptr %.sroa.516.0..sroa_idx, align 1, !noalias !123103
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.014)
  %i.ae = icmp eq i64 %i.r, 0
  br i1 %i.ae, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast15LockTableTargetNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit, label %.lr.ph

bb.g:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !123103, !inline_history !123088
  unreachable

bb.h:                                             ; preds = %bb.e
  resume { ptr, i32 } %lpad.loopexit

_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast15LockTableTargetNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %_RNvXseE_NtCs40MM8ukkVQd_9sqlparser3astNtB6_15LockTableTargetNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i, %.lr.ph, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.i.thread
  %2 = phi ptr [ %i.l, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.i.thread ], [ %i.p, %.lr.ph ], [ %i.p, %_RNvXseE_NtCs40MM8ukkVQd_9sqlparser3astNtB6_15LockTableTargetNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i ]
  store i64 %i.f, ptr %2, align 8, !noalias !123101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !123101
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.ah = load i8, ptr %i.ag, align 1, !range !572, !noundef !315
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load i8, ptr %i.ai, align 8, !range !327, !noundef !315
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %i.ah, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.aj, ptr %i.al, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsev_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_14AlterCollationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123135)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !123136, !noalias !123137, !noundef !315 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !123137, !noalias !123136, !noundef !315
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %_RNvXs4R_NtCs40MM8ukkVQd_9sqlparser3astNtB6_10ObjectNameNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %_RNvXseF_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_23AlterCollationOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

_RNvXs4R_NtCs40MM8ukkVQd_9sqlparser3astNtB6_10ObjectNameNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !123137, !noalias !123136, !nonnull !315, !noundef !315
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !123136, !noalias !123137, !nonnull !315, !noundef !315
  %i.j = tail call fastcc noundef zeroext i1 @_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion(ptr noundef %i.i, ptr noundef %i.g, i64 noundef %i.b), !noalias !123138, !inline_history !232
  br i1 %i.j, label %bb.b, label %_RNvXseF_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_23AlterCollationOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %_RNvXs4R_NtCs40MM8ukkVQd_9sqlparser3astNtB6_10ObjectNameNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123140)
  %i.k = load i64, ptr %0, align 8, !range !399, !alias.scope !123139, !noalias !123140, !noundef !315 ; 2 uses
  %i.l = load i64, ptr %1, align 8, !range !399, !alias.scope !123140, !noalias !123139, !noundef !315
  %i.m = icmp eq i64 %i.k, %i.l
  br i1 %i.m, label %bb.c, label %_RNvXseF_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_23AlterCollationOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  switch i64 %i.k, label %default.unreachable [
    i64 0, label %bb.d
    i64 1, label %bb.i
    i64 2, label %bb.p
    i64 3, label %_RNvXseF_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_23AlterCollationOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit
  ]

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123142)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !123141, !noalias !123142, !noundef !315 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !123142, !noalias !123141, !noundef !315
  %i.r = icmp eq i64 %i.o, %i.q
  br i1 %i.r, label %bb.e, label %_RNvXseF_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_23AlterCollationOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !123142, !noalias !123141, !nonnull !315, !noundef !315
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !123141, !noalias !123142, !nonnull !315, !noundef !315
  %bcmp.i5 = tail call i32 @bcmp(ptr nonnull %i.v, ptr nonnull %i.t, i64 %i.o), !noalias !123143
  %i.w = icmp eq i32 %bcmp.i5, 0
  br i1 %i.w, label %bb.f, label %_RNvXseF_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_23AlterCollationOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load i32, ptr %i.x, align 8, !range !541, !alias.scope !123141, !noalias !123142, !noundef !315 ; 2 uses
  %.not.i6 = icmp eq i32 %i.y, -1
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aa = load i32, ptr %i.z, align 8, !range !541, !alias.scope !123142, !noalias !123141, !noundef !315 ; 2 uses
  br i1 %.not.i6, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp eq i32 %i.y, %i.aa
  br label %_RNvXseF_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_23AlterCollationOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = icmp eq i32 %i.aa, -1
  br label %_RNvXseF_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_23AlterCollationOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123145)
  %i.af = load i64, ptr %i.ad, align 8, !range !348, !alias.scope !123144, !noalias !123145, !noundef !315 ; 2 uses
  %i.ag = icmp slt i64 %i.af, 0
  %i.ah = add i64 %i.af, -9223372036854775807
  %i.ai = select i1 %i.ag, i64 %i.ah, i64 0       ; 2 uses
  %i.aj = load i64, ptr %i.ae, align 8, !range !348, !alias.scope !123145, !noalias !123144, !noundef !315 ; 2 uses
  %i.ak = icmp slt i64 %i.aj, 0
  %i.al = add i64 %i.aj, -9223372036854775807
  %i.am = select i1 %i.ak, i64 %i.al, i64 0
  %i.an = icmp eq i64 %i.ai, %i.am
  br i1 %i.an, label %bb.j, label %_RNvXseF_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_23AlterCollationOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.ao = icmp eq i64 %i.ai, 0
  br i1 %i.ao, label %bb.k, label %_RNvXseF_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_23AlterCollationOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !123144, !noalias !123145, !noundef !315 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !123145, !noalias !123144, !noundef !315
  %i.at = icmp eq i64 %i.aq, %i.as
  br i1 %i.at, label %bb.l, label %_RNvXseF_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_23AlterCollationOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !123145, !noalias !123144, !nonnull !315, !noundef !315
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !123144, !noalias !123145, !nonnull !315, !noundef !315
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.ax, ptr nonnull %i.av, i64 %i.aq), !noalias !123146
  %i.ay = icmp eq i32 %bcmp.i, 0
  br i1 %i.ay, label %bb.m, label %_RNvXseF_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_23AlterCollationOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ba = load i32, ptr %i.az, align 8, !range !541, !alias.scope !123144, !noalias !123145, !noundef !315 ; 2 uses
  %.not.i = icmp eq i32 %i.ba, -1
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bc = load i32, ptr %i.bb, align 8, !range !541, !alias.scope !123145, !noalias !123144, !noundef !315 ; 2 uses
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = icmp eq i32 %i.ba, %i.bc
  br label %_RNvXseF_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_23AlterCollationOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.m
  %i.be = icmp eq i32 %i.bc, -1
  br label %_RNvXseF_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_23AlterCollationOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123150)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !123151, !noalias !123152, !noundef !315 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !123152, !noalias !123151, !noundef !315
  %i.bj = icmp eq i64 %i.bg, %i.bi
  br i1 %i.bj, label %bb.q, label %_RNvXseF_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_23AlterCollationOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !123152, !noalias !123151, !nonnull !315, !noundef !315
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !123151, !noalias !123152, !nonnull !315, !noundef !315
  %.not8.not = icmp eq i64 %i.bg, 0
  br i1 %.not8.not, label %_RNvXseF_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_23AlterCollationOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q, %.lr.ph
  %.sroa.01.0.i.i9 = phi i64 [ %i.br, %.lr.ph ], [ 0, %bb.q ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [88 x i8], ptr %i.bn, i64 %.sroa.01.0.i.i9
  %i.bp = getelementptr inbounds nuw [88 x i8], ptr %i.bl, i64 %.sroa.01.0.i.i9
  %i.bq = tail call fastcc noundef zeroext i1 @_RNvXs51_NtCs40MM8ukkVQd_9sqlparser3astNtB6_14ObjectNamePartNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.bo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.bp), !noalias !123153, !inline_history !123131 ; 2 uses
  %i.br = add nuw i64 %.sroa.01.0.i.i9, 1         ; 2 uses
  %exitcond.not = icmp ne i64 %i.br, %i.bg
  %or.cond.not = select i1 %i.bq, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %_RNvXseF_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_23AlterCollationOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

_RNvXseF_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_23AlterCollationOperationNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit: ; preds = %.lr.ph, %bb.q, %bb.a, %bb.c, %bb.b, %bb.d, %bb.e, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.n, %bb.o, %bb.p, %_RNvXs4R_NtCs40MM8ukkVQd_9sqlparser3astNtB6_10ObjectNameNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ false, %_RNvXs4R_NtCs40MM8ukkVQd_9sqlparser3astNtB6_10ObjectNameNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit ], [ true, %bb.c ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.k ], [ true, %bb.j ], [ false, %bb.p ], [ false, %bb.i ], [ %i.ab, %bb.g ], [ false, %bb.e ], [ %i.ac, %bb.h ], [ %i.bd, %bb.n ], [ false, %bb.l ], [ %i.be, %bb.o ], [ true, %bb.q ], [ %i.bq, %.lr.ph ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsew_NtCs40MM8ukkVQd_9sqlparser3astNtB6_4LockNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !327, !noundef !315
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !327, !noundef !315
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast15LockTableTargetINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit.thread5

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !315 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !315
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast15LockTableTargetINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit.thread5

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !315, !noundef !315
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !315, !noundef !315
end_hunk_2
