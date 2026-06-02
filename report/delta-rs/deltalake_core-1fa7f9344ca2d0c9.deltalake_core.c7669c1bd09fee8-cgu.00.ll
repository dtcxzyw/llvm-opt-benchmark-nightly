inline.NumInlined: 17049
inline.NumDeleted: 6599
begin_hunk_0_@_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEENtNtBK_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core:bb.a

_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i, %bb.d
  %i.av = getelementptr inbounds nuw [56 x i8], ptr %i.m, i64 %.sroa.7.036.i ; 2 uses
  store i64 %i.u, ptr %i.av, align 8, !noalias !39759
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.422.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.515.i, i64 48, i1 false), !noalias !39759
  %i.aw = icmp eq i64 %i.q, 0
  br i1 %i.aw, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  store i64 %i.j, ptr %0, align 8, !noalias !39756
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !39756
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !39756
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.515.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCslw7hBPHc6qc_14regex_automata4util10primitives11NonMaxUsizeEENtNtBK_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8
  %i.e = load i64, ptr %i.b, align 8, !noundef !8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39777)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39780
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !noalias !39780
  %i.f = load i64, ptr %i.a, align 8, !range !79, !noalias !39780, !noundef !8
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !107, !noalias !39780, !noundef !8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !39780
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27, !noalias !39780
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !39780, !nonnull !8, !noundef !8 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39780
  store i64 %i.i, ptr %0, align 8, !alias.scope !39777, !noalias !39782
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !alias.scope !39777, !noalias !39782
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8, !alias.scope !39777, !noalias !39782
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_RINvXs_NvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCslw7hBPHc6qc_14regex_automata4util10primitives11NonMaxUsizeENtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.p = shl nuw nsw i64 %i.e, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull readonly align 8 %i.d, i64 %i.p, i1 false), !noalias !39777
  store i64 %i.e, ptr %i.o, align 8, !alias.scope !39777, !noalias !39782
  br label %_RINvXs_NvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCslw7hBPHc6qc_14regex_automata4util10primitives11NonMaxUsizeENtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs_NvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCslw7hBPHc6qc_14regex_automata4util10primitives11NonMaxUsizeENtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtB7_11collections9vec_deque8VecDequeTNtNtB7_6string6StringjEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !39783
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39783
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 288230376151711744) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32), !noalias !39783
  %i.h = load i64, ptr %i.a, align 8, !range !79, !noalias !39783, !noundef !8
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !107, !noalias !39783, !noundef !8 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !39783
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #27, !noalias !39783
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !39783, !nonnull !8, !noundef !8 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39783
  store i64 %i.k, ptr %i.c, align 8, !noalias !39783
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !39783
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtNtB8_11collections9vec_deque8VecDequeTNtNtB8_6string6StringjEENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.d
  %.sroa.10.023.i = phi i64 [ %i.t, %bb.d ], [ %i.k, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.sroa.012.022.i = phi ptr [ %i.w, %bb.d ], [ %i.f, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i ] ; 3 uses
  %.sroa.7.021.i = phi i64 [ %i.v, %bb.d ], [ 0, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i ] ; 3 uses
  %i.t = add i64 %.sroa.10.023.i, -1              ; 2 uses
  %i.u = icmp eq ptr %.sroa.012.022.i, %i.r
  br i1 %i.u, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtNtB8_11collections9vec_deque8VecDequeTNtNtB8_6string6StringjEENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB2_8VecDequeTNtNtB6_6string6StringjEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.012.022.i)
          to label %bb.d unwind label %bb.f, !noalias !39787

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i64 %.sroa.7.021.i, 1
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i, i64 32
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.7.021.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !39787
  %i.y = icmp eq i64 %i.t, 0
  br i1 %i.y, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtNtB8_11collections9vec_deque8VecDequeTNtNtB8_6string6StringjEENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

bb.e:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !39787
  unreachable

