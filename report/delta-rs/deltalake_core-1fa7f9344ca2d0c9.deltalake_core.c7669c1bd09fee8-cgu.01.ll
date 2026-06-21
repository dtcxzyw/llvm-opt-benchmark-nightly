inline.NumInlined: 11461
inline.NumDeleted: 4051
begin_hunk_0_@_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionE3mapINtNtB5_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCNCNvXs1_NtNtBO_10operations6deleteNtB4b_13DeleteBuilderNtNtNtB5_6future11into_future10IntoFuture11into_future0s_0EBO_:bb.a
          to label %bb.c unwind label %bb.y, !noalias !35

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.24.val) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.24.val, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !noalias !40, !nonnull !8, !noundef !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 552
  invoke void @_RNvMs_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4planNtBa_15DeltaScanConfig12table_schema(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.k)
          to label %bb.g unwind label %bb.e, !noalias !42

bb.g:                                             ; preds = %bb.f
  %i.l = load i64, ptr %i.a, align 8, !range !43, !noalias !40, !noundef !8 ; 2 uses
  %.not.i = icmp eq i64 %i.l, 20
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noalias !40 ; 2 uses
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.322.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.322.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.619.0..sroa_idx.i, i64 24, i1 false), !noalias !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.l, ptr %i.o, align 8, !alias.scope !35, !noalias !44
  %.sroa.221.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.n, ptr %.sroa.221.0..sroa_idx.i, align 16, !alias.scope !35, !noalias !44
  store i64 37, ptr %i.e, align 16, !alias.scope !35, !noalias !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40
  br label %bb.s

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40
  invoke void @_RNvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsjhHCjzi9uUI_17datafusion_common8dfschema10ToDFSchema15to_dfschema_refCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noundef nonnull %i.n)
          to label %bb.j unwind label %bb.e, !noalias !42

bb.j:                                             ; preds = %bb.i
  %i.p = load i64, ptr %i.b, align 8, !range !43, !noalias !40, !noundef !8 ; 2 uses
  %.not34.i = icmp eq i64 %i.p, 20
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !40 ; 2 uses
  br i1 %.not34.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.628.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.331.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.331.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.628.0..sroa_idx.i, i64 24, i1 false), !noalias !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.p, ptr %i.s, align 8, !alias.scope !35, !noalias !44
  %.sroa.230.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.r, ptr %.sroa.230.0..sroa_idx.i, align 16, !alias.scope !35, !noalias !44
  store i64 37, ptr %i.e, align 16, !alias.scope !35, !noalias !44
  br label %bb.s

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40
  invoke void @_RNvMNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utilsNtB2_10Expression7resolve(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.e, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(1680) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) @347, ptr noundef nonnull %i.r)
          to label %bb.m unwind label %bb.e

bb.m:                                             ; preds = %bb.l
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider15DeltaScanConfigEBM_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.n unwind label %bb.d, !noalias !35

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !40
  %i.t = load i64, ptr %i.d, align 16, !range !4, !alias.scope !45, !noalias !48, !noundef !8
  %.not.i.i = icmp eq i64 %i.t, 37
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.d), !noalias !35
  br label %_RNCNCNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6deleteNtB9_13DeleteBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0s_0Bd_.exit

bb.p:                                             ; preds = %bb.n
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.q, !noalias !35

bb.q:                                             ; preds = %bb.p
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %common.resume.i unwind label %bb.r, !noalias !35

bb.r:                                             ; preds = %bb.q
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !35
  unreachable

common.resume.i:                                  ; preds = %bb.w, %bb.q, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.z, %bb.w ], [ %i.v, %bb.q ], [ %.pn.i, %bb.c ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.p
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u), !noalias !35
  br label %_RNCNCNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6deleteNtB9_13DeleteBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0s_0Bd_.exit

bb.s:                                             ; preds = %bb.k, %bb.h
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider15DeltaScanConfigEBM_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.t unwind label %bb.d, !noalias !42

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !40
  %i.x = load i64, ptr %i.d, align 16, !range !4, !alias.scope !49, !noalias !48, !noundef !8
  %.not.i36.i = icmp eq i64 %i.x, 37
  br i1 %.not.i36.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.d), !noalias !35
  br label %_RNCNCNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6deleteNtB9_13DeleteBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0s_0Bd_.exit

bb.v:                                             ; preds = %bb.t
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i38.i unwind label %bb.w, !noalias !35

bb.w:                                             ; preds = %bb.v
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %common.resume.i unwind label %bb.x, !noalias !35

bb.x:                                             ; preds = %bb.w
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !35
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i38.i: ; preds = %bb.v
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y), !noalias !35
  br label %_RNCNCNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6deleteNtB9_13DeleteBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0s_0Bd_.exit

bb.y:                                             ; preds = %bb.e, %bb.c
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !35
  unreachable

_RNCNCNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6deleteNtB9_13DeleteBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0s_0Bd_.exit: ; preds = %bb.o, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i38.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %i.e, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.aa

bb.z:                                             ; preds = %bb.a
  store i64 38, ptr %0, align 16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_RNCNCNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6deleteNtB9_13DeleteBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0s_0Bd_.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly captures(address_is_null) %1, i64 %2, ptr %.0.val, ptr %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !58
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !58
  %i.b = load i64, ptr %i.a, align 8, !range !64, !noalias !58, !noundef !8
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !65, !noalias !58, !noundef !8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.c, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, !prof !3

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.f, align 8, !noalias !58
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #41, !noalias !58
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.b
  %i.h = load ptr, ptr %i.f, align 8, !noalias !58, !nonnull !8, !noundef !8 ; 2 uses
  %i.i = icmp ule i64 %2, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !58
  %.not.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i, label %_RNvYNvYeNtNtCs6Po7BT7Nknu_5alloc6borrow7ToOwned8to_ownedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTReEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit, label %bb.d

bb.d:                                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !66
  br label %_RNvYNvYeNtNtCs6Po7BT7Nknu_5alloc6borrow7ToOwned8to_ownedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTReEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit

_RNvYNvYeNtNtCs6Po7BT7Nknu_5alloc6borrow7ToOwned8to_ownedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTReEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.d
  store i64 %i.e, ptr %0, align 8, !alias.scope !67, !noalias !68
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !67, !noalias !68
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !67, !noalias !68
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.8.val) ]
  tail call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %.0.val, ptr noundef nonnull %.8.val)
  br label %bb.f

bb.f:                                             ; preds = %_RNvYNvYeNtNtCs6Po7BT7Nknu_5alloc6borrow7ToOwned8to_ownedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTReEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvMNtCsjhHCjzi9uUI_17datafusion_common9tree_nodeNtB3_17TreeNodeRecursion12visit_parentNCNCINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtB3_8TreeNode5visitNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesE0s_0EB2F_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 9)) %0, i8 noundef range(i8 0, 3) %1, ptr noalias nofree noundef readnone align 16 captures(none) dereferenceable(128) %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %1, ptr %i.a, align 8
  store i64 20, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsjhHCjzi9uUI_17datafusion_common9tree_nodeNtB3_17TreeNodeRecursion13visit_siblingNCINvXs5_B3_TINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1C_EINtB3_17TreeNodeContainerB2b_E14apply_elementsQQNCNCNCINvNvNtB3_8TreeNode5apply10apply_implB2b_NCINvNtB2f_5utils18find_exprs_in_exprNCINvB4C_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtB5J_5slice4iter4IterNtNtB2f_11select_expr10SelectExprENCINvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB7K_9DataFrame6selectB2b_INtNtB1H_3vec3VecB2b_EEs_0EE0E0E000E0ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, i8 noundef range(i8 0, 3) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef align 8 dereferenceable(8) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i8 %1, 2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @_RINvXs0_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1o_E14apply_elementsQQQNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCINvNtB1s_5utils18find_exprs_in_exprNCINvB3L_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtB4S_5slice4iter4IterNtNtB1s_11select_expr10SelectExprENCINvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB6T_9DataFrame6selectB1o_INtNtBU_3vec3VecB1o_EEs_0EE0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.c, align 8
  store i64 20, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsjhHCjzi9uUI_17datafusion_common9tree_nodeNtB3_17TreeNodeRecursion13visit_siblingNCINvXs5_B3_TINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1C_EINtB3_17TreeNodeContainerB2b_E14apply_elementsQQNCNCNCINvNvNtB3_8TreeNode5apply10apply_implB2b_NCINvNtB2f_5utils18find_exprs_in_exprNCINvB4C_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB5J_5slice4iter4IterB2b_EINtNtB5J_6option4IterB2b_EEE0E0E000E0ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, i8 noundef range(i8 0, 3) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef align 8 dereferenceable(8) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i8 %1, 2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @_RINvXs0_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1o_E14apply_elementsQQQNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCINvNtB1s_5utils18find_exprs_in_exprNCINvB3L_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB4S_5slice4iter4IterB1o_EINtNtB4S_6option4IterB1o_EEE0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.c, align 8
  store i64 20, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsjhHCjzi9uUI_17datafusion_common9tree_nodeNtB3_17TreeNodeRecursion13visit_siblingNCINvXs5_B3_TINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1C_EINtB3_17TreeNodeContainerB2b_E14apply_elementsQQNCNCNCINvNvNtB3_8TreeNode5apply10apply_implB2b_NCINvNtB2f_5utils18find_exprs_in_exprNCINvB4C_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB5M_5slice4iter4IterNtB2d_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB7b_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE14select_to_plans2_0EE0E0E000E0EB8i_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, i8 noundef range(i8 0, 3) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef align 8 dereferenceable(8) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i8 %1, 2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @_RINvXs0_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1o_E14apply_elementsQQQNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCINvNtB1s_5utils18find_exprs_in_exprNCINvB3L_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB4V_5slice4iter4IterNtB1q_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB6k_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE14select_to_plans2_0EE0E0E000EB7r_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.c, align 8
  store i64 20, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsjhHCjzi9uUI_17datafusion_common9tree_nodeNtB3_17TreeNodeRecursion13visit_siblingNCINvXs5_B3_TINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1C_EINtB3_17TreeNodeContainerB2b_E14apply_elementsQQNCNCNCINvNvNtB3_8TreeNode5apply10apply_implB2b_NCINvNtB2f_5utils18find_exprs_in_exprNCINvB4C_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB5E_INtNtNtB5M_5slice4iter4IterB2b_EINtNtB5M_6option4IterB2b_EEB76_EE0E0E000E0ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, i8 noundef range(i8 0, 3) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef align 8 dereferenceable(8) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i8 %1, 2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @_RINvXs0_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1o_E14apply_elementsQQQNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCINvNtB1s_5utils18find_exprs_in_exprNCINvB3L_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB4N_INtNtNtB4V_5slice4iter4IterB1o_EINtNtB4V_6option4IterB1o_EEB6f_EE0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.c, align 8
  store i64 20, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsjhHCjzi9uUI_17datafusion_common9tree_nodeNtB3_17TreeNodeRecursion13visit_siblingNCINvXs5_B3_TINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1C_EINtB3_17TreeNodeContainerB2b_E14apply_elementsQQNCNCNCINvNvNtB3_8TreeNode5apply10apply_implB2b_NCINvNtB2f_5utils18find_exprs_in_exprNCINvB4C_20find_aggregate_exprsRSB2b_E0E0E000E0ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, i8 noundef range(i8 0, 3) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef align 8 dereferenceable(8) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i8 %1, 2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @_RINvXs0_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1o_E14apply_elementsQQQNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCINvNtB1s_5utils18find_exprs_in_exprNCINvB3L_20find_aggregate_exprsRSB1o_E0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.c, align 8
  store i64 20, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsjhHCjzi9uUI_17datafusion_common9tree_nodeNtB3_17TreeNodeRecursion13visit_siblingNCINvXs5_B3_TINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1C_EINtB3_17TreeNodeContainerB2b_E14apply_elementsQQNCNCNCINvNvNtB3_8TreeNode5apply10apply_implB2b_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB4E_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE27try_process_group_by_unnest0E000E0EB5L_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, i8 noundef range(i8 0, 3) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef align 8 dereferenceable(8) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i8 %1, 2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @_RINvXs0_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1o_E14apply_elementsQQQNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB3N_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE27try_process_group_by_unnest0E000EB4U_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.c, align 8
  store i64 20, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsjhHCjzi9uUI_17datafusion_common9tree_nodeNtB3_17TreeNodeRecursion13visit_siblingNCINvXs5_B3_TINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1C_EINtB3_17TreeNodeContainerB2b_E14apply_elementsQQNCNCNCINvNvNtB3_8TreeNode5apply10apply_implB2b_NCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider32expr_is_exact_predicate_for_cols0E000E0EB4F_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, i8 noundef range(i8 0, 3) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef align 8 dereferenceable(8) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i8 %1, 2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @_RINvXs0_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1o_E14apply_elementsQQQNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider32expr_is_exact_predicate_for_cols0E000EB3O_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.c, align 8
  store i64 20, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsjhHCjzi9uUI_17datafusion_common9tree_nodeNtB3_17TreeNodeRecursion13visit_siblingNCINvXs5_B3_TINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1C_EINtB3_17TreeNodeContainerB2b_E14apply_elementsQQNCNCNCINvYB2b_NtB3_8TreeNode5visitNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesE000E0EB4q_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, i8 noundef range(i8 0, 3) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef align 8 dereferenceable(8) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i8 %1, 2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @_RINvXs0_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1o_E14apply_elementsQQQNCNCNCINvYB1o_NtB6_8TreeNode5visitNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesE000EB3z_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.c, align 8
  store i64 20, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsjhHCjzi9uUI_17datafusion_common9tree_nodeNtB3_17TreeNodeRecursion13visit_siblingNCINvXs9_B3_TRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1C_EINtB3_20TreeNodeRefContainerB2c_E18apply_ref_elementsNCNCNCINvNvNtB3_8TreeNode5apply10apply_implB2c_NCINvNtB2g_5utils18find_exprs_in_exprNCINvB4I_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtB5P_5slice4iter4IterNtNtB2g_11select_expr10SelectExprENCINvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB7Q_9DataFrame6selectB2c_INtNtB1I_3vec3VecB2c_EEs_0EE0E0E000E0ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, i8 noundef range(i8 0, 3) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef align 8 dereferenceable(8) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i8 %1, 2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvXs0_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1o_E14apply_elementsQNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCINvNtB1s_5utils18find_exprs_in_exprNCINvB3J_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtB4Q_5slice4iter4IterNtNtB1s_11select_expr10SelectExprENCINvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB6R_9DataFrame6selectB1o_INtNtBU_3vec3VecB1o_EEs_0EE0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.b, align 8
  store i64 20, ptr %0, align 8
  br label %bb.d

end_hunk_0
begin_hunk_1_@_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations6delete7execute00B9_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !23037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !23037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !23037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !23037
  br label %bb.fs

bb.fn:                                            ; preds = %bb.ep
  %i.po = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !23037
  %i.pp = atomicrmw sub ptr %i.oa, i64 1 release, align 8, !noalias !23096
  %i.pq = icmp eq i64 %i.pp, 1
  br i1 %i.pq, label %bb.fo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit79.i

bb.fo:                                            ; preds = %bb.fn
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aw) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit79.i unwind label %bb.fk, !noalias !23041

bb.fp:                                            ; preds = %bb.eo
  %i.pr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit79.i

bb.fq:                                            ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !23037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !23037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !23037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !23037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !23037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !23037
  br label %bb.fr

bb.fr:                                            ; preds = %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualB2m_.exit77.i, %bb.fh, %bb.fm, %bb.fq, %bb.go
  %i.ps = phi ptr [ %i.mx, %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualB2m_.exit77.i ], [ %i.mx, %bb.fh ], [ %i.mx, %bb.fm ], [ %i.mx, %bb.fq ], [ %i.rp, %bb.go ]
  %i.pt = phi ptr [ %i.my, %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualB2m_.exit77.i ], [ %i.my, %bb.fh ], [ %i.my, %bb.fm ], [ %i.my, %bb.fq ], [ %i.rq, %bb.go ]
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 2465
  store i8 0, ptr %i.pu, align 1, !noalias !23037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !23037
  br label %bb.jl

bb.fs:                                            ; preds = %.body.i, %bb.fa, %bb.fg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit79.i, %bb.ia, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit124.i
  %i.pv = phi ptr [ %i.rs, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit124.i ], [ %i.vi, %bb.ia ], [ %i.mx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit79.i ], [ %i.mx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.mx, %bb.fa ], [ %i.mx, %bb.fg ], [ %i.mx, %.body.i ]
  %i.pw = phi ptr [ %i.rt, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit124.i ], [ %i.vj, %bb.ia ], [ %i.my, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit79.i ], [ %i.my, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.my, %bb.fa ], [ %i.my, %bb.fg ], [ %i.my, %.body.i ]
  %.pn57.pn.pn.pn.i = phi { ptr, i32 } [ %.pn51.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit124.i ], [ %i.vk, %bb.ia ], [ %.pn57.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit79.i ], [ %.pn54.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.ou, %bb.fa ], [ %i.pi, %bb.fg ], [ %.pn.i, %.body.i ]
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 2465 ; 2 uses
  %i.py = load i8, ptr %i.px, align 1, !range !89, !noalias !23037, !noundef !8
  %i.pz = trunc nuw i8 %i.py to i1
  br i1 %i.pz, label %bb.jk, label %bb.jj

bb.ft:                                            ; preds = %bb.ei
  %i.qa = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

.thread765:                                       ; preds = %bb.ei
  %i.qb = extractvalue { i64, i64 } %i.ns, 0
  %i.qc = extractvalue { i64, i64 } %i.ns, 1
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.qd, ptr noundef nonnull align 8 dereferenceable(32) @305, i64 32, i1 false), !noalias !23037
  %.sroa.5.0..sroa_idx.i274 = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store i64 %i.qb, ptr %.sroa.5.0..sroa_idx.i274, align 8, !noalias !23037
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store i64 %i.qc, ptr %.sroa.6.0..sroa_idx.i, align 16, !noalias !23037
  store i64 -9223372036854775711, ptr %i.ag, align 16, !noalias !23037
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.9488, ptr noundef nonnull align 8 dereferenceable(88) %i.qd, i64 88, i1 false), !noalias !23103
  store i8 1, ptr %i.mx, align 2, !noalias !23037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8129.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br label %bb.jn

bb.fu:                                            ; preds = %bb.jj, %bb.ft, %bb.eb
  %i.qe = phi ptr [ %i.mx, %bb.eb ], [ %i.pv, %bb.jj ], [ %i.mx, %bb.ft ]
  %i.qf = phi ptr [ %i.my, %bb.eb ], [ %i.pw, %bb.jj ], [ %i.my, %bb.ft ]
  %.pn62.pn.i = phi { ptr, i32 } [ %i.nj, %bb.eb ], [ %.pn57.pn.pn.pn.i, %bb.jj ], [ %i.qa, %bb.ft ]
  store i8 2, ptr %i.qe, align 2, !noalias !23037
  br label %.body

bb.fv:                                            ; preds = %bb.ec
  %i.qg = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.8.16..sroa_idx126.i = getelementptr inbounds nuw i8, ptr %.sroa.8.i, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8.16..sroa_idx126.i, ptr noundef nonnull align 16 dereferenceable(96) %i.qg, i64 96, i1 false), !noalias !23037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !23037
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.ag, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8.16..sroa_idx126.i, i64 96, i1 false), !noalias !23037
  br label %bb.jl

bb.fw:                                            ; preds = %bb.dy
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @441) #48
          to label %.noexc275 unwind label %bb.dx

.noexc275:                                        ; preds = %bb.fw
  unreachable

bb.fx:                                            ; preds = %bb.dy
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @441) #48
          to label %.noexc276 unwind label %bb.dx

.noexc276:                                        ; preds = %bb.fx
  unreachable

bb.fy:                                            ; preds = %bb.fz
  %i.qh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !23037
  %.val66.i = load ptr, ptr %i.ql, align 16, !noalias !23037
  %i.qi = getelementptr i8, ptr %1, i64 2488
  %.val67.i = load ptr, ptr %i.qi, align 8, !noalias !23037, !nonnull !8, !align !216, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val66.i, ptr nonnull %.val67.i) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit124.i unwind label %bb.fk, !noalias !23041

bb.fz:                                            ; preds = %bb.ff, %bb.ea
  %i.qj = phi ptr [ %i.mx, %bb.ff ], [ %i.mw, %bb.ea ] ; 8 uses
  %i.qk = phi ptr [ %i.my, %bb.ff ], [ %i.mv, %bb.ea ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !23037
  %i.ql = getelementptr inbounds nuw i8, ptr %1, i64 2480 ; 4 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ql, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ga unwind label %bb.fy, !noalias !23041

bb.ga:                                            ; preds = %bb.fz
  %i.qm = load i64, ptr %i.ap, align 8, !range !30, !noalias !23037, !noundef !8 ; 3 uses
  %i.qn = icmp eq i64 %i.qm, 21
  br i1 %i.qn, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !23037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !23037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !23037
  br label %.thread762

bb.gc:                                            ; preds = %bb.ga
  %.sroa.3184.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.3184.0.copyload.i = load ptr, ptr %.sroa.3184.0..sroa_idx.i, align 8, !noalias !23037 ; 7 uses
  %.sroa.5185.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.5185.0.copyload.i = load ptr, ptr %.sroa.5185.0..sroa_idx.i, align 8, !noalias !23037 ; 6 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i, i64 16, i1 false), !noalias !23037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !23037
  %.val.i = load ptr, ptr %i.ql, align 16, !noalias !23037 ; 5 uses
  %i.qo = getelementptr i8, ptr %1, i64 2488
  %.val65.i = load ptr, ptr %i.qo, align 8, !noalias !23037, !nonnull !8, !align !216, !noundef !8 ; 5 uses
  %i.qp = load ptr, ptr %.val65.i, align 8, !invariant.load !8, !noalias !23041 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.qp, null
  br i1 %.not.i.i.i, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.qp(ptr noundef nonnull %.val.i)
          to label %bb.ge unwind label %bb.gg, !noalias !23041

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %i.qq = getelementptr inbounds nuw i8, ptr %.val65.i, i64 8
  %i.qr = load i64, ptr %i.qq, align 8, !range !231, !invariant.load !8, !noalias !23041 ; 2 uses
  %i.qs = icmp eq i64 %i.qr, 0
  br i1 %i.qs, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.qt = getelementptr inbounds nuw i8, ptr %.val65.i, i64 16
  %i.qu = load i64, ptr %i.qt, align 8, !range !2991, !invariant.load !8, !noalias !23041
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.qr, i64 noundef range(i64 1, 536870913) %i.qu) #46, !noalias !23041
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.gg:                                            ; preds = %bb.gd
  %i.qv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.val65.i, i64 8
  %i.qx = load i64, ptr %i.qw, align 8, !range !231, !invariant.load !8, !noalias !23041 ; 2 uses
  %i.qy = icmp eq i64 %i.qx, 0
  br i1 %i.qy, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit124.i, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.qz = getelementptr inbounds nuw i8, ptr %.val65.i, i64 16
  %i.ra = load i64, ptr %i.qz, align 8, !range !2991, !invariant.load !8, !noalias !23041
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.qx, i64 noundef range(i64 1, 536870913) %i.ra) #46, !noalias !23041
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit124.i

bb.gi:                                            ; preds = %bb.gj
  %i.rb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit124.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.gf, %bb.ge
  %.not.i82.i = icmp eq i64 %i.qm, 20
  br i1 %.not.i82.i, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.4189.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !23037
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4189.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i, i64 16, i1 false), !noalias !23037
  store i64 %i.qm, ptr %i.aa, align 8, !noalias !23104
  %.sroa.2187.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %.sroa.3184.0.copyload.i, ptr %.sroa.2187.0..sroa_idx.i, align 8, !noalias !23104
  %.sroa.3188.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %.sroa.5185.0.copyload.i, ptr %.sroa.3188.0..sroa_idx.i, align 8, !noalias !23104
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.ag, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.aa)
          to label %bb.gn unwind label %bb.gi, !noalias !23041

bb.gk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3184.0.copyload.i), "nonnull"(ptr %.sroa.5185.0.copyload.i) ]
  %i.rc = getelementptr inbounds nuw i8, ptr %1, i64 2464
  store ptr %.sroa.3184.0.copyload.i, ptr %i.aq, align 8, !noalias !23037
  %i.rd = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %.sroa.5185.0.copyload.i, ptr %i.rd, align 8, !noalias !23037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !23037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !23037
  store i8 0, ptr %i.rc, align 16, !noalias !23037
  store ptr %.sroa.3184.0.copyload.i, ptr %i.an, align 8, !noalias !23037
  %i.re = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %.sroa.5185.0.copyload.i, ptr %i.re, align 8, !noalias !23037
  %i.rf = getelementptr inbounds nuw i8, ptr %1, i64 2416
  %i.rg = load ptr, ptr %i.rf, align 16, !noalias !23037, !nonnull !8, !noundef !8
  %i.rh = getelementptr inbounds nuw i8, ptr %1, i64 2424
  %i.ri = load ptr, ptr %i.rh, align 8, !noalias !23037, !nonnull !8, !align !216, !noundef !8
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 136
  %i.rk = load ptr, ptr %i.rj, align 8, !invariant.load !8, !noalias !23041, !nonnull !8
  %i.rl = invoke noundef nonnull ptr %i.rk(ptr noundef nonnull %i.rg)
          to label %.thread.i unwind label %bb.gl, !noalias !23041 ; 2 uses

.thread.i:                                        ; preds = %bb.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !23037
  %.sroa.8205.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2544
  store ptr %.sroa.3184.0.copyload.i, ptr %.sroa.8205.0..sroa_idx.i, align 16, !noalias !23037
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2552
  store ptr %.sroa.5185.0.copyload.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !23037
  %.sroa.10206.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2560
  store ptr %i.rl, ptr %.sroa.10206.0..sroa_idx.i, align 16, !noalias !23037
  %.sroa.12207.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2569 ; 2 uses
  store i8 0, ptr %.sroa.12207.0..sroa_idx.i, align 1, !noalias !23037
  br label %bb.gr

