Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_ast-79536ef50c0fac99.ruff_python_ast.f1da3f06107471d8-cgu.0?download=true
inline.NumInlined: 7999
inline.NumDeleted: 3540
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_9enumerate9EnumerateINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator3nthCskLngH8kgpZI_15ruff_python_ast:bb.a
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !14551, !noundef !46
  %i.o = add i64 %i.n, %1                         ; 2 uses
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.m, align 8, !alias.scope !14551
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator3nthCskLngH8kgpZI_15ruff_python_ast.exit

bb.e:                                             ; preds = %bb.b
  %i.q = add i64 %i.b, -1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !14552, !nonnull !46, !noundef !46 ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !alias.scope !14552, !nonnull !46, !noundef !46 ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub nuw i64 %i.u, %i.v
  %.not.i.not.i2 = icmp ult i64 %i.q, %i.w        ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.b
  %storemerge.i.i3 = select i1 %.not.i.not.i2, ptr %i.x, ptr %i.s
  store ptr %storemerge.i.i3, ptr %0, align 8, !alias.scope !14552
  br i1 %.not.i.not.i2, label %bb.f, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator3nthCskLngH8kgpZI_15ruff_python_ast.exit6

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !14553, !noundef !46
  %i.aa = add i64 %i.z, %i.b
  store i64 %i.aa, ptr %i.y, align 8, !alias.scope !14553
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator3nthCskLngH8kgpZI_15ruff_python_ast.exit6

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator3nthCskLngH8kgpZI_15ruff_python_ast.exit6: ; preds = %bb.e, %bb.f
  store i64 0, ptr %i.a, align 8
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator3nthCskLngH8kgpZI_15ruff_python_ast.exit

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator3nthCskLngH8kgpZI_15ruff_python_ast.exit: ; preds = %bb.d, %bb.c, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator3nthCskLngH8kgpZI_15ruff_python_ast.exit6, %bb.b
  %.sroa.2.0 = phi ptr [ null, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator3nthCskLngH8kgpZI_15ruff_python_ast.exit6 ], [ null, %bb.b ], [ %i.k, %bb.d ], [ null, %bb.c ]
  %.sroa.0.0 = phi i64 [ undef, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator3nthCskLngH8kgpZI_15ruff_python_ast.exit6 ], [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.c ]
  %i.ab = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.ac = insertvalue { i64, ptr } %i.ab, ptr %.sroa.2.0, 1
  ret { i64, ptr } %i.ac
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !46, !noundef !46 ; 2 uses
  %i.f = load i64, ptr %i.c, align 8, !noundef !46 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14571
  %i.g = mul i64 %i.f, 40                         ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.f, 230584300921369395
  br i1 %or.cond.i.i, label %bb.c, label %bb.b, !prof !61

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread: ; preds = %bb.b
  %i.i = icmp eq i64 %i.f, 0
  tail call void @llvm.assume(i1 %i.i), !noalias !14571
  store i64 0, ptr %i.b, align 8, !noalias !14571
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8, !noalias !14571
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.b
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #62, !noalias !14572
  %i.l = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef range(i64 1, 17) 8) #62, !noalias !14572 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit

bb.c:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.a ]
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.g) #61, !noalias !14571
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  store i64 %i.f, ptr %i.b, align 8, !noalias !14571
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.n, align 8, !noalias !14571
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %i.f
  %i.q = icmp eq i64 %i.f, 0
  br i1 %i.q, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_RNvXs3e_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit
  %.sroa.04.066 = phi ptr [ %i.e, %.lr.ph ], [ %i.t, %_RNvXs3e_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit ] ; 11 uses
  %.sroa.7.065 = phi i64 [ 0, %.lr.ph ], [ %i.u, %_RNvXs3e_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit ] ; 3 uses
  %.sroa.10.064 = phi i64 [ %i.f, %.lr.ph ], [ %i.r, %_RNvXs3e_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit ]
  %i.r = add nsw i64 %.sroa.10.064, -1            ; 2 uses
  %i.s = icmp eq ptr %.sroa.04.066, %i.p
  br i1 %i.s, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.04.066, i64 40
  %i.u = add nuw nsw i64 %.sroa.7.065, 1
  %i.v = load i64, ptr %.sroa.04.066, align 8, !range !58, !noalias !14573, !noundef !46
  %.not.i1 = icmp eq i64 %i.v, -1
  br i1 %.not.i1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.04.066, i64 24
  %i.x = load <2 x i32>, ptr %i.w, align 8, !noalias !14574
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.066, i64 32
  %i.z = load atomic i32, ptr %i.y monotonic, align 8, !noalias !14574
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14575)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14576
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.04.066, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.04.066, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !14577, !noalias !14578, !nonnull !46, !noundef !46
  %i.ad = load i64, ptr %i.aa, align 8, !alias.scope !14577, !noalias !14578, !noundef !46
  invoke fastcc void @_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.ac, i64 noundef %i.ad)
          to label %.noexc unwind label %bb.i, !inline_history !14568

