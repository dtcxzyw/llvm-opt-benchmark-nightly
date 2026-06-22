inline.NumInlined: 2950
inline.NumDeleted: 1029
begin_hunk_0_@_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs8ojAJGM8ADl_16datafusion_proto(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0EB1z_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0EBU_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B26_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B26_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs8Hz2sPNgbCO_10datafusion(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1F_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !64, !noalias !67, !noundef !3 ; 2 uses
  %i.h = add i64 %i.g, %1                         ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %bb.b, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !64, !noalias !67, !noundef !3 ; 3 uses
  %i.l = icmp ult i64 %i.k, 8
  %i.m = add i64 %i.k, 1
  %i.n = lshr i64 %i.m, 3
  %i.o = mul nuw i64 %i.n, 7
  %.sroa.03.0.i = select i1 %i.l, i64 %i.k, i64 %i.o ; 2 uses
  %i.p = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.h, %i.p
  br i1 %.not.i, label %bb.d, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.q = call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !70 ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.q, 0
  %i.s = extractvalue { i64, i64 } %i.q, 1
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.d:                                             ; preds = %bb.b
  %i.t = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i5 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.t, i64 range(i64 1, 0) %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !71)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !74
  call fastcc void @_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 32, 225) 224, i64 noundef range(i64 1, 0) %.sroa.0.0.i5, i1 noundef zeroext %3) #39
  %i.u = load ptr, ptr %i.a, align 8, !noalias !74, !noundef !3 ; 9 uses
  %i.v = icmp eq ptr %i.u, null
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noalias !74 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noalias !74 ; 3 uses
  br i1 %i.v, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !74
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.f:                                             ; preds = %._crit_edge
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(56) %i.b) #38, !noalias !77
  resume { ptr, i32 } %i.aa

bb.g:                                             ; preds = %bb.d
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !74
  store ptr %i.e, ptr %i.b, align 8, !noalias !74
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 224, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !74
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !74
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.u, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !74
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %i.x, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !74
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %i.z, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !74
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !74
  %i.ab = load i64, ptr %i.f, align 8, !alias.scope !78, !noalias !79, !noundef !3 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %._crit_edge23, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ad = load ptr, ptr %0, align 8, !alias.scope !78, !noalias !79, !nonnull !3, !noundef !3 ; 2 uses
  %i.ae = load <16 x i8>, ptr %i.ad, align 16, !noalias !80
  %i.af = icmp sgt <16 x i8> %i.ae, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.022 = phi ptr [ %i.ad, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.021 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.020 = phi i64 [ %i.ab, %.preheader.lr.ph ], [ %i.bl, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.019 = phi i16 [ %i.ag, %.preheader.lr.ph ], [ %i.bj, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i214 = icmp eq i16 %.sroa.13.019, 0
  br i1 %.not.i214, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.116 = phi ptr [ %i.ah, %.noexc3 ], [ %.sroa.0.022, %.preheader ] ; 2 uses
  %.sroa.5.115 = phi i64 [ %i.al, %.noexc3 ], [ %.sroa.5.021, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.116) ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.116, i64 16 ; 3 uses
  %i.ai = load <16 x i8>, ptr %i.ah, align 16, !noalias !83
  %i.aj = icmp sgt <16 x i8> %i.ai, splat (i8 -1)
  %i.ak = bitcast <16 x i1> %i.aj to i16          ; 2 uses
  %i.al = add i64 %.sroa.5.115, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.ak, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge23.loopexit:                           ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !alias.scope !78, !noalias !79
  br label %._crit_edge23

._crit_edge23:                                    ; preds = %._crit_edge23.loopexit, %bb.g
  %i.am = phi i64 [ %.pre, %._crit_edge23.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.an = sub i64 %i.z, %i.am
  store i64 %i.an, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !74
  store i64 %i.am, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !74
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.h, !noalias !77

bb.h:                                             ; preds = %._crit_edge23
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #37, !noalias !77
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %._crit_edge23
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  call void @llvm.experimental.noalias.scope.decl(metadata !89), !noalias !77
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !92, !noalias !77 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !92, !noalias !77 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !92, !noalias !77, !noundef !3 ; 3 uses
  %i.ap = icmp eq i64 %.val3.i.i, 0
  br i1 %i.ap, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsdJxlLsGgtXr_16delta_benchmarks.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECsdJxlLsGgtXr_16delta_benchmarks.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !77
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !92, !noalias !77
  %i.aq = add i64 %.val3.i.i, 1
  %i.ar = mul nuw i64 %.val.i.i, %i.aq            ; 2 uses
  %i.as = add i64 %.val1.i.i, -1
  %i.at = add i64 %i.as, %i.ar                    ; 2 uses
  %i.au = icmp uge i64 %i.at, %i.ar
  call void @llvm.assume(i1 %i.au), !noalias !77
  %i.av = sub i64 0, %.val1.i.i
  %i.aw = and i64 %i.at, %i.av                    ; 3 uses
  %i.ax = add i64 %.val3.i.i, 17
  %i.ay = add i64 %i.ax, %i.aw                    ; 4 uses
  %i.az = icmp uge i64 %i.ay, %i.aw
  %i.ba = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bb = icmp ule i64 %i.ay, %i.ba
  call void @llvm.assume(i1 %i.az), !noalias !77
  call void @llvm.assume(i1 %i.bb), !noalias !77
  %i.bc = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bc), !noalias !77
  %i.bd = icmp eq i64 %i.ay, 0
  br i1 %i.bd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.be = sub nsw i64 0, %i.aw
  %i.bf = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.be
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bf, i64 noundef %i.ay, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #40, !noalias !93
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECsdJxlLsGgtXr_16delta_benchmarks.exit, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !74
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.019, %.preheader ], [ %i.ak, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.021, %.preheader ], [ %i.al, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.022, %.preheader ], [ %i.ah, %.noexc3 ]
  %i.bg = add i16 %.sroa.13.1.lcssa, -1
  %i.bh = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bi = zext nneg i16 %i.bh to i64
  %i.bj = and i16 %i.bg, %.sroa.13.1.lcssa
  %i.bk = add i64 %.sroa.5.1.lcssa, %i.bi         ; 2 uses
  %i.bl = add i64 %.sroa.9.020, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %i.bm = load ptr, ptr %0, align 8, !alias.scope !94, !noalias !97, !nonnull !3, !noundef !3
  %i.bn = sub nsw i64 0, %i.bk
  %i.bo = getelementptr inbounds [224 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -224
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !99, !nonnull !3, !align !100, !noundef !3
  %i.bq = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(224) %i.bp)
          to label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.f ; 2 uses

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.x, %i.bq             ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.br, align 1, !noalias !101
  %i.bs = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bt = bitcast <16 x i1> %i.bs to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bt, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !104

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit ], [ %.sroa.0.0.i7, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bt, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit ], [ %i.cl, %.lr.ph.i ]
  %i.bu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bv = zext nneg i16 %i.bu to i64
  %i.bw = add i64 %.sroa.0.0.lcssa.i, %i.bv
  %i.bx = and i64 %i.bw, %i.x                     ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !noundef !3
  %i.ca = icmp sgt i8 %i.bz, -1
  br i1 %i.ca, label %bb.j, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !28

bb.j:                                             ; preds = %._crit_edge.i
  %i.cb = load <16 x i8>, ptr %i.u, align 16, !noalias !105
  %i.cc = icmp slt <16 x i8> %i.cb, zeroinitializer
  %i.cd = bitcast <16 x i1> %i.cc to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cd, 0
  %i.ce = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cd, i1 true)
  %i.cf = zext nneg i16 %i.ce to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i7, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit ]
  %i.cg = phi i64 [ %i.ch, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit ]
  %i.ch = add i64 %i.cg, 16                       ; 2 uses
  %i.ci = add i64 %i.ch, %.sroa.0.010.i
  %.sroa.0.0.i7 = and i64 %i.ci, %i.x             ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.0.i7
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cj, align 1, !noalias !101
  %i.ck = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cl = bitcast <16 x i1> %i.ck to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cl, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !108

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cf, %bb.j ], [ %i.bx, %._crit_edge.i ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.0.i5.i
  %i.cn = lshr i64 %i.bq, 57
  %i.co = trunc nuw nsw i64 %i.cn to i8           ; 2 uses
  %i.cp = add i64 %.sroa.0.0.i5.i, -16
  %i.cq = and i64 %i.cp, %i.x
  store i8 %i.co, ptr %i.cm, align 1, !noalias !77
  %i.cr = getelementptr i8, ptr %i.u, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 16
  store i8 %i.co, ptr %i.cs, align 1, !noalias !77
  %i.ct = load ptr, ptr %0, align 8, !alias.scope !78, !noalias !79, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.bk, -1
  %.neg61.i.i = mul i64 %.neg.i.i, 224
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 %.neg61.i.i
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg63.i.i = mul i64 %.neg62.i.i, 224
  %i.cv = getelementptr inbounds i8, ptr %i.u, i64 %.neg63.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(224) %i.cv, ptr noundef nonnull align 1 dereferenceable(224) %i.cu, i64 range(i64 32, 225) 224, i1 false), !noalias !77
  %i.cw = icmp eq i64 %i.bl, 0
  br i1 %i.cw, label %._crit_edge23.loopexit, label %.preheader

bb.k:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.c, ptr nonnull @_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks, i64 noundef 224, ptr noundef nonnull @_RNvYNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtBb_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1K_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0Es_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTOhEE9call_onceCsdJxlLsGgtXr_16delta_benchmarks) #39
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsdJxlLsGgtXr_16delta_benchmarks.exit, %bb.c, %bb.k
  %.sroa.4.0.i = phi i64 [ %i.s, %bb.c ], [ undef, %bb.k ], [ %i.z, %bb.e ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsdJxlLsGgtXr_16delta_benchmarks.exit ]
  %.sroa.0.0.i = phi i64 [ %i.r, %bb.c ], [ -9223372036854775807, %bb.k ], [ %i.x, %bb.e ], [ -9223372036854775807, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsdJxlLsGgtXr_16delta_benchmarks.exit ]
  %i.cx = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.cy = insertvalue { i64, i64 } %i.cx, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret { i64, i64 } %i.cy
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE7reserveNCINvNtB8_3map11make_hasherBQ_B1F_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1F_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTRNtNtCs6Po7BT7Nknu_5alloc6string6StringuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTRNtNtCs6Po7BT7Nknu_5alloc6string6StringuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs8ulvy0Wg6Ot_12delta_kernel(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTReBQ_EE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !109, !noalias !112, !noundef !3 ; 2 uses
  %i.h = add i64 %i.g, %1                         ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %bb.b, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !109, !noalias !112, !noundef !3 ; 3 uses
  %i.l = icmp ult i64 %i.k, 8
  %i.m = add i64 %i.k, 1
  %i.n = lshr i64 %i.m, 3
  %i.o = mul nuw i64 %i.n, 7
  %.sroa.03.0.i = select i1 %i.l, i64 %i.k, i64 %i.o ; 2 uses
  %i.p = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.h, %i.p
  br i1 %.not.i, label %bb.d, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.q = call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !115 ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.q, 0
  %i.s = extractvalue { i64, i64 } %i.q, 1
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.d:                                             ; preds = %bb.b
  %i.t = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i5 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.t, i64 range(i64 1, 0) %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !119
  call fastcc void @_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 32, 225) 32, i64 noundef range(i64 1, 0) %.sroa.0.0.i5, i1 noundef zeroext %3) #39
  %i.u = load ptr, ptr %i.a, align 8, !noalias !119, !noundef !3 ; 9 uses
  %i.v = icmp eq ptr %i.u, null
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noalias !119 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noalias !119 ; 3 uses
  br i1 %i.v, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !119
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.f:                                             ; preds = %._crit_edge
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(56) %i.b) #38, !noalias !122
  resume { ptr, i32 } %i.aa

bb.g:                                             ; preds = %bb.d
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !noalias !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !119
  store ptr %i.e, ptr %i.b, align 8, !noalias !119
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !119
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !119
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.u, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !119
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %i.x, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !119
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %i.z, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !119
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !119
  %i.ab = load i64, ptr %i.f, align 8, !alias.scope !123, !noalias !124, !noundef !3 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %._crit_edge23, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ad = load ptr, ptr %0, align 8, !alias.scope !123, !noalias !124, !nonnull !3, !noundef !3 ; 2 uses
  %i.ae = load <16 x i8>, ptr %i.ad, align 16, !noalias !125
  %i.af = icmp sgt <16 x i8> %i.ae, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.022 = phi ptr [ %i.ad, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.021 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.020 = phi i64 [ %i.ab, %.preheader.lr.ph ], [ %i.bl, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.019 = phi i16 [ %i.ag, %.preheader.lr.ph ], [ %i.bj, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i214 = icmp eq i16 %.sroa.13.019, 0
  br i1 %.not.i214, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.116 = phi ptr [ %i.ah, %.noexc3 ], [ %.sroa.0.022, %.preheader ] ; 2 uses
  %.sroa.5.115 = phi i64 [ %i.al, %.noexc3 ], [ %.sroa.5.021, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.116) ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.116, i64 16 ; 3 uses
  %i.ai = load <16 x i8>, ptr %i.ah, align 16, !noalias !128
  %i.aj = icmp sgt <16 x i8> %i.ai, splat (i8 -1)
  %i.ak = bitcast <16 x i1> %i.aj to i16          ; 2 uses
  %i.al = add i64 %.sroa.5.115, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.ak, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge23.loopexit:                           ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !alias.scope !123, !noalias !124
  br label %._crit_edge23

._crit_edge23:                                    ; preds = %._crit_edge23.loopexit, %bb.g
  %i.am = phi i64 [ %.pre, %._crit_edge23.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.an = sub i64 %i.z, %i.am
  store i64 %i.an, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !119
  store i64 %i.am, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !119
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.h, !noalias !122

bb.h:                                             ; preds = %._crit_edge23
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #37, !noalias !122
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %._crit_edge23
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  call void @llvm.experimental.noalias.scope.decl(metadata !134), !noalias !122
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !137, !noalias !122 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !137, !noalias !122 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !137, !noalias !122, !noundef !3 ; 3 uses
  %i.ap = icmp eq i64 %.val3.i.i, 0
  br i1 %i.ap, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsdJxlLsGgtXr_16delta_benchmarks.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECsdJxlLsGgtXr_16delta_benchmarks.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !122
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !137, !noalias !122
  %i.aq = add i64 %.val3.i.i, 1
  %i.ar = mul nuw i64 %.val.i.i, %i.aq            ; 2 uses
  %i.as = add i64 %.val1.i.i, -1
  %i.at = add i64 %i.as, %i.ar                    ; 2 uses
  %i.au = icmp uge i64 %i.at, %i.ar
  call void @llvm.assume(i1 %i.au), !noalias !122
  %i.av = sub i64 0, %.val1.i.i
  %i.aw = and i64 %i.at, %i.av                    ; 3 uses
  %i.ax = add i64 %.val3.i.i, 17
  %i.ay = add i64 %i.ax, %i.aw                    ; 4 uses
  %i.az = icmp uge i64 %i.ay, %i.aw
  %i.ba = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bb = icmp ule i64 %i.ay, %i.ba
  call void @llvm.assume(i1 %i.az), !noalias !122
  call void @llvm.assume(i1 %i.bb), !noalias !122
  %i.bc = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bc), !noalias !122
  %i.bd = icmp eq i64 %i.ay, 0
  br i1 %i.bd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.be = sub nsw i64 0, %i.aw
  %i.bf = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.be
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bf, i64 noundef %i.ay, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #40, !noalias !138
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECsdJxlLsGgtXr_16delta_benchmarks.exit, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !119
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.019, %.preheader ], [ %i.ak, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.021, %.preheader ], [ %i.al, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.022, %.preheader ], [ %i.ah, %.noexc3 ]
  %i.bg = add i16 %.sroa.13.1.lcssa, -1
  %i.bh = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bi = zext nneg i16 %i.bh to i64
  %i.bj = and i16 %i.bg, %.sroa.13.1.lcssa
  %i.bk = add i64 %.sroa.5.1.lcssa, %i.bi         ; 2 uses
  %i.bl = add i64 %.sroa.9.020, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.bm = load ptr, ptr %0, align 8, !alias.scope !139, !noalias !142, !nonnull !3, !noundef !3
  %i.bn = sub nsw i64 0, %i.bk
  %i.bo = getelementptr inbounds [32 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -32
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !144, !nonnull !3, !align !100, !noundef !3
  %i.bq = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRReECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bp)
          to label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTReBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.f ; 2 uses

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTReBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.x, %i.bq             ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.br, align 1, !noalias !145
  %i.bs = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bt = bitcast <16 x i1> %i.bs to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bt, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !104

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTReBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTReBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit ], [ %.sroa.0.0.i7, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bt, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTReBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit ], [ %i.cl, %.lr.ph.i ]
  %i.bu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bv = zext nneg i16 %i.bu to i64
  %i.bw = add i64 %.sroa.0.0.lcssa.i, %i.bv
  %i.bx = and i64 %i.bw, %i.x                     ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !noundef !3
  %i.ca = icmp sgt i8 %i.bz, -1
  br i1 %i.ca, label %bb.j, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !28

bb.j:                                             ; preds = %._crit_edge.i
  %i.cb = load <16 x i8>, ptr %i.u, align 16, !noalias !148
  %i.cc = icmp slt <16 x i8> %i.cb, zeroinitializer
  %i.cd = bitcast <16 x i1> %i.cc to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cd, 0
  %i.ce = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cd, i1 true)
  %i.cf = zext nneg i16 %i.ce to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTReBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i7, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTReBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit ]
  %i.cg = phi i64 [ %i.ch, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTReBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit ]
  %i.ch = add i64 %i.cg, 16                       ; 2 uses
  %i.ci = add i64 %i.ch, %.sroa.0.010.i
  %.sroa.0.0.i7 = and i64 %i.ci, %i.x             ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.0.i7
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cj, align 1, !noalias !145
  %i.ck = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cl = bitcast <16 x i1> %i.ck to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cl, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !108

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cf, %bb.j ], [ %i.bx, %._crit_edge.i ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.0.i5.i
  %i.cn = lshr i64 %i.bq, 57
  %i.co = trunc nuw nsw i64 %i.cn to i8           ; 2 uses
  %i.cp = add i64 %.sroa.0.0.i5.i, -16
  %i.cq = and i64 %i.cp, %i.x
  store i8 %i.co, ptr %i.cm, align 1, !noalias !122
  %i.cr = getelementptr i8, ptr %i.u, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 16
  store i8 %i.co, ptr %i.cs, align 1, !noalias !122
  %i.ct = load ptr, ptr %0, align 8, !alias.scope !123, !noalias !124, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.bk, -1
  %.neg61.i.i = shl i64 %.neg.i.i, 5
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 %.neg61.i.i
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg63.i.i = shl i64 %.neg62.i.i, 5
  %i.cv = getelementptr inbounds i8, ptr %i.u, i64 %.neg63.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cv, ptr noundef nonnull align 1 dereferenceable(32) %i.cu, i64 range(i64 32, 225) 32, i1 false), !noalias !122
  %i.cw = icmp eq i64 %i.bl, 0
  br i1 %i.cw, label %._crit_edge23.loopexit, label %.preheader

bb.k:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.c, ptr nonnull @_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTReBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks, i64 noundef 32, ptr noundef null) #39
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsdJxlLsGgtXr_16delta_benchmarks.exit, %bb.c, %bb.k
  %.sroa.4.0.i = phi i64 [ %i.s, %bb.c ], [ undef, %bb.k ], [ %i.z, %bb.e ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsdJxlLsGgtXr_16delta_benchmarks.exit ]
  %.sroa.0.0.i = phi i64 [ %i.r, %bb.c ], [ -9223372036854775807, %bb.k ], [ %i.x, %bb.e ], [ -9223372036854775807, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsdJxlLsGgtXr_16delta_benchmarks.exit ]
  %i.cx = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.cy = insertvalue { i64, i64 } %i.cx, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret { i64, i64 } %i.cy
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTReBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTReBQ_EE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nonnull readonly captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !151, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.g = load ptr, ptr %0, align 8, !alias.scope !157, !noalias !158, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !160
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit.i, %bb.c
  %.sroa.14.014.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit.i ]
  %.sroa.10.013.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit.i ] ; 2 uses
  %.sroa.6.012.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit.i ] ; 2 uses
  %.sroa.04.011.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.04.1.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit.i ] ; 2 uses
  %.not9.i.i = icmp eq i16 %.sroa.10.013.i, 0
  br i1 %.not9.i.i, label %.lr.ph.i.i, label %_RINvMsh_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i ], [ %.sroa.6.012.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i ], [ %.sroa.04.011.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !163
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -2304 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.o to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_RINvMsh_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i

_RINvMsh_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.04.1.i = phi ptr [ %.sroa.04.011.i, %bb.d ], [ %i.p, %.lr.ph.i.i ] ; 2 uses
  %.sroa.6.1.i = phi ptr [ %.sroa.6.012.i, %bb.d ], [ %i.q, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %.sroa.10.013.i, %bb.d ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [144 x i8], ptr %.sroa.04.1.i, i64 %i.v ; 3 uses
  %i.x = add i64 %.sroa.14.014.i, -1              ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -144 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i unwind label %bb.e, !noalias !151

bb.e:                                             ; preds = %_RINvMsh_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.y)
          to label %.body.i.i unwind label %bb.f, !noalias !151

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !151
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i: ; preds = %_RINvMsh_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %bb.g, !noalias !151
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query9ForClauseEECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.v) #38
          to label %common.resume.i unwind label %bb.t

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query6ForXmlECsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsdJxlLsGgtXr_16delta_benchmarks.exit.sink.split.i.i, %bb.h, %bb.d, %bb.c, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.x = load i64, ptr %i.w, align 8, !range !244, !alias.scope !342, !noundef !3
  %i.y = icmp eq i64 %i.x, -9223372036854775808
  br i1 %i.y, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query9ForClauseECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.q

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query6ForXmlECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsdJxlLsGgtXr_16delta_benchmarks.exit.sink.split.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %common.resume.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.t:                                             ; preds = %.body.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast7trigger15TriggerExecBodyEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !244, !noundef !3
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast7trigger15TriggerExecBodyECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast7trigger15TriggerExecBodyECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast18OperateFunctionArgEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %.body.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.e, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast18OperateFunctionArgEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.f) #38
          to label %common.resume.i.i unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !range !244, !alias.scope !345, !noundef !3
  %i.i = icmp eq i64 %i.h, -9223372036854775808
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast7trigger15TriggerExecBodyECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast18OperateFunctionArgENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast18OperateFunctionArgEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast18OperateFunctionArgENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable

common.resume.i.i:                                ; preds = %bb.g, %.body.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.j, %bb.g ], [ %eh.lpad-body.i.i, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast18OperateFunctionArgEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i: ; preds = %bb.f
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast18OperateFunctionArgENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast7trigger15TriggerExecBodyECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.i:                                             ; preds = %.body.i.i
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEENCNvMsd_B1D_B1A_15clone_from_impl0EECsdJxlLsGgtXr_16delta_benchmarks(i64 %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0
  br i1 %.not.i.i, label %_RNvXs1_NtCs2HSpDNxY7OE_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEENCNvMsd_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %.lr.ph.i.i
  %.sroa.01.04.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %bb.i ] ; 3 uses
  %i.a = add nuw i64 %.sroa.01.04.i.i, 1          ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.01.04.i.i
  %i.d = load i8, ptr %i.c, align 1, !noundef !3
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %.sroa.01.04.i.i
  %i.g = getelementptr inbounds [144 x i8], ptr %i.b, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -144 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.h)
          to label %.body.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.f, %bb.d
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.i, %bb.d ]
  %i.l = getelementptr inbounds i8, ptr %i.g, i64 -112
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(112) %i.l) #38
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %.body.i.i.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.h:                                             ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i
  %i.n = getelementptr inbounds i8, ptr %i.g, i64 -112
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(112) %i.n)
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %bb.b
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCs2HSpDNxY7OE_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEENCNvMsd_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.b

_RNvXs1_NtCs2HSpDNxY7OE_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEENCNvMsd_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.i, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !352 ; 5 uses
  %.val2.i = load ptr, ptr %i.a, align 8, !alias.scope !352 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load i64, ptr %i.c, align 8, !alias.scope !352, !noundef !3 ; 3 uses
  %i.d = icmp eq i64 %.val3.i, 0
  br i1 %i.d, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !352
  %i.f = add i64 %.val3.i, 1
  %i.g = mul nuw i64 %.val.i, %i.f                ; 2 uses
  %i.h = add i64 %.val1.i, -1
  %i.i = add i64 %i.h, %i.g                       ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = sub i64 0, %.val1.i
  %i.l = and i64 %i.i, %i.k                       ; 3 uses
  %i.m = add i64 %.val3.i, 17
  %i.n = add i64 %i.m, %i.l                       ; 4 uses
  %i.o = icmp uge i64 %i.n, %i.l
  %i.p = sub nuw i64 -9223372036854775808, %.val1.i
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.o)
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp ne i64 %.val1.i, 0
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.t = sub nsw i64 0, %i.l
  %i.u = getelementptr inbounds i8, ptr %.val2.i, i64 %i.t
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #40, !noalias !352
  br label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.a, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !355, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !355
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !355 ; 10 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !355, !noundef !3 ; 2 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.sroa.0.03.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.f, %bb.e ] ; 5 uses
  %i.f = add nuw i64 %.sroa.0.03.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !355, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.03.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !355, !noundef !3
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.k = add i64 %.sroa.0.03.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !355, !noundef !3
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !355
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !355, !nonnull !3, !noundef !3
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !355
  %i.q = load ptr, ptr %.val2.i, align 8, !noalias !355, !nonnull !3, !noundef !3
  %.neg7.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg7.i.i
  tail call void %.val.i(ptr noundef nonnull %i.r), !noalias !355, !inline_history !358
  %i.s = load i64, ptr %i.e, align 8, !noalias !355, !noundef !3
  %i.t = add i64 %i.s, -1
  store i64 %i.t, ptr %i.e, align 8, !noalias !355
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.c

_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.e, %bb.a, %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !355, !noundef !3 ; 3 uses
  %i.w = icmp ult i64 %i.v, 8
  %i.x = add i64 %i.v, 1
  %i.y = lshr i64 %i.x, 3
  %i.z = mul nuw i64 %i.y, 7
  %.sroa.04.0.i.i = select i1 %i.w, i64 %i.v, i64 %i.z
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !355, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ad = sub i64 %.sroa.04.0.i.i, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8, !noalias !355
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1W_EEENCNvMse_B1D_B1A_15clone_from_impl0EECsdJxlLsGgtXr_16delta_benchmarks(i64 %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0
  br i1 %.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1o_EEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %bb.d ] ; 3 uses
  %i.a = add nuw i64 %.sroa.0.01.i.i, 1           ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.01.i.i
  %i.d = load i8, ptr %i.c, align 1, !noundef !3
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %.sroa.0.01.i.i
  %i.g = getelementptr inbounds [48 x i8], ptr %i.b, i64 %i.f
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -48
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBH_EECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1o_EEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.b

_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1o_EEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEEENCNvMse_B1D_B1A_15clone_from_impl0EECsdJxlLsGgtXr_16delta_benchmarks(i64 %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0
  br i1 %.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %bb.d ] ; 3 uses
  %i.a = add nuw i64 %.sroa.0.01.i.i, 1           ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.01.i.i
  %i.d = load i8, ptr %i.c, align 1, !noundef !3
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %.sroa.0.01.i.i
  %i.g = getelementptr inbounds [40 x i8], ptr %i.b, i64 %i.f
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -40
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBL_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(40) %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.b

_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEEENCNvMse_B1D_B1A_15clone_from_impl0EECsdJxlLsGgtXr_16delta_benchmarks(i64 %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0
  br i1 %.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %bb.d ] ; 3 uses
  %i.a = add nuw i64 %.sroa.0.01.i.i, 1           ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.01.i.i
  %i.d = load i8, ptr %i.c, align 1, !noundef !3
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %.sroa.0.01.i.i
  %i.g = getelementptr inbounds [40 x i8], ptr %i.b, i64 %i.f
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -40
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBL_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(40) %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.b

_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEEENCNvMse_B1D_B1A_15clone_from_impl0EECsdJxlLsGgtXr_16delta_benchmarks(i64 %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0
  br i1 %.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %bb.d ] ; 3 uses
  %i.a = add nuw i64 %.sroa.0.01.i.i, 1           ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.01.i.i
  %i.d = load i8, ptr %i.c, align 1, !noundef !3
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %.sroa.0.01.i.i
  %i.g = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.f
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -32
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBL_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.b

_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEEENCNvMse_B1D_B1A_15clone_from_impl0EECsdJxlLsGgtXr_16delta_benchmarks(i64 %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0
  br i1 %.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %bb.d ] ; 3 uses
  %i.a = add nuw i64 %.sroa.0.01.i.i, 1           ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.01.i.i
  %i.d = load i8, ptr %i.c, align 1, !noundef !3
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %.sroa.0.01.i.i
  %i.g = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.f
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -32
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBL_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.b

_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEEENCNvMse_B1D_B1A_15clone_from_impl0EECsdJxlLsGgtXr_16delta_benchmarks(i64 %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0
  br i1 %.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %bb.d ] ; 3 uses
  %i.a = add nuw i64 %.sroa.0.01.i.i, 1           ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.01.i.i
  %i.d = load i8, ptr %i.c, align 1, !noundef !3
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %.sroa.0.01.i.i
  %i.g = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.f
end_hunk_1
begin_hunk_2_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1N9T06jgEdt_11arrow_array5array10list_array16GenericListArrayxEECsdJxlLsGgtXr_16delta_benchmarks:bb.a
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECsdJxlLsGgtXr_16delta_benchmarks.exit5: ; preds = %bb.f, %bb.e, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !755)
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !758, !nonnull !3, !noundef !3
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !758
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsdJxlLsGgtXr_16delta_benchmarks.exit8

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECsdJxlLsGgtXr_16delta_benchmarks.exit5
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsdJxlLsGgtXr_16delta_benchmarks.exit8 unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECsdJxlLsGgtXr_16delta_benchmarks.exit, %bb.h, %bb.l
  %.pn2 = phi { ptr, i32 } [ %i.y, %bb.l ], [ %.pn, %bb.h ], [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECsdJxlLsGgtXr_16delta_benchmarks.exit ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !759)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !765)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !771)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !774, !nonnull !3, !noundef !3
  %i.w = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !774
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6offset12OffsetBufferxEECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsdJxlLsGgtXr_16delta_benchmarks.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6offset12OffsetBufferxEECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsdJxlLsGgtXr_16delta_benchmarks.exit8: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECsdJxlLsGgtXr_16delta_benchmarks.exit5, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !775)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !784)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !787)
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !790, !nonnull !3, !noundef !3
  %i.ab = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !790
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6offset12OffsetBufferxEECsdJxlLsGgtXr_16delta_benchmarks.exit10

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsdJxlLsGgtXr_16delta_benchmarks.exit8
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6offset12OffsetBufferxEECsdJxlLsGgtXr_16delta_benchmarks.exit10

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6offset12OffsetBufferxEECsdJxlLsGgtXr_16delta_benchmarks.exit10: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsdJxlLsGgtXr_16delta_benchmarks.exit8, %bb.m
  ret void

bb.n:                                             ; preds = %bb.k, %bb.h, %bb.d
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6offset12OffsetBufferxEECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsdJxlLsGgtXr_16delta_benchmarks.exit, %bb.k
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter7sources8repeat_n7RepeatNINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !251, !alias.scope !791, !noundef !3
  %switch.i = icmp slt i64 %i.a, -9223372036854775806
  br i1 %switch.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter7sources8repeat_n12RepeatNInnerIBH_NtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEEEECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter7sources8repeat_n12RepeatNInnerIBH_NtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEEEECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter7sources8repeat_n12RepeatNInnerIBH_NtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEEEECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !803)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !806, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !807)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !810, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1a_EECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !810, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !811
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i, %bb.c
  %.sroa.05.016.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i.i.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.6.015.i.i.i.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i.i.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.107.014.i.i.i.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i ]
  %.sroa.86.013.i.i.i.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i ] ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq i16 %.sroa.86.013.i.i.i.i.i, 0
  br i1 %.not10.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.6.015.i.i.i.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.05.016.i.i.i.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !816
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -768 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.o to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i.i.i = phi ptr [ %.sroa.6.015.i.i.i.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.05.1.i.i.i.i.i = phi ptr [ %.sroa.05.016.i.i.i.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %.sroa.86.013.i.i.i.i.i, %bb.d ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [48 x i8], ptr %.sroa.05.1.i.i.i.i.i, i64 %i.v
  %i.x = add i64 %.sroa.107.014.i.i.i.i.i, -1     ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -48
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBH_EECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %i.y), !noalias !810
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1a_EECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1a_EECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i: ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i, %bb.b
  %i.aa = mul i64 %i.b, 48                        ; 2 uses
  %i.ab = add i64 %i.aa, 48                       ; 2 uses
  %i.ac = add i64 %i.b, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1a_EECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !806, !nonnull !3, !noundef !3
  %i.ai = sub i64 -48, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !806
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1a_EECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapReB1B_EECsdJxlLsGgtXr_16delta_benchmarks(ptr captures(address) %.0.val, i64 %.8.val) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3map7HashMapReB1l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEECsdJxlLsGgtXr_16delta_benchmarks.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = shl i64 %.8.val, 5                       ; 2 uses
  %i.c = add i64 %i.b, 32                         ; 2 uses
  %i.d = add i64 %.8.val, 17
  %i.e = add i64 %i.d, %i.c                       ; 4 uses
  %i.f = icmp uge i64 %i.e, %i.c
  %i.g = icmp ult i64 %i.e, 9223372036854775793
  tail call void @llvm.assume(i1 %i.f)
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3map7HashMapReB1l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i
  %i.i = sub nuw nsw i64 -32, %i.b
  %i.j = getelementptr inbounds i8, ptr %.0.val, i64 %i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 16) #40
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3map7HashMapReB1l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3map7HashMapReB1l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.a, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtBP_15IdleNotifiedSetpE5drain10AllEntriesINtNtNtNtBT_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEINvNtB4_3mem4dropB2i_EEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = tail call noundef ptr @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEB13_E8pop_backCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %.not.i.not2.i = icmp eq ptr %i.c, null
  br i1 %.not.i.not2.i, label %_RNvXs_NvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtBa_15IdleNotifiedSetpE5drainINtB4_10AllEntriesINtNtNtNtBe_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEINvNtB2w_3mem4dropB1J_EENtNtNtB2w_3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNvMNvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB8_15IdleNotifiedSetpE5drainINtB2_10AllEntriesINtNtNtNtBc_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEINvNtB2u_3mem4dropB1H_EE8pop_nextCsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %i.d = phi ptr [ %i.m, %_RNvMNvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB8_15IdleNotifiedSetpE5drainINtB2_10AllEntriesINtNtNtNtBc_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEINvNtB2u_3mem4dropB1H_EE8pop_nextCsdJxlLsGgtXr_16delta_benchmarks.exit.i ], [ %i.c, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !821
  store ptr %i.d, ptr %i.b, align 8, !noalias !821
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !821
  store ptr %i.f, ptr %i.a, align 8, !noalias !821
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEENtNtNtB1c_3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !826
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %bb.f

bb.d:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !821
  %i.j = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !831
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RNvMNvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB8_15IdleNotifiedSetpE5drainINtB2_10AllEntriesINtNtNtNtBc_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEINvNtB2u_3mem4dropB1H_EE8pop_nextCsdJxlLsGgtXr_16delta_benchmarks.exit.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #41
  br label %_RNvMNvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB8_15IdleNotifiedSetpE5drainINtB2_10AllEntriesINtNtNtNtBc_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEINvNtB2u_3mem4dropB1H_EE8pop_nextCsdJxlLsGgtXr_16delta_benchmarks.exit.i

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.g

_RNvMNvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB8_15IdleNotifiedSetpE5drainINtB2_10AllEntriesINtNtNtNtBc_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEINvNtB2u_3mem4dropB1H_EE8pop_nextCsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !821
  %i.m = call noundef ptr @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEB13_E8pop_backCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %.not.i.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i.not.i, label %_RNvXs_NvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtBa_15IdleNotifiedSetpE5drainINtB4_10AllEntriesINtNtNtNtBe_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEINvNtB2w_3mem4dropB1J_EENtNtNtB2w_3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks.exit, label %.lr.ph.i

_RNvXs_NvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtBa_15IdleNotifiedSetpE5drainINtB4_10AllEntriesINtNtNtNtBe_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEINvNtB2w_3mem4dropB1J_EENtNtNtB2w_3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RNvMNvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB8_15IdleNotifiedSetpE5drainINtB2_10AllEntriesINtNtNtNtBc_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEINvNtB2u_3mem4dropB1H_EE8pop_nextCsdJxlLsGgtXr_16delta_benchmarks.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10CopySourceECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !244, !noundef !3
  %.not = icmp eq i64 %i.a, -9223372036854775808
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartEECsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartEECsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !836)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !836, !nonnull !3, !noundef !3 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(1400) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryEECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.f, !noalias !836, !inline_history !839

common.resume:                                    ; preds = %.body, %bb.h, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.f ], [ %i.j, %bb.h ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 1400, i64 noundef 8) #40, !noalias !836, !inline_history !839
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryEECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.e
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 1400, i64 noundef 8) #40, !noalias !836, !inline_history !839
  br label %bb.j

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartEECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.g ], [ %i.b, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.h) #38
          to label %common.resume unwind label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartEECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECsdJxlLsGgtXr_16delta_benchmarks.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %bb.j

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECsdJxlLsGgtXr_16delta_benchmarks.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryEECsdJxlLsGgtXr_16delta_benchmarks.exit
  ret void

bb.k:                                             ; preds = %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10CopyTargetECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !252, !noundef !3
  switch i64 %i.a, label %default.unreachable3 [
    i64 0, label %bb.e
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 3, label %bb.b
  ]

default.unreachable3:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.sink.split unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.c ], [ %i.f, %bb.g ]
  resume { ptr, i32 } %common.resume.op

end_hunk_2
begin_hunk_3_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTaINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEEECsdJxlLsGgtXr_16delta_benchmarks:bb.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 64, i64 noundef 16) #40, !noalias !2614
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs8VI8w5SIoU4_15datafusion_expr13expr_rewriter8order_by25rewrite_sort_cols_by_aggsNtNtB6_4expr4SortINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1q_EECsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.03.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !2617, !noalias !2620
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.44.0.copyload.i = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !2617, !noalias !2620, !nonnull !3, !noundef !3 ; 3 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !2617, !noalias !2620 ; 2 uses
  %i.b = icmp ult i64 %.sroa.55.0.copyload.i, 72057594037927936
  tail call void @llvm.assume(i1 %i.b)
  %i.c = getelementptr inbounds nuw [128 x i8], ptr %.sroa.44.0.copyload.i, i64 %.sroa.55.0.copyload.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2622)
  store ptr %.sroa.44.0.copyload.i, ptr %i.a, align 8, !alias.scope !2625, !noalias !2627
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.44.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !2625, !noalias !2627
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.03.0.copyload.i, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !2625, !noalias !2627
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.c, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !2625, !noalias !2627
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %2, ptr %i.d, align 8, !alias.scope !2629, !noalias !2630
  call void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENCINvNtNtB1Y_13expr_rewriter8order_by25rewrite_sort_cols_by_aggsB1U_INtB1b_3VecB1U_EE0EB1U_INtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCINvXso_B4a_IB48_B3K_B4U_EINtNtNtB4_6traits7collect12FromIteratorIB48_B1U_B4U_EE9from_iterBQ_E0B3K_ECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvNtNtCsbvkFyIu7lgC_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsdJxlLsGgtXr_16delta_benchmarks(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ugt i64 %1, %2
  br i1 %i.a, label %bb.b, label %bb.c, !prof !28

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @232) #43, !noalias !2631
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %0, %1
  br i1 %i.b, label %bb.d, label %_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16into_slice_range.exit, !prof !28

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @233) #43, !noalias !2631
  unreachable

_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16into_slice_range.exit: ; preds = %bb.c
  %i.c = insertvalue { i64, i64 } poison, i64 %0, 0
  %i.d = insertvalue { i64, i64 } %i.c, i64 %1, 1
  ret { i64, i64 } %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i64 } @_RINvNtNtCsbvkFyIu7lgC_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECsdJxlLsGgtXr_16delta_benchmarks(i64 noundef %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16into_slice_range.exit:
  %i.a = insertvalue { i64, i64 } { i64 0, i64 poison }, i64 %0, 1
  ret { i64, i64 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftRNtNtCs6Po7BT7Nknu_5alloc6string6StringNvYB1m_NtNtBa_3cmp10PartialOrd2ltECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 2, 21) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.preheader:
  %.idx = shl nuw nsw i64 %1, 3
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.sroa.0.02 = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs6Po7BT7Nknu_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECsdJxlLsGgtXr_16delta_benchmarks.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs6Po7BT7Nknu_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECsdJxlLsGgtXr_16delta_benchmarks.exit
  %.sroa.0.05 = phi ptr [ %.sroa.0.0, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs6Po7BT7Nknu_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECsdJxlLsGgtXr_16delta_benchmarks.exit ], [ %.sroa.0.02, %.lr.ph.preheader ] ; 5 uses
  %.pn4 = phi ptr [ %.sroa.0.05, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs6Po7BT7Nknu_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECsdJxlLsGgtXr_16delta_benchmarks.exit ], [ %0, %.lr.ph.preheader ] ; 4 uses
  %.val9.i = load ptr, ptr %.sroa.0.05, align 8, !nonnull !3, !align !100, !noundef !3 ; 2 uses
  %.val10.i = load ptr, ptr %.pn4, align 8, !nonnull !3, !align !100, !noundef !3 ; 2 uses
  %i.b = getelementptr i8, ptr %.val9.i, i64 8
  %.val.i.i.i = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr i8, ptr %.val9.i, i64 16
  %.val1.i.i.i = load i64, ptr %i.c, align 8, !noundef !3
  %i.d = getelementptr i8, ptr %.val10.i, i64 8
  %.val2.i.i.i = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3
  %i.e = getelementptr i8, ptr %.val10.i, i64 16
  %.val3.i.i.i = load i64, ptr %i.e, align 8, !noundef !3
  %i.f = tail call noundef range(i8 -1, 3) i8 @_RNvXs6_NtNtCsbvkFyIu7lgC_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val1.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i.i.i, i64 noundef %.val3.i.i.i)
  %i.g = icmp slt i8 %i.f, 0
  br i1 %i.g, label %bb.a, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs6Po7BT7Nknu_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.a:                                             ; preds = %.lr.ph
  %i.h = load ptr, ptr %.sroa.0.05, align 8, !nonnull !3, !align !100, !noundef !3 ; 4 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = getelementptr i8, ptr %i.h, i64 16
  %i.k = load i64, ptr %.pn4, align 8
  store i64 %i.k, ptr %.sroa.0.05, align 8
  %i.l = icmp eq ptr %.pn4, %0
  br i1 %i.l, label %._crit_edge6, label %.lr.ph5