.noexc85.i:                                       ; preds = %bb.gm, %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !23037
  br label %bb.je

bb.gl:                                            ; preds = %bb.gk
  %i.rm = landingpad { ptr, i32 }
          cleanup
  %i.rn = atomicrmw sub ptr %.sroa.3184.0.copyload.i, i64 1 release, align 8, !noalias !23107
  %i.ro = icmp eq i64 %i.rn, 1
  br i1 %i.ro, label %bb.gm, label %.noexc85.i

bb.gm:                                            ; preds = %bb.gl
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.an) #45
          to label %.noexc85.i unwind label %bb.fk, !noalias !23041

bb.gn:                                            ; preds = %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !23037
  br label %bb.go

bb.go:                                            ; preds = %bb.jd, %bb.gn
  %i.rp = phi ptr [ %i.ue, %bb.jd ], [ %i.qj, %bb.gn ] ; 2 uses
  %i.rq = phi ptr [ %i.uf, %bb.jd ], [ %i.qk, %bb.gn ] ; 3 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %1, i64 2464
  store i8 0, ptr %i.rr, align 16, !noalias !23037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !23037
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.rq)
          to label %bb.fr unwind label %bb.ia, !noalias !23041

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit124.i: ; preds = %bb.fe, %bb.fy, %bb.gg, %bb.gh, %bb.gi, %bb.ji, %bb.jh, %bb.je
  %i.rs = phi ptr [ %i.xr, %bb.jh ], [ %i.xr, %bb.je ], [ %i.xr, %bb.ji ], [ %i.mx, %bb.fe ], [ %i.qj, %bb.fy ], [ %i.qj, %bb.gi ], [ %i.qj, %bb.gh ], [ %i.qj, %bb.gg ]
  %i.rt = phi ptr [ %i.xs, %bb.jh ], [ %i.xs, %bb.je ], [ %i.xs, %bb.ji ], [ %i.my, %bb.fe ], [ %i.qk, %bb.fy ], [ %i.qk, %bb.gi ], [ %i.qk, %bb.gh ], [ %i.qk, %bb.gg ] ; 2 uses
  %.pn51.pn.i = phi { ptr, i32 } [ %.pn48.pn.i, %bb.jh ], [ %.pn48.pn.i, %bb.je ], [ %.pn48.pn.i, %bb.ji ], [ %i.pd, %bb.fe ], [ %i.qh, %bb.fy ], [ %i.rb, %bb.gi ], [ %i.qv, %bb.gh ], [ %i.qv, %bb.gg ]
  %i.ru = getelementptr inbounds nuw i8, ptr %1, i64 2464
  store i8 0, ptr %i.ru, align 16, !noalias !23037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !23037
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.rt) #42
          to label %bb.fs unwind label %bb.fk, !noalias !23041

bb.gp:                                            ; preds = %bb.gy, %bb.gx
  %i.rv = landingpad { ptr, i32 }
          cleanup
  br label %.body88.i

.body88.i:                                        ; preds = %bb.gw, %bb.gp
  %i.rw = phi ptr [ %i.mw, %bb.gp ], [ %i.ss, %bb.gw ]
  %i.rx = phi ptr [ %i.mv, %bb.gp ], [ %i.st, %bb.gw ]
  %i.ry = phi ptr [ %i.rz, %bb.gp ], [ %i.sv, %bb.gw ]
  %eh.lpad-body89.i = phi { ptr, i32 } [ %i.rv, %bb.gp ], [ %.pn2.pn.i.i, %bb.gw ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan7collect0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.ry) #42
          to label %bb.je unwind label %bb.fk, !noalias !23041

bb.gq:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !23037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !23037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !23037
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 2569 ; 5 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !range !3878, !noalias !23112
  %i.rz = getelementptr inbounds nuw i8, ptr %1, i64 2480 ; 6 uses
  switch i8 %.pre.i, label %default.unreachable928 [
    i8 0, label %._crit_edge878
    i8 1, label %bb.gx
    i8 2, label %bb.gy
    i8 3, label %bb.ha
  ]

._crit_edge878:                                   ; preds = %bb.gq
  %.phi.trans.insert879 = getelementptr inbounds nuw i8, ptr %1, i64 2544
  %.pre880 = load ptr, ptr %.phi.trans.insert879, align 16, !noalias !23112
  %.phi.trans.insert881 = getelementptr inbounds nuw i8, ptr %1, i64 2552
  %.pre882 = load ptr, ptr %.phi.trans.insert881, align 8, !noalias !23112
  %.phi.trans.insert883 = getelementptr inbounds nuw i8, ptr %1, i64 2560
  %.pre884 = load ptr, ptr %.phi.trans.insert883, align 16, !noalias !23112
  br label %bb.gr

bb.gr:                                            ; preds = %._crit_edge878, %.thread.i
  %i.sa = phi ptr [ %i.qj, %.thread.i ], [ %i.mw, %._crit_edge878 ] ; 3 uses
  %i.sb = phi ptr [ %i.qk, %.thread.i ], [ %i.mv, %._crit_edge878 ] ; 3 uses
  %i.sc = phi ptr [ %i.rl, %.thread.i ], [ %.pre884, %._crit_edge878 ]
  %i.sd = phi ptr [ %.sroa.5185.0.copyload.i, %.thread.i ], [ %.pre882, %._crit_edge878 ]
  %i.se = phi ptr [ %.sroa.3184.0.copyload.i, %.thread.i ], [ %.pre880, %._crit_edge878 ]
  %i.sf = phi ptr [ %.sroa.12207.0..sroa_idx.i, %.thread.i ], [ %.phi.trans.insert.i, %._crit_edge878 ] ; 3 uses
  %i.sg = phi ptr [ %i.ql, %.thread.i ], [ %i.rz, %._crit_edge878 ] ; 4 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %1, i64 2568 ; 3 uses
  store i8 0, ptr %i.sh, align 8, !noalias !23112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !23112
  invoke void @_RNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan14execute_stream(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.z, ptr noundef nonnull %i.se, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.sd, ptr noundef nonnull %i.sc)
          to label %bb.gt unwind label %bb.gs, !noalias !23116

bb.gs:                                            ; preds = %bb.gr
  %i.si = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !23112
  br label %bb.gw

bb.gt:                                            ; preds = %bb.gr
  call void @llvm.experimental.noalias.scope.decl(metadata !23117)
  %i.sj = load i64, ptr %i.z, align 8, !range !43, !alias.scope !23120, !noalias !23122, !noundef !8 ; 2 uses
  %.not.i.i87.i = icmp eq i64 %i.sj, 20
  %i.sk = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.sl = load ptr, ptr %i.sk, align 8, !alias.scope !23123, !noalias !23112 ; 4 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.sn = load ptr, ptr %i.sm, align 8, !alias.scope !23123, !noalias !23112 ; 4 uses
  br i1 %.not.i.i87.i, label %.thread.i.i, label %bb.gv

.thread.i.i:                                      ; preds = %bb.gt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !23112
  store i8 0, ptr %i.sh, align 8, !noalias !23112
  store ptr %i.sl, ptr %i.sg, align 8, !noalias !23112
  %.sroa.721.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2488
  store ptr %i.sn, ptr %.sroa.721.0..sroa_idx.i.i, align 8, !noalias !23112
  %.sroa.923.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2536 ; 2 uses
  store i8 0, ptr %.sroa.923.0..sroa_idx.i.i, align 8, !noalias !23112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !23112
  br label %bb.hb

bb.gu:                                            ; preds = %.body.i.i
  %i.so = getelementptr inbounds nuw i8, ptr %1, i64 2568
  %i.sp = load i8, ptr %i.so, align 8, !range !89, !noalias !23112, !noundef !8
  %i.sq = trunc nuw i8 %i.sp to i1
  br i1 %i.sq, label %bb.hq, label %bb.gw

bb.gv:                                            ; preds = %bb.gt
  %.sroa.12.0..sroa_idx16.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.sr = load <2 x i64>, ptr %.sroa.12.0..sroa_idx16.i.i, align 8, !noalias !23112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !23112
  store i8 0, ptr %i.sh, align 8, !noalias !23112
  br label %bb.hs

bb.gw:                                            ; preds = %bb.hq, %bb.gu, %bb.gs
  %i.ss = phi ptr [ %i.sa, %bb.gs ], [ %i.sy, %bb.hq ], [ %i.sy, %bb.gu ]
  %i.st = phi ptr [ %i.sb, %bb.gs ], [ %i.sz, %bb.hq ], [ %i.sz, %bb.gu ]
  %i.su = phi ptr [ %i.sf, %bb.gs ], [ %i.ta, %bb.hq ], [ %i.ta, %bb.gu ]
  %i.sv = phi ptr [ %i.sg, %bb.gs ], [ %i.tb, %bb.hq ], [ %i.tb, %bb.gu ]
  %.pn2.pn.i.i = phi { ptr, i32 } [ %i.si, %bb.gs ], [ %eh.lpad-body.i.i, %bb.hq ], [ %eh.lpad-body.i.i, %bb.gu ]
  %i.sw = getelementptr inbounds nuw i8, ptr %1, i64 2568
  store i8 0, ptr %i.sw, align 8, !noalias !23112
  store i8 2, ptr %i.su, align 1, !noalias !23112
  br label %.body88.i

bb.gx:                                            ; preds = %bb.gq
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @436) #48
          to label %.noexc90.i unwind label %bb.gp, !noalias !23041

.noexc90.i:                                       ; preds = %bb.gx
  unreachable

bb.gy:                                            ; preds = %bb.gq
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @436) #48
          to label %.noexc91.i unwind label %bb.gp, !noalias !23041

.noexc91.i:                                       ; preds = %bb.gy
  unreachable

bb.gz:                                            ; preds = %bb.hh, %bb.hg
  %i.sx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.hf, %bb.gz
  %i.sy = phi ptr [ %i.mw, %bb.gz ], [ %i.tl, %bb.hf ] ; 2 uses
  %i.sz = phi ptr [ %i.mv, %bb.gz ], [ %i.tm, %bb.hf ] ; 2 uses
  %i.ta = phi ptr [ %.phi.trans.insert.i, %bb.gz ], [ %i.tn, %bb.hf ] ; 2 uses
  %i.tb = phi ptr [ %i.rz, %bb.gz ], [ %i.to, %bb.hf ] ; 3 uses
  %.sroa.0.050.i.i = phi ptr [ undef, %bb.gz ], [ %.sroa.0.051.i.i, %bb.hf ]
  %.sroa.9.046.i.i = phi ptr [ undef, %bb.gz ], [ %.sroa.9.047.i.i, %bb.hf ] ; 2 uses
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.sx, %bb.gz ], [ %.pn.i.i.i, %bb.hf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !23112
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs5wg436RVUAP_24datafusion_physical_plan6common7collect0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.tb) #42
end_hunk_1
begin_hunk_2_@_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations6delete7execute00B9_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(416) %.sroa.5538, ptr noundef nonnull align 16 dereferenceable(416) %.sroa.5538.0..sroa_idx, i64 416, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0EBO_(ptr noundef nonnull align 16 %i.abp)
          to label %bb.lh unwind label %bb.lg

bb.lg:                                            ; preds = %bb.li, %bb.lf
  %i.abs = landingpad { ptr, i32 }
          cleanup
  br label %bb.mv

bb.lh:                                            ; preds = %bb.lf
  %i.abt = icmp eq i64 %i.abq, 37
  br i1 %i.abt, label %bb.li, label %bb.lj

bb.li:                                            ; preds = %bb.lh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3537, i64 40, i1 false)
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.bg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.n)
          to label %bb.mu unwind label %bb.lg

bb.lj:                                            ; preds = %bb.lh
  %i.abu = getelementptr inbounds nuw i8, ptr %1, i64 2088 ; 2 uses
  store i8 1, ptr %i.abu, align 8
  %i.abv = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 3 uses
  store i64 %i.abq, ptr %i.abv, align 16
  %.sroa.4540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 696
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4540.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3537, i64 40, i1 false)
  %.sroa.5541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(416) %.sroa.5541.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(416) %.sroa.5538, i64 416, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  %i.abw = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %bb.ll unwind label %bb.lk     ; 2 uses

bb.lk:                                            ; preds = %bb.lj
  %i.abx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ln

bb.ll:                                            ; preds = %bb.lj
  %i.aby = extractvalue { i64, i32 } %i.abw, 0
  %i.abz = extractvalue { i64, i32 } %i.abw, 1
  store i64 %i.aby, ptr %i.cz, align 8
  %i.aca = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i32 %i.abz, ptr %i.aca, align 8
  %i.acb = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.acc = load i64, ptr %i.acb, align 16, !noundef !8
  %i.acd = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ace = load i32, ptr %i.acd, align 8, !range !23028, !noundef !8
  %i.acf = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant14duration_since(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cz, i64 noundef %i.acc, i32 noundef %i.ace)
          to label %bb.lo unwind label %bb.lm     ; 2 uses

bb.lm:                                            ; preds = %bb.ll
  %i.acg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lk, %bb.lm
  %.pn39 = phi { ptr, i32 } [ %i.abx, %bb.lk ], [ %i.acg, %bb.lm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  br label %bb.mt

bb.lo:                                            ; preds = %bb.ll
  %i.ach = extractvalue { i64, i32 } %i.acf, 0
  %i.aci = extractvalue { i64, i32 } %i.acf, 1
  %i.acj = mul i64 %i.ach, 1000
  %i.ack = udiv i32 %i.aci, 1000000
  %i.acl = zext nneg i32 %i.ack to i64
  %i.acm = add i64 %i.acj, %i.acl
  %i.acn = getelementptr inbounds nuw i8, ptr %1, i64 1936
  %i.aco = getelementptr inbounds nuw i8, ptr %1, i64 1976
  store i64 %i.acm, ptr %i.aco, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  %i.acp = load i64, ptr %i.abv, align 16, !range !289, !noundef !8
  %.not41 = icmp eq i64 %i.acp, 36
  br i1 %.not41, label %bb.lp, label %bb.lr

bb.lp:                                            ; preds = %bb.lo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  %i.acq = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %bb.mo unwind label %bb.mn     ; 2 uses

bb.lq:                                            ; preds = %bb.ls, %bb.lr
  %i.acr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCseo6ZV82fEK1_3url3UrlEECs14kWLkQVSKO_14deltalake_core.exit395

bb.lr:                                            ; preds = %bb.lo
  store i8 0, ptr %i.abu, align 8
  %i.acs = getelementptr inbounds nuw i8, ptr %1, i64 2082
  store i8 1, ptr %i.acs, align 2
  %i.act = getelementptr inbounds nuw i8, ptr %1, i64 1152 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(464) %i.act, ptr noundef nonnull align 16 dereferenceable(464) %i.abv, i64 464, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  %i.acu = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.acv = getelementptr i8, ptr %1, i64 136
  %.val241 = load ptr, ptr %i.acv, align 8, !nonnull !8, !noundef !8
  %i.acw = getelementptr inbounds nuw i8, ptr %.val241, i64 88
  %i.acx = load ptr, ptr %i.acw, align 8, !nonnull !8, !noundef !8
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 1072
  invoke fastcc void @_RNvXsi_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(88) %i.cw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.acy)
          to label %bb.ls unwind label %bb.lq

bb.ls:                                            ; preds = %bb.lr
  %i.acz = invoke fastcc noundef nonnull ptr @_RNvMse_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtCseo6ZV82fEK1_3url3UrlE3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %i.cw)
          to label %bb.lt unwind label %bb.lq     ; 2 uses

bb.lt:                                            ; preds = %bb.ls
  store ptr %i.acz, ptr %i.cx, align 8
  %i.ada = getelementptr inbounds nuw i8, ptr %1, i64 2087 ; 2 uses
  store i8 1, ptr %i.ada, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  %i.adb = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.val207 = load ptr, ptr %i.adb, align 16, !nonnull !8, !noundef !8
  %i.adc = getelementptr i8, ptr %1, i64 152
  %.val208 = load ptr, ptr %i.adc, align 8, !nonnull !8, !align !216, !noundef !8 ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %1, i64 1608
  %.val249 = load ptr, ptr %i.add, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.ade = atomicrmw add ptr %.val249, i64 1 monotonic, align 8
  %i.adf = icmp slt i64 %i.ade, 0
  br i1 %i.adf, label %bb.lu, label %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit

bb.lu:                                            ; preds = %bb.lt
  call void @llvm.trap()
  unreachable

_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.lt
  %i.adg = getelementptr inbounds nuw i8, ptr %.val208, i64 16
  %i.adh = load i64, ptr %i.adg, align 8, !range !2991, !invariant.load !8
  %i.adi = add nsw i64 %i.adh, -1
  %i.adj = and i64 %i.adi, -16
  %i.adk = getelementptr inbounds nuw i8, ptr %.val207, i64 %i.adj
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 16
  %i.adm = invoke { ptr, ptr } @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB4_13EagerSnapshot10file_views(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.acu, ptr noundef nonnull %i.adl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.val208, ptr noundef nonnull %.val249)
          to label %bb.lw unwind label %bb.lv     ; 2 uses

bb.lv:                                            ; preds = %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  %i.adn = landingpad { ptr, i32 }
          cleanup
  br label %bb.mg

bb.lw:                                            ; preds = %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  %i.ado = extractvalue { ptr, ptr } %i.adm, 0    ; 3 uses
  %i.adp = extractvalue { ptr, ptr } %i.adm, 1    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  store i8 0, ptr %i.ada, align 1
  store ptr %i.acz, ptr %i.cr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  invoke void @_RNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_filesNtB5_16MatchedFilesScan9files_set(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cq, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(464) %i.act)
          to label %bb.ly unwind label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.adq = landingpad { ptr, i32 }
          cleanup
  br label %bb.lz

bb.ly:                                            ; preds = %bb.lw
  %i.adr = invoke fastcc noundef nonnull ptr @_RNvMse_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetNtNtB7_6string6StringEE3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.cq)
          to label %bb.mc unwind label %bb.mb

bb.lz:                                            ; preds = %bb.mb, %bb.lx
  %.pn46 = phi { ptr, i32 } [ %i.adv, %bb.mb ], [ %i.adq, %bb.lx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  call void @llvm.experimental.noalias.scope.decl(metadata !23288)
  call void @llvm.experimental.noalias.scope.decl(metadata !23291)
  %i.ads = load ptr, ptr %i.cr, align 8, !alias.scope !23294, !nonnull !8, !noundef !8
  %i.adt = atomicrmw sub ptr %i.ads, i64 1 release, align 8, !noalias !23294
  %i.adu = icmp eq i64 %i.adt, 1
  br i1 %i.adu, label %bb.ma, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCseo6ZV82fEK1_3url3UrlEECs14kWLkQVSKO_14deltalake_core.exit

bb.ma:                                            ; preds = %bb.lz
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtCseo6ZV82fEK1_3url3UrlE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cr) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCseo6ZV82fEK1_3url3UrlEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.br

bb.mb:                                            ; preds = %bb.ly
  %i.adv = landingpad { ptr, i32 }
          cleanup
  br label %bb.lz

bb.mc:                                            ; preds = %bb.ly
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  %i.adw = load ptr, ptr %i.cr, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  %i.adx = invoke { ptr, ptr } @_RINvNtNtCs8CRAYtH5WmW_12futures_util6stream4iter4iterINtNtNtNtCsbvkFyIu7lgC_4core4iter7sources6repeat6RepeatTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCseo6ZV82fEK1_3url3UrlEIB1K_INtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetNtNtB1O_6string6StringEEEEECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.adw, ptr noundef nonnull %i.adr)
          to label %bb.me unwind label %bb.md     ; 2 uses

bb.md:                                            ; preds = %bb.mc
  %i.ady = landingpad { ptr, i32 }
          cleanup
  br label %bb.ml

bb.me:                                            ; preds = %bb.mc
  %i.adz = extractvalue { ptr, ptr } %i.adx, 0
  %i.aea = extractvalue { ptr, ptr } %i.adx, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ado), "nonnull"(ptr %i.adp) ]
  invoke void @_RINvYINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB2t_6errors15DeltaTableErrorENtNtB8_6marker4SendEL_EENtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream9StreamExt3zipINtNtB4D_4iter4IterINtNtNtNtB8_4iter7sources6repeat6RepeatTINtNtBE_4sync3ArcNtCseo6ZV82fEK1_3url3UrlEIB6x_INtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetNtNtBE_6string6StringEEEEEEB2t_(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %i.cs, ptr noundef nonnull %i.ado, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.adp, ptr noundef nonnull %i.adz, ptr noundef nonnull %i.aea)
          to label %bb.mh unwind label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.aeb = landingpad { ptr, i32 }
          cleanup
  br label %bb.mg

bb.mg:                                            ; preds = %bb.lv, %bb.ml, %bb.mf
  %.pn51 = phi { ptr, i32 } [ %i.adn, %bb.lv ], [ %.pn48.ph, %bb.ml ], [ %i.aeb, %bb.mf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  br label %bb.mi

bb.mh:                                            ; preds = %bb.me
  %i.aec = getelementptr inbounds nuw i8, ptr %i.ct, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.aec, ptr noundef nonnull readonly align 16 dereferenceable(160) %i.cs, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  store i64 0, ptr %i.ct, align 16, !alias.scope !23295, !noalias !23298
  invoke void @_RINvYINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream14try_filter_map12TryFilterMapINtNtNtBa_6stream3map3MapINtNtB1w_3zip3ZipINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB2c_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB4y_6errors15DeltaTableErrorENtNtB2c_6marker4SendEL_EEINtNtBa_4iter4IterINtNtNtNtB2c_4iter7sources6repeat6RepeatTINtNtB2I_4sync3ArcNtCseo6ZV82fEK1_3url3UrlEIB7D_INtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetNtNtB2I_6string6StringEEEEEENCNCNCNvNtNtB4y_10operations6delete7execute00s1_0ENCNCB9x_s2_00NCB9x_s2_0ENtB8_12TryStreamExt11try_collectINtNtB2I_3vec3VecNtNtB4w_6models6ActionEEB4y_(ptr noalias noundef nonnull sret([272 x i8]) align 16 captures(address) dereferenceable(272) %i.cu, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(240) %i.ct)
          to label %bb.mk unwind label %bb.mj

bb.mi:                                            ; preds = %bb.mj, %bb.mg
  %.pn55 = phi { ptr, i32 } [ %i.aed, %bb.mj ], [ %.pn51, %bb.mg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  br label %bb.mm

bb.mj:                                            ; preds = %bb.mh
  %i.aed = landingpad { ptr, i32 }
          cleanup
  br label %bb.mi

bb.mk:                                            ; preds = %bb.mh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %i.cv, ptr noundef nonnull readonly align 16 dereferenceable(272) %i.cu, i64 272, i1 false), !alias.scope !23300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %i.abp, ptr noundef nonnull align 16 dereferenceable(272) %i.cv, i64 272, i1 false)
  br label %bb.mx

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCseo6ZV82fEK1_3url3UrlEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.lz, %bb.ma
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  br label %bb.ml

bb.ml:                                            ; preds = %bb.md, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCseo6ZV82fEK1_3url3UrlEECs14kWLkQVSKO_14deltalake_core.exit
  %.pn48.ph = phi { ptr, i32 } [ %.pn46, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCseo6ZV82fEK1_3url3UrlEECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.ady, %bb.md ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.adp) ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB2Q_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2Q_(ptr %i.ado, ptr nonnull %i.adp) #42
          to label %bb.mg unwind label %bb.br

bb.mm:                                            ; preds = %bb.nb, %bb.mw, %bb.mi
  %.pn128 = phi { ptr, i32 } [ %i.afg, %bb.nb ], [ %i.afc, %bb.mw ], [ %.pn55, %bb.mi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  br label %.body329

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCseo6ZV82fEK1_3url3UrlEECs14kWLkQVSKO_14deltalake_core.exit395: ; preds = %bb.vv, %bb.vw, %.body329, %bb.lq
  %.pn128.pn.pn = phi { ptr, i32 } [ %i.acr, %bb.lq ], [ %.pn128.pn, %.body329 ], [ %.pn128.pn, %bb.vw ], [ %.pn128.pn, %bb.vv ] ; 2 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %1, i64 2087
  store i8 0, ptr %i.aee, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  %i.aef = getelementptr inbounds nuw i8, ptr %1, i64 1152
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.aef) #42
          to label %bb.vx unwind label %bb.br

bb.mn:                                            ; preds = %bb.lp
  %i.aeg = landingpad { ptr, i32 }
          cleanup
  br label %bb.mq

bb.mo:                                            ; preds = %bb.lp
  %i.aeh = extractvalue { i64, i32 } %i.acq, 0
  %i.aei = extractvalue { i64, i32 } %i.acq, 1
  store i64 %i.aeh, ptr %i.cy, align 8
  %i.aej = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i32 %i.aei, ptr %i.aej, align 8
  %i.aek = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ael = load i64, ptr %i.aek, align 16, !noundef !8
  %i.aem = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.aen = load i32, ptr %i.aem, align 8, !range !23028, !noundef !8
  %i.aeo = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant14duration_since(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cy, i64 noundef %i.ael, i32 noundef %i.aen)
          to label %bb.mr unwind label %bb.mp     ; 2 uses

bb.mp:                                            ; preds = %bb.mo
  %i.aep = landingpad { ptr, i32 }
          cleanup
  br label %bb.mq

