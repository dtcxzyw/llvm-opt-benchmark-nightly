Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73510
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 88
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 285
begin_hunk_0_@_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast26AttachDuckDBDatabaseOptionENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  br i1 %i.c, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i, label %bb.b

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !noalias !244241
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.d, align 8, !noalias !244241
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast26AttachDuckDBDatabaseOptionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !244242
  %i.f = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, 17) 8) #68, !noalias !244242 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.b) #72, !noalias !244241
  unreachable

.lr.ph.i:                                         ; preds = %bb.b
  store i64 %.16.val, ptr %i.a, align 8, !noalias !244241
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.h, align 8, !noalias !244241
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
  br i1 %i.l, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast26AttachDuckDBDatabaseOptionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i, i64 64
  %i.n = add nuw nsw i64 %.sroa.7.043.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244243)
  %i.o = load i64, ptr %.sroa.012.044.i, align 8, !range !421, !alias.scope !244244, !noalias !244245, !noundef !416
  %.not.i.i = icmp eq i64 %i.o, -1
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i), !noalias !244246
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.0.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.012.044.i)
          to label %.noexc.i unwind label %bb.h, !noalias !244247

.noexc.i:                                         ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i, i64 56
  %i.q = load i32, ptr %i.p, align 8, !range !705, !alias.scope !244244, !noalias !244245, !noundef !416
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.24..sroa_idx.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.r, i64 32, i1 false), !noalias !244245
  %.sroa.013.0.copyload14.i = load i64, ptr %.sroa.0.i.i, align 8, !noalias !244248
  %.sroa.515.0.copyload16.i = load i8, ptr %.sroa.515.0..sroa.0.i.sroa_idx.i, align 8, !noalias !244248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.6.i, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.6.0..sroa.0.i.sroa_idx.i, i64 47, i1 false), !noalias !244248
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i), !noalias !244246
  br label %_RNvXspZ_NtCs40MM8ukkVQd_9sqlparser3astNtB6_26AttachDuckDBDatabaseOptionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i, i64 8
  %i.t = load i8, ptr %i.s, align 8, !range !429, !alias.scope !244244, !noalias !244245, !noundef !416
  br label %_RNvXspZ_NtCs40MM8ukkVQd_9sqlparser3astNtB6_26AttachDuckDBDatabaseOptionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i

_RNvXspZ_NtCs40MM8ukkVQd_9sqlparser3astNtB6_26AttachDuckDBDatabaseOptionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i: ; preds = %bb.g, %.noexc.i
  %.sroa.617.0.i = phi i32 [ undef, %bb.g ], [ %i.q, %.noexc.i ]
  %.sroa.515.0.i = phi i8 [ %i.t, %bb.g ], [ %.sroa.515.0.copyload16.i, %.noexc.i ]
  %.sroa.013.0.i = phi i64 [ -1, %bb.g ], [ %.sroa.013.0.copyload14.i, %.noexc.i ]
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %i.f, i64 %.sroa.7.043.i ; 4 uses
  %.sroa.531.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.531.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.6.i, i64 47, i1 false), !noalias !244247
  store i64 %.sroa.013.0.i, ptr %i.u, align 8, !noalias !244247
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i8 %.sroa.515.0.i, ptr %.sroa.430.0..sroa_idx.i, align 8, !noalias !244247
  %.sroa.632.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i32 %.sroa.617.0.i, ptr %.sroa.632.0..sroa_idx.i, align 8, !noalias !244247
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  %i.v = icmp eq i64 %i.k, 0
  br i1 %i.v, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast26AttachDuckDBDatabaseOptionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.d

bb.h:                                             ; preds = %bb.f
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.043.i, ptr %i.i, align 8, !noalias !244241
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast26AttachDuckDBDatabaseOptionEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %i.a) #73, !noalias !244247
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast26AttachDuckDBDatabaseOptionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.d, %_RNvXspZ_NtCs40MM8ukkVQd_9sqlparser3astNtB6_26AttachDuckDBDatabaseOptionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i
  %i.w = phi ptr [ %i.e, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i ], [ %i.i, %_RNvXspZ_NtCs40MM8ukkVQd_9sqlparser3astNtB6_26AttachDuckDBDatabaseOptionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i ], [ %i.i, %bb.d ]
  store i64 %.16.val, ptr %i.w, align 8, !noalias !244241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !244240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !244241
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244257)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !244258
  %i.c = shl nuw nsw i64 %.16.val, 6              ; 2 uses
  %i.d = icmp eq i64 %.16.val, 0
  br i1 %i.d, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i, label %bb.b

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !noalias !244258
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !noalias !244258
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !244259
  %i.g = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, 17) 8) #68, !noalias !244259 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.c) #72, !noalias !244258
  unreachable

.lr.ph.i:                                         ; preds = %bb.b
  store i64 %.16.val, ptr %i.b, align 8, !noalias !244258
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.i, align 8, !noalias !244258
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
  br i1 %i.o, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !244258
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244261)
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.012.023.i)
          to label %bb.f unwind label %bb.g, !noalias !244262

bb.f:                                             ; preds = %bb.e
  %i.p = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 56
  %i.s = load i32, ptr %i.r, align 8, !range !705, !alias.scope !244263, !noalias !244264, !noundef !416
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.t, i64 32, i1 false), !alias.scope !244265, !noalias !244262
  store i32 %i.s, ptr %i.m, align 8, !alias.scope !244260, !noalias !244266
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.u, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !244262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !244258
  %i.v = icmp eq i64 %i.n, 0
  br i1 %i.v, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.d

bb.g:                                             ; preds = %bb.e
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.j, align 8, !noalias !244258
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #73, !noalias !244262
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.d, %bb.f, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i
  %i.w = phi ptr [ %i.f, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i ], [ %i.j, %bb.f ], [ %i.j, %bb.d ]
  store i64 %.16.val, ptr %i.w, align 8, !noalias !244258
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !244257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !244258
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast6ActionENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !416, !noundef !416 ; 2 uses
  %i.k = load i64, ptr %i.h, align 8, !noundef !416 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !244289
  %i.l = shl i64 %i.k, 5                          ; 4 uses
  %i.m = icmp ugt i64 %i.k, 576460752303423487
  %.not.i.i = icmp ugt i64 %i.l, 9223372036854775800
  %or.cond.i.i = or i1 %i.m, %.not.i.i
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !441