bb.b:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.o, align 8
  store i64 %i.m, ptr %.sroa.0.0.i3, align 8
  %i.n = icmp eq ptr %i.o, %0
  br i1 %i.n, label %._crit_edge6, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.a, %bb.b
  %.sroa.0.0.i3 = phi ptr [ %i.o, %bb.b ], [ %.pn4, %bb.a ] ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %.sroa.0.0.i3, i64 -8 ; 4 uses
  %.val8.i = load ptr, ptr %i.o, align 8, !nonnull !3, !align !100, !noundef !3 ; 2 uses
  %.val.i.i11.i = load ptr, ptr %i.i, align 8, !nonnull !3, !noundef !3
  %.val1.i.i12.i = load i64, ptr %i.j, align 8, !noundef !3
  %i.p = getelementptr i8, ptr %.val8.i, i64 8
  %.val2.i.i13.i = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3
  %i.q = getelementptr i8, ptr %.val8.i, i64 16
  %.val3.i.i14.i = load i64, ptr %i.q, align 8, !noundef !3
  %i.r = invoke noundef range(i8 -1, 3) i8 @_RNvXs6_NtNtCsbvkFyIu7lgC_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i11.i, i64 noundef %.val1.i.i12.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i.i13.i, i64 noundef %.val3.i.i14.i)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph5
  %i.s = icmp slt i8 %i.r, 0
  br i1 %i.s, label %bb.b, label %._crit_edge6

._crit_edge6:                                     ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.sroa.0.0.i3, %bb.c ]
  %i.t = ptrtoint ptr %i.h to i64
  store i64 %i.t, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !2634
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs6Po7BT7Nknu_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.d:                                             ; preds = %.lr.ph5
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = ptrtoint ptr %i.h to i64
  store i64 %i.v, ptr %.sroa.0.0.i3, align 8, !noalias !2639
  resume { ptr, i32 } %i.u

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs6Po7BT7Nknu_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %.lr.ph, %._crit_edge6
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIB1o_NtB1X_4ExprEENCINvMNtB1s_5sliceSB1m_7sort_byNCINvMs_NtNtB1Z_12logical_plan7builderNtB3C_18LogicalPlanBuilder11window_planB2H_E0E0ECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 192153584101141163) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %.sroa.7.i = alloca [24 x i8], align 8          ; 5 uses
  %i.c = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.c, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1
  %.not14 = icmp samesign eq i64 %2, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %2
  %.val = load ptr, ptr %3, align 8, !nonnull !3, !align !100, !noundef !3 ; 2 uses
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.66.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.55.0..sroa_idx.i.i19.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.66.0..sroa_idx.i.i21.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i.i23.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.d

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIB1a_NtB1J_4ExprEENCINvMNtB1e_5sliceSB18_7sort_byNCINvMs_NtNtB1L_12logical_plan7builderNtB3o_18LogicalPlanBuilder11window_planB2t_E0E0ECsdJxlLsGgtXr_16delta_benchmarks.exit, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIB1a_NtB1J_4ExprEENCINvMNtB1e_5sliceSB18_7sort_byNCINvMs_NtNtB1L_12logical_plan7builderNtB3o_18LogicalPlanBuilder11window_planB2t_E0E0ECsdJxlLsGgtXr_16delta_benchmarks.exit
  %.sroa.0.015 = phi ptr [ %i.e, %.lr.ph ], [ %i.an, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIB1a_NtB1J_4ExprEENCINvMNtB1e_5sliceSB18_7sort_byNCINvMs_NtNtB1L_12logical_plan7builderNtB3o_18LogicalPlanBuilder11window_planB2t_E0E0ECsdJxlLsGgtXr_16delta_benchmarks.exit ] ; 9 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.0.015, i64 -48 ; 3 uses
  %i.g = getelementptr i8, ptr %.sroa.0.015, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.h = getelementptr i8, ptr %.sroa.0.015, i64 16 ; 2 uses
  %.val14.i = load i64, ptr %i.h, align 8, !noundef !3 ; 3 uses
  %i.i = getelementptr i8, ptr %.sroa.0.015, i64 -40
  %.val15.i = load ptr, ptr %i.i, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.0.015, i64 -32
  %.val16.i = load i64, ptr %i.j, align 8, !noundef !3 ; 3 uses
  %.val.i.i = load ptr, ptr %.val, align 8        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw [144 x i8], ptr %.val13.i, i64 %.val14.i
  %i.l = getelementptr inbounds nuw [144 x i8], ptr %.val15.i, i64 %.val16.i
  call void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E3newCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %.val13.i, ptr noundef nonnull %i.k, ptr noundef nonnull %.val15.i, ptr noundef nonnull %i.l)
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.b, align 8 ; 2 uses
  %.sroa.55.0.copyload.i.i.i = load ptr, ptr %.sroa.55.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %.sroa.66.0.copyload.i.i.i = load i64, ptr %.sroa.66.0..sroa_idx.i.i.i, align 8 ; 3 uses
  %.sroa.8.0.copyload.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %.sroa.66.0.copyload.i.i.i, i64 %.sroa.8.0.copyload.i.i.i)
  %exitcond.not.i.i.i53.not = icmp ult i64 %.sroa.66.0.copyload.i.i.i, %.sroa.8.0.copyload.i.i.i
  br i1 %exitcond.not.i.i.i53.not, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.preheader, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i.i

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.preheader: ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i), "nonnull"(ptr %.sroa.55.0.copyload.i.i.i), "nonnull"(ptr %.val.i.i) ]
  br label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i

bb.e:                                             ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i
  %i.m = add i64 %.sroa.66.0.i.i.i54, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.m, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i.i, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.preheader, %bb.e
  %.sroa.66.0.i.i.i54 = phi i64 [ %i.m, %bb.e ], [ %.sroa.66.0.copyload.i.i.i, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.preheader ] ; 3 uses
  %i.n = getelementptr inbounds nuw [144 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.66.0.i.i.i54
  %i.o = getelementptr inbounds nuw [144 x i8], ptr %.sroa.55.0.copyload.i.i.i, i64 %.sroa.66.0.i.i.i54
  %i.p = tail call noundef nonnull align 8 ptr @_RNvMs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %.val.i.i)
  %i.q = tail call noundef i8 @_RNvNtCs8VI8w5SIoU4_15datafusion_expr5utils17compare_sort_expr(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.n, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p) ; 2 uses
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.e, label %_RNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSTINtNtB7_3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIBA_NtBS_4ExprEE7sort_byNCINvMs_NtNtBU_12logical_plan7builderNtB28_18LogicalPlanBuilder11window_planB1C_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.i

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i.i: ; preds = %bb.e, %bb.d
  %i.s = icmp ult i64 %.val16.i, 64051194700380388
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp ult i64 %.val14.i, 64051194700380388
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp samesign ult i64 %.val16.i, %.val14.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.u, label %bb.f, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIB1a_NtB1J_4ExprEENCINvMNtB1e_5sliceSB18_7sort_byNCINvMs_NtNtB1L_12logical_plan7builderNtB3o_18LogicalPlanBuilder11window_planB2t_E0E0ECsdJxlLsGgtXr_16delta_benchmarks.exit

_RNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSTINtNtB7_3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIBA_NtBS_4ExprEE7sort_byNCINvMs_NtNtBU_12logical_plan7builderNtB28_18LogicalPlanBuilder11window_planB1C_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i
  %i.v = icmp eq i8 %i.q, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.v, label %bb.f, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIB1a_NtB1J_4ExprEENCINvMNtB1e_5sliceSB18_7sort_byNCINvMs_NtNtB1L_12logical_plan7builderNtB3o_18LogicalPlanBuilder11window_planB2t_E0E0ECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.f:                                             ; preds = %_RNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSTINtNtB7_3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIBA_NtBS_4ExprEE7sort_byNCINvMs_NtNtBU_12logical_plan7builderNtB28_18LogicalPlanBuilder11window_planB1C_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.i, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %.sroa.026.0.copyload.i = load i64, ptr %.sroa.0.015, align 8 ; 2 uses
  %.sroa.427.0.copyload.i = load ptr, ptr %i.g, align 8 ; 5 uses
  %.sroa.528.0.copyload.i = load i64, ptr %i.h, align 8 ; 5 uses
  %.sroa.629.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.015, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.629.0..sroa_idx.i, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.015, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  %i.w = icmp eq ptr %i.f, %0
  br i1 %i.w, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i31._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.427.0.copyload.i) ]
  %i.x = getelementptr inbounds nuw [144 x i8], ptr %.sroa.427.0.copyload.i, i64 %.sroa.528.0.copyload.i
  %i.y = icmp ult i64 %.sroa.528.0.copyload.i, 64051194700380388
  br label %bb.g

bb.g:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.0.09.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.z, %.backedge.i ] ; 10 uses
  %i.z = getelementptr inbounds i8, ptr %.sroa.0.09.i, i64 -48 ; 3 uses
  %i.aa = getelementptr i8, ptr %.sroa.0.09.i, i64 -40
  %.val10.i = load ptr, ptr %i.aa, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.ab = getelementptr i8, ptr %.sroa.0.09.i, i64 -32
  %.val11.i = load i64, ptr %i.ab, align 8, !noundef !3 ; 3 uses
  %.val.i17.i = load ptr, ptr %.val, align 8      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr inbounds nuw [144 x i8], ptr %.val10.i, i64 %.val11.i
  invoke void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E3newCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.427.0.copyload.i, ptr noundef nonnull %i.x, ptr noundef nonnull %.val10.i, ptr noundef nonnull %i.ac)
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.g
  %.sroa.0.0.copyload.i.i18.i = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.55.0.copyload.i.i20.i = load ptr, ptr %.sroa.55.0..sroa_idx.i.i19.i, align 8 ; 2 uses
  %.sroa.66.0.copyload.i.i22.i = load i64, ptr %.sroa.66.0..sroa_idx.i.i21.i, align 8 ; 3 uses
  %.sroa.8.0.copyload.i.i24.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i23.i, align 8 ; 2 uses
  %umax.i.i25.i = tail call i64 @llvm.umax.i64(i64 %.sroa.66.0.copyload.i.i22.i, i64 %.sroa.8.0.copyload.i.i24.i)
  %exitcond.not.i.i27.i55.not = icmp ult i64 %.sroa.66.0.copyload.i.i22.i, %.sroa.8.0.copyload.i.i24.i
  br i1 %exitcond.not.i.i27.i55.not, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i28.i.preheader, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i31.i

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i28.i.preheader: ; preds = %.noexc.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i18.i), "nonnull"(ptr %.sroa.55.0.copyload.i.i20.i), "nonnull"(ptr %.val.i17.i) ]
  br label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i28.i

bb.h:                                             ; preds = %.noexc33.i
  %exitcond.not.i.i27.i = icmp eq i64 %i.ad, %umax.i.i25.i
  br i1 %exitcond.not.i.i27.i, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i31.i, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i28.i

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i28.i: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i28.i.preheader, %bb.h
  %.sroa.66.0.i.i26.i56 = phi i64 [ %i.ad, %bb.h ], [ %.sroa.66.0.copyload.i.i22.i, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i28.i.preheader ] ; 3 uses
  %i.ad = add i64 %.sroa.66.0.i.i26.i56, 1        ; 2 uses
  %i.ae = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %.val.i17.i)
          to label %.noexc32.i unwind label %.loopexit.i

.noexc32.i:                                       ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i28.i
  %i.af = getelementptr inbounds nuw [144 x i8], ptr %.sroa.55.0.copyload.i.i20.i, i64 %.sroa.66.0.i.i26.i56
  %i.ag = getelementptr inbounds nuw [144 x i8], ptr %.sroa.0.0.copyload.i.i18.i, i64 %.sroa.66.0.i.i26.i56
  %i.ah = invoke noundef i8 @_RNvNtCs8VI8w5SIoU4_15datafusion_expr5utils17compare_sort_expr(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.ag, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae)
          to label %.noexc33.i unwind label %.loopexit.i ; 2 uses

.noexc33.i:                                       ; preds = %.noexc32.i
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.h, label %bb.i

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i31.i: ; preds = %bb.h, %.noexc.i
  %i.aj = icmp ult i64 %.val11.i, 64051194700380388
  tail call void @llvm.assume(i1 %i.aj)
  tail call void @llvm.assume(i1 %i.y)
  %i.ak = icmp samesign ult i64 %.val11.i, %.sroa.528.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ak, label %.backedge.i, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i31._crit_edge.i

bb.i:                                             ; preds = %.noexc33.i
  %i.al = icmp eq i8 %i.ah, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.al, label %.backedge.i, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i31._crit_edge.i

.backedge.i:                                      ; preds = %bb.i, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i31.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.09.i, ptr noundef nonnull align 8 dereferenceable(48) %i.z, i64 48, i1 false)
  %i.am = icmp eq ptr %i.z, %0
  br i1 %i.am, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i31._crit_edge.i, label %bb.g

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i31._crit_edge.i: ; preds = %.backedge.i, %bb.i, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i31.i, %bb.f
  %.sroa.0.0.lcssa.i = phi ptr [ %0, %bb.f ], [ %0, %.backedge.i ], [ %.sroa.0.09.i, %bb.i ], [ %.sroa.0.09.i, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i31.i ] ; 4 uses
  store i64 %.sroa.026.0.copyload.i, ptr %.sroa.0.0.lcssa.i, align 8, !noalias !2644
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 8
  store ptr %.sroa.427.0.copyload.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !2644
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 16
  store i64 %.sroa.528.0.copyload.i, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !2644
  %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, i64 24, i1 false), !noalias !2644
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIB1a_NtB1J_4ExprEENCINvMNtB1e_5sliceSB18_7sort_byNCINvMs_NtNtB1L_12logical_plan7builderNtB3o_18LogicalPlanBuilder11window_planB2t_E0E0ECsdJxlLsGgtXr_16delta_benchmarks.exit

.loopexit.i:                                      ; preds = %.noexc32.i, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i28.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp.i:                             ; preds = %bb.g
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  store i64 %.sroa.026.0.copyload.i, ptr %.sroa.0.09.i, align 8, !noalias !2649
  %.sroa.5.0..sroa.0.0915.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i, i64 8
  store ptr %.sroa.427.0.copyload.i, ptr %.sroa.5.0..sroa.0.0915.sroa_idx.i, align 8, !noalias !2649
  %.sroa.6.0..sroa.0.0915.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i, i64 16
  store i64 %.sroa.528.0.copyload.i, ptr %.sroa.6.0..sroa.0.0915.sroa_idx.i, align 8, !noalias !2649
  %.sroa.7.0..sroa.0.0915.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa.0.0915.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, i64 24, i1 false), !noalias !2649
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIB1a_NtB1J_4ExprEENCINvMNtB1e_5sliceSB18_7sort_byNCINvMs_NtNtB1L_12logical_plan7builderNtB3o_18LogicalPlanBuilder11window_planB2t_E0E0ECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i.i, %_RNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSTINtNtB7_3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIBA_NtBS_4ExprEE7sort_byNCINvMs_NtNtBU_12logical_plan7builderNtB28_18LogicalPlanBuilder11window_planB1C_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.i, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i31._crit_edge.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.015, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.an, %i.d
  br i1 %.not, label %._crit_edge, label %bb.d
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMNtB1t_5sliceSB1m_11sort_by_keyjNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s_0E0ECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 288230376151711744) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i = alloca [24 x i8], align 8          ; 4 uses
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMNtB1f_5sliceSB18_11sort_by_keyjNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s_0E0ECsdJxlLsGgtXr_16delta_benchmarks.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMNtB1f_5sliceSB18_11sort_by_keyjNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s_0E0ECsdJxlLsGgtXr_16delta_benchmarks.exit
  %.sroa.0.05 = phi ptr [ %i.j, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMNtB1f_5sliceSB18_11sort_by_keyjNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s_0E0ECsdJxlLsGgtXr_16delta_benchmarks.exit ], [ %i.c, %.lr.ph.preheader ] ; 5 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -32 ; 4 uses
  %.val9.i = load i64, ptr %.sroa.0.05, align 8, !noundef !3 ; 3 uses
  %.val10.i = load i64, ptr %i.d, align 8, !noundef !3
  %i.e = icmp ult i64 %.val9.i, %.val10.i
  br i1 %i.e, label %bb.d, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMNtB1f_5sliceSB18_11sort_by_keyjNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s_0E0ECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.48.0..sroa_idx.i, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  %i.f = icmp eq ptr %i.d, %0
  br i1 %i.f, label %._crit_edge11, label %.lr.ph10

bb.e:                                             ; preds = %.lr.ph10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i8, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  %i.g = icmp eq ptr %i.h, %0
  br i1 %i.g, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i8 = phi ptr [ %i.h, %bb.e ], [ %i.d, %bb.d ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -32 ; 4 uses
  %.val8.i = load i64, ptr %i.h, align 8, !noundef !3
  %i.i = icmp ult i64 %.val9.i, %.val8.i
  br i1 %i.i, label %bb.e, label %._crit_edge11

._crit_edge11:                                    ; preds = %bb.e, %.lr.ph10, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i8, %.lr.ph10 ] ; 2 uses
  store i64 %.val9.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !2654
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !noalias !2654
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMNtB1f_5sliceSB18_11sort_by_keyjNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s_0E0ECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMNtB1f_5sliceSB18_11sort_by_keyjNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s_0E0ECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %.lr.ph, %._crit_edge11
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [1 x i8], align 1                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [1 x i8], align 1                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [1 x i8], align 1                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [1 x i8], align 1                ; 4 uses
  %i.ad = alloca [1 x i8], align 1                ; 4 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [4 x i8], align 4                ; 4 uses
  %i.ag = alloca [1 x i8], align 1                ; 4 uses
  %i.ah = alloca [1 x i8], align 1                ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [4 x i8], align 4                ; 4 uses
  %i.ak = alloca [1 x i8], align 1                ; 4 uses
  %i.al = alloca [8 x i8], align 8                ; 4 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %i.an = alloca [8 x i8], align 8                ; 4 uses
  %i.ao = alloca [8 x i8], align 8                ; 4 uses
  %i.ap = alloca [8 x i8], align 8                ; 4 uses
  %i.aq = alloca [8 x i8], align 8                ; 4 uses
  %i.ar = alloca [8 x i8], align 8                ; 4 uses
  %i.as = alloca [8 x i8], align 8                ; 4 uses
  %i.at = alloca [8 x i8], align 8                ; 4 uses
  %i.au = alloca [8 x i8], align 8                ; 4 uses
  %i.av = alloca [8 x i8], align 8                ; 4 uses
  %i.aw = alloca [8 x i8], align 8                ; 4 uses
  %i.ax = alloca [1 x i8], align 1                ; 4 uses
  %i.ay = alloca [8 x i8], align 8                ; 4 uses
  %i.az = alloca [1 x i8], align 1                ; 4 uses
end_hunk_3
begin_hunk_4_@_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2731
  store i8 %i.dj, ptr %i.ad, align 1, !noalias !2731
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef 1) #39, !noalias !2726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2731
  %i.dk = load ptr, ptr %i.dh, align 8, !alias.scope !2726, !noalias !2729, !nonnull !3, !noundef !3
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.dk, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #39, !noalias !2726, !inline_history !2713
  %i.dl = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !alias.scope !2726, !noalias !2729, !nonnull !3, !noundef !3
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.dm, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #39, !noalias !2726, !inline_history !2713
  %i.dn = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.do = load i32, ptr %i.dn, align 8, !range !2714, !alias.scope !2726, !noalias !2729, !noundef !3 ; 2 uses
  %i.dp = icmp ne i32 %i.do, 1114112              ; 2 uses
  %i.dq = zext i1 %i.dp to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2734
  store i64 %i.dq, ptr %i.ae, align 8, !noalias !2734
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef 8) #39, !noalias !2726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2734
  br i1 %i.dp, label %bb.l, label %_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit1

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2739
  store i32 %i.do, ptr %i.af, align 4, !noalias !2739
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef 4) #39, !noalias !2726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2739
  br label %_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit1