bb.mq:                                            ; preds = %bb.mn, %bb.mp
  %.pn42 = phi { ptr, i32 } [ %i.aeg, %bb.mn ], [ %i.aep, %bb.mp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  br label %bb.mt

bb.mr:                                            ; preds = %bb.mo
  %i.aeq = extractvalue { i64, i32 } %i.aeo, 0
  %i.aer = extractvalue { i64, i32 } %i.aeo, 1
  %i.aes = mul i64 %i.aeq, 1000
  %i.aet = udiv i32 %i.aer, 1000000
  %i.aeu = zext nneg i32 %i.aet to i64
  %i.aev = add i64 %i.aes, %i.aeu
  %i.aew = getelementptr inbounds nuw i8, ptr %1, i64 1968
  store i64 %i.aev, ptr %i.aew, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  %.sroa.7554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.7554.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(56) %i.acn, i64 56, i1 false)
  %i.aex = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 0, ptr %i.aex, align 8
  %.sroa.5552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5552.0..sroa_idx, align 16
  %.sroa.6553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store i64 0, ptr %.sroa.6553.0..sroa_idx, align 8
  store i64 -9223372036854775711, ptr %i.bg, align 16
  br label %bb.ms

bb.ms:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEECs14kWLkQVSKO_14deltalake_core.exit382, %bb.mu, %bb.mr
  %i.aey = getelementptr inbounds nuw i8, ptr %1, i64 2088
  store i8 0, ptr %i.aey, align 8
  br label %bb.ca

bb.mt:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEECs14kWLkQVSKO_14deltalake_core.exit367, %bb.mq, %bb.ln
  %.pn136.pn = phi { ptr, i32 } [ %.pn136, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEECs14kWLkQVSKO_14deltalake_core.exit367 ], [ %.pn39, %bb.ln ], [ %.pn42, %bb.mq ] ; 3 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 2 uses
  %i.afa = load i64, ptr %i.aez, align 16, !range !289, !noundef !8
  %.not139 = icmp eq i64 %i.afa, 36
  br i1 %.not139, label %bb.mv, label %bb.wc

bb.mu:                                            ; preds = %bb.li
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ms

bb.mv:                                            ; preds = %bb.lb, %bb.lg, %bb.wd, %bb.wc, %bb.mt
  %.pn140.pn = phi { ptr, i32 } [ %.pn136.pn, %bb.mt ], [ %.pn136.pn, %bb.wd ], [ %.pn136.pn, %bb.wc ], [ %i.abs, %bb.lg ], [ %i.abo, %bb.lb ]
  %i.afb = getelementptr inbounds nuw i8, ptr %1, i64 2088
  store i8 0, ptr %i.afb, align 8
  br label %bb.cb

bb.mw:                                            ; preds = %bb.mx
  %i.afc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtBL_14try_filter_map12TryFilterMapINtNtNtBN_6stream3map3MapINtNtB2G_3zip3ZipINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB5r_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtBN_4iter4IterINtNtNtNtB4_4iter7sources6repeat6RepeatTINtNtB3C_4sync3ArcNtCseo6ZV82fEK1_3url3UrlEIB8u_INtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetNtNtB3C_6string6StringEEEEEENCNCNCNvNtNtB5r_10operations6delete7execute00s1_0ENCNCBao_s2_00NCBao_s2_0EINtNtB3C_3vec3VecNtNtB5p_6models6ActionEEEB5r_(ptr noundef nonnull align 16 %i.afd) #42
          to label %bb.mm unwind label %bb.br

bb.mx:                                            ; preds = %bb.f, %bb.mk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  %i.afd = getelementptr inbounds nuw i8, ptr %1, i64 2096 ; 4 uses
  invoke void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collectINtB5_10TryCollectINtNtB7_14try_filter_map12TryFilterMapINtNtNtB9_6stream3map3MapINtNtB28_3zip3ZipINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB2O_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB5a_6errors15DeltaTableErrorENtNtB2O_6marker4SendEL_EEINtNtB9_4iter4IterINtNtNtNtB2O_4iter7sources6repeat6RepeatTINtNtB3k_4sync3ArcNtCseo6ZV82fEK1_3url3UrlEIB8f_INtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetNtNtB3k_6string6StringEEEEEENCNCNCNvNtNtB5a_10operations6delete7execute00s1_0ENCNCBa9_s2_00NCBa9_s2_0EINtNtB3k_3vec3VecNtNtB58_6models6ActionEENtNtNtB2O_6future6future6Future4pollB5a_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.cp, ptr noundef nonnull align 16 %i.afd, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.my unwind label %bb.mw

bb.my:                                            ; preds = %bb.mx
  %i.afe = load i64, ptr %i.cp, align 16, !range !3022, !noundef !8 ; 3 uses
  %i.aff = icmp eq i64 %i.afe, -9223372036854775710
  br i1 %i.aff, label %bb.mz, label %bb.na

bb.mz:                                            ; preds = %bb.my
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  store i64 -9223372036854775710, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  br label %common.ret

bb.na:                                            ; preds = %bb.my
  %.sroa.3564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3564, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3564.0..sroa_idx, i64 24, i1 false)
  %.sroa.5565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5565, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5565.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtBL_14try_filter_map12TryFilterMapINtNtNtBN_6stream3map3MapINtNtB2G_3zip3ZipINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB5r_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtBN_4iter4IterINtNtNtNtB4_4iter7sources6repeat6RepeatTINtNtB3C_4sync3ArcNtCseo6ZV82fEK1_3url3UrlEIB8u_INtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetNtNtB3C_6string6StringEEEEEENCNCNCNvNtNtB5r_10operations6delete7execute00s1_0ENCNCBao_s2_00NCBao_s2_0EINtNtB3C_3vec3VecNtNtB5p_6models6ActionEEEB5r_(ptr noundef nonnull align 16 %i.afd)
          to label %bb.nc unwind label %bb.nb

bb.nb:                                            ; preds = %bb.na
  %i.afg = landingpad { ptr, i32 }
          cleanup
  br label %bb.mm

bb.nc:                                            ; preds = %bb.na
  %.not.i290 = icmp eq i64 %i.afe, -9223372036854775711
  br i1 %.not.i290, label %bb.nd, label %bb.qy

bb.nd:                                            ; preds = %bb.nc
  %i.afh = getelementptr inbounds nuw i8, ptr %1, i64 2086
  store i8 1, ptr %i.afh, align 2
  %i.afi = getelementptr inbounds nuw i8, ptr %1, i64 2056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.afi, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3564, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  %i.afj = getelementptr i8, ptr %1, i64 2072
  %.val246 = load i64, ptr %i.afj, align 8, !noundef !8 ; 2 uses
  %i.afk = icmp ult i64 %.val246, 33909456017848441
  call void @llvm.assume(i1 %i.afk)
  %i.afl = getelementptr inbounds nuw i8, ptr %1, i64 1944
  store i64 %.val246, ptr %i.afl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0569)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  call void @llvm.experimental.noalias.scope.decl(metadata !23304)
  call void @llvm.experimental.noalias.scope.decl(metadata !23307)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !23310
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef 19, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc292 unwind label %bb.nf

.noexc292:                                        ; preds = %bb.nd
  %i.afm = load i64, ptr %i.m, align 8, !range !64, !noalias !23310, !noundef !8
  %i.afn = trunc nuw i64 %i.afm to i1
end_hunk_2
begin_hunk_3_@_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations6delete7execute00B9_:bb.a
  br label %bb.qv

bb.qm:                                            ; preds = %bb.nz
  %i.akr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ql

bb.qn:                                            ; preds = %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtB1o_10operations6delete13DeleteMetricsENtNtB1o_6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualB1o_.exit301, %bb.qo
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8574)
  br label %bb.qp

bb.qo:                                            ; preds = %bb.nv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  br label %bb.qn

bb.qp:                                            ; preds = %bb.ur, %bb.qn, %bb.qj
  %i.aks = getelementptr inbounds nuw i8, ptr %1, i64 2083
  store i8 0, ptr %i.aks, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  %i.akt = getelementptr inbounds nuw i8, ptr %1, i64 2056 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.akt)
          to label %bb.qr unwind label %bb.qq

bb.qq:                                            ; preds = %bb.qp
  %i.aku = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.akt)
          to label %.body329 unwind label %bb.qs

bb.qr:                                            ; preds = %bb.qp
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.akt)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEEB1j_.exit unwind label %bb.ut

bb.qs:                                            ; preds = %bb.qq
  %i.akv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.qt:                                            ; preds = %bb.np, %bb.nr
  %.pn64 = phi { ptr, i32 } [ %i.agn, %bb.nr ], [ %i.agm, %bb.np ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  call void @llvm.experimental.noalias.scope.decl(metadata !23415)
  call void @llvm.experimental.noalias.scope.decl(metadata !23418)
  call void @llvm.experimental.noalias.scope.decl(metadata !23421)
  %i.akw = load ptr, ptr %i.ci, align 8, !alias.scope !23424, !nonnull !8, !noundef !8
  %i.akx = atomicrmw sub ptr %i.akw, i64 1 release, align 8, !noalias !23424
  %i.aky = icmp eq i64 %i.akx, 1
  br i1 %i.aky, label %bb.qu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit332

bb.qu:                                            ; preds = %bb.qt
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ci) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit332 unwind label %bb.br

bb.qv:                                            ; preds = %bb.vt, %bb.us, %bb.ql, %bb.qk
  %.pn124.pn = phi { ptr, i32 } [ %.pn124, %bb.ql ], [ %i.ate, %bb.us ], [ %.pn120.pn.pn, %bb.vt ], [ %.pn120.pn.pn, %bb.qk ]
  %i.akz = getelementptr inbounds nuw i8, ptr %1, i64 2083
  store i8 0, ptr %i.akz, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  br label %bb.qx

bb.qw:                                            ; preds = %bb.nh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  br label %.body295

bb.qx:                                            ; preds = %bb.qv, %.body295, %bb.nf
  %.pn124.pn.pn = phi { ptr, i32 } [ %.pn124.pn, %bb.qv ], [ %.pn62, %.body295 ], [ %i.afs, %bb.nf ] ; 2 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %1, i64 2086
  %i.alb = load i8, ptr %i.ala, align 2, !range !89, !noundef !8
  %i.alc = trunc nuw i8 %i.alb to i1
  br i1 %i.alc, label %bb.vu, label %.body329

bb.qy:                                            ; preds = %bb.nc
  %.sroa.3568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.3568.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5565, i64 64, i1 false)
  %.sroa.2567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2567.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3564, i64 24, i1 false)
  store i64 %i.afe, ptr %i.bg, align 16, !alias.scope !23425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEEB1j_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEEB1j_.exit: ; preds = %bb.qr, %bb.qy
  %i.ald = getelementptr inbounds nuw i8, ptr %1, i64 2086
  store i8 0, ptr %i.ald, align 2
  %i.ale = getelementptr inbounds nuw i8, ptr %1, i64 2087
  store i8 0, ptr %i.ale, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  %i.alf = getelementptr inbounds nuw i8, ptr %1, i64 1152
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.alf)
          to label %bb.uv unwind label %bb.uu

.body329:                                         ; preds = %bb.ut, %bb.qq, %bb.vu, %bb.qx, %bb.mm
  %.pn128.pn = phi { ptr, i32 } [ %.pn128, %bb.mm ], [ %.pn124.pn.pn, %bb.qx ], [ %.pn124.pn.pn, %bb.vu ], [ %i.atf, %bb.ut ], [ %i.aku, %bb.qq ] ; 3 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %1, i64 2086
  store i8 0, ptr %i.alg, align 2
  %i.alh = getelementptr inbounds nuw i8, ptr %1, i64 2087
  %i.ali = load i8, ptr %i.alh, align 1, !range !89, !noundef !8
  %i.alj = trunc nuw i8 %i.ali to i1
  br i1 %i.alj, label %bb.vv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCseo6ZV82fEK1_3url3UrlEECs14kWLkQVSKO_14deltalake_core.exit395

bb.qz:                                            ; preds = %bb.ra
  %i.alk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  %.val238 = load ptr, ptr %i.alm, align 16
  %i.all = getelementptr i8, ptr %1, i64 2104
  %.val239 = load ptr, ptr %i.all, align 8, !nonnull !8, !align !216, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val238, ptr nonnull %.val239) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.br

bb.ra:                                            ; preds = %bb.g, %bb.pn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  %i.alm = getelementptr inbounds nuw i8, ptr %1, i64 2096 ; 4 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bp, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.alm, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.rb unwind label %bb.qz

bb.rb:                                            ; preds = %bb.ra
  %i.aln = load i64, ptr %i.bp, align 8, !range !30, !noundef !8 ; 3 uses
  %i.alo = icmp eq i64 %i.aln, 21
  br i1 %i.alo, label %bb.rc, label %bb.rd

bb.rc:                                            ; preds = %bb.rb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  store i64 -9223372036854775710, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  br label %common.ret

bb.rd:                                            ; preds = %bb.rb
  %.sroa.3696.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.3696.0.copyload = load ptr, ptr %.sroa.3696.0..sroa_idx, align 8 ; 5 uses
  %.sroa.5697.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %.sroa.5697.0.copyload = load ptr, ptr %.sroa.5697.0..sroa_idx, align 8 ; 4 uses
  %.sroa.7698.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7698, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7698.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  %.val236 = load ptr, ptr %i.alm, align 16       ; 5 uses
  %i.alp = getelementptr i8, ptr %1, i64 2104     ; 2 uses
  %.val237 = load ptr, ptr %i.alp, align 8, !nonnull !8, !align !216, !noundef !8 ; 5 uses
  %i.alq = load ptr, ptr %.val237, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i333 = icmp eq ptr %i.alq, null
  br i1 %.not.i.i333, label %bb.rf, label %bb.re

bb.re:                                            ; preds = %bb.rd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val236) ]
  invoke void %i.alq(ptr noundef nonnull %.val236)
          to label %bb.rf unwind label %bb.rh

bb.rf:                                            ; preds = %bb.re, %bb.rd
  %i.alr = getelementptr inbounds nuw i8, ptr %.val237, i64 8
  %i.als = load i64, ptr %i.alr, align 8, !range !231, !invariant.load !8 ; 2 uses
  %i.alt = icmp eq i64 %i.als, 0
  br i1 %i.alt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.rg

bb.rg:                                            ; preds = %bb.rf
  %i.alu = getelementptr inbounds nuw i8, ptr %.val237, i64 16
  %i.alv = load i64, ptr %i.alu, align 8, !range !2991, !invariant.load !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val236) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val236, i64 noundef range(i64 1, 0) %i.als, i64 noundef range(i64 1, 536870913) %i.alv) #46
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.rh:                                            ; preds = %bb.re
  %i.alw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %.val237, i64 8
  %i.aly = load i64, ptr %i.alx, align 8, !range !231, !invariant.load !8 ; 2 uses
  %i.alz = icmp eq i64 %i.aly, 0
  br i1 %i.alz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ri

bb.ri:                                            ; preds = %bb.rh
  %i.ama = getelementptr inbounds nuw i8, ptr %.val237, i64 16
  %i.amb = load i64, ptr %i.ama, align 8, !range !2991, !invariant.load !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val236, i64 noundef range(i64 1, 0) %i.aly, i64 noundef range(i64 1, 536870913) %i.amb) #46
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.rj:                                            ; preds = %bb.rk
  %i.amc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.rg, %bb.rf
  %.not.i336 = icmp eq i64 %i.aln, 20
  br i1 %.not.i336, label %bb.rl, label %bb.rk

bb.rk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.4702.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4702.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7698, i64 16, i1 false)
  store i64 %i.aln, ptr %i.c, align 8, !noalias !23429
  %.sroa.2700.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.3696.0.copyload, ptr %.sroa.2700.0..sroa_idx, align 8, !noalias !23429
  %.sroa.3701.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.5697.0.copyload, ptr %.sroa.3701.0..sroa_idx, align 8, !noalias !23429
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.bg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.rp unwind label %bb.rj

bb.rl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3696.0.copyload), "nonnull"(ptr %.sroa.5697.0.copyload) ]
  store ptr %.sroa.3696.0.copyload, ptr %i.alm, align 16
  store ptr %.sroa.5697.0.copyload, ptr %i.alp, align 8
  %i.amd = getelementptr i8, ptr %1, i64 136
  %.val250 = load ptr, ptr %i.amd, align 8, !nonnull !8, !noundef !8
  %i.ame = getelementptr inbounds nuw i8, ptr %.val250, i64 88
  %i.amf = load ptr, ptr %i.ame, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.amg = getelementptr i8, ptr %i.amf, i64 1040
  %.val251 = load i64, ptr %i.amg, align 8, !noundef !8 ; 2 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ami = load <2 x ptr>, ptr %i.amh, align 16
  %i.amj = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.val205 = load ptr, ptr %i.amj, align 16, !nonnull !8, !noundef !8
  %i.amk = getelementptr i8, ptr %1, i64 152
  %.val206 = load ptr, ptr %i.amk, align 8, !nonnull !8, !align !216, !noundef !8 ; 2 uses
  %i.aml = atomicrmw add ptr %.sroa.3696.0.copyload, i64 1 monotonic, align 8
  %i.amm = icmp slt i64 %i.aml, 0
  br i1 %i.amm, label %bb.rm, label %bb.rn

bb.rm:                                            ; preds = %bb.rl
  call void @llvm.trap()
  unreachable

bb.rn:                                            ; preds = %bb.rl
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amf, i64 552
  %i.amo = getelementptr inbounds nuw i8, ptr %.val206, i64 16
  %i.amp = load i64, ptr %i.amo, align 8, !range !2991, !invariant.load !8
  %i.amq = add nsw i64 %i.amp, -1
  %i.amr = and i64 %i.amq, -16
  %i.ams = getelementptr inbounds nuw i8, ptr %.val205, i64 %i.amr
  %i.amt = getelementptr inbounds nuw i8, ptr %i.ams, i64 16
  %.not.i339 = icmp eq i64 %.val251, 0
  %..i = select i1 %.not.i339, i64 104857600, i64 %.val251
  %i.amu = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.amv = getelementptr inbounds nuw i8, ptr %1, i64 2081
  %i.amw = load i8, ptr %i.amv, align 1, !range !89, !noundef !8
  %i.amx = getelementptr inbounds nuw i8, ptr %1, i64 2112
  store <2 x ptr> %i.ami, ptr %i.amx, align 16
  %.sroa.9722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2128
  store ptr %i.amt, ptr %.sroa.9722.0..sroa_idx, align 16
  %.sroa.10723.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2136
  store ptr %.val206, ptr %.sroa.10723.0..sroa_idx, align 8
  %.sroa.11724.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2144
  store ptr %.sroa.3696.0.copyload, ptr %.sroa.11724.0..sroa_idx, align 16
  %.sroa.12725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2152
  store ptr %.sroa.5697.0.copyload, ptr %.sroa.12725.0..sroa_idx, align 8
  %.sroa.13726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2160
  store i64 %..i, ptr %.sroa.13726.0..sroa_idx, align 16
  %.sroa.14727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2168
  store ptr %i.amn, ptr %.sroa.14727.0..sroa_idx, align 8
  %.sroa.16729.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2180
  store i8 0, ptr %.sroa.16729.0..sroa_idx, align 4
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2181
  store i8 1, ptr %.sroa.17.0..sroa_idx, align 1
  %.sroa.17.sroa.8.0..sroa.17.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.sroa.17.sroa.8.0..sroa.17.0..sroa_idx.sroa_idx, ptr noundef nonnull align 16 dereferenceable(16) %i.amu, i64 16, i1 false)
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2198
  store i8 %i.amw, ptr %.sroa.18.0..sroa_idx, align 2
  br label %bb.rr

.body343:                                         ; preds = %bb.rq, %bb.sb, %bb.sd, %bb.uo
  %.pn108.pn = phi { ptr, i32 } [ %.pn101.pn, %bb.uo ], [ %.pn.i341, %bb.sb ], [ %i.ane, %bb.rq ], [ %i.anu, %bb.sd ] ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %1, i64 2096 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23432)
  call void @llvm.experimental.noalias.scope.decl(metadata !23435)
  %i.amz = load ptr, ptr %i.amy, align 16, !alias.scope !23438, !nonnull !8, !noundef !8
  %i.ana = atomicrmw sub ptr %i.amz, i64 1 release, align 8, !noalias !23438
  %i.anb = icmp eq i64 %i.ana, 1
  br i1 %i.anb, label %bb.ro, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.ro:                                            ; preds = %.body343
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.amy) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.br

bb.rp:                                            ; preds = %bb.rk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit375

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit375: ; preds = %bb.up, %bb.uq, %bb.rp
  %i.anc = getelementptr inbounds nuw i8, ptr %1, i64 1616
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.anc)
          to label %bb.qj unwind label %bb.to

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.pm, %bb.qz, %bb.rh, %bb.ri, %bb.rj, %.body343, %bb.ro, %bb.tn
  %.pn111.pn = phi { ptr, i32 } [ %.pn108.pn, %.body343 ], [ %i.arc, %bb.tn ], [ %.pn108.pn, %bb.ro ], [ %i.ajt, %bb.pm ], [ %i.alk, %bb.qz ], [ %i.amc, %bb.rj ], [ %i.alw, %bb.ri ], [ %i.alw, %bb.rh ]
  %i.and = getelementptr inbounds nuw i8, ptr %1, i64 1616
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.and) #42
          to label %bb.qk unwind label %bb.br

bb.rq:                                            ; preds = %bb.rr
  %i.ane = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution15write_exec_plan0EBQ_(ptr noundef nonnull align 16 %i.anf) #42
          to label %.body343 unwind label %bb.br

bb.rr:                                            ; preds = %bb.h, %bb.rn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  %i.anf = getelementptr inbounds nuw i8, ptr %1, i64 2112 ; 2 uses
  invoke fastcc void @_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution15write_exec_plan0B9_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.bn, ptr noundef nonnull align 16 %i.anf, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.rs unwind label %bb.rq

bb.rs:                                            ; preds = %bb.rr
  %i.ang = load i64, ptr %i.bn, align 16, !range !3022, !noundef !8 ; 3 uses
  %i.anh = icmp eq i64 %i.ang, -9223372036854775710
  br i1 %i.anh, label %bb.rt, label %bb.ru

bb.rt:                                            ; preds = %bb.rs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  store i64 -9223372036854775710, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  br label %common.ret

bb.ru:                                            ; preds = %bb.rs
  %.sroa.3733.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3733, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3733.0..sroa_idx, i64 40, i1 false)
  %.sroa.5734.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.5734, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.5734.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  %i.ani = getelementptr inbounds nuw i8, ptr %1, i64 2180
  %i.anj = load i8, ptr %i.ani, align 4, !range !4278, !noundef !8
  switch i8 %i.anj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution15write_exec_plan0EBQ_.exit [
    i8 0, label %bb.rv
    i8 3, label %bb.rx
    i8 4, label %bb.ry
  ]

bb.rv:                                            ; preds = %bb.ru
  %i.ank = getelementptr inbounds nuw i8, ptr %1, i64 2144 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23439)
  call void @llvm.experimental.noalias.scope.decl(metadata !23442)
  %i.anl = load ptr, ptr %i.ank, align 16, !alias.scope !23445, !nonnull !8, !noundef !8
  %i.anm = atomicrmw sub ptr %i.anl, i64 1 release, align 8, !noalias !23445
  %i.ann = icmp eq i64 %i.anm, 1
  br i1 %i.ann, label %bb.rw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution15write_exec_plan0EBQ_.exit

bb.rw:                                            ; preds = %bb.rv
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ank) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution15write_exec_plan0EBQ_.exit unwind label %bb.sd

bb.rx:                                            ; preds = %bb.ru
  %i.ano = getelementptr inbounds nuw i8, ptr %1, i64 2208
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0EBQ_(ptr noundef nonnull align 16 %i.ano)
          to label %bb.sa unwind label %bb.rz

bb.ry:                                            ; preds = %bb.ru
  %i.anp = getelementptr inbounds nuw i8, ptr %1, i64 2208
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution15write_data_plan0EBQ_(ptr noundef nonnull align 16 %i.anp)
          to label %bb.sa unwind label %bb.sc

bb.rz:                                            ; preds = %bb.rx
  %i.anq = landingpad { ptr, i32 }
          cleanup
  br label %bb.sb

bb.sa:                                            ; preds = %bb.ry, %bb.rx
  %i.anr = getelementptr inbounds nuw i8, ptr %1, i64 2176
  store i32 0, ptr %i.anr, align 16
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution15write_exec_plan0EBQ_.exit

bb.sb:                                            ; preds = %bb.sc, %bb.rz
  %.pn.i341 = phi { ptr, i32 } [ %i.anq, %bb.rz ], [ %i.ant, %bb.sc ]
  %i.ans = getelementptr inbounds nuw i8, ptr %1, i64 2176
  store i32 0, ptr %i.ans, align 16
  br label %.body343

bb.sc:                                            ; preds = %bb.ry
  %i.ant = landingpad { ptr, i32 }
          cleanup
  br label %bb.sb

bb.sd:                                            ; preds = %bb.rw
  %i.anu = landingpad { ptr, i32 }
          cleanup
  br label %.body343

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution15write_exec_plan0EBQ_.exit: ; preds = %bb.sa, %bb.rv, %bb.ru, %bb.rw
  %.not.i345 = icmp eq i64 %i.ang, -9223372036854775711
  br i1 %.not.i345, label %bb.se, label %bb.up

bb.se:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution15write_exec_plan0EBQ_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3733, i64 24, i1 false)
  %i.anv = getelementptr inbounds nuw i8, ptr %1, i64 2096 ; 4 uses
  %i.anw = invoke { ptr, ptr } @_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion8physical16find_metric_node(ptr noalias noundef nonnull readonly captures(address, read_provenance) @336, i64 noundef 19, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.anv)
          to label %bb.sg unwind label %bb.sf     ; 2 uses

bb.sf:                                            ; preds = %bb.se
  %i.anx = landingpad { ptr, i32 }
          cleanup
  br label %bb.un

bb.sg:                                            ; preds = %bb.se
  %i.any = extractvalue { ptr, ptr } %i.anw, 0    ; 3 uses
  %.not89 = icmp eq ptr %i.any, null
  br i1 %.not89, label %bb.te, label %bb.sh