.noexc:                                           ; preds = %bb.f
  %.sroa.053.0.copyload = load i64, ptr %i.a, align 8, !noalias !14575
  %.sroa.454.0.copyload = load ptr, ptr %.sroa.454.0..sroa_idx, align 8, !noalias !14575
  %.sroa.555.0.copyload = load i64, ptr %.sroa.555.0..sroa_idx, align 8, !noalias !14575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14576
  br label %_RNvXs3e_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.04.066, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.066, i64 24
  %i.ag = load <2 x i32>, ptr %i.af, align 8, !noalias !14573
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.066, i64 32
  %i.ai = load atomic i32, ptr %i.ah monotonic, align 8, !noalias !14573
  %i.aj = invoke { ptr, i64 } @_RNvXsf_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ae)
          to label %.noexc2 unwind label %bb.i, !inline_history !14569 ; 2 uses

.noexc2:                                          ; preds = %bb.g
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  br label %_RNvXs3e_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit

_RNvXs3e_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit: ; preds = %.noexc2, %.noexc
  %.sroa.9.0 = phi i32 [ %i.ai, %.noexc2 ], [ %i.z, %.noexc ]
  %.sroa.6.0 = phi i64 [ %i.al, %.noexc2 ], [ %.sroa.555.0.copyload, %.noexc ]
  %.sroa.57.0 = phi ptr [ %i.ak, %.noexc2 ], [ %.sroa.454.0.copyload, %.noexc ]
  %.sroa.05.0 = phi i64 [ -1, %.noexc2 ], [ %.sroa.053.0.copyload, %.noexc ]
  %i.am = phi <2 x i32> [ %i.ag, %.noexc2 ], [ %i.x, %.noexc ]
  %.sroa.1019.0.in = getelementptr inbounds nuw i8, ptr %.sroa.04.066, i64 36
  %.sroa.1019.0 = load i8, ptr %.sroa.1019.0.in, align 4, !noalias !14573, !noundef !46
  %i.an = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %.sroa.7.065 ; 6 uses
  store i64 %.sroa.05.0, ptr %i.an, align 8, !noalias !14571
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %.sroa.57.0, ptr %.sroa.440.0..sroa_idx, align 8, !noalias !14571
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.541.0..sroa_idx, align 8, !noalias !14571
  %.sroa.642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store <2 x i32> %i.am, ptr %.sroa.642.0..sroa_idx, align 8, !noalias !14571
  %.sroa.844.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store i32 %.sroa.9.0, ptr %.sroa.844.0..sroa_idx, align 8, !noalias !14571
  %.sroa.945.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 36
  store i8 %.sroa.1019.0, ptr %.sroa.945.0..sroa_idx, align 4, !noalias !14571
  %i.ao = icmp eq i64 %i.r, 0
  br i1 %i.ao, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit, label %bb.d

bb.h:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !noalias !14571, !inline_history !14570
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.065, ptr %i.o, align 8, !noalias !14571
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.b) #59
          to label %bb.j unwind label %bb.h, !noalias !14571, !inline_history !14570

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.loopexit

_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit: ; preds = %_RNvXs3e_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit, %bb.d, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit
  %i.aq = phi ptr [ %i.k, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread ], [ %i.o, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit ], [ %i.o, %bb.d ], [ %i.o, %_RNvXs3e_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_11FStringPartNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit ]
  store i64 %i.f, ptr %i.aq, align 8, !noalias !14571
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14571
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [72 x i8], align 8                ; 5 uses
  %i.d = alloca [72 x i8], align 8                ; 5 uses
  %.sroa.02 = alloca [168 x i8], align 8          ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !46, !noundef !46 ; 2 uses
  %i.i = load i64, ptr %i.f, align 8, !noundef !46 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14595
  %i.j = mul i64 %i.i, 184                        ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.i, 50127021939428129
  br i1 %or.cond.i.i, label %bb.c, label %bb.b, !prof !61

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread: ; preds = %bb.b
  %i.l = icmp eq i64 %i.i, 0
  tail call void @llvm.assume(i1 %i.l), !noalias !14595
  store i64 0, ptr %i.e, align 8, !noalias !14595
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.m, align 8, !noalias !14595
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.b
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #62, !noalias !14596
  %i.o = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, 17) 8) #62, !noalias !14596 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit

bb.c:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.a ]
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.j) #61, !noalias !14595
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  store i64 %i.i, ptr %i.e, align 8, !noalias !14595
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !14595
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  %i.s = getelementptr inbounds nuw [184 x i8], ptr %i.h, i64 %i.i
  %2 = icmp eq i64 %i.i, 0
  br i1 %2, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit
  %.sroa.02.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.02, i64 24
  %.sroa.02.96..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.02, i64 96
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.loopexit58
  %.sroa.01.037 = phi ptr [ %i.h, %.lr.ph ], [ %i.v, %.loopexit58 ] ; 9 uses
  %.sroa.7.036 = phi i64 [ 0, %.lr.ph ], [ %i.w, %.loopexit58 ] ; 3 uses
  %.sroa.10.035 = phi i64 [ %i.i, %.lr.ph ], [ %i.t, %.loopexit58 ]
  %i.t = add nsw i64 %.sroa.10.035, -1            ; 2 uses
  %i.u = icmp eq ptr %.sroa.01.037, %i.s
  br i1 %i.u, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit, label %bb.e

.loopexit:                                        ; preds = %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.01.037, i64 184
  %i.w = add nuw nsw i64 %.sroa.7.036, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.02)
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.01.037, i64 168
  %i.y = load <2 x i32>, ptr %i.x, align 8, !noalias !14597
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.01.037, i64 176
  %i.aa = load atomic i32, ptr %i.z monotonic, align 8, !noalias !14597
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14597
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.01.037, i64 24
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull align 8 %i.ab)
          to label %.noexc unwind label %.loopexit, !inline_history !14585