bb.f:                                             ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.021.i, ptr %i.q, align 8, !noalias !39783
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtBL_11collections9vec_deque8VecDequeTNtNtBL_6string6StringjEEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.c) #29
          to label %bb.g unwind label %bb.e, !noalias !39787

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtNtB8_11collections9vec_deque8VecDequeTNtNtB8_6string6StringjEENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph.i, %bb.d, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !39783
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !39788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !39783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyEENtNtBM_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8 ; 5 uses
  %i.e = load i64, ptr %i.b, align 8, !noundef !8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39789)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39792
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 576460752303423488) %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !39792
  %i.f = load i64, ptr %i.a, align 8, !range !79, !noalias !39792, !noundef !8
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !107, !noalias !39792, !noundef !8 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !39792
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27, !noalias !39792
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !39792, !nonnull !8, !noundef !8 ; 4 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39792
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.e
  %i.o = icmp eq i64 %i.i, 0
  br i1 %i.o, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.p = and i64 %i.e, 1152921504606846975
  %i.q = add i64 %i.i, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.q) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %umin, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader6, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %umin, 1152921504606846974     ; 4 uses
  %i.r = sub i64 %i.i, %n.vec
  %i.s = shl nuw i64 %n.vec, 4
  %i.t = getelementptr i8, ptr %i.d, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.u = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.u
  %i.v = getelementptr i8, ptr %i.d, i64 %i.u
  %next.gep2 = getelementptr i8, ptr %i.v, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8
  %wide.load3 = load <2 x i64>, ptr %next.gep2, align 8
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %index
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %index
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <2 x i64> %wide.load, ptr %i.w, align 8
  store <2 x i64> %wide.load3, ptr %i.y, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %.lr.ph.i.preheader6, label %vector.body, !llvm.loop !39794

.lr.ph.i.preheader6:                              ; preds = %vector.body, %.lr.ph.i.preheader
  %.sroa.10.023.i.ph = phi i64 [ %i.i, %.lr.ph.i.preheader ], [ %i.r, %vector.body ]
  %.sroa.014.022.i.ph = phi ptr [ %i.d, %.lr.ph.i.preheader ], [ %i.t, %vector.body ]
  %.sroa.7.021.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader6, %bb.c
  %.sroa.10.023.i = phi i64 [ %i.ab, %bb.c ], [ %.sroa.10.023.i.ph, %.lr.ph.i.preheader6 ]
  %.sroa.014.022.i = phi ptr [ %i.ad, %bb.c ], [ %.sroa.014.022.i.ph, %.lr.ph.i.preheader6 ] ; 3 uses
  %.sroa.7.021.i = phi i64 [ %i.ac, %bb.c ], [ %.sroa.7.021.i.ph, %.lr.ph.i.preheader6 ] ; 2 uses
  %i.aa = icmp eq ptr %.sroa.014.022.i, %i.n
  br i1 %i.aa, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ab = add i64 %.sroa.10.023.i, -1             ; 2 uses
  %i.ac = add nuw nsw i64 %.sroa.7.021.i, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.014.022.i, i64 16
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.7.021.i
  %i.af = load <2 x i64>, ptr %.sroa.014.022.i, align 8, !alias.scope !39789, !noalias !39795
  store <2 x i64> %i.af, ptr %i.ae, align 8, !noalias !39792
  %i.ag = icmp eq i64 %i.ab, 0
  br i1 %i.ag, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i, !llvm.loop !39796

_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph.i, %bb.c, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  store i64 %i.i, ptr %0, align 8, !noalias !39789
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !39789
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !39789
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !39797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39797
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 384307168202282326) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !39797
  %i.h = load i64, ptr %i.a, align 8, !range !79, !noalias !39797, !noundef !8
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !107, !noalias !39797, !noundef !8 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !39797
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #27, !noalias !39797
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !39797, !nonnull !8, !noundef !8 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39797
  store i64 %i.k, ptr %i.c, align 8, !noalias !39797
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !39797
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.d
  %.sroa.10.023.i = phi i64 [ %i.t, %bb.d ], [ %i.k, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.sroa.012.022.i = phi ptr [ %i.w, %bb.d ], [ %i.f, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i ] ; 3 uses
  %.sroa.7.021.i = phi i64 [ %i.v, %bb.d ], [ 0, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i ] ; 3 uses
  %i.t = add i64 %.sroa.10.023.i, -1              ; 2 uses
  %i.u = icmp eq ptr %.sroa.012.022.i, %i.r
  br i1 %i.u, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.012.022.i)
          to label %bb.d unwind label %bb.f, !noalias !39801

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i64 %.sroa.7.021.i, 1
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i, i64 24
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.7.021.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !39801
  %i.y = icmp eq i64 %i.t, 0
  br i1 %i.y, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

bb.e:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !39801
  unreachable