bb.sh:                                            ; preds = %bb.sg
end_hunk_3
begin_hunk_4_@_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0B7_:bb.a
  store i8 0, ptr %i.gn, align 1
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 774
  %i.gp = load i8, ptr %i.go, align 2, !range !89, !noundef !8
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %bb.rl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEECs14kWLkQVSKO_14deltalake_core.exit262

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEECs14kWLkQVSKO_14deltalake_core.exit262: ; preds = %bb.rl, %bb.rm, %bb.qz, %bb.ba, %.body
  %.pn118 = phi { ptr, i32 } [ %i.aim, %bb.qz ], [ %.pn21, %.body ], [ %.pn116, %bb.ba ], [ %.pn116, %bb.rm ], [ %.pn116, %bb.rl ]
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 774
  store i8 0, ptr %i.gr, align 2
  br label %bb.bk

bb.bb:                                            ; preds = %bb.l
  %i.gs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  br label %bb.bk

bb.bc:                                            ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !24850)
  %i.gt = load i64, ptr %i.dc, align 8, !range !43, !alias.scope !24853, !noalias !24850, !noundef !8 ; 2 uses
  %.not.i162 = icmp eq i64 %i.gt, 20
  br i1 %.not.i162, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  call void @llvm.experimental.noalias.scope.decl(metadata !24855)
  call void @llvm.experimental.noalias.scope.decl(metadata !24858)
  %.sroa.0282.0.copyload = load i64, ptr %i.eh, align 16, !alias.scope !24860, !noalias !24858 ; 2 uses
  store i64 -9223372036854775711, ptr %i.eh, align 16, !alias.scope !24862, !noalias !24855
  %.not.i163 = icmp eq i64 %.sroa.0282.0.copyload, -9223372036854775711
  br i1 %.not.i163, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.sroa.2284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.2284.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6.0..sroa_idx, i64 88, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !24863)
  store i64 %.sroa.0282.0.copyload, ptr %i.aw, align 16, !noalias !24863
  %i.gu = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  invoke void @_RNvXNtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtB4_6errors15DeltaTableErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.gu, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.aw)
          to label %bb.bh unwind label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.gv = icmp eq ptr %i.eo, %i.em
  br i1 %i.gv, label %._crit_edge.loopexit, label %bb.l

bb.bg:                                            ; preds = %bb.be
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bh:                                            ; preds = %bb.be
  store i64 37, ptr %i.bd, align 16, !alias.scope !24863, !noalias !24866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bc
  %.sroa.8271.0..sroa_idx272 = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.sroa.8271.0.copyload273 = load i8, ptr %.sroa.8271.0..sroa_idx272, align 8, !alias.scope !24868
  %.sroa.9.0..sroa_idx274 = getelementptr inbounds nuw i8, ptr %i.dc, i64 9
  %.sroa.3277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.3277.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9.0..sroa_idx274, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  call void @llvm.experimental.noalias.scope.decl(metadata !24869)
  %i.gx = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 %i.gt, ptr %i.gx, align 8, !alias.scope !24872
  %.sroa.2276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i8 %.sroa.8271.0.copyload273, ptr %.sroa.2276.0..sroa_idx, align 16, !alias.scope !24872
  store i64 37, ptr %i.bd, align 16, !alias.scope !24874, !noalias !24869
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEECs14kWLkQVSKO_14deltalake_core.exit
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 144
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesEBM_(ptr noalias noundef align 16 dereferenceable(128) %i.gy)
          to label %bb.ra unwind label %bb.h

bb.bk:                                            ; preds = %bb.bg, %bb.bb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEECs14kWLkQVSKO_14deltalake_core.exit262
  %.pn124.pn.pn = phi { ptr, i32 } [ %i.gw, %bb.bg ], [ %.pn118, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEECs14kWLkQVSKO_14deltalake_core.exit262 ], [ %i.gs, %bb.bb ]
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 144
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesEBM_(ptr noalias noundef align 16 dereferenceable(128) %i.gz) #42
          to label %bb.g unwind label %bb.aw

bb.bl:                                            ; preds = %bb.f
  %.sroa.10.0..sroa_idx265 = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %.sroa.10.0.copyload266 = load i64, ptr %.sroa.10.0..sroa_idx265, align 8, !alias.scope !24875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !24876)
  %i.ha = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 %i.du, ptr %i.ha, align 8, !alias.scope !24879
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  store i64 %.sroa.10.0.copyload266, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !24879
  store i64 37, ptr %i.bd, align 16, !alias.scope !24881, !noalias !24876
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit

.body255:                                         ; preds = %bb.rf, %bb.rc, %bb.rn, %bb.d, %bb.g
  %.pn130.pn = phi { ptr, i32 } [ %i.dt, %bb.d ], [ %.pn128, %bb.g ], [ %.pn128, %bb.rn ], [ %i.aiu, %bb.rf ], [ %i.ais, %bb.rc ]
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 770
  store i8 0, ptr %i.hb, align 2
  store i8 2, ptr %i.dh, align 16
  resume { ptr, i32 } %.pn130.pn

bb.bm:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @448) #48
  unreachable

bb.bn:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @448) #48
  unreachable

bb.bo:                                            ; preds = %bb.bp
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  %.val134 = load ptr, ptr %i.he, align 16
  %i.hd = getelementptr i8, ptr %1, i64 792
  %.val135 = load ptr, ptr %i.hd, align 8, !nonnull !8, !align !216, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val134, ptr nonnull %.val135) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs14kWLkQVSKO_14deltalake_core.exit181 unwind label %bb.aw

bb.bp:                                            ; preds = %bb.a, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 784 ; 4 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cq, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.he, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.bq unwind label %bb.bo

bb.bq:                                            ; preds = %bb.bp
  %i.hf = load i64, ptr %i.cq, align 8, !range !30, !noundef !8 ; 3 uses
  %i.hg = icmp eq i64 %i.hf, 21
  br i1 %i.hg, label %bb.br, label %bb.bs

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit, %bb.pi, %bb.go, %bb.du, %bb.br
  %.sink = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit ], [ 6, %bb.pi ], [ 5, %bb.go ], [ 4, %bb.du ], [ 3, %bb.br ]
  store i8 %.sink, ptr %i.dh, align 16
  ret void

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  store i64 38, ptr %0, align 16
  br label %common.ret

bb.bs:                                            ; preds = %bb.bq
  %.sroa.3294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.sroa.3294.0.copyload = load ptr, ptr %.sroa.3294.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7295, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7295.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  %.val = load ptr, ptr %i.he, align 16           ; 5 uses
  %i.hh = getelementptr i8, ptr %1, i64 792       ; 2 uses
  %.val133 = load ptr, ptr %i.hh, align 8, !nonnull !8, !align !216, !noundef !8 ; 5 uses
  %i.hi = load ptr, ptr %.val133, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i165 = icmp eq ptr %i.hi, null
  br i1 %.not.i.i165, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.hi(ptr noundef nonnull %.val)
          to label %bb.bu unwind label %bb.bw

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.hj = getelementptr inbounds nuw i8, ptr %.val133, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !range !231, !invariant.load !8 ; 2 uses
  %i.hl = icmp eq i64 %i.hk, 0
  br i1 %i.hl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hm = getelementptr inbounds nuw i8, ptr %.val133, i64 16
  %i.hn = load i64, ptr %i.hm, align 8, !range !2991, !invariant.load !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.hk, i64 noundef range(i64 1, 536870913) %i.hn) #46
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.bw:                                            ; preds = %bb.bt
  %i.ho = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.val133, i64 8
  %i.hq = load i64, ptr %i.hp, align 8, !range !231, !invariant.load !8 ; 2 uses
  %i.hr = icmp eq i64 %i.hq, 0
  br i1 %i.hr, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs14kWLkQVSKO_14deltalake_core.exit181, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hs = getelementptr inbounds nuw i8, ptr %.val133, i64 16
  %i.ht = load i64, ptr %i.hs, align 8, !range !2991, !invariant.load !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.hq, i64 noundef range(i64 1, 536870913) %i.ht) #46
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs14kWLkQVSKO_14deltalake_core.exit181

bb.by:                                            ; preds = %bb.bz
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs14kWLkQVSKO_14deltalake_core.exit181

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.bv, %bb.bu
  %.not.i168 = icmp eq i64 %i.hf, 20
  br i1 %.not.i168, label %bb.bz, label %bb.dq

bb.bz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3294.0.copyload), "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.hv = invoke { ptr, ptr } @_RNvNtCsanCXJAiNsO_18datafusion_catalog20default_table_source18provider_as_source(ptr noundef nonnull %.sroa.3294.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.5.0.copyload)
          to label %bb.ca unwind label %bb.by     ; 2 uses

bb.ca:                                            ; preds = %bb.bz
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.hx = extractvalue { ptr, ptr } %i.hv, 0      ; 4 uses
  %i.hy = extractvalue { ptr, ptr } %i.hv, 1      ; 3 uses
  store ptr %i.hx, ptr %i.hw, align 16
  %i.hz = getelementptr i8, ptr %1, i64 392
  store ptr %i.hy, ptr %i.hz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hx) ]
  %i.ia = atomicrmw add ptr %i.hx, i64 1 monotonic, align 8
  %i.ib = icmp slt i64 %i.ia, 0
  br i1 %i.ib, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.trap()
  unreachable

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hy) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  store i64 -9223372036854775808, ptr %i.ci, align 8
  invoke void @_RINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB5_18LogicalPlanBuilder4scanReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cj, ptr noalias noundef nonnull readonly captures(address, read_provenance) @449, i64 noundef 10, ptr noundef nonnull %i.hx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.hy, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ci)
          to label %bb.ce unwind label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  br label %bb.dd

bb.ce:                                            ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  call void @llvm.experimental.noalias.scope.decl(metadata !24882)
  %i.id = load i64, ptr %i.cj, align 8, !range !43, !alias.scope !24885, !noalias !24882, !noundef !8 ; 2 uses
  %.not.i169 = icmp eq i64 %i.id, 20
  %i.ie = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.if = load ptr, ptr %i.ie, align 8, !alias.scope !24887 ; 4 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.ih = load i8, ptr %i.ig, align 8, !alias.scope !24887 ; 3 uses
  br i1 %.not.i169, label %bb.cf, label %bb.dl

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  store ptr %i.if, ptr %i.ck, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i8 %i.ih, ptr %i.ii, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 272
  invoke fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.ch, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ij)
          to label %bb.cg unwind label %bb.dj

bb.cg:                                            ; preds = %bb.cf
  %i.ik = trunc nuw i8 %i.ih to i1
  invoke void @_RINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB5_18LogicalPlanBuilder6filterNtNtB9_4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cl, ptr noundef nonnull %i.if, i1 noundef zeroext %i.ik, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.ch)
          to label %bb.ci unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.il = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit178

bb.ci:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  call void @llvm.experimental.noalias.scope.decl(metadata !24888)
  %i.im = load i64, ptr %i.cl, align 8, !range !43, !alias.scope !24891, !noalias !24888, !noundef !8 ; 2 uses
  %.not.i170 = icmp eq i64 %i.im, 20
  %i.in = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !alias.scope !24893 ; 4 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.iq = load i8, ptr %i.ip, align 8, !alias.scope !24893 ; 3 uses
  br i1 %.not.i170, label %bb.cj, label %bb.di

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  store ptr %i.io, ptr %i.cm, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i8 %i.iq, ptr %i.ir, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  invoke void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr7expr_fn3colReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.cd, ptr noalias noundef nonnull readonly captures(address, read_provenance) @446, i64 noundef 20)
          to label %bb.cm unwind label %bb.cl

bb.ck:                                            ; preds = %bb.cn, %bb.cl
  %.pn43 = phi { ptr, i32 } [ %i.it, %bb.cn ], [ %i.is, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  br label %bb.dg

bb.cl:                                            ; preds = %bb.cj
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cm:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  store i8 26, ptr %i.cc, align 8
  invoke void @_RNvNtCs8VI8w5SIoU4_15datafusion_expr7expr_fn4cast(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.ce, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.cd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.cc)
          to label %bb.co unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.it = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  br label %bb.ck

bb.co:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  invoke void @_RINvMsC_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4Expr5aliasReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.cf, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(112) %i.ce, ptr noalias noundef nonnull readonly captures(address, read_provenance) @446, i64 noundef 20)
          to label %bb.cq unwind label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.cq:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.cg, ptr noundef nonnull align 16 dereferenceable(112) %i.cf, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  %i.iv = trunc nuw i8 %i.iq to i1
  invoke void @_RINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB5_18LogicalPlanBuilder7projectNtNtB9_4expr4ExprAB1x_j1_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cn, ptr noundef nonnull %i.io, i1 noundef zeroext %i.iv, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.cg)
          to label %bb.cs unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.iw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit

bb.cs:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  call void @llvm.experimental.noalias.scope.decl(metadata !24894)
  %i.ix = load i64, ptr %i.cn, align 8, !range !43, !alias.scope !24897, !noalias !24894, !noundef !8 ; 2 uses
  %.not.i172 = icmp eq i64 %i.ix, 20
  %i.iy = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8, !alias.scope !24899 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.jb = load i8, ptr %i.ja, align 8, !alias.scope !24899 ; 2 uses
  br i1 %.not.i172, label %bb.ct, label %bb.df

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  %i.jc = trunc nuw i8 %i.jb to i1
  invoke void @_RNvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB4_18LogicalPlanBuilder8distinct(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.co, ptr noundef nonnull %i.iz, i1 noundef zeroext %i.jc)
          to label %bb.cv unwind label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.jd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  br label %bb.dd

bb.cv:                                            ; preds = %bb.ct
  call void @llvm.experimental.noalias.scope.decl(metadata !24900)
  %i.je = load i64, ptr %i.co, align 8, !range !43, !alias.scope !24903, !noalias !24900, !noundef !8 ; 2 uses
  %.not.i174 = icmp eq i64 %i.je, 20
  %i.jf = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8, !alias.scope !24905 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.ji = load i8, ptr %i.jh, align 8, !alias.scope !24905 ; 2 uses
  br i1 %.not.i174, label %bb.cw, label %bb.de

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  %i.jj = trunc nuw i8 %i.ji to i1
  invoke void @_RNvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB4_18LogicalPlanBuilder5build(ptr noalias noundef nonnull sret([320 x i8]) align 16 captures(none) dereferenceable(320) %i.cp, ptr noundef nonnull %i.jg, i1 noundef zeroext %i.jj)
          to label %bb.cy unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.cy:                                            ; preds = %bb.cw
  %i.jl = load i64, ptr %i.cp, align 16, !range !289, !alias.scope !24906, !noalias !24909, !noundef !8 ; 2 uses
  %i.jm = icmp eq i64 %i.jl, 36
  %i.jn = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8301, ptr noundef nonnull align 8 dereferenceable(40) %i.jn, i64 40, i1 false)
  br i1 %i.jm, label %bb.cz, label %bb.da

end_hunk_4
begin_hunk_5_@_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0B7_:bb.a
bb.dh:                                            ; preds = %bb.dg
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cm) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.aw

bb.di:                                            ; preds = %bb.ci
  %.sroa.12333.0..sroa_idx334 = getelementptr inbounds nuw i8, ptr %i.cl, i64 17
  %.sroa.4352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4352.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.12333.0..sroa_idx334, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  call void @llvm.experimental.noalias.scope.decl(metadata !24935)
  %i.ke = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 %i.im, ptr %i.ke, align 8, !alias.scope !24938
  %.sroa.2350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr %i.io, ptr %.sroa.2350.0..sroa_idx, align 16, !alias.scope !24938
  %.sroa.3351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store i8 %i.iq, ptr %.sroa.3351.0..sroa_idx, align 8, !alias.scope !24938
  store i64 37, ptr %i.bd, align 16, !alias.scope !24940, !noalias !24935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  br label %bb.dm

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit178: ; preds = %bb.dj, %bb.dk, %bb.ch
  %.pn108 = phi { ptr, i32 } [ %i.kf, %bb.dj ], [ %i.il, %bb.ch ], [ %i.kf, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  br label %bb.dd

bb.dj:                                            ; preds = %bb.cf
  %i.kf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  %i.kg = atomicrmw sub ptr %i.if, i64 1 release, align 8, !noalias !24941
  %i.kh = icmp eq i64 %i.kg, 1
  br i1 %i.kh, label %bb.dk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit178

bb.dk:                                            ; preds = %bb.dj
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ck) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit178 unwind label %bb.aw

bb.dl:                                            ; preds = %bb.ce
  %.sroa.12343.0..sroa_idx344 = getelementptr inbounds nuw i8, ptr %i.cj, i64 17
  %.sroa.4348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4348.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.12343.0..sroa_idx344, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  call void @llvm.experimental.noalias.scope.decl(metadata !24948)
  %i.ki = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 %i.id, ptr %i.ki, align 8, !alias.scope !24951
  %.sroa.2346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr %i.if, ptr %.sroa.2346.0..sroa_idx, align 16, !alias.scope !24951
  %.sroa.3347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store i8 %i.ih, ptr %.sroa.3347.0..sroa_idx, align 8, !alias.scope !24951
  store i64 37, ptr %i.bd, align 16, !alias.scope !24953, !noalias !24948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  br label %bb.dm

bb.dm:                                            ; preds = %bb.de, %bb.df, %bb.di, %bb.dl, %bb.cz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEECs14kWLkQVSKO_14deltalake_core.exit
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24954)
  call void @llvm.experimental.noalias.scope.decl(metadata !24957)
  %i.kk = load ptr, ptr %i.kj, align 16, !alias.scope !24960, !nonnull !8, !noundef !8
  %i.kl = atomicrmw sub ptr %i.kk, i64 1 release, align 8, !noalias !24960
  %i.km = icmp eq i64 %i.kl, 1
  br i1 %i.km, label %bb.dn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.dn:                                            ; preds = %bb.dm
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.kj) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.qm

bb.do:                                            ; preds = %bb.qj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit260, %bb.dd
  %.pn108.pn.pn.pn = phi { ptr, i32 } [ %.pn108.pn.pn, %bb.dd ], [ %i.ahl, %bb.qj ], [ %.pn102.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit260 ] ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24961)
  call void @llvm.experimental.noalias.scope.decl(metadata !24964)
  %i.ko = load ptr, ptr %i.kn, align 16, !alias.scope !24967, !nonnull !8, !noundef !8
  %i.kp = atomicrmw sub ptr %i.ko, i64 1 release, align 8, !noalias !24967
  %i.kq = icmp eq i64 %i.kp, 1
  br i1 %i.kq, label %bb.dp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs14kWLkQVSKO_14deltalake_core.exit181

bb.dp:                                            ; preds = %bb.do
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.kn) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs14kWLkQVSKO_14deltalake_core.exit181 unwind label %bb.aw

bb.dq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7295, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !24968)
  %i.kr = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 %i.hf, ptr %i.kr, align 8, !alias.scope !24971
  %.sroa.2297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr %.sroa.3294.0.copyload, ptr %.sroa.2297.0..sroa_idx, align 16, !alias.scope !24971
  %.sroa.3298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store ptr %.sroa.5.0.copyload, ptr %.sroa.3298.0..sroa_idx, align 8, !alias.scope !24971
  store i64 37, ptr %i.bd, align 16, !alias.scope !24973, !noalias !24968
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.dm, %bb.dn, %bb.dq
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 272
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.ks)
          to label %bb.qx unwind label %bb.qw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs14kWLkQVSKO_14deltalake_core.exit181: ; preds = %bb.ar, %bb.bo, %bb.bw, %bb.bx, %bb.by, %bb.do, %bb.dp, %bb.qm
  %.pn113.pn = phi { ptr, i32 } [ %.pn108.pn.pn.pn, %bb.do ], [ %i.ahq, %bb.qm ], [ %.pn108.pn.pn.pn, %bb.dp ], [ %.pn34, %bb.ar ], [ %i.hc, %bb.bo ], [ %i.hu, %bb.by ], [ %i.ho, %bb.bx ], [ %i.ho, %bb.bw ] ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 773
  %i.ku = load i8, ptr %i.kt, align 1, !range !89, !noundef !8
  %i.kv = trunc nuw i8 %i.ku to i1
  br i1 %i.kv, label %bb.rk, label %bb.ba

bb.dr:                                            ; preds = %bb.ds
  %i.kw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  %.val138 = load ptr, ptr %i.ky, align 16
  %i.kx = getelementptr i8, ptr %1, i64 792
  %.val139 = load ptr, ptr %i.kx, align 8, !nonnull !8, !align !216, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val138, ptr nonnull %.val139) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit260 unwind label %bb.aw

bb.ds:                                            ; preds = %bb.c, %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 784 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ca, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ky, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.dt unwind label %bb.dr

bb.dt:                                            ; preds = %bb.ds
  %i.kz = load i64, ptr %i.ca, align 8, !range !30, !noundef !8 ; 3 uses
  %i.la = icmp eq i64 %i.kz, 21
  br i1 %i.la, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  store i64 38, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  br label %common.ret

bb.dv:                                            ; preds = %bb.dt
  %.sroa.3375.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.3375.0.copyload = load ptr, ptr %.sroa.3375.0..sroa_idx, align 8 ; 6 uses
  %.sroa.5376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %.sroa.5376.0.copyload = load ptr, ptr %.sroa.5376.0..sroa_idx, align 8 ; 5 uses
  %.sroa.7377.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7377, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7377.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  %.val136 = load ptr, ptr %i.ky, align 16        ; 5 uses
  %i.lb = getelementptr i8, ptr %1, i64 792
  %.val137 = load ptr, ptr %i.lb, align 8, !nonnull !8, !align !216, !noundef !8 ; 5 uses
  %i.lc = load ptr, ptr %.val137, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i182 = icmp eq ptr %i.lc, null
  br i1 %.not.i.i182, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val136) ]
  invoke void %i.lc(ptr noundef nonnull %.val136)
          to label %bb.dx unwind label %bb.dz

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.ld = getelementptr inbounds nuw i8, ptr %.val137, i64 8
  %i.le = load i64, ptr %i.ld, align 8, !range !231, !invariant.load !8 ; 2 uses
  %i.lf = icmp eq i64 %i.le, 0
  br i1 %i.lf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.lg = getelementptr inbounds nuw i8, ptr %.val137, i64 16
  %i.lh = load i64, ptr %i.lg, align 8, !range !2991, !invariant.load !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val136) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val136, i64 noundef range(i64 1, 0) %i.le, i64 noundef range(i64 1, 536870913) %i.lh) #46
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.dz:                                            ; preds = %bb.dw
  %i.li = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.val137, i64 8
  %i.lk = load i64, ptr %i.lj, align 8, !range !231, !invariant.load !8 ; 2 uses
  %i.ll = icmp eq i64 %i.lk, 0
  br i1 %i.ll, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit260, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.lm = getelementptr inbounds nuw i8, ptr %.val137, i64 16
  %i.ln = load i64, ptr %i.lm, align 8, !range !2991, !invariant.load !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val136, i64 noundef range(i64 1, 0) %i.lk, i64 noundef range(i64 1, 536870913) %i.ln) #46
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit260

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.dy, %bb.dx
  %.not.i185 = icmp eq i64 %i.kz, 20
  br i1 %.not.i185, label %bb.eb, label %bb.ee

bb.eb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3375.0.copyload), "nonnull"(ptr %.sroa.5376.0.copyload) ]
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 772
  store ptr %.sroa.3375.0.copyload, ptr %i.cb, align 8
  %i.lp = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %.sroa.5376.0.copyload, ptr %i.lp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  store i8 0, ptr %i.lo, align 4
  store ptr %.sroa.3375.0.copyload, ptr %i.bz, align 8
  %i.lq = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %.sroa.5376.0.copyload, ptr %i.lq, align 8
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ls = load ptr, ptr %i.lr, align 16, !nonnull !8, !noundef !8
  %i.lt = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.lu = load ptr, ptr %i.lt, align 8, !nonnull !8, !align !216, !noundef !8
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 136
  %i.lw = load ptr, ptr %i.lv, align 8, !invariant.load !8, !nonnull !8
  %i.lx = invoke noundef nonnull ptr %i.lw(ptr noundef nonnull %i.ls)
          to label %.thread unwind label %bb.ec

.thread:                                          ; preds = %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  %.sroa.8398.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 800
  store ptr %.sroa.3375.0.copyload, ptr %.sroa.8398.0..sroa_idx, align 16
  %.sroa.9399.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 808
  store ptr %.sroa.5376.0.copyload, ptr %.sroa.9399.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 880
  store ptr %i.lx, ptr %.sroa.11.0..sroa_idx, align 16
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 890
  store i8 0, ptr %.sroa.13.0..sroa_idx, align 2
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 890
  br label %bb.eh

.noexc186:                                        ; preds = %bb.ed, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  br label %.body199

bb.ec:                                            ; preds = %bb.eb
  %i.ma = landingpad { ptr, i32 }
          cleanup
  %i.mb = atomicrmw sub ptr %.sroa.3375.0.copyload, i64 1 release, align 8, !noalias !24974
  %i.mc = icmp eq i64 %i.mb, 1
  br i1 %i.mc, label %bb.ed, label %.noexc186

bb.ed:                                            ; preds = %bb.ec
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bz) #45
          to label %.noexc186 unwind label %bb.aw

