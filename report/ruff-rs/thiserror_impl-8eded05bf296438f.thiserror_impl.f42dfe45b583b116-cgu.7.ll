Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/thiserror_impl-8eded05bf296438f.thiserror_impl.f42dfe45b583b116-cgu.7?download=true
inline.NumInlined: 72
inline.NumDeleted: 47
begin_hunk_0_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeRNtCsghEUimwObfx_11proc_macro25IdentNvYBX_NtNtBa_3cmp10PartialOrd2ltECskXLhsuIG0ok_14thiserror_impl:bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.am, ptr %i.l, align 8
  %i.an = load ptr, ptr %i.k, align 8
  %i.ao = icmp ne ptr %i.ai, %i.an
  %i.ap = icmp ne ptr %i.ak, %i.h
  %or.cond.i17 = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond.i17, label %.lr.ph.i, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtCsghEUimwObfx_11proc_macro25IdentE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECskXLhsuIG0ok_14thiserror_impl.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader, %.lr.ph.i
  %lpad.loopexit.split-lp31 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateRNtCsghEUimwObfx_11proc_macro25IdentEECskXLhsuIG0ok_14thiserror_impl(ptr nonnull align 8 %i.a) #23
          to label %bb.e unwind label %bb.d

_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtCsghEUimwObfx_11proc_macro25IdentE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECskXLhsuIG0ok_14thiserror_impl.exit: ; preds = %.noexc18, %.noexc
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateRNtCsghEUimwObfx_11proc_macro25IdentEECskXLhsuIG0ok_14thiserror_impl(ptr nonnull align 8 %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtCsghEUimwObfx_11proc_macro25IdentE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECskXLhsuIG0ok_14thiserror_impl.exit
  ret void

bb.d:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.e:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp31
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtCsghEUimwObfx_11proc_macro29TokenTreeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldBW_NtCstuaXukgBIa_10proc_macro9TokenTreeuNvNtBY_3imp19into_compiler_tokenNCINvNvB1A_8for_each4callB3d_NCINvXsg_B3f_NtB3f_11TokenStreamINtNtB1E_7collect12FromIteratorB3d_E9from_iterINtB2G_3MapBH_B3P_EE0E0E0ECskXLhsuIG0ok_14thiserror_impl(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !58 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 2 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.g = load ptr, ptr %i.e, align 8
  %i.h = load ptr, ptr %i.f, align 8              ; 3 uses
  %.not.not = icmp eq ptr %i.h, %i.g
  br i1 %.not.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.i, ptr %i.f, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  invoke void @_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldNtCsghEUimwObfx_11proc_macro29TokenTreeNtCstuaXukgBIa_10proc_macro9TokenTreeuNvNtBW_3imp19into_compiler_tokenNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1x_NCINvXsg_B1z_NtB1z_11TokenStreamINtNtB2Q_7collect12FromIteratorB1x_E9from_iterINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBU_EB29_EE0E0E0CskXLhsuIG0ok_14thiserror_impl(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.b)
          to label %bb.b unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8
  store i64 %i.l, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %i.m, align 8
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtCsghEUimwObfx_11proc_macro29TokenTreeEEB1g_(ptr nonnull align 8 %i.a)
  ret void

bb.e:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.n

bb.f:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtCsghEUimwObfx_11proc_macro29TokenTreeEEB1q_(ptr nonnull align 8 %0) #23
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvXs9_NtNtCs4NRVxsYgnAr_4core4hash5implsmNtB8_4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECskXLhsuIG0ok_14thiserror_impl(ptr nofree readonly align 4 captures(none) %0, ptr align 8 %1) unnamed_addr #0 !guid !59 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  tail call void @_RNvYNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher9write_u32CskXLhsuIG0ok_14thiserror_impl(ptr align 8 %1, i32 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsd_NtNtNtCscdodAO9FK5_5alloc11collections5btree3setINtB6_8BTreeSetRNtCsghEUimwObfx_11proc_macro25IdentEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB1P_8adapters3map3MapNtNtCsfq6Q4Do6HaX_3syn8generics10TypeParamsNCNvMNtCskXLhsuIG0ok_14thiserror_impl8genericsNtB4b_13ParamsInScope3new0EEB4d_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr %1, ptr align 8 %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !62 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = tail call { ptr, ptr } @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapNtNtCsfq6Q4Do6HaX_3syn8generics10TypeParamsNCNvMNtCskXLhsuIG0ok_14thiserror_impl8genericsNtB1Y_13ParamsInScope3new0ENtB2_12IntoIterator9into_iterB20_(ptr %1, ptr align 8 %2) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  call void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapNtNtCsfq6Q4Do6HaX_3syn8generics10TypeParamsNCNvMNtCskXLhsuIG0ok_14thiserror_impl8genericsNtB1D_13ParamsInScope3new0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCscdodAO9FK5_5alloc3vec3VecRNtCsghEUimwObfx_11proc_macro25IdentEEB1F_(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr %i.e, ptr align 8 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx, align 8
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtCsghEUimwObfx_11proc_macro25IdentEECskXLhsuIG0ok_14thiserror_impl(ptr nonnull align 8 %i.c)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  invoke void @_RINvNtCscdodAO9FK5_5alloc5slice11stable_sortRNtCsghEUimwObfx_11proc_macro25IdentNvYBG_NtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltECskXLhsuIG0ok_14thiserror_impl(ptr align 8 %i.k, i64 %i.h)
          to label %_RINvMse_NtNtNtCscdodAO9FK5_5alloc11collections5btree3setINtB6_8BTreeSetRNtCsghEUimwObfx_11proc_macro25IdentE16from_sorted_iterINtNtNtBc_3vec9into_iter8IntoIterB17_EECskXLhsuIG0ok_14thiserror_impl.exit unwind label %bb.f

bb.d:                                             ; preds = %_RINvMse_NtNtNtCscdodAO9FK5_5alloc11collections5btree3setINtB6_8BTreeSetRNtCsghEUimwObfx_11proc_macro25IdentE16from_sorted_iterINtNtNtBc_3vec9into_iter8IntoIterB17_EECskXLhsuIG0ok_14thiserror_impl.exit, %bb.b
  ret void

_RINvMse_NtNtNtCscdodAO9FK5_5alloc11collections5btree3setINtB6_8BTreeSetRNtCsghEUimwObfx_11proc_macro25IdentE16from_sorted_iterINtNtNtBc_3vec9into_iter8IntoIterB17_EECskXLhsuIG0ok_14thiserror_impl.exit: ; preds = %bb.c
  %.sroa.010.0.copyload = load i64, ptr %i.c, align 8
  %.sroa.211.0.copyload = load ptr, ptr %i.j, align 8 ; 3 uses
  %.sroa.312.0.copyload = load i64, ptr %i.g, align 8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.sroa.211.0.copyload, i64 %.sroa.312.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.211.0.copyload, ptr %i.b, align 8, !noalias !63
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.211.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8, !noalias !63
  %.sroa.3.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.010.0.copyload, ptr %.sroa.3.0..sroa_idx15, align 8, !noalias !63
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !63
  call void @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapRNtCsghEUimwObfx_11proc_macro25IdentNtNtB8_7set_val9SetValZSTE27bulk_build_from_sorted_iterINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBc_3vec9into_iter8IntoIterB17_ENCINvMse_NtB8_3setINtB49_8BTreeSetB17_E16from_sorted_iterB3o_E0EECskXLhsuIG0ok_14thiserror_impl(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.e:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.m

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtCsghEUimwObfx_11proc_macro25IdentEECskXLhsuIG0ok_14thiserror_impl(ptr nonnull align 8 %i.c) #23
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtCsghEUimwObfx_11proc_macro29TokenTreeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3mapNtCstuaXukgBIa_10proc_macro9TokenTreeNvNtBS_3imp19into_compiler_tokenECskXLhsuIG0ok_14thiserror_impl(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 !guid !64 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtCsghEUimwObfx_11proc_macro29TokenTreeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator7collectNtNtBS_3imp11TokenStreamECskXLhsuIG0ok_14thiserror_impl(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 !guid !65 {
bb.a:
  tail call void @_RINvXs5_NtCsghEUimwObfx_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorNtB8_9TokenTreeE9from_iterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB1V_EECskXLhsuIG0ok_14thiserror_impl(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden ptr @_RINvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtCsghEUimwObfx_11proc_macro29TokenTreeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator7collectNtNtBS_8fallback11TokenStreamECskXLhsuIG0ok_14thiserror_impl(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !66 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke ptr @_RNvMs_NtCsghEUimwObfx_11proc_macro28fallbackNtB4_11TokenStream3new()
          to label %bb.b unwind label %bb.l

bb.b:                                             ; preds = %bb.a
  store ptr %i.h, ptr %i.g, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.i = invoke align 8 ptr @_RNvMNtCsghEUimwObfx_11proc_macro25rcvecINtB2_5RcVecNtB4_9TokenTreeE8make_mutCsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.g)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  store ptr %i.i, ptr %i.e, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.m = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.not8.i.i.i.i = icmp eq ptr %i.m, %i.l
  br i1 %.not.not8.i.i.i.i, label %_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtCsghEUimwObfx_11proc_macro29TokenTreeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB1A_8for_each4callBW_NCINvXsa_NtBY_8fallbackNtB3c_11TokenStreamINtNtB1E_7collect6ExtendBW_E6extendBH_E0E0ECskXLhsuIG0ok_14thiserror_impl.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callNtCsghEUimwObfx_11proc_macro29TokenTreeNCINvXsa_NtB1h_8fallbackNtB21_11TokenStreamINtNtBa_7collect6ExtendB1f_E6extendINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB1f_EE0E0CskXLhsuIG0ok_14thiserror_impl.exit.i.i.i.i
  %i.n = phi ptr [ %i.o, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callNtCsghEUimwObfx_11proc_macro29TokenTreeNCINvXsa_NtB1h_8fallbackNtB21_11TokenStreamINtNtBa_7collect6ExtendB1f_E6extendINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB1f_EE0E0CskXLhsuIG0ok_14thiserror_impl.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 3 uses
  store ptr %i.o, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = invoke align 8 ptr @_RNvMs0_NtCsghEUimwObfx_11proc_macro25rcvecINtB5_8RcVecMutNtB7_9TokenTreeE6as_mutCsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.e)
          to label %_RNCINvXsa_NtCsghEUimwObfx_11proc_macro28fallbackNtB8_11TokenStreamINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendNtBa_9TokenTreeE6extendINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB1V_EE0CskXLhsuIG0ok_14thiserror_impl.exit.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro29TokenTreeEBD_(ptr nonnull align 8 %i.b) #23
          to label %.body.thread.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNCINvXsa_NtCsghEUimwObfx_11proc_macro28fallbackNtB8_11TokenStreamINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendNtBa_9TokenTreeE6extendINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB1V_EE0CskXLhsuIG0ok_14thiserror_impl.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  invoke void @_RNvNtCsghEUimwObfx_11proc_macro28fallback26push_token_from_proc_macro(ptr align 8 %i.p, ptr nonnull align 8 %i.a)
          to label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callNtCsghEUimwObfx_11proc_macro29TokenTreeNCINvXsa_NtB1h_8fallbackNtB21_11TokenStreamINtNtBa_7collect6ExtendB1f_E6extendINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB1f_EE0E0CskXLhsuIG0ok_14thiserror_impl.exit.i.i.i.i unwind label %.body.i.i.i.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callNtCsghEUimwObfx_11proc_macro29TokenTreeNCINvXsa_NtB1h_8fallbackNtB21_11TokenStreamINtNtBa_7collect6ExtendB1f_E6extendINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB1f_EE0E0CskXLhsuIG0ok_14thiserror_impl.exit.i.i.i.i: ; preds = %_RNCINvXsa_NtCsghEUimwObfx_11proc_macro28fallbackNtB8_11TokenStreamINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendNtBa_9TokenTreeE6extendINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB1V_EE0CskXLhsuIG0ok_14thiserror_impl.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.not.i.i.i.i = icmp eq ptr %i.o, %i.l
  br i1 %.not.not.i.i.i.i, label %_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtCsghEUimwObfx_11proc_macro29TokenTreeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB1A_8for_each4callBW_NCINvXsa_NtBY_8fallbackNtB3c_11TokenStreamINtNtB1E_7collect6ExtendBW_E6extendBH_E0E0ECskXLhsuIG0ok_14thiserror_impl.exit.i.i.i, label %.lr.ph.i.i.i.i

.body.i.i.i.i:                                    ; preds = %_RNCINvXsa_NtCsghEUimwObfx_11proc_macro28fallbackNtB8_11TokenStreamINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendNtBa_9TokenTreeE6extendINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB1V_EE0CskXLhsuIG0ok_14thiserror_impl.exit.i.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i.i.i

.body.thread.i.i.i.i:                             ; preds = %.body.i.i.i.i, %bb.d
  %eh.lpad-body5.i.i.i.i = phi { ptr, i32 } [ %i.s, %.body.i.i.i.i ], [ %i.q, %bb.d ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtCsghEUimwObfx_11proc_macro29TokenTreeEEB1q_(ptr nonnull align 8 %i.d) #23
          to label %.body.i unwind label %bb.f

bb.f:                                             ; preds = %.body.thread.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtCsghEUimwObfx_11proc_macro29TokenTreeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB1A_8for_each4callBW_NCINvXsa_NtBY_8fallbackNtB3c_11TokenStreamINtNtB1E_7collect6ExtendBW_E6extendBH_E0E0ECskXLhsuIG0ok_14thiserror_impl.exit.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callNtCsghEUimwObfx_11proc_macro29TokenTreeNCINvXsa_NtB1h_8fallbackNtB21_11TokenStreamINtNtBa_7collect6ExtendB1f_E6extendINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB1f_EE0E0CskXLhsuIG0ok_14thiserror_impl.exit.i.i.i.i, %bb.c
  %i.u = load ptr, ptr %i.d, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.w = load i64, ptr %i.v, align 8
  store i64 %i.w, ptr %i.c, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.u, ptr %i.x, align 8
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtCsghEUimwObfx_11proc_macro29TokenTreeEEB1g_(ptr nonnull align 8 %i.c)
          to label %_RINvXs8_NtCsghEUimwObfx_11proc_macro28fallbackNtB6_11TokenStreamINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorNtB8_9TokenTreeE9from_iterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB20_EECskXLhsuIG0ok_14thiserror_impl.exit unwind label %bb.i

bb.g:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtCsghEUimwObfx_11proc_macro29TokenTreeEEB1q_(ptr nonnull align 8 %i.f) #23
          to label %.body.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.i:                                             ; preds = %_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtCsghEUimwObfx_11proc_macro29TokenTreeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB1A_8for_each4callBW_NCINvXsa_NtBY_8fallbackNtB3c_11TokenStreamINtNtB1E_7collect6ExtendBW_E6extendBH_E0E0ECskXLhsuIG0ok_14thiserror_impl.exit.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.i, %bb.g, %.body.thread.i.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %eh.lpad-body5.i.i.i.i, %.body.thread.i.i.i.i ], [ %i.y, %bb.g ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsghEUimwObfx_11proc_macro28fallback11TokenStreamEBF_(ptr nonnull align 8 %i.g) #23
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.l, %.body.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.k:                                             ; preds = %bb.l, %.body.i
  %.pn5.i = phi { ptr, i32 } [ %i.ac, %bb.l ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %.pn5.i

bb.l:                                             ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtCsghEUimwObfx_11proc_macro29TokenTreeEEB1q_(ptr align 8 %0) #23
          to label %bb.k unwind label %bb.j

_RINvXs8_NtCsghEUimwObfx_11proc_macro28fallbackNtB6_11TokenStreamINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorNtB8_9TokenTreeE9from_iterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB20_EECskXLhsuIG0ok_14thiserror_impl.exit: ; preds = %_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtCsghEUimwObfx_11proc_macro29TokenTreeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB1A_8for_each4callBW_NCINvXsa_NtBY_8fallbackNtB3c_11TokenStreamINtNtB1E_7collect6ExtendBW_E6extendBH_E0E0ECskXLhsuIG0ok_14thiserror_impl.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ad = load ptr, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.ad
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekable8PeekableINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCskXLhsuIG0ok_14thiserror_impl3ast5FieldENCNvNtB1L_6expand10fields_pat0EENtNtNtBa_6traits8iterator8Iterator3mapNtCsghEUimwObfx_11proc_macro25IdentNCB2s_s_0EB1L_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 !guid !67 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden align 8 ptr @_RNCINvMse_NtNtNtCscdodAO9FK5_5alloc11collections5btree3setINtB8_8BTreeSetRNtCsghEUimwObfx_11proc_macro25IdentE16from_sorted_iterINtNtNtBe_3vec9into_iter8IntoIterB19_EE0CskXLhsuIG0ok_14thiserror_impl(ptr nofree readnone captures(none) %0, ptr nofree readnone returned align 8 captures(ret: address, provenance) %1) unnamed_addr #3 !guid !68 {
bb.a:
  ret ptr %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callNtNtCskXLhsuIG0ok_14thiserror_impl3ast5FieldINtNtNtBe_3ops12control_flow11ControlFlowB1k_ENcNtB22_5Break0E0B1o_(ptr sret([320 x i8]) align 8 %0, ptr %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #0 !guid !69 {
bb.a:
  %i.a = alloca [320 x i8], align 8               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.a, ptr noundef nonnull align 8 dereferenceable(320) %2, i64 320, i1 false)
  call void @_RNvYNcNtINtNtNtCs4NRVxsYgnAr_4core3ops12control_flow11ControlFlowNtNtCskXLhsuIG0ok_14thiserror_impl3ast5FieldE5Break0INtNtBb_8function5FnMutTB11_EE8call_mutB15_(ptr sret([320 x i8]) align 8 %0, ptr %1, ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callNtNtCskXLhsuIG0ok_14thiserror_impl3ast7VariantINtNtNtBe_3ops12control_flow11ControlFlowB1k_ENcNtB24_5Break0E0B1o_(ptr sret([328 x i8]) align 8 %0, ptr %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #0 !guid !70 {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.a, ptr noundef nonnull align 8 dereferenceable(328) %2, i64 328, i1 false)
  call void @_RNvYNcNtINtNtNtCs4NRVxsYgnAr_4core3ops12control_flow11ControlFlowNtNtCskXLhsuIG0ok_14thiserror_impl3ast7VariantE5Break0INtNtBb_8function5FnMutTB11_EE8call_mutB15_(ptr sret([328 x i8]) align 8 %0, ptr %1, ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callNtCsghEUimwObfx_11proc_macro211TokenStreamNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB24_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtCskXLhsuIG0ok_14thiserror_impl3ast7VariantENCNvNtB3U_6expand9impl_enums1_0EE0E0B3U_(ptr align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 !guid !71 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB8_3VecNtCsghEUimwObfx_11proc_macro211TokenStreamE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1N_5slice4iter4IterNtNtCskXLhsuIG0ok_14thiserror_impl3ast7VariantENCNvNtB2X_6expand9impl_enums1_0EE0B2X_(ptr align 8 %0, ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callNtCstuaXukgBIa_10proc_macro9TokenTreeNCINvXsg_B1h_NtB1h_11TokenStreamINtNtBa_7collect12FromIteratorB1f_E9from_iterINtNtNtBc_8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtCsghEUimwObfx_11proc_macro29TokenTreeENvNtB4l_3imp19into_compiler_tokenEE0E0CskXLhsuIG0ok_14thiserror_impl(ptr align 8 %0, ptr nofree readonly align 4 captures(none) %1) unnamed_addr #0 !guid !72 {
bb.a:
  %i.a = alloca [20 x i8], align 4                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.a, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false)
  call void @_RNCINvXsg_CstuaXukgBIa_10proc_macroNtB8_11TokenStreamINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorNtB8_9TokenTreeE9from_iterINtNtNtBW_8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtCsghEUimwObfx_11proc_macro29TokenTreeENvNtB3v_3imp19into_compiler_tokenEE0CskXLhsuIG0ok_14thiserror_impl(ptr align 8 %0, ptr nonnull align 4 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvMs0_NtCskXLhsuIG0ok_14thiserror_impl3astNtB7_4Enum8from_syn0B9_(ptr sret([328 x i8]) align 8 %0, ptr nofree readonly align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !75 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 5 uses
  %.sroa.4.i10 = alloca [104 x i8], align 8       ; 5 uses
  %i.b = alloca [104 x i8], align 8               ; 5 uses
  %.sroa.4.i = alloca [96 x i8], align 8          ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [272 x i8], align 8               ; 7 uses
  %.sroa.0.i = alloca [320 x i8], align 8         ; 6 uses
  %i.k = alloca [272 x i8], align 8               ; 4 uses
  %i.l = alloca [272 x i8], align 8               ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 2 uses
  %i.n = alloca [24 x i8], align 8                ; 2 uses
  %i.o = alloca [24 x i8], align 8                ; 2 uses
  %i.p = alloca [24 x i8], align 8                ; 3 uses
  %i.q = alloca [328 x i8], align 8               ; 5 uses
  %i.r = alloca [328 x i8], align 8               ; 4 uses
  %i.s = alloca [328 x i8], align 8               ; 13 uses
  %i.t = load ptr, ptr %1, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.v = tail call { ptr, i64 } @_RNvXs7_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsfq6Q4Do6HaX_3syn4attr9AttributeENtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5derefBI_(ptr nonnull align 8 %i.u), !noalias !76 ; 2 uses
  %i.w = extractvalue { ptr, i64 } %i.v, 0
  %i.x = extractvalue { ptr, i64 } %i.v, 1
  call void @_RNvNtCskXLhsuIG0ok_14thiserror_impl4attr3get(ptr nonnull sret([272 x i8]) align 8 %i.k, ptr align 8 %i.w, i64 %i.x), !noalias !76
  call void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCskXLhsuIG0ok_14thiserror_impl4attr5AttrsNtNtCsfq6Q4Do6HaX_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([272 x i8]) align 8 %i.l, ptr nonnull align 8 %i.k), !noalias !76
  %i.y = load i64, ptr %i.l, align 8, !noalias !76
  %i.z = icmp eq i64 %i.y, -2
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !76
  call void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCskXLhsuIG0ok_14thiserror_impl3ast7VariantNtNtCsfq6Q4Do6HaX_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1u_EE13from_residualBO_(ptr nonnull sret([328 x i8]) align 8 %i.q, ptr nonnull align 8 %i.e, ptr nonnull align 8 @17)
  br label %_RNvMs1_NtCskXLhsuIG0ok_14thiserror_impl3astNtB5_7Variant8from_syn.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.j, ptr noundef nonnull align 8 dereferenceable(272) %i.l, i64 272, i1 false), !noalias !76
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 256
  invoke void @_RNvXs15_CsghEUimwObfx_11proc_macro2NtB6_5IdentNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCskXLhsuIG0ok_14thiserror_impl(ptr nonnull sret([24 x i8]) align 8 %i.i, ptr nonnull align 8 %i.ab)
          to label %bb.f unwind label %bb.e, !noalias !76

bb.d:                                             ; preds = %bb.g, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.ag, %bb.g ], [ %i.ac, %bb.e ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskXLhsuIG0ok_14thiserror_impl4attr5AttrsEBF_(ptr nonnull align 8 %i.j) #23
          to label %common.resume unwind label %bb.q, !noalias !76

bb.e:                                             ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !76
  %i.ad = invoke { ptr, ptr } @_RNvMNtCsfq6Q4Do6HaX_3syn4dataNtB2_6Fields4iter(ptr align 8 %2)
          to label %.noexc.i unwind label %bb.g, !noalias !76 ; 2 uses

.noexc.i:                                         ; preds = %bb.f
  %i.ae = extractvalue { ptr, ptr } %i.ad, 0
  %i.af = extractvalue { ptr, ptr } %i.ad, 1
  invoke void @_RNvYINtNtCsfq6Q4Do6HaX_3syn10punctuated4IterNtNtB7_4data5FieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9enumerateCskXLhsuIG0ok_14thiserror_impl(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr %i.ae, ptr align 8 %i.af)
          to label %.noexc7.i unwind label %bb.g, !noalias !76

end_hunk_0