bb.b:                                             ; preds = %bb.a
  %i.n = icmp eq i64 %i.l, 0
  br i1 %i.n, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread, label %bb.c

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread: ; preds = %bb.b
  %i.o = icmp eq i64 %i.k, 0
  tail call void @llvm.assume(i1 %i.o), !noalias !244289
  store i64 0, ptr %i.g, align 8, !noalias !244289
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.p, align 8, !noalias !244289
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast6ActionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !244290
  %i.r = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.l, i64 noundef range(i64 1, 17) 8) #68, !noalias !244290 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.l) #72, !noalias !244289
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.c
  store i64 %i.k, ptr %i.g, align 8, !noalias !244289
  %2 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.r, ptr %2, align 8, !noalias !244289
  %3 = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  %4 = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.k
  %5 = icmp eq i64 %i.k, 0
  br i1 %5, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast6ActionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit
  %.sroa.09.049 = phi ptr [ %i.j, %.lr.ph ], [ %i.v, %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit ] ; 26 uses
  %.sroa.7.047 = phi i64 [ 0, %.lr.ph ], [ %i.w, %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit ] ; 3 uses
  %.sroa.10.046 = phi i64 [ %i.k, %.lr.ph ], [ %i.t, %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit ]
  %i.t = add nsw i64 %.sroa.10.046, -1            ; 2 uses
  %i.u = icmp eq ptr %.sroa.09.049, %4
  br i1 %i.u, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast6ActionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.09.049, i64 32
  %i.w = add nuw nsw i64 %.sroa.7.047, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.56)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244291)
  %i.x = load i8, ptr %.sroa.09.049, align 8, !range !606, !alias.scope !244291, !noalias !244292, !noundef !416 ; 2 uses
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
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.09.049, i64 1
  %.val35.i = load i8, ptr %i.y, align 1, !range !531, !alias.scope !244291, !noalias !244292, !noundef !416
  br label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.h:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.09.049, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !range !758, !alias.scope !244291, !noalias !244292, !noundef !416
  br label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.i:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244293), !noalias !244294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !244295
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.09.049, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.09.049, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !244296, !noalias !244297, !nonnull !416, !noundef !416
  %i.ae = load i64, ptr %i.ab, align 8, !alias.scope !244296, !noalias !244297, !noundef !416
  invoke fastcc void @_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ad, i64 noundef %i.ae)
          to label %.noexc unwind label %bb.ac, !inline_history !244281

.noexc:                                           ; preds = %bb.i
  %.sroa.028.0.copyload = load i64, ptr %i.b, align 8, !noalias !244298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.429.0..sroa_idx, i64 16, i1 false), !noalias !244299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !244295
  br label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.j:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.09.049, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !range !740, !alias.scope !244291, !noalias !244292, !noundef !416
  br label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.k:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.09.049, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !range !740, !alias.scope !244291, !noalias !244292, !noundef !416
  br label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.l:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.049, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !range !421, !alias.scope !244291, !noalias !244292, !noundef !416
  %.not24.i = icmp eq i64 %i.ak, -1
  br i1 %.not24.i, label %bb.u, label %bb.t

bb.m:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.09.049, i64 1
  %.val36.i = load i8, ptr %i.al, align 1, !range !551, !alias.scope !244291, !noalias !244292, !noundef !416
  br label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.n:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.09.049, i64 1
  %i.an = load i8, ptr %i.am, align 1, !range !480, !alias.scope !244291, !noalias !244292, !noundef !416
  br label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.o:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.09.049, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !range !431, !alias.scope !244291, !noalias !244292, !noundef !416
  br label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.p:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.510.i)
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.09.049, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !range !421, !alias.scope !244291, !noalias !244292, !noundef !416
  %.not21.i = icmp eq i64 %i.ar, -1
  br i1 %.not21.i, label %bb.w, label %bb.v

bb.q:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244300), !noalias !244294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !244301
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.09.049, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.09.049, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !244302, !noalias !244303, !nonnull !416, !noundef !416
  %i.av = load i64, ptr %i.as, align 8, !alias.scope !244302, !noalias !244303, !noundef !416
  invoke fastcc void @_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.au, i64 noundef %i.av)
          to label %.noexc3 unwind label %bb.ac, !inline_history !244281

.noexc3:                                          ; preds = %bb.q
  %.sroa.030.0.copyload = load i64, ptr %i.a, align 8, !noalias !244304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.431.0..sroa_idx, i64 16, i1 false), !noalias !244299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !244301
  br label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.r:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.514.i)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.09.049, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !range !421, !alias.scope !244291, !noalias !244292, !noundef !416
  %.not20.i = icmp eq i64 %i.ax, -1
  br i1 %.not20.i, label %bb.y, label %bb.x

bb.s:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.518.i)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.09.049, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !range !421, !alias.scope !244291, !noalias !244292, !noundef !416
  %.not.i1 = icmp eq i64 %i.az, -1
  br i1 %.not.i1, label %bb.aa, label %bb.z

bb.t:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !244305
  %i.ba = getelementptr i8, ptr %.sroa.09.049, i64 16
  %.val33.i = load ptr, ptr %i.ba, align 8, !alias.scope !244291, !noalias !244292, !nonnull !416, !noundef !416
  %i.bb = getelementptr i8, ptr %.sroa.09.049, i64 24
  %.val34.i = load i64, ptr %i.bb, align 8, !alias.scope !244291, !noalias !244292, !noundef !416
  invoke fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %.val33.i, i64 %.val34.i)
          to label %.noexc4 unwind label %bb.ac, !inline_history !244281

.noexc4:                                          ; preds = %bb.t
  %.sroa.03.0.copyload.i = load i64, ptr %i.c, align 8, !noalias !244305
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i64 16, i1 false), !noalias !244305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !244305
  br label %bb.u

bb.u:                                             ; preds = %.noexc4, %bb.l
  %.sroa.03.0.i = phi i64 [ %.sroa.03.0.copyload.i, %.noexc4 ], [ -1, %bb.l ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !noalias !244299
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.v:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !244305
  %i.bc = getelementptr i8, ptr %.sroa.09.049, i64 16
  %.val31.i = load ptr, ptr %i.bc, align 8, !alias.scope !244291, !noalias !244292, !nonnull !416, !noundef !416
  %i.bd = getelementptr i8, ptr %.sroa.09.049, i64 24
  %.val32.i = load i64, ptr %i.bd, align 8, !alias.scope !244291, !noalias !244292, !noundef !416
  invoke fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr nonnull %.val31.i, i64 %.val32.i)
          to label %.noexc5 unwind label %bb.ac, !inline_history !244281

.noexc5:                                          ; preds = %bb.v
  %.sroa.08.0.copyload.i = load i64, ptr %i.d, align 8, !noalias !244305
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.510.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.510.0..sroa_idx.i, i64 16, i1 false), !noalias !244305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !244305
  br label %bb.w

bb.w:                                             ; preds = %.noexc5, %bb.p
  %.sroa.08.0.i = phi i64 [ %.sroa.08.0.copyload.i, %.noexc5 ], [ -1, %bb.p ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.510.i, i64 16, i1 false), !noalias !244299
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.510.i)
  br label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.x:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !244305
  %i.be = getelementptr i8, ptr %.sroa.09.049, i64 16
  %.val29.i = load ptr, ptr %i.be, align 8, !alias.scope !244291, !noalias !244292, !nonnull !416, !noundef !416
  %i.bf = getelementptr i8, ptr %.sroa.09.049, i64 24
  %.val30.i = load i64, ptr %i.bf, align 8, !alias.scope !244291, !noalias !244292, !noundef !416
  invoke fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr nonnull %.val29.i, i64 %.val30.i)
          to label %.noexc6 unwind label %bb.ac, !inline_history !244281

.noexc6:                                          ; preds = %bb.x
  %.sroa.012.0.copyload.i = load i64, ptr %i.e, align 8, !noalias !244305
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.514.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.514.0..sroa_idx.i, i64 16, i1 false), !noalias !244305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !244305
  br label %bb.y