bb.ee:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.4381.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4381.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7377, i64 16, i1 false)
  %i.md = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 %i.kz, ptr %i.md, align 8, !alias.scope !24979
  %.sroa.2379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr %.sroa.3375.0.copyload, ptr %.sroa.2379.0..sroa_idx, align 16, !alias.scope !24979
  %.sroa.3380.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store ptr %.sroa.5376.0.copyload, ptr %.sroa.3380.0..sroa_idx, align 8, !alias.scope !24979
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEECs14kWLkQVSKO_14deltalake_core.exit.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEECs14kWLkQVSKO_14deltalake_core.exit.sink.split: ; preds = %bb.ee, %bb.ip
  store i64 37, ptr %i.bd, align 16, !noalias !8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEECs14kWLkQVSKO_14deltalake_core.exit.sink.split, %bb.gy
  %i.me = getelementptr inbounds nuw i8, ptr %1, i64 772
  store i8 0, ptr %i.me, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 400
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.mf)
          to label %bb.dm unwind label %bb.qj

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit260: ; preds = %bb.db, %bb.dr, %bb.dz, %bb.ea, %bb.ri, %bb.rj, %.body199
  %.pn102.pn = phi { ptr, i32 } [ %.pn99.pn, %bb.ri ], [ %.pn99.pn, %.body199 ], [ %.pn99.pn, %bb.rj ], [ %i.jx, %bb.db ], [ %i.kw, %bb.dr ], [ %i.li, %bb.dz ], [ %i.li, %bb.ea ]
  %i.mg = getelementptr inbounds nuw i8, ptr %1, i64 772
  store i8 0, ptr %i.mg, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  %i.mh = getelementptr inbounds nuw i8, ptr %1, i64 400
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.mh) #42
          to label %bb.do unwind label %bb.aw

bb.ef:                                            ; preds = %bb.ev, %bb.eu
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %.body191

.body191:                                         ; preds = %bb.et, %bb.ef
  %i.mj = phi ptr [ %i.mk, %bb.ef ], [ %i.nz, %bb.et ]
  %eh.lpad-body192 = phi { ptr, i32 } [ %i.mi, %bb.ef ], [ %.pn29.pn.i, %bb.et ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.mj) #42
          to label %.body199 unwind label %bb.aw

bb.eg:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 890
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !range !3878, !noalias !24983
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 784 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 890 ; 6 uses
  switch i8 %.pre, label %default.unreachable680 [
    i8 0, label %bb.eh
    i8 1, label %bb.eu
    i8 2, label %bb.ev
    i8 3, label %bb.ex
  ]

bb.eh:                                            ; preds = %.thread, %bb.eg
  %i.mm = phi ptr [ %i.lz, %.thread ], [ %i.ml, %bb.eg ] ; 5 uses
  %i.mn = phi ptr [ %i.ly, %.thread ], [ %i.mk, %bb.eg ] ; 7 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 889 ; 3 uses
  store i8 0, ptr %i.mo, align 1, !noalias !24983
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 888 ; 2 uses
  store i8 0, ptr %i.mp, align 8, !noalias !24983
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.mr = load ptr, ptr %i.mq, align 16, !noalias !24983, !nonnull !8, !noundef !8
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 808
  %i.mt = load ptr, ptr %i.ms, align 8, !noalias !24983, !nonnull !8, !align !216, !noundef !8
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 880
  %i.mv = load ptr, ptr %i.mu, align 16, !noalias !24983, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !24983
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !24983
  invoke void @_RNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan26execute_stream_partitioned(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.au, ptr noundef nonnull %i.mr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.mt, ptr noundef nonnull %i.mv)
          to label %bb.ej unwind label %bb.ei, !noalias !24987

bb.ei:                                            ; preds = %bb.eh
  %i.mw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !24983
  br label %bb.et

bb.ej:                                            ; preds = %bb.eh
  call void @llvm.experimental.noalias.scope.decl(metadata !24988)
  %i.mx = load i64, ptr %i.au, align 8, !range !43, !alias.scope !24991, !noalias !24993, !noundef !8 ; 2 uses
  %.not.i.i190 = icmp eq i64 %i.mx, 20
  %i.my = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.8.sroa.0.0.copyload118.i = load i64, ptr %i.my, align 8, !alias.scope !24994, !noalias !24983 ; 3 uses
  %.sroa.8.sroa.8.0..sroa_idx120.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.8.sroa.8.0.copyload121.i = load ptr, ptr %.sroa.8.sroa.8.0..sroa_idx120.i, align 8, !alias.scope !24994, !noalias !24983 ; 5 uses
  %.sroa.8.sroa.9.0..sroa_idx123.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %.sroa.8.sroa.9.0.copyload124.i = load ptr, ptr %.sroa.8.sroa.9.0..sroa_idx123.i, align 8, !alias.scope !24994, !noalias !24983 ; 4 uses
  br i1 %.not.i.i190, label %bb.ek, label %bb.es

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !24983
  store i8 1, ptr %i.mo, align 1, !noalias !24983
  store i64 %.sroa.8.sroa.0.0.copyload118.i, ptr %i.av, align 8, !noalias !24983
  %.sroa.4126.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %.sroa.8.sroa.8.0.copyload121.i, ptr %.sroa.4126.0..sroa_idx.i, align 8, !noalias !24983
  %.sroa.5127.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store ptr %.sroa.8.sroa.9.0.copyload124.i, ptr %.sroa.5127.0..sroa_idx.i, align 8, !noalias !24983
  %i.mz = invoke { ptr, i64 } @_RNvMs_NtCs4Y5ccqZjUYD_25datafusion_common_runtime8join_setINtB4_7JoinSetTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE3newCs14kWLkQVSKO_14deltalake_core()
          to label %bb.en unwind label %bb.em, !noalias !24987 ; 2 uses

bb.el:                                            ; preds = %bb.er, %bb.em
  %i.na = phi ptr [ %i.nw, %bb.er ], [ %i.nf, %bb.em ] ; 2 uses
  %i.nb = phi ptr [ %i.nx, %bb.er ], [ %i.ng, %bb.em ] ; 2 uses
  %.pn21.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn21.pn.pn.pn.pn.pn.i, %bb.er ], [ %i.nh, %bb.em ] ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 889
  %i.nd = load i8, ptr %i.nc, align 1, !range !89, !noalias !24983, !noundef !8
  %i.ne = trunc nuw i8 %i.nd to i1
  br i1 %i.ne, label %bb.gn, label %bb.et

bb.em:                                            ; preds = %bb.gk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTjIBH_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.ek
  %i.nf = phi ptr [ %i.ot, %bb.gk ], [ %i.ot, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTjIBH_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.mm, %bb.ek ]
  %i.ng = phi ptr [ %i.ou, %bb.gk ], [ %i.ou, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTjIBH_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.mn, %bb.ek ]
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.en:                                            ; preds = %bb.ek
  %i.ni = ptrtoint ptr %.sroa.8.sroa.9.0.copyload124.i to i64
  %i.nj = extractvalue { ptr, i64 } %i.mz, 0
  %i.nk = extractvalue { ptr, i64 } %i.mz, 1
  store ptr %i.nj, ptr %i.mn, align 8, !noalias !24983
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 792
  store i64 %i.nk, ptr %i.nl, align 8, !noalias !24983
  store i8 0, ptr %i.mo, align 1, !noalias !24983
  %i.nm = icmp ult ptr %.sroa.8.sroa.9.0.copyload124.i, inttoptr (i64 576460752303423488 to ptr)
  call void @llvm.assume(i1 %i.nm)
  %i.nn = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.sroa.8.0.copyload121.i, i64 %i.ni
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !24995
  store ptr %.sroa.8.sroa.8.0.copyload121.i, ptr %i.ap, align 8, !noalias !25002
  %.sroa.060.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %.sroa.8.sroa.8.0.copyload121.i, ptr %.sroa.060.sroa.5.0..sroa_idx.i, align 8, !noalias !25002
  %.sroa.060.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %.sroa.8.sroa.0.0.copyload118.i, ptr %.sroa.060.sroa.6.0..sroa_idx.i, align 8, !noalias !25002
  %.sroa.060.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %i.nn, ptr %.sroa.060.sroa.7.0..sroa_idx.i, align 8, !noalias !25002
  invoke void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtBa_5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB12_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB12_6marker4SendEL_EEENtNtNtNtB12_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB5K_8adapters9enumerateINtB6A_9EnumeratepEB5E_4fold9enumerateBX_uNCINvNvB5E_8for_each4callTjBX_ENCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned00E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.mn, i64 noundef 0)
          to label %bb.eq unwind label %bb.eo, !noalias !24987

bb.eo:                                            ; preds = %bb.en
  %i.no = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

.body43.i:                                        ; preds = %bb.gm, %bb.gl, %bb.fr, %bb.ep
  %i.np = phi ptr [ %i.qm, %bb.gm ], [ %i.qm, %bb.gl ], [ %i.ot, %bb.ep ], [ %i.ot, %bb.fr ]
  %i.nq = phi ptr [ %i.qn, %bb.gm ], [ %i.qn, %bb.gl ], [ %i.ou, %bb.ep ], [ %i.ou, %bb.fr ]
  %.pn21.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn21.pn.pn.pn.i, %bb.gm ], [ %.pn21.pn.pn.pn.i, %bb.gl ], [ %i.ns, %bb.ep ], [ %i.ps, %bb.fr ]
end_hunk_5
begin_hunk_6_@_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot16resolve_snapshot0B7_:bb.a
  %i.fj = icmp eq i64 %i.fi, 1
  br i1 %i.fj, label %common.ret.sink.split.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot21try_new_with_snapshot0EBR_.exit.i

bb.bq:                                            ; preds = %bb.bo
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 336
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB41_EEEB51_(ptr noalias noundef align 8 dereferenceable(40) %i.fk)
          to label %bb.bt unwind label %bb.br, !noalias !25407

bb.br:                                            ; preds = %bb.bq
  %i.fl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25419)
  %i.fn = load ptr, ptr %i.fm, align 8, !alias.scope !25422, !noalias !25370, !nonnull !8, !noundef !8
  %i.fo = atomicrmw sub ptr %i.fn, i64 1 release, align 8, !noalias !25423
  %i.fp = icmp eq i64 %i.fo, 1
  br i1 %i.fp, label %bb.bs, label %.body33.i

bb.bs:                                            ; preds = %bb.br
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8SnapshotE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fm) #45
          to label %.body33.i unwind label %bb.bu, !noalias !25407

bb.bt:                                            ; preds = %bb.bq
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25427)
  %i.fr = load ptr, ptr %i.fq, align 8, !alias.scope !25430, !noalias !25370, !nonnull !8, !noundef !8
  %i.fs = atomicrmw sub ptr %i.fr, i64 1 release, align 8, !noalias !25431
  %i.ft = icmp eq i64 %i.fs, 1
  br i1 %i.ft, label %common.ret.sink.split.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot21try_new_with_snapshot0EBR_.exit.i

bb.bu:                                            ; preds = %bb.bs
  %i.fu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !25407
  unreachable

bb.bv:                                            ; preds = %common.ret.sink.split.i.i
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %.body33.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot21try_new_with_snapshot0EBR_.exit.i: ; preds = %bb.bt, %bb.bp, %common.ret.sink.split.i.i, %bb.bo
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 216
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEEB1a_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.fw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit36.i unwind label %bb.bw, !noalias !25407

bb.bw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot21try_new_with_snapshot0EBR_.exit.i
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit30.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit36.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot21try_new_with_snapshot0EBR_.exit.i
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 184
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.fy)
          to label %bb.ca unwind label %bb.by, !noalias !25407

bb.bx:                                            ; preds = %bb.by, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit30.i
  %i.fz = phi ptr [ %i.ey, %bb.by ], [ %i.eu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit30.i ]
  %i.ga = phi ptr [ %i.ez, %bb.by ], [ %i.ev, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit30.i ]
  %.pn14.i = phi { ptr, i32 } [ %i.gb, %bb.by ], [ %.pn10.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit30.i ]
  store i8 2, ptr %i.fz, align 8, !noalias !25370
  br label %.body

bb.by:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit36.i
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bz:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !25370
  store i8 3, ptr %i.ey, align 8, !noalias !25370
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  store i64 -9223372036854775710, ptr %0, align 16
  br label %common.ret

bb.ca:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit36.i, %bb.ab
  %i.gc = phi ptr [ %i.bt, %bb.ab ], [ %i.ey, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit36.i ]
  %i.gd = phi ptr [ %i.bu, %bb.ab ], [ %i.ez, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit36.i ]
  %.sroa.3.i.sroa.0.0 = phi i64 [ %.sroa.3.i.sroa.0.0.copyload72, %bb.ab ], [ %.sroa.3.i.sroa.0.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit36.i ]
  %.sroa.3.i.sroa.5.0 = phi ptr [ %.sroa.3.i.sroa.5.0.copyload73, %bb.ab ], [ %.sroa.3.i.sroa.5.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit36.i ]
  %.sroa.0.0.i = phi i64 [ -9223372036854775711, %bb.ab ], [ %i.fb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit36.i ]
  %i.ge = phi <2 x i64> [ %i.cc, %bb.ab ], [ %i.fd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit36.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.743.sroa.9, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.i, i64 56, i1 false)
  store i8 1, ptr %i.gc, align 8, !noalias !25370
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot10with_files0EBR_(ptr noundef nonnull align 8 %i.gd)
          to label %bb.r unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.cc:                                            ; preds = %bb.p
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 104
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.gg) #42
          to label %bb.l unwind label %bb.u

bb.cd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit34, %bb.l
  %.pn24.pn = phi { ptr, i32 } [ %.pn24, %bb.l ], [ %.pn14.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit34 ]
  store i8 2, ptr %i.k, align 1
  resume { ptr, i32 } %.pn24.pn

bb.ce:                                            ; preds = %bb.cf
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot7try_new0EBR_(ptr noundef nonnull align 8 %i.gi) #42
          to label %bb.v unwind label %bb.u

bb.cf:                                            ; preds = %bb.c, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  invoke fastcc void @_RNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB6_13EagerSnapshot7try_new0Ba_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.h, ptr noundef nonnull align 8 %i.gi, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.cg unwind label %bb.ce

bb.cg:                                            ; preds = %bb.cf
  %i.gj = load i64, ptr %i.h, align 16, !range !3022, !noundef !8 ; 2 uses
  %i.gk = icmp eq i64 %i.gj, -9223372036854775710
  br i1 %i.gk, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i64 -9223372036854775710, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %common.ret

bb.ci:                                            ; preds = %bb.cg
  %.sroa.58.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.58.sroa.0.0.copyload58 = load i64, ptr %.sroa.58.0..sroa_idx10, align 8
  %.sroa.58.sroa.5.0..sroa.58.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.58.sroa.5.0.copyload61 = load ptr, ptr %.sroa.58.sroa.5.0..sroa.58.0..sroa_idx10.sroa_idx, align 16
  %.sroa.58.sroa.6.0..sroa.58.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.gl = load <2 x i64>, ptr %.sroa.58.sroa.6.0..sroa.58.0..sroa_idx10.sroa_idx, align 8
  %.sroa.58.sroa.7.sroa.4.0..sroa.58.sroa.7.0..sroa.58.0..sroa_idx10.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.743.sroa.9, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.58.sroa.7.sroa.4.0..sroa.58.sroa.7.0..sroa.58.0..sroa_idx10.sroa_idx.sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot7try_new0EBR_(ptr noundef nonnull align 8 %i.gi)
          to label %bb.ck unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.ck:                                            ; preds = %bb.ci
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 98
  store i8 0, ptr %i.gn, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.o

bb.cl:                                            ; preds = %bb.v
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEEB1a_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit34 unwind label %bb.u
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  br i1 %3, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.c = getelementptr i8, ptr %i.b, i64 %1       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !8 ; 4 uses
  %i.h = icmp samesign ult i64 %i.g, 4
  %i.i = getelementptr i8, ptr %i.e, i64 %i.g     ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br i1 %i.h, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us
  %.sroa.0.09.us = phi i16 [ %i.w, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ %2, %.preheader ] ; 2 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09.us, i1 true) ; 2 uses
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr i8, ptr %i.c, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25435)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %i.n, i64 %i.g
  call void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.e, ptr noundef nonnull readonly %i.i)
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.a, align 8, !noalias !25437 ; 2 uses
  %.sroa.522.0.copyload.i.us = load ptr, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !25437 ; 2 uses
  %.sroa.623.0.copyload.i.us = load i64, ptr %.sroa.623.0..sroa_idx.i, align 8, !noalias !25437 ; 3 uses
  %.sroa.8.0.copyload.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !25437 ; 2 uses
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.623.0.copyload.i.us, i64 %.sroa.8.0.copyload.i.us)
  %exitcond.not.i.us18.not = icmp ult i64 %.sroa.623.0.copyload.i.us, %.sroa.8.0.copyload.i.us
  br i1 %exitcond.not.i.us18.not, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us.preheader, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us.preheader: ; preds = %.preheader.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us), "nonnull"(ptr %.sroa.522.0.copyload.i.us) ]
  br label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us
  %i.p = add i64 %.sroa.623.0.i.us19, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.p, %umax.i.us
  br i1 %exitcond.not.i.us, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us.preheader, %bb.b
  %.sroa.623.0.i.us19 = phi i64 [ %i.p, %bb.b ], [ %.sroa.623.0.copyload.i.us, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.522.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.s = load i8, ptr %i.q, align 1, !noundef !8
  %i.t = load i8, ptr %i.r, align 1, !noundef !8
  %.not21.i.us = icmp eq i8 %i.s, %i.t
  br i1 %.not21.i.us, label %bb.b, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = shl nuw i16 1, %i.k
  %i.v = xor i16 %i.u, -1
  %i.w = and i16 %.sroa.0.09.us, %i.v             ; 2 uses
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %bb.d
  %.sroa.0.09 = phi i16 [ %i.al, %bb.d ], [ %2, %.preheader ] ; 2 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09, i1 true) ; 2 uses
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25435)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.g
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.08.030.i = phi ptr [ %i.ag, %bb.c ], [ %i.e, %.preheader.split ] ; 2 uses
  %.sroa.04.029.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.029.i, align 1, !alias.scope !25432, !noalias !25435
  %.sroa.013.0.copyload.i = load i32, ptr %.sroa.08.030.i, align 1, !alias.scope !25435, !noalias !25432
  %.not.i = icmp eq i32 %.sroa.011.0.copyload.i, %.sroa.013.0.copyload.i
  br i1 %.not.i, label %bb.c, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit8

bb.c:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.029.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.030.i, i64 4
  %i.ah = icmp ult ptr %i.af, %i.ad
  br i1 %i.ah, label %.lr.ph.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6: ; preds = %.preheader.split.us, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit8: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit: ; preds = %bb.c, %.preheader.split
  %.sroa.015.0.copyload.i = load i32, ptr %i.ad, align 1, !alias.scope !25432, !noalias !25435
  %.sroa.017.0.copyload.i = load i32, ptr %i.j, align 1, !alias.scope !25435, !noalias !25432
  %i.ai = icmp eq i32 %.sroa.015.0.copyload.i, %.sroa.017.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ai, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6, %bb.a
  %.sroa.03.0 = phi i1 [ true, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6 ], [ false, %bb.a ], [ false, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ true, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit ], [ false, %bb.d ]
  ret i1 %.sroa.03.0

bb.d:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit8, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit
  %i.aj = shl nuw i16 1, %i.y
  %i.ak = xor i16 %i.aj, -1
  %i.al = and i16 %.sroa.0.09, %i.ak              ; 2 uses
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %.loopexit, label %.preheader.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution15write_exec_plan0B9_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 16 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.4.i.i20 = alloca [24 x i8], align 8      ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 8 uses
  %.sroa.12417.i.i = alloca [48 x i8], align 16   ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.635.i.i = alloca [24 x i8], align 8      ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [96 x i8], align 16               ; 10 uses
  %.sroa.3.sroa.4.i.i = alloca [64 x i8], align 16 ; 6 uses
  %i.q = alloca [96 x i8], align 16               ; 11 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.623.i.i = alloca [24 x i8], align 8      ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.614.i.i = alloca [24 x i8], align 8      ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [96 x i8], align 16               ; 11 uses
  %.sroa.2.sroa.3.sroa.5.i.i = alloca [64 x i8], align 16 ; 7 uses
  %i.y = alloca [96 x i8], align 16               ; 14 uses
  %i.z = alloca [112 x i8], align 16              ; 11 uses
  %i.aa = alloca [304 x i8], align 8              ; 7 uses
  %i.ab = alloca [8 x i8], align 8                ; 5 uses
  %i.ac = alloca [32 x i8], align 8               ; 9 uses
  %i.ad = alloca [3200 x i8], align 16            ; 8 uses
  %i.ae = alloca [8 x i8], align 8                ; 8 uses
  %i.af = alloca [336 x i8], align 8              ; 9 uses
  %i.ag = alloca [16 x i8], align 16              ; 11 uses
  %i.ah = alloca [40 x i8], align 8               ; 6 uses
  %i.ai = alloca [40 x i8], align 8               ; 6 uses
  %i.aj = alloca [96 x i8], align 16              ; 30 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [96 x i8], align 16              ; 6 uses
  %i.am = alloca [96 x i8], align 16              ; 13 uses
  %.sroa.37.i = alloca [88 x i8], align 8         ; 7 uses
  %i.an = alloca [96 x i8], align 16              ; 8 uses
  %i.ao = alloca [3216 x i8], align 16            ; 10 uses
  %i.ap = alloca [8 x i8], align 8                ; 5 uses
  %i.aq = alloca [336 x i8], align 8              ; 6 uses
  %i.ar = alloca [16 x i8], align 8               ; 7 uses
  %i.as = alloca [32 x i8], align 8               ; 9 uses
  %i.at = alloca [16 x i8], align 8               ; 6 uses
  %i.au = alloca [40 x i8], align 8               ; 8 uses
  %.sroa.8288.i = alloca [24 x i8], align 8       ; 7 uses
  %i.av = alloca [24 x i8], align 8               ; 11 uses
  %i.aw = alloca [96 x i8], align 16              ; 9 uses
  %i.ax = alloca [16 x i8], align 8               ; 10 uses
  %i.ay = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.12248.i = alloca [48 x i8], align 16     ; 6 uses
  %.sroa.14.i = alloca [48 x i8], align 16        ; 7 uses
  %.sroa.7.i = alloca [232 x i8], align 16        ; 4 uses
  %.sroa.10224.i = alloca [232 x i8], align 16    ; 8 uses
  %i.az = alloca [24 x i8], align 8               ; 7 uses
  %i.ba = alloca [16 x i8], align 8               ; 6 uses
  %i.bb = alloca [40 x i8], align 8               ; 8 uses
  %.sroa.8.i21 = alloca [24 x i8], align 8        ; 7 uses
  %i.bc = alloca [24 x i8], align 8               ; 8 uses
  %i.bd = alloca [24 x i8], align 8               ; 7 uses
  %i.be = alloca [248 x i8], align 8              ; 9 uses
  %i.bf = alloca [24 x i8], align 8               ; 7 uses
  %i.bg = alloca [8 x i8], align 8                ; 9 uses
  %i.bh = alloca [8 x i8], align 8                ; 6 uses
  %i.bi = alloca [32 x i8], align 8               ; 7 uses
  %i.bj = alloca [32 x i8], align 8               ; 7 uses
  %i.bk = alloca [16 x i8], align 8               ; 5 uses
  %i.bl = alloca [24 x i8], align 8               ; 4 uses
  %i.bm = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.4.i481.i = alloca [24 x i8], align 8     ; 4 uses
  %i.bn = alloca [32 x i8], align 8               ; 7 uses
  %i.bo = alloca [32 x i8], align 8               ; 7 uses
  %i.bp = alloca [16 x i8], align 8               ; 5 uses
  %i.bq = alloca [24 x i8], align 8               ; 4 uses
  %i.br = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.4.i413.i = alloca [24 x i8], align 8     ; 4 uses
  %i.bs = alloca [16 x i8], align 8               ; 5 uses
  %i.bt = alloca [24 x i8], align 8               ; 4 uses
  %i.bu = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.4.i362.i = alloca [24 x i8], align 8     ; 4 uses
  %i.bv = alloca [16 x i8], align 8               ; 5 uses
  %i.bw = alloca [24 x i8], align 8               ; 4 uses
  %i.bx = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.4.i.i = alloca [24 x i8], align 8        ; 4 uses
  %i.by = alloca [8 x i8], align 8                ; 4 uses
  %i.bz = alloca [8 x i8], align 8                ; 8 uses
  %i.ca = alloca [8 x i8], align 8                ; 8 uses
  %i.cb = alloca [24 x i8], align 8               ; 6 uses
  %i.cc = alloca [40 x i8], align 8               ; 6 uses
  %i.cd = alloca [40 x i8], align 8               ; 6 uses
  %i.ce = alloca [80 x i8], align 8               ; 7 uses
  %i.cf = alloca [56 x i8], align 8               ; 6 uses
  %i.cg = alloca [96 x i8], align 16              ; 33 uses
  %i.ch = alloca [96 x i8], align 16              ; 6 uses
  %i.ci = alloca [24 x i8], align 8               ; 8 uses
  %i.cj = alloca [96 x i8], align 16              ; 14 uses
  %.sroa.3.i = alloca [88 x i8], align 8          ; 8 uses
  %i.ck = alloca [96 x i8], align 16              ; 8 uses
  %i.cl = alloca [4848 x i8], align 16            ; 11 uses
  %i.cm = alloca [8 x i8], align 8                ; 5 uses
  %i.cn = alloca [336 x i8], align 8              ; 6 uses
  %i.co = alloca [336 x i8], align 8              ; 7 uses
  %i.cp = alloca [16 x i8], align 16              ; 9 uses
  %i.cq = alloca [16 x i8], align 16              ; 9 uses
  %i.cr = alloca [32 x i8], align 8               ; 9 uses
  %i.cs = alloca [16 x i8], align 8               ; 6 uses
  %i.ct = alloca [40 x i8], align 8               ; 8 uses
  %.sroa.8707.i = alloca [24 x i8], align 8       ; 7 uses
end_hunk_6
begin_hunk_7_@_RNCNvXs0_NtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf4scanNtB7_21DeltaCdfTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider4scan0Bd_:bb.a
  %i.az = load i64, ptr %i.g, align 16, !range !4, !noalias !26522, !noundef !8
  %.not.i.i = icmp eq i64 %i.az, 37
  br i1 %.not.i.i, label %.thread, label %bb.h