bb.f:                                             ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.021.i, ptr %i.q, align 8, !noalias !39797
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.c) #29
          to label %bb.g unwind label %bb.e, !noalias !39801

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph.i, %bb.d, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !39797
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !39802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !39797
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs14kWLkQVSKO_14deltalake_core8protocol14MergePredicateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneBJ_(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.023.i = alloca [24 x i8], align 8        ; 4 uses
  %.sroa.525.i = alloca [16 x i8], align 8        ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.h = load i64, ptr %i.e, align 8, !noundef !8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39803)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !39806
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !39806
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 0, 192153584101141163) %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48), !noalias !39806
  %i.i = load i64, ptr %i.c, align 8, !range !79, !noalias !39806, !noundef !8
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !107, !noalias !39806, !noundef !8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !noalias !39806
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #27, !noalias !39806
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !noalias !39806, !nonnull !8, !noundef !8 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !39806
  store i64 %i.l, ptr %i.d, align 8, !noalias !39806
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !39806
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %i.h
  %i.t = icmp eq i64 %i.l, 0
  br i1 %i.t, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs14kWLkQVSKO_14deltalake_core8protocol14MergePredicateNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %.lr.ph.i
  %.sroa.10.038.i = phi i64 [ %i.l, %.lr.ph.i ], [ %i.u, %bb.i ]
  %.sroa.013.037.i = phi ptr [ %i.g, %.lr.ph.i ], [ %i.w, %bb.i ] ; 4 uses
  %.sroa.7.036.i = phi i64 [ 0, %.lr.ph.i ], [ %i.x, %bb.i ] ; 3 uses
  %i.u = add i64 %.sroa.10.038.i, -1              ; 2 uses
  %i.v = icmp eq ptr %.sroa.013.037.i, %i.s
  br i1 %i.v, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs14kWLkQVSKO_14deltalake_core8protocol14MergePredicateNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit, label %bb.d

.loopexit.i:                                      ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.013.037.i, i64 48
  %i.x = add nuw nsw i64 %.sroa.7.036.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39808)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !39811
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.013.037.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !39813

.noexc.i:                                         ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.037.i, i64 24 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !range !107, !alias.scope !39814, !noalias !39815, !noundef !8
  %.not.i.i = icmp eq i64 %i.z, -9223372036854775808
  br i1 %.not.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39811
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y)
          to label %bb.g unwind label %bb.f, !noalias !39815

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.k unwind label %bb.h, !noalias !39815

bb.g:                                             ; preds = %bb.e
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.a, align 8, !noalias !39811
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !39811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39811
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !39815
  unreachable