bb.y:                                             ; preds = %.noexc6, %bb.r
  %.sroa.012.0.i = phi i64 [ %.sroa.012.0.copyload.i, %.noexc6 ], [ -1, %bb.r ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.514.i, i64 16, i1 false), !noalias !244299
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.514.i)
  br label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.z:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !244305
  %i.bg = getelementptr i8, ptr %.sroa.09.049, i64 16
  %.val.i2 = load ptr, ptr %i.bg, align 8, !alias.scope !244291, !noalias !244292, !nonnull !416, !noundef !416
  %i.bh = getelementptr i8, ptr %.sroa.09.049, i64 24
  %.val28.i = load i64, ptr %i.bh, align 8, !alias.scope !244291, !noalias !244292, !noundef !416
  invoke fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr nonnull %.val.i2, i64 %.val28.i)
          to label %.noexc7 unwind label %bb.ac, !inline_history !244281

.noexc7:                                          ; preds = %bb.z
  %.sroa.016.0.copyload.i = load i64, ptr %i.f, align 8, !noalias !244305
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.518.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.518.0..sroa_idx.i, i64 16, i1 false), !noalias !244305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !244305
  br label %bb.aa

bb.aa:                                            ; preds = %.noexc7, %bb.s
  %.sroa.016.0.i = phi i64 [ %.sroa.016.0.copyload.i, %.noexc7 ], [ -1, %bb.s ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.518.i, i64 16, i1 false), !noalias !244299
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518.i)
  br label %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit: ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.o, %bb.n, %bb.k, %bb.j, %bb.h, %bb.aa, %bb.y, %bb.w, %bb.u, %.noexc3, %bb.m, %.noexc, %bb.g, %bb.f
  %.sroa.5011.0 = phi i64 [ undef, %bb.f ], [ undef, %bb.g ], [ undef, %bb.o ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ %.sroa.028.0.copyload, %.noexc ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.h ], [ undef, %bb.j ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ %.sroa.03.0.i, %bb.u ], [ undef, %bb.m ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.k ], [ undef, %bb.n ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ %.sroa.08.0.i, %bb.w ], [ undef, %bb.f ], [ undef, %bb.f ], [ %.sroa.030.0.copyload, %.noexc3 ], [ %.sroa.012.0.i, %bb.y ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ %.sroa.016.0.i, %bb.aa ], [ undef, %bb.f ]
  %.sroa.43.0 = phi i8 [ undef, %bb.f ], [ %.val35.i, %bb.g ], [ %i.ap, %bb.o ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %.noexc ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ %i.aa, %bb.h ], [ %i.ag, %bb.j ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.u ], [ %.val36.i, %bb.m ], [ undef, %bb.f ], [ undef, %bb.f ], [ %i.ai, %bb.k ], [ %i.an, %bb.n ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.w ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %.noexc3 ], [ undef, %bb.y ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.f ], [ undef, %bb.aa ], [ undef, %bb.f ]
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %.sroa.7.047 ; 4 uses
  %.sroa.727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.727.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56, i64 16, i1 false), !noalias !244294
  store i8 %i.x, ptr %i.bi, align 8, !noalias !244294
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  store i8 %.sroa.43.0, ptr %.sroa.424.0..sroa_idx, align 1, !noalias !244294
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 %.sroa.5011.0, ptr %.sroa.626.0..sroa_idx, align 8, !noalias !244294
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  %i.bj = icmp eq i64 %i.t, 0
  br i1 %i.bj, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast6ActionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.e

bb.ab:                                            ; preds = %bb.ac
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !244294, !inline_history !244288
  unreachable

bb.ac:                                            ; preds = %bb.i, %bb.q, %bb.t, %bb.v, %bb.x, %bb.z
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.047, ptr %3, align 8, !noalias !244294
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast6ActionEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %i.g) #73
          to label %bb.ad unwind label %bb.ab, !noalias !244294, !inline_history !244288

bb.ad:                                            ; preds = %bb.ac
  resume { ptr, i32 } %lpad.loopexit

_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast6ActionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit, %bb.e, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %6 = phi ptr [ %i.q, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread ], [ %3, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %3, %bb.e ], [ %3, %_RNvXshe_NtCs40MM8ukkVQd_9sqlparser3astNtB6_6ActionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit ]
  store i64 %i.k, ptr %6, align 8, !noalias !244289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !244306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !244289
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast7DeclareENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !416, !noundef !416 ; 2 uses
  %i.o = load i64, ptr %i.l, align 8, !noundef !416 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !244348
  %i.p = mul i64 %i.o, 112                        ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.o, 82351536043346212
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !441

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread, label %bb.c

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread: ; preds = %bb.b
  %i.r = icmp eq i64 %i.o, 0
  tail call void @llvm.assume(i1 %i.r), !noalias !244348
  store i64 0, ptr %i.k, align 8, !noalias !244348
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !noalias !244348
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast7DeclareNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !244349
  %i.u = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef range(i64 1, 17) 8) #68, !noalias !244349 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.d, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.p) #72, !noalias !244348
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.c
  store i64 %i.o, ptr %i.k, align 8, !noalias !244348
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.u, ptr %i.w, align 8, !noalias !244348
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  %i.y = getelementptr inbounds nuw [112 x i8], ptr %i.n, i64 %i.o
  %i.z = icmp eq i64 %i.o, 0
  br i1 %i.z, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast7DeclareNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.af
  %.sroa.6.0.i.i71120 = phi ptr [ undef, %.lr.ph ], [ %.sroa.6.0.i.i72, %bb.af ]
  %.sroa.032.0119 = phi ptr [ %i.n, %.lr.ph ], [ %i.ad, %bb.af ] ; 10 uses
  %.sroa.7.0118 = phi i64 [ 0, %.lr.ph ], [ %i.ae, %bb.af ] ; 3 uses
  %.sroa.10.0117 = phi i64 [ %i.o, %.lr.ph ], [ %i.ab, %bb.af ]
  %i.ab = add nsw i64 %.sroa.10.0117, -1          ; 2 uses
  %i.ac = icmp eq ptr %.sroa.032.0119, %i.y
  br i1 %i.ac, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast7DeclareNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.f

.loopexit:                                        ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.032.0119, i64 112
  %i.ae = add nuw nsw i64 %.sroa.7.0118, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244350)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !244351
  %i.af = getelementptr i8, ptr %.sroa.032.0119, i64 24
  %.val.i1 = load ptr, ptr %i.af, align 8, !alias.scope !244350, !noalias !244352, !nonnull !416, !noundef !416
  %i.ag = getelementptr i8, ptr %.sroa.032.0119, i64 32
  %.val8.i = load i64, ptr %i.ag, align 8, !alias.scope !244350, !noalias !244352, !noundef !416
  invoke fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j, ptr nonnull %.val.i1, i64 %.val8.i)
          to label %.noexc unwind label %.loopexit, !inline_history !244315

.noexc:                                           ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !244351
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.032.0119, i64 40 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !range !507, !alias.scope !244350, !noalias !244352, !noundef !416
  %.not.i2 = icmp eq i8 %i.ai, -1
  br i1 %.not.i2, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !244351
  invoke fastcc void @_RNvXsh_NtNtCs40MM8ukkVQd_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ah)
          to label %bb.k unwind label %bb.j, !noalias !244352, !inline_history !244315

bb.h:                                             ; preds = %.noexc
  store i8 -1, ptr %i.i, align 8, !noalias !244351
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !244351
  %i.aj = load i64, ptr %.sroa.032.0119, align 8, !range !503, !alias.scope !244350, !noalias !244352, !noundef !416 ; 4 uses
  %.not3.i = icmp eq i64 %i.aj, -1
  br i1 %.not3.i, label %bb.w, label %bb.l

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %.body6, %bb.y, %bb.j
  %.pn.pn.i = phi { ptr, i32 } [ %i.ak, %bb.j ], [ %.pn.i, %bb.y ], [ %.pn.i, %.body6 ]
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #73, !noalias !244352, !inline_history !244315
  br label %bb.ah