_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit1: ; preds = %bb.k, %bb.l
  %i.dr = getelementptr inbounds nuw i8, ptr %.tr, i64 29
  %i.ds = load i8, ptr %i.dr, align 1, !range !2707, !alias.scope !2726, !noalias !2729, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2742
  store i8 %i.ds, ptr %i.ag, align 1, !noalias !2742
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef 1) #39, !noalias !2726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2742
  br label %common.ret256

bb.m:                                             ; preds = %tailrecurse
  %i.dt = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2745)
  %i.du = load ptr, ptr %i.dt, align 8, !alias.scope !2745, !noalias !2748, !nonnull !3, !noundef !3
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.du, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #39, !noalias !2745, !inline_history !2750
  %i.dv = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.dw = load i8, ptr %i.dv, align 16, !range !2707, !alias.scope !2745, !noalias !2748, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2751
  store i8 %i.dw, ptr %i.ac, align 1, !noalias !2751
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef 1) #39, !noalias !2745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2751
  %i.dx = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.dy = load ptr, ptr %i.dx, align 16, !alias.scope !2745, !noalias !2748, !nonnull !3, !noundef !3
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.dy, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #39, !noalias !2745, !inline_history !2750
  br label %tailrecurse.backedge.sink.split

bb.n:                                             ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2754)
  %i.dz = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.ea = load ptr, ptr %i.dz, align 16, !alias.scope !2754, !noalias !2757, !align !245, !noundef !3 ; 2 uses
  %i.eb = icmp ne ptr %i.ea, null                 ; 2 uses
  %i.ec = zext i1 %i.eb to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2759
  store i64 %i.ec, ptr %i.z, align 8, !noalias !2759
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef 8) #39, !noalias !2754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2759
  br i1 %i.eb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ea, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #39, !noalias !2754, !inline_history !2764
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ed = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ee = load ptr, ptr %i.ed, align 16, !alias.scope !2754, !noalias !2757, !nonnull !3, !noundef !3
  %i.ef = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.eg = load i64, ptr %i.ef, align 8, !alias.scope !2754, !noalias !2757, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2765
  store i64 %i.eg, ptr %i.aa, align 8, !noalias !2765
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef 8) #39, !noalias !2754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2765
  tail call void @_RINvYTINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB4_ENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ee, i64 noundef %i.eg, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !2754, !inline_history !2764
  %i.eh = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.ei = load ptr, ptr %i.eh, align 8, !alias.scope !2754, !noalias !2757, !align !245, !noundef !3 ; 2 uses
  %i.ej = icmp ne ptr %i.ei, null                 ; 2 uses
  %i.ek = zext i1 %i.ej to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2770
  store i64 %i.ek, ptr %i.ab, align 8, !noalias !2770
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef 8) #39, !noalias !2754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2770
  br i1 %i.ej, label %tailrecurse.backedge, label %common.ret256

common.ret256:                                    ; preds = %bb.bc, %bb.bb, %bb.az, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.w, %bb.v, %bb.ao, %_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6_6ColumnNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit2, %bb.ae, %bb.ac, %_RINvXs2L_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit, %bb.s, %_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit1, %_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit, %bb.g, %bb.f, %_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6_6ColumnNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit, %bb.c, %bb.p, %bb.ad, %bb.ab, %bb.r, %bb.q
  ret void

bb.q:                                             ; preds = %tailrecurse
  %i.el = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2775)
  %i.em = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.en = load ptr, ptr %i.em, align 8, !alias.scope !2775, !noalias !2778, !nonnull !3, !noundef !3
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.en, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #39, !noalias !2775, !inline_history !2780
  tail call fastcc void @_RINvXs7_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.el, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #39, !inline_history !2780
  br label %common.ret256

bb.r:                                             ; preds = %tailrecurse
  %i.eo = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2781)
  %i.ep = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !2781, !noalias !2784, !nonnull !3, !noundef !3
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.eq, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #39, !noalias !2781, !inline_history !2786
  tail call fastcc void @_RINvXs7_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.eo, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #39, !inline_history !2786
  br label %common.ret256

bb.s:                                             ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2787)
  %i.er = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.es = load ptr, ptr %i.er, align 8, !alias.scope !2787, !noalias !2790, !nonnull !3, !noundef !3
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  tail call void @_RINvXs1_NtCs8VI8w5SIoU4_15datafusion_expr3udfNtB6_9ScalarUDFNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.et, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !2787
  %i.eu = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !alias.scope !2787, !noalias !2790, !nonnull !3, !noundef !3
  %i.ew = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !2787, !noalias !2790, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !2792
  store i64 %i.ex, ptr %i.bi, align 8, !noalias !2792
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bi, i64 noundef 8) #39, !noalias !2787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !2792
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.ev, i64 noundef %i.ex, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !2787
  br label %common.ret256

bb.t:                                             ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2797)
  %i.ey = getelementptr inbounds nuw i8, ptr %.tr, i64 72
  %i.ez = load ptr, ptr %i.ey, align 8, !alias.scope !2797, !noalias !2800, !nonnull !3, !noundef !3
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  tail call void @_RINvXs0_NtCs8VI8w5SIoU4_15datafusion_expr4udafNtB6_12AggregateUDFNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fa, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !2797, !inline_history !2802
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2803)
  %i.fb = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !alias.scope !2803, !noalias !2806, !nonnull !3, !noundef !3
  %i.fd = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.fe = load i64, ptr %i.fd, align 8, !alias.scope !2803, !noalias !2806, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2808
  store i64 %i.fe, ptr %i.y, align 8, !noalias !2808
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef 8) #39, !noalias !2803, !inline_history !2813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2808
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.fc, i64 noundef %i.fe, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !2803, !inline_history !2813
  %i.ff = getelementptr inbounds nuw i8, ptr %.tr, i64 64
  %i.fg = load i8, ptr %i.ff, align 8, !range !2707, !alias.scope !2803, !noalias !2806, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2814
  store i8 %i.fg, ptr %i.x, align 1, !noalias !2814
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef 1) #39, !noalias !2803, !inline_history !2813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2814
  %i.fh = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.fi = load ptr, ptr %i.fh, align 8, !alias.scope !2803, !noalias !2806, !align !245, !noundef !3 ; 2 uses
  %i.fj = icmp ne ptr %i.fi, null                 ; 2 uses
  %i.fk = zext i1 %i.fj to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2817
  store i64 %i.fk, ptr %i.w, align 8, !noalias !2817
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef 8) #39, !noalias !2803, !inline_history !2813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2817
  br i1 %i.fj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.fi, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #39, !noalias !2803, !inline_history !2813
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.fl = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.fm = load ptr, ptr %i.fl, align 8, !alias.scope !2803, !noalias !2806, !nonnull !3, !noundef !3
  %i.fn = getelementptr inbounds nuw i8, ptr %.tr, i64 48
  %i.fo = load i64, ptr %i.fn, align 8, !alias.scope !2803, !noalias !2806, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2822
  store i64 %i.fo, ptr %i.v, align 8, !noalias !2822
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef 8) #39, !noalias !2803, !inline_history !2813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2822
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.fm, i64 noundef %i.fo, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !2803, !inline_history !2813
  %i.fp = getelementptr inbounds nuw i8, ptr %.tr, i64 65
  %i.fq = load i8, ptr %i.fp, align 1, !range !2827, !alias.scope !2803, !noalias !2806, !noundef !3 ; 2 uses
  %i.fr = icmp ne i8 %i.fq, 2                     ; 2 uses
  %i.fs = zext i1 %i.fr to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2828
  store i64 %i.fs, ptr %i.u, align 8, !noalias !2828
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 8) #39, !noalias !2803, !inline_history !2813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2828
  br i1 %i.fr, label %bb.w, label %common.ret256

bb.w:                                             ; preds = %bb.v
  %i.ft = zext nneg i8 %i.fq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2833
  store i64 %i.ft, ptr %i.t, align 8, !noalias !2833
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef 8) #39, !noalias !2803, !inline_history !2813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2833
  br label %common.ret256

bb.x:                                             ; preds = %tailrecurse
  %i.fu = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !nonnull !3, !noundef !3 ; 17 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2840)
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 272
  %.val.i = load i64, ptr %i.fw, align 8, !range !1034, !alias.scope !2840, !noalias !2843, !noundef !3
  %i.fx = getelementptr i8, ptr %i.fv, i64 280
  %.val1.i = load ptr, ptr %i.fx, align 8, !alias.scope !2840, !noalias !2843 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2845
  store i64 %.val.i, ptr %i.h, align 8, !noalias !2845
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 8) #39, !noalias !2840
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ], !noalias !2840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2845
  %i.fy = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !noalias !2852, !nonnull !3, !noundef !3
  %i.ga = getelementptr inbounds nuw i8, ptr %.val1.i, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8, !noalias !2852, !nonnull !3, !align !100, !noundef !3 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gd = load i64, ptr %i.gc, align 8, !range !2853, !invariant.load !3, !noalias !2852
  %i.ge = add nsw i64 %i.gd, -1
  %i.gf = and i64 %i.ge, -16
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gb, i64 48
  %i.gj = load ptr, ptr %i.gi, align 8, !invariant.load !3, !noalias !2852, !nonnull !3
  tail call void %i.gj(ptr noundef nonnull %i.gh, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) @15) #39, !noalias !2840, !inline_history !2854
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2855)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fv, i64 184
  %i.gl = load ptr, ptr %i.gk, align 8, !alias.scope !2855, !noalias !2858, !nonnull !3, !noundef !3
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fv, i64 192
  %i.gn = load i64, ptr %i.gm, align 16, !alias.scope !2855, !noalias !2858, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2860
  store i64 %i.gn, ptr %i.s, align 8, !noalias !2860
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef 8) #39, !noalias !2855, !inline_history !2865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2860
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.gl, i64 noundef %i.gn, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !2855, !inline_history !2865
  %i.go = getelementptr inbounds nuw i8, ptr %i.fv, i64 208
  %i.gp = load ptr, ptr %i.go, align 16, !alias.scope !2855, !noalias !2858, !nonnull !3, !noundef !3
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fv, i64 216
  %i.gr = load i64, ptr %i.gq, align 8, !alias.scope !2855, !noalias !2858, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2866
  store i64 %i.gr, ptr %i.r, align 8, !noalias !2866
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef 8) #39, !noalias !2855, !inline_history !2865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2866
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.gp, i64 noundef %i.gr, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !2855, !inline_history !2865
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fv, i64 232
  %i.gt = load ptr, ptr %i.gs, align 8, !alias.scope !2855, !noalias !2858, !nonnull !3, !noundef !3
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fv, i64 240
  %i.gv = load i64, ptr %i.gu, align 16, !alias.scope !2855, !noalias !2858, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2871
  store i64 %i.gv, ptr %i.q, align 8, !noalias !2871
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef 8) #39, !noalias !2855, !inline_history !2865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2871
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.gt, i64 noundef %i.gv, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !2855, !inline_history !2865
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2876)
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fv, i64 161
  %i.gx = load i8, ptr %i.gw, align 1, !range !2827, !alias.scope !2879, !noalias !2880, !noundef !3
  %i.gy = zext nneg i8 %i.gx to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2882
  store i64 %i.gy, ptr %i.p, align 8, !noalias !2882
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef 8) #39, !noalias !2879, !inline_history !2865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2882
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2887)
  %i.gz = load i128, ptr %i.fv, align 16, !range !1329, !alias.scope !2890, !noalias !2891, !noundef !3 ; 2 uses
  %i.ha = trunc nuw nsw i128 %i.gz to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2893
  store i64 %i.ha, ptr %i.o, align 8, !noalias !2893
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef 8) #39, !noalias !2890, !inline_history !2865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2893
  %i.hb = icmp eq i128 %i.gz, 1
  br i1 %i.hb, label %_RINvXsj_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.x
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  tail call void @_RINvXs2_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB6_11ScalarValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.hc, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !inline_history !2865
  br label %_RINvXsj_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i

_RINvXsj_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %.sink.split.i.i.i, %bb.x
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fv, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2898)
  %i.he = load i128, ptr %i.hd, align 16, !range !1329, !alias.scope !2901, !noalias !2902, !noundef !3 ; 2 uses
  %i.hf = trunc nuw nsw i128 %i.he to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2904
  store i64 %i.hf, ptr %i.n, align 8, !noalias !2904
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef 8) #39, !noalias !2898, !inline_history !2865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2904
  %i.hg = icmp eq i128 %i.he, 1
  br i1 %i.hg, label %_RINvXsc_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_11WindowFrameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit.i, label %.sink.split.i1.i.i

.sink.split.i1.i.i:                               ; preds = %_RINvXsj_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fv, i64 96
  tail call void @_RINvXs2_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB6_11ScalarValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.hh, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !inline_history !2865
  br label %_RINvXsc_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_11WindowFrameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit.i

_RINvXsc_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_11WindowFrameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %.sink.split.i1.i.i, %_RINvXsj_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.fv, i64 160
  %i.hj = load i8, ptr %i.hi, align 16, !range !2707, !alias.scope !2879, !noalias !2880, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2909
  store i8 %i.hj, ptr %i.m, align 1, !noalias !2909
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef 1) #39, !inline_history !2865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2909
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fv, i64 248 ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !alias.scope !2855, !noalias !2858, !align !245, !noundef !3
  %i.hm = icmp ne ptr %i.hl, null                 ; 2 uses
  %i.hn = zext i1 %i.hm to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2912
  store i64 %i.hn, ptr %i.l, align 8, !noalias !2912
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef 8) #39, !inline_history !2865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2912
  br i1 %i.hm, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_RINvXsc_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_11WindowFrameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %i.ho = load ptr, ptr %i.hk, align 8, !alias.scope !2855, !noalias !2858, !nonnull !3, !noundef !3
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ho, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #39, !inline_history !2865
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_RINvXsc_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_11WindowFrameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %i.hp = getelementptr inbounds nuw i8, ptr %i.fv, i64 257 ; 2 uses
  %i.hq = load i8, ptr %i.hp, align 1, !range !2827, !alias.scope !2855, !noalias !2858, !noundef !3
  %i.hr = icmp ne i8 %i.hq, 2                     ; 2 uses
  %i.hs = zext i1 %i.hr to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2917
  store i64 %i.hs, ptr %i.k, align 8, !noalias !2917
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef 8) #39, !inline_history !2865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2917
  br i1 %i.hr, label %bb.aa, label %_RINvXs2L_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.aa:                                            ; preds = %bb.z
  %.val.i4 = load i8, ptr %i.hp, align 1, !range !2707, !alias.scope !2855, !noalias !2858, !noundef !3
  %i.ht = zext nneg i8 %.val.i4 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2922
  store i64 %i.ht, ptr %i.j, align 8, !noalias !2922
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef 8) #39, !inline_history !2865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2922
  br label %_RINvXs2L_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvXs2L_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.z, %bb.aa
  %i.hu = getelementptr inbounds nuw i8, ptr %i.fv, i64 256
  %i.hv = load i8, ptr %i.hu, align 16, !range !2707, !alias.scope !2855, !noalias !2858, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2929
  store i8 %i.hv, ptr %i.i, align 1, !noalias !2929
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 1) #39, !inline_history !2865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2929
  br label %common.ret256

bb.ab:                                            ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2932)
  %i.hw = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.hx = load ptr, ptr %i.hw, align 8, !alias.scope !2932, !noalias !2935, !nonnull !3, !noundef !3
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.hx, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #39, !noalias !2932, !inline_history !2937
  %i.hy = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8, !alias.scope !2932, !noalias !2935, !nonnull !3, !noundef !3
  %i.ia = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ib = load i64, ptr %i.ia, align 8, !alias.scope !2932, !noalias !2935, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2938
  store i64 %i.ib, ptr %i.f, align 8, !noalias !2938
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 8) #39, !noalias !2932
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2938
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.hz, i64 noundef %i.ib, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !2932, !inline_history !2937
  %i.ic = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.id = load i8, ptr %i.ic, align 8, !range !2707, !alias.scope !2932, !noalias !2935, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2943
  store i8 %i.id, ptr %i.g, align 1, !noalias !2943
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 1) #39, !noalias !2932
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2943
  br label %common.ret256

bb.ac:                                            ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2946)
  %i.ie = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.if = load ptr, ptr %i.ie, align 8, !alias.scope !2946, !noalias !2949, !nonnull !3, !noundef !3
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.ig, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #39, !noalias !2946, !inline_history !2951
  %i.ih = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8, !alias.scope !2946, !noalias !2949, !nonnull !3, !noundef !3
  %i.ij = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ik = load i64, ptr %i.ij, align 8, !alias.scope !2946, !noalias !2949, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2952
  store i64 %i.ik, ptr %i.d, align 8, !noalias !2952
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8) #39, !noalias !2946, !inline_history !2951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2952
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.ii, i64 noundef %i.ik, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !2946, !inline_history !2951
  %i.il = getelementptr inbounds nuw i8, ptr %.tr, i64 64
  %i.im = load i8, ptr %i.il, align 8, !range !2707, !alias.scope !2957, !noalias !2960, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2962
  store i8 %i.im, ptr %i.e, align 1, !noalias !2962
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 1) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2962
  br label %common.ret256

bb.ad:                                            ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2965)
  %i.in = getelementptr inbounds nuw i8, ptr %.tr, i64 64
  %i.io = load ptr, ptr %i.in, align 8, !alias.scope !2965, !noalias !2968, !nonnull !3, !noundef !3
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.io, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #39, !noalias !2965, !inline_history !2970
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2971)
  %i.ip = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.iq = load ptr, ptr %i.ip, align 8, !alias.scope !2971, !noalias !2974, !nonnull !3, !noundef !3
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.ir, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #39, !noalias !2971, !inline_history !2976
  %i.is = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.it = load ptr, ptr %i.is, align 8, !alias.scope !2971, !noalias !2974, !nonnull !3, !noundef !3
  %i.iu = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.iv = load i64, ptr %i.iu, align 8, !alias.scope !2971, !noalias !2974, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2977
  store i64 %i.iv, ptr %i.b, align 8, !noalias !2977
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #39, !noalias !2971, !inline_history !2976
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2977
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.it, i64 noundef %i.iv, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !2971, !inline_history !2976
  %i.iw = getelementptr inbounds nuw i8, ptr %.tr, i64 72
  %i.ix = load i8, ptr %i.iw, align 8, !range !2707, !alias.scope !2965, !noalias !2968, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2982
  store i8 %i.ix, ptr %i.c, align 1, !noalias !2982
end_hunk_4
begin_hunk_5_@_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  store i64 %i.cf, ptr %i.al, align 8, !noalias !3828
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef 8) #39, !noalias !3817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !3828
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.cd, i64 noundef %i.cf, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !3817, !inline_history !3822
  %i.cg = getelementptr inbounds nuw i8, ptr %.tr, i64 64
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !3817, !noalias !3820, !nonnull !3, !noundef !3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ci, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !3817, !inline_history !3822
  br label %common.ret

bb.g:                                             ; preds = %tailrecurse
  %i.cj = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3833)
  %i.ck = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !3833, !noalias !3836, !nonnull !3, !noundef !3
  %i.cm = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !3833, !noalias !3836, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !3838
  store i64 %i.cn, ptr %i.ah, align 8, !noalias !3838
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef 8) #39, !noalias !3833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !3838
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.cl, i64 noundef %i.cn, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !3833, !inline_history !3843
  %i.co = getelementptr inbounds nuw i8, ptr %.tr, i64 48
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !3833, !noalias !3836, !nonnull !3, !noundef !3
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.cq, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #39, !noalias !3833, !inline_history !3843
  %i.cr = load i64, ptr %i.cj, align 8, !range !1034, !alias.scope !3833, !noalias !3836, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !3844
  store i64 %i.cr, ptr %i.ai, align 8, !noalias !3844
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef 8) #39, !noalias !3833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !3844
  %i.cs = trunc nuw i64 %i.cr to i1
  br i1 %i.cs, label %bb.h, label %common.ret

bb.h:                                             ; preds = %bb.g
  %i.ct = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !3833, !noalias !3836, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !3849
  store i64 %i.cu, ptr %i.aj, align 8, !noalias !3849
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef 8) #39, !noalias !3833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !3849
  br label %common.ret