.noexc:                                           ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14597
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.01.037, i64 96
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.c, ptr noundef nonnull align 8 %i.ac)
          to label %bb.h unwind label %bb.g, !noalias !14597, !inline_history !14585

bb.f:                                             ; preds = %.body, %bb.g
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body57, %.body ], [ %i.ad, %bb.g ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d) #59
          to label %bb.q unwind label %bb.o, !noalias !14597, !inline_history !14585

bb.g:                                             ; preds = %.noexc
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %.noexc
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.01.037, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.01.037, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !14598, !noalias !14599, !nonnull !46, !noundef !46 ; 2 uses
  %i.ah = load i64, ptr %i.ae, align 8, !alias.scope !14598, !noalias !14599, !noundef !46 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14600
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i: ; preds = %bb.h
  store i64 0, ptr %i.b, align 8, !noalias !14600
  store ptr inttoptr (i64 8 to ptr), ptr %3, align 8, !noalias !14600
  br label %.loopexit58

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.h
  %i.aj = mul nuw nsw i64 %i.ah, 72               ; 2 uses
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #62, !noalias !14601, !inline_history !14593
  %i.ak = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.aj, i64 noundef range(i64 1, 17) 8) #62, !noalias !14601, !inline_history !14593 ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.i, label %.lr.ph.preheader.i

bb.i:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.aj) #61
          to label %.noexc56 unwind label %bb.n, !inline_history !14593

.noexc56:                                         ; preds = %bb.i
  unreachable

.lr.ph.preheader.i:                               ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i
  store i64 %i.ah, ptr %i.b, align 8, !noalias !14600
  store ptr %i.ak, ptr %3, align 8, !noalias !14600
  %i.am = getelementptr inbounds nuw [72 x i8], ptr %i.ag, i64 %i.ah
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.preheader.i
  %.sroa.012.023.i = phi ptr [ %i.aq, %bb.k ], [ %i.ag, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.ap, %bb.k ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.an, %bb.k ], [ %i.ah, %.lr.ph.preheader.i ]
  %i.an = add nsw i64 %.sroa.10.021.i, -1         ; 2 uses
  %i.ao = icmp eq ptr %.sroa.012.023.i, %i.am
  br i1 %i.ao, label %.loopexit58, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14600
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.a, ptr noundef nonnull align 8 %.sroa.012.023.i)
          to label %bb.k unwind label %bb.m, !noalias !14600, !inline_history !14593

bb.k:                                             ; preds = %bb.j
  %i.ap = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 72
  %i.ar = getelementptr inbounds nuw [72 x i8], ptr %i.ak, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ar, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !14600
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14600
  %i.as = icmp eq i64 %i.an, 0
  br i1 %i.as, label %.loopexit58, label %.lr.ph.i

bb.l:                                             ; preds = %bb.m
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !noalias !14600, !inline_history !14593
  unreachable

bb.m:                                             ; preds = %bb.j
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %4, align 8, !noalias !14600
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1b_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #59
          to label %.body unwind label %bb.l, !noalias !14600, !inline_history !14593

bb.n:                                             ; preds = %bb.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %bb.n
  %eh.lpad-body57 = phi { ptr, i32 } [ %i.au, %bb.n ], [ %lpad.loopexit.i, %bb.m ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) #59
          to label %bb.f unwind label %bb.o, !noalias !14597, !inline_history !14585

bb.o:                                             ; preds = %.body, %bb.f
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !noalias !14597, !inline_history !14585
  unreachable

.loopexit58:                                      ; preds = %bb.k, %.lr.ph.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i
  store i64 %i.ah, ptr %4, align 8, !noalias !14600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.02, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !14595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14600
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.01.037, i64 180
  %i.ax = load i8, ptr %i.aw, align 4, !range !51, !noalias !14597, !noundef !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.02.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false), !noalias !14595
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.02.96..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !14595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14597
  %i.ay = getelementptr inbounds nuw [184 x i8], ptr %i.o, i64 %.sroa.7.036 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.ay, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.02, i64 168, i1 false), !noalias !14595
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 168
  store <2 x i32> %i.y, ptr %.sroa.418.0..sroa_idx, align 8, !noalias !14595
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 176
  store i32 %i.aa, ptr %.sroa.620.0..sroa_idx, align 8, !noalias !14595
  %.sroa.721.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 180
  store i8 %i.ax, ptr %.sroa.721.0..sroa_idx, align 4, !noalias !14595
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.02)
  %i.az = icmp eq i64 %i.t, 0
  br i1 %i.az, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit, label %bb.d

bb.p:                                             ; preds = %bb.q
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !noalias !14595, !inline_history !14594
  unreachable

bb.q:                                             ; preds = %.loopexit, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i, %bb.f ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.036, ptr %i.r, align 8, !noalias !14595
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionEEB1b_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #59
          to label %bb.r unwind label %bb.p, !noalias !14595, !inline_history !14594

bb.r:                                             ; preds = %bb.q
  resume { ptr, i32 } %eh.lpad-body