bb.j:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !noalias !244351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !244351
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244353)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !244354, !inline_history !244318
  %i.am = tail call noalias noundef align 8 dereferenceable_or_null(328) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 328, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !244354, !inline_history !244318 ; 4 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %.invoke, label %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i26, !prof !426

.invoke:                                          ; preds = %bb.u, %bb.s, %bb.q, %bb.o, %bb.m
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 328) #72
          to label %.cont unwind label %bb.z, !inline_history !244318

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i26: ; preds = %bb.m
  %i.ao = load ptr, ptr %i.al, align 8, !alias.scope !244353, !noalias !244352, !nonnull !416, !noundef !416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !244355
  invoke fastcc void @_RNvXs7L_NtCs40MM8ukkVQd_9sqlparser3astNtB6_4ExprNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ao)
          to label %.noexc.i unwind label %bb.n, !noalias !244354, !inline_history !244321

bb.n:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i26
  %i.ap = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.am, i64 noundef 328, i64 noundef 8) #68, !noalias !244354, !inline_history !244318
  br label %.body6

.noexc.i:                                         ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.am, ptr noundef nonnull align 8 dereferenceable(328) %i.a, i64 328, i1 false), !noalias !244355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !244355
  br label %_RNvXscd_NtCs40MM8ukkVQd_9sqlparser3astNtB6_17DeclareAssignmentNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i

bb.o:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244356)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !244357, !inline_history !244318
  %i.aq = tail call noalias noundef align 8 dereferenceable_or_null(328) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 328, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !244357, !inline_history !244318 ; 4 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.invoke, label %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i20, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i20: ; preds = %bb.o
  %i.as = load ptr, ptr %i.al, align 8, !alias.scope !244356, !noalias !244352, !nonnull !416, !noundef !416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !244358
  invoke fastcc void @_RNvXs7L_NtCs40MM8ukkVQd_9sqlparser3astNtB6_4ExprNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.as)
          to label %.noexc10.i unwind label %bb.p, !noalias !244357, !inline_history !244321

bb.p:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i20
  %i.at = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef 328, i64 noundef 8) #68, !noalias !244357, !inline_history !244318
  br label %.body6

.noexc10.i:                                       ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.aq, ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 328, i1 false), !noalias !244358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !244358
  br label %_RNvXscd_NtCs40MM8ukkVQd_9sqlparser3astNtB6_17DeclareAssignmentNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i

bb.q:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244359)
end_hunk_0
begin_hunk_1_@_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast8CaseWhenENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %i.ab = getelementptr inbounds nuw [656 x i8], ptr %i.n, i64 %.sroa.7.013
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(656) %i.ab, ptr noundef nonnull align 8 dereferenceable(656) %i.c, i64 656, i1 false), !noalias !244389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ac = icmp eq i64 %i.u, 0
  br i1 %i.ac, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast8CaseWhenNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.e

bb.j:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !244389, !inline_history !244383
  unreachable

bb.k:                                             ; preds = %.loopexit, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.g ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.013, ptr %i.q, align 8, !noalias !244389
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast8CaseWhenEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #73
          to label %bb.l unwind label %bb.j, !noalias !244389, !inline_history !244383

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %eh.lpad-body

_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast8CaseWhenNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.i, %bb.e, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.ae = phi ptr [ %i.m, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread ], [ %i.q, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %i.q, %bb.e ], [ %i.q, %bb.i ]
  store i64 %i.h, ptr %i.ae, align 8, !noalias !244384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !244390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !244384
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast8MacroArgENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 5 uses
  %.sroa.5.i = alloca [320 x i8], align 8         ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 8 uses
  %.sroa.414 = alloca [320 x i8], align 8         ; 4 uses
  %.sroa.515 = alloca [64 x i8], align 8          ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !416, !noundef !416 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !416 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !244410
  %i.h = mul i64 %i.g, 392                        ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.g, 23529010298098917
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !441

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread, label %bb.c

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread: ; preds = %bb.b
  %i.j = icmp eq i64 %i.g, 0
  tail call void @llvm.assume(i1 %i.j), !noalias !244410
  store i64 0, ptr %i.c, align 8, !noalias !244410
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8, !noalias !244410
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast8MacroArgNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !244411
  %i.m = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.h, i64 noundef range(i64 1, 17) 8) #68, !noalias !244411 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.h) #72, !noalias !244410
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.c
  store i64 %i.g, ptr %i.c, align 8, !noalias !244410
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.m, ptr %i.o, align 8, !noalias !244410
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw [392 x i8], ptr %i.f, i64 %i.g
  %i.r = icmp eq i64 %i.g, 0
  br i1 %i.r, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast8MacroArgNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit
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
  br i1 %i.v, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast8MacroArgNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.f

.loopexit:                                        ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.03.028, i64 392
  %i.x = add nuw nsw i64 %.sroa.7.027, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244412)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !244413
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.03.028, i64 328
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244414), !noalias !244415
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244416), !noalias !244415
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.y)
          to label %.noexc unwind label %.loopexit, !inline_history !244402

.noexc:                                           ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.03.028, i64 384
  %i.aa = load i32, ptr %i.z, align 8, !range !705, !alias.scope !244417, !noalias !244418, !noundef !416
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.03.028, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ab, i64 32, i1 false), !alias.scope !244419, !noalias !244420
  store i32 %i.aa, ptr %i.t, align 8, !alias.scope !244414, !noalias !244421
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.ac = load i64, ptr %.sroa.03.028, align 8, !range !487, !alias.scope !244412, !noalias !244420, !noundef !416
  %.not.i1 = icmp eq i64 %i.ac, -4
  br i1 %.not.i1, label %bb.k, label %bb.g

bb.g:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !244413
  invoke fastcc void @_RNvXs7L_NtCs40MM8ukkVQd_9sqlparser3astNtB6_4ExprNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %.sroa.03.028)
          to label %bb.j unwind label %bb.h, !noalias !244420, !inline_history !244402

bb.h:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244422), !noalias !244415
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244423), !noalias !244415
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244424), !noalias !244415
  %.val.i.i.i.i = load i64, ptr %i.b, align 8, !range !419, !alias.scope !244425, !noalias !244413, !noundef !416 ; 2 uses
  %i.ae = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ae, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !244425, !noalias !244413, !nonnull !416, !noundef !416
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !244426, !inline_history !244402
  br label %bb.m

bb.j:                                             ; preds = %bb.g
  %.sroa.0.0.copyload1.i = load i64, ptr %i.a, align 8, !noalias !244413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.0..sroa_idx2.i, i64 320, i1 false), !noalias !244413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !244413
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.noexc
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload1.i, %bb.j ], [ -4, %.noexc ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.515)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.515, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !244415
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.414)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.414, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.i, i64 320, i1 false), !noalias !244415
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !244413
  %i.ag = getelementptr inbounds nuw [392 x i8], ptr %i.m, i64 %.sroa.7.027 ; 3 uses
  store i64 %.sroa.0.0.i, ptr %i.ag, align 8, !noalias !244415
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.414.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.414, i64 320, i1 false), !noalias !244415
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.515.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.515, i64 64, i1 false), !noalias !244415
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.414)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.515)
  %i.ah = icmp eq i64 %i.u, 0
  br i1 %i.ah, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast8MacroArgNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.e