bb.i:                                             ; preds = %tailrecurse
  %i.cv = getelementptr inbounds nuw i8, ptr %.tr, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3852)
  %i.cw = getelementptr inbounds nuw i8, ptr %.tr, i64 152
  %i.cx = load ptr, ptr %i.cw, align 8, !alias.scope !3852, !noalias !3855, !nonnull !3, !noundef !3
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.cy, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #39, !noalias !3852, !inline_history !3857
  %i.cz = getelementptr inbounds nuw i8, ptr %.tr, i64 160
  %i.da = load ptr, ptr %i.cz, align 16, !alias.scope !3852, !noalias !3855, !nonnull !3, !noundef !3
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.db, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #39, !noalias !3852, !inline_history !3857
  %i.dc = getelementptr inbounds nuw i8, ptr %.tr, i64 136
  %i.dd = load ptr, ptr %i.dc, align 8, !alias.scope !3852, !noalias !3855, !nonnull !3, !noundef !3
  %i.de = getelementptr inbounds nuw i8, ptr %.tr, i64 144
  %i.df = load i64, ptr %i.de, align 16, !alias.scope !3852, !noalias !3855, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !3858
  store i64 %i.df, ptr %i.ac, align 8, !noalias !3858
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef 8) #39, !noalias !3852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !3858
  tail call void @_RINvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprB4_ENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.dd, i64 noundef %i.df, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !3852, !inline_history !3857
  %i.dg = load i64, ptr %i.cv, align 16, !range !1954, !alias.scope !3852, !noalias !3855, !noundef !3
  %i.dh = icmp ne i64 %i.dg, 37                   ; 2 uses
  %i.di = zext i1 %i.dh to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !3863
  store i64 %i.di, ptr %i.ad, align 8, !noalias !3863
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef 8) #39, !noalias !3852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !3863
  br i1 %i.dh, label %bb.j, label %_RINvXs2O_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB7_4JoinNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(176) %i.cv, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #39, !inline_history !3857
  br label %_RINvXs2O_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB7_4JoinNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvXs2O_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB7_4JoinNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.i, %bb.j
  %i.dj = getelementptr inbounds nuw i8, ptr %.tr, i64 178
  %i.dk = load i8, ptr %i.dj, align 2, !range !3868, !alias.scope !3852, !noalias !3855, !noundef !3
  %i.dl = zext nneg i8 %i.dk to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !3869
  store i64 %i.dl, ptr %i.ae, align 8, !noalias !3869
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef 8) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !3869
  %i.dm = getelementptr inbounds nuw i8, ptr %.tr, i64 176
  %i.dn = load i8, ptr %i.dm, align 16, !range !2707, !alias.scope !3852, !noalias !3855, !noundef !3
  %i.do = zext nneg i8 %i.dn to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !3874
  store i64 %i.do, ptr %i.af, align 8, !noalias !3874
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef 8) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !3874
  %i.dp = getelementptr inbounds nuw i8, ptr %.tr, i64 168
  %i.dq = load ptr, ptr %i.dp, align 8, !alias.scope !3852, !noalias !3855, !nonnull !3, !noundef !3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.dr, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !inline_history !3857
  %i.ds = getelementptr inbounds nuw i8, ptr %.tr, i64 177
  %i.dt = load i8, ptr %i.ds, align 1, !range !2707, !alias.scope !3852, !noalias !3855, !noundef !3
  %i.du = zext nneg i8 %i.dt to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !3879
  store i64 %i.du, ptr %i.ag, align 8, !noalias !3879
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef 8) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !3879
  br label %common.ret

bb.k:                                             ; preds = %tailrecurse
  %i.dv = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3884)
  %i.dw = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8, !alias.scope !3884, !noalias !3887, !nonnull !3, !noundef !3
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.dy, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #39, !noalias !3884, !inline_history !3889
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3890)
  %i.dz = load i64, ptr %i.dv, align 8, !range !295, !alias.scope !3890, !noalias !3893, !noundef !3 ; 3 uses
  %i.ea = icmp ne i64 %i.dz, -9223372036854775807
  tail call void @llvm.assume(i1 %i.ea)
  %i.eb = xor i64 %i.dz, -9223372036854775808
  %i.ec = icmp slt i64 %i.dz, 0
  %i.ed = select i1 %i.ec, i64 %i.eb, i64 1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !3895
  store i64 %i.ed, ptr %i.ab, align 8, !noalias !3895
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef 8) #39, !noalias !3890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !3895
  switch i64 %i.ed, label %bb.l [
    i64 0, label %bb.m
    i64 1, label %bb.n
    i64 2, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ee = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !alias.scope !3890, !noalias !3893, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !3900
  store i64 %i.ef, ptr %i.aa, align 8, !noalias !3900
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef 8) #39, !noalias !3890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !3900
  br label %common.ret

bb.n:                                             ; preds = %bb.k
  %i.eg = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !alias.scope !3890, !noalias !3893, !nonnull !3, !noundef !3
  %i.ei = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ej = load i64, ptr %i.ei, align 8, !alias.scope !3890, !noalias !3893, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !3903
  store i64 %i.ej, ptr %i.z, align 8, !noalias !3903
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef 8) #39, !noalias !3890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !3903
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.eh, i64 noundef %i.ej, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !3890
  %i.ek = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.el = load i64, ptr %i.ek, align 8, !alias.scope !3890, !noalias !3893, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !3908
  store i64 %i.el, ptr %i.y, align 8, !noalias !3908
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef 8) #39, !noalias !3890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3908
  br label %common.ret

bb.o:                                             ; preds = %bb.k
  %i.em = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !alias.scope !3890, !noalias !3893, !nonnull !3, !noundef !3
  %i.eo = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.ep = load i64, ptr %i.eo, align 8, !alias.scope !3890, !noalias !3893, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !3911
  store i64 %i.ep, ptr %i.x, align 8, !noalias !3911
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef 8) #39, !noalias !3890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3911
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.en, i64 noundef %i.ep, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !3890
  br label %common.ret

bb.p:                                             ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3916)
  %i.eq = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !alias.scope !3916, !noalias !3919, !nonnull !3, !noundef !3
  %i.es = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !3916, !noalias !3919, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !3921
  store i64 %i.et, ptr %i.ar, align 8, !noalias !3921
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef 8) #39, !noalias !3916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !3921
  tail call void @_RINvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.er, i64 noundef %i.et, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !3916
  %i.eu = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.ev = load ptr, ptr %i.eu, align 8, !alias.scope !3916, !noalias !3919, !nonnull !3, !noundef !3
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ew, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !3916
  br label %common.ret

bb.q:                                             ; preds = %tailrecurse
  %i.ex = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @_RINvXsh_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ex, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %common.ret

bb.r:                                             ; preds = %tailrecurse
  %i.ey = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %.val = load ptr, ptr %i.ey, align 8            ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %.val1 = load i8, ptr %i.ez, align 8, !range !2707, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !3926
  store i8 %.val1, ptr %i.aq, align 1, !noalias !3926
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aq, i64 noundef 1) #39
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !3926
  %i.fa = getelementptr inbounds nuw i8, ptr %.val, i64 16
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fa, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %common.ret

bb.s:                                             ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3931)
  %i.fb = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.fc = load ptr, ptr %i.fb, align 8, !alias.scope !3931, !noalias !3934, !nonnull !3, !noundef !3
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.fd, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #39, !noalias !3931, !inline_history !2990
  %i.fe = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !alias.scope !3931, !noalias !3934, !nonnull !3, !noundef !3
  %i.fg = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.fh = load i64, ptr %i.fg, align 8, !alias.scope !3931, !noalias !3934, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !3936
  store i64 %i.fh, ptr %i.w, align 8, !noalias !3936
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef 8) #39, !noalias !3931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3936
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.ff, i64 noundef %i.fh, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !3931, !inline_history !2990
  br label %common.ret

bb.t:                                             ; preds = %tailrecurse
  %i.fi = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3941)
  %i.fj = getelementptr inbounds nuw i8, ptr %.tr, i64 64
  %i.fk = load ptr, ptr %i.fj, align 8, !alias.scope !3941, !noalias !3944, !nonnull !3, !noundef !3
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.fl, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #39, !noalias !3941, !inline_history !3946
  tail call fastcc void @_RINvXsi_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB6_14TableReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.fi, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #39, !inline_history !3946
  %i.fm = getelementptr inbounds nuw i8, ptr %.tr, i64 72
  %i.fn = load ptr, ptr %i.fm, align 8, !alias.scope !3941, !noalias !3944, !nonnull !3, !noundef !3
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fo, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !3941, !inline_history !3946
  br label %common.ret

bb.u:                                             ; preds = %tailrecurse
  %i.fp = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3947)
  %i.fq = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.fr = load ptr, ptr %i.fq, align 16, !alias.scope !3947, !noalias !3950, !align !245, !noundef !3 ; 2 uses
  %i.fs = icmp ne ptr %i.fr, null                 ; 2 uses
  %i.ft = zext i1 %i.fs to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !3952
  store i64 %i.ft, ptr %i.u, align 8, !noalias !3952
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 8) #39, !noalias !3947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3952
  br i1 %i.fs, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.fr, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #39, !noalias !3947, !inline_history !3957
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.fu = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8, !alias.scope !3947, !noalias !3950, !align !245, !noundef !3 ; 2 uses
  %i.fw = icmp ne ptr %i.fv, null                 ; 2 uses
  %i.fx = zext i1 %i.fw to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !3958
  store i64 %i.fx, ptr %i.v, align 8, !noalias !3958
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef 8) #39, !noalias !3947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3958
  br i1 %i.fw, label %bb.x, label %tailrecurse.backedge

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.fv, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #39, !noalias !3947, !inline_history !3957
  br label %tailrecurse.backedge

bb.y:                                             ; preds = %tailrecurse
  %i.fy = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3963)
  %i.fz = load i64, ptr %i.fy, align 8, !range !3966, !alias.scope !3963, !noalias !3967, !noundef !3 ; 3 uses
  %i.ga = icmp ne i64 %i.fz, -9223372036854775804
  tail call void @llvm.assume(i1 %i.ga)
  %i.gb = xor i64 %i.fz, -9223372036854775808
  %i.gc = icmp slt i64 %i.fz, 0
  %i.gd = select i1 %i.gc, i64 %i.gb, i64 4       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !3969
  store i64 %i.gd, ptr %i.t, align 8, !noalias !3969
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef 8) #39, !noalias !3963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3969
  switch i64 %i.gd, label %bb.z [
    i64 0, label %bb.aa
    i64 1, label %bb.ab
    i64 2, label %bb.ac
    i64 3, label %bb.ad
    i64 4, label %bb.ae
    i64 5, label %bb.af
    i64 6, label %bb.ag
  ]

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.ge = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %.val.i = load i8, ptr %i.ge, align 8, !range !2707, !alias.scope !3963, !noalias !3967, !noundef !3
  %i.gf = getelementptr inbounds nuw i8, ptr %.tr, i64 17
  %.val1.i = load i8, ptr %i.gf, align 1, !alias.scope !3963, !noalias !3967
  tail call fastcc void @_RINvXsx_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB6_16TransactionStartNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(i8 %.val.i, i8 %.val1.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #39, !noalias !3963, !inline_history !3974
  br label %common.ret

bb.ab:                                            ; preds = %bb.y
  %i.gg = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %.val2.i = load i8, ptr %i.gg, align 8, !range !2707, !alias.scope !3963, !noalias !3967, !noundef !3
  %i.gh = getelementptr inbounds nuw i8, ptr %.tr, i64 17
  %.val3.i = load i8, ptr %i.gh, align 1, !alias.scope !3963, !noalias !3967
  tail call fastcc void @_RINvXsE_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB6_14TransactionEndNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(i8 %.val2.i, i8 %.val3.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #39, !noalias !3963, !inline_history !3974
  br label %common.ret

bb.ac:                                            ; preds = %bb.y
  %i.gi = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  tail call fastcc void @_RINvXsL_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB6_11SetVariableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gi, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #39, !inline_history !3974
  br label %common.ret

bb.ad:                                            ; preds = %bb.y
  %i.gj = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %.val4.i = load ptr, ptr %i.gj, align 8, !alias.scope !3963, !noalias !3967, !nonnull !3, !noundef !3
  %i.gk = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %.val5.i = load i64, ptr %i.gk, align 8, !alias.scope !3963, !noalias !3967, !noundef !3
  tail call fastcc void @_RINvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB6_13ResetVariableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr %.val4.i, i64 %.val5.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #39, !noalias !3963, !inline_history !3974
  br label %common.ret

bb.ae:                                            ; preds = %bb.y
  tail call fastcc void @_RINvXsZ_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB6_7PrepareNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fy, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #39, !inline_history !3974
  br label %common.ret

bb.af:                                            ; preds = %bb.y
  %i.gl = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  tail call fastcc void @_RINvXs16_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB7_7ExecuteNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gl, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #39, !inline_history !3974
  br label %common.ret

bb.ag:                                            ; preds = %bb.y
  %i.gm = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %.val6.i = load ptr, ptr %i.gm, align 8, !alias.scope !3963, !noalias !3967, !nonnull !3, !noundef !3
  %i.gn = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %.val7.i = load i64, ptr %i.gn, align 8, !alias.scope !3963, !noalias !3967, !noundef !3
  tail call fastcc void @_RINvXs1d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB7_10DeallocateNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr %.val6.i, i64 %.val7.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #39, !noalias !3963, !inline_history !3974
  br label %common.ret

bb.ah:                                            ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3975)
  %i.go = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.gp = load ptr, ptr %i.go, align 8, !alias.scope !3975, !noalias !3978, !nonnull !3, !noundef !3
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.gq, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !3975
  %i.gr = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8, !alias.scope !3975, !noalias !3978, !nonnull !3, !noundef !3
  %i.gt = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.gu = load i64, ptr %i.gt, align 8, !alias.scope !3975, !noalias !3978, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !3980
  store i64 %i.gu, ptr %i.ap, align 8, !noalias !3980
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef 8) #39, !noalias !3975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !3980
  tail call void @_RINvYINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.gs, i64 noundef %i.gu, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !3975
  br label %common.ret

bb.ai:                                            ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3985)
  %i.gv = getelementptr inbounds nuw i8, ptr %.tr, i64 48
  %i.gw = load i8, ptr %i.gv, align 8, !range !2707, !alias.scope !3985, !noalias !3988, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3990
  store i8 %i.gw, ptr %i.p, align 1, !noalias !3990
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef 1) #39, !noalias !3985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3990
  %i.gx = getelementptr inbounds nuw i8, ptr %.tr, i64 50
  %i.gy = load i8, ptr %i.gx, align 2, !range !3479, !alias.scope !3985, !noalias !3988, !noundef !3
  %i.gz = zext nneg i8 %i.gy to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3993
  store i64 %i.gz, ptr %i.q, align 8, !noalias !3993
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef 8) #39, !noalias !3985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3993
  %i.ha = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.hb = load ptr, ptr %i.ha, align 8, !alias.scope !3985, !noalias !3988, !nonnull !3, !noundef !3
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.hc, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #39, !noalias !3985, !inline_history !3998
  %i.hd = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.he = load ptr, ptr %i.hd, align 8, !alias.scope !3985, !noalias !3988, !nonnull !3, !noundef !3
  %i.hf = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !3985, !noalias !3988, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3999
  store i64 %i.hg, ptr %i.r, align 8, !noalias !3999
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef 8) #39, !noalias !3985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3999
  tail call void @_RINvYNtNtCsjhHCjzi9uUI_17datafusion_common7display15StringifiedPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.he, i64 noundef %i.hg, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !3985, !inline_history !3998
  %i.hh = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.hi = load ptr, ptr %i.hh, align 8, !alias.scope !3985, !noalias !3988, !nonnull !3, !noundef !3
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.hj, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !3985, !inline_history !3998
  %i.hk = getelementptr inbounds nuw i8, ptr %.tr, i64 49
  %i.hl = load i8, ptr %i.hk, align 1, !range !2707, !alias.scope !3985, !noalias !3988, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !4004
  store i8 %i.hl, ptr %i.s, align 1, !noalias !4004
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef 1) #39, !noalias !3985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !4004
  br label %common.ret

bb.aj:                                            ; preds = %tailrecurse
  %i.hm = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4007)
  %i.hn = getelementptr inbounds nuw i8, ptr %.tr, i64 24
end_hunk_5
begin_hunk_6_@_RNvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_15IdleNotifiedSetINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEE11insert_idleCsdJxlLsGgtXr_16delta_benchmarks:bb.a
  store i64 1, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 1, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !4737
  %i.k = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #40, !noalias !4737 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %bb.j, !prof !28

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #44
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !4740
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.e, label %common.resume

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot5MutexINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j) #41
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable

common.resume:                                    ; preds = %bb.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECsdJxlLsGgtXr_16delta_benchmarks.exit, %bb.e, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.m, %bb.d ], [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECsdJxlLsGgtXr_16delta_benchmarks.exit ], [ %.pn, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.o, %bb.p, %bb.i
  %.pn = phi { ptr, i32 } [ %i.t, %bb.i ], [ %i.ac, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4745)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4748)
  %i.q = load ptr, ptr %i.b, align 8, !alias.scope !4751, !nonnull !3, !noundef !3
  %i.r = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !4751
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %common.resume

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECsdJxlLsGgtXr_16delta_benchmarks.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #41
          to label %common.resume unwind label %bb.s

bb.i:                                             ; preds = %bb.r, %bb.k
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.j:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.k, ptr %i.b, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 6 uses
  %i.v = cmpxchg weak ptr %i.u, i8 0, i8 1 acquire monotonic, align 1
  %i.w = extractvalue { i8, i1 } %i.v, 1
  br i1 %i.w, label %bb.l, label %bb.k, !prof !4

bb.k:                                             ; preds = %bb.j
  %i.x = invoke noundef zeroext i1 @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.u, i64 undef, i32 noundef 1000000000)
          to label %bb.l unwind label %bb.i       ; 0 uses

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.y = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.z = atomicrmw add ptr %i.y, i64 1 monotonic, align 8
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  invoke void @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEB13_E10push_frontCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull %i.y)
          to label %bb.q unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = cmpxchg ptr %i.u, i8 1, i8 0 release monotonic, align 1
  %i.ae = extractvalue { i8, i1 } %i.ad, 1
  br i1 %i.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.p, !prof !4

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.u, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.s

bb.q:                                             ; preds = %bb.m
  %i.af = cmpxchg ptr %i.u, i8 1, i8 0 release monotonic, align 1
  %i.ag = extractvalue { i8, i1 } %i.af, 1
  br i1 %i.ag, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECsdJxlLsGgtXr_16delta_benchmarks.exit13, label %bb.r, !prof !4

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.u, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECsdJxlLsGgtXr_16delta_benchmarks.exit13 unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECsdJxlLsGgtXr_16delta_benchmarks.exit13: ; preds = %bb.q, %bb.r
  %i.ah = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = insertvalue { ptr, ptr } poison, ptr %i.ah, 0
  %i.aj = insertvalue { ptr, ptr } %i.ai, ptr %0, 1
  ret { ptr, ptr } %i.aj

bb.s:                                             ; preds = %bb.p, %bb.h
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_15IdleNotifiedSetINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEE12pop_notifiedCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 8 uses
  %i.g = cmpxchg weak ptr %i.f, i8 0, i8 1 acquire monotonic, align 1
  %i.h = extractvalue { i8, i1 } %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.c, !prof !4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.o, %bb.n, %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECsdJxlLsGgtXr_16delta_benchmarks.exit20
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.ar, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECsdJxlLsGgtXr_16delta_benchmarks.exit20 ], [ null, %bb.n ], [ null, %bb.o ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %0, 1
  ret { ptr, ptr } %i.j

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef zeroext i1 @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.f, i64 undef, i32 noundef 1000000000) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !align !100, !noundef !3 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br i1 %.not, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre31 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noundef !3 ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !noundef !3
  %i.r = icmp eq ptr %i.p, %i.q
  %.not11 = icmp eq ptr %.pre, %i.m
  %or.cond = select i1 %i.r, i1 %.not11, i1 false
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.s = phi ptr [ %.pre31, %._crit_edge ], [ %i.p, %bb.e ]
  %i.t = load ptr, ptr %.pre, align 8, !nonnull !3, !noundef !3
  %i.u = invoke { ptr, ptr } %i.t(ptr noundef %i.s)
          to label %bb.i unwind label %bb.h       ; 2 uses

bb.g:                                             ; preds = %bb.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsdJxlLsGgtXr_16delta_benchmarks.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.w = invoke noundef ptr @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEB13_E8pop_backCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v)
          to label %bb.l unwind label %bb.h       ; 5 uses

.noexc18:                                         ; preds = %bb.s, %bb.r
  br i1 %.sroa.08.1, label %.thread, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECsdJxlLsGgtXr_16delta_benchmarks.exit22

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.i:                                             ; preds = %bb.f
  %i.y = extractvalue { ptr, ptr } %i.u, 0        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  %2 = extractvalue { ptr, ptr } %i.u, 1          ; 2 uses
  %.val16 = load ptr, ptr %i.l, align 8, !align !100, !noundef !3 ; 2 uses
  %i.z = icmp eq ptr %.val16, null
  br i1 %i.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr i8, ptr %i.e, i64 64      ; 2 uses
  %.val17 = load ptr, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.val16, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !3, !noundef !3
  invoke void %i.ac(ptr noundef %.val17)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.k, !inline_history !4752

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  store ptr %i.y, ptr %i.l, align 8
  store ptr %2, ptr %i.aa, align 8
  br label %.thread

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.i, %bb.j
  store ptr %i.y, ptr %i.l, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr %2, ptr %i.ae, align 8
  br label %bb.g