_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit: ; preds = %.loopexit58, %bb.d, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit
  %5 = phi ptr [ %i.n, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread ], [ %i.r, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit ], [ %i.r, %bb.d ], [ %i.r, %.loopexit58 ]
  store i64 %i.i, ptr %5, align 8, !noalias !14595
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !14595
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.018 = alloca [24 x i8], align 8          ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !46, !noundef !46 ; 2 uses
  %i.f = load i64, ptr %i.c, align 8, !noundef !46 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14616
  %i.g = mul i64 %i.f, 40                         ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.f, 230584300921369395
  br i1 %or.cond.i.i, label %bb.c, label %bb.b, !prof !61

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread: ; preds = %bb.b
  %i.i = icmp eq i64 %i.f, 0
  tail call void @llvm.assume(i1 %i.i), !noalias !14616
  store i64 0, ptr %i.b, align 8, !noalias !14616
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8, !noalias !14616
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.b
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #62, !noalias !14617
  %i.l = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef range(i64 1, 17) 8) #62, !noalias !14617 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit

bb.c:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.a ]
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.g) #61, !noalias !14616
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  store i64 %i.f, ptr %i.b, align 8, !noalias !14616
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.n, align 8, !noalias !14616
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %i.f
  %i.q = icmp eq i64 %i.f, 0
  br i1 %i.q, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit, %bb.e
  %.sroa.01.034 = phi ptr [ %i.ac, %bb.e ], [ %i.e, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit ] ; 7 uses
  %.sroa.7.033 = phi i64 [ %i.ab, %bb.e ], [ 0, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit ] ; 3 uses
  %.sroa.10.032 = phi i64 [ %i.r, %bb.e ], [ %i.f, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit ]
  %i.r = add nsw i64 %.sroa.10.032, -1            ; 2 uses
  %i.s = icmp eq ptr %.sroa.01.034, %i.p
  br i1 %i.s, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.01.034, i64 24
  %i.u = load <2 x i32>, ptr %i.t, align 8, !noalias !14618
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.01.034, i64 32
  %i.w = load atomic i32, ptr %i.v monotonic, align 8, !noalias !14618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14619
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.01.034, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.01.034, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !14620, !noalias !14621, !nonnull !46, !noundef !46
  %i.aa = load i64, ptr %i.x, align 8, !alias.scope !14620, !noalias !14621, !noundef !46
  invoke fastcc void @_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.z, i64 noundef %i.aa)
          to label %bb.e unwind label %bb.g, !inline_history !14614

bb.e:                                             ; preds = %bb.d
  %i.ab = add nuw nsw i64 %.sroa.7.033, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.01.034, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.018)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.018, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !14616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14619
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.01.034, i64 36
  %i.ae = load i8, ptr %i.ad, align 4, !noalias !14618, !noundef !46
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %.sroa.7.033 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.018, i64 24, i1 false), !noalias !14616
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store <2 x i32> %i.u, ptr %.sroa.419.0..sroa_idx, align 8, !noalias !14616
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i32 %i.w, ptr %.sroa.621.0..sroa_idx, align 8, !noalias !14616
  %.sroa.722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 36
  store i8 %i.ae, ptr %.sroa.722.0..sroa_idx, align 4, !noalias !14616
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.018)
  %i.ag = icmp eq i64 %i.r, 0
  br i1 %i.ag, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit, label %.lr.ph

bb.f:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !noalias !14616, !inline_history !14615
  unreachable

bb.g:                                             ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.033, ptr %i.o, align 8, !noalias !14616
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.b) #59
          to label %bb.h unwind label %bb.f, !noalias !14616, !inline_history !14615

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.loopexit

_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit: ; preds = %bb.e, %.lr.ph, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit
  %i.ai = phi ptr [ %i.k, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread ], [ %i.o, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit ], [ %i.o, %.lr.ph ], [ %i.o, %bb.e ]
  store i64 %i.f, ptr %i.ai, align 8, !noalias !14616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14616
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsa_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqNtB5_9NodeIndexE2eq(ptr nofree noundef nonnull align 4 captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #2 {
bb.a:
  %i.a = load atomic i32, ptr %0 monotonic, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit, !prof !47

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @305, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #61
  unreachable

_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load.exit: ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4, !range !117, !noundef !46
  %i.c = icmp eq i32 %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define { i32, i32 } @_RNvXsai_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_14AnyRootNodeRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #18 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !121, !noundef !46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !46, !align !54, !noundef !46 ; 82 uses
  switch i64 %i.a, label %default.unreachable55 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %switch.lookup
    i64 3, label %bb.x
    i64 4, label %bb.y
    i64 5, label %switch.lookup59
    i64 6, label %bb.z
    i64 7, label %bb.aa
    i64 8, label %bb.ab
    i64 9, label %bb.ac
    i64 10, label %bb.ad
    i64 11, label %bb.ae
    i64 12, label %bb.af
    i64 13, label %bb.ag
    i64 14, label %bb.ah
    i64 15, label %bb.ai
    i64 16, label %bb.aj
    i64 17, label %bb.ak
    i64 18, label %bb.al
    i64 19, label %bb.am
    i64 20, label %bb.an
    i64 21, label %bb.ao
    i64 22, label %bb.ap
    i64 23, label %bb.aq
    i64 24, label %bb.ar
    i64 25, label %bb.as
    i64 26, label %bb.at
  ]