bb.l:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !244415, !inline_history !244409
  unreachable

bb.m:                                             ; preds = %.loopexit, %bb.i, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.h ], [ %i.ad, %bb.i ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.027, ptr %i.p, align 8, !noalias !244415
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast8MacroArgEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %i.c) #73
          to label %bb.n unwind label %bb.l, !noalias !244415, !inline_history !244409

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %eh.lpad-body

_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast8MacroArgNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.k, %bb.e, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.aj = phi ptr [ %i.l, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread ], [ %i.p, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %i.p, %bb.e ], [ %i.p, %bb.k ]
  store i64 %i.g, ptr %i.aj, align 8, !noalias !244410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !244427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !244410
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast8MapEntryENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 4 uses
  %i.b = alloca [328 x i8], align 8               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !416, !noundef !416 ; 2 uses
  %i.h = load i64, ptr %i.e, align 8, !noundef !416 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !244446
  %i.i = shl i64 %i.h, 4                          ; 4 uses
  %i.j = icmp ugt i64 %i.h, 1152921504606846975
  %.not.i.i = icmp ugt i64 %i.i, 9223372036854775800
  %or.cond.i.i = or i1 %i.j, %.not.i.i
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !441

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread, label %bb.c

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread: ; preds = %bb.b
  %i.l = icmp eq i64 %i.h, 0
  tail call void @llvm.assume(i1 %i.l), !noalias !244446
  store i64 0, ptr %i.d, align 8, !noalias !244446
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.m, align 8, !noalias !244446
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast8MapEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !244447
  %i.o = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, 17) 8) #68, !noalias !244447 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.d, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.i) #72, !noalias !244446
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.c
  store i64 %i.h, ptr %i.d, align 8, !noalias !244446
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !244446
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.h
  %2 = icmp eq i64 %i.h, 0
  br i1 %2, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast8MapEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit, %bb.m
  %.sroa.07.030 = phi ptr [ %i.w, %bb.m ], [ %i.g, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit ] ; 4 uses
  %.sroa.7.029 = phi i64 [ %i.x, %bb.m ], [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit ] ; 3 uses
  %.sroa.10.028 = phi i64 [ %i.t, %bb.m ], [ %i.h, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit ]
  %i.t = add nsw i64 %.sroa.10.028, -1            ; 2 uses
  %i.u = icmp eq ptr %.sroa.07.030, %i.s
  br i1 %i.u, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast8MapEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.f

bb.e:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.f:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.07.030, i64 16
  %i.x = add nuw nsw i64 %.sroa.7.029, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244448)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !244449
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244450), !noalias !244451
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68
  %i.y = tail call noalias noundef align 8 dereferenceable_or_null(328) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 328, i64 noundef range(i64 1, -9223372036854775807) 8) #68 ; 5 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.g, label %.noexc, !prof !426

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 328) #72
          to label %.noexc5 unwind label %bb.e

.noexc5:                                          ; preds = %bb.g
  unreachable

.noexc:                                           ; preds = %bb.f
  %i.aa = load ptr, ptr %.sroa.07.030, align 8, !alias.scope !244452, !noalias !244451, !nonnull !416, !noundef !416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !244453
  invoke fastcc void @_RNvXs7L_NtCs40MM8ukkVQd_9sqlparser3astNtB6_4ExprNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.aa)
          to label %_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.i unwind label %bb.h, !inline_history !244439

bb.h:                                             ; preds = %.noexc
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef 328, i64 noundef 8) #68, !noalias !244454
  br label %bb.o

_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.y, ptr noundef nonnull align 8 dereferenceable(328) %i.a, i64 328, i1 false), !noalias !244453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !244453
  store ptr %i.y, ptr %i.c, align 8, !noalias !244449
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244455), !noalias !244451
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !244449
  %i.ac = tail call noalias noundef align 8 dereferenceable_or_null(328) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 328, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !244449 ; 4 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.i, label %.noexc.i, !prof !426

bb.i:                                             ; preds = %_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 328) #72
          to label %.noexc2 unwind label %bb.k

.noexc2:                                          ; preds = %bb.i
  unreachable

.noexc.i:                                         ; preds = %_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.07.030, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !244456, !noalias !244451, !nonnull !416, !noundef !416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !244457
  invoke fastcc void @_RNvXs7L_NtCs40MM8ukkVQd_9sqlparser3astNtB6_4ExprNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.af)
          to label %bb.m unwind label %bb.j, !inline_history !244439

bb.j:                                             ; preds = %.noexc.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ac, i64 noundef 328, i64 noundef 8) #68, !noalias !244458
  br label %.body.i

bb.k:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %bb.j
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ah, %bb.k ], [ %i.ag, %bb.j ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #73
          to label %bb.o unwind label %bb.l, !noalias !244449, !inline_history !244444

bb.l:                                             ; preds = %.body.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !244449, !inline_history !244444
  unreachable

bb.m:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.ac, ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 328, i1 false), !noalias !244457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !244457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !244449
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.7.029 ; 2 uses
  store ptr %i.y, ptr %i.aj, align 8, !noalias !244451
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ac, ptr %i.ak, align 8, !noalias !244451
  %i.al = icmp eq i64 %i.t, 0
  br i1 %i.al, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast8MapEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %.lr.ph

bb.n:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !244451, !inline_history !244445
  unreachable

bb.o:                                             ; preds = %bb.e, %bb.h, %.body.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.ab, %bb.h ], [ %eh.lpad-body.i, %.body.i ]
  store i64 %.sroa.7.029, ptr %i.r, align 8, !noalias !244451
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast8MapEntryEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %i.d) #73
          to label %bb.p unwind label %bb.n, !noalias !244451, !inline_history !244445

bb.p:                                             ; preds = %bb.o
  resume { ptr, i32 } %eh.lpad-body

_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast8MapEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.m, %.lr.ph, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %3 = phi ptr [ %i.n, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread ], [ %i.r, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %i.r, %.lr.ph ], [ %i.r, %bb.m ]
  store i64 %i.h, ptr %3, align 8, !noalias !244446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !244459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !244446
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast9LockTableENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.4.i.i = alloca [48 x i8], align 8        ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.1052.i = alloca [48 x i8], align 8       ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244474)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !244475
  %i.d = mul nuw nsw i64 %.16.val, 136            ; 2 uses
  %i.e = icmp eq i64 %.16.val, 0
  br i1 %i.e, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i, label %bb.b

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.c, align 8, !noalias !244475
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !noalias !244475
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast9LockTableNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !244476
  %i.h = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.d, i64 noundef range(i64 1, 17) 8) #68, !noalias !244476 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.d) #72, !noalias !244475
  unreachable

.lr.ph.i:                                         ; preds = %bb.b
  store i64 %.16.val, ptr %i.c, align 8, !noalias !244475
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.h, ptr %i.j, align 8, !noalias !244475
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store i64 0, ptr %i.k, align 8, !noalias !244475
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
  br i1 %i.n, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast9LockTableNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.e

.loopexit.i:                                      ; preds = %bb.e
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.070.i, i64 136
  %i.p = add nuw nsw i64 %.sroa.7.069.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244477)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !244478
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %.sroa.013.070.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !244479