bb.h:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.f, ptr noundef nonnull align 16 dereferenceable(112) %i.g, i64 112, i1 false), !noalias !26522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !26522
  %i.ba = load ptr, ptr %i.h, align 8, !noalias !26522, !nonnull !8, !noundef !8
  %i.bb = load ptr, ptr %i.ay, align 8, !noalias !26522, !noundef !8
  invoke void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtB9_6traits8iterator8Iterator4foldB1s_NvMsC_B1u_B1s_3andECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.ax, ptr noundef nonnull %i.ba, ptr noundef %i.bb, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.f)
          to label %bb.j unwind label %bb.i

.thread:                                          ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !26522
  store i64 37, ptr %i.ax, align 16, !alias.scope !26522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !26516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !26516
  br label %bb.p

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit88

bb.j:                                             ; preds = %bb.h
  %.pr = load i64, ptr %i.ax, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !26516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !26516
  %.not = icmp eq i64 %.pr, 37
  br i1 %.not, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.w, ptr noundef nonnull align 16 dereferenceable(112) %i.ax, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !8, !noundef !8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bg = load ptr, ptr %i.bf, align 16, !nonnull !8, !align !216, !noundef !8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !invariant.load !8, !nonnull !8
  invoke void %i.bi(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.v, ptr noundef nonnull %i.be, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ar)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EECs14kWLkQVSKO_14deltalake_core.exit64

bb.m:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !26523)
  %i.bk = load i64, ptr %i.v, align 8, !range !43, !alias.scope !26526, !noalias !26523, !noundef !8 ; 2 uses
  %.not.i = icmp eq i64 %i.bk, 20
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !26528 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !26528 ; 2 uses
  br i1 %.not.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store i8 1, ptr %i.ac, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 1120 ; 2 uses
  store ptr %i.bm, ptr %i.bp, align 16
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 1128
  store ptr %i.bo, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr %i.ae, ptr %i.br, align 8
  %.sroa.8119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bs = load <2 x ptr>, ptr %i.bd, align 8
  store <2 x ptr> %i.bs, ptr %.sroa.8119.0..sroa_idx, align 16
  %.sroa.10121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 176
  store ptr %i.bp, ptr %.sroa.10121.0..sroa_idx, align 16
  %.sroa.12122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 216
  store i8 0, ptr %.sroa.12122.0..sroa_idx, align 8
  br label %bb.v

bb.o:                                             ; preds = %bb.m
  %.sroa.12.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4104.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.0..sroa_idx102, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store i64 %i.bk, ptr %i.z, align 8, !alias.scope !26529
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.bm, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !26529
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.bo, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !26529
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ao, %bb.ap, %bb.al, %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 145
  store i8 0, ptr %i.bt, align 1
  br label %.invoke

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EECs14kWLkQVSKO_14deltalake_core.exit64: ; preds = %bb.as, %bb.at, %bb.aq, %bb.am, %bb.l
  %.pn41.pn = phi { ptr, i32 } [ %i.bj, %bb.l ], [ %i.dd, %bb.aq ], [ %.pn38.pn, %bb.am ], [ %.pn38.pn, %bb.at ], [ %.pn38.pn, %bb.as ]
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 145
  store i8 0, ptr %i.bu, align 1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit88

bb.p:                                             ; preds = %.thread, %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr %i.ae, ptr %i.bw, align 8
  %.sroa.8158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bx = load <2 x ptr>, ptr %i.bv, align 8
  store <2 x ptr> %i.bx, ptr %.sroa.8158.0..sroa_idx, align 16
  %.sroa.10160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 176
  store ptr null, ptr %.sroa.10160.0..sroa_idx, align 16
  %.sroa.12162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 216
  store i8 0, ptr %.sroa.12162.0..sroa_idx, align 8
  br label %bb.av

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit88: ; preds = %bb.au, %bb.az, %bb.da, %bb.db, %bb.i, %bb.cz, %bb.ch, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EECs14kWLkQVSKO_14deltalake_core.exit64
  %.pn41.pn.pn = phi { ptr, i32 } [ %.pn41.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EECs14kWLkQVSKO_14deltalake_core.exit64 ], [ %i.gw, %bb.cz ], [ %.pn33.pn225, %bb.da ], [ %.pn33.pn, %bb.ch ], [ %.pn33.pn225, %bb.db ], [ %i.bc, %bb.i ], [ %i.dn, %bb.az ], [ %i.dj, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 88
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.by) #42
          to label %bb.r unwind label %bb.ar

bb.q:                                             ; preds = %_RNvXs4_NtCsbvkFyIu7lgC_4core7convertINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEINtB5_7TryIntoNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaE8try_intoCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, i64 40, i1 false)
  br label %bb.cw

bb.r:                                             ; preds = %bb.cv, %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit88
  %.pn45.pn = phi { ptr, i32 } [ %i.an, %bb.f ], [ %i.gs, %bb.cv ], [ %.pn41.pn.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit88 ]
  store i8 2, ptr %i.aa, align 16
  resume { ptr, i32 } %.pn45.pn

bb.s:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @493) #48
  unreachable

bb.t:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @493) #48
  unreachable

bb.u:                                             ; preds = %bb.v
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations8load_cdfNtBN_14CdfLoadBuilder5build0EBR_(ptr noundef nonnull align 8 %i.ca) #42
          to label %bb.am unwind label %bb.ar

bb.v:                                             ; preds = %bb.d, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  invoke fastcc void @_RNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations8load_cdfNtB6_14CdfLoadBuilder5build0Ba_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.u, ptr noundef nonnull align 8 %i.ca, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.w unwind label %bb.u

bb.w:                                             ; preds = %bb.v
  %i.cb = load i64, ptr %i.u, align 16, !range !3022, !noundef !8 ; 3 uses
  %i.cc = icmp eq i64 %i.cb, -9223372036854775710
  br i1 %i.cc, label %bb.x, label %bb.y

common.ret:                                       ; preds = %bb.cw, %bb.ax, %bb.x
  %.sink = phi i8 [ 1, %bb.cw ], [ 4, %bb.ax ], [ 3, %bb.x ]
  store i8 %.sink, ptr %i.aa, align 16
  ret void

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store i64 21, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %common.ret

bb.y:                                             ; preds = %bb.w
  %.sroa.3124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.3124.0.copyload = load ptr, ptr %.sroa.3124.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.5125.0.copyload = load ptr, ptr %.sroa.5125.0..sroa_idx, align 16 ; 3 uses
  %.sroa.7126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7126, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7126.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations8load_cdfNtBN_14CdfLoadBuilder5build0EBR_(ptr noundef nonnull align 8 %i.ca)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %bb.ab, %bb.y
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.aa:                                            ; preds = %bb.y
  %.not.i60 = icmp eq i64 %i.cb, -9223372036854775711
  br i1 %.not.i60, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.4130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4130.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7126, i64 72, i1 false)
  store i64 %i.cb, ptr %i.e, align 16, !noalias !26533
  %.sroa.2128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.3124.0.copyload, ptr %.sroa.2128.0..sroa_idx, align 8, !noalias !26533
  %.sroa.3129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.5125.0.copyload, ptr %.sroa.3129.0..sroa_idx, align 16, !noalias !26533
  invoke void @_RNvXNtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtB4_6errors15DeltaTableErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.z, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.e)
          to label %bb.an unwind label %bb.z

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3124.0.copyload), "nonnull"(ptr %.sroa.5125.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8133)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 145 ; 2 uses
  store i8 0, ptr %i.ce, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 1120
  %i.cg = load ptr, ptr %i.cf, align 16, !nonnull !8, !noundef !8
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 1128
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !8, !align !216, !noundef !8
  invoke void @_RNvMNtCs5wg436RVUAP_24datafusion_physical_plan6filterNtB2_10FilterExec7try_new(ptr noalias noundef nonnull sret([448 x i8]) align 8 captures(none) dereferenceable(448) %i.t, ptr noundef nonnull %i.cg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %i.ci, ptr noundef nonnull %.sroa.3124.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %.sroa.5125.0.copyload)
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %.body

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !26536)
  %i.ck = load i64, ptr %i.t, align 8, !range !3023, !alias.scope !26539, !noalias !26536, !noundef !8 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 2
  %i.cm = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8133, ptr noundef nonnull align 8 dereferenceable(40) %i.cm, i64 40, i1 false), !alias.scope !26541
  br i1 %i.cl, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.sroa.10135.0..sroa_idx136 = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %.sroa.3139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !26542
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %.sroa.3139.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(400) %.sroa.10135.0..sroa_idx136, i64 400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.sroa.2138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2138.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8133, i64 40, i1 false)
  store i64 1, ptr %i.d, align 8, !noalias !26542
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.cn, align 8, !noalias !26542
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 %i.ck, ptr %i.co, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !26545
  %i.cp = call noundef align 8 dereferenceable_or_null(464) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 7409) 464, i64 noundef range(i64 8, 17) 8) #46, !noalias !26545 ; 3 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.ag, label %bb.aj, !prof !308

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 464) #41
          to label %.noexc.i unwind label %bb.ah, !noalias !26542

.noexc.i:                                         ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs5wg436RVUAP_24datafusion_physical_plan6filter10FilterExecECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(448) %i.co)
          to label %.body unwind label %bb.ai, !noalias !26542

bb.ai:                                            ; preds = %bb.ah
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !26542
  unreachable

.body:                                            ; preds = %bb.ah, %bb.ad
  %.pn36 = phi { ptr, i32 } [ %i.cj, %bb.ad ], [ %i.cr, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8133)
  br label %bb.am

bb.aj:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(464) %i.cp, ptr noundef nonnull align 8 dereferenceable(464) %i.d, i64 464, i1 false), !noalias !26542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !26542
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8133)
  store i8 0, ptr %i.ce, align 1
  br label %bb.bd

bb.ak:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8133, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8133)
  br label %bb.al

bb.al:                                            ; preds = %bb.an, %bb.ak
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 145
  %i.cu = load i8, ptr %i.ct, align 1, !range !89, !noundef !8
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.ao, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.am:                                            ; preds = %bb.u, %bb.z, %.body
  %.pn38.pn = phi { ptr, i32 } [ %.pn36, %.body ], [ %i.cd, %bb.z ], [ %i.bz, %bb.u ] ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 145
  %i.cx = load i8, ptr %i.cw, align 1, !range !89, !noundef !8
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.as, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EECs14kWLkQVSKO_14deltalake_core.exit64

bb.an:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.al

bb.ao:                                            ; preds = %bb.al
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 1120 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26548)
  call void @llvm.experimental.noalias.scope.decl(metadata !26551)
  %i.da = load ptr, ptr %i.cz, align 16, !alias.scope !26554, !nonnull !8, !noundef !8
  %i.db = atomicrmw sub ptr %i.da, i64 1 release, align 8, !noalias !26554
  %i.dc = icmp eq i64 %i.db, 1
  br i1 %i.dc, label %bb.ap, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.ap:                                            ; preds = %bb.ao
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cz) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EECs14kWLkQVSKO_14deltalake_core.exit64

bb.ar:                                            ; preds = %bb.db, %bb.bk, %bb.at, %bb.cl, %bb.ck, %bb.au, %bb.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit88
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.as:                                            ; preds = %bb.am
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 1120 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26555)
  call void @llvm.experimental.noalias.scope.decl(metadata !26558)
  %i.dg = load ptr, ptr %i.df, align 16, !alias.scope !26561, !nonnull !8, !noundef !8
  %i.dh = atomicrmw sub ptr %i.dg, i64 1 release, align 8, !noalias !26561
  %i.di = icmp eq i64 %i.dh, 1
  br i1 %i.di, label %bb.at, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EECs14kWLkQVSKO_14deltalake_core.exit64

bb.at:                                            ; preds = %bb.as
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.df) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EECs14kWLkQVSKO_14deltalake_core.exit64 unwind label %bb.ar

bb.au:                                            ; preds = %bb.av
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations8load_cdfNtBN_14CdfLoadBuilder5build0EBR_(ptr noundef nonnull align 8 %i.dk) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit88 unwind label %bb.ar

bb.av:                                            ; preds = %bb.e, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  invoke fastcc void @_RNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations8load_cdfNtB6_14CdfLoadBuilder5build0Ba_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.s, ptr noundef nonnull align 8 %i.dk, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.aw unwind label %bb.au

bb.aw:                                            ; preds = %bb.av
  %i.dl = load i64, ptr %i.s, align 16, !range !3022, !noundef !8 ; 3 uses
  %i.dm = icmp eq i64 %i.dl, -9223372036854775710
  br i1 %i.dm, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store i64 21, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %common.ret

bb.ay:                                            ; preds = %bb.aw
  %.sroa.3165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.3165.0.copyload = load ptr, ptr %.sroa.3165.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.5166.0.copyload = load ptr, ptr %.sroa.5166.0..sroa_idx, align 16 ; 3 uses
  %.sroa.7167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7167, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7167.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations8load_cdfNtBN_14CdfLoadBuilder5build0EBR_(ptr noundef nonnull align 8 %i.dk)
          to label %bb.ba unwind label %bb.az

bb.az:                                            ; preds = %bb.bb, %bb.ay
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit88

bb.ba:                                            ; preds = %bb.ay
  %.not.i65 = icmp eq i64 %i.dl, -9223372036854775711
  br i1 %.not.i65, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.sroa.4171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4171.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7167, i64 72, i1 false)
  store i64 %i.dl, ptr %i.c, align 16, !noalias !26562
  %.sroa.2169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.3165.0.copyload, ptr %.sroa.2169.0..sroa_idx, align 8, !noalias !26562
  %.sroa.3170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.5166.0.copyload, ptr %.sroa.3170.0..sroa_idx, align 16, !noalias !26562
  invoke void @_RNvXNtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtB4_6errors15DeltaTableErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.z, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.c)
          to label %bb.dc unwind label %bb.az

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3165.0.copyload), "nonnull"(ptr %.sroa.5166.0.copyload) ]
  br label %bb.bd

bb.bd:                                            ; preds = %bb.aj, %bb.bc
  %.sink246 = phi ptr [ %i.cp, %bb.aj ], [ %.sroa.3165.0.copyload, %bb.bc ] ; 2 uses
  %.sink244 = phi ptr [ @495, %bb.aj ], [ %.sroa.5166.0.copyload, %bb.bc ] ; 3 uses
  store ptr %.sink246, ptr %i.x, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.sink244, ptr %i.do, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8174)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sink244, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !range !2991, !invariant.load !8
  %i.ds = add nsw i64 %i.dr, -1
  %i.dt = and i64 %i.ds, -16
  %i.du = getelementptr inbounds nuw i8, ptr %.sink246, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %.sink244, i64 64
  %i.dx = load ptr, ptr %i.dw, align 8, !invariant.load !8, !nonnull !8
  %i.dy = invoke noundef nonnull ptr %i.dx(ptr noundef nonnull %i.dv)
          to label %bb.be unwind label %.thread222

.thread222:                                       ; preds = %bb.be, %bb.bd
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8174)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.da

bb.be:                                            ; preds = %bb.bd
  invoke void @_RNvXs2_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaINtNtCsbvkFyIu7lgC_4core7convert7TryFromINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEE8try_from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.q, ptr noundef nonnull %i.dy)
          to label %_RNvXs4_NtCsbvkFyIu7lgC_4core7convertINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEINtB5_7TryIntoNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaE8try_intoCs14kWLkQVSKO_14deltalake_core.exit70 unwind label %.thread222

_RNvXs4_NtCsbvkFyIu7lgC_4core7convertINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEINtB5_7TryIntoNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaE8try_intoCs14kWLkQVSKO_14deltalake_core.exit70: ; preds = %bb.be
  call void @llvm.experimental.noalias.scope.decl(metadata !26565)
  %i.ea = load i64, ptr %i.q, align 8, !range !65, !alias.scope !26568, !noalias !26565, !noundef !8 ; 2 uses
  %i.eb = icmp eq i64 %i.ea, -9223372036854775808
  %i.ec = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8174, ptr noundef nonnull align 8 dereferenceable(40) %i.ec, i64 40, i1 false), !alias.scope !26570
  br i1 %i.eb, label %.thread226, label %bb.bf

bb.bf:                                            ; preds = %_RNvXs4_NtCsbvkFyIu7lgC_4core7convertINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEINtB5_7TryIntoNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaE8try_intoCs14kWLkQVSKO_14deltalake_core.exit70
  %.sroa.10176.0..sroa_idx177 = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %.sroa.10176.0.copyload178 = load i64, ptr %.sroa.10176.0..sroa_idx177, align 8, !alias.scope !26570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.sroa.4180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4180.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8174, i64 40, i1 false)
  store i64 %i.ea, ptr %i.r, align 8
  %.sroa.5181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store i64 %.sroa.10176.0.copyload178, ptr %.sroa.5181.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8174)
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ee = load ptr, ptr %i.ed, align 16, !align !216, !noundef !8 ; 4 uses
  %.not15 = icmp eq ptr %i.ee, null
  br i1 %.not15, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit, %bb.bf
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.eg = load i64, ptr %i.ef, align 8, !range !64, !noundef !8
  %i.eh = trunc nuw i64 %i.eg to i1
  %.pre = load ptr, ptr %i.x, align 8             ; 2 uses
  %.pre232 = load ptr, ptr %i.dp, align 8         ; 2 uses
  br i1 %i.eh, label %bb.cm, label %bb.cn

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %.val51 = load ptr, ptr %i.x, align 8, !nonnull !8, !noundef !8
  %.val52 = load ptr, ptr %i.dp, align 8, !nonnull !8, !align !216, !noundef !8 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.val52, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !range !2991, !invariant.load !8
  %i.ek = add nsw i64 %i.ej, -1
  %i.el = and i64 %i.ek, -16
  %i.em = getelementptr inbounds nuw i8, ptr %.val51, i64 %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %.val52, i64 64
  %i.ep = load ptr, ptr %i.eo, align 8, !invariant.load !8, !nonnull !8
  %i.eq = invoke noundef nonnull ptr %i.ep(ptr noundef nonnull %i.en)
          to label %bb.bj unwind label %bb.bi     ; 2 uses

bb.bi:                                            ; preds = %bb.bh
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit

bb.bj:                                            ; preds = %bb.bh
  store ptr %i.eq, ptr %i.o, align 8
  %i.es = getelementptr i8, ptr %i.eq, i64 24
  %.val50 = load i64, ptr %i.es, align 8, !noundef !8
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejEE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, i64 noundef 0, i64 noundef %.val50)
          to label %_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator7collectINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bl
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ar

bb.bl:                                            ; preds = %bb.bj
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26571)
  call void @llvm.experimental.noalias.scope.decl(metadata !26574)
  %i.eu = load ptr, ptr %i.o, align 8, !alias.scope !26577, !nonnull !8, !noundef !8
  %i.ev = atomicrmw sub ptr %i.eu, i64 1 release, align 8, !noalias !26577
  %i.ew = icmp eq i64 %i.ev, 1
  br i1 %i.ew, label %bb.bk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit

_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator7collectINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.bj
  call void @llvm.experimental.noalias.scope.decl(metadata !26578)
  call void @llvm.experimental.noalias.scope.decl(metadata !26581)
  %i.ex = load ptr, ptr %i.o, align 8, !alias.scope !26584, !nonnull !8, !noundef !8
  %i.ey = atomicrmw sub ptr %i.ex, i64 1 release, align 8, !noalias !26584
  %i.ez = icmp eq i64 %i.ey, 1
  br i1 %i.ez, label %bb.bm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit75

bb.bm:                                            ; preds = %_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator7collectINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit75 unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ck

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit75: ; preds = %_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator7collectINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.fb = getelementptr i8, ptr %i.ee, i64 16
  %.val1.i = load i64, ptr %i.fb, align 8, !noundef !8 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.val3.i = load i64, ptr %i.fc, align 8, !noundef !8
  %i.fd = icmp eq i64 %.val1.i, %.val3.i
  br i1 %i.fd, label %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRINtNtCs6Po7BT7Nknu_5alloc3vec3VecjENtB7_9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit75._RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRINtNtCs6Po7BT7Nknu_5alloc3vec3VecjENtB7_9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread_crit_edge

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit75._RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRINtNtCs6Po7BT7Nknu_5alloc3vec3VecjENtB7_9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread_crit_edge: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit75
  %.phi.trans.insert = getelementptr i8, ptr %i.ee, i64 8
  %.val57.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRINtNtCs6Po7BT7Nknu_5alloc3vec3VecjENtB7_9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRINtNtCs6Po7BT7Nknu_5alloc3vec3VecjENtB7_9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit75
  %i.fe = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val2.i = load ptr, ptr %i.fe, align 8, !nonnull !8, !noundef !8
  %i.ff = getelementptr i8, ptr %i.ee, i64 8
  %.val.i = load ptr, ptr %i.ff, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.fg = shl nuw i64 %.val1.i, 3
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val2.i, i64 %i.fg)
  %.not228 = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not228, label %bb.bo, label %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRINtNtCs6Po7BT7Nknu_5alloc3vec3VecjENtB7_9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.bo:                                            ; preds = %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRINtNtCs6Po7BT7Nknu_5alloc3vec3VecjENtB7_9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit, %bb.ca
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.bq unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body77 unwind label %bb.br

bb.bq:                                            ; preds = %bb.bo
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.cb

bb.br:                                            ; preds = %bb.bp
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRINtNtCs6Po7BT7Nknu_5alloc3vec3VecjENtB7_9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit75._RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRINtNtCs6Po7BT7Nknu_5alloc3vec3VecjENtB7_9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread_crit_edge, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRINtNtCs6Po7BT7Nknu_5alloc3vec3VecjENtB7_9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit
  %.val57 = phi ptr [ %.val57.pre, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit75._RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRINtNtCs6Po7BT7Nknu_5alloc3vec3VecjENtB7_9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread_crit_edge ], [ %.val.i, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRINtNtCs6Po7BT7Nknu_5alloc3vec3VecjENtB7_9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %.val57, i64 %.val1.i
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !26585)
  store ptr %.val57, ptr %i.m, align 8, !alias.scope !26588, !noalias !26585
  %i.fl = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.fj, ptr %i.fl, align 8, !alias.scope !26588, !noalias !26585
  %i.fm = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.r, ptr %i.fm, align 8, !alias.scope !26590
  %.sroa.5185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.fn = load <2 x ptr>, ptr %i.fk, align 8
  store <2 x ptr> %i.fn, ptr %.sroa.5185.0..sroa_idx, align 8, !alias.scope !26590
  invoke void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterjENCNCNvXs0_NtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf4scanNtB1I_21DeltaCdfTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider4scan00ETINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_ENtNtB4m_6string6StringEINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1O_6errors15DeltaTableErrorENCINvXso_B6C_IB6A_INtNtB4m_3vec3VecB4g_EB7m_EINtNtNtB4_6traits7collect12FromIteratorIB6A_B4g_B7m_EE9from_iterBQ_E0B8b_EB1O_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.n, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.m)
          to label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterjENCNCNvXs0_NtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf4scanNtB1t_21DeltaCdfTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider4scan00ENtNtNtBa_6traits8iterator8Iterator7collectINtNtBc_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecTINtNtB58_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_ENtNtB58_6string6StringEENtNtB1z_6errors15DeltaTableErrorEEB1z_.exit unwind label %bb.bs

bb.bs:                                            ; preds = %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRINtNtCs6Po7BT7Nknu_5alloc3vec3VecjENtB7_9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ck

_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterjENCNCNvXs0_NtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf4scanNtB1t_21DeltaCdfTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider4scan00ENtNtNtBa_6traits8iterator8Iterator7collectINtNtBc_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecTINtNtB58_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_ENtNtB58_6string6StringEENtNtB1z_6errors15DeltaTableErrorEEB1z_.exit: ; preds = %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRINtNtCs6Po7BT7Nknu_5alloc3vec3VecjENtB7_9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.fp = load i64, ptr %i.n, align 16, !range !296, !alias.scope !26591, !noalias !26594, !noundef !8 ; 2 uses
  %.not.i80 = icmp eq i64 %i.fp, -9223372036854775711
  %i.fq = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
end_hunk_7
begin_hunk_8_@_RNCNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations4loadNtB7_11LoadBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0Bb_:bb.a
  %i.fy = load i64, ptr %i.fx, align 8, !range !2991, !invariant.load !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val68, i64 noundef range(i64 1, 0) %i.fv, i64 noundef range(i64 1, 536870913) %i.fy) #46
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.cw:                                            ; preds = %bb.ct
  %i.fz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.val69, i64 8
  %i.gb = load i64, ptr %i.ga, align 8, !range !231, !invariant.load !8 ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 0
  br i1 %i.gc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs14kWLkQVSKO_14deltalake_core.exit127, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.gd = getelementptr inbounds nuw i8, ptr %.val69, i64 16
  %i.ge = load i64, ptr %i.gd, align 8, !range !2991, !invariant.load !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val68, i64 noundef range(i64 1, 0) %i.gb, i64 noundef range(i64 1, 536870913) %i.ge) #46
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs14kWLkQVSKO_14deltalake_core.exit127

bb.cy:                                            ; preds = %bb.cz
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs14kWLkQVSKO_14deltalake_core.exit127

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.cv, %bb.cu
  %.not.i104 = icmp eq i64 %i.fq, 20
  br i1 %.not.i104, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.4215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4215.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7211, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !27176)
  store i64 %i.fq, ptr %i.c, align 8, !noalias !27176
  %.sroa.2213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.3209.0.copyload, ptr %.sroa.2213.0..sroa_idx, align 8, !noalias !27176
  %.sroa.3214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.5210.0.copyload, ptr %.sroa.3214.0..sroa_idx, align 8, !noalias !27176
  %i.gg = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.gg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.dd unwind label %bb.cy