default.unreachable55:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.c, i64 16
  %i.e = getelementptr i8, ptr %i.c, i64 20
  br label %bb.au

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.g = load i8, ptr %i.f, align 4, !range !50, !noundef !46 ; 2 uses
  %i.h = icmp samesign ugt i8 %i.g, 1
  %i.i = zext nneg i8 %i.g to i64
  %i.j = add nsw i64 %i.i, -1
  %i.k = select i1 %i.h, i64 %i.j, i64 0
  switch i64 %i.k, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit
    i64 2, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
end_hunk_0
begin_hunk_1_@_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone:bb.a
bb.aa:                                            ; preds = %bb.z, %bb.y
  %storemerge.i = phi ptr [ %i.ey, %bb.z ], [ null, %bb.y ] ; 2 uses
  store ptr %storemerge.i, ptr %i.bp, align 8, !noalias !15035
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15036)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #62, !noalias !15037, !inline_history !14787
  %i.ez = tail call noalias noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #62, !noalias !15037, !inline_history !14787 ; 4 uses
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %bb.ab, label %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i80, !prof !47

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #61
          to label %.noexc82 unwind label %bb.ad, !inline_history !14787

.noexc82:                                         ; preds = %bb.ab
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i80: ; preds = %bb.aa
  %i.fb = load ptr, ptr %i.er, align 8, !alias.scope !15036, !noalias !15035, !nonnull !46, !noundef !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !15037
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.an, ptr noundef nonnull align 8 %i.fb)
          to label %_RNvXsfQ_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10ExprLambdaNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit unwind label %bb.ac, !noalias !15037, !inline_history !14788

bb.ac:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i80
  %i.fc = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ez, i64 noundef 72, i64 noundef 8) #62, !noalias !15037, !inline_history !14787
  br label %.body83

bb.ad:                                            ; preds = %bb.ab
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %.body83

.body83:                                          ; preds = %bb.ac, %bb.ad
  %eh.lpad-body84 = phi { ptr, i32 } [ %i.fd, %bb.ad ], [ %i.fc, %bb.ac ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10ParametersEEEB1z_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bp) #59
          to label %common.resume549 unwind label %bb.ae, !noalias !15035, !inline_history !14784

bb.ae:                                            ; preds = %.body83
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !noalias !15035, !inline_history !14784
  unreachable

_RNvXsfQ_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10ExprLambdaNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ez, ptr noundef nonnull align 8 dereferenceable(72) %i.an, i64 72, i1 false), !noalias !15037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !15037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !15035
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ez, ptr %i.ff, align 8
  %.sroa.4183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i32> %i.ev, ptr %.sroa.4183.0..sroa_idx, align 8
  %.sroa.6185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %storemerge.i, ptr %.sroa.6185.0..sroa_idx, align 8
  %.sroa.7186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.et, ptr %.sroa.7186.0..sroa_idx, align 8
  br label %bb.gz

bb.af:                                            ; preds = %bb.a
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fh = load atomic i32, ptr %i.fg monotonic, align 8, !noalias !15038
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fj = load <2 x i32>, ptr %i.fi, align 8, !noalias !15038
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !15038
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15039)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #62, !noalias !15040, !inline_history !14793
  %i.fk = tail call noalias noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #62, !noalias !15040, !inline_history !14793 ; 5 uses
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %bb.ag, label %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i98, !prof !47

bb.ag:                                            ; preds = %bb.af
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #61, !noalias !15040, !inline_history !14793
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i98: ; preds = %bb.af
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !alias.scope !15039, !noalias !15038, !nonnull !46, !noundef !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !15040
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.ak, ptr noundef nonnull align 8 %i.fn)
          to label %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit100 unwind label %bb.ah, !noalias !15040, !inline_history !14794

bb.ah:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i98
  %i.fo = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fk, i64 noundef 72, i64 noundef 8) #62, !noalias !15040, !inline_history !14793
  br label %common.resume549

_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit100: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fk, ptr noundef nonnull align 8 dereferenceable(72) %i.ak, i64 72, i1 false), !noalias !15040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !15040
  store ptr %i.fk, ptr %i.bo, align 8, !noalias !15038
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !15038
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15041)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #62, !noalias !15042, !inline_history !14793
  %i.fp = tail call noalias noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #62, !noalias !15042, !inline_history !14793 ; 5 uses
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %bb.ai, label %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i92, !prof !47

bb.ai:                                            ; preds = %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit100
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #61
          to label %.noexc94 unwind label %bb.ak, !inline_history !14793

.noexc94:                                         ; preds = %bb.ai
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i92: ; preds = %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit100
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !alias.scope !15041, !noalias !15038, !nonnull !46, !noundef !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !15042
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.al, ptr noundef nonnull align 8 %i.fs)
          to label %bb.al unwind label %bb.aj, !noalias !15042, !inline_history !14794

bb.aj:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i92
  %i.ft = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fp, i64 noundef 72, i64 noundef 8) #62, !noalias !15042, !inline_history !14793
  br label %.body95

.body95:                                          ; preds = %bb.ak, %bb.aj, %.body89
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body90, %.body89 ], [ %i.fu, %bb.ak ], [ %i.ft, %bb.aj ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1d_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bo) #59
          to label %common.resume549 unwind label %bb.ap, !noalias !15038, !inline_history !14797

bb.ak:                                            ; preds = %bb.ai
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %.body95