.noexc.i:                                         ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.070.i, i64 56
  %i.r = load i32, ptr %i.q, align 8, !range !705, !alias.scope !244480, !noalias !244481, !noundef !416
  %.sroa.0.0.copyload7.i.i = load i64, ptr %i.b, align 8, !noalias !244478 ; 3 uses
  %.sroa.5.0.copyload10.i.i = load ptr, ptr %.sroa.5.0..sroa_idx9.i.i, align 8, !noalias !244478 ; 3 uses
  %i.s = load i64, ptr %.sroa.6.0..sroa_idx11.i.i, align 8, !noalias !244478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !244478
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.070.i, i64 64 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !range !421, !alias.scope !244480, !noalias !244481, !noundef !416
  %.not.i.i = icmp eq i64 %i.u, -1
  br i1 %.not.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !244478
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t)
          to label %bb.i unwind label %bb.g, !noalias !244481

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = icmp eq i64 %.sroa.0.0.copyload7.i.i, 0
  br i1 %i.w, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload10.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload10.i.i, i64 noundef %.sroa.0.0.copyload7.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !244482
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.013.070.i, i64 120
  %i.y = load i32, ptr %i.x, align 8, !range !705, !alias.scope !244480, !noalias !244481, !noundef !416
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.013.070.i, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.24..sroa_idx.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.z, i64 32, i1 false), !noalias !244481
  %.sroa.03.0.copyload.i.i = load i64, ptr %i.a, align 8, !noalias !244478
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !noalias !244478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !244478
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.noexc.i
  %.sroa.5.sroa.4.0.i.i = phi i32 [ %i.y, %bb.i ], [ undef, %.noexc.i ]
  %.sroa.0.0.i12.i = phi i64 [ %.sroa.03.0.copyload.i.i, %bb.i ], [ -1, %.noexc.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.013.070.i, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.013.070.i, i64 128
  %i.ac = load i8, ptr %i.ab, align 8, !range !428, !alias.scope !244480, !noalias !244481, !noundef !416
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.013.070.i, i64 129
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !244480, !noalias !244481, !noundef !416
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1052.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1052.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.i.i, i64 48, i1 false), !noalias !244475
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  %i.af = getelementptr inbounds nuw [136 x i8], ptr %i.h, i64 %.sroa.7.069.i ; 10 uses
  store i64 %.sroa.0.0.copyload7.i.i, ptr %i.af, align 8, !noalias !244479
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %.sroa.5.0.copyload10.i.i, ptr %.sroa.446.0..sroa_idx.i, align 8, !noalias !244479
  %.sroa.547.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %i.s, ptr %.sroa.547.0..sroa_idx.i, align 8, !noalias !244479
  %.sroa.648.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.648.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false), !noalias !244479
  %.sroa.749.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  store i32 %i.r, ptr %.sroa.749.0..sroa_idx.i, align 8, !noalias !244479
  %.sroa.951.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  store i64 %.sroa.0.0.i12.i, ptr %.sroa.951.0..sroa_idx.i, align 8, !noalias !244479
  %.sroa.1052.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1052.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1052.i, i64 48, i1 false), !noalias !244479
  %.sroa.1153.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 120
  store i32 %.sroa.5.sroa.4.0.i.i, ptr %.sroa.1153.0..sroa_idx.i, align 8, !noalias !244479
  %.sroa.1355.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  store i8 %i.ac, ptr %.sroa.1355.0..sroa_idx.i, align 8, !noalias !244479
  %.sroa.1456.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 129
  store i8 %i.ae, ptr %.sroa.1456.0..sroa_idx.i, align 1, !noalias !244479
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1052.i)
  %i.ag = icmp eq i64 %i.m, 0
  br i1 %i.ag, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast9LockTableNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.d

bb.k:                                             ; preds = %bb.h, %bb.g, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.v, %bb.g ], [ %i.v, %bb.h ], [ %lpad.loopexit.i, %.loopexit.i ]
  store i64 %.sroa.7.069.i, ptr %i.k, align 8, !noalias !244475
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast9LockTableEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %i.c) #73, !noalias !244479
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast9LockTableNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.d, %bb.j, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i
  %i.ah = phi ptr [ %i.g, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i ], [ %i.k, %bb.j ], [ %i.k, %bb.d ]
  store i64 %.16.val, ptr %i.ah, align 8, !noalias !244475
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !244474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !244475
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast3ddl11IndexOptionENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.4.i.i = alloca [48 x i8], align 8        ; 5 uses
  %i.b = alloca [64 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244491)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !244492
  %i.d = shl nuw nsw i64 %.16.val, 6              ; 2 uses
  %i.e = icmp eq i64 %.16.val, 0
  br i1 %i.e, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i, label %bb.b

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.c, align 8, !noalias !244492
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !noalias !244492
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtNtCs40MM8ukkVQd_9sqlparser3ast3ddl11IndexOptionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !244493
  %i.h = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.d, i64 noundef range(i64 1, 17) 8) #68, !noalias !244493 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.d) #72, !noalias !244492
  unreachable

.lr.ph.i:                                         ; preds = %bb.b
  store i64 %.16.val, ptr %i.c, align 8, !noalias !244492
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.h, ptr %i.j, align 8, !noalias !244492
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw [64 x i8], ptr %.8.val, i64 %.16.val
  %.sroa.4.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.11.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx2.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
end_hunk_1
begin_hunk_2_@_RNvXse_NtNtCsaSXGKSfiU2E_10lance_file6format2pbNtB5_8MetadataNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len:bb.a
  %.lcssa = phi i64 [ %i.dc, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRljjNCNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3q_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.unr-lcssa ], [ %i.dm, %.preheader.i1.i.i.i.i.epil.preheader ] ; 2 uses
  %i.dn = or i64 %.lcssa, 1
  %i.do = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dn, i1 true)
  %i.dp = xor i64 %i.do, 63
  %i.dq = mul nuw nsw i64 %i.dp, 9
  %i.dr = add nuw nsw i64 %i.dq, 73
  %i.ds = lshr i64 %i.dr, 6
  %i.dt = add i64 %.lcssa, 1
  %i.du = add i64 %i.dt, %i.ds
  br label %_RNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed.exit.i.i.i.i

_RNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed.exit.i.i.i.i: ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRljjNCNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3q_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %i.du, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRljjNCNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3q_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ]
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !248582, !noundef !416 ; 2 uses
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %_RNCNvXse_NtNtCsaSXGKSfiU2E_10lance_file6format2pbNtB7_8MetadataNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.g