bb.l:                                             ; preds = %bb.g
  %.not12 = icmp eq ptr %i.w, null
  br i1 %.not12, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.w, ptr %i.a, align 8
  %i.af = atomicrmw add ptr %i.w, i64 1 monotonic, align 8
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %bb.q, label %bb.p

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ah = cmpxchg ptr %i.f, i8 1, i8 0 release monotonic, align 1
  %i.ai = extractvalue { i8, i1 } %i.ah, 1
  br i1 %i.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.o, !prof !4

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.f, i1 noundef zeroext false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.p:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  invoke void @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEB13_E10push_frontCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull %i.w)
          to label %bb.t unwind label %bb.r

bb.q:                                             ; preds = %bb.m
  tail call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.u, %bb.p
  %.sroa.08.1 = phi i1 [ false, %bb.u ], [ true, %bb.p ]
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4753)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4756)
  %i.al = load ptr, ptr %i.a, align 8, !alias.scope !4759, !nonnull !3, !noundef !3
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !4759
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.s, label %.noexc18

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #41
          to label %.noexc18 unwind label %bb.v

bb.t:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store i8 1, ptr %i.ao, align 1
  %i.ap = cmpxchg ptr %i.f, i8 1, i8 0 release monotonic, align 1
  %i.aq = extractvalue { i8, i1 } %i.ap, 1
  br i1 %i.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECsdJxlLsGgtXr_16delta_benchmarks.exit20, label %bb.u, !prof !4

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.f, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECsdJxlLsGgtXr_16delta_benchmarks.exit20 unwind label %bb.r

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECsdJxlLsGgtXr_16delta_benchmarks.exit20: ; preds = %bb.t, %bb.u
  %i.ar = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.v:                                             ; preds = %bb.w, %bb.s
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECsdJxlLsGgtXr_16delta_benchmarks.exit22: ; preds = %.thread, %bb.w, %.noexc18
  %.pn29 = phi { ptr, i32 } [ %i.ak, %.noexc18 ], [ %.pn30, %bb.w ], [ %.pn30, %.thread ]
  resume { ptr, i32 } %.pn29

.thread:                                          ; preds = %bb.k, %bb.h, %.noexc18
  %.pn30 = phi { ptr, i32 } [ %i.ak, %.noexc18 ], [ %i.ad, %bb.k ], [ %i.x, %bb.h ] ; 2 uses
  %i.at = cmpxchg ptr %i.f, i8 1, i8 0 release monotonic, align 1
  %i.au = extractvalue { i8, i1 } %i.at, 1
  br i1 %i.au, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECsdJxlLsGgtXr_16delta_benchmarks.exit22, label %bb.w, !prof !4

bb.w:                                             ; preds = %.thread
  invoke void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.f, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECsdJxlLsGgtXr_16delta_benchmarks.exit22 unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_20EntryInOneOfTheListsINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEE6removeCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %0, ptr noalias noundef align 8 dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !3
  %i.f = add i64 %i.e, -1
  store i64 %i.f, ptr %i.d, align 8
  %i.g = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 6 uses
  %i.i = cmpxchg weak ptr %i.h, i8 0, i8 1 acquire monotonic, align 1
  %i.j = extractvalue { i8, i1 } %i.i, 1
  br i1 %i.j, label %bb.e, label %bb.d, !prof !4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.i, %bb.j, %bb.c
  %.pn = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.v, %bb.j ], [ %i.v, %bb.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4760)
  call void @llvm.experimental.noalias.scope.decl(metadata !4763)
  call void @llvm.experimental.noalias.scope.decl(metadata !4766)
  %i.k = load ptr, ptr %i.b, align 8, !alias.scope !4769, !nonnull !3, !noundef !3
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !4769
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set20EntryInOneOfTheListsINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECsdJxlLsGgtXr_16delta_benchmarks.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set20EntryInOneOfTheListsINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.r

bb.c:                                             ; preds = %bb.p, %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.d:                                             ; preds = %bb.a
  %i.o = invoke noundef zeroext i1 @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.h, i64 undef, i32 noundef 1000000000)
          to label %bb.e unwind label %bb.c       ; 0 uses

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.p = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !range !2827, !noundef !3
  store i8 2, ptr %i.q, align 1
  switch i8 %i.r, label %default.unreachable12 [
    i8 0, label %bb.h
    i8 1, label %bb.f
    i8 2, label %bb.g
  ], !prof !4770

default.unreachable12:                            ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #44
          to label %bb.o unwind label %bb.i

bb.h:                                             ; preds = %bb.e, %bb.f
  %.sink = phi i64 [ 40, %bb.f ], [ 24, %bb.e ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.u = invoke noundef ptr @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEB13_E6removeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull %i.t)
          to label %bb.k unwind label %bb.i       ; 3 uses

bb.i:                                             ; preds = %bb.m, %bb.n, %bb.h, %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = cmpxchg ptr %i.h, i8 1, i8 0 release monotonic, align 1
  %i.x = extractvalue { i8, i1 } %i.w, 1
  br i1 %i.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.j, !prof !4

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.h, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.r

bb.k:                                             ; preds = %bb.h
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.n, label %bb.l, !prof !28

bb.l:                                             ; preds = %bb.k
  store ptr %i.u, ptr %i.a, align 8
  %i.y = atomicrmw sub ptr %i.u, i64 1 release, align 8, !noalias !4771
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtBL_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.m:                                             ; preds = %bb.l
end_hunk_6
begin_hunk_7_@_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEE14insert_no_growCsdJxlLsGgtXr_16delta_benchmarks:bb.a
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.a ]
  %i.q = phi i64 [ %i.r, %.lr.ph.i ], [ 0, %bb.a ]
  %i.r = add i64 %i.q, 16                         ; 2 uses
  %i.s = add i64 %i.r, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.s, %.val3             ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.t, align 1, !noalias !4790
  %i.u = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.v = bitcast <16 x i1> %i.u to i16            ; 2 uses
  %.not.i.i = icmp eq i16 %i.v, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !108

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.b, %._crit_edge.i
  %i.w = phi i8 [ %.pre, %bb.b ], [ %i.j, %._crit_edge.i ]
  %.sroa.0.0.i5.i = phi i64 [ %i.p, %bb.b ], [ %i.h, %._crit_edge.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i
  %i.y = lshr i64 %1, 57
  %i.z = trunc nuw nsw i64 %i.y to i8             ; 2 uses
  %i.aa = add i64 %.sroa.0.0.i5.i, -16
  %i.ab = and i64 %i.aa, %.val3
  store i8 %i.z, ptr %i.x, align 1
  %i.ac = getelementptr i8, ptr %.val, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  store i8 %i.z, ptr %i.ad, align 1
  %i.ae = sub nsw i64 0, %.sroa.0.0.i5.i
  %i.af = getelementptr inbounds [64 x i8], ptr %.val, i64 %i.ae ; 2 uses
  %i.ag = and i8 %i.w, 1
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false)
  %i.ak = load <2 x i64>, ptr %i.ai, align 8
  %i.al = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ah, i64 0
  %i.am = sub <2 x i64> %i.ak, %i.al
  store <2 x i64> %i.am, ptr %i.ai, align 8
  ret ptr %i.af
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEE16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef 64, i64 noundef %1, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCs4Y5ccqZjUYD_25datafusion_common_runtime8join_setINtB4_7JoinSetTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE3newCsdJxlLsGgtXr_16delta_benchmarks() unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvMNtNtCskQDtHcQtBkN_5tokio4task8join_setINtB2_7JoinSetTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE3newCsdJxlLsGgtXr_16delta_benchmarks()
  ret { ptr, i64 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericStringTypelEE5valueCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !noundef !3
  %i.f = lshr i64 %i.e, 2                         ; 2 uses
  %i.g = add nsw i64 %i.f, -1                     ; 2 uses
  %i.h = icmp ult i64 %1, %i.g
  br i1 %i.h, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.g, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @29, ptr %i.i, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCsdJxlLsGgtXr_16delta_benchmarks, ptr %.sroa.46.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @31, ptr %i.j, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCsdJxlLsGgtXr_16delta_benchmarks, ptr %.sroa.410.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.b, ptr %i.k, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.414.0..sroa_idx, align 8
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @32, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #43
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4796)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !4796, !noundef !3 ; 2 uses
  %i.n = add nuw nsw i64 %1, 1                    ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.f
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n
  %i.q = load i32, ptr %i.p, align 4, !noalias !4796, !noundef !3
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %1
  %i.s = load i32, ptr %i.r, align 4, !noalias !4796, !noundef !3 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !4796, !noundef !3
  %i.v = sext i32 %i.s to i64
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %i.v
  %i.x = sub i32 %i.q, %i.s                       ; 2 uses
  %i.y = icmp sgt i32 %i.x, -1
  %i.z = zext nneg i32 %i.x to i64
  tail call void @llvm.assume(i1 %i.y)
  %i.aa = insertvalue { ptr, i64 } poison, ptr %i.w, 0
  %i.ab = insertvalue { ptr, i64 } %i.aa, i64 %i.z, 1
  ret { ptr, i64 } %i.ab
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCskQDtHcQtBkN_5tokio4util12sharded_listINtB4_11ShardedListINtNtNtB8_7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB19_9scheduler14current_thread6HandleEENtNtB17_4core6HeaderE10lock_shardCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !align !100, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load i64, ptr %i.c, align 8, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !range !4314, !noundef !3 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i64, ptr %i.j, align 8, !noundef !3
  %i.l = and i64 %i.k, %i.f                       ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.i
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.l ; 3 uses
  %i.o = cmpxchg weak ptr %i.n, i8 0, i8 1 acquire monotonic, align 1
  %i.p = extractvalue { i8, i1 } %i.o, 1
  br i1 %i.p, label %_RNvMs_NtNtCskQDtHcQtBkN_5tokio4util12sharded_listINtB4_11ShardedListINtNtNtB8_7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB19_9scheduler14current_thread6HandleEENtNtB17_4core6HeaderE11shard_innerCsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.n, i64 undef, i32 noundef 1000000000) ; 0 uses
  br label %_RNvMs_NtNtCskQDtHcQtBkN_5tokio4util12sharded_listINtB4_11ShardedListINtNtNtB8_7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB19_9scheduler14current_thread6HandleEENtNtB17_4core6HeaderE11shard_innerCsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvMs_NtNtCskQDtHcQtBkN_5tokio4util12sharded_listINtB4_11ShardedListINtNtNtB8_7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB19_9scheduler14current_thread6HandleEENtNtB17_4core6HeaderE11shard_innerCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.a, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.n, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.s, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.v, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCskQDtHcQtBkN_5tokio4util12sharded_listINtB4_11ShardedListINtNtNtB8_7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB19_9scheduler12multi_thread6handle6HandleEENtNtB17_4core6HeaderE10lock_shardCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !align !100, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load i64, ptr %i.c, align 8, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !range !4314, !noundef !3 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i64, ptr %i.j, align 8, !noundef !3
  %i.l = and i64 %i.k, %i.f                       ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.i
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.l ; 3 uses
  %i.o = cmpxchg weak ptr %i.n, i8 0, i8 1 acquire monotonic, align 1
  %i.p = extractvalue { i8, i1 } %i.o, 1
  br i1 %i.p, label %_RNvMs_NtNtCskQDtHcQtBkN_5tokio4util12sharded_listINtB4_11ShardedListINtNtNtB8_7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB19_9scheduler12multi_thread6handle6HandleEENtNtB17_4core6HeaderE11shard_innerCsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.n, i64 undef, i32 noundef 1000000000) ; 0 uses
  br label %_RNvMs_NtNtCskQDtHcQtBkN_5tokio4util12sharded_listINtB4_11ShardedListINtNtNtB8_7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB19_9scheduler12multi_thread6handle6HandleEENtNtB17_4core6HeaderE11shard_innerCsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvMs_NtNtCskQDtHcQtBkN_5tokio4util12sharded_listINtB4_11ShardedListINtNtNtB8_7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB19_9scheduler12multi_thread6handle6HandleEENtNtB17_4core6HeaderE11shard_innerCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.a, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.n, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.s, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.v, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr nofree readonly captures(none) %.40.val, i64 noundef range(i64 32, 225) %2, ptr noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val16 = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val17 = load i64, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %i.c = add i64 %.val17, 1                       ; 6 uses
  %.not5.i = icmp eq i64 %i.c, 0
  br i1 %.not5.i, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, label %.lr.ph.i

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val16, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val16, i64 %i.c, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4
  %i.f = and i64 %i.c, 15
  %.not10.i.i.i = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g  ; 4 uses
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.b

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.0.07.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.t, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod38 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.i = getelementptr inbounds nuw i8, ptr %.val16, i64 %.sroa.0.07.i.epil.init ; 2 uses
  %i.j = load <16 x i8>, ptr %i.i, align 16, !noalias !4799
  %.lobit.i.i.epil = ashr <16 x i8> %i.j, splat (i8 7)
  %i.k = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.l = or <2 x i64> %i.k, splat (i64 -9187201950435737472)
  store <2 x i64> %i.l, ptr %i.i, align 16, !noalias !4802
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %. = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16)
  %.27 = tail call i64 @llvm.umin.i64(i64 %i.c, i64 16)
  %i.o = getelementptr inbounds nuw i8, ptr %.val16, i64 %.
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %.val16, i64 %.27, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.m, align 8
  store i64 %2, ptr %i.n, align 8
  store ptr %0, ptr %i.a, align 8
  br label %.lr.ph

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.0.07.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.t, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %.val16, i64 %.sroa.0.07.i ; 2 uses
  %i.q = load <16 x i8>, ptr %i.p, align 16, !noalias !4799
  %.lobit.i.i = ashr <16 x i8> %i.q, splat (i8 7)
  %i.r = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.s = or <2 x i64> %i.r, splat (i64 -9187201950435737472)
  store <2 x i64> %i.s, ptr %i.p, align 16, !noalias !4802
  %i.t = add i64 %.sroa.0.07.i, 32                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val16, i64 %.sroa.0.07.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.w = load <16 x i8>, ptr %i.v, align 16, !noalias !4799
  %.lobit.i.i.1 = ashr <16 x i8> %i.w, splat (i8 7)
  %i.x = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.y = or <2 x i64> %i.x, splat (i64 -9187201950435737472)
  store <2 x i64> %i.y, ptr %i.v, align 16, !noalias !4802
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.k
  %.pre = load i64, ptr %i.b, align 8             ; 2 uses
  %.pre13 = add i64 %.pre, 1
  %i.z = lshr i64 %.pre13, 3
  %i.aa = mul nuw i64 %i.z, 7
  br label %._crit_edge

._crit_edge:                                      ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.aa, %._crit_edge.loopexit ], [ 0, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ]
  %i.ab = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ] ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 8
  %.sroa.04.0 = select i1 %i.ac, i64 %i.ab, i64 %.pre-phi
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !3
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = sub i64 %.sroa.04.0, %i.ae
  store i64 %i.ag, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.k
  %.sroa.0.06 = phi i64 [ %i.ah, %bb.k ], [ 0, %._crit_edge.i ] ; 10 uses
  %i.ah = add nuw i64 %.sroa.0.06, 1
  %i.ai = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.sroa.0.06
  %i.ak = load i8, ptr %i.aj, align 1, !noundef !3
  %.not = icmp eq i8 %i.ak, -128
  br i1 %.not, label %bb.c, label %bb.k

bb.c:                                             ; preds = %.lr.ph
  %.neg = xor i64 %.sroa.0.06, -1
  %.neg12 = mul i64 %2, %.neg
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 %.neg12 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.l, %bb.c
  %i.am = invoke noundef i64 %.40.val(ptr noundef nonnull %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.06)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %bb.l, %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.a) #38
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 7 uses
  %.val15 = load i64, ptr %i.b, align 8, !noundef !3 ; 6 uses
  %.sroa.0.07.i18 = and i64 %.val15, %i.am        ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i18
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ao, align 1, !noalias !4805
  %i.ap = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.aq = bitcast <16 x i1> %i.ap to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i9.i, label %.lr.ph.i20, label %._crit_edge.i19, !prof !104

._crit_edge.i19:                                  ; preds = %.lr.ph.i20, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i18, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i20 ]
  %.lcssa.i = phi i16 [ %i.aq, %bb.f ], [ %i.bi, %.lr.ph.i20 ]
  %i.ar = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.as = zext nneg i16 %i.ar to i64
  %i.at = add i64 %.sroa.0.0.lcssa.i, %i.as
  %i.au = and i64 %i.at, %.val15                  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noundef !3
  %i.ax = icmp sgt i8 %i.aw, -1
  br i1 %i.ax, label %bb.g, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !28

bb.g:                                             ; preds = %._crit_edge.i19
  %i.ay = load <16 x i8>, ptr %.val, align 16, !noalias !4808
  %i.az = icmp slt <16 x i8> %i.ay, zeroinitializer
  %i.ba = bitcast <16 x i1> %i.az to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.ba, 0
  %i.bb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ba, i1 true)
  %i.bc = zext nneg i16 %i.bb to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i20:                                       ; preds = %bb.f, %.lr.ph.i20
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i20 ], [ %.sroa.0.07.i18, %bb.f ]
  %i.bd = phi i64 [ %i.be, %.lr.ph.i20 ], [ 0, %bb.f ]
  %i.be = add i64 %i.bd, 16                       ; 2 uses
  %i.bf = add i64 %i.be, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.bf, %.val15           ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bg, align 1, !noalias !4805
  %i.bh = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.bi = bitcast <16 x i1> %i.bh to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.bi, 0
  br i1 %.not.i.i, label %.lr.ph.i20, label %._crit_edge.i19, !prof !108

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.g, %._crit_edge.i19
  %.sroa.0.0.i5.i = phi i64 [ %i.bc, %bb.g ], [ %i.au, %._crit_edge.i19 ] ; 4 uses
  %i.bj = sub i64 %.sroa.0.06, %.sroa.0.07.i18
  %i.bk = sub i64 %.sroa.0.0.i5.i, %.sroa.0.07.i18
  %i.bl = xor i64 %i.bk, %i.bj
  %.unshifted = and i64 %i.bl, %.val15
  %i.bm = icmp ult i64 %.unshifted, 16
  br i1 %i.bm, label %bb.i, label %bb.h, !prof !4

bb.h:                                             ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.neg13 = xor i64 %.sroa.0.0.i5.i, -1
  %.neg14 = mul i64 %2, %.neg13
  %i.bn = getelementptr inbounds i8, ptr %.val, i64 %.neg14 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !3
  %i.bq = lshr i64 %i.am, 57
  %i.br = trunc nuw nsw i64 %i.bq to i8           ; 2 uses
  %i.bs = add i64 %.sroa.0.0.i5.i, -16
  %i.bt = and i64 %i.bs, %.val15
  store i8 %i.br, ptr %i.bo, align 1
  %i.bu = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.bv = getelementptr i8, ptr %i.bu, i64 %i.bt
  %i.bw = getelementptr i8, ptr %i.bv, i64 16
  store i8 %i.br, ptr %i.bw, align 1
  %i.bx = icmp eq i8 %i.bp, -1
  br i1 %i.bx, label %bb.j, label %bb.l

bb.i:                                             ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.by = lshr i64 %i.am, 57
  %i.bz = trunc nuw nsw i64 %i.by to i8           ; 2 uses
  %i.ca = add i64 %.sroa.0.06, -16
  %i.cb = and i64 %.val15, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.06
  store i8 %i.bz, ptr %i.cc, align 1
  %i.cd = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ce = getelementptr i8, ptr %i.cd, i64 %i.cb
  %i.cf = getelementptr i8, ptr %i.ce, i64 16
  store i8 %i.bz, ptr %i.cf, align 1
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.cg = add i64 %.sroa.0.06, -16
  %i.ch = load i64, ptr %i.b, align 8, !noundef !3
  %i.ci = and i64 %i.ch, %i.cg
  %i.cj = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.sroa.0.06
  store i8 -1, ptr %i.ck, align 1
  %i.cl = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.cm = getelementptr i8, ptr %i.cl, i64 %i.ci
  %i.cn = getelementptr i8, ptr %i.cm, i64 16
  store i8 -1, ptr %i.cn, align 1
end_hunk_7
begin_hunk_8_@_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks:bb.a

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.i
  %i.af = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %.sroa.6.020.i, %bb.h ] ; 2 uses
  %i.ag = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %.sroa.013.019.i, %bb.h ]
  %i.ah = load <16 x i8>, ptr %i.af, align 16, !noalias !5580
  %i.ai = icmp sgt <16 x i8> %i.ah, splat (i8 -1)
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -2304 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.ai to i16     ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %bb.h
  %.sroa.013.1.i = phi ptr [ %.sroa.013.019.i, %bb.h ], [ %i.aj, %.lr.ph.i.i ] ; 2 uses
  %.sroa.6.1.i = phi ptr [ %.sroa.6.020.i, %bb.h ], [ %i.ak, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %.sroa.10.021.i, %bb.h ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.al = add i16 %.lcssa.i.i, -1
  %i.am = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = and i16 %i.al, %.lcssa.i.i
  %i.ap = sub nsw i64 0, %i.an
  %i.aq = getelementptr inbounds [144 x i8], ptr %.sroa.013.1.i, i64 %i.ap ; 3 uses
  %i.ar = add i64 %.sroa.14.022.i, -1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5570
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -144
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 16 captures(none) dereferenceable(144) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.as)
          to label %.noexc.i unwind label %bb.g, !noalias !5570