bb.al:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fp, ptr noundef nonnull align 8 dereferenceable(72) %i.al, i64 72, i1 false), !noalias !15042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !15042
  store ptr %i.fp, ptr %i.bn, align 8, !noalias !15038
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15043)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #62, !noalias !15044, !inline_history !14793
  %i.fv = tail call noalias noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #62, !noalias !15044, !inline_history !14793 ; 4 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.am, label %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i86, !prof !47

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #61
          to label %.noexc88 unwind label %bb.ao, !inline_history !14793

.noexc88:                                         ; preds = %bb.am
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i86: ; preds = %bb.al
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8, !alias.scope !15043, !noalias !15038, !nonnull !46, !noundef !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !15044
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.am, ptr noundef nonnull align 8 %i.fy)
          to label %_RNvXsfV_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_6ExprIfNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit unwind label %bb.an, !noalias !15044, !inline_history !14794

bb.an:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i86
  %i.fz = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fv, i64 noundef 72, i64 noundef 8) #62, !noalias !15044, !inline_history !14793
  br label %.body89

bb.ao:                                            ; preds = %bb.am
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %.body89

.body89:                                          ; preds = %bb.an, %bb.ao
  %eh.lpad-body90 = phi { ptr, i32 } [ %i.ga, %bb.ao ], [ %i.fz, %bb.an ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1d_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bn) #59
          to label %.body95 unwind label %bb.ap, !noalias !15038, !inline_history !14797

bb.ap:                                            ; preds = %.body89, %.body95
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !noalias !15038, !inline_history !14797
  unreachable

_RNvXsfV_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_6ExprIfNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fv, ptr noundef nonnull align 8 dereferenceable(72) %i.am, i64 72, i1 false), !noalias !15044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !15044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !15038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !15038
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fk, ptr %i.gc, align 8
  %.sroa.4189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.fp, ptr %.sroa.4189.0..sroa_idx, align 8
  %.sroa.5190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.fv, ptr %.sroa.5190.0..sroa_idx, align 8
  %.sroa.6191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i32> %i.fj, ptr %.sroa.6191.0..sroa_idx, align 8
  %.sroa.8193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.fh, ptr %.sroa.8193.0..sroa_idx, align 8
  br label %bb.gz

bb.aq:                                            ; preds = %bb.a
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ge = load atomic i32, ptr %i.gd monotonic, align 8, !noalias !15045
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gg = load <2 x i32>, ptr %i.gf, align 8, !noalias !15045
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15046)
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8, !alias.scope !15046, !noalias !15047, !nonnull !46, !noundef !46 ; 2 uses
  %i.gk = load i64, ptr %i.gh, align 8, !alias.scope !15046, !noalias !15047, !noundef !46 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !15048
  %i.gl = mul i64 %i.gk, 144                      ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.gk, 64051194700380387
  br i1 %or.cond.i.i, label %bb.as, label %bb.ar, !prof !61

bb.ar:                                            ; preds = %bb.aq
  %i.gm = icmp eq i64 %i.gl, 0
  br i1 %i.gm, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread: ; preds = %bb.ar
  %i.gn = icmp eq i64 %i.gk, 0
  tail call void @llvm.assume(i1 %i.gn), !noalias !15048
  store i64 0, ptr %i.aj, align 8, !noalias !15048
  %i.go = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.go, align 8, !noalias !15048
  %i.gp = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  br label %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_.exit

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.ar
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #62, !noalias !15049
  %i.gq = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.gl, i64 noundef range(i64 1, 17) 8) #62, !noalias !15049 ; 3 uses
  %i.gr = icmp eq ptr %i.gq, null
  br i1 %i.gr, label %bb.as, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit

bb.as:                                            ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i, %bb.aq
  %.sroa.4.0.ph.i = phi i64 [ 8, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.aq ]
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.gl) #61, !noalias !15048
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  store i64 %i.gk, ptr %i.aj, align 8, !noalias !15048
  %i.gs = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.gq, ptr %i.gs, align 8, !noalias !15048
  %i.gt = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 4 uses
  %i.gu = getelementptr inbounds nuw [144 x i8], ptr %i.gj, i64 %i.gk
  %2 = icmp eq i64 %i.gk, 0
  br i1 %2, label %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit
  %3 = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph, %bb.bb
  %.sroa.0394.0444 = phi ptr [ %i.gj, %.lr.ph ], [ %i.gx, %bb.bb ] ; 4 uses
  %.sroa.7396.0443 = phi i64 [ 0, %.lr.ph ], [ %i.gy, %bb.bb ] ; 3 uses
  %.sroa.10397.0442 = phi i64 [ %i.gk, %.lr.ph ], [ %i.gv, %bb.bb ]
  %i.gv = add nsw i64 %.sroa.10397.0442, -1       ; 2 uses
  %i.gw = icmp eq ptr %.sroa.0394.0444, %i.gu
  br i1 %i.gw, label %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_.exit, label %bb.au

.loopexit:                                        ; preds = %bb.av
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.au:                                            ; preds = %bb.at
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0394.0444, i64 144
  %i.gy = add nuw nsw i64 %.sroa.7396.0443, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !15050
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0394.0444, i64 72 ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 8, !range !49, !noalias !15050, !noundef !46
  %.not.i154 = icmp eq i32 %i.ha, -1
  br i1 %.not.i154, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !15050
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.m, ptr noundef nonnull align 8 %i.gz)
          to label %.noexc155 unwind label %.loopexit, !inline_history !14811