bb.g:                                             ; preds = %_RNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed.exit.i.i.i.i
  %i.dy = or i64 %i.dw, 1
  %i.dz = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dy, i1 true)
  %i.ea = xor i64 %i.dz, 63
  %i.eb = mul nuw nsw i64 %i.ea, 9
  %i.ec = add nuw nsw i64 %i.eb, 73
  %i.ed = lshr i64 %i.ec, 6
  %i.ee = add nuw nsw i64 %i.ed, 1
  br label %_RNCNvXse_NtNtCsaSXGKSfiU2E_10lance_file6format2pbNtB7_8MetadataNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RNCNvXse_NtNtCsaSXGKSfiU2E_10lance_file6format2pbNtB7_8MetadataNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.g, %_RNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.ee, %bb.g ], [ 0, %_RNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed.exit.i.i.i.i ]
  %i.ef = add i64 %.sroa.0.0.i.i.i.i.i.i.i, %i.bq
  %i.eg = add i64 %i.ef, %.sroa.0.0.i.i.i.i.i
  %i.eh = add i64 %i.eg, %.sroa.0.0.i.i.i.i       ; 2 uses
  %i.ei = or i64 %i.eh, 1
  %i.ej = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ei, i1 true)
  %i.ek = xor i64 %i.ej, 63
  %i.el = mul nuw nsw i64 %i.ek, 9
  %i.em = add nuw nsw i64 %i.el, 73
  %i.en = lshr i64 %i.em, 6
  %i.eo = add i64 %i.eh, 1
  %i.ep = add i64 %i.eo, %i.en
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb8metadata18StatisticsMetadataE6map_orjNCNvXse_BN_NtBN_8MetadataNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0ECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb8metadata18StatisticsMetadataE6map_orjNCNvXse_BN_NtBN_8MetadataNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0ECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.e, %_RNCNvXse_NtNtCsaSXGKSfiU2E_10lance_file6format2pbNtB7_8MetadataNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %.sroa.02.0.i = phi i64 [ %i.ep, %_RNCNvXse_NtNtCsaSXGKSfiU2E_10lance_file6format2pbNtB7_8MetadataNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i ], [ 0, %bb.e ]
  %i.eq = add i64 %.sroa.0.0.i, %.sroa.0.0
  %i.er = add i64 %i.eq, %.sroa.01.0
  %i.es = add i64 %i.er, %.sroa.02.0.i
  ret i64 %i.es
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXset_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_14AlterCollationNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i = alloca [56 x i8], align 8          ; 6 uses
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.78 = alloca [48 x i8], align 8           ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248606)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !248607, !noalias !248608, !nonnull !416, !noundef !416
  %i.g = load i64, ptr %i.d, align 8, !alias.scope !248607, !noalias !248608, !noundef !416
  call fastcc void @_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.f, i64 noundef %i.g), !noalias !248606
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248609)
  %i.h = load i64, ptr %1, align 8, !range !484, !alias.scope !248609, !noalias !248610, !noundef !416 ; 2 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !248611
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248612)
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.i)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = load i32, ptr %i.j, align 8, !range !705, !alias.scope !248613, !noalias !248612, !noundef !416
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.l, i64 32, i1 false), !alias.scope !248614
  %.sroa.7.sroa.0.0.copyload10 = load i64, ptr %i.b, align 8, !noalias !248609
  %.sroa.7.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.78, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.sroa.6.0..sroa_idx, i64 48, i1 false)
  %.sroa.7.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %.sroa.7.sroa.8.0.copyload14 = load i32, ptr %.sroa.7.sroa.8.0..sroa_idx, align 4, !noalias !248609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !248611
  br label %_RNvXseD_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_23AlterCollationOperationNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248615)
  %i.o = load i64, ptr %i.n, align 8, !range !488, !alias.scope !248615, !noalias !248616, !noundef !416 ; 2 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i), !noalias !248617
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.n)
          to label %.noexc4 unwind label %bb.i

.noexc4:                                          ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.t = load i32, ptr %i.s, align 8, !range !705, !alias.scope !248615, !noalias !248616, !noundef !416
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.24..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.u, i64 32, i1 false), !noalias !248616
  %.sroa.06.0.copyload7 = load i64, ptr %.sroa.0.i, align 8, !noalias !248615
  %.sroa.78.0..sroa.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.78, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.78.0..sroa.0.i.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i), !noalias !248617
  br label %_RNvXseD_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_23AlterCollationOperationNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.f:                                             ; preds = %bb.c
  br label %_RNvXseD_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_23AlterCollationOperationNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.g:                                             ; preds = %bb.c
  br label %_RNvXseD_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_23AlterCollationOperationNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248618)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !248619
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !248620, !noalias !248621, !nonnull !416, !noundef !416
  %i.y = load i64, ptr %i.v, align 8, !alias.scope !248620, !noalias !248621, !noundef !416
  invoke fastcc void @_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.x, i64 noundef %i.y)
          to label %.noexc2 unwind label %bb.i, !inline_history !248605

.noexc2:                                          ; preds = %bb.h
  %.sroa.015.0.copyload = load i64, ptr %i.a, align 8, !noalias !248618
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.78, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !248619
  br label %_RNvXseD_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_23AlterCollationOperationNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.i:                                             ; preds = %bb.b, %bb.e, %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast10ObjectNameECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #73
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
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.z
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXseu_NtCs40MM8ukkVQd_9sqlparser3astNtB6_4LockNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.014 = alloca [24 x i8], align 8          ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248641)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !248641, !noalias !248642, !nonnull !416, !noundef !416 ; 2 uses
  %i.f = load i64, ptr %i.c, align 8, !alias.scope !248641, !noalias !248642, !noundef !416 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !248643
  %i.g = shl i64 %i.f, 5                          ; 4 uses
  %i.h = icmp ugt i64 %i.f, 576460752303423487
  %.not.i.i.i = icmp ugt i64 %i.g, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.h, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.b, !prof !441

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.thread, label %bb.c

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.thread: ; preds = %bb.b
  %i.j = icmp eq i64 %i.f, 0
  tail call void @llvm.assume(i1 %i.j), !noalias !248641
  store i64 0, ptr %i.b, align 8, !noalias !248643
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8, !noalias !248643
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast15LockTableTargetNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !248644, !inline_history !248630
  %i.m = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef range(i64 1, 17) 8) #68, !noalias !248644, !inline_history !248630 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.g) #72, !noalias !248643, !inline_history !248630
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.c
  store i64 %i.f, ptr %i.b, align 8, !noalias !248643
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.m, ptr %i.o, align 8, !noalias !248643
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.f
  %2 = icmp eq i64 %i.f, 0
  br i1 %2, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast15LockTableTargetNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %_RNvXseE_NtCs40MM8ukkVQd_9sqlparser3astNtB6_15LockTableTargetNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i
  %.sroa.02.028 = phi ptr [ %i.y, %_RNvXseE_NtCs40MM8ukkVQd_9sqlparser3astNtB6_15LockTableTargetNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i ], [ %i.e, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i ] ; 6 uses
  %.sroa.7.027 = phi i64 [ %i.x, %_RNvXseE_NtCs40MM8ukkVQd_9sqlparser3astNtB6_15LockTableTargetNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i ] ; 3 uses
  %.sroa.10.026 = phi i64 [ %i.r, %_RNvXseE_NtCs40MM8ukkVQd_9sqlparser3astNtB6_15LockTableTargetNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i ], [ %i.f, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i ]
  %i.r = add nsw i64 %.sroa.10.026, -1            ; 2 uses
  %i.s = icmp eq ptr %.sroa.02.028, %i.q
  br i1 %i.s, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast15LockTableTargetNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.f

bb.e:                                             ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.027, ptr %i.p, align 8, !noalias !248645
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast15LockTableTargetEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #73
          to label %bb.h unwind label %bb.g, !noalias !248645, !inline_history !248630