bb.da:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5210.0.copyload) ]
  store ptr %.sroa.3209.0.copyload, ptr %i.fp, align 8
  store ptr %.sroa.5210.0.copyload, ptr %i.fs, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3209.0.copyload) ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.5210.0.copyload, i64 16
  %i.gi = load i64, ptr %i.gh, align 8, !range !2991, !invariant.load !8
  %i.gj = add nsw i64 %i.gi, -1
  %i.gk = and i64 %i.gj, -16
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.3209.0.copyload, i64 %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.val83 = load ptr, ptr %i.gn, align 8, !nonnull !8, !noundef !8
  %i.go = getelementptr i8, ptr %1, i64 160
  %.val84 = load ptr, ptr %i.go, align 8, !nonnull !8, !align !216, !noundef !8 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.val84, i64 16
  %i.gq = load i64, ptr %i.gp, align 8, !range !2991, !invariant.load !8
  %i.gr = add nsw i64 %i.gq, -1
  %i.gs = and i64 %i.gr, -16
  %i.gt = getelementptr inbounds nuw i8, ptr %.val83, i64 %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.gw = load i64, ptr %i.gv, align 8, !range !65, !alias.scope !27179, !noundef !8
  %.not.i106 = icmp eq i64 %i.gw, -9223372036854775808
  %..i = select i1 %.not.i106, ptr null, ptr %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.5210.0.copyload, i64 88
  %i.gy = load ptr, ptr %i.gx, align 8, !invariant.load !8, !nonnull !8
  %i.gz = invoke { ptr, ptr } %i.gy(ptr noundef nonnull %i.gm, ptr noundef nonnull %i.gu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val84, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) inttoptr (i64 16 to ptr), i64 noundef 0, i64 noundef 0, i64 undef)
          to label %bb.dc unwind label %bb.db     ; 2 uses

bb.db:                                            ; preds = %bb.da
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %.body108

bb.dc:                                            ; preds = %bb.da
  %i.hb = extractvalue { ptr, ptr } %i.gz, 0
  %i.hc = extractvalue { ptr, ptr } %i.gz, 1
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 312
  store ptr %i.hb, ptr %i.hd, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 320
  store ptr %i.hc, ptr %i.he, align 8
  br label %bb.df

bb.dd:                                            ; preds = %bb.cz
  store i64 1, ptr %i.j, align 16, !alias.scope !27176, !noalias !27182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs14kWLkQVSKO_14deltalake_core.exit125

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs14kWLkQVSKO_14deltalake_core.exit125: ; preds = %bb.eo, %bb.ep, %bb.dd
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 168
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEBK_(ptr noalias noundef align 8 dereferenceable(120) %i.hf)
          to label %bb.et unwind label %bb.es

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs14kWLkQVSKO_14deltalake_core.exit127: ; preds = %bb.bv, %bb.co, %bb.cw, %bb.cx, %bb.cy, %.body108, %bb.eq, %bb.eb
  %.pn44.pn = phi { ptr, i32 } [ %.pn41.pn, %.body108 ], [ %i.jd, %bb.eb ], [ %.pn41.pn, %bb.eq ], [ %.pn30, %bb.bv ], [ %i.fn, %bb.co ], [ %i.gf, %bb.cy ], [ %i.fz, %bb.cx ], [ %i.fz, %bb.cw ] ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 293
  %i.hh = load i8, ptr %i.hg, align 1, !range !89, !noundef !8
  %i.hi = trunc nuw i8 %i.hh to i1
  br i1 %i.hi, label %bb.fq, label %bb.bz

bb.de:                                            ; preds = %bb.df
  %i.hj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.val74 = load ptr, ptr %i.hl, align 8
  %i.hk = getelementptr i8, ptr %1, i64 320
  %.val75 = load ptr, ptr %i.hk, align 8, !nonnull !8, !align !216, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val74, ptr nonnull %.val75) #42
          to label %.body108 unwind label %bb.by

bb.df:                                            ; preds = %bb.a, %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.hl, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.dg unwind label %bb.de

bb.dg:                                            ; preds = %bb.df
  %i.hm = load i64, ptr %i.m, align 8, !range !30, !noundef !8 ; 3 uses
  %i.hn = icmp eq i64 %i.hm, 21
  br i1 %i.hn, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 2, ptr %0, align 16
  br label %common.ret

bb.di:                                            ; preds = %bb.dg
  %.sroa.3227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.3227.0.copyload = load ptr, ptr %.sroa.3227.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.5228.0.copyload = load ptr, ptr %.sroa.5228.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7229, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7229.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.val72 = load ptr, ptr %i.hl, align 8          ; 5 uses
  %i.ho = getelementptr i8, ptr %1, i64 320
  %.val73 = load ptr, ptr %i.ho, align 8, !nonnull !8, !align !216, !noundef !8 ; 5 uses
  %i.hp = load ptr, ptr %.val73, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i107 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i107, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val72) ]
  invoke void %i.hp(ptr noundef nonnull %.val72)
          to label %bb.dk unwind label %bb.dm

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.hq = getelementptr inbounds nuw i8, ptr %.val73, i64 8
  %i.hr = load i64, ptr %i.hq, align 8, !range !231, !invariant.load !8 ; 2 uses
  %i.hs = icmp eq i64 %i.hr, 0
  br i1 %i.hs, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ht = getelementptr inbounds nuw i8, ptr %.val73, i64 16
  %i.hu = load i64, ptr %i.ht, align 8, !range !2991, !invariant.load !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val72) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val72, i64 noundef range(i64 1, 0) %i.hr, i64 noundef range(i64 1, 536870913) %i.hu) #46
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.dm:                                            ; preds = %bb.dj
  %i.hv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.val73, i64 8
  %i.hx = load i64, ptr %i.hw, align 8, !range !231, !invariant.load !8 ; 2 uses
  %i.hy = icmp eq i64 %i.hx, 0
  br i1 %i.hy, label %.body108, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.hz = getelementptr inbounds nuw i8, ptr %.val73, i64 16
  %i.ia = load i64, ptr %i.hz, align 8, !range !2991, !invariant.load !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val72, i64 noundef range(i64 1, 0) %i.hx, i64 noundef range(i64 1, 536870913) %i.ia) #46
  br label %.body108

bb.do:                                            ; preds = %bb.dp
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %.body108

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.dl, %bb.dk
  %.not.i110 = icmp eq i64 %i.hm, 20
  br i1 %.not.i110, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.4233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4233.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7229, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !27184)
  store i64 %i.hm, ptr %i.b, align 8, !noalias !27184
  %.sroa.2231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.3227.0.copyload, ptr %.sroa.2231.0..sroa_idx, align 8, !noalias !27184
  %.sroa.3232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.5228.0.copyload, ptr %.sroa.3232.0..sroa_idx, align 8, !noalias !27184
  %i.ic = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.ic, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
          to label %bb.er unwind label %bb.do

bb.dq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3227.0.copyload), "nonnull"(ptr %.sroa.5228.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvMNtCs5wg436RVUAP_24datafusion_physical_plan19coalesce_partitionsNtB2_22CoalescePartitionsExec3new(ptr noalias noundef nonnull sret([392 x i8]) align 8 captures(none) dereferenceable(392) %i.l, ptr noundef nonnull %.sroa.3227.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %.sroa.5228.0.copyload)
          to label %bb.dt unwind label %bb.ds

bb.dr:                                            ; preds = %bb.ek, %bb.ds
  %.pn39 = phi { ptr, i32 } [ %i.id, %bb.ds ], [ %.pn37, %bb.ek ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.body108

bb.ds:                                            ; preds = %bb.em, %bb.dy, %bb.dq
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.dt:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  %.val85 = load ptr, ptr %i.ie, align 8, !nonnull !8, !noundef !8
  %i.if = getelementptr i8, ptr %1, i64 160
  %.val86 = load ptr, ptr %i.if, align 8, !nonnull !8, !align !216, !noundef !8 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.val86, i64 16
  %i.ih = load i64, ptr %i.ig, align 8, !range !2991, !invariant.load !8
  %i.ii = add nsw i64 %i.ih, -1
  %i.ij = and i64 %i.ii, -16
  %i.ik = getelementptr inbounds nuw i8, ptr %.val85, i64 %i.ij
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.im = getelementptr inbounds nuw i8, ptr %.val86, i64 136
  %i.in = load ptr, ptr %i.im, align 8, !invariant.load !8, !nonnull !8
  %i.io = invoke noundef nonnull ptr %i.in(ptr noundef nonnull %i.il)
          to label %bb.dv unwind label %bb.du

bb.du:                                            ; preds = %bb.dv, %bb.dt
  %i.ip = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ek

bb.dv:                                            ; preds = %bb.dt
  invoke void @_RNvXs0_NtCs5wg436RVUAP_24datafusion_physical_plan19coalesce_partitionsNtB5_22CoalescePartitionsExecNtNtB7_14execution_plan13ExecutionPlan7execute(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %i.l, i64 noundef 0, ptr noundef nonnull %i.io)
          to label %bb.dw unwind label %bb.du

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.experimental.noalias.scope.decl(metadata !27187)
  %i.iq = load i64, ptr %i.k, align 8, !range !43, !alias.scope !27190, !noalias !27187, !noundef !8 ; 2 uses
  %.not.i113 = icmp eq i64 %i.iq, 20
  %i.ir = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !alias.scope !27192 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.iu = load ptr, ptr %i.it, align 8, !alias.scope !27192 ; 2 uses
  br i1 %.not.i113, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %.sroa.12242.0..sroa_idx243 = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.4247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4247.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12242.0..sroa_idx243, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !27193)
  store i64 %i.iq, ptr %i.a, align 8, !noalias !27193
  %.sroa.2245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.is, ptr %.sroa.2245.0..sroa_idx, align 8, !noalias !27193
  %.sroa.3246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.iu, ptr %.sroa.3246.0..sroa_idx, align 8, !noalias !27193
  %i.iv = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.iv, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.em unwind label %bb.el

bb.dy:                                            ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 293 ; 2 uses
  store i8 0, ptr %i.iw, align 1
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.iy = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.iy, ptr noundef nonnull align 8 dereferenceable(120) %i.ix, i64 120, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  store ptr %i.is, ptr %.sroa.4.0..sroa_idx, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  store ptr %i.iu, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 0, ptr %i.j, align 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs5wg436RVUAP_24datafusion_physical_plan19coalesce_partitions22CoalescePartitionsExecECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(392) %i.l)
          to label %bb.dz unwind label %bb.ds

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27196)
  call void @llvm.experimental.noalias.scope.decl(metadata !27199)
  %i.ja = load ptr, ptr %i.iz, align 8, !alias.scope !27202, !nonnull !8, !noundef !8
  %i.jb = atomicrmw sub ptr %i.ja, i64 1 release, align 8, !noalias !27202
  %i.jc = icmp eq i64 %i.jb, 1
  br i1 %i.jc, label %bb.ea, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.ea:                                            ; preds = %bb.dz
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.iz) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.eb

bb.eb:                                            ; preds = %bb.ep, %bb.ea
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs14kWLkQVSKO_14deltalake_core.exit127

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.dz, %bb.ea
  store i8 0, ptr %i.iw, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !27203)
  call void @llvm.experimental.noalias.scope.decl(metadata !27206)
  %i.je = load ptr, ptr %i.ie, align 8, !alias.scope !27209, !nonnull !8, !noundef !8
  %i.jf = atomicrmw sub ptr %i.je, i64 1 release, align 8, !noalias !27209
  %i.jg = icmp eq i64 %i.jf, 1
  br i1 %i.jg, label %bb.ec, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EECs14kWLkQVSKO_14deltalake_core.exit118

bb.ec:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs14kWLkQVSKO_14deltalake_core.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_E9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ie) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EECs14kWLkQVSKO_14deltalake_core.exit118 unwind label %bb.ed

bb.ed:                                            ; preds = %bb.eu, %bb.ec
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EECs14kWLkQVSKO_14deltalake_core.exit118: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs14kWLkQVSKO_14deltalake_core.exit, %bb.ec
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.jj = load i64, ptr %i.ji, align 8, !range !65, !alias.scope !27210, !noundef !8
  %i.jk = icmp eq i64 %i.jj, -9223372036854775808
  br i1 %i.jk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ee

bb.ee:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EECs14kWLkQVSKO_14deltalake_core.exit118
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ji)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.jl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ji)
          to label %.body119 unwind label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.jm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.ee
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ji)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.eh

bb.eh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i131, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %.body119

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EECs14kWLkQVSKO_14deltalake_core.exit118, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27213)
  call void @llvm.experimental.noalias.scope.decl(metadata !27216)
  %i.jp = load ptr, ptr %i.jo, align 8, !alias.scope !27219, !nonnull !8, !noundef !8
  %i.jq = atomicrmw sub ptr %i.jp, i64 1 release, align 8, !noalias !27219
  %i.jr = icmp eq i64 %i.jq, 1
  br i1 %i.jr, label %bb.ei, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit123

bb.ei:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.jo) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit123 unwind label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.ch
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit101

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit123: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core.exit, %bb.ei
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 289
  store i8 0, ptr %i.jt, align 1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EECs14kWLkQVSKO_14deltalake_core.exit142

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EECs14kWLkQVSKO_14deltalake_core.exit142: ; preds = %bb.fj, %bb.fk, %bb.fi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB17_6string6StringEEECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %0, ptr noundef nonnull align 16 dereferenceable(144) %i.j, i64 144, i1 false)
  br label %common.ret

bb.ek:                                            ; preds = %bb.el, %bb.du
  %.pn37 = phi { ptr, i32 } [ %i.ju, %bb.el ], [ %i.ip, %bb.du ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs5wg436RVUAP_24datafusion_physical_plan19coalesce_partitions22CoalescePartitionsExecECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(392) %i.l) #42
          to label %bb.dr unwind label %bb.by

bb.el:                                            ; preds = %bb.dx
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.em:                                            ; preds = %bb.dx
  store i64 1, ptr %i.j, align 16, !alias.scope !27193, !noalias !27220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs5wg436RVUAP_24datafusion_physical_plan19coalesce_partitions22CoalescePartitionsExecECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(392) %i.l)
          to label %bb.en unwind label %bb.ds

bb.en:                                            ; preds = %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.eo

end_hunk_8
begin_hunk_9_@_RNvXs1N_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7SetExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !32338
  invoke fastcc void @_RNvXs1t_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_5QueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(1400) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.o) #44
          to label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.e, !noalias !32334, !inline_history !32341

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef 1400, i64 noundef 8) #46, !noalias !32334, !inline_history !32337
  br label %common.resume

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.n, ptr noundef nonnull align 8 dereferenceable(1400) %i.d, i64 1400, i1 false), !noalias !32338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32338
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.q, align 8
  store i8 1, ptr %0, align 8
  br label %bb.v

bb.f:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load i8, ptr %i.r, align 2, !range !3878, !noundef !8
  %.val1 = load i8, ptr %i.s, align 1, !range !4919, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32342)
  %i.u = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprE13new_uninit_inCs14kWLkQVSKO_14deltalake_core(), !noalias !32342, !inline_history !32345 ; 4 uses
  %i.v = load ptr, ptr %i.t, align 8, !alias.scope !32342, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !32346
  invoke fastcc void @_RNvXs1N_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7SetExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2696) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2696) %i.v) #44
          to label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.g, !noalias !32342, !inline_history !32349

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef 2696, i64 noundef 8) #46, !noalias !32342, !inline_history !32345
  br label %common.resume

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2696) %i.u, ptr noundef nonnull align 8 dereferenceable(2696) %i.c, i64 2696, i1 false), !noalias !32346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32346
  store ptr %i.u, ptr %i.f, align 8
  %i.y = invoke fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x)
          to label %bb.x unwind label %bb.w

bb.h:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32353)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load i8, ptr %i.aa, align 8, !range !89, !alias.scope !32353, !noalias !32350, !noundef !8
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecIBw_NtNtCs4lawaffTVVK_9sqlparser3ast4ExprEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i8 %i.ab, ptr %i.ac, align 8, !alias.scope !32350, !noalias !32353
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  store i8 3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.v

bb.i:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2688) %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ae) #44
  store i8 4, ptr %0, align 8
  br label %bb.v

bb.j:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2688) %i.ah, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ag) #44
  store i8 5, ptr %0, align 8
  br label %bb.v

bb.k:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2688) %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ai) #44
  store i8 6, ptr %0, align 8
  br label %bb.v

bb.l:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2688) %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ak) #44
  store i8 7, ptr %0, align 8
  br label %bb.v

bb.m:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.am, align 8           ; 4 uses
  %i.an = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5TableE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32355)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32358)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !32361
  %i.ao = load i64, ptr %.val2, align 8, !range !65, !alias.scope !32363, !noalias !32364, !noundef !8
  %.not.i.i.i = icmp eq i64 %i.ao, -9223372036854775808
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val2)
          to label %.noexc.i unwind label %bb.t

bb.o:                                             ; preds = %bb.m
  store i64 -9223372036854775808, ptr %i.b, align 8, !noalias !32361
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.o, %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %.val2, i64 24 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !range !65, !alias.scope !32363, !noalias !32364, !noundef !8
  %.not4.i.i.i = icmp eq i64 %i.aq, -9223372036854775808
  br i1 %.not4.i.i.i, label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5TableENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit, label %bb.p

bb.p:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32361
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap)
          to label %bb.r unwind label %bb.q, !noalias !32364

bb.q:                                             ; preds = %bb.p
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #42
          to label %bb.u unwind label %bb.s, !noalias !32364

bb.r:                                             ; preds = %bb.p
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.a, align 8, !noalias !32361
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i.i, i64 16, i1 false), !noalias !32355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32361
  br label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5TableENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.q
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !32364
  unreachable

bb.t:                                             ; preds = %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.at, %bb.t ], [ %i.ar, %bb.q ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef 48, i64 noundef 8) #46
  br label %common.resume

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5TableENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.noexc.i, %bb.r
  %.sroa.0.0.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i, %bb.r ], [ -9223372036854775808, %.noexc.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !32363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !32361
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, i64 24, i1 false), !noalias !32355
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 %.sroa.0.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !32355
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i, i64 16, i1 false), !noalias !32355
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.au, align 8
  store i8 8, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5TableENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query6SelectENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  ret void

bb.w:                                             ; preds = %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.f) #42
          to label %common.resume unwind label %bb.y

bb.x:                                             ; preds = %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.val, ptr %i.aw, align 2
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.val1, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.y, ptr %i.az, align 8
  store i8 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.v

bb.y:                                             ; preds = %bb.w
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1N_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr captures(address, read_provenance) %.0.val, ptr nofree readonly captures(address) %.8.val, ptr captures(address, read_provenance) %.0.val1, ptr nofree readonly captures(address) %.8.val3) unnamed_addr #1 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.0.val1) ]
  %i.a = icmp eq ptr %.0.val, %.0.val1
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32368)
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !32365, !noalias !32368, !noundef !8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !32368, !noalias !32365, !noundef !8
  %i.f = icmp eq i64 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !32368, !noalias !32365, !nonnull !8, !noundef !8
  %i.j = load ptr, ptr %i.h, align 8, !alias.scope !32365, !noalias !32368, !nonnull !8, !noundef !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, i64 noundef %i.c), !noalias !32370
  br i1 %i.m, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val1, i64 32
  %i.p = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o)
  br i1 %i.p, label %bb.d, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.a, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val), "nonnull"(ptr %.8.val3) ]
  %i.q = icmp eq ptr %.8.val, %.8.val3
  br i1 %i.q, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.e

_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.c, %bb.b, %bb.k, %bb.j, %bb.i, %bb.h, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.g, %bb.f, %bb.d, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %.sroa.0.0 = phi i1 [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.g ], [ true, %bb.d ], [ %i.be, %bb.k ], [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.f ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32374)
  %i.r = getelementptr inbounds nuw i8, ptr %.8.val, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !32371, !noalias !32374, !nonnull !8, !noundef !8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.8.val3, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !32374, !noalias !32371, !nonnull !8, !noundef !8 ; 4 uses
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32379)
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !32376, !noalias !32381, !noundef !8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !32379, !noalias !32382, !noundef !8
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ad = load ptr, ptr %i.ab, align 8, !alias.scope !32379, !noalias !32382, !nonnull !8, !noundef !8
  %i.ae = load ptr, ptr %i.ac, align 8, !alias.scope !32376, !noalias !32381, !nonnull !8, !noundef !8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ah = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.af, ptr noundef nonnull %i.ag, i64 noundef %i.x), !noalias !32383
  br i1 %i.ah, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ak = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aj), !noalias !32384
  br i1 %i.ak, label %bb.h, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !32371, !noalias !32374, !noundef !8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.8.val3, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !32374, !noalias !32371, !noundef !8
  %i.ap = icmp eq i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.8.val3, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !32374, !noalias !32371, !nonnull !8, !noundef !8
  %i.as = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !32371, !noalias !32374, !nonnull !8, !noundef !8
  %i.au = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.at, ptr noundef nonnull %i.ar, i64 noundef %i.am), !noalias !32384
  br i1 %i.au, label %bb.j, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !32371, !noalias !32374, !noundef !8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.8.val3, i64 56
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !32374, !noalias !32371, !noundef !8
  %i.az = icmp eq i64 %i.aw, %i.ay
  br i1 %i.az, label %bb.k, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %.8.val3, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !32374, !noalias !32371, !nonnull !8, !noundef !8
  %i.bc = getelementptr inbounds nuw i8, ptr %.8.val, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !32371, !noalias !32374, !nonnull !8, !noundef !8
  %i.be = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.bb, i64 noundef %i.aw), !noalias !32384
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1R_NtCsjhHCjzi9uUI_17datafusion_common6configNtB6_19TableParquetOptionsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(688) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.06.i = alloca [120 x i8], align 8        ; 7 uses
  %.sroa.0.i = alloca [96 x i8], align 8          ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [128 x i8], align 8               ; 8 uses
  %i.n = alloca [104 x i8], align 8               ; 7 uses
  %i.o = alloca [48 x i8], align 8                ; 4 uses
  %i.p = alloca [48 x i8], align 8                ; 4 uses
  %i.q = alloca [304 x i8], align 8               ; 7 uses
  %i.r = alloca [48 x i8], align 8                ; 5 uses
  %i.s = alloca [48 x i8], align 8                ; 5 uses
  %i.t = alloca [288 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call fastcc void @_RNvXs13_NtCsjhHCjzi9uUI_17datafusion_common6configNtB6_14ParquetOptionsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(288) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(288) %1) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 592
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.u)
          to label %bb.c unwind label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %i.v, %bb.b ], [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6config14ParquetOptionsECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(288) %i.t) #42
          to label %bb.aj unwind label %bb.ai

bb.b:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 640
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBK_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtB1r_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.w)
          to label %bb.e unwind label %bb.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.d
  %.pn = phi { ptr, i32 } [ %i.x, %bb.d ], [ %eh.lpad-body, %.body ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ai

bb.d:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32385)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !32388
  %i.z = load i64, ptr %i.y, align 8, !range !65, !alias.scope !32385, !noalias !32390, !noundef !8
  %.not.i = icmp eq i64 %i.z, -9223372036854775808
  br i1 %.not.i, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32391)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !32394
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(304) %i.y)
          to label %.noexc unwind label %bb.ag

.noexc:                                           ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !32394
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !32394
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 336
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aa)
          to label %bb.h unwind label %bb.g, !noalias !32396

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.i, %bb.g
  %.pn.i.i = phi { ptr, i32 } [ %i.ab, %bb.g ], [ %i.ad, %bb.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #42
          to label %.body unwind label %bb.j, !noalias !32396

bb.g:                                             ; preds = %.noexc
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.h:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !32394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !32394
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !32394
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 312
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac)
          to label %_RNvXs2e_NtCsjhHCjzi9uUI_17datafusion_common6configNtB6_30ConfigFileDecryptionPropertiesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i unwind label %bb.i, !noalias !32396

bb.i:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.j, !noalias !32396

bb.j:                                             ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !32396
  unreachable

_RNvXs2e_NtCsjhHCjzi9uUI_17datafusion_common6configNtB6_30ConfigFileDecryptionPropertiesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.ag = load i8, ptr %i.af, align 8, !range !89, !alias.scope !32397, !noalias !32396, !noundef !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !32398
  %.sroa.0.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.48..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !noalias !32398
  %.sroa.0.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 24
end_hunk_9
begin_hunk_10_@_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !33079, !noalias !33076, !nonnull !8, !noundef !8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !33076, !noalias !33079, !nonnull !8, !noundef !8
  %i.bk = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.bj, ptr noundef nonnull %i.bh, i64 noundef %i.bc), !noalias !33089
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1u_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4LikeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i8, ptr %i.a, align 4, !range !89, !noundef !8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i8, ptr %i.c, align 4, !range !89, !noundef !8
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.g = load i8, ptr %i.f, align 1, !range !89, !noundef !8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.i = load i8, ptr %i.h, align 1, !range !89, !noundef !8
  %i.j = icmp eq i8 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.l = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.m = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.k, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.l) #44
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !8, !noundef !8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !8, !noundef !8
  %i.r = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.o, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.q) #44
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i32, ptr %i.s, align 8, !range !28367, !noundef !8 ; 2 uses
  %.not = icmp eq i32 %i.t, 1114112
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i32, ptr %i.u, align 8, !range !28367, !noundef !8 ; 2 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.c, %bb.d, %bb.a, %bb.b, %bb.h
  %.sroa.0.0.shrunk = phi i1 [ %i.w, %bb.g ], [ false, %bb.c ], [ %i.x, %bb.h ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.d ]
  ret i1 %.sroa.0.0.shrunk

bb.g:                                             ; preds = %bb.e
  %i.w = icmp eq i32 %i.t, %i.v
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  %i.x = icmp eq i32 %i.v, 1114112
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs22_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_7TryCastNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8
  %i.e = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.b, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.d) #44
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #44
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs25_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !89, !noundef !8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !89, !noundef !8
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = tail call fastcc noundef zeroext i1 @_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.i, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.j) #44
  br i1 %i.k, label %bb.d, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !8, !noundef !8 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !8, !noundef !8 ; 6 uses
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.e