.noexc.i:                                         ; preds = %.loopexit.i
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 -112
  invoke fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.ac, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.at)
          to label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %bb.i, !noalias !5570

bb.i:                                             ; preds = %.noexc.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.a) #38
          to label %.body.i unwind label %bb.j, !noalias !5570

bb.j:                                             ; preds = %bb.i
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !5570
  unreachable

_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %.noexc.i
  %i.aw = ptrtoint ptr %i.aq to i64
  %i.ax = sub i64 %i.ad, %i.aw
  %i.ay = sdiv exact i64 %i.ax, 144               ; 2 uses
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = getelementptr inbounds [144 x i8], ptr %i.q, i64 %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.bb, ptr noundef nonnull align 16 dereferenceable(144) %i.a, i64 144, i1 false), !noalias !5570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5570
  %i.bc = add nsw i64 %i.ay, 1
  %i.bd = icmp eq i64 %i.ar, 0
  br i1 %i.bd, label %.loopexit, label %bb.h

bb.k:                                             ; preds = %.body.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !5570
  unreachable

bb.l:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %.body.i
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.b, ptr noalias nonnull readonly captures(address, read_provenance) poison, i64 noundef 144, i64 noundef 16)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.m

.loopexit:                                        ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i, %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  store i64 %i.w, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !5565, !noalias !5568
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !5568, !noalias !5565, !noundef !3
  store i64 %i.bg, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !5565, !noalias !5568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.m:                                             ; preds = %.body
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEENtNtB2F_5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @9, i64 32, i1 false)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.d, i64 24) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %bb.e, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.g = extractvalue { i64, i1 } %i.e, 0
  %i.h = add nuw i64 %i.g, 8
  %i.i = and i64 %i.h, -16                        ; 3 uses
  %i.j = add i64 %i.b, 17                         ; 2 uses
  %i.k = add i64 %i.j, %i.i                       ; 5 uses
  %i.l = icmp ult i64 %i.k, %i.i
  %i.m = icmp ugt i64 %i.k, 9223372036854775792
  %or.cond.i.i = or i1 %i.l, %i.m
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !196

_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit, label %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i

_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !5585
  %i.o = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !5585 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @12, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #43, !noalias !5585
  unreachable

bb.f:                                             ; preds = %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef %i.k) #44, !noalias !5585
  unreachable

_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i
  %.sroa.0.0.i.i11.i.i = phi ptr [ %i.o, %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i11.i.i, i64 %i.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5590)
  %i.r = load ptr, ptr %1, align 8, !alias.scope !5590, !noalias !5593, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.q, ptr nonnull align 1 %i.r, i64 %i.j, i1 false), !noalias !5595
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5596)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !5599, !noalias !5600, !noundef !3 ; 3 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.v = load <16 x i8>, ptr %i.r, align 16, !noalias !5602
  %i.w = icmp sgt <16 x i8> %i.v, splat (i8 -1)
  %i.x = bitcast <16 x i1> %i.w to i16
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.z = ptrtoint ptr %i.r to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.i
  %.sroa.14.023.i = phi i64 [ %i.t, %.lr.ph.i ], [ %i.ap, %bb.i ]
  %.sroa.10.022.i = phi i16 [ %i.x, %.lr.ph.i ], [ %i.ar, %bb.i ] ; 2 uses
  %.sroa.6.021.i = phi ptr [ %i.y, %.lr.ph.i ], [ %.sroa.6.1.i, %bb.i ] ; 2 uses
  %.sroa.013.020.i = phi ptr [ %i.r, %.lr.ph.i ], [ %.sroa.013.1.i, %bb.i ] ; 2 uses
  %.not9.i.i = icmp eq i16 %.sroa.10.022.i, 0
  br i1 %.not9.i.i, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.aa = phi ptr [ %i.af, %.lr.ph.i.i ], [ %.sroa.6.021.i, %bb.g ] ; 2 uses
  %i.ab = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %.sroa.013.020.i, %bb.g ]
  %i.ac = load <16 x i8>, ptr %i.aa, align 16, !noalias !5605
  %i.ad = icmp sgt <16 x i8> %i.ac, splat (i8 -1)
  %i.ae = getelementptr inbounds i8, ptr %i.ab, i64 -384 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.ad to i16     ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %bb.g
  %.sroa.013.1.i = phi ptr [ %.sroa.013.020.i, %bb.g ], [ %i.ae, %.lr.ph.i.i ] ; 2 uses
  %.sroa.6.1.i = phi ptr [ %.sroa.6.021.i, %bb.g ], [ %i.af, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %.sroa.10.022.i, %bb.g ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.ag = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.ah = zext nneg i16 %i.ag to i64
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr inbounds [24 x i8], ptr %.sroa.013.1.i, i64 %i.ai ; 4 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5610)
  %.val.i.i = load i8, ptr %i.ak, align 1, !range !2707, !alias.scope !5610, !noalias !5613, !noundef !3
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -16
  %.val1.i.i = load ptr, ptr %i.al, align 8, !alias.scope !5610, !noalias !5613, !nonnull !3, !noundef !3 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 -8
  %.val2.i.i = load ptr, ptr %i.am, align 8, !alias.scope !5610, !noalias !5613 ; 2 uses
  %i.an = atomicrmw add ptr %.val1.i.i, i64 1 monotonic, align 8, !noalias !5615
  %i.ao = icmp slt i64 %i.an, 0
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.loopexit.i
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %.loopexit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  %i.ap = add i64 %.sroa.14.023.i, -1             ; 2 uses
  %i.aq = add i16 %.lcssa.i.i, -1
  %i.ar = and i16 %i.aq, %.lcssa.i.i
  %i.as = ptrtoint ptr %i.aj to i64
  %i.at = sub i64 %i.z, %i.as
  %.neg.i = sdiv exact i64 %i.at, -24
  %i.au = getelementptr inbounds [24 x i8], ptr %i.q, i64 %.neg.i ; 3 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -24
  store i8 %.val.i.i, ptr %i.av, align 8, !noalias !5595
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.au, i64 -16
  store ptr %.val1.i.i, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !5595
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.au, i64 -8
  store ptr %.val2.i.i, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !5595
  %i.aw = icmp eq i64 %i.ap, 0
  br i1 %i.aw, label %.loopexit, label %bb.g

bb.j:                                             ; preds = %.loopexit, %bb.b
  ret void

.loopexit:                                        ; preds = %bb.i, %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !5590, !noalias !5593, !noundef !3
  store ptr %i.q, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ay, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.t, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @9, i64 32, i1 false)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = add i64 %i.d, 1                          ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 48) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { i64, i1 } %i.g, 0         ; 3 uses
  %i.j = add i64 %i.d, 17                         ; 2 uses
  %i.k = add i64 %i.j, %i.i                       ; 5 uses
  %i.l = icmp ult i64 %i.k, %i.i
  %i.m = icmp ugt i64 %i.k, 9223372036854775792
  %or.cond.i.i = or i1 %i.l, %i.m
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !196

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !5616
  %i.o = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !5616 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !5616
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.r = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.k), !noalias !5616
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.r, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.o, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.i
  %i.t = icmp ult i64 %i.d, 8
  %i.u = lshr i64 %i.f, 3
  %i.v = mul nuw nsw i64 %i.u, 7
  %.sroa.07.0.i.i = select i1 %i.t, i64 %i.d, i64 %i.v
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.j, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.d, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.s, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5626)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5629)
  %i.w = load ptr, ptr %1, align 8, !alias.scope !5631, !noalias !5632, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.w, i64 %.pre-phi, i1 false), !noalias !5633
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !5631, !noalias !5632, !noundef !3 ; 3 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.aa = load <16 x i8>, ptr %i.w, align 16, !noalias !5634
  %i.ab = icmp sgt <16 x i8> %i.aa, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.af = ptrtoint ptr %i.w to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.k, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ag, %bb.i ], [ %i.aw, %bb.k ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1W_EEENCNvMse_B1D_B1A_15clone_from_impl0EECsdJxlLsGgtXr_16delta_benchmarks(i64 %.sroa.012.028.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #38
          to label %.body unwind label %bb.m, !noalias !5631

bb.j:                                             ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %.lr.ph.i.i
  %.sroa.012.028.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.be, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ]
  %.sroa.1015.027.i.i = phi i64 [ %i.y, %.lr.ph.i.i ], [ %i.at, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ]
  %.sroa.013.026.i.i = phi ptr [ %i.w, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.6.025.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.814.024.i.i = phi i16 [ %i.ac, %.lr.ph.i.i ], [ %i.aq, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.024.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.ah = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.sroa.6.025.i.i, %bb.j ] ; 2 uses
  %i.ai = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.sroa.013.026.i.i, %bb.j ]
  %i.aj = load <16 x i8>, ptr %i.ah, align 16, !noalias !5639
  %i.ak = icmp sgt <16 x i8> %i.aj, splat (i8 -1)
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 -768 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ak to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.025.i.i, %bb.j ], [ %i.am, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.026.i.i, %bb.j ], [ %i.al, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.024.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.an = add i16 %.lcssa.i.i.i, -1
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = and i16 %i.an, %.lcssa.i.i.i
  %i.ar = sub nsw i64 0, %i.ap
  %i.as = getelementptr inbounds [48 x i8], ptr %.sroa.013.1.i.i, i64 %i.ar ; 3 uses
  %i.at = add i64 %.sroa.1015.027.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5633
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 -48
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.au)
          to label %.noexc.i.i unwind label %bb.i, !noalias !5633

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.av = getelementptr inbounds i8, ptr %i.as, i64 -24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.av)
          to label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %bb.k, !noalias !5633

bb.k:                                             ; preds = %.noexc.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #38
          to label %.body.i.i unwind label %bb.l, !noalias !5633

bb.l:                                             ; preds = %bb.k
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !5633
  unreachable

_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %.noexc.i.i
  %i.ay = ptrtoint ptr %i.as to i64
  %i.az = sub i64 %i.af, %i.ay
  %i.ba = sdiv exact i64 %i.az, 48                ; 2 uses
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = getelementptr inbounds [48 x i8], ptr %.sroa.0.0, i64 %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bd, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !5633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5633
  %i.be = add nsw i64 %i.ba, 1
  %i.bf = icmp eq i64 %i.at, 0
  br i1 %i.bf, label %.loopexit, label %bb.j
end_hunk_8
begin_hunk_9_@_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks:bb.a
bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.r = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.k), !noalias !6162
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.r, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.o, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.i
  %i.t = icmp ult i64 %i.d, 8
  %i.u = lshr i64 %i.f, 3
  %i.v = mul nuw nsw i64 %i.u, 7
  %.sroa.07.0.i.i = select i1 %i.t, i64 %i.d, i64 %i.v
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.j, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.d, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.s, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6175)
  %i.w = load ptr, ptr %1, align 8, !alias.scope !6177, !noalias !6178, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.w, i64 %.pre-phi, i1 false), !noalias !6179
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !6177, !noalias !6178, !noundef !3 ; 3 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.aa = load <16 x i8>, ptr %i.w, align 16, !noalias !6180
  %i.ab = icmp sgt <16 x i8> %i.aa, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ae = ptrtoint ptr %i.w to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEEENCNvMse_B1D_B1A_15clone_from_impl0EECsdJxlLsGgtXr_16delta_benchmarks(i64 %.sroa.012.026.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #38
          to label %.body unwind label %bb.k, !noalias !6177

bb.j:                                             ; preds = %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %.lr.ph.i.i
  %.sroa.012.026.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ba, %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ]
  %.sroa.1015.025.i.i = phi i64 [ %i.y, %.lr.ph.i.i ], [ %i.ar, %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ]
  %.sroa.013.024.i.i = phi ptr [ %i.w, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.6.023.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.814.022.i.i = phi i16 [ %i.ac, %.lr.ph.i.i ], [ %i.at, %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.022.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.ag = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.sroa.6.023.i.i, %bb.j ] ; 2 uses
  %i.ah = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.sroa.013.024.i.i, %bb.j ]
  %i.ai = load <16 x i8>, ptr %i.ag, align 16, !noalias !6185
  %i.aj = icmp sgt <16 x i8> %i.ai, splat (i8 -1)
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 -1792 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.aj to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.023.i.i, %bb.j ], [ %i.al, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.024.i.i, %bb.j ], [ %i.ak, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.022.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.am = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = getelementptr inbounds [112 x i8], ptr %.sroa.013.1.i.i, i64 %i.ao ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6179
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -112
  invoke fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(112) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.aq) #39
          to label %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %bb.i, !noalias !6179

_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %.loopexit.i.i
  %i.ar = add i64 %.sroa.1015.025.i.i, -1         ; 2 uses
  %i.as = add i16 %.lcssa.i.i.i, -1
  %i.at = and i16 %i.as, %.lcssa.i.i.i
  %i.au = ptrtoint ptr %i.ap to i64
  %i.av = sub i64 %i.ae, %i.au
  %i.aw = sdiv exact i64 %i.av, 112               ; 2 uses
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = getelementptr inbounds [112 x i8], ptr %.sroa.0.0, i64 %i.ax
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.az, ptr noundef nonnull align 16 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !6179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6179
  %i.ba = add nsw i64 %i.aw, 1
  %i.bb = icmp eq i64 %i.ar, 0
  br i1 %i.bb, label %.loopexit, label %bb.j

bb.k:                                             ; preds = %bb.i
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !6179
  unreachable

bb.l:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #38
          to label %bb.n unwind label %bb.m

.loopexit:                                        ; preds = %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  store i64 %i.y, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !6178, !noalias !6177
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !6177, !noalias !6178, !noundef !3
  store i64 %i.be, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !6178, !noalias !6177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.m:                                             ; preds = %.body
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.n:                                             ; preds = %.body
  resume { ptr, i32 } %i.af
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 5 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @9, i64 32, i1 false)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1                          ; 2 uses
  %i.e = icmp ugt i64 %i.d, 1152921504606846975
  br i1 %i.e, label %bb.e, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.f = shl nuw i64 %i.d, 4                      ; 3 uses
  %i.g = add nsw i64 %i.b, 17                     ; 2 uses
  %i.h = add i64 %i.g, %i.f                       ; 5 uses
  %i.i = icmp ult i64 %i.h, %i.f
  %i.j = icmp ugt i64 %i.h, 9223372036854775792
  %or.cond.i.i = or i1 %i.i, %i.j
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !196

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !6190
  %i.l = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !6190 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6190
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.o = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.h), !noalias !6190
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.o, %bb.f ], [ %i.n, %bb.e ]
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %bb.j

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.l, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.f
  br label %bb.j

bb.i:                                             ; preds = %bb.j, %bb.b
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  %.pre-phi = phi i64 [ %i.g, %bb.h ], [ %.pre, %bb.g ]
  %.sroa.09.0 = phi ptr [ %i.p, %bb.h ], [ null, %bb.g ] ; 4 uses
  %.sroa.5.0 = phi i64 [ %i.b, %bb.h ], [ %.sroa.7.0.ph.i, %bb.g ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6195)
  %i.q = load ptr, ptr %1, align 8, !alias.scope !6195, !noalias !6198, !nonnull !3, !noundef !3 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.09.0, ptr nonnull align 1 %i.q, i64 %.pre-phi, i1 false), !noalias !6200
  %i.r = xor i64 %i.b, -1
  %i.s = getelementptr [16 x i8], ptr %i.q, i64 %i.r ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.t = xor i64 %.sroa.5.0, -1
  %i.u = getelementptr [16 x i8], ptr %.sroa.09.0, i64 %i.t ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.v = shl i64 %.sroa.5.0, 4
  %i.w = add i64 %i.v, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull align 8 %i.s, i64 %i.w, i1 false), !noalias !6200
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.sroa.09.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.6.0..sroa_idx3, align 8
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load <2 x i64>, ptr %i.x, align 8, !alias.scope !6195, !noalias !6198
  store <2 x i64> %i.y, ptr %.sroa.8.0..sroa_idx5, align 8
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_3AnyNtNtBT_6marker4SyncNtB27_4SendEL_EEENtNtBT_5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @9, i64 32, i1 false)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1                          ; 2 uses
  %i.e = icmp ugt i64 %i.d, 576460752303423487
  br i1 %i.e, label %bb.e, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.f = shl nuw i64 %i.d, 5                      ; 3 uses
  %i.g = add nsw i64 %i.b, 17                     ; 2 uses
  %i.h = add i64 %i.g, %i.f                       ; 5 uses
  %i.i = icmp ult i64 %i.h, %i.f
  %i.j = icmp ugt i64 %i.h, 9223372036854775792
  %or.cond.i.i = or i1 %i.i, %i.j
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !196

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !6201
  %i.l = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !6201 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6201
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.o = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.h), !noalias !6201
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.o, %bb.f ], [ %i.n, %bb.e ]
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_3AnyNtNtBT_6marker4SyncNtB27_4SendEL_EEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.l, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.f
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_3AnyNtNtBT_6marker4SyncNtB27_4SendEL_EEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_3AnyNtNtBT_6marker4SyncNtB27_4SendEL_EEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.b, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.p, %bb.h ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6209)
  %i.q = load ptr, ptr %1, align 8, !alias.scope !6212, !noalias !6213, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.q, i64 %.pre-phi, i1 false), !noalias !6216
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !6212, !noalias !6213, !noundef !3 ; 3 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_3AnyNtNtBT_6marker4SyncNtB27_4SendEL_EEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.u = load <16 x i8>, ptr %i.q, align 16, !noalias !6217
  %i.v = icmp sgt <16 x i8> %i.u, splat (i8 -1)
  %i.w = bitcast <16 x i1> %i.v to i16
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.y = ptrtoint ptr %i.q to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %.lr.ph.i.i
  %.sroa.1015.027.i.i = phi i64 [ %i.s, %.lr.ph.i.i ], [ %i.ao, %bb.k ]
  %.sroa.013.026.i.i = phi ptr [ %i.q, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %bb.k ] ; 2 uses
  %.sroa.6.025.i.i = phi ptr [ %i.x, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.k ] ; 2 uses
  %.sroa.814.024.i.i = phi i16 [ %i.w, %.lr.ph.i.i ], [ %i.aq, %bb.k ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.024.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.i.i.i
  %i.z = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.sroa.6.025.i.i, %bb.i ] ; 2 uses
  %i.aa = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %.sroa.013.026.i.i, %bb.i ]
  %i.ab = load <16 x i8>, ptr %i.z, align 16, !noalias !6222
  %i.ac = icmp sgt <16 x i8> %i.ab, splat (i8 -1)
  %i.ad = getelementptr inbounds i8, ptr %i.aa, i64 -512 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ac to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.i
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.025.i.i, %bb.i ], [ %i.ae, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.026.i.i, %bb.i ], [ %i.ad, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.024.i.i, %bb.i ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.af = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds [32 x i8], ptr %.sroa.013.1.i.i, i64 %i.ah ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6227)
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -16
  %.val.i.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !6227, !noalias !6230, !nonnull !3, !noundef !3 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -8
  %.val1.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !6227, !noalias !6230 ; 2 uses
  %i.al = atomicrmw add ptr %.val.i.i.i, i64 1 monotonic, align 8, !noalias !6232
  %i.am = icmp slt i64 %i.al, 0
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit.i.i
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %.loopexit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  %i.an = getelementptr inbounds i8, ptr %i.ai, i64 -32
  %i.ao = add i64 %.sroa.1015.027.i.i, -1         ; 2 uses
  %i.ap = add i16 %.lcssa.i.i.i, -1
  %i.aq = and i16 %i.ap, %.lcssa.i.i.i
  %i.ar = ptrtoint ptr %i.ai to i64
  %i.as = sub i64 %i.y, %i.ar
  %i.at = ashr exact i64 %i.as, 5
  %i.au = sub nsw i64 0, %i.at
  %i.av = getelementptr inbounds [32 x i8], ptr %.sroa.0.0, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -32
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !noalias !6216
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.av, i64 -16
  store ptr %.val.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !6216
  %.sroa.517.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.av, i64 -8
  store ptr %.val1.i.i.i, ptr %.sroa.517.0..sroa_idx.i.i, align 8, !noalias !6216
  %i.ax = icmp eq i64 %i.ao, 0
  br i1 %i.ax, label %.loopexit, label %bb.i

bb.l:                                             ; preds = %.loopexit, %bb.b
  ret void