.noexc155:                                        ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull align 8 dereferenceable(72) %i.m, i64 72, i1 false), !noalias !15050
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !15050
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  store i32 -1, ptr %i.o, align 8, !noalias !15050
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.noexc155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !15050
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.n, ptr noundef nonnull align 8 %.sroa.0394.0444)
          to label %bb.bb unwind label %bb.ay, !noalias !15050, !inline_history !14811

bb.ay:                                            ; preds = %bb.ax
  %i.hb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hc = load i32, ptr %i.o, align 8, !range !49, !alias.scope !15051, !noalias !15050, !noundef !46
  %i.hd = icmp eq i32 %i.hc, -1
  br i1 %i.hd, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %bb.ay
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.o)
          to label %bb.bd unwind label %bb.ba, !noalias !15050, !inline_history !14814

bb.ba:                                            ; preds = %bb.az
  %i.he = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !noalias !15050, !inline_history !14811
  unreachable

bb.bb:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false), !noalias !15048
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ai, ptr noundef nonnull align 8 dereferenceable(72) %i.n, i64 72, i1 false), !noalias !15048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !15050
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !15050
  %i.hf = getelementptr inbounds nuw [144 x i8], ptr %i.gq, i64 %.sroa.7396.0443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.hf, ptr noundef nonnull align 8 dereferenceable(144) %i.ai, i64 144, i1 false), !noalias !15048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.hg = icmp eq i64 %i.gv, 0
  br i1 %i.hg, label %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_.exit, label %bb.at

bb.bc:                                            ; preds = %bb.bd
  %i.hh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !noalias !15048, !inline_history !14815
  unreachable

bb.bd:                                            ; preds = %.loopexit, %bb.az, %bb.ay
  %eh.lpad-body157 = phi { ptr, i32 } [ %i.hb, %bb.ay ], [ %i.hb, %bb.az ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7396.0443, ptr %i.gt, align 8, !noalias !15048
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #59
          to label %common.resume549 unwind label %bb.bc, !noalias !15048, !inline_history !14815

_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_.exit: ; preds = %bb.bb, %bb.at, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit
  %4 = phi ptr [ %i.gp, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread ], [ %i.gt, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit ], [ %i.gt, %bb.at ], [ %i.gt, %bb.bb ]
  store i64 %i.gk, ptr %4, align 8, !noalias !15048
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hi, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !15048
  %.sroa.4196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i32> %i.gg, ptr %.sroa.4196.0..sroa_idx, align 8
  %.sroa.6198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.ge, ptr %.sroa.6198.0..sroa_idx, align 8
  br label %bb.gz

bb.be:                                            ; preds = %bb.a
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.hk = load atomic i32, ptr %i.hj monotonic, align 8, !noalias !15052
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hm = load <2 x i32>, ptr %i.hl, align 8, !noalias !15052
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8, !alias.scope !15053, !noalias !15054, !nonnull !46, !noundef !46 ; 2 uses
  %i.hq = load i64, ptr %i.hn, align 8, !alias.scope !15053, !noalias !15054, !noundef !46 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !15055
  %i.hr = mul nuw nsw i64 %i.hq, 72               ; 2 uses
  %i.hs = icmp eq i64 %i.hq, 0
  br i1 %i.hs, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i505, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i498

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i505: ; preds = %bb.be
  store i64 0, ptr %i.j, align 8, !noalias !15055
  %i.ht = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ht, align 8, !noalias !15055
  %i.hu = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit506

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i498: ; preds = %bb.be
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #62, !noalias !15056, !inline_history !23
  %i.hv = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.hr, i64 noundef range(i64 1, 17) 8) #62, !noalias !15056, !inline_history !23 ; 3 uses
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %bb.bf, label %.lr.ph.preheader.i499

bb.bf:                                            ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i498
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.hr) #61, !noalias !15055, !inline_history !23
  unreachable

.lr.ph.preheader.i499:                            ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i498
  store i64 %i.hq, ptr %i.j, align 8, !noalias !15055
  %i.hx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.hv, ptr %i.hx, align 8, !noalias !15055
  %i.hy = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %i.hz = getelementptr inbounds nuw [72 x i8], ptr %i.hp, i64 %i.hq
  br label %.lr.ph.i500

.lr.ph.i500:                                      ; preds = %bb.bh, %.lr.ph.preheader.i499
  %.sroa.012.023.i501 = phi ptr [ %i.id, %bb.bh ], [ %i.hp, %.lr.ph.preheader.i499 ] ; 3 uses
  %.sroa.7.022.i502 = phi i64 [ %i.ic, %bb.bh ], [ 0, %.lr.ph.preheader.i499 ] ; 3 uses
  %.sroa.10.021.i503 = phi i64 [ %i.ia, %bb.bh ], [ %i.hq, %.lr.ph.preheader.i499 ]
  %i.ia = add nsw i64 %.sroa.10.021.i503, -1      ; 2 uses
  %i.ib = icmp eq ptr %.sroa.012.023.i501, %i.hz
  br i1 %i.ib, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit506, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i500
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !15055
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.i, ptr noundef nonnull align 8 %.sroa.012.023.i501)
          to label %bb.bh unwind label %bb.bj, !noalias !15055, !inline_history !23