_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.g, %bb.f, %bb.d, %bb.c, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.a ], [ %i.bd, %bb.k ], [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.f ], [ false, %bb.g ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33090)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33093)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !33090, !noalias !33093, !nonnull !8, !noundef !8 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !33093, !noalias !33090, !nonnull !8, !noundef !8 ; 4 uses
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33098)
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !33095, !noalias !33100, !noundef !8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !33098, !noalias !33101, !noundef !8
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %bb.g, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ac = load ptr, ptr %i.aa, align 8, !alias.scope !33098, !noalias !33101, !nonnull !8, !noundef !8
  %i.ad = load ptr, ptr %i.ab, align 8, !alias.scope !33095, !noalias !33100, !nonnull !8, !noundef !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.af, i64 noundef %i.w), !noalias !33102
  br i1 %i.ag, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.aj = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ai), !noalias !33103
  br i1 %i.aj, label %bb.h, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !33090, !noalias !33093, !noundef !8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !33093, !noalias !33090, !noundef !8
  %i.ao = icmp eq i64 %i.al, %i.an
  br i1 %i.ao, label %bb.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !33093, !noalias !33090, !nonnull !8, !noundef !8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !33090, !noalias !33093, !nonnull !8, !noundef !8
  %i.at = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.as, ptr noundef nonnull %i.aq, i64 noundef %i.al), !noalias !33103
  br i1 %i.at, label %bb.j, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !33090, !noalias !33093, !noundef !8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !33093, !noalias !33090, !noundef !8
  %i.ay = icmp eq i64 %i.av, %i.ax
  br i1 %i.ay, label %bb.k, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !33093, !noalias !33090, !nonnull !8, !noundef !8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !33090, !noalias !33093, !nonnull !8, !noundef !8
  %i.bd = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.ba, i64 noundef %i.av), !noalias !33103
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2B_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_14WindowFunctionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(288) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(288) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.val = load i64, ptr %i.a, align 16, !range !64, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.val1 = load ptr, ptr %i.c, align 8            ; 4 uses
  %.val2 = load i64, ptr %i.b, align 16, !range !64, !noundef !8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 280
  %.val3 = load ptr, ptr %i.d, align 8            ; 4 uses
  %i.e = icmp eq i64 %.val, %.val2
  br i1 %i.e, label %bb.b, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw i64 %.val to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1), "nonnull"(ptr %.val3) ]
  %i.g = icmp eq ptr %.val1, %.val3               ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.b
  br i1 %i.g, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.j = tail call noundef zeroext i1 @_RNvXNtCs8VI8w5SIoU4_15datafusion_expr4udafNtB2_12AggregateUDFNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
  br i1 %i.j, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.m = tail call noundef zeroext i1 @_RNvXs_NtCs8VI8w5SIoU4_15datafusion_expr4udwfNtB4_9WindowUDFNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l)
  br i1 %i.m, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.c, %bb.d, %bb.e, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33107)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.o = load i8, ptr %i.n, align 16, !range !89, !alias.scope !33104, !noalias !33107, !noundef !8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.q = load i8, ptr %i.p, align 16, !range !89, !alias.scope !33107, !noalias !33104, !noundef !8
  %i.r = icmp eq i8 %i.o, %i.q
  br i1 %i.r, label %bb.f, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = load i64, ptr %i.s, align 16, !alias.scope !33104, !noalias !33107, !noundef !8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.v = load i64, ptr %i.u, align 16, !alias.scope !33107, !noalias !33104, !noundef !8
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.g, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !33107, !noalias !33104, !nonnull !8, !noundef !8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !33104, !noalias !33107, !nonnull !8, !noundef !8
  %i.ab = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.y, i64 noundef %i.t), !noalias !33109, !inline_history !33110
  br i1 %i.ab, label %bb.h, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !33104, !noalias !33107, !noundef !8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !33107, !noalias !33104, !noundef !8
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.i, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ai = load ptr, ptr %i.ah, align 16, !alias.scope !33107, !noalias !33104, !nonnull !8, !noundef !8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ak = load ptr, ptr %i.aj, align 16, !alias.scope !33104, !noalias !33107, !nonnull !8, !noundef !8
  %i.al = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ai, i64 noundef %i.ad), !noalias !33109, !inline_history !33110
  br i1 %i.al, label %bb.j, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.an = load i64, ptr %i.am, align 16, !alias.scope !33104, !noalias !33107, !noundef !8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ap = load i64, ptr %i.ao, align 16, !alias.scope !33107, !noalias !33104, !noundef !8
  %i.aq = icmp eq i64 %i.an, %i.ap
  br i1 %i.aq, label %bb.k, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !33107, !noalias !33104, !nonnull !8, !noundef !8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !33104, !noalias !33107, !nonnull !8, !noundef !8
  %i.av = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.au, ptr noundef nonnull %i.as, i64 noundef %i.an), !noalias !33109, !inline_history !33110
  br i1 %i.av, label %bb.l, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.aw = tail call fastcc noundef zeroext i1 @_RNvXs9_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_11WindowFrameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(272) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(272) %1) #44, !inline_history !33110
  br i1 %i.aw, label %bb.m, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !33104, !noalias !33107, !align !473, !noundef !8 ; 2 uses
  %.not.i = icmp eq ptr %i.ay, null
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !33107, !noalias !33104, !align !473, !noundef !8 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null                 ; 2 uses
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.bb, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.p

bb.o:                                             ; preds = %bb.m
  br i1 %i.bb, label %bb.q, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.n
  %i.bc = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ay, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ba) #44, !inline_history !33110
  br i1 %i.bc, label %bb.q, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 257
  %i.be = load i8, ptr %i.bd, align 1, !range !466, !alias.scope !33104, !noalias !33107, !noundef !8 ; 2 uses
  %.not5.i = icmp eq i8 %i.be, 2
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 257
  %i.bg = load i8, ptr %i.bf, align 1, !range !466, !alias.scope !33107, !noalias !33104, !noundef !8 ; 2 uses
  br i1 %.not5.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = icmp eq i8 %i.be, %i.bg
  br label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.q
  %i.bi = icmp eq i8 %i.bg, 2
  br label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.r, %bb.a, %bb.s, %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, %bb.p, %bb.e, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %.sroa.0.0 = phi i1 [ false, %bb.e ], [ false, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.p ], [ false, %bb.a ], [ false, %bb.g ], [ %i.bi, %bb.s ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.f ], [ false, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread ], [ false, %bb.o ], [ false, %bb.k ], [ false, %bb.i ], [ %i.bh, %bb.r ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs2F_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6SelectNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(2432) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2432) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [328 x i8], align 8               ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0.i = alloca [56 x i8], align 8          ; 5 uses
  %.sroa.552 = alloca [320 x i8], align 8         ; 5 uses
  %.sroa.5.i = alloca [320 x i8], align 8         ; 4 uses
  %.sroa.458 = alloca [344 x i8], align 8         ; 3 uses
  %i.f = alloca [328 x i8], align 8               ; 4 uses
  %i.g = alloca [328 x i8], align 8               ; 4 uses
  %i.h = alloca [328 x i8], align 8               ; 4 uses
  %i.i = alloca [328 x i8], align 8               ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [64 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [328 x i8], align 8               ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [328 x i8], align 8               ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [48 x i8], align 8                ; 8 uses
  %i.t = alloca [328 x i8], align 8               ; 7 uses
  %i.u = alloca [328 x i8], align 8               ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 5 uses
  %i.x = alloca [32 x i8], align 8                ; 6 uses
  %i.y = alloca [64 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 5 uses
  %i.aa = alloca [336 x i8], align 8              ; 9 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [88 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2336
  call fastcc void @_RNvXs7_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers14attached_tokenNtB5_13AttachedTokenNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(88) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ad) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 2248 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !range !69, !noundef !8 ; 2 uses
  %.not = icmp eq i64 %i.af, -9223372036854775807
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %.not.i = icmp eq i64 %i.af, -9223372036854775808
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae)
          to label %_RNvXsdB_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit unwind label %bb.h

bb.d:                                             ; preds = %bb.b
  store i64 -9223372036854775808, ptr %i.l, align 8, !alias.scope !33111, !noalias !33114
  br label %_RNvXsdB_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.e:                                             ; preds = %bb.a
  store i64 -9223372036854775807, ptr %i.ab, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvXsdB_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 1664 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !range !5484, !noundef !8 ; 3 uses
  %.not2 = icmp eq i64 %i.ah, 71
  br i1 %.not2, label %bb.m, label %bb.i

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query3TopEECs14kWLkQVSKO_14deltalake_core.exit, %bb.h
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query3TopEECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.ai, %bb.h ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers14attached_token13AttachedTokenECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ac) #42
          to label %bb.ck unwind label %bb.cj

bb.h:                                             ; preds = %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup
end_hunk_10
begin_hunk_11_@_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
  %i.h = add nsw i64 %i.f, -11
  %i.i = icmp samesign ugt i64 %i.f, 10
  %i.j = select i1 %i.i, i64 %i.h, i64 20
  %i.k = icmp eq i64 %i.e, %i.j
  br i1 %i.k, label %.lr.ph, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

.lr.ph:                                           ; preds = %bb.a, %tailrecurse.backedge
  %i.l = phi i64 [ %i.fi, %tailrecurse.backedge ], [ %i.e, %bb.a ]
  %.tr1488 = phi ptr [ %.tr14.be, %tailrecurse.backedge ], [ %1, %bb.a ] ; 41 uses
  %.tr87 = phi ptr [ %.tr.be, %tailrecurse.backedge ], [ %0, %bb.a ] ; 41 uses
  switch i64 %i.l, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.t
    i64 9, label %bb.u
    i64 10, label %bb.ad
    i64 11, label %bb.ae
    i64 12, label %bb.af
    i64 13, label %bb.ao
    i64 14, label %bb.ap
    i64 15, label %bb.aq
    i64 16, label %bb.az
    i64 17, label %bb.ba
    i64 18, label %bb.bb
    i64 19, label %bb.bc
    i64 20, label %bb.bd
    i64 21, label %bb.be
    i64 22, label %bb.bf
    i64 23, label %bb.bg
    i64 24, label %bb.bh
  ]

_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %tailrecurse.backedge, %bb.am, %bb.ai, %bb.ag, %bb.ah, %bb.ak, %bb.al, %bb.an, %bb.bh, %bb.bi, %bb.bj, %bb.bl, %bb.bm, %bb.a, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.as, %bb.ar, %bb.aq, %bb.ac, %bb.ab, %bb.aa, %bb.z, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i10, %bb.y, %bb.x, %bb.v, %bb.u, %bb.s, %bb.r, %bb.q, %bb.p, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i, %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ap, %bb.ao, %bb.ae, %bb.ad, %bb.t, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.shrunk = phi i1 [ %i.o, %bb.c ], [ %i.r, %bb.d ], [ %i.u, %bb.e ], [ %i.x, %bb.f ], [ %i.aa, %bb.g ], [ %i.ad, %bb.h ], [ %i.ag, %bb.i ], [ false, %bb.aw ], [ %i.cm, %bb.t ], [ false, %bb.o ], [ %i.ej, %bb.ad ], [ %i.em, %bb.ae ], [ false, %bb.y ], [ %i.fr, %bb.ao ], [ %i.fu, %bb.ap ], [ false, %bb.au ], [ %i.hm, %bb.az ], [ %i.hp, %bb.ba ], [ %i.hs, %bb.bb ], [ %i.hv, %bb.bc ], [ %i.hw, %bb.bd ], [ %i.hz, %bb.be ], [ %i.ie, %bb.bf ], [ %i.ih, %bb.bg ], [ true, %bb.ax ], [ false, %bb.k ], [ true, %bb.l ], [ false, %bb.j ], [ %i.cj, %bb.s ], [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.r ], [ false, %bb.n ], [ false, %bb.u ], [ true, %bb.v ], [ %i.eg, %bb.ac ], [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i10 ], [ false, %bb.z ], [ false, %bb.aa ], [ false, %bb.ab ], [ false, %bb.x ], [ false, %bb.as ], [ %i.hj, %bb.ay ], [ false, %bb.av ], [ false, %bb.ar ], [ false, %bb.aq ], [ false, %bb.a ], [ true, %bb.an ], [ false, %bb.bh ], [ false, %bb.bj ], [ false, %bb.bi ], [ false, %bb.am ], [ false, %bb.al ], [ false, %bb.ak ], [ false, %bb.ai ], [ false, %bb.ah ], [ false, %bb.bl ], [ false, %bb.ag ], [ false, %tailrecurse.backedge ], [ true, %bb.bm ]
  ret i1 %.sroa.0.0.shrunk

bb.b:                                             ; preds = %.lr.ph
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.o = tail call fastcc noundef zeroext i1 @_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n) #44
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.tr87, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %.tr1488, i64 16
  %i.r = tail call fastcc noundef zeroext i1 @_RNvXs1m_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.p, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.q) #44
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.u = tail call fastcc noundef zeroext i1 @_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.t) #44
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.x = tail call fastcc noundef zeroext i1 @_RNvXs2z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.w) #44
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.aa = tail call fastcc noundef zeroext i1 @_RNvXs2F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z) #44
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr87, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr1488, i64 16
  %i.ad = tail call fastcc noundef zeroext i1 @_RNvXs2M_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(176) %i.ab, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(176) %i.ac) #44
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.ag = tail call fastcc noundef zeroext i1 @_RNvXs1A_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.af) #44
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34497)
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr87, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !34494, !noalias !34497, !noundef !8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.tr1488, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !34497, !noalias !34494, !noundef !8
  %i.al = icmp eq i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.k, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.tr1488, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !34497, !noalias !34494, !nonnull !8, !noundef !8
  %i.ao = getelementptr inbounds nuw i8, ptr %.tr87, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !34494, !noalias !34497, !nonnull !8, !noundef !8
  %i.aq = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.an, i64 noundef %i.ai), !noalias !34499
  br i1 %i.aq, label %bb.l, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %.tr87, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !34494, !noalias !34497, !nonnull !8, !noundef !8 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.tr1488, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !34497, !noalias !34494, !nonnull !8, !noundef !8 ; 6 uses
  %i.av = icmp eq ptr %i.as, %i.au
  br i1 %i.av, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34503)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !34500, !noalias !34505, !nonnull !8, !noundef !8 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !34503, !noalias !34506, !nonnull !8, !noundef !8 ; 4 uses
  %i.ba = icmp eq ptr %i.ax, %i.az
  br i1 %i.ba, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34510)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !34507, !noalias !34512, !noundef !8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !34510, !noalias !34513, !noundef !8
  %i.bf = icmp eq i64 %i.bc, %i.be
  br i1 %i.bf, label %bb.o, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bi = load ptr, ptr %i.bg, align 8, !alias.scope !34510, !noalias !34513, !nonnull !8, !noundef !8
  %i.bj = load ptr, ptr %i.bh, align 8, !alias.scope !34507, !noalias !34512, !nonnull !8, !noundef !8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bm = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bl, i64 noundef %i.bc), !noalias !34514
  br i1 %i.bm, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bp = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bo), !noalias !34515
  br i1 %i.bp, label %bb.p, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i, %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !34500, !noalias !34505, !noundef !8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !34503, !noalias !34506, !noundef !8
  %i.bu = icmp eq i64 %i.br, %i.bt
  br i1 %i.bu, label %bb.q, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !34503, !noalias !34506, !nonnull !8, !noundef !8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !34500, !noalias !34505, !nonnull !8, !noundef !8
  %i.bz = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.by, ptr noundef nonnull %i.bw, i64 noundef %i.br), !noalias !34515
  br i1 %i.bz, label %bb.r, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !34500, !noalias !34505, !noundef !8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !34503, !noalias !34506, !noundef !8
  %i.ce = icmp eq i64 %i.cb, %i.cd
  br i1 %i.ce, label %bb.s, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.r
  %i.cf = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !34503, !noalias !34506, !nonnull !8, !noundef !8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !34500, !noalias !34505, !nonnull !8, !noundef !8
  %i.cj = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.ci, ptr noundef nonnull %i.cg, i64 noundef %i.cb), !noalias !34515
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %.lr.ph
  %i.ck = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.cm = tail call noundef zeroext i1 @_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_9TableScanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ck, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.cl)
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %.lr.ph
  %i.cn = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %.val = load ptr, ptr %i.cn, align 8            ; 7 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.tr87, i64 16
  %.val2 = load i8, ptr %i.cp, align 8, !range !89, !noundef !8
  %.val3 = load ptr, ptr %i.co, align 8           ; 7 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.tr1488, i64 16
  %.val4 = load i8, ptr %i.cq, align 8, !range !89, !noundef !8
  %i.cr = icmp eq i8 %.val2, %.val4
  br i1 %i.cr, label %bb.v, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val), "nonnull"(ptr %.val3) ]
  %i.cs = icmp eq ptr %.val, %.val3
  br i1 %i.cs, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34519)
  %i.ct = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.cu = load ptr, ptr %i.ct, align 8, !alias.scope !34516, !noalias !34519, !nonnull !8, !noundef !8 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.val3, i64 64
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !34519, !noalias !34516, !nonnull !8, !noundef !8 ; 4 uses
  %i.cx = icmp eq ptr %i.cu, %i.cw
  br i1 %i.cx, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34524)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !34521, !noalias !34526, !noundef !8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !34524, !noalias !34527, !noundef !8
  %i.dc = icmp eq i64 %i.cz, %i.db
  br i1 %i.dc, label %bb.y, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.df = load ptr, ptr %i.dd, align 8, !alias.scope !34524, !noalias !34527, !nonnull !8, !noundef !8
  %i.dg = load ptr, ptr %i.de, align 8, !alias.scope !34521, !noalias !34526, !nonnull !8, !noundef !8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dj = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.dh, ptr noundef nonnull %i.di, i64 noundef %i.cz), !noalias !34528
  br i1 %i.dj, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i10, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i10: ; preds = %bb.y
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.dm = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dl), !noalias !34529
  br i1 %i.dm, label %bb.z, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i10, %bb.w
  %i.dn = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !34516, !noalias !34519, !noundef !8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.val3, i64 32
  %i.dq = load i64, ptr %i.dp, align 8, !alias.scope !34519, !noalias !34516, !noundef !8
  %i.dr = icmp eq i64 %i.do, %i.dq
  br i1 %i.dr, label %bb.aa, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aa:                                            ; preds = %bb.z
  %i.ds = getelementptr inbounds nuw i8, ptr %.val3, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !alias.scope !34519, !noalias !34516, !nonnull !8, !noundef !8
  %i.du = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !34516, !noalias !34519, !nonnull !8, !noundef !8
  %i.dw = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.dv, ptr noundef nonnull %i.dt, i64 noundef %i.do), !noalias !34529
  br i1 %i.dw, label %bb.ab, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %bb.aa
  %i.dx = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !34516, !noalias !34519, !noundef !8 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.val3, i64 56
  %i.ea = load i64, ptr %i.dz, align 8, !alias.scope !34519, !noalias !34516, !noundef !8
  %i.eb = icmp eq i64 %i.dy, %i.ea
  br i1 %i.eb, label %bb.ac, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ec = getelementptr inbounds nuw i8, ptr %.val3, i64 48
  %i.ed = load ptr, ptr %i.ec, align 8, !alias.scope !34519, !noalias !34516, !nonnull !8, !noundef !8
  %i.ee = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8, !alias.scope !34516, !noalias !34519, !nonnull !8, !noundef !8
  %i.eg = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.ef, ptr noundef nonnull %i.ed, i64 noundef %i.dy), !noalias !34529
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ad:                                            ; preds = %.lr.ph
  %i.eh = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.ej = tail call fastcc noundef zeroext i1 @_RNvXs2R_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.eh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ei) #44
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ae:                                            ; preds = %.lr.ph
  %i.ek = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.em = tail call fastcc noundef zeroext i1 @_RNvXs1g_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ek, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.el) #44
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.af:                                            ; preds = %.lr.ph
  %i.en = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34530)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34533)
  %i.ep = getelementptr inbounds nuw i8, ptr %.tr87, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !34530, !noalias !34533, !align !473, !noundef !8 ; 2 uses
  %.not.i = icmp eq ptr %i.eq, null
  %i.er = getelementptr inbounds nuw i8, ptr %.tr1488, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !alias.scope !34533, !noalias !34530, !align !473, !noundef !8 ; 2 uses
  %i.et = icmp eq ptr %i.es, null                 ; 2 uses
  br i1 %.not.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  br i1 %i.et, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ai

bb.ah:                                            ; preds = %bb.af
  br i1 %i.et, label %bb.aj, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ai:                                            ; preds = %bb.ag
  %i.eu = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.eq, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.es) #44, !noalias !34535, !inline_history !34536
  br i1 %i.eu, label %bb.aj, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ev = getelementptr inbounds nuw i8, ptr %.tr87, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !alias.scope !34530, !noalias !34533, !align !473, !noundef !8 ; 2 uses
  %.not5.i = icmp eq ptr %i.ew, null
  %i.ex = getelementptr inbounds nuw i8, ptr %.tr1488, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !alias.scope !34533, !noalias !34530, !align !473, !noundef !8 ; 2 uses
  %i.ez = icmp eq ptr %i.ey, null                 ; 2 uses
  br i1 %.not5.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.ez, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.am

bb.al:                                            ; preds = %bb.aj
  br i1 %i.ez, label %bb.an, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.am:                                            ; preds = %bb.ak
  %i.fa = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ew, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ey) #44, !noalias !34535, !inline_history !34536
  br i1 %i.fa, label %bb.an, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.fb = load ptr, ptr %i.en, align 8, !alias.scope !34530, !noalias !34533, !nonnull !8, !noundef !8 ; 2 uses
  %i.fc = load ptr, ptr %i.eo, align 8, !alias.scope !34533, !noalias !34530, !nonnull !8, !noundef !8 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.bm, %bb.an
  %.pn = phi ptr [ %i.fb, %bb.an ], [ %i.jg, %bb.bm ]
  %.pn112 = phi ptr [ %i.fc, %bb.an ], [ %i.ji, %bb.bm ]
  %.tr14.be = getelementptr inbounds nuw i8, ptr %.pn112, i64 16 ; 2 uses
  %.tr.be = getelementptr inbounds nuw i8, ptr %.pn, i64 16 ; 2 uses
  %i.fe = load i64, ptr %.tr.be, align 16, !range !8468, !noundef !8 ; 3 uses
  %i.ff = icmp ne i64 %i.fe, 31
  tail call void @llvm.assume(i1 %i.ff)
  %i.fg = add nsw i64 %i.fe, -11
  %i.fh = icmp samesign ugt i64 %i.fe, 10
  %i.fi = select i1 %i.fh, i64 %i.fg, i64 20      ; 2 uses
  %i.fj = load i64, ptr %.tr14.be, align 16, !range !8468, !noundef !8 ; 3 uses
  %i.fk = icmp ne i64 %i.fj, 31
  tail call void @llvm.assume(i1 %i.fk)
  %i.fl = add nsw i64 %i.fj, -11
  %i.fm = icmp samesign ugt i64 %i.fj, 10
  %i.fn = select i1 %i.fm, i64 %i.fl, i64 20
  %i.fo = icmp eq i64 %i.fi, %i.fn
  br i1 %i.fo, label %.lr.ph, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ao:                                            ; preds = %.lr.ph
  %i.fp = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.fr = tail call fastcc noundef zeroext i1 @_RNvXs2_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fq) #44
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ap:                                            ; preds = %.lr.ph
  %i.fs = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.fu = tail call fastcc noundef zeroext i1 @_RNvXs14_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ft) #44
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aq:                                            ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34540)
  %i.fv = getelementptr inbounds nuw i8, ptr %.tr87, i64 48
  %i.fw = load i8, ptr %i.fv, align 8, !range !89, !alias.scope !34537, !noalias !34540, !noundef !8
  %i.fx = getelementptr inbounds nuw i8, ptr %.tr1488, i64 48
  %i.fy = load i8, ptr %i.fx, align 8, !range !89, !alias.scope !34540, !noalias !34537, !noundef !8
  %i.fz = icmp eq i8 %i.fw, %i.fy
  br i1 %i.fz, label %bb.ar, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ar:                                            ; preds = %bb.aq
  %i.ga = getelementptr inbounds nuw i8, ptr %.tr87, i64 49
  %i.gb = load i8, ptr %i.ga, align 1, !range !89, !alias.scope !34537, !noalias !34540, !noundef !8
  %i.gc = getelementptr inbounds nuw i8, ptr %.tr1488, i64 49
  %i.gd = load i8, ptr %i.gc, align 1, !range !89, !alias.scope !34540, !noalias !34537, !noundef !8
  %i.ge = icmp eq i8 %i.gb, %i.gd
  br i1 %i.ge, label %bb.as, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.as:                                            ; preds = %bb.ar
  %i.gf = getelementptr inbounds nuw i8, ptr %.tr87, i64 50
  %i.gg = load i8, ptr %i.gf, align 2, !range !3878, !alias.scope !34537, !noalias !34540, !noundef !8
  %i.gh = getelementptr inbounds nuw i8, ptr %.tr1488, i64 50
  %i.gi = load i8, ptr %i.gh, align 2, !range !3878, !alias.scope !34540, !noalias !34537, !noundef !8
  %i.gj = icmp eq i8 %i.gg, %i.gi
  br i1 %i.gj, label %bb.at, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.at:                                            ; preds = %bb.as
  %i.gk = getelementptr inbounds nuw i8, ptr %.tr87, i64 32
  %i.gl = load ptr, ptr %i.gk, align 8, !alias.scope !34537, !noalias !34540, !nonnull !8, !noundef !8 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.tr1488, i64 32
  %i.gn = load ptr, ptr %i.gm, align 8, !alias.scope !34540, !noalias !34537, !nonnull !8, !noundef !8 ; 2 uses
  %i.go = icmp eq ptr %i.gl, %i.gn
  br i1 %i.go, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
end_hunk_11