bb.i:                                             ; preds = %bb.g, %.noexc.i
  %.sroa.0.0.i12.i = phi i64 [ %.sroa.0.0.copyload1.i.i, %bb.g ], [ -9223372036854775808, %.noexc.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.023.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.023.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !39806
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.525.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.525.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, i64 16, i1 false), !noalias !39806
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!39594 = !{!39595}
!39595 = distinct !{!39595, !39593, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!39596 = !{!39597}
!39597 = distinct !{!39597, !39598, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 1"}
!39598 = distinct !{!39598, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core"}
!39599 = !{!39600, !39595}
!39600 = distinct !{!39600, !39598, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39601 = !{!39602}
!39602 = distinct !{!39602, !39603, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!39603 = distinct !{!39603, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!39604 = !{!39605}
!39605 = distinct !{!39605, !39603, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!39606 = !{!39607}
!39607 = distinct !{!39607, !39608, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 1"}
!39608 = distinct !{!39608, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core"}
!39609 = !{!39610, !39605}
!39610 = distinct !{!39610, !39608, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39611 = !{!39612}
!39612 = distinct !{!39612, !39613, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!39613 = distinct !{!39613, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!39614 = !{!39615}
!39615 = distinct !{!39615, !39613, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!39616 = !{!39617}
!39617 = distinct !{!39617, !39618, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 1"}
!39618 = distinct !{!39618, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core"}
!39619 = !{!39620, !39615}
!39620 = distinct !{!39620, !39618, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39621 = !{!39622}
!39622 = distinct !{!39622, !39623, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!39623 = distinct !{!39623, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!39624 = !{!39625}
!39625 = distinct !{!39625, !39623, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!39626 = !{!39627}
!39627 = distinct !{!39627, !39628, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 1"}
!39628 = distinct !{!39628, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core"}
!39629 = !{!39630, !39625}
!39630 = distinct !{!39630, !39628, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39631 = !{!39632}
!39632 = distinct !{!39632, !39633, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!39633 = distinct !{!39633, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!39634 = !{!39635}
!39635 = distinct !{!39635, !39633, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!39636 = !{!39635, !39632}
!39637 = !{!39638}
!39638 = distinct !{!39638, !39639, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 1"}
!39639 = distinct !{!39639, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core"}
!39640 = !{!39641}
!39641 = distinct !{!39641, !39639, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39642 = distinct !{ptr @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core, null}
!39643 = !{!39644}
!39644 = distinct !{!39644, !39645, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!39645 = distinct !{!39645, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!39646 = !{!39647}
!39647 = distinct !{!39647, !39645, !"_RNvXsaT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14JoinConstraintNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!39648 = !{!39649}
!39649 = distinct !{!39649, !39650, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 1"}
!39650 = distinct !{!39650, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core"}
!39651 = !{!39652, !39647}
!39652 = distinct !{!39652, !39650, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39653 = !{!39654, !39656}
!39654 = distinct !{!39654, !39655, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39655 = distinct !{!39655, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core"}
!39656 = distinct !{!39656, !39655, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39657 = distinct !{null}
!39658 = !{!39654}
!39659 = !{!39656}
!39660 = !{!39661, !39663}
!39661 = distinct !{!39661, !39662, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39662 = distinct !{!39662, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core"}
!39663 = distinct !{!39663, !39662, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39664 = distinct !{null}
!39665 = !{!39661}
!39666 = !{!39663}
!39667 = !{!39668, !39670}
!39668 = distinct !{!39668, !39669, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39669 = distinct !{!39669, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core"}
!39670 = distinct !{!39670, !39669, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39671 = !{!39668}
!39672 = !{!39670}
!39673 = !{!39674}
!39674 = distinct !{!39674, !39675, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39675 = distinct !{!39675, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core"}
!39676 = !{!39677, !39674}
!39677 = distinct !{!39677, !39675, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39678 = !{!39677}
!39679 = !{!39680}
!39680 = distinct !{!39680, !39681, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39681 = distinct !{!39681, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core"}
!39682 = !{!39683, !39680}
!39683 = distinct !{!39683, !39681, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39684 = !{!39683}
!39685 = !{!39686}
!39686 = distinct !{!39686, !39687, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs3cXYlxPhm1f_29datafusion_physical_optimizer9optimizer21PhysicalOptimizerRuleNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2o_4SendEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39687 = distinct !{!39687, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs3cXYlxPhm1f_29datafusion_physical_optimizer9optimizer21PhysicalOptimizerRuleNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2o_4SendEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core"}
!39688 = !{!39689, !39686}
!39689 = distinct !{!39689, !39687, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs3cXYlxPhm1f_29datafusion_physical_optimizer9optimizer21PhysicalOptimizerRuleNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2o_4SendEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39690 = !{!39689}
!39691 = !{!39692}
!39692 = distinct !{!39692, !39693, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr13expr_rewriter15FunctionRewriteNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB29_4SendEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39693 = distinct !{!39693, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr13expr_rewriter15FunctionRewriteNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB29_4SendEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core"}
!39694 = !{!39695, !39692}
!39695 = distinct !{!39695, !39693, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr13expr_rewriter15FunctionRewriteNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB29_4SendEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39696 = !{!39695}
!39697 = !{!39698}
!39698 = distinct !{!39698, !39699, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr7planner11ExprPlannerEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39699 = distinct !{!39699, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr7planner11ExprPlannerEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core"}
!39700 = !{!39701, !39698}
!39701 = distinct !{!39701, !39699, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr7planner11ExprPlannerEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39702 = !{!39701}
!39703 = !{!39704}
!39704 = distinct !{!39704, !39705, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr7planner15RelationPlannerEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39705 = distinct !{!39705, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr7planner15RelationPlannerEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core"}
!39706 = !{!39707, !39704}
!39707 = distinct !{!39707, !39705, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr7planner15RelationPlannerEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39708 = !{!39707}
!39709 = !{!39710}
!39710 = distinct !{!39710, !39711, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCscYNcALI69lp_20datafusion_optimizer8analyzer12AnalyzerRuleNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB25_4SendEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39711 = distinct !{!39711, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCscYNcALI69lp_20datafusion_optimizer8analyzer12AnalyzerRuleNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB25_4SendEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core"}
!39712 = !{!39713, !39710}
!39713 = distinct !{!39713, !39711, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCscYNcALI69lp_20datafusion_optimizer8analyzer12AnalyzerRuleNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB25_4SendEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39714 = !{!39713}
!39715 = !{!39716}
!39716 = distinct !{!39716, !39717, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCscYNcALI69lp_20datafusion_optimizer9optimizer13OptimizerRuleNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB27_4SendEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39717 = distinct !{!39717, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCscYNcALI69lp_20datafusion_optimizer9optimizer13OptimizerRuleNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB27_4SendEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core"}
!39718 = !{!39719, !39716}
!39719 = distinct !{!39719, !39717, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCscYNcALI69lp_20datafusion_optimizer9optimizer13OptimizerRuleNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB27_4SendEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39720 = !{!39719}
!39721 = !{!39722}
!39722 = distinct !{!39722, !39723, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39723 = distinct !{!39723, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core"}
!39724 = !{!39725, !39722}
!39725 = distinct !{!39725, !39723, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39726 = !{!39725}
!39727 = !{!39728}
!39728 = distinct !{!39728, !39729, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39729 = distinct !{!39729, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core"}
!39730 = !{!39731, !39728}
!39731 = distinct !{!39731, !39729, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39732 = !{!39731}
!39733 = !{!39734}
!39734 = distinct !{!39734, !39735, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39735 = distinct !{!39735, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core"}
!39736 = !{!39737, !39734}
!39737 = distinct !{!39737, !39735, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39738 = !{!39737}
!39739 = !{!39740}
!39740 = distinct !{!39740, !39741, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39741 = distinct !{!39741, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core"}
!39742 = !{!39743, !39740}
!39743 = distinct !{!39743, !39741, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39744 = !{!39743}
!39745 = !{!39746}
!39746 = distinct !{!39746, !39747, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_6string6StringENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39747 = distinct !{!39747, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_6string6StringENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core"}
!39748 = !{!39749, !39746}
!39749 = distinct !{!39749, !39747, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_6string6StringENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39750 = !{!39751, !39746}
!39751 = distinct !{!39751, !39752, !"_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 1"}
!39752 = distinct !{!39752, !"_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core"}
!39753 = !{!39754, !39749}
!39754 = distinct !{!39754, !39752, !"_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39755 = !{!39749}
!39756 = !{!39757}
!39757 = distinct !{!39757, !39758, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39758 = distinct !{!39758, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core"}
!39759 = !{!39760, !39757}
!39760 = distinct !{!39760, !39758, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39761 = !{!39762}
!39762 = distinct !{!39762, !39763, !"_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 1"}
!39763 = distinct !{!39763, !"_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core"}
!39764 = !{!39762, !39757}
!39765 = !{!39766, !39760}
!39766 = distinct !{!39766, !39763, !"_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39767 = !{!39766, !39762, !39760, !39757}
!39768 = !{!39769}
!39769 = distinct !{!39769, !39770, !"_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!39770 = distinct !{!39770, !"_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!39771 = !{!39772}
!39772 = distinct !{!39772, !39770, !"_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!39773 = !{!39772, !39762, !39757}
!39774 = !{!39769, !39766, !39760}
!39775 = !{!39769, !39772, !39766, !39762, !39760, !39757}
!39776 = !{!39772, !39766, !39762, !39760, !39757}
!39777 = !{!39778}
!39778 = distinct !{!39778, !39779, !"_RINvXs_NvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCslw7hBPHc6qc_14regex_automata4util10primitives11NonMaxUsizeENtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39779 = distinct !{!39779, !"_RINvXs_NvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCslw7hBPHc6qc_14regex_automata4util10primitives11NonMaxUsizeENtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core"}
!39780 = !{!39778, !39781}
!39781 = distinct !{!39781, !39779, !"_RINvXs_NvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCslw7hBPHc6qc_14regex_automata4util10primitives11NonMaxUsizeENtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39782 = !{!39781}
!39783 = !{!39784, !39786}
!39784 = distinct !{!39784, !39785, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtNtB8_11collections9vec_deque8VecDequeTNtNtB8_6string6StringjEENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39785 = distinct !{!39785, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtNtB8_11collections9vec_deque8VecDequeTNtNtB8_6string6StringjEENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core"}
!39786 = distinct !{!39786, !39785, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtNtB8_11collections9vec_deque8VecDequeTNtNtB8_6string6StringjEENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39787 = !{!39784}
!39788 = !{!39786}
!39789 = !{!39790}
!39790 = distinct !{!39790, !39791, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39791 = distinct !{!39791, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core"}
!39792 = !{!39793, !39790}
!39793 = distinct !{!39793, !39791, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39794 = distinct !{!39794, !15341, !15342}
!39795 = !{!39793}
!39796 = distinct !{!39796, !15342, !15341}
!39797 = !{!39798, !39800}
!39798 = distinct !{!39798, !39799, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39799 = distinct !{!39799, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core"}
!39800 = distinct !{!39800, !39799, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39801 = !{!39798}
!39802 = !{!39800}
!39803 = !{!39804}
!39804 = distinct !{!39804, !39805, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs14kWLkQVSKO_14deltalake_core8protocol14MergePredicateNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_: argument 1"}
!39805 = distinct !{!39805, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs14kWLkQVSKO_14deltalake_core8protocol14MergePredicateNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_"}
!39806 = !{!39807, !39804}
!39807 = distinct !{!39807, !39805, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs14kWLkQVSKO_14deltalake_core8protocol14MergePredicateNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_: argument 0"}
!39808 = !{!39809}
!39809 = distinct !{!39809, !39810, !"_RNvXsv_NtCs14kWLkQVSKO_14deltalake_core8protocolNtB5_14MergePredicateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!39810 = distinct !{!39810, !"_RNvXsv_NtCs14kWLkQVSKO_14deltalake_core8protocolNtB5_14MergePredicateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!39811 = !{!39812, !39809, !39807, !39804}
!39812 = distinct !{!39812, !39810, !"_RNvXsv_NtCs14kWLkQVSKO_14deltalake_core8protocolNtB5_14MergePredicateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!39813 = !{!39807}
!39814 = !{!39809, !39804}
!39815 = !{!39812, !39807}
!39816 = !{!39817, !39819}
!39817 = distinct !{!39817, !39818, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39818 = distinct !{!39818, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core"}
!39819 = distinct !{!39819, !39818, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39820 = !{!39817}
!39821 = !{!39819}
!39822 = !{!39823}
!39823 = distinct !{!39823, !39824, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs2xb0BKvnu80_21datafusion_datasource11file_groups9FileGroupNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39824 = distinct !{!39824, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs2xb0BKvnu80_21datafusion_datasource11file_groups9FileGroupNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core"}
!39825 = !{!39826, !39823}
!39826 = distinct !{!39826, !39824, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs2xb0BKvnu80_21datafusion_datasource11file_groups9FileGroupNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39827 = !{!39828}
!39828 = distinct !{!39828, !39829, !"_RNvXsj_NtCs2xb0BKvnu80_21datafusion_datasource11file_groupsNtB5_9FileGroupNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!39829 = distinct !{!39829, !"_RNvXsj_NtCs2xb0BKvnu80_21datafusion_datasource11file_groupsNtB5_9FileGroupNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!39830 = !{!39828, !39823}
!39831 = !{!39832, !39826}
!39832 = distinct !{!39832, !39829, !"_RNvXsj_NtCs2xb0BKvnu80_21datafusion_datasource11file_groupsNtB5_9FileGroupNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!39833 = !{!39834}
!39834 = distinct !{!39834, !39835, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39835 = distinct !{!39835, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core"}
!39836 = !{!39837, !39834, !39838, !39832, !39828, !39826, !39823}
!39837 = distinct !{!39837, !39835, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39838 = distinct !{!39838, !39839, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39839 = distinct !{!39839, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core"}
!39840 = !{!39841}
!39841 = distinct !{!39841, !39842, !"_RNvXsa_Cs2xb0BKvnu80_21datafusion_datasourceNtB5_15PartitionedFileNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!39842 = distinct !{!39842, !"_RNvXsa_Cs2xb0BKvnu80_21datafusion_datasourceNtB5_15PartitionedFileNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!39843 = !{!39844, !39841, !39837, !39834, !39838, !39832, !39828, !39826, !39823}
!39844 = distinct !{!39844, !39842, !"_RNvXsa_Cs2xb0BKvnu80_21datafusion_datasourceNtB5_15PartitionedFileNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!39845 = !{!39846}
!39846 = distinct !{!39846, !39847, !"_RNvXsg_CsjyY8HP3IvQ6_12object_storeNtB5_10ObjectMetaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!39847 = distinct !{!39847, !"_RNvXsg_CsjyY8HP3IvQ6_12object_storeNtB5_10ObjectMetaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!39848 = !{!39849}
!39849 = distinct !{!39849, !39847, !"_RNvXsg_CsjyY8HP3IvQ6_12object_storeNtB5_10ObjectMetaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!39850 = !{!39846, !39849, !39844, !39841, !39837, !39834, !39838, !39832, !39828, !39826, !39823}
!39851 = !{!39837, !39838, !39832, !39828, !39826, !39823}
!39852 = !{!39849, !39841, !39834}
!39853 = !{!39846, !39844, !39837, !39838, !39832, !39828, !39826, !39823}
!39854 = !{!39855}
!39855 = distinct !{!39855, !39856, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39856 = distinct !{!39856, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core"}
!39857 = !{!39849, !39844, !39841, !39837, !39834, !39838, !39832, !39828, !39826, !39823}
!39858 = !{!39846, !39849}
!39859 = !{!39844, !39837, !39838, !39832, !39828, !39826, !39823}
!39860 = !{!39861}
!39861 = distinct !{!39861, !39862, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 1"}
!39862 = distinct !{!39862, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core"}
!39863 = !{!39864, !39844, !39837, !39838, !39832, !39828, !39826, !39823}
!39864 = distinct !{!39864, !39862, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39865 = !{!39864, !39861, !39844, !39837, !39838, !39832, !39828, !39826, !39823}
!39866 = !{!39867, !39869, !39864, !39861, !39844, !39837, !39838, !39832, !39828, !39826, !39823}
!39867 = distinct !{!39867, !39868, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39868 = distinct !{!39868, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core"}
!39869 = distinct !{!39869, !39868, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39870 = !{!39844, !39837, !39838, !39832, !39828}
!39871 = !{!39867, !39864, !39861, !39844, !39837, !39838, !39832, !39828, !39826, !39823}
!39872 = !{!39869, !39861, !39844, !39837, !39838, !39832, !39828, !39826, !39823}
!39873 = !{!39841, !39834}
!39874 = !{!39875, !39877, !39837, !39838, !39832, !39828, !39826, !39823}
!39875 = distinct !{!39875, !39876, !"_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39876 = distinct !{!39876, !"_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core"}
!39877 = distinct !{!39877, !39878, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39878 = distinct !{!39878, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEECs14kWLkQVSKO_14deltalake_core"}
!39879 = !{!39834, !39832, !39828, !39826, !39823}
!39880 = !{!39832, !39828, !39826, !39823}
!39881 = !{!39882, !39884, !39826, !39823}
!39882 = distinct !{!39882, !39883, !"_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs2xb0BKvnu80_21datafusion_datasource11file_groups9FileGroupENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39883 = distinct !{!39883, !"_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs2xb0BKvnu80_21datafusion_datasource11file_groups9FileGroupENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core"}
!39884 = distinct !{!39884, !39885, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2xb0BKvnu80_21datafusion_datasource11file_groups9FileGroupEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39885 = distinct !{!39885, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2xb0BKvnu80_21datafusion_datasource11file_groups9FileGroupEECs14kWLkQVSKO_14deltalake_core"}
!39886 = !{!39887}
!39887 = distinct !{!39887, !39888, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr11LexOrderingNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39888 = distinct !{!39888, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr11LexOrderingNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core"}
!39889 = !{!39890, !39887}
!39890 = distinct !{!39890, !39888, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr11LexOrderingNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39891 = !{!39892}
!39892 = distinct !{!39892, !39893, !"_RNvXsz_NtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_exprNtB5_11LexOrderingNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!39893 = distinct !{!39893, !"_RNvXsz_NtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_exprNtB5_11LexOrderingNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!39894 = !{!39895, !39892, !39890, !39887}
!39895 = distinct !{!39895, !39893, !"_RNvXsz_NtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_exprNtB5_11LexOrderingNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!39896 = !{!39897}
!39897 = distinct !{!39897, !39898, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr16PhysicalSortExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39898 = distinct !{!39898, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr16PhysicalSortExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core"}
!39899 = !{!39900}
!39900 = distinct !{!39900, !39898, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr16PhysicalSortExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 1"}
!39901 = !{!39900, !39892, !39887}
!39902 = !{!39897, !39895, !39890}
!39903 = !{!39904}
!39904 = distinct !{!39904, !39905, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr16PhysicalSortExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39905 = distinct !{!39905, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr16PhysicalSortExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core"}
!39906 = !{!39907, !39904, !39897, !39900, !39895, !39892, !39890, !39887}
!39907 = distinct !{!39907, !39905, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr16PhysicalSortExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39908 = !{!39890}
!39909 = !{!39910}
!39910 = distinct !{!39910, !39911, !"_RNvXsu_NtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_exprNtB5_16PhysicalSortExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!39911 = distinct !{!39911, !"_RNvXsu_NtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_exprNtB5_16PhysicalSortExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!39912 = !{!39910, !39904}
!39913 = !{!39914, !39907, !39897, !39900, !39895, !39892, !39890}
!39914 = distinct !{!39914, !39911, !"_RNvXsu_NtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_exprNtB5_16PhysicalSortExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!39915 = !{!39914, !39910, !39907, !39904, !39897, !39900, !39895, !39892, !39890}
!39916 = !{!39907, !39904, !39897, !39900, !39895, !39892, !39890}
!39917 = !{!39904, !39900, !39895, !39892, !39890, !39887}
!39918 = !{!39895, !39890}
!39919 = !{!39920}
!39920 = distinct !{!39920, !39921, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr16PhysicalSortExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39921 = distinct !{!39921, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr16PhysicalSortExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core"}
!39922 = !{!39923, !39920}
!39923 = distinct !{!39923, !39921, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr16PhysicalSortExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39924 = !{!39925}
!39925 = distinct !{!39925, !39926, !"_RNvXsu_NtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_exprNtB5_16PhysicalSortExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!39926 = distinct !{!39926, !"_RNvXsu_NtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_exprNtB5_16PhysicalSortExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!39927 = !{!39925, !39920}
!39928 = !{!39929, !39923}
!39929 = distinct !{!39929, !39926, !"_RNvXsu_NtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_exprNtB5_16PhysicalSortExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!39930 = !{!39929, !39925, !39923, !39920}
!39931 = !{!39932, !39934}
!39932 = distinct !{!39932, !39933, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast10AccessExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39933 = distinct !{!39933, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast10AccessExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core"}
!39934 = distinct !{!39934, !39933, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast10AccessExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39935 = !{!39936}
!39936 = distinct !{!39936, !39937, !"_RNvXs71_NtCs4lawaffTVVK_9sqlparser3astNtB6_10AccessExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!39937 = distinct !{!39937, !"_RNvXs71_NtCs4lawaffTVVK_9sqlparser3astNtB6_10AccessExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!39938 = !{!39939, !39932}
!39939 = distinct !{!39939, !39937, !"_RNvXs71_NtCs4lawaffTVVK_9sqlparser3astNtB6_10AccessExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!39940 = !{!39941}
!39941 = distinct !{!39941, !39942, !"_RNvXs6R_NtCs4lawaffTVVK_9sqlparser3astNtB6_9SubscriptNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!39942 = distinct !{!39942, !"_RNvXs6R_NtCs4lawaffTVVK_9sqlparser3astNtB6_9SubscriptNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!39943 = !{!39932}
!39944 = !{!39945, !39941, !39939, !39936, !39932}
!39945 = distinct !{!39945, !39942, !"_RNvXs6R_NtCs4lawaffTVVK_9sqlparser3astNtB6_9SubscriptNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!39946 = distinct !{null, null}
!39947 = !{!39941, !39939, !39936, !39932}
!39948 = !{!39941, !39936}
!39949 = !{!39945, !39939, !39932}
!39950 = distinct !{null, null, null}
!39951 = !{!39952}
!39952 = distinct !{!39952, !39953, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39953 = distinct !{!39953, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core"}
!39954 = distinct !{null, null, null, null}
!39955 = !{!39956}
!39956 = distinct !{!39956, !39957, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39957 = distinct !{!39957, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core"}
!39958 = !{!39939, !39936, !39932}
!39959 = distinct !{null}
!39960 = !{!39934}
!39961 = !{!39962}
!39962 = distinct !{!39962, !39963, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast10CopyOptionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39963 = distinct !{!39963, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast10CopyOptionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core"}
!39964 = !{!39965, !39962}
!39965 = distinct !{!39965, !39963, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast10CopyOptionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39966 = !{!39967}
!39967 = distinct !{!39967, !39968, !"_RNvXsq2_NtCs4lawaffTVVK_9sqlparser3astNtB6_10CopyOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!39968 = distinct !{!39968, !"_RNvXsq2_NtCs4lawaffTVVK_9sqlparser3astNtB6_10CopyOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!39969 = !{!39967, !39962}
!39970 = !{!39971, !39965}
!39971 = distinct !{!39971, !39968, !"_RNvXsq2_NtCs4lawaffTVVK_9sqlparser3astNtB6_10CopyOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!39972 = !{!39971, !39967, !39965, !39962}
!39973 = !{!39965}
!39974 = !{!39975}
!39975 = distinct !{!39975, !39976, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39976 = distinct !{!39976, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core"}
!39977 = !{!39978, !39975}
!39978 = distinct !{!39978, !39976, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39979 = !{ptr @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core}
!39980 = !{!39981, !39983, !39978, !39975}
!39981 = distinct !{!39981, !39982, !"_RNvXs3X_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!39982 = distinct !{!39982, !"_RNvXs3X_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!39983 = distinct !{!39983, !39982, !"_RNvXs3X_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!39984 = !{!39985, !39975}
!39985 = distinct !{!39985, !39986, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 1"}
!39986 = distinct !{!39986, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core"}
!39987 = !{!39988, !39978}
!39988 = distinct !{!39988, !39986, !"_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39989 = distinct !{ptr @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core, ptr @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core, null}
!39990 = !{!39991, !39993}
!39991 = distinct !{!39991, !39992, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast10UnionFieldNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39992 = distinct !{!39992, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast10UnionFieldNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core"}
!39993 = distinct !{!39993, !39992, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast10UnionFieldNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39994 = !{!39995}
!39995 = distinct !{!39995, !39996, !"_RNvXs4V_NtCs4lawaffTVVK_9sqlparser3astNtB6_10UnionFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
end_hunk_1