bb.bh:                                            ; preds = %bb.bg
  %i.ic = add nuw nsw i64 %.sroa.7.022.i502, 1
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i501, i64 72
  %i.ie = getelementptr inbounds nuw [72 x i8], ptr %i.hv, i64 %.sroa.7.022.i502
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ie, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false), !noalias !15055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !15055
  %i.if = icmp eq i64 %i.ia, 0
  br i1 %i.if, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit506, label %.lr.ph.i500

bb.bi:                                            ; preds = %bb.bj
  %i.ig = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !noalias !15055, !inline_history !23
  unreachable

bb.bj:                                            ; preds = %bb.bg
  %lpad.loopexit.i504 = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i502, ptr %i.hy, align 8, !noalias !15055
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1b_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #59
          to label %common.resume549 unwind label %bb.bi, !noalias !15055, !inline_history !23

_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBN_.exit506: ; preds = %.lr.ph.i500, %bb.bh, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i505
  %i.ih = phi ptr [ %i.hu, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit.thread.i505 ], [ %i.hy, %bb.bh ], [ %i.hy, %.lr.ph.i500 ]
  store i64 %i.hq, ptr %i.ih, align 8, !noalias !15055
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ii, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !15055
  %.sroa.4201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i32> %i.hm, ptr %.sroa.4201.0..sroa_idx, align 8
  %.sroa.6203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.hk, ptr %.sroa.6203.0..sroa_idx, align 8
  br label %bb.gz

bb.bk:                                            ; preds = %bb.a
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.il = load atomic i32, ptr %i.ik monotonic, align 8, !noalias !15057
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.in = load <2 x i32>, ptr %i.im, align 8, !noalias !15057
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !15057
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15058)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #62, !noalias !15059, !inline_history !14829
  %i.io = tail call noalias noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #62, !noalias !15059, !inline_history !14829 ; 5 uses
  %i.ip = icmp eq ptr %i.io, null
  br i1 %i.ip, label %bb.bl, label %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i102, !prof !47

bb.bl:                                            ; preds = %bb.bk
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #61, !noalias !15059, !inline_history !14829
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i102: ; preds = %bb.bk
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ir = load ptr, ptr %i.iq, align 8, !alias.scope !15058, !noalias !15057, !nonnull !46, !noundef !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !15059
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.ah, ptr noundef nonnull align 8 %i.ir)
          to label %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit104 unwind label %bb.bm, !noalias !15059, !inline_history !14830

bb.bm:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i102
  %i.is = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.io, i64 noundef 72, i64 noundef 8) #62, !noalias !15059, !inline_history !14829
  br label %common.resume549

_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit104: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.io, ptr noundef nonnull align 8 dereferenceable(72) %i.ah, i64 72, i1 false), !noalias !15059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !15059
  store ptr %i.io, ptr %i.bm, align 8, !noalias !15057
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !15057
  invoke fastcc void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ij)
          to label %_RNvXsga_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_12ExprListCompNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit unwind label %bb.bn, !noalias !15057, !inline_history !14831

bb.bn:                                            ; preds = %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit104
  %i.it = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1d_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bm) #59
          to label %common.resume549 unwind label %bb.bo, !noalias !15057, !inline_history !14831

bb.bo:                                            ; preds = %bb.bn
  %i.iu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !noalias !15057, !inline_history !14831
  unreachable

_RNvXsga_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_12ExprListCompNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit: ; preds = %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit104
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iv, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !15057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !15057
  %.sroa.4206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.io, ptr %.sroa.4206.0..sroa_idx, align 8
  %.sroa.5207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x i32> %i.in, ptr %.sroa.5207.0..sroa_idx, align 8
  %.sroa.7209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.il, ptr %.sroa.7209.0..sroa_idx, align 8
  br label %bb.gz

bb.bp:                                            ; preds = %bb.a
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.iy = load atomic i32, ptr %i.ix monotonic, align 8, !noalias !15060
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ja = load <2 x i32>, ptr %i.iz, align 8, !noalias !15060
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !15060
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15061)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #62, !noalias !15062, !inline_history !14836
  %i.jb = tail call noalias noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #62, !noalias !15062, !inline_history !14836 ; 5 uses
  %i.jc = icmp eq ptr %i.jb, null
  br i1 %i.jc, label %bb.bq, label %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i105, !prof !47

bb.bq:                                            ; preds = %bb.bp
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #61, !noalias !15062, !inline_history !14836
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i105: ; preds = %bb.bp
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.je = load ptr, ptr %i.jd, align 8, !alias.scope !15061, !noalias !15060, !nonnull !46, !noundef !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !15062
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.ag, ptr noundef nonnull align 8 %i.je)
          to label %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit107 unwind label %bb.br, !noalias !15062, !inline_history !14837

bb.br:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i105
  %i.jf = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jb, i64 noundef 72, i64 noundef 8) #62, !noalias !15062, !inline_history !14836
  br label %common.resume549

_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit107: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inBJ_.exit.i105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.jb, ptr noundef nonnull align 8 dereferenceable(72) %i.ag, i64 72, i1 false), !noalias !15062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !15062
  store ptr %i.jb, ptr %i.bk, align 8, !noalias !15060
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !15060
  invoke fastcc void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBI_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.iw)
          to label %_RNvXsgf_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_11ExprSetCompNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit unwind label %bb.bs, !noalias !15060, !inline_history !14838

bb.bs:                                            ; preds = %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_.exit107
  %i.jg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1d_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bk) #59
end_hunk_1