bb.f:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248646)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !248647
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.02.028, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.02.028, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !248648, !noalias !248649, !nonnull !416, !noundef !416
  %i.w = load i64, ptr %i.t, align 8, !alias.scope !248648, !noalias !248649, !noundef !416
  invoke fastcc void @_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.v, i64 noundef %i.w)
          to label %_RNvXseE_NtCs40MM8ukkVQd_9sqlparser3astNtB6_15LockTableTargetNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i unwind label %bb.e, !inline_history !248637

_RNvXseE_NtCs40MM8ukkVQd_9sqlparser3astNtB6_15LockTableTargetNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i: ; preds = %bb.f
  %i.x = add nuw nsw i64 %.sroa.7.027, 1
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.02.028, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.014)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.014, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !248645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !248647
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.02.028, i64 24
  %i.aa = load i8, ptr %i.z, align 8, !range !428, !alias.scope !248650, !noalias !248651, !noundef !416
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.02.028, i64 25
  %i.ac = load i8, ptr %i.ab, align 1, !range !428, !alias.scope !248650, !noalias !248651, !noundef !416
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.sroa.7.027 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.014, i64 24, i1 false), !noalias !248645
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i8 %i.aa, ptr %.sroa.415.0..sroa_idx, align 8, !noalias !248645
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 25
  store i8 %i.ac, ptr %.sroa.516.0..sroa_idx, align 1, !noalias !248645
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.014)
  %i.ae = icmp eq i64 %i.r, 0
  br i1 %i.ae, label %_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast15LockTableTargetNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %.lr.ph

bb.g:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !248645, !inline_history !248630
  unreachable

bb.h:                                             ; preds = %bb.e
  resume { ptr, i32 } %lpad.loopexit

_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast15LockTableTargetNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RNvXseE_NtCs40MM8ukkVQd_9sqlparser3astNtB6_15LockTableTargetNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i, %.lr.ph, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.thread, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %3 = phi ptr [ %i.l, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.thread ], [ %i.p, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i ], [ %i.p, %.lr.ph ], [ %i.p, %_RNvXseE_NtCs40MM8ukkVQd_9sqlparser3astNtB6_15LockTableTargetNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i ]
  store i64 %i.f, ptr %3, align 8, !noalias !248643
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !248643
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.ah = load i8, ptr %i.ag, align 1, !range !755, !noundef !416
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load i8, ptr %i.ai, align 8, !range !428, !noundef !416
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %i.ah, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.aj, ptr %i.al, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf5_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_11GroupByExprNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !421, !noundef !416
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7217, i64 noundef 11, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4188, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7935)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.b, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4140, i64 noundef 3, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7935)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsfB_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_19CreateOperatorClassNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(200) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [56 x i8], align 8                ; 4 uses
  %i.g = alloca [56 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.546 = alloca [16 x i8], align 8          ; 4 uses
  %i.j = alloca [112 x i8], align 8               ; 5 uses
  %i.k = alloca [56 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.5.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.n = alloca [112 x i8], align 8               ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.6 = alloca [16 x i8], align 8            ; 6 uses
  %.sroa.9 = alloca [48 x i8], align 8            ; 8 uses
  %.sroa.14 = alloca [72 x i8], align 8           ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 10 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 9 uses
  %i.s = alloca [64 x i8], align 8                ; 8 uses
  %i.t = alloca [56 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248745)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !248746, !noalias !248747, !nonnull !416, !noundef !416
  %i.y = load i64, ptr %i.v, align 8, !alias.scope !248746, !noalias !248747, !noundef !416
  call fastcc void @_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.x, i64 noundef %i.y), !noalias !248745
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.aa = load i8, ptr %i.z, align 8, !range !428, !noundef !416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 136
  invoke fastcc void @_RNvXsh_NtNtCs40MM8ukkVQd_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ab)
          to label %bb.j unwind label %bb.i

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentECsfR8GmIBoxTX_21lance_namespace_impls.exit, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentECsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %i.au, %bb.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248749)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !248750, !nonnull !416, !noundef !416 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !248750, !noundef !416 ; 4 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.ah = icmp eq i64 %i.aj, %i.af
  br i1 %i.ah, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i.i219 = phi i64 [ %i.aj, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [88 x i8], ptr %i.ad, i64 %.sroa.0.0.i.i.i219
  %i.aj = add i64 %.sroa.0.0.i.i.i219, 1          ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(88) %i.ai) #75
          to label %bb.c unwind label %bb.e, !noalias !248750, !inline_history !410

bb.d:                                             ; preds = %.lr.ph221
  %i.ak = add i64 %.sroa.0.1.i.i.i220, 1          ; 2 uses
  %i.al = icmp eq i64 %i.ak, %i.af
  br i1 %i.al, label %.body.i103, label %.lr.ph221

bb.e:                                             ; preds = %.lr.ph
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.an = icmp eq i64 %i.aj, %i.af
  br i1 %i.an, label %.body.i103, label %.lr.ph221

.lr.ph221:                                        ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i.i220 = phi i64 [ %i.ak, %bb.d ], [ %i.aj, %bb.e ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [88 x i8], ptr %i.ad, i64 %.sroa.0.1.i.i.i220
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(88) %i.ao) #76
          to label %bb.d unwind label %bb.f, !noalias !248750, !inline_history !410

bb.f:                                             ; preds = %.lr.ph221
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !248750, !inline_history !410
  unreachable

.body.i103:                                       ; preds = %bb.d, %bb.e
  %.val2.i.i = load i64, ptr %i.u, align 8, !range !419, !alias.scope !248751, !noundef !416 ; 2 uses
  %i.aq = icmp eq i64 %.val2.i.i, 0
  br i1 %i.aq, label %.body104, label %bb.g

bb.g:                                             ; preds = %.body.i103
  %i.ar = mul nuw i64 %.val2.i.i, 88
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !248748, !inline_history !803
  br label %.body104

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.c, %bb.b
  %.val.i.i = load i64, ptr %i.u, align 8, !range !419, !alias.scope !248751, !noundef !416 ; 2 uses
  %i.as = icmp eq i64 %.val.i.i, 0
  br i1 %i.as, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast10ObjectNameECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.h

bb.h:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.at = mul nuw i64 %.val.i.i, 88
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !248748, !inline_history !803
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast10ObjectNameECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.i:                                             ; preds = %bb.a
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248753)
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.av)
          to label %bb.l unwind label %bb.k

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.bf, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast10ObjectNameEECsfR8GmIBoxTX_21lance_namespace_impls.exit, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.k ], [ %.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast10ObjectNameEECsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %.pn, %bb.bf ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.t) #73
          to label %bb.b unwind label %bb.bn

bb.k:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.l:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ay = load i32, ptr %i.ax, align 8, !range !705, !alias.scope !248753, !noalias !248752, !noundef !416
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.az, i64 32, i1 false), !alias.scope !248754
  %i.bb = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store i32 %i.ay, ptr %i.bb, align 8, !alias.scope !248752, !noalias !248753
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bd = load i64, ptr %i.bc, align 8, !range !421, !noundef !416
  %.not = icmp eq i64 %i.bd, -1
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248755)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !248756
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !248757, !noalias !248758, !nonnull !416, !noundef !416
  %i.bh = load i64, ptr %i.be, align 8, !alias.scope !248757, !noalias !248758, !noundef !416
  invoke fastcc void @_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bg, i64 noundef %i.bh)
          to label %bb.bh unwind label %bb.bg, !inline_history !367

bb.n:                                             ; preds = %bb.l
  store i64 -1, ptr %i.r, align 8
end_hunk_2