.loopexit:                                        ; preds = %bb.k, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_3AnyNtNtBT_6marker4SyncNtB27_4SendEL_EEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !6212, !noalias !6213, !noundef !3
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx5, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.az, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.s, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 16 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 4 uses
  %i.b = tail call noundef nonnull align 16 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6233
  invoke fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.c) #39
          to label %bb.b unwind label %bb.c, !inline_history !6236

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.b, ptr noundef nonnull align 16 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !6233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6233
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 112, i64 noundef 16) #40
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 16 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = tail call noundef nonnull align 16 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6237
  invoke fastcc void @_RNvXso_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.c) #39
          to label %bb.b unwind label %bb.c, !inline_history !6240

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, ptr noundef nonnull align 16 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !6237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6237
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 64, i64 noundef 16) #40
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #18 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !243, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !3 ; 3 uses
  %i.f = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0                     ; 3 uses
  switch i64 %i.a, label %default.unreachable6 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable6:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.h, label %bb.g

bb.d:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.k, label %bb.j

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

.sink.split:                                      ; preds = %bb.g, %bb.n
  %.sink18 = phi i64 [ 24, %bb.n ], [ 8, %bb.g ]
  %.sink16 = phi ptr [ %i.s, %bb.n ], [ %i.c, %bb.g ]
  %.sink15 = phi i64 [ 32, %bb.n ], [ 16, %bb.g ]
  %.sink13 = phi i64 [ %i.u, %bb.n ], [ %i.e, %bb.g ]
  %.sink12.ph = phi i64 [ 40, %bb.n ], [ 24, %bb.g ]
  %.sink10.ph = phi ptr [ %i.y, %bb.n ], [ %i.m, %bb.g ]
  %.sink9.ph = phi i64 [ 48, %bb.n ], [ 32, %bb.g ]
  %.sink7.ph = phi i64 [ %i.aa, %bb.n ], [ %i.o, %bb.g ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.sink18
  store ptr %.sink16, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink15
  store i64 %.sink13, ptr %i.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.b
  %.sink12 = phi i64 [ 8, %bb.b ], [ %.sink12.ph, %.sink.split ]
  %.sink10 = phi ptr [ %i.c, %bb.b ], [ %.sink10.ph, %.sink.split ]
  %.sink9 = phi i64 [ 16, %bb.b ], [ %.sink9.ph, %.sink.split ]
  %.sink7 = phi i64 [ %i.e, %bb.b ], [ %.sink7.ph, %.sink.split ]
  %.sink = phi i64 [ 0, %bb.b ], [ %i.a, %.sink.split ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  store ptr %.sink10, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9
  store i64 %.sink7, ptr %i.k, align 8
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i64, ptr %i.n, align 8, !noundef !3
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.i, label %.sink.split

bb.h:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i64, ptr %i.t, align 8, !noundef !3
  %i.v = atomicrmw add ptr %i.s, i64 1 monotonic, align 8
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !noundef !3
  %i.ab = atomicrmw add ptr %i.y, i64 1 monotonic, align 8
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.j
  tail call void @llvm.trap()
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.ae, align 8
  br label %.sink.split

bb.o:                                             ; preds = %bb.l
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6241)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !6241, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1d_ENtNtB1h_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6244)
end_hunk_9
begin_hunk_10_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks:bb.a
_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesENtNtB1h_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEECsdJxlLsGgtXr_16delta_benchmarks.exit.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6567)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !6567, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtB1h_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6570)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !6573, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !6573, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !6574
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %bb.c
  %.sroa.05.017.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.107.015.i.i = phi i64 [ %i.e, %bb.c ], [ %i.y, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ]
  %.sroa.86.014.i.i = phi i16 [ %i.k, %bb.c ], [ %i.aa, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.014.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.017.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !6579
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -640 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.017.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [40 x i8], ptr %.sroa.05.1.i.i, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -40 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %bb.e, !noalias !6573

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i unwind label %bb.f, !noalias !6573

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !6573
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.w

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  %i.y = add i64 %.sroa.107.015.i.i, -1           ; 2 uses
  %i.z = add i16 %.lcssa.i.i.i, -1
  %i.aa = and i16 %i.z, %.lcssa.i.i.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.v), !noalias !6573
  %i.ab = icmp eq i64 %i.y, 0
  br i1 %i.ab, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %bb.b
  %i.ac = mul i64 %i.b, 40
  %i.ad = icmp slt i64 %i.b, 461168601842738790
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = and i64 %i.ac, -16                      ; 2 uses
  %i.af = add i64 %i.ae, 48                       ; 2 uses
  %i.ag = add nsw i64 %i.b, 17
  %i.ah = add i64 %i.ag, %i.af                    ; 4 uses
  %i.ai = icmp uge i64 %i.ah, %i.af
  %i.aj = icmp ult i64 %i.ah, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ai)
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = icmp eq i64 %i.ah, 0
  br i1 %i.ak, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtB1h_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.g

bb.g:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %i.al = load ptr, ptr %0, align 8, !alias.scope !6567, !nonnull !3, !noundef !3
  %i.am = sub i64 -48, %i.ae
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 %i.am
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !6567
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtB1h_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtB1h_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECsdJxlLsGgtXr_16delta_benchmarks.exit.i, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6584)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !6584, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6587)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !6590, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEECsdJxlLsGgtXr_16delta_benchmarks.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !6590, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !6591
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ]
  %.sroa.86.013.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.013.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !6596
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -1792 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.013.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [112 x i8], ptr %.sroa.05.1.i.i, i64 %i.v
  %i.x = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -112
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.y), !noalias !6590
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEECsdJxlLsGgtXr_16delta_benchmarks.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEECsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %bb.b
  %i.aa = mul i64 %i.b, 112                       ; 2 uses
  %i.ab = add i64 %i.aa, 112                      ; 2 uses
  %i.ac = add i64 %i.b, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !6584, !nonnull !3, !noundef !3
  %i.ai = sub i64 -112, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !6584
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEECsdJxlLsGgtXr_16delta_benchmarks.exit.i, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.c = shl i64 %.val1, 4                        ; 2 uses
  %i.d = add i64 %i.c, 16                         ; 2 uses
  %i.e = add i64 %.val1, 17
  %i.f = add i64 %i.e, %i.d                       ; 4 uses
  %i.g = icmp uge i64 %i.f, %i.d
  %i.h = icmp ult i64 %i.f, 9223372036854775793
  tail call void @llvm.assume(i1 %i.g)
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.j = sub nuw nsw i64 -16, %i.c
  %i.k = getelementptr inbounds i8, ptr %.val, i64 %i.j
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 16) #40
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.a, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_3AnyNtNtBT_6marker4SyncNtB27_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6601)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !6601, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1f_3AnyNtNtB1h_6marker4SyncNtB2w_4SendEL_EENtNtB1Q_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6604)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !6607, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1c_3AnyNtNtB1e_6marker4SyncNtB2t_4SendEL_EEECsdJxlLsGgtXr_16delta_benchmarks.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !6607, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !6608
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBJ_3AnyNtNtB4_6marker4SyncNtB1J_4SendEL_EEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBJ_3AnyNtNtB4_6marker4SyncNtB1J_4SendEL_EEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBJ_3AnyNtNtB4_6marker4SyncNtB1J_4SendEL_EEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBJ_3AnyNtNtB4_6marker4SyncNtB1J_4SendEL_EEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ]
  %.sroa.86.013.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBJ_3AnyNtNtB4_6marker4SyncNtB1J_4SendEL_EEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.013.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBX_3AnyNtNtBZ_6marker4SyncNtB2d_4SendEL_EEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !6613
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -512 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBX_3AnyNtNtBZ_6marker4SyncNtB2d_4SendEL_EEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBX_3AnyNtNtBZ_6marker4SyncNtB2d_4SendEL_EEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.013.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [32 x i8], ptr %.sroa.05.1.i.i, i64 %i.v
  %i.x = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6618)
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6624)
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !6627, !noalias !6607, !nonnull !3, !noundef !3
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !6628
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBJ_3AnyNtNtB4_6marker4SyncNtB1J_4SendEL_EEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBX_3AnyNtNtBZ_6marker4SyncNtB2d_4SendEL_EEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs4m0Tg8nAduX_20datafusion_execution(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y) #41, !noalias !6607
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBJ_3AnyNtNtB4_6marker4SyncNtB1J_4SendEL_EEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBJ_3AnyNtNtB4_6marker4SyncNtB1J_4SendEL_EEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %bb.e, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBX_3AnyNtNtBZ_6marker4SyncNtB2d_4SendEL_EEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  %i.ac = icmp eq i64 %i.x, 0
  br i1 %i.ac, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1c_3AnyNtNtB1e_6marker4SyncNtB2t_4SendEL_EEECsdJxlLsGgtXr_16delta_benchmarks.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1c_3AnyNtNtB1e_6marker4SyncNtB2t_4SendEL_EEECsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBJ_3AnyNtNtB4_6marker4SyncNtB1J_4SendEL_EEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %bb.b
  %i.ad = shl i64 %i.b, 5                         ; 2 uses
  %i.ae = add i64 %i.ad, 32                       ; 2 uses
  %i.af = add i64 %i.b, 17
  %i.ag = add i64 %i.af, %i.ae                    ; 4 uses
  %i.ah = icmp uge i64 %i.ag, %i.ae
  %i.ai = icmp ult i64 %i.ag, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ah)
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i64 %i.ag, 0
  br i1 %i.aj, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1f_3AnyNtNtB1h_6marker4SyncNtB2w_4SendEL_EENtNtB1Q_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1c_3AnyNtNtB1e_6marker4SyncNtB2t_4SendEL_EEECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %i.ak = load ptr, ptr %0, align 8, !alias.scope !6601, !nonnull !3, !noundef !3
  %i.al = sub nuw nsw i64 -32, %i.ad
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.am, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !6601
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1f_3AnyNtNtB1h_6marker4SyncNtB2w_4SendEL_EENtNtB1Q_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1f_3AnyNtNtB1h_6marker4SyncNtB2w_4SendEL_EENtNtB1Q_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1c_3AnyNtNtB1e_6marker4SyncNtB2t_4SendEL_EEECsdJxlLsGgtXr_16delta_benchmarks.exit.i, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6629)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !6629, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EENtNtB2y_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6632)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !6635, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECsdJxlLsGgtXr_16delta_benchmarks.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !6635, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !6636
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %bb.c
  %.sroa.05.019.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.6.018.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.107.017.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ]
  %.sroa.86.016.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.016.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.018.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.019.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !6641
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -1024 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.018.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.019.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.016.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [64 x i8], ptr %.sroa.05.1.i.i, i64 %i.v ; 7 uses
  %i.x = add i64 %.sroa.107.017.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6649)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6655)
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !6658, !noalias !6635, !nonnull !3, !noundef !3
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !6659
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArceE9drop_slowCsfYVtenZkBsn_12arrow_schema(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.y) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i unwind label %bb.f, !noalias !6635

bb.f:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.w, i64 -48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6663)
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !6666, !noalias !6635, !nonnull !3, !noundef !3
  %i.af = atomicrmw sub ptr %i.ae, i64 1 release, align 8, !noalias !6667
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECsdJxlLsGgtXr_16delta_benchmarks.exit3.i.i.i.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArceE9drop_slowCsfYVtenZkBsn_12arrow_schema(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ad) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECsdJxlLsGgtXr_16delta_benchmarks.exit3.i.i.i.i unwind label %bb.l, !noalias !6635

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i: ; preds = %bb.e, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  %i.ah = getelementptr inbounds i8, ptr %i.w, i64 -48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6671)
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !6674, !noalias !6635, !nonnull !3, !noundef !3
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !6675
  %i.ak = icmp eq i64 %i.aj, 1
end_hunk_10
begin_hunk_11_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks:bb.a
_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEECsdJxlLsGgtXr_16delta_benchmarks.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6725)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !6725, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6728)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !6731, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEECsdJxlLsGgtXr_16delta_benchmarks.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !6731, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !6732
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ]
  %.sroa.86.013.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.013.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !6737
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -1664 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.013.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [104 x i8], ptr %.sroa.05.1.i.i, i64 %i.v
  %i.x = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -104
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.y), !noalias !6731
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEECsdJxlLsGgtXr_16delta_benchmarks.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEECsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %bb.b
  %i.aa = mul i64 %i.b, 104
  %i.ab = icmp slt i64 %i.b, 177372539170284150
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = and i64 %i.aa, -16                      ; 2 uses
  %i.ad = add i64 %i.ac, 112                      ; 2 uses
  %i.ae = add nsw i64 %i.b, 17
  %i.af = add i64 %i.ae, %i.ad                    ; 4 uses
  %i.ag = icmp uge i64 %i.af, %i.ad
  %i.ah = icmp ult i64 %i.af, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ag)
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.af, 0
  br i1 %i.ai, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %i.aj = load ptr, ptr %0, align 8, !alias.scope !6725, !nonnull !3, !noundef !3
  %i.ak = sub i64 -112, %i.ac
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !6725
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEECsdJxlLsGgtXr_16delta_benchmarks.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtBV_4file10properties16ColumnPropertiesEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6742)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !6742, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB1j_4file10properties16ColumnPropertiesENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6745)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !6748, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB1g_4file10properties16ColumnPropertiesEECsdJxlLsGgtXr_16delta_benchmarks.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !6748, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !6749
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtBN_4file10properties16ColumnPropertiesEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %bb.c
  %.sroa.05.017.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtBN_4file10properties16ColumnPropertiesEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtBN_4file10properties16ColumnPropertiesEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.107.015.i.i = phi i64 [ %i.e, %bb.c ], [ %i.y, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtBN_4file10properties16ColumnPropertiesEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ]
  %.sroa.86.014.i.i = phi i16 [ %i.k, %bb.c ], [ %i.aa, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtBN_4file10properties16ColumnPropertiesEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.014.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB11_4file10properties16ColumnPropertiesEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.017.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !6754
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -1280 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB11_4file10properties16ColumnPropertiesEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB11_4file10properties16ColumnPropertiesEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.017.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [80 x i8], ptr %.sroa.05.1.i.i, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -80 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtBN_4file10properties16ColumnPropertiesEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %bb.e, !noalias !6748

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB11_4file10properties16ColumnPropertiesEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtBL_6string6StringEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i unwind label %bb.f, !noalias !6748

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !6748
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtBL_6string6StringEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.w

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtBN_4file10properties16ColumnPropertiesEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB11_4file10properties16ColumnPropertiesEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  %i.y = add i64 %.sroa.107.015.i.i, -1           ; 2 uses
  %i.z = add i16 %.lcssa.i.i.i, -1
  %i.aa = and i16 %i.z, %.lcssa.i.i.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.v), !noalias !6748
  %i.ab = icmp eq i64 %i.y, 0
  br i1 %i.ab, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB1g_4file10properties16ColumnPropertiesEECsdJxlLsGgtXr_16delta_benchmarks.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB1g_4file10properties16ColumnPropertiesEECsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtBN_4file10properties16ColumnPropertiesEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %bb.b
  %i.ac = mul i64 %i.b, 80                        ; 2 uses
  %i.ad = add i64 %i.ac, 80                       ; 2 uses
  %i.ae = add i64 %i.b, 17
  %i.af = add i64 %i.ae, %i.ad                    ; 4 uses
  %i.ag = icmp uge i64 %i.af, %i.ad
  %i.ah = icmp ult i64 %i.af, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ag)
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.af, 0
  br i1 %i.ai, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB1j_4file10properties16ColumnPropertiesENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.g

bb.g:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB1g_4file10properties16ColumnPropertiesEECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %i.aj = load ptr, ptr %0, align 8, !alias.scope !6742, !nonnull !3, !noundef !3
  %i.ak = sub i64 -80, %i.ac
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !6742
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB1j_4file10properties16ColumnPropertiesENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB1j_4file10properties16ColumnPropertiesENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB1g_4file10properties16ColumnPropertiesEECsdJxlLsGgtXr_16delta_benchmarks.exit.i, %bb.g
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRNtNtCs6Po7BT7Nknu_5alloc6string6StringuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !3 ; 4 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtCs6Po7BT7Nknu_5alloc6string6StringuENtNtB1i_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.c = shl i64 %.val1, 3
  %i.d = icmp slt i64 %.val1, 2305843009213693950
  tail call void @llvm.assume(i1 %i.d)
  %i.e = and i64 %i.c, -16                        ; 2 uses
  %i.f = add i64 %i.e, 16                         ; 2 uses
  %i.g = add nsw i64 %.val1, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtCs6Po7BT7Nknu_5alloc6string6StringuENtNtB1i_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.l = sub nuw nsw i64 -16, %i.e
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #40
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtCs6Po7BT7Nknu_5alloc6string6StringuENtNtB1i_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtCs6Po7BT7Nknu_5alloc6string6StringuENtNtB1i_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.a, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !3 ; 4 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.c = shl i64 %.val1, 3
  %i.d = icmp slt i64 %.val1, 2305843009213693950
  tail call void @llvm.assume(i1 %i.d)
  %i.e = and i64 %i.c, -16                        ; 2 uses
  %i.f = add i64 %i.e, 16                         ; 2 uses
  %i.g = add nsw i64 %.val1, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.l = sub nuw nsw i64 -16, %i.e
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #40
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.a, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 4 uses
  %i.d = load <16 x i8>, ptr %i.a, align 16, !noalias !6759
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !3
  %i.g = icmp eq i64 %i.c, 0
  br i1 %i.g, label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE15into_allocationCsdJxlLsGgtXr_16delta_benchmarks.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.h = mul i64 %i.c, 112                        ; 2 uses
  %i.i = add i64 %i.h, 112                        ; 2 uses
  %i.j = add i64 %i.c, 17
  %i.k = add i64 %i.j, %i.i                       ; 3 uses
  %i.l = icmp uge i64 %i.k, %i.i
  tail call void @llvm.assume(i1 %i.l)
  %i.m = icmp ult i64 %i.k, 9223372036854775793
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub i64 -112, %i.h
  %i.o = getelementptr inbounds i8, ptr %i.a, i64 %i.n
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE15into_allocationCsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE15into_allocationCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.48.0 = phi i64 [ undef, %bb.a ], [ %i.k, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.59.0 = phi ptr [ undef, %bb.a ], [ %i.o, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = icmp sgt <16 x i8> %i.d, splat (i8 -1)
  %i.r = getelementptr i8, ptr %i.a, i64 %i.c
  %i.s = getelementptr i8, ptr %i.r, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.t, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.p, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.s, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.q, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.f, ptr %.sroa.2.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.48.0, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.59.0, ptr %.sroa.59.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 5 uses
  %i.d = load <16 x i8>, ptr %i.a, align 16, !noalias !6764
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !3
  %i.g = icmp eq i64 %i.c, 0
  br i1 %i.g, label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE15into_allocationCsdJxlLsGgtXr_16delta_benchmarks.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %or.cond.i = icmp slt i64 %i.c, 2305843009213693950
  tail call void @llvm.assume(i1 %or.cond.i)
  %i.h = shl i64 %i.c, 3
  %i.i = and i64 %i.h, -16                        ; 2 uses
  %i.j = add i64 %i.i, 16                         ; 2 uses
  %i.k = add nsw i64 %i.c, 17
  %i.l = add i64 %i.k, %i.j                       ; 3 uses
  %i.m = icmp uge i64 %i.l, %i.j
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp ult i64 %i.l, 9223372036854775793
  tail call void @llvm.assume(i1 %i.n)
  %i.o = sub nuw nsw i64 -16, %i.i
  %i.p = getelementptr inbounds i8, ptr %i.a, i64 %i.o
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE15into_allocationCsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE15into_allocationCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.411.0 = phi i64 [ undef, %bb.a ], [ %i.l, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.512.0 = phi ptr [ undef, %bb.a ], [ %i.p, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = icmp sgt <16 x i8> %i.d, splat (i8 -1)
  %i.s = getelementptr i8, ptr %i.a, i64 %i.c
  %i.t = getelementptr i8, ptr %i.s, i64 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.u, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.q, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.t, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.r, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.f, ptr %.sroa.2.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.411.0, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.512.0, ptr %.sroa.512.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsk_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = load i64, ptr %0, align 8, !range !2443, !noundef !3 ; 3 uses
  %i.v = icmp ne i64 %i.u, -9223372036854775806
  tail call void @llvm.assume(i1 %i.v)
  %i.w = xor i64 %i.u, -9223372036854775808
  %i.x = icmp slt i64 %i.u, 0
  %i.y = select i1 %i.x, i64 %i.w, i64 2
  switch i64 %i.y, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
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
    i64 13, label %bb.p
    i64 14, label %bb.q
    i64 15, label %bb.r
    i64 16, label %bb.s
    i64 17, label %bb.t
    i64 18, label %bb.u
    i64 19, label %bb.v
    i64 20, label %bb.w
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.aa, ptr %i.t, align 8
  %i.ab = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @321, i64 noundef 6, ptr noundef nonnull %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @250, ptr noundef nonnull %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @320)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.x

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.s, align 8
  %i.ad = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @323, i64 noundef 18, ptr noundef nonnull %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @251)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.x

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %0, ptr %i.r, align 8
  %i.ae = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @328, i64 noundef 18, ptr noundef nonnull %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @327)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.x

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
end_hunk_11
