inline.NumInlined: 2950
inline.NumDeleted: 1029
begin_hunk_0_@_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0ECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  %i.a = lshr i64 %2, 57
  %i.b = trunc nuw nsw i64 %i.a to i8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !35, !noalias !36, !noundef !3 ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !alias.scope !35, !noalias !36, !nonnull !3, !noundef !3 ; 4 uses
  %i.f = insertelement <16 x i8> poison, i8 %i.b, i64 0
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.a ], [ %i.x, %bb.d ]
  %.pn.i.i = phi i64 [ %2, %bb.a ], [ %i.y, %bb.d ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.d        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i21.i = load <16 x i8>, ptr %i.h, align 1, !noalias !39 ; 2 uses
  %i.i = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i, %i.g
  %i.j = bitcast <16 x i1> %i.i to i16            ; 2 uses
  %.not.i.not27.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.not27.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.06.0.i28.i = phi i16 [ %i.w, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i28.i, i1 true)
  %i.l = zext nneg i16 %i.k to i64
  %i.m = add i64 %.sroa.01.0.i.i, %i.l
  %i.n = and i64 %i.m, %i.d                       ; 2 uses
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [352 x i8], ptr %i.e, i64 %i.o
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -352 ; 2 uses
  %i.r = tail call noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.q), !noalias !42
  br i1 %i.r, label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0ECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.c, !prof !4

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.s = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i, splat (i8 -1)
  %i.t = bitcast <16 x i1> %i.s to i16
  %i.u = icmp eq i16 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.f, !prof !28

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = add i16 %.sroa.06.0.i28.i, -1
  %i.w = and i16 %i.v, %.sroa.06.0.i28.i          ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.x = add i64 %.sroa.9.0.i.i, 16               ; 2 uses
  %i.y = add i64 %.sroa.01.0.i.i, %i.x
  br label %bb.b

_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0ECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %.idx.neg = mul i64 %i.n, 352
  %i.z = sdiv exact i64 %.idx.neg, 352            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.aa = add nsw i64 %i.z, -16
  %i.ab = and i64 %i.aa, %i.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ab ; 2 uses
  %.sroa.0.0.copyload.i20.i.i.i = load <16 x i8>, ptr %i.ac, align 1, !noalias !54
  %i.ad = icmp eq <16 x i8> %.sroa.0.0.copyload.i20.i.i.i, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.z ; 2 uses
  %.sroa.0.0.copyload.i421.i.i.i = load <16 x i8>, ptr %i.af, align 1, !noalias !58
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i421.i.i.i, splat (i8 -1)
  %i.ah = bitcast <16 x i1> %i.ag to i16
  %i.ai = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.ae, i1 false)
  %i.aj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ah, i1 false)
  %narrow.i.i.i = add nuw nsw i16 %i.aj, %i.ai
  %i.ak = icmp samesign ugt i16 %narrow.i.i.i, 15
  br i1 %i.ak, label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE6removeCsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0ECsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !61, !noalias !62, !noundef !3
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.al, align 8, !alias.scope !61, !noalias !62
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE6removeCsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE6removeCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0ECsdJxlLsGgtXr_16delta_benchmarks.exit, %bb.e
  %.sroa.0.0.i.i.i = phi i8 [ -1, %bb.e ], [ -128, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0ECsdJxlLsGgtXr_16delta_benchmarks.exit ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i, ptr %i.af, align 1, !noalias !63
  %i.ao = getelementptr i8, ptr %i.ac, i64 16
  store i8 %.sroa.0.0.i.i.i, ptr %i.ao, align 1, !noalias !63
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !61, !noalias !62, !noundef !3
  %i.ar = add i64 %i.aq, -1
  store i64 %i.ar, ptr %i.ap, align 8, !alias.scope !61, !noalias !62
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(352) %i.q, i64 352, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 69, ptr %i.as, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE6removeCsdJxlLsGgtXr_16delta_benchmarks.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs8Hz2sPNgbCO_10datafusion(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.l = add i64 %i.k, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.narrow = icmp ult i64 %i.k, 7
  %.sroa.03.0.i = select i1 %.narrow, i64 %i.k, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.h, %i.o
  br i1 %.not.i, label %bb.d, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !70 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.d:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i5 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.s, i64 range(i64 1, 0) %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !71)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !74
  call fastcc void @_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 32, 225) 224, i64 noundef range(i64 1, 0) %.sroa.0.0.i5, i1 noundef zeroext %3) #39
  %i.t = load ptr, ptr %i.a, align 8, !noalias !74, !noundef !3 ; 9 uses
  %i.u = icmp eq ptr %i.t, null
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load i64, ptr %i.v, align 8, !noalias !74 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noalias !74 ; 3 uses
  br i1 %i.u, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !74
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.f:                                             ; preds = %._crit_edge
  %i.z = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(56) %i.b) #38, !noalias !77
  resume { ptr, i32 } %i.z

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
  store ptr %i.t, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !74
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %i.w, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !74
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %i.y, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !74
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !74
  %i.aa = load i64, ptr %i.f, align 8, !alias.scope !78, !noalias !79, !noundef !3 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %._crit_edge23, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ac = load ptr, ptr %0, align 8, !alias.scope !78, !noalias !79, !nonnull !3, !noundef !3 ; 2 uses
  %i.ad = load <16 x i8>, ptr %i.ac, align 16, !noalias !80
  %i.ae = icmp sgt <16 x i8> %i.ad, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.022 = phi ptr [ %i.ac, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.021 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.020 = phi i64 [ %i.aa, %.preheader.lr.ph ], [ %i.bk, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.019 = phi i16 [ %i.af, %.preheader.lr.ph ], [ %i.bi, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i214 = icmp eq i16 %.sroa.13.019, 0
  br i1 %.not.i214, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.116 = phi ptr [ %i.ag, %.noexc3 ], [ %.sroa.0.022, %.preheader ] ; 2 uses
  %.sroa.5.115 = phi i64 [ %i.ak, %.noexc3 ], [ %.sroa.5.021, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.116) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.116, i64 16 ; 3 uses
  %i.ah = load <16 x i8>, ptr %i.ag, align 16, !noalias !83
  %i.ai = icmp sgt <16 x i8> %i.ah, splat (i8 -1)
  %i.aj = bitcast <16 x i1> %i.ai to i16          ; 2 uses
  %i.ak = add i64 %.sroa.5.115, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.aj, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge23.loopexit:                           ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !alias.scope !78, !noalias !79
  br label %._crit_edge23

._crit_edge23:                                    ; preds = %._crit_edge23.loopexit, %bb.g
  %i.al = phi i64 [ %.pre, %._crit_edge23.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.am = sub i64 %i.y, %i.al
  store i64 %i.am, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !74
  store i64 %i.al, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !74
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.h, !noalias !77

bb.h:                                             ; preds = %._crit_edge23
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #37, !noalias !77
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %._crit_edge23
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  call void @llvm.experimental.noalias.scope.decl(metadata !89), !noalias !77
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !92, !noalias !77 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !92, !noalias !77 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !92, !noalias !77, !noundef !3 ; 3 uses
  %i.ao = icmp eq i64 %.val3.i.i, 0
  br i1 %i.ao, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsdJxlLsGgtXr_16delta_benchmarks.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECsdJxlLsGgtXr_16delta_benchmarks.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !92, !noalias !77
  %i.ap = add i64 %.val3.i.i, 1
  %i.aq = mul nuw i64 %.val.i.i, %i.ap            ; 2 uses
  %i.ar = add i64 %.val1.i.i, -1
  %i.as = add i64 %i.ar, %i.aq                    ; 2 uses
  %i.at = icmp uge i64 %i.as, %i.aq
  call void @llvm.assume(i1 %i.at), !noalias !77
  %i.au = sub i64 0, %.val1.i.i
  %i.av = and i64 %i.as, %i.au                    ; 3 uses
  %i.aw = add i64 %.val3.i.i, 17
  %i.ax = add i64 %i.aw, %i.av                    ; 4 uses
  %i.ay = icmp uge i64 %i.ax, %i.av
  %i.az = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.ba = icmp ule i64 %i.ax, %i.az
  call void @llvm.assume(i1 %i.ay), !noalias !77
  call void @llvm.assume(i1 %i.ba), !noalias !77
  %i.bb = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bb), !noalias !77
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !77
  %i.bc = icmp eq i64 %i.ax, 0
  br i1 %i.bc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bd = sub nsw i64 0, %i.av
  %i.be = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bd
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #40, !noalias !93
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECsdJxlLsGgtXr_16delta_benchmarks.exit, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !74
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.019, %.preheader ], [ %i.aj, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.021, %.preheader ], [ %i.ak, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.022, %.preheader ], [ %i.ag, %.noexc3 ]
  %i.bf = add i16 %.sroa.13.1.lcssa, -1
  %i.bg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = and i16 %i.bf, %.sroa.13.1.lcssa
  %i.bj = add i64 %.sroa.5.1.lcssa, %i.bh         ; 2 uses
  %i.bk = add i64 %.sroa.9.020, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %i.bl = load ptr, ptr %0, align 8, !alias.scope !94, !noalias !97, !nonnull !3, !noundef !3
  %i.bm = sub nsw i64 0, %i.bj
  %i.bn = getelementptr inbounds [224 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -224
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !99, !nonnull !3, !align !100, !noundef !3
  %i.bp = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(224) %i.bo)
          to label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.f ; 2 uses

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.w, %i.bp             ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bq, align 1, !noalias !101
  %i.br = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bs = bitcast <16 x i1> %i.br to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bs, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !104

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit ], [ %.sroa.0.0.i7, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bs, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit ], [ %i.ck, %.lr.ph.i ]
  %i.bt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bu = zext nneg i16 %i.bt to i64
  %i.bv = add i64 %.sroa.0.0.lcssa.i, %i.bu
  %i.bw = and i64 %i.bv, %i.w                     ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !noundef !3
  %i.bz = icmp sgt i8 %i.by, -1
  br i1 %i.bz, label %bb.j, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !28

bb.j:                                             ; preds = %._crit_edge.i
  %i.ca = load <16 x i8>, ptr %i.t, align 16, !noalias !105
  %i.cb = icmp slt <16 x i8> %i.ca, zeroinitializer
  %i.cc = bitcast <16 x i1> %i.cb to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cc, 0
  %i.cd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cc, i1 true)
  %i.ce = zext nneg i16 %i.cd to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i7, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit ]
  %i.cf = phi i64 [ %i.cg, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit ]
  %i.cg = add i64 %i.cf, 16                       ; 2 uses
  %i.ch = add i64 %i.cg, %.sroa.0.010.i
  %.sroa.0.0.i7 = and i64 %i.ch, %i.w             ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.0.i7
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ci, align 1, !noalias !101
  %i.cj = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ck = bitcast <16 x i1> %i.cj to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.ck, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !108

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.ce, %bb.j ], [ %i.bw, %._crit_edge.i ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.0.i5.i
  %i.cm = lshr i64 %i.bp, 57
  %i.cn = trunc nuw nsw i64 %i.cm to i8           ; 2 uses
  %i.co = add i64 %.sroa.0.0.i5.i, -16
  %i.cp = and i64 %i.co, %i.w
  store i8 %i.cn, ptr %i.cl, align 1, !noalias !77
  %i.cq = getelementptr i8, ptr %i.t, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 16
  store i8 %i.cn, ptr %i.cr, align 1, !noalias !77
  %i.cs = load ptr, ptr %0, align 8, !alias.scope !78, !noalias !79, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.bj, -1
  %.neg61.i.i = mul i64 %.neg.i.i, 224
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 %.neg61.i.i
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg63.i.i = mul i64 %.neg62.i.i, 224
  %i.cu = getelementptr inbounds i8, ptr %i.t, i64 %.neg63.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(224) %i.cu, ptr noundef nonnull align 1 dereferenceable(224) %i.ct, i64 range(i64 32, 225) 224, i1 false), !noalias !77
  %i.cv = icmp eq i64 %i.bk, 0
  br i1 %i.cv, label %._crit_edge23.loopexit, label %.preheader

bb.k:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.c, ptr nonnull @_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks, i64 noundef 224, ptr noundef nonnull @_RNvYNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtBb_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1K_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0Es_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTOhEE9call_onceCsdJxlLsGgtXr_16delta_benchmarks) #39
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsdJxlLsGgtXr_16delta_benchmarks.exit, %bb.c, %bb.k
  %.sroa.4.0.i = phi i64 [ %i.r, %bb.c ], [ undef, %bb.k ], [ %i.y, %bb.e ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsdJxlLsGgtXr_16delta_benchmarks.exit ]
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.c ], [ -9223372036854775807, %bb.k ], [ %i.w, %bb.e ], [ -9223372036854775807, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsdJxlLsGgtXr_16delta_benchmarks.exit ]
  %i.cw = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.cx = insertvalue { i64, i64 } %i.cw, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret { i64, i64 } %i.cx
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
  %i.l = add i64 %i.k, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.narrow = icmp ult i64 %i.k, 7
  %.sroa.03.0.i = select i1 %.narrow, i64 %i.k, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.h, %i.o
  br i1 %.not.i, label %bb.d, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !115 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.d:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i5 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.s, i64 range(i64 1, 0) %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !119
  call fastcc void @_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 32, 225) 32, i64 noundef range(i64 1, 0) %.sroa.0.0.i5, i1 noundef zeroext %3) #39
  %i.t = load ptr, ptr %i.a, align 8, !noalias !119, !noundef !3 ; 9 uses
  %i.u = icmp eq ptr %i.t, null
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load i64, ptr %i.v, align 8, !noalias !119 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noalias !119 ; 3 uses
  br i1 %i.u, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !119
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.f:                                             ; preds = %._crit_edge
  %i.z = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(56) %i.b) #38, !noalias !122
  resume { ptr, i32 } %i.z

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
  store ptr %i.t, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !119
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %i.w, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !119
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %i.y, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !119
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !119
  %i.aa = load i64, ptr %i.f, align 8, !alias.scope !123, !noalias !124, !noundef !3 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %._crit_edge23, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ac = load ptr, ptr %0, align 8, !alias.scope !123, !noalias !124, !nonnull !3, !noundef !3 ; 2 uses
  %i.ad = load <16 x i8>, ptr %i.ac, align 16, !noalias !125
  %i.ae = icmp sgt <16 x i8> %i.ad, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.022 = phi ptr [ %i.ac, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.021 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.020 = phi i64 [ %i.aa, %.preheader.lr.ph ], [ %i.bk, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.019 = phi i16 [ %i.af, %.preheader.lr.ph ], [ %i.bi, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i214 = icmp eq i16 %.sroa.13.019, 0
  br i1 %.not.i214, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.116 = phi ptr [ %i.ag, %.noexc3 ], [ %.sroa.0.022, %.preheader ] ; 2 uses
  %.sroa.5.115 = phi i64 [ %i.ak, %.noexc3 ], [ %.sroa.5.021, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.116) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.116, i64 16 ; 3 uses
  %i.ah = load <16 x i8>, ptr %i.ag, align 16, !noalias !128
  %i.ai = icmp sgt <16 x i8> %i.ah, splat (i8 -1)
  %i.aj = bitcast <16 x i1> %i.ai to i16          ; 2 uses
  %i.ak = add i64 %.sroa.5.115, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.aj, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge23.loopexit:                           ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !alias.scope !123, !noalias !124
  br label %._crit_edge23

._crit_edge23:                                    ; preds = %._crit_edge23.loopexit, %bb.g
  %i.al = phi i64 [ %.pre, %._crit_edge23.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.am = sub i64 %i.y, %i.al
  store i64 %i.am, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !119
  store i64 %i.al, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !119
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.h, !noalias !122

bb.h:                                             ; preds = %._crit_edge23
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #37, !noalias !122
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %._crit_edge23
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  call void @llvm.experimental.noalias.scope.decl(metadata !134), !noalias !122
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !137, !noalias !122 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !137, !noalias !122 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !137, !noalias !122, !noundef !3 ; 3 uses
  %i.ao = icmp eq i64 %.val3.i.i, 0
  br i1 %i.ao, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsdJxlLsGgtXr_16delta_benchmarks.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECsdJxlLsGgtXr_16delta_benchmarks.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !137, !noalias !122
  %i.ap = add i64 %.val3.i.i, 1
  %i.aq = mul nuw i64 %.val.i.i, %i.ap            ; 2 uses
  %i.ar = add i64 %.val1.i.i, -1
  %i.as = add i64 %i.ar, %i.aq                    ; 2 uses
  %i.at = icmp uge i64 %i.as, %i.aq
  call void @llvm.assume(i1 %i.at), !noalias !122
  %i.au = sub i64 0, %.val1.i.i
  %i.av = and i64 %i.as, %i.au                    ; 3 uses
  %i.aw = add i64 %.val3.i.i, 17
  %i.ax = add i64 %i.aw, %i.av                    ; 4 uses
  %i.ay = icmp uge i64 %i.ax, %i.av
  %i.az = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.ba = icmp ule i64 %i.ax, %i.az
  call void @llvm.assume(i1 %i.ay), !noalias !122
  call void @llvm.assume(i1 %i.ba), !noalias !122
  %i.bb = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bb), !noalias !122
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !122
  %i.bc = icmp eq i64 %i.ax, 0
  br i1 %i.bc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bd = sub nsw i64 0, %i.av
  %i.be = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bd
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #40, !noalias !138
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECsdJxlLsGgtXr_16delta_benchmarks.exit, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !119
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.019, %.preheader ], [ %i.aj, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.021, %.preheader ], [ %i.ak, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.022, %.preheader ], [ %i.ag, %.noexc3 ]
  %i.bf = add i16 %.sroa.13.1.lcssa, -1
  %i.bg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = and i16 %i.bf, %.sroa.13.1.lcssa
  %i.bj = add i64 %.sroa.5.1.lcssa, %i.bh         ; 2 uses
  %i.bk = add i64 %.sroa.9.020, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.bl = load ptr, ptr %0, align 8, !alias.scope !139, !noalias !142, !nonnull !3, !noundef !3
  %i.bm = sub nsw i64 0, %i.bj
  %i.bn = getelementptr inbounds [32 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -32
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !144, !nonnull !3, !align !100, !noundef !3
  %i.bp = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRReECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bo)
          to label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTReBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.f ; 2 uses

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTReBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.w, %i.bp             ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bq, align 1, !noalias !145
  %i.br = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bs = bitcast <16 x i1> %i.br to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bs, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !104

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTReBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTReBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit ], [ %.sroa.0.0.i7, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bs, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTReBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit ], [ %i.ck, %.lr.ph.i ]
  %i.bt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bu = zext nneg i16 %i.bt to i64
  %i.bv = add i64 %.sroa.0.0.lcssa.i, %i.bu
  %i.bw = and i64 %i.bv, %i.w                     ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !noundef !3
  %i.bz = icmp sgt i8 %i.by, -1
  br i1 %i.bz, label %bb.j, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !28

bb.j:                                             ; preds = %._crit_edge.i
  %i.ca = load <16 x i8>, ptr %i.t, align 16, !noalias !148
  %i.cb = icmp slt <16 x i8> %i.ca, zeroinitializer
  %i.cc = bitcast <16 x i1> %i.cb to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cc, 0
  %i.cd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cc, i1 true)
  %i.ce = zext nneg i16 %i.cd to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTReBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i7, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTReBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit ]
  %i.cf = phi i64 [ %i.cg, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTReBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit ]
  %i.cg = add i64 %i.cf, 16                       ; 2 uses
  %i.ch = add i64 %i.cg, %.sroa.0.010.i
  %.sroa.0.0.i7 = and i64 %i.ch, %i.w             ; 3 uses
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast7trigger15TriggerExecBodyEECsdJxlLsGgtXr_16delta_benchmarks:bb.a
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
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEENCNvMsd_B1D_B1A_15clone_from_impl0EECsdJxlLsGgtXr_16delta_benchmarks(i64 %.0.val, ptr readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
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
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #2 {
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
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
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
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
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !355, !noundef !3 ; 3 uses
  %i.w = add i64 %i.v, 1
  %i.x = lshr i64 %i.w, 3
  %i.y = mul nuw i64 %i.x, 7
  %.narrow.i.i = icmp ult i64 %i.v, 7
  %.sroa.04.0.i.i = select i1 %.narrow.i.i, i64 %i.v, i64 %i.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.z = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !noalias !355, !noundef !3
  %i.ab = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ac = sub i64 %.sroa.04.0.i.i, %i.aa
  store i64 %i.ac, ptr %i.ab, align 8, !noalias !355
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1W_EEENCNvMse_B1D_B1A_15clone_from_impl0EECsdJxlLsGgtXr_16delta_benchmarks(i64 %.0.val, ptr readonly captures(none) %.8.val) unnamed_addr #0 {
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
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEEENCNvMse_B1D_B1A_15clone_from_impl0EECsdJxlLsGgtXr_16delta_benchmarks(i64 %.0.val, ptr readonly captures(none) %.8.val) unnamed_addr #0 {
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
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEEENCNvMse_B1D_B1A_15clone_from_impl0EECsdJxlLsGgtXr_16delta_benchmarks(i64 %.0.val, ptr readonly captures(none) %.8.val) unnamed_addr #0 {
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
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEEENCNvMse_B1D_B1A_15clone_from_impl0EECsdJxlLsGgtXr_16delta_benchmarks(i64 %.0.val, ptr readonly captures(none) %.8.val) unnamed_addr #0 {
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
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEEENCNvMse_B1D_B1A_15clone_from_impl0EECsdJxlLsGgtXr_16delta_benchmarks(i64 %.0.val, ptr readonly captures(none) %.8.val) unnamed_addr #0 {
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
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEEENCNvMse_B1D_B1A_15clone_from_impl0EECsdJxlLsGgtXr_16delta_benchmarks(i64 %.0.val, ptr readonly captures(none) %.8.val) unnamed_addr #0 {
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
end_hunk_1
begin_hunk_2_@_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericStringTypelEE5valueCsdJxlLsGgtXr_16delta_benchmarks:bb.a
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
define hidden void @_RNvMs_NtNtCskQDtHcQtBkN_5tokio4util12sharded_listINtB4_11ShardedListINtNtNtB8_7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB19_9scheduler14current_thread6HandleEENtNtB17_4core6HeaderE10lock_shardCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 {
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
define hidden void @_RNvMs_NtNtCskQDtHcQtBkN_5tokio4util12sharded_listINtB4_11ShardedListINtNtNtB8_7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB19_9scheduler12multi_thread6handle6HandleEENtNtB17_4core6HeaderE10lock_shardCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 {
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
define internal fastcc void @_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr readonly captures(none) %.40.val, i64 noundef range(i64 32, 225) %2, ptr noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val16 = load ptr, ptr %0, align 8             ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val17 = load i64, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %i.c = add i64 %.val17, 1                       ; 6 uses
  %.not5.i = icmp eq i64 %i.c, 0
  br i1 %.not5.i, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, label %.lr.ph.i

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16) ]
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16) ]
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
  %i.ac = icmp ult i64 %i.ab, 7
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bn, ptr noundef nonnull align 1 dereferenceable(1) %i.al, i64 %2, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.j, %bb.i
  %exitcond.not = icmp eq i64 %.sroa.0.06, %.val17
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph

bb.l:                                             ; preds = %bb.h
  invoke fastcc void @_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes(ptr noundef %i.al, ptr noundef %i.bn, i64 noundef %2)
          to label %bb.d unwind label %bb.e

bb.m:                                             ; preds = %bb.e
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.n:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.an
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBU_EE3newCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.b = load <16 x i8>, ptr %1, align 16, !noalias !4811
  %i.c = icmp sgt <16 x i8> %i.b, splat (i8 -1)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.c, ptr %i.e, align 8
  store ptr %2, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.g, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBY_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEE3newCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.b = load <16 x i8>, ptr %1, align 16, !noalias !4814
  %i.c = icmp sgt <16 x i8> %i.b, splat (i8 -1)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.c, ptr %i.e, align 8
  store ptr %2, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.g, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE3newCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.b = load <16 x i8>, ptr %1, align 16, !noalias !4817
  %i.c = icmp sgt <16 x i8> %i.b, splat (i8 -1)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.c, ptr %i.e, align 8
  store ptr %2, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.g, align 8
end_hunk_2
begin_hunk_3_@_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.pt, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.8.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.425.i.i.i, i64 112, i1 false), !noalias !5520
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.pt, i64 344
  store i32 %.sroa.5.sroa.4.0.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !5520
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.425.i.i.i)
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.rr, ptr noundef nonnull align 8 dereferenceable(56) %i.ci, i64 56, i1 false)
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.pt, ptr %i.rs, align 16
  store i64 32, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  br label %bb.fj

bb.hj:                                            ; preds = %bb.fg
  store ptr %i.pa, ptr %i.cg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  invoke fastcc void @_RNvXs7_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(104) %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1)
          to label %bb.hn unwind label %bb.hl

bb.hk:                                            ; preds = %bb.fg
  tail call void @llvm.trap()
  unreachable

bb.hl:                                            ; preds = %bb.hj
  %i.rt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ru = atomicrmw sub ptr %i.pa, i64 1 release, align 8, !noalias !5555
  %i.rv = icmp eq i64 %i.ru, 1
  br i1 %i.rv, label %bb.hm, label %common.resume

bb.hm:                                            ; preds = %bb.hl
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cg) #41
          to label %common.resume unwind label %bb.fp

bb.hn:                                            ; preds = %bb.hj
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.pa, ptr %i.rw, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.cf, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  br label %bb.fj
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEj0_NtB4_11PartialDrop12partial_dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 16 %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, %1
  br i1 %i.a, label %_RNvXNtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtB2_11PartialDrop12partial_dropCsdJxlLsGgtXr_16delta_benchmarks.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1                       ; 3 uses
  %i.c = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %1 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.d = icmp eq i64 %i.f, %i.b
  br i1 %i.d, label %_RNvXNtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtB2_11PartialDrop12partial_dropCsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.i.i3 = phi i64 [ 0, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [112 x i8], ptr %i.c, i64 %.sroa.0.0.i.i3
  %i.f = add i64 %.sroa.0.0.i.i3, 1               ; 4 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(112) %i.e)
          to label %bb.b unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph5
  %i.g = add i64 %.sroa.0.1.i.i4, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.b
  br i1 %i.h, label %._crit_edge, label %.lr.ph5

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.b
  br i1 %i.j, label %._crit_edge, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i4 = phi i64 [ %i.g, %bb.d ], [ %i.f, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw [112 x i8], ptr %i.c, i64 %.sroa.0.1.i.i4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(112) %i.k) #38
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.i

bb.f:                                             ; preds = %.lr.ph5
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable

_RNvXNtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtB2_11PartialDrop12partial_dropCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEj2_NtB4_11PartialDrop12partial_dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(224) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, %1
  br i1 %i.a, label %_RNvXNtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtB2_11PartialDrop12partial_dropCsdJxlLsGgtXr_16delta_benchmarks.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1                       ; 3 uses
  %i.c = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %1 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.d = icmp eq i64 %i.f, %i.b
  br i1 %i.d, label %_RNvXNtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtB2_11PartialDrop12partial_dropCsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.i.i3 = phi i64 [ 0, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [112 x i8], ptr %i.c, i64 %.sroa.0.0.i.i3
  %i.f = add i64 %.sroa.0.0.i.i3, 1               ; 4 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(112) %i.e)
          to label %bb.b unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph5
  %i.g = add i64 %.sroa.0.1.i.i4, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.b
  br i1 %i.h, label %._crit_edge, label %.lr.ph5

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.b
  br i1 %i.j, label %._crit_edge, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i4 = phi i64 [ %i.g, %bb.d ], [ %i.f, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw [112 x i8], ptr %i.c, i64 %.sroa.0.1.i.i4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(112) %i.k) #38
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.i

bb.f:                                             ; preds = %.lr.ph5
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable

_RNvXNtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtB2_11PartialDrop12partial_dropCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 16              ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @9, i64 32, i1 false)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = add i64 %i.d, 1                          ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 144) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { i64, i1 } %i.g, 0         ; 3 uses
  %i.j = add i64 %i.d, 17                         ; 2 uses
  %i.k = add i64 %i.j, %i.i                       ; 5 uses
  %i.l = icmp ult i64 %i.k, %i.i
  %i.m = icmp ugt i64 %i.k, 9223372036854775792
  %or.cond.i.i = or i1 %i.l, %i.m
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !196

_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit, label %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i

_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !5560
  %i.o = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !5560 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @12, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #43, !noalias !5560
  unreachable

bb.f:                                             ; preds = %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef %i.k) #44, !noalias !5560
  unreachable

_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i
  %.sroa.0.0.i.i11.i.i = phi ptr [ %i.o, %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i11.i.i, i64 %i.i ; 3 uses
  %i.r = lshr i64 %i.f, 3
  %i.s = mul nuw nsw i64 %i.r, 7
  %.narrow = icmp ult i64 %i.d, 7
  %.sroa.07.0.i.i = select i1 %.narrow, i64 %i.d, i64 %i.s
  store ptr %i.q, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.64.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5568)
  %i.t = load ptr, ptr %1, align 8, !alias.scope !5568, !noalias !5565, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.q, ptr nonnull align 1 %i.t, i64 %i.j, i1 false), !noalias !5570
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5571)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !5574, !noalias !5575, !noundef !3 ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.x = load <16 x i8>, ptr %i.t, align 16, !noalias !5577
  %i.y = icmp sgt <16 x i8> %i.x, splat (i8 -1)
  %i.z = bitcast <16 x i1> %i.y to i16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ac = ptrtoint ptr %i.t to i64
  br label %bb.h

bb.g:                                             ; preds = %.loopexit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.i, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ad, %bb.g ], [ %i.at, %bb.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEENCNvMsd_B1D_B1A_15clone_from_impl0EECsdJxlLsGgtXr_16delta_benchmarks(i64 %.sroa.0.023.i, ptr nonnull align 8 dereferenceable(32) %i.b) #38
          to label %.body unwind label %bb.k, !noalias !5568

bb.h:                                             ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i, %.lr.ph.i
  %.sroa.0.023.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bb, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i ]
  %.sroa.14.022.i = phi i64 [ %i.v, %.lr.ph.i ], [ %i.aq, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i ]
  %.sroa.10.021.i = phi i16 [ %i.z, %.lr.ph.i ], [ %i.an, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i ] ; 2 uses
  %.sroa.6.020.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.sroa.6.1.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i ] ; 2 uses
  %.sroa.013.019.i = phi ptr [ %i.t, %.lr.ph.i ], [ %.sroa.013.1.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i ] ; 2 uses
  %.not9.i.i = icmp eq i16 %.sroa.10.021.i, 0
  br i1 %.not9.i.i, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.i
  %i.ae = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %.sroa.6.020.i, %bb.h ] ; 2 uses
  %i.af = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %.sroa.013.019.i, %bb.h ]
  %i.ag = load <16 x i8>, ptr %i.ae, align 16, !noalias !5580
  %i.ah = icmp sgt <16 x i8> %i.ag, splat (i8 -1)
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 -2304 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.ah to i16     ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %bb.h
  %.sroa.013.1.i = phi ptr [ %.sroa.013.019.i, %bb.h ], [ %i.ai, %.lr.ph.i.i ] ; 2 uses
  %.sroa.6.1.i = phi ptr [ %.sroa.6.020.i, %bb.h ], [ %i.aj, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %.sroa.10.021.i, %bb.h ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.ak = add i16 %.lcssa.i.i, -1
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = and i16 %i.ak, %.lcssa.i.i
  %i.ao = sub nsw i64 0, %i.am
  %i.ap = getelementptr inbounds [144 x i8], ptr %.sroa.013.1.i, i64 %i.ao ; 3 uses
  %i.aq = add i64 %.sroa.14.022.i, -1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5570
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -144
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 16 captures(none) dereferenceable(144) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.ar)
          to label %.noexc.i unwind label %bb.g, !noalias !5570

.noexc.i:                                         ; preds = %.loopexit.i
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 -112
  invoke fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.ab, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.as)
          to label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %bb.i, !noalias !5570

bb.i:                                             ; preds = %.noexc.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.a) #38
          to label %.body.i unwind label %bb.j, !noalias !5570

bb.j:                                             ; preds = %bb.i
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !5570
  unreachable

_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %.noexc.i
  %i.av = ptrtoint ptr %i.ap to i64
  %i.aw = sub i64 %i.ac, %i.av
  %i.ax = sdiv exact i64 %i.aw, 144               ; 2 uses
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr inbounds [144 x i8], ptr %i.q, i64 %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.ba, ptr noundef nonnull align 16 dereferenceable(144) %i.a, i64 144, i1 false), !noalias !5570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5570
  %i.bb = add nsw i64 %i.ax, 1
  %i.bc = icmp eq i64 %i.aq, 0
  br i1 %i.bc, label %.loopexit, label %bb.h

bb.k:                                             ; preds = %.body.i
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !5570
  unreachable

bb.l:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %.body.i
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.b, ptr noalias nonnull readonly captures(address, read_provenance) poison, i64 noundef 144, i64 noundef 16)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.m

.loopexit:                                        ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i, %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  store i64 %i.v, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !5565, !noalias !5568
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !5568, !noalias !5565, !noundef !3
  store i64 %i.bf, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !5565, !noalias !5568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.m:                                             ; preds = %.body
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEENtNtB2F_5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.ap = add i64 %.sroa.14.023.i, -1             ; 2 uses
  %i.aq = add i16 %.lcssa.i.i, -1
  %i.ar = and i16 %i.aq, %.lcssa.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
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
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.t = lshr i64 %i.f, 3
  %i.u = mul nuw nsw i64 %i.t, 7
  %.narrow = icmp ult i64 %i.d, 7
  %.sroa.07.0.i.i = select i1 %.narrow, i64 %i.d, i64 %i.u
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
  %i.v = load ptr, ptr %1, align 8, !alias.scope !5631, !noalias !5632, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.v, i64 %.pre-phi, i1 false), !noalias !5633
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !5631, !noalias !5632, !noundef !3 ; 3 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.z = load <16 x i8>, ptr %i.v, align 16, !noalias !5634
  %i.aa = icmp sgt <16 x i8> %i.z, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ae = ptrtoint ptr %i.v to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.k, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.af, %bb.i ], [ %i.av, %bb.k ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1W_EEENCNvMse_B1D_B1A_15clone_from_impl0EECsdJxlLsGgtXr_16delta_benchmarks(i64 %.sroa.012.028.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #38
          to label %.body unwind label %bb.m, !noalias !5631

bb.j:                                             ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %.lr.ph.i.i
  %.sroa.012.028.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bd, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ]
  %.sroa.1015.027.i.i = phi i64 [ %i.x, %.lr.ph.i.i ], [ %i.as, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ]
  %.sroa.013.026.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.6.025.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.814.024.i.i = phi i16 [ %i.ab, %.lr.ph.i.i ], [ %i.ap, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.024.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.ag = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.sroa.6.025.i.i, %bb.j ] ; 2 uses
  %i.ah = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.sroa.013.026.i.i, %bb.j ]
  %i.ai = load <16 x i8>, ptr %i.ag, align 16, !noalias !5639
  %i.aj = icmp sgt <16 x i8> %i.ai, splat (i8 -1)
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 -768 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.aj to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.025.i.i, %bb.j ], [ %i.al, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.026.i.i, %bb.j ], [ %i.ak, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.024.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.am = add i16 %.lcssa.i.i.i, -1
  %i.an = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = and i16 %i.am, %.lcssa.i.i.i
  %i.aq = sub nsw i64 0, %i.ao
  %i.ar = getelementptr inbounds [48 x i8], ptr %.sroa.013.1.i.i, i64 %i.aq ; 3 uses
  %i.as = add i64 %.sroa.1015.027.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5633
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -48
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.at)
          to label %.noexc.i.i unwind label %bb.i, !noalias !5633

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 -24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au)
          to label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %bb.k, !noalias !5633

bb.k:                                             ; preds = %.noexc.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #38
          to label %.body.i.i unwind label %bb.l, !noalias !5633

bb.l:                                             ; preds = %bb.k
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !5633
  unreachable

_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %.noexc.i.i
  %i.ax = ptrtoint ptr %i.ar to i64
  %i.ay = sub i64 %i.ae, %i.ax
  %i.az = sdiv exact i64 %i.ay, 48                ; 2 uses
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr inbounds [48 x i8], ptr %.sroa.0.0, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bc, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !5633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5633
  %i.bd = add nsw i64 %i.az, 1
  %i.be = icmp eq i64 %i.as, 0
  br i1 %i.be, label %.loopexit, label %bb.j

bb.m:                                             ; preds = %.body.i.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !5633
  unreachable

bb.n:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1n_EEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #38
          to label %bb.p unwind label %bb.o

.loopexit:                                        ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  store i64 %i.x, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !5632, !noalias !5631
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !5631, !noalias !5632, !noundef !3
  store i64 %i.bh, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !5632, !noalias !5631
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.o:                                             ; preds = %.body
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.p:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
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
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 40) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { i64, i1 } %i.g, 0
  %i.j = add nuw i64 %i.i, 8
  %i.k = and i64 %i.j, -16                        ; 3 uses
  %i.l = add i64 %i.d, 17                         ; 2 uses
  %i.m = add i64 %i.l, %i.k                       ; 5 uses
  %i.n = icmp ult i64 %i.m, %i.k
  %i.o = icmp ugt i64 %i.m, 9223372036854775792
  %or.cond.i.i = or i1 %i.n, %i.o
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !196

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.p = icmp eq i64 %i.m, 0
  br i1 %i.p, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !5644
  %i.q = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !5644 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !5644
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.t = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.m), !noalias !5644
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.t, %bb.f ], [ %i.s, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.q, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.k
  %i.v = lshr i64 %i.f, 3
  %i.w = mul nuw nsw i64 %i.v, 7
  %.narrow = icmp ult i64 %i.d, 7
  %.sroa.07.0.i.i = select i1 %.narrow, i64 %i.d, i64 %i.w
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.l, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.d, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.u, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5649)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5657)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !5659, !noalias !5660, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.x, i64 %.pre-phi, i1 false), !noalias !5661
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !5659, !noalias !5660, !noundef !3 ; 3 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.ab = load <16 x i8>, ptr %i.x, align 16, !noalias !5662
  %i.ac = icmp sgt <16 x i8> %i.ab, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ah = ptrtoint ptr %i.x to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEEENCNvMse_B1D_B1A_15clone_from_impl0EECsdJxlLsGgtXr_16delta_benchmarks(i64 %.sroa.012.027.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #38
          to label %.body unwind label %bb.m, !noalias !5659

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.012.027.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bh, %bb.l ]
  %.sroa.1015.026.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %i.av, %bb.l ]
  %.sroa.013.025.i.i = phi ptr [ %i.x, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %bb.l ] ; 2 uses
  %.sroa.6.024.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.l ] ; 2 uses
  %.sroa.814.023.i.i = phi i16 [ %i.ad, %.lr.ph.i.i ], [ %i.as, %bb.l ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.023.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.aj = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %.sroa.6.024.i.i, %bb.j ] ; 2 uses
  %i.ak = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %.sroa.013.025.i.i, %bb.j ]
  %i.al = load <16 x i8>, ptr %i.aj, align 16, !noalias !5667
  %i.am = icmp sgt <16 x i8> %i.al, splat (i8 -1)
  %i.an = getelementptr inbounds i8, ptr %i.ak, i64 -640 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.am to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.024.i.i, %bb.j ], [ %i.ao, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.025.i.i, %bb.j ], [ %i.an, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.023.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.ap = add i16 %.lcssa.i.i.i, -1
  %i.aq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = and i16 %i.ap, %.lcssa.i.i.i
  %i.at = sub nsw i64 0, %i.ar
  %i.au = getelementptr inbounds [40 x i8], ptr %.sroa.013.1.i.i, i64 %i.at ; 4 uses
  %i.av = add i64 %.sroa.1015.026.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5661
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5675)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aw)
          to label %.noexc.i.i unwind label %bb.i, !noalias !5661

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.ax = getelementptr inbounds i8, ptr %i.au, i64 -16
  %.val.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !5675, !noalias !5677, !nonnull !3, !noundef !3 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 -8
  %.val1.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !5675, !noalias !5677 ; 2 uses
  %i.az = atomicrmw add ptr %.val.i.i.i, i64 1 monotonic, align 8, !noalias !5677
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc.i.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %.noexc.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  store ptr %.val.i.i.i, ptr %i.af, align 8, !alias.scope !5672, !noalias !5678
  store ptr %.val1.i.i.i, ptr %i.ag, align 8, !alias.scope !5672, !noalias !5678
  %i.bb = ptrtoint ptr %i.au to i64
  %i.bc = sub i64 %i.ah, %i.bb
  %i.bd = sdiv exact i64 %i.bc, 40                ; 2 uses
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = getelementptr inbounds [40 x i8], ptr %.sroa.0.0, i64 %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bg, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !5661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5661
  %i.bh = add nsw i64 %i.bd, 1
  %i.bi = icmp eq i64 %i.av, 0
  br i1 %i.bi, label %.loopexit, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !5661
  unreachable

bb.n:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1r_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #38
          to label %bb.p unwind label %bb.o

.loopexit:                                        ; preds = %bb.l, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  store i64 %i.z, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !5660, !noalias !5659
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !5659, !noalias !5660, !noundef !3
  store i64 %i.bl, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !5660, !noalias !5659
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.o:                                             ; preds = %.body
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.p:                                             ; preds = %.body
  resume { ptr, i32 } %i.ai
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
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
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 40) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { i64, i1 } %i.g, 0
  %i.j = add nuw i64 %i.i, 8
  %i.k = and i64 %i.j, -16                        ; 3 uses
  %i.l = add i64 %i.d, 17                         ; 2 uses
  %i.m = add i64 %i.l, %i.k                       ; 5 uses
  %i.n = icmp ult i64 %i.m, %i.k
  %i.o = icmp ugt i64 %i.m, 9223372036854775792
  %or.cond.i.i = or i1 %i.n, %i.o
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !196

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.p = icmp eq i64 %i.m, 0
  br i1 %i.p, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !5679
  %i.q = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !5679 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !5679
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.t = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.m), !noalias !5679
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.t, %bb.f ], [ %i.s, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.q, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.k
  %i.v = lshr i64 %i.f, 3
  %i.w = mul nuw nsw i64 %i.v, 7
  %.narrow = icmp ult i64 %i.d, 7
  %.sroa.07.0.i.i = select i1 %.narrow, i64 %i.d, i64 %i.w
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.l, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.d, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.u, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5689)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5692)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !5694, !noalias !5695, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.x, i64 %.pre-phi, i1 false), !noalias !5696
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !5694, !noalias !5695, !noundef !3 ; 3 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.ab = load <16 x i8>, ptr %i.x, align 16, !noalias !5697
  %i.ac = icmp sgt <16 x i8> %i.ab, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ah = ptrtoint ptr %i.x to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEEENCNvMse_B1D_B1A_15clone_from_impl0EECsdJxlLsGgtXr_16delta_benchmarks(i64 %.sroa.012.027.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #38
          to label %.body unwind label %bb.m, !noalias !5694

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.012.027.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bh, %bb.l ]
  %.sroa.1015.026.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %i.av, %bb.l ]
  %.sroa.013.025.i.i = phi ptr [ %i.x, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %bb.l ] ; 2 uses
  %.sroa.6.024.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.l ] ; 2 uses
  %.sroa.814.023.i.i = phi i16 [ %i.ad, %.lr.ph.i.i ], [ %i.as, %bb.l ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.023.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.aj = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %.sroa.6.024.i.i, %bb.j ] ; 2 uses
  %i.ak = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %.sroa.013.025.i.i, %bb.j ]
  %i.al = load <16 x i8>, ptr %i.aj, align 16, !noalias !5702
  %i.am = icmp sgt <16 x i8> %i.al, splat (i8 -1)
  %i.an = getelementptr inbounds i8, ptr %i.ak, i64 -640 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.am to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.024.i.i, %bb.j ], [ %i.ao, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.025.i.i, %bb.j ], [ %i.an, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.023.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.ap = add i16 %.lcssa.i.i.i, -1
  %i.aq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = and i16 %i.ap, %.lcssa.i.i.i
  %i.at = sub nsw i64 0, %i.ar
  %i.au = getelementptr inbounds [40 x i8], ptr %.sroa.013.1.i.i, i64 %i.at ; 4 uses
  %i.av = add i64 %.sroa.1015.026.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5696
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5707)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5710)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aw)
          to label %.noexc.i.i unwind label %bb.i, !noalias !5696

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.ax = getelementptr inbounds i8, ptr %i.au, i64 -16
  %.val.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !5710, !noalias !5712, !nonnull !3, !noundef !3 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 -8
  %.val1.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !5710, !noalias !5712 ; 2 uses
  %i.az = atomicrmw add ptr %.val.i.i.i, i64 1 monotonic, align 8, !noalias !5712
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc.i.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %.noexc.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  store ptr %.val.i.i.i, ptr %i.af, align 8, !alias.scope !5707, !noalias !5713
  store ptr %.val1.i.i.i, ptr %i.ag, align 8, !alias.scope !5707, !noalias !5713
  %i.bb = ptrtoint ptr %i.au to i64
  %i.bc = sub i64 %i.ah, %i.bb
  %i.bd = sdiv exact i64 %i.bc, 40                ; 2 uses
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = getelementptr inbounds [40 x i8], ptr %.sroa.0.0, i64 %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bg, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !5696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5696
  %i.bh = add nsw i64 %i.bd, 1
  %i.bi = icmp eq i64 %i.av, 0
  br i1 %i.bi, label %.loopexit, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !5696
  unreachable

bb.n:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1r_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #38
          to label %bb.p unwind label %bb.o

.loopexit:                                        ; preds = %bb.l, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  store i64 %i.z, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !5695, !noalias !5694
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !5694, !noalias !5695, !noundef !3
  store i64 %i.bl, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !5695, !noalias !5694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.o:                                             ; preds = %.body
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.p:                                             ; preds = %.body
  resume { ptr, i32 } %i.ai
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
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
  %i.f = add i64 %i.d, 1                          ; 3 uses
  %i.g = icmp ugt i64 %i.f, 576460752303423487
  br i1 %i.g, label %bb.e, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %i.f, 5                      ; 3 uses
  %i.i = add nsw i64 %i.d, 17                     ; 2 uses
  %i.j = add i64 %i.i, %i.h                       ; 5 uses
  %i.k = icmp ult i64 %i.j, %i.h
  %i.l = icmp ugt i64 %i.j, 9223372036854775792
  %or.cond.i.i = or i1 %i.k, %i.l
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !196

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !5714
  %i.n = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !5714 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !5714
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.q = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.j), !noalias !5714
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.q, %bb.f ], [ %i.p, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.n, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.h
  %i.s = lshr i64 %i.f, 3
  %i.t = mul nuw nsw i64 %i.s, 7
  %.narrow = icmp ult i64 %i.d, 7
  %.sroa.07.0.i.i = select i1 %.narrow, i64 %i.d, i64 %i.t
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.i, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.d, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.r, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5719)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5724)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5727)
  %i.u = load ptr, ptr %1, align 8, !alias.scope !5729, !noalias !5730, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.u, i64 %.pre-phi, i1 false), !noalias !5731
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !5729, !noalias !5730, !noundef !3 ; 3 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.y = load <16 x i8>, ptr %i.u, align 16, !noalias !5732
  %i.z = icmp sgt <16 x i8> %i.y, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ad = ptrtoint ptr %i.u to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEEENCNvMse_B1D_B1A_15clone_from_impl0EECsdJxlLsGgtXr_16delta_benchmarks(i64 %.sroa.012.027.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #38
          to label %.body unwind label %bb.m, !noalias !5729

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.012.027.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bc, %bb.l ]
  %.sroa.1015.026.i.i = phi i64 [ %i.w, %.lr.ph.i.i ], [ %i.ar, %bb.l ]
  %.sroa.013.025.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %bb.l ] ; 2 uses
  %.sroa.6.024.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.l ] ; 2 uses
  %.sroa.814.023.i.i = phi i16 [ %i.aa, %.lr.ph.i.i ], [ %i.ao, %bb.l ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.023.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.af = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.sroa.6.024.i.i, %bb.j ] ; 2 uses
  %i.ag = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.sroa.013.025.i.i, %bb.j ]
  %i.ah = load <16 x i8>, ptr %i.af, align 16, !noalias !5737
  %i.ai = icmp sgt <16 x i8> %i.ah, splat (i8 -1)
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -512 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ai to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.024.i.i, %bb.j ], [ %i.ak, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.025.i.i, %bb.j ], [ %i.aj, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.023.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.al = add i16 %.lcssa.i.i.i, -1
  %i.am = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = and i16 %i.al, %.lcssa.i.i.i
  %i.ap = sub nsw i64 0, %i.an
  %i.aq = getelementptr inbounds [32 x i8], ptr %.sroa.013.1.i.i, i64 %i.ap ; 3 uses
  %i.ar = add i64 %.sroa.1015.026.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5731
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5745)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.as)
          to label %.noexc.i.i unwind label %bb.i, !noalias !5731

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 -8
  %.val.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !5745, !noalias !5747, !nonnull !3, !noundef !3 ; 2 uses
  %i.au = atomicrmw add ptr %.val.i.i.i, i64 1 monotonic, align 8, !noalias !5747
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc.i.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %.noexc.i.i
  store ptr %.val.i.i.i, ptr %i.ac, align 8, !alias.scope !5742, !noalias !5748
  %i.aw = ptrtoint ptr %i.aq to i64
  %i.ax = sub i64 %i.ad, %i.aw
  %i.ay = ashr exact i64 %i.ax, 5                 ; 2 uses
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = getelementptr inbounds [32 x i8], ptr %.sroa.0.0, i64 %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !5731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5731
  %i.bc = add nsw i64 %i.ay, 1
  %i.bd = icmp eq i64 %i.ar, 0
  br i1 %i.bd, label %.loopexit, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !5731
  unreachable

bb.n:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1r_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #38
          to label %bb.p unwind label %bb.o

.loopexit:                                        ; preds = %bb.l, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  store i64 %i.w, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !5730, !noalias !5729
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !5729, !noalias !5730, !noundef !3
  store i64 %i.bg, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !5730, !noalias !5729
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.o:                                             ; preds = %.body
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.p:                                             ; preds = %.body
  resume { ptr, i32 } %i.ae
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
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
  %i.f = add i64 %i.d, 1                          ; 3 uses
  %i.g = icmp ugt i64 %i.f, 576460752303423487
  br i1 %i.g, label %bb.e, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %i.f, 5                      ; 3 uses
  %i.i = add nsw i64 %i.d, 17                     ; 2 uses
  %i.j = add i64 %i.i, %i.h                       ; 5 uses
  %i.k = icmp ult i64 %i.j, %i.h
  %i.l = icmp ugt i64 %i.j, 9223372036854775792
  %or.cond.i.i = or i1 %i.k, %i.l
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !196

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !5749
  %i.n = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !5749 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !5749
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.q = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.j), !noalias !5749
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.q, %bb.f ], [ %i.p, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.n, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.h
  %i.s = lshr i64 %i.f, 3
  %i.t = mul nuw nsw i64 %i.s, 7
  %.narrow = icmp ult i64 %i.d, 7
  %.sroa.07.0.i.i = select i1 %.narrow, i64 %i.d, i64 %i.t
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.i, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.d, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.r, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5754)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5757)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5759)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5762)
  %i.u = load ptr, ptr %1, align 8, !alias.scope !5764, !noalias !5765, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.u, i64 %.pre-phi, i1 false), !noalias !5766
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !5764, !noalias !5765, !noundef !3 ; 3 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.y = load <16 x i8>, ptr %i.u, align 16, !noalias !5767
  %i.z = icmp sgt <16 x i8> %i.y, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ad = ptrtoint ptr %i.u to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEEENCNvMse_B1D_B1A_15clone_from_impl0EECsdJxlLsGgtXr_16delta_benchmarks(i64 %.sroa.012.027.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #38
          to label %.body unwind label %bb.m, !noalias !5764

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.012.027.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bc, %bb.l ]
  %.sroa.1015.026.i.i = phi i64 [ %i.w, %.lr.ph.i.i ], [ %i.ar, %bb.l ]
  %.sroa.013.025.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %bb.l ] ; 2 uses
  %.sroa.6.024.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.l ] ; 2 uses
  %.sroa.814.023.i.i = phi i16 [ %i.aa, %.lr.ph.i.i ], [ %i.ao, %bb.l ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.023.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.af = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.sroa.6.024.i.i, %bb.j ] ; 2 uses
  %i.ag = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.sroa.013.025.i.i, %bb.j ]
  %i.ah = load <16 x i8>, ptr %i.af, align 16, !noalias !5772
  %i.ai = icmp sgt <16 x i8> %i.ah, splat (i8 -1)
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -512 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ai to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.024.i.i, %bb.j ], [ %i.ak, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.025.i.i, %bb.j ], [ %i.aj, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.023.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.al = add i16 %.lcssa.i.i.i, -1
  %i.am = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = and i16 %i.al, %.lcssa.i.i.i
  %i.ap = sub nsw i64 0, %i.an
  %i.aq = getelementptr inbounds [32 x i8], ptr %.sroa.013.1.i.i, i64 %i.ap ; 3 uses
  %i.ar = add i64 %.sroa.1015.026.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5766
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5777)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5780)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.as)
          to label %.noexc.i.i unwind label %bb.i, !noalias !5766

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 -8
  %.val.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !5780, !noalias !5782, !nonnull !3, !noundef !3 ; 2 uses
  %i.au = atomicrmw add ptr %.val.i.i.i, i64 1 monotonic, align 8, !noalias !5782
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc.i.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %.noexc.i.i
  store ptr %.val.i.i.i, ptr %i.ac, align 8, !alias.scope !5777, !noalias !5783
  %i.aw = ptrtoint ptr %i.aq to i64
  %i.ax = sub i64 %i.ad, %i.aw
  %i.ay = ashr exact i64 %i.ax, 5                 ; 2 uses
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = getelementptr inbounds [32 x i8], ptr %.sroa.0.0, i64 %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !5766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5766
  %i.bc = add nsw i64 %i.ay, 1
  %i.bd = icmp eq i64 %i.ar, 0
  br i1 %i.bd, label %.loopexit, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !5766
  unreachable

bb.n:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1r_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #38
          to label %bb.p unwind label %bb.o

.loopexit:                                        ; preds = %bb.l, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  store i64 %i.w, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !5765, !noalias !5764
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !5764, !noalias !5765, !noundef !3
  store i64 %i.bg, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !5765, !noalias !5764
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.o:                                             ; preds = %.body
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.p:                                             ; preds = %.body
  resume { ptr, i32 } %i.ae
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
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
  %i.f = add i64 %i.d, 1                          ; 3 uses
  %i.g = icmp ugt i64 %i.f, 576460752303423487
  br i1 %i.g, label %bb.e, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %i.f, 5                      ; 3 uses
  %i.i = add nsw i64 %i.d, 17                     ; 2 uses
  %i.j = add i64 %i.i, %i.h                       ; 5 uses
  %i.k = icmp ult i64 %i.j, %i.h
  %i.l = icmp ugt i64 %i.j, 9223372036854775792
  %or.cond.i.i = or i1 %i.k, %i.l
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !196

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !5784
  %i.n = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !5784 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !5784
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.q = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.j), !noalias !5784
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.q, %bb.f ], [ %i.p, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.n, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.h
  %i.s = lshr i64 %i.f, 3
  %i.t = mul nuw nsw i64 %i.s, 7
  %.narrow = icmp ult i64 %i.d, 7
  %.sroa.07.0.i.i = select i1 %.narrow, i64 %i.d, i64 %i.t
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.i, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.d, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.r, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5789)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5792)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5797)
  %i.u = load ptr, ptr %1, align 8, !alias.scope !5799, !noalias !5800, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.u, i64 %.pre-phi, i1 false), !noalias !5801
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !5799, !noalias !5800, !noundef !3 ; 3 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.y = load <16 x i8>, ptr %i.u, align 16, !noalias !5802
  %i.z = icmp sgt <16 x i8> %i.y, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ad = ptrtoint ptr %i.u to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEEENCNvMse_B1D_B1A_15clone_from_impl0EECsdJxlLsGgtXr_16delta_benchmarks(i64 %.sroa.012.027.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #38
          to label %.body unwind label %bb.m, !noalias !5799

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.012.027.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bc, %bb.l ]
  %.sroa.1015.026.i.i = phi i64 [ %i.w, %.lr.ph.i.i ], [ %i.ar, %bb.l ]
  %.sroa.013.025.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %bb.l ] ; 2 uses
  %.sroa.6.024.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.l ] ; 2 uses
  %.sroa.814.023.i.i = phi i16 [ %i.aa, %.lr.ph.i.i ], [ %i.ao, %bb.l ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.023.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.af = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.sroa.6.024.i.i, %bb.j ] ; 2 uses
  %i.ag = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.sroa.013.025.i.i, %bb.j ]
  %i.ah = load <16 x i8>, ptr %i.af, align 16, !noalias !5807
  %i.ai = icmp sgt <16 x i8> %i.ah, splat (i8 -1)
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -512 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ai to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.024.i.i, %bb.j ], [ %i.ak, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.025.i.i, %bb.j ], [ %i.aj, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.023.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.al = add i16 %.lcssa.i.i.i, -1
  %i.am = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = and i16 %i.al, %.lcssa.i.i.i
  %i.ap = sub nsw i64 0, %i.an
  %i.aq = getelementptr inbounds [32 x i8], ptr %.sroa.013.1.i.i, i64 %i.ap ; 3 uses
  %i.ar = add i64 %.sroa.1015.026.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5801
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5815)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.as)
          to label %.noexc.i.i unwind label %bb.i, !noalias !5801

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 -8
  %.val.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !5815, !noalias !5817, !nonnull !3, !noundef !3 ; 2 uses
  %i.au = atomicrmw add ptr %.val.i.i.i, i64 1 monotonic, align 8, !noalias !5817
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc.i.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %.noexc.i.i
  store ptr %.val.i.i.i, ptr %i.ac, align 8, !alias.scope !5812, !noalias !5818
  %i.aw = ptrtoint ptr %i.aq to i64
  %i.ax = sub i64 %i.ad, %i.aw
  %i.ay = ashr exact i64 %i.ax, 5                 ; 2 uses
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = getelementptr inbounds [32 x i8], ptr %.sroa.0.0, i64 %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !5801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5801
  %i.bc = add nsw i64 %i.ay, 1
  %i.bd = icmp eq i64 %i.ar, 0
  br i1 %i.bd, label %.loopexit, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !5801
  unreachable

bb.n:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1r_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #38
          to label %bb.p unwind label %bb.o

.loopexit:                                        ; preds = %bb.l, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  store i64 %i.w, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !5800, !noalias !5799
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !5799, !noalias !5800, !noundef !3
  store i64 %i.bg, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !5800, !noalias !5799
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.o:                                             ; preds = %.body
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.p:                                             ; preds = %.body
  resume { ptr, i32 } %i.ae
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
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
  %i.f = add i64 %i.d, 1                          ; 3 uses
  %i.g = icmp ugt i64 %i.f, 576460752303423487
  br i1 %i.g, label %bb.e, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %i.f, 5                      ; 3 uses
  %i.i = add nsw i64 %i.d, 17                     ; 2 uses
  %i.j = add i64 %i.i, %i.h                       ; 5 uses
  %i.k = icmp ult i64 %i.j, %i.h
  %i.l = icmp ugt i64 %i.j, 9223372036854775792
  %or.cond.i.i = or i1 %i.k, %i.l
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !196

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !5819
  %i.n = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !5819 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !5819
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.q = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.j), !noalias !5819
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.q, %bb.f ], [ %i.p, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.n, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.h
  %i.s = lshr i64 %i.f, 3
  %i.t = mul nuw nsw i64 %i.s, 7
  %.narrow = icmp ult i64 %i.d, 7
  %.sroa.07.0.i.i = select i1 %.narrow, i64 %i.d, i64 %i.t
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.i, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.d, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.r, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5832)
  %i.u = load ptr, ptr %1, align 8, !alias.scope !5834, !noalias !5835, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.u, i64 %.pre-phi, i1 false), !noalias !5836
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !5834, !noalias !5835, !noundef !3 ; 3 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.y = load <16 x i8>, ptr %i.u, align 16, !noalias !5837
  %i.z = icmp sgt <16 x i8> %i.y, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ad = ptrtoint ptr %i.u to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEEENCNvMse_B1D_B1A_15clone_from_impl0EECsdJxlLsGgtXr_16delta_benchmarks(i64 %.sroa.012.027.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #38
          to label %.body unwind label %bb.m, !noalias !5834

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.012.027.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bc, %bb.l ]
  %.sroa.1015.026.i.i = phi i64 [ %i.w, %.lr.ph.i.i ], [ %i.ar, %bb.l ]
  %.sroa.013.025.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %bb.l ] ; 2 uses
  %.sroa.6.024.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.l ] ; 2 uses
  %.sroa.814.023.i.i = phi i16 [ %i.aa, %.lr.ph.i.i ], [ %i.ao, %bb.l ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.023.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.af = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.sroa.6.024.i.i, %bb.j ] ; 2 uses
  %i.ag = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.sroa.013.025.i.i, %bb.j ]
  %i.ah = load <16 x i8>, ptr %i.af, align 16, !noalias !5842
  %i.ai = icmp sgt <16 x i8> %i.ah, splat (i8 -1)
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -512 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ai to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.024.i.i, %bb.j ], [ %i.ak, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.025.i.i, %bb.j ], [ %i.aj, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.023.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.al = add i16 %.lcssa.i.i.i, -1
  %i.am = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = and i16 %i.al, %.lcssa.i.i.i
  %i.ap = sub nsw i64 0, %i.an
  %i.aq = getelementptr inbounds [32 x i8], ptr %.sroa.013.1.i.i, i64 %i.ap ; 3 uses
  %i.ar = add i64 %.sroa.1015.026.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5836
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5847)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5850)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.as)
          to label %.noexc.i.i unwind label %bb.i, !noalias !5836

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 -8
  %.val.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !5850, !noalias !5852, !nonnull !3, !noundef !3 ; 2 uses
  %i.au = atomicrmw add ptr %.val.i.i.i, i64 1 monotonic, align 8, !noalias !5852
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc.i.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %.noexc.i.i
  store ptr %.val.i.i.i, ptr %i.ac, align 8, !alias.scope !5847, !noalias !5853
  %i.aw = ptrtoint ptr %i.aq to i64
  %i.ax = sub i64 %i.ad, %i.aw
  %i.ay = ashr exact i64 %i.ax, 5                 ; 2 uses
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = getelementptr inbounds [32 x i8], ptr %.sroa.0.0, i64 %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !5836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5836
  %i.bc = add nsw i64 %i.ay, 1
  %i.bd = icmp eq i64 %i.ar, 0
  br i1 %i.bd, label %.loopexit, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !5836
  unreachable

bb.n:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1r_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #38
          to label %bb.p unwind label %bb.o

.loopexit:                                        ; preds = %bb.l, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  store i64 %i.w, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !5835, !noalias !5834
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !5834, !noalias !5835, !noundef !3
  store i64 %i.bg, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !5835, !noalias !5834
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.o:                                             ; preds = %.body
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.p:                                             ; preds = %.body
  resume { ptr, i32 } %i.ae
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
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
  %i.f = add i64 %i.d, 1                          ; 3 uses
  %i.g = icmp ugt i64 %i.f, 576460752303423487
  br i1 %i.g, label %bb.e, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %i.f, 5                      ; 3 uses
  %i.i = add nsw i64 %i.d, 17                     ; 2 uses
  %i.j = add i64 %i.i, %i.h                       ; 5 uses
  %i.k = icmp ult i64 %i.j, %i.h
  %i.l = icmp ugt i64 %i.j, 9223372036854775792
  %or.cond.i.i = or i1 %i.k, %i.l
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !196

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !5854
  %i.n = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !5854 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !5854
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.q = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.j), !noalias !5854
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.q, %bb.f ], [ %i.p, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.n, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.h
  %i.s = lshr i64 %i.f, 3
  %i.t = mul nuw nsw i64 %i.s, 7
  %.narrow = icmp ult i64 %i.d, 7
  %.sroa.07.0.i.i = select i1 %.narrow, i64 %i.d, i64 %i.t
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.i, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.d, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.r, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5867)
  %i.u = load ptr, ptr %1, align 8, !alias.scope !5869, !noalias !5870, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.u, i64 %.pre-phi, i1 false), !noalias !5871
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !5869, !noalias !5870, !noundef !3 ; 3 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.y = load <16 x i8>, ptr %i.u, align 16, !noalias !5872
  %i.z = icmp sgt <16 x i8> %i.y, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ad = ptrtoint ptr %i.u to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEEENCNvMse_B1D_B1A_15clone_from_impl0EECsdJxlLsGgtXr_16delta_benchmarks(i64 %.sroa.012.027.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #38
          to label %.body unwind label %bb.m, !noalias !5869

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.012.027.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bc, %bb.l ]
  %.sroa.1015.026.i.i = phi i64 [ %i.w, %.lr.ph.i.i ], [ %i.ar, %bb.l ]
  %.sroa.013.025.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %bb.l ] ; 2 uses
  %.sroa.6.024.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.l ] ; 2 uses
  %.sroa.814.023.i.i = phi i16 [ %i.aa, %.lr.ph.i.i ], [ %i.ao, %bb.l ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.023.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.af = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.sroa.6.024.i.i, %bb.j ] ; 2 uses
  %i.ag = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.sroa.013.025.i.i, %bb.j ]
  %i.ah = load <16 x i8>, ptr %i.af, align 16, !noalias !5877
  %i.ai = icmp sgt <16 x i8> %i.ah, splat (i8 -1)
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -512 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ai to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.024.i.i, %bb.j ], [ %i.ak, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.025.i.i, %bb.j ], [ %i.aj, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.023.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.al = add i16 %.lcssa.i.i.i, -1
  %i.am = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = and i16 %i.al, %.lcssa.i.i.i
  %i.ap = sub nsw i64 0, %i.an
  %i.aq = getelementptr inbounds [32 x i8], ptr %.sroa.013.1.i.i, i64 %i.ap ; 3 uses
  %i.ar = add i64 %.sroa.1015.026.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5871
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5885)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.as)
          to label %.noexc.i.i unwind label %bb.i, !noalias !5871

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 -8
  %.val.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !5885, !noalias !5887, !nonnull !3, !noundef !3 ; 2 uses
  %i.au = atomicrmw add ptr %.val.i.i.i, i64 1 monotonic, align 8, !noalias !5887
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc.i.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %.noexc.i.i
  store ptr %.val.i.i.i, ptr %i.ac, align 8, !alias.scope !5882, !noalias !5888
  %i.aw = ptrtoint ptr %i.aq to i64
  %i.ax = sub i64 %i.ad, %i.aw
  %i.ay = ashr exact i64 %i.ax, 5                 ; 2 uses
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = getelementptr inbounds [32 x i8], ptr %.sroa.0.0, i64 %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !5871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5871
  %i.bc = add nsw i64 %i.ay, 1
  %i.bd = icmp eq i64 %i.ar, 0
  br i1 %i.bd, label %.loopexit, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !5871
  unreachable

bb.n:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1r_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #38
          to label %bb.p unwind label %bb.o

.loopexit:                                        ; preds = %bb.l, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  store i64 %i.w, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !5870, !noalias !5869
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !5869, !noalias !5870, !noundef !3
  store i64 %i.bg, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !5870, !noalias !5869
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.o:                                             ; preds = %.body
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.p:                                             ; preds = %.body
  resume { ptr, i32 } %i.ae
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
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
  %i.f = add i64 %i.d, 1                          ; 3 uses
  %i.g = icmp ugt i64 %i.f, 576460752303423487
  br i1 %i.g, label %bb.e, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %i.f, 5                      ; 3 uses
  %i.i = add nsw i64 %i.d, 17                     ; 2 uses
  %i.j = add i64 %i.i, %i.h                       ; 5 uses
  %i.k = icmp ult i64 %i.j, %i.h
  %i.l = icmp ugt i64 %i.j, 9223372036854775792
  %or.cond.i.i = or i1 %i.k, %i.l
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !196

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !5889
  %i.n = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !5889 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !5889
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.q = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.j), !noalias !5889
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.q, %bb.f ], [ %i.p, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.n, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.h
  %i.s = lshr i64 %i.f, 3
  %i.t = mul nuw nsw i64 %i.s, 7
  %.narrow = icmp ult i64 %i.d, 7
  %.sroa.07.0.i.i = select i1 %.narrow, i64 %i.d, i64 %i.t
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.i, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.d, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.r, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5897)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5902)
  %i.u = load ptr, ptr %1, align 8, !alias.scope !5904, !noalias !5905, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.u, i64 %.pre-phi, i1 false), !noalias !5906
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !5904, !noalias !5905, !noundef !3 ; 3 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.y = load <16 x i8>, ptr %i.u, align 16, !noalias !5907
  %i.z = icmp sgt <16 x i8> %i.y, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ad = ptrtoint ptr %i.u to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEEENCNvMse_B1D_B1A_15clone_from_impl0EECsdJxlLsGgtXr_16delta_benchmarks(i64 %.sroa.012.027.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #38
          to label %.body unwind label %bb.m, !noalias !5904

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.012.027.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bc, %bb.l ]
  %.sroa.1015.026.i.i = phi i64 [ %i.w, %.lr.ph.i.i ], [ %i.ar, %bb.l ]
  %.sroa.013.025.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %bb.l ] ; 2 uses
  %.sroa.6.024.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.l ] ; 2 uses
  %.sroa.814.023.i.i = phi i16 [ %i.aa, %.lr.ph.i.i ], [ %i.ao, %bb.l ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.023.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.af = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.sroa.6.024.i.i, %bb.j ] ; 2 uses
  %i.ag = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.sroa.013.025.i.i, %bb.j ]
  %i.ah = load <16 x i8>, ptr %i.af, align 16, !noalias !5912
  %i.ai = icmp sgt <16 x i8> %i.ah, splat (i8 -1)
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -512 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ai to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.024.i.i, %bb.j ], [ %i.ak, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.025.i.i, %bb.j ], [ %i.aj, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.023.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.al = add i16 %.lcssa.i.i.i, -1
  %i.am = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = and i16 %i.al, %.lcssa.i.i.i
  %i.ap = sub nsw i64 0, %i.an
  %i.aq = getelementptr inbounds [32 x i8], ptr %.sroa.013.1.i.i, i64 %i.ap ; 3 uses
  %i.ar = add i64 %.sroa.1015.026.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5906
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5920)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.as)
          to label %.noexc.i.i unwind label %bb.i, !noalias !5906

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 -8
  %.val.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !5920, !noalias !5922, !nonnull !3, !noundef !3 ; 2 uses
  %i.au = atomicrmw add ptr %.val.i.i.i, i64 1 monotonic, align 8, !noalias !5922
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc.i.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %.noexc.i.i
  store ptr %.val.i.i.i, ptr %i.ac, align 8, !alias.scope !5917, !noalias !5923
  %i.aw = ptrtoint ptr %i.aq to i64
  %i.ax = sub i64 %i.ad, %i.aw
  %i.ay = ashr exact i64 %i.ax, 5                 ; 2 uses
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = getelementptr inbounds [32 x i8], ptr %.sroa.0.0, i64 %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !5906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5906
  %i.bc = add nsw i64 %i.ay, 1
  %i.bd = icmp eq i64 %i.ar, 0
  br i1 %i.bd, label %.loopexit, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !5906
  unreachable

bb.n:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1r_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #38
          to label %bb.p unwind label %bb.o

.loopexit:                                        ; preds = %bb.l, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  store i64 %i.w, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !5905, !noalias !5904
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !5904, !noalias !5905, !noundef !3
  store i64 %i.bg, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !5905, !noalias !5904
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.o:                                             ; preds = %.body
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.p:                                             ; preds = %.body
  resume { ptr, i32 } %i.ae
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtB1w_5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @9, i64 32, i1 false)
  br label %bb.p

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
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !5924
  %i.o = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !5924 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !5924
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.r = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.k), !noalias !5924
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.r, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.o, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.i
  %i.t = lshr i64 %i.f, 3
  %i.u = mul nuw nsw i64 %i.t, 7
  %.narrow = icmp ult i64 %i.d, 7
  %.sroa.07.0.i.i = select i1 %.narrow, i64 %i.d, i64 %i.u
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.g, %bb.h
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5929)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5932)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5934)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5937)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !5939, !noalias !5940, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.v, i64 %.pre-phi, i1 false), !noalias !5941
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !5939, !noalias !5940, !noundef !3 ; 3 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.z = load <16 x i8>, ptr %i.v, align 16, !noalias !5942
  %i.aa = icmp sgt <16 x i8> %i.z, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.ae = ptrtoint ptr %i.v to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.m, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.af, %bb.i ], [ %i.aw, %bb.m ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1W_EEEENCNvMse_B1D_B1A_15clone_from_impl0EECsdJxlLsGgtXr_16delta_benchmarks(i64 %.sroa.012.028.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #38
          to label %.body unwind label %bb.o, !noalias !5939

bb.j:                                             ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %.lr.ph.i.i
  %.sroa.012.028.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.be, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ]
  %.sroa.1015.027.i.i = phi i64 [ %i.x, %.lr.ph.i.i ], [ %i.as, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ]
  %.sroa.013.026.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.6.025.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.814.024.i.i = phi i16 [ %i.ab, %.lr.ph.i.i ], [ %i.ap, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.024.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.ag = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.sroa.6.025.i.i, %bb.j ] ; 2 uses
  %i.ah = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.sroa.013.026.i.i, %bb.j ]
  %i.ai = load <16 x i8>, ptr %i.ag, align 16, !noalias !5947
  %i.aj = icmp sgt <16 x i8> %i.ai, splat (i8 -1)
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 -768 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.aj to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.025.i.i, %bb.j ], [ %i.al, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.026.i.i, %bb.j ], [ %i.ak, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.024.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.am = add i16 %.lcssa.i.i.i, -1
  %i.an = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = and i16 %i.am, %.lcssa.i.i.i
  %i.aq = sub nsw i64 0, %i.ao
  %i.ar = getelementptr inbounds [48 x i8], ptr %.sroa.013.1.i.i, i64 %i.aq ; 3 uses
  %i.as = add i64 %.sroa.1015.027.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5941
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5955)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.at)
          to label %.noexc.i.i unwind label %bb.i, !noalias !5941

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 -24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5957)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5960)
  %i.av = load i64, ptr %i.au, align 8, !range !244, !alias.scope !5962, !noalias !5963, !noundef !3
  %.not.i.i.i.i = icmp eq i64 %i.av, -9223372036854775808
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au)
          to label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %bb.m, !noalias !5941

bb.l:                                             ; preds = %.noexc.i.i
  store i64 -9223372036854775808, ptr %i.ad, align 8, !alias.scope !5964, !noalias !5965
  br label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #38
          to label %.body.i.i unwind label %bb.n, !noalias !5941

bb.n:                                             ; preds = %bb.m
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !5941
  unreachable

_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %bb.l, %bb.k
  %i.ay = ptrtoint ptr %i.ar to i64
  %i.az = sub i64 %i.ae, %i.ay
  %i.ba = sdiv exact i64 %i.az, 48                ; 2 uses
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = getelementptr inbounds [48 x i8], ptr %.sroa.0.0, i64 %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bd, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !5941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5941
  %i.be = add nsw i64 %i.ba, 1
  %i.bf = icmp eq i64 %i.as, 0
  br i1 %i.bf, label %.loopexit, label %bb.j

bb.o:                                             ; preds = %.body.i.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !5941
  unreachable

bb.p:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1n_EEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #38
          to label %bb.r unwind label %bb.q

.loopexit:                                        ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  store i64 %i.x, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !5940, !noalias !5939
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !5939, !noalias !5940, !noundef !3
  store i64 %i.bi, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !5940, !noalias !5939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.p

bb.q:                                             ; preds = %.body
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.r:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 16              ; 6 uses
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
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 144) ; 2 uses
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
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !5966
  %i.o = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !5966 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !5966
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.r = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.k), !noalias !5966
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.r, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.o, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.i
  %i.t = lshr i64 %i.f, 3
  %i.u = mul nuw nsw i64 %i.t, 7
  %.narrow = icmp ult i64 %i.d, 7
  %.sroa.07.0.i.i = select i1 %.narrow, i64 %i.d, i64 %i.u
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.g, %bb.h
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5971)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5974)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5976)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5979)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !5981, !noalias !5982, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.v, i64 %.pre-phi, i1 false), !noalias !5983
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !5981, !noalias !5982, !noundef !3 ; 3 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.z = load <16 x i8>, ptr %i.v, align 16, !noalias !5984
  %i.aa = icmp sgt <16 x i8> %i.z, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ae = ptrtoint ptr %i.v to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.k, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.af, %bb.i ], [ %i.av, %bb.k ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEENCNvMse_B1D_B1A_15clone_from_impl0EECsdJxlLsGgtXr_16delta_benchmarks(i64 %.sroa.012.028.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #38
          to label %.body unwind label %bb.m, !noalias !5981

bb.j:                                             ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %.lr.ph.i.i
  %.sroa.012.028.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bd, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ]
  %.sroa.1015.027.i.i = phi i64 [ %i.x, %.lr.ph.i.i ], [ %i.as, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ]
  %.sroa.013.026.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.6.025.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.814.024.i.i = phi i16 [ %i.ab, %.lr.ph.i.i ], [ %i.ap, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.024.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.ag = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.sroa.6.025.i.i, %bb.j ] ; 2 uses
  %i.ah = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.sroa.013.026.i.i, %bb.j ]
  %i.ai = load <16 x i8>, ptr %i.ag, align 16, !noalias !5989
  %i.aj = icmp sgt <16 x i8> %i.ai, splat (i8 -1)
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 -2304 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.aj to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.025.i.i, %bb.j ], [ %i.al, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.026.i.i, %bb.j ], [ %i.ak, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.024.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.am = add i16 %.lcssa.i.i.i, -1
  %i.an = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = and i16 %i.am, %.lcssa.i.i.i
  %i.aq = sub nsw i64 0, %i.ao
  %i.ar = getelementptr inbounds [144 x i8], ptr %.sroa.013.1.i.i, i64 %i.aq ; 3 uses
  %i.as = add i64 %.sroa.1015.027.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5983
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -144
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 16 captures(none) dereferenceable(144) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.at)
          to label %.noexc.i.i unwind label %bb.i, !noalias !5983

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 -112
  invoke fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.ad, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.au)
          to label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %bb.k, !noalias !5983

bb.k:                                             ; preds = %.noexc.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.a) #38
          to label %.body.i.i unwind label %bb.l, !noalias !5983

bb.l:                                             ; preds = %bb.k
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !5983
  unreachable

_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %.noexc.i.i
  %i.ax = ptrtoint ptr %i.ar to i64
  %i.ay = sub i64 %i.ae, %i.ax
  %i.az = sdiv exact i64 %i.ay, 144               ; 2 uses
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr inbounds [144 x i8], ptr %.sroa.0.0, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.bc, ptr noundef nonnull align 16 dereferenceable(144) %i.a, i64 144, i1 false), !noalias !5983
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5983
  %i.bd = add nsw i64 %i.az, 1
  %i.be = icmp eq i64 %i.as, 0
  br i1 %i.be, label %.loopexit, label %bb.j

bb.m:                                             ; preds = %.body.i.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !5983
  unreachable

bb.n:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %.body.i.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.o

.loopexit:                                        ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  store i64 %i.x, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !5982, !noalias !5981
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !5981, !noalias !5982, !noundef !3
  store i64 %i.bh, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !5982, !noalias !5981
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.o:                                             ; preds = %.body
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !3 ; 6 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @9, i64 32, i1 false)
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = add i64 %i.e, 1                          ; 2 uses
  %i.h = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.g, i64 56) ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1
  br i1 %i.i, label %bb.e, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.j = extractvalue { i64, i1 } %i.h, 0
  %i.k = add nuw i64 %i.j, 8
  %i.l = and i64 %i.k, -16                        ; 3 uses
  %i.m = add i64 %i.e, 17                         ; 2 uses
  %i.n = add i64 %i.m, %i.l                       ; 5 uses
  %i.o = icmp ult i64 %i.n, %i.l
  %i.p = icmp ugt i64 %i.n, 9223372036854775792
  %or.cond.i.i = or i1 %i.o, %i.p
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !196

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.q = icmp eq i64 %i.n, 0
  br i1 %i.q, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !5994
  %i.r = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !5994 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !5994
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.u = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.n), !noalias !5994
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.u, %bb.f ], [ %i.t, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.r, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.l
  %i.w = lshr i64 %i.g, 3
  %i.x = mul nuw nsw i64 %i.w, 7
  %.narrow = icmp ult i64 %i.e, 7
  %.sroa.07.0.i.i = select i1 %.narrow, i64 %i.e, i64 %i.x
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.m, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.e, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.v, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6004)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6007)
  %i.y = load ptr, ptr %1, align 8, !alias.scope !6009, !noalias !6010, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.y, i64 %.pre-phi, i1 false), !noalias !6011
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !6009, !noalias !6010, !noundef !3 ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.ac = load <16 x i8>, ptr %i.y, align 16, !noalias !6012
  %i.ad = icmp sgt <16 x i8> %i.ac, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.aj = ptrtoint ptr %i.y to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.v, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ak, %bb.i ], [ %i.bh, %bb.v ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEEENCNvMse_B1D_B1A_15clone_from_impl0EECsdJxlLsGgtXr_16delta_benchmarks(i64 %.sroa.012.030.i.i, ptr nonnull align 8 dereferenceable(32) %i.c) #38
          to label %.body unwind label %bb.x, !noalias !6009

bb.j:                                             ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %.lr.ph.i.i
  %.sroa.012.030.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bp, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ]
  %.sroa.1015.029.i.i = phi i64 [ %i.aa, %.lr.ph.i.i ], [ %i.ax, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ]
  %.sroa.013.028.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.6.027.i.i = phi ptr [ %i.af, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.814.026.i.i = phi i16 [ %i.ae, %.lr.ph.i.i ], [ %i.au, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.026.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.al = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %.sroa.6.027.i.i, %bb.j ] ; 2 uses
  %i.am = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %.sroa.013.028.i.i, %bb.j ]
  %i.an = load <16 x i8>, ptr %i.al, align 16, !noalias !6017
  %i.ao = icmp sgt <16 x i8> %i.an, splat (i8 -1)
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 -896 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ao to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.027.i.i, %bb.j ], [ %i.aq, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.028.i.i, %bb.j ], [ %i.ap, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.026.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.ar = add i16 %.lcssa.i.i.i, -1
  %i.as = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.at = zext nneg i16 %i.as to i64
  %i.au = and i16 %i.ar, %.lcssa.i.i.i
  %i.av = sub nsw i64 0, %i.at
  %i.aw = getelementptr inbounds [56 x i8], ptr %.sroa.013.1.i.i, i64 %i.av ; 7 uses
  %i.ax = add i64 %.sroa.1015.029.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6011
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -56
  call void @llvm.experimental.noalias.scope.decl(metadata !6022)
  call void @llvm.experimental.noalias.scope.decl(metadata !6025)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ay)
          to label %.noexc.i.i unwind label %bb.i, !noalias !6011

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.az = getelementptr inbounds i8, ptr %i.aw, i64 -32 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6027)
  call void @llvm.experimental.noalias.scope.decl(metadata !6030)
  %i.ba = load i8, ptr %i.az, align 8, !range !1625, !alias.scope !6032, !noalias !6033, !noundef !3 ; 3 uses
  %i.bb = add nsw i8 %i.ba, -6
  %i.bc = icmp samesign ugt i8 %i.ba, 5
  %narrow.i.i.i.i = select i1 %i.bc, i8 %i.bb, i8 3
  switch i8 %narrow.i.i.i.i, label %bb.k [
    i8 0, label %bb.l
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.o
  ]

bb.k:                                             ; preds = %.noexc.i.i
  unreachable

bb.l:                                             ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.az, i64 32, i1 false), !alias.scope !6034, !noalias !6011
  br label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i

bb.m:                                             ; preds = %.noexc.i.i
  %i.bd = getelementptr inbounds i8, ptr %i.aw, i64 -24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bd)
          to label %.noexc.i.i.i unwind label %bb.v, !noalias !6011

.noexc.i.i.i:                                     ; preds = %bb.m
  store i8 7, ptr %i.ag, align 8, !alias.scope !6035, !noalias !6036
  br label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i

bb.n:                                             ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.az, i64 32, i1 false), !alias.scope !6034, !noalias !6011
  br label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i

bb.o:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6037
  call void @llvm.experimental.noalias.scope.decl(metadata !6038)
  switch i8 %i.ba, label %default.unreachable1.i.i.i.i.i [
    i8 0, label %bb.p
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.s
    i8 4, label %bb.t
    i8 5, label %bb.u
  ]

default.unreachable1.i.i.i.i.i:                   ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  store i8 0, ptr %i.a, align 8, !alias.scope !6041, !noalias !6043
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.az, i64 32, i1 false), !alias.scope !6044, !noalias !6033
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i

bb.r:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.az, i64 32, i1 false), !alias.scope !6044, !noalias !6033
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i

bb.s:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds i8, ptr %i.aw, i64 -24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be)
          to label %.noexc1.i.i.i unwind label %bb.v, !noalias !6045

.noexc1.i.i.i:                                    ; preds = %bb.s
  store i8 3, ptr %i.a, align 8, !alias.scope !6041, !noalias !6043
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i

bb.t:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds i8, ptr %i.aw, i64 -24
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bf)
          to label %.noexc2.i.i.i unwind label %bb.v, !noalias !6045

.noexc2.i.i.i:                                    ; preds = %bb.t
  store i8 4, ptr %i.a, align 8, !alias.scope !6041, !noalias !6043
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i

bb.u:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds i8, ptr %i.aw, i64 -24
  invoke void @_RNvXs0_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bg)
          to label %.noexc3.i.i.i unwind label %bb.v, !noalias !6045

.noexc3.i.i.i:                                    ; preds = %bb.u
  store i8 5, ptr %i.a, align 8, !alias.scope !6041, !noalias !6043
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i

_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %.noexc3.i.i.i, %.noexc2.i.i.i, %.noexc1.i.i.i, %bb.r, %bb.q, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !6036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6037
  br label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.m
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b) #38
          to label %.body.i.i unwind label %bb.w, !noalias !6011

bb.w:                                             ; preds = %bb.v
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !6011
  unreachable

_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i, %bb.n, %.noexc.i.i.i, %bb.l
  %i.bj = ptrtoint ptr %i.aw to i64
  %i.bk = sub i64 %i.aj, %i.bj
  %i.bl = sdiv exact i64 %i.bk, 56                ; 2 uses
  %i.bm = sub nsw i64 0, %i.bl
  %i.bn = getelementptr inbounds [56 x i8], ptr %.sroa.0.0, i64 %i.bm
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bo, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !6011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6011
  %i.bp = add nsw i64 %i.bl, 1
  %i.bq = icmp eq i64 %i.ax, 0
  br i1 %i.bq, label %.loopexit, label %bb.j

bb.x:                                             ; preds = %.body.i.i
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !6011
  unreachable

bb.y:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.c) #38
          to label %bb.aa unwind label %bb.z

.loopexit:                                        ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  store i64 %i.aa, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !6010, !noalias !6009
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !6009, !noalias !6010, !noundef !3
  store i64 %i.bt, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !6010, !noalias !6009
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.y

bb.z:                                             ; preds = %.body
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.aa:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.i.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [136 x i8], align 8               ; 14 uses
  %i.f = alloca [32 x i8], align 8                ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !3 ; 6 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @9, i64 32, i1 false)
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.j = add i64 %i.h, 1                          ; 2 uses
  %i.k = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.j, i64 136) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %bb.e, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i1 } %i.k, 0
  %i.n = add nuw i64 %i.m, 8
  %i.o = and i64 %i.n, -16                        ; 3 uses
  %i.p = add i64 %i.h, 17                         ; 2 uses
  %i.q = add i64 %i.p, %i.o                       ; 5 uses
  %i.r = icmp ult i64 %i.q, %i.o
  %i.s = icmp ugt i64 %i.q, 9223372036854775792
  %or.cond.i.i = or i1 %i.r, %i.s
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !196

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.t = icmp eq i64 %i.q, 0
  br i1 %i.t, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !6046
  %i.u = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !6046 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6046
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.x = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.q), !noalias !6046
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.x, %bb.f ], [ %i.w, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.u, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.o
  %i.z = lshr i64 %i.j, 3
  %i.aa = mul nuw nsw i64 %i.z, 7
  %.narrow = icmp ult i64 %i.h, 7
  %.sroa.07.0.i.i = select i1 %.narrow, i64 %i.h, i64 %i.aa
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.p, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.h, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.y, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6059)
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !6061, !noalias !6062, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.ab, i64 %.pre-phi, i1 false), !noalias !6063
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !6061, !noalias !6062, !noundef !3 ; 3 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.af = load <16 x i8>, ptr %i.ab, align 16, !noalias !6064
  %i.ag = icmp sgt <16 x i8> %i.af, splat (i8 -1)
  %i.ah = bitcast <16 x i1> %i.ag to i16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.5.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 129
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ar = ptrtoint ptr %i.ab to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.body.i.i.i, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.as, %bb.i ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEEENCNvMse_B1D_B1A_15clone_from_impl0EECsdJxlLsGgtXr_16delta_benchmarks(i64 %.sroa.012.032.i.i, ptr nonnull align 8 dereferenceable(32) %i.f) #38
          to label %.body unwind label %bb.z, !noalias !6061

bb.j:                                             ; preds = %bb.y, %.lr.ph.i.i
  %.sroa.012.032.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ci, %bb.y ]
  %.sroa.1015.031.i.i = phi i64 [ %i.ad, %.lr.ph.i.i ], [ %i.bf, %bb.y ]
  %.sroa.013.030.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %bb.y ] ; 2 uses
  %.sroa.6.029.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.y ] ; 2 uses
  %.sroa.814.028.i.i = phi i16 [ %i.ah, %.lr.ph.i.i ], [ %i.bc, %bb.y ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.028.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.at = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %.sroa.6.029.i.i, %bb.j ] ; 2 uses
  %i.au = phi ptr [ %i.ax, %.lr.ph.i.i.i ], [ %.sroa.013.030.i.i, %bb.j ]
  %i.av = load <16 x i8>, ptr %i.at, align 16, !noalias !6069
  %i.aw = icmp sgt <16 x i8> %i.av, splat (i8 -1)
  %i.ax = getelementptr inbounds i8, ptr %i.au, i64 -2176 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.aw to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.029.i.i, %bb.j ], [ %i.ay, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.030.i.i, %bb.j ], [ %i.ax, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.028.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.az = add i16 %.lcssa.i.i.i, -1
  %i.ba = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.bb = zext nneg i16 %i.ba to i64
  %i.bc = and i16 %i.az, %.lcssa.i.i.i
  %i.bd = sub nsw i64 0, %i.bb
  %i.be = getelementptr inbounds [136 x i8], ptr %.sroa.013.1.i.i, i64 %i.bd ; 10 uses
  %i.bf = add i64 %.sroa.1015.031.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6063
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 -136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6074)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6077)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(136) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.bg)
          to label %.noexc.i.i unwind label %bb.i, !noalias !6063

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6082)
  %i.bh = getelementptr inbounds i8, ptr %i.be, i64 -8
  %i.bi = load i8, ptr %i.bh, align 8, !range !2827, !alias.scope !6084, !noalias !6085, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6086
  %i.bj = getelementptr inbounds i8, ptr %i.be, i64 -80 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !range !244, !alias.scope !6084, !noalias !6085, !noundef !3
  %.not.i.i.i.i = icmp eq i64 %i.bk, -9223372036854775808
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bj)
          to label %.noexc.i.i.i unwind label %bb.w, !noalias !6087

bb.l:                                             ; preds = %.noexc.i.i
  store i64 -9223372036854775808, ptr %i.d, align 8, !noalias !6086
  br label %.noexc.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.l, %bb.k
  %i.bl = getelementptr inbounds i8, ptr %i.be, i64 -7
  %i.bm = load i8, ptr %i.bl, align 1, !range !2827, !alias.scope !6084, !noalias !6085, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6086
  %i.bn = getelementptr inbounds i8, ptr %i.be, i64 -56 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !range !244, !alias.scope !6084, !noalias !6085, !noundef !3
  %.not4.i.i.i.i = icmp eq i64 %i.bo, -9223372036854775808
  br i1 %.not4.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6086
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn)
          to label %bb.r unwind label %bb.q, !noalias !6085

bb.n:                                             ; preds = %.noexc.i.i.i
  store i64 -9223372036854775808, ptr %i.c, align 8, !noalias !6086
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  %i.bp = getelementptr inbounds i8, ptr %i.be, i64 -32 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !range !244, !alias.scope !6084, !noalias !6085, !noundef !3
  %.not5.i.i.i.i = icmp eq i64 %i.bq, -9223372036854775808
  br i1 %.not5.i.i.i.i, label %bb.y, label %bb.s

bb.p:                                             ; preds = %bb.t, %bb.q
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.bs, %bb.t ], [ %i.br, %bb.q ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.d) #38
          to label %.body.i.i.i unwind label %bb.v, !noalias !6085

bb.q:                                             ; preds = %bb.m
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.r:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !6086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6086
  br label %bb.o

bb.s:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6086
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bp)
          to label %bb.u unwind label %bb.t, !noalias !6085

bb.t:                                             ; preds = %bb.s
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.c) #38
          to label %bb.p unwind label %bb.v, !noalias !6085

bb.u:                                             ; preds = %bb.s
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !6086
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i.i.i, i64 16, i1 false), !noalias !6086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6086
  br label %bb.y

bb.v:                                             ; preds = %bb.t, %bb.p
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !6085
  unreachable

bb.w:                                             ; preds = %bb.k
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.w, %bb.p
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bu, %bb.w ], [ %.pn.i.i.i.i, %bb.p ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.e) #38
          to label %.body.i.i unwind label %bb.x, !noalias !6063

bb.x:                                             ; preds = %.body.i.i.i
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !6063
  unreachable

bb.y:                                             ; preds = %bb.u, %bb.o
  %.sroa.0.0.i.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i.i, %bb.u ], [ -9223372036854775808, %bb.o ]
  %i.bw = getelementptr inbounds i8, ptr %i.be, i64 -112
  %i.bx = load i64, ptr %i.bw, align 8, !range !1034, !alias.scope !6084, !noalias !6085, !noundef !3
  %i.by = getelementptr inbounds i8, ptr %i.be, i64 -104
  %i.bz = load double, ptr %i.by, align 8, !alias.scope !6084, !noalias !6085
  %i.ca = getelementptr inbounds i8, ptr %i.be, i64 -96
  store i8 %i.bi, ptr %i.ak, align 8, !alias.scope !6088, !noalias !6089
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !6089
  store i8 %i.bm, ptr %i.am, align 1, !alias.scope !6088, !noalias !6089
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !6089
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.ao, align 8, !alias.scope !6088, !noalias !6089
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i, i64 16, i1 false), !noalias !6089
  store i64 %i.bx, ptr %i.aj, align 8, !alias.scope !6088, !noalias !6089
  store double %i.bz, ptr %i.ap, align 8, !alias.scope !6088, !noalias !6089
  %i.cb = load <2 x i64>, ptr %i.ca, align 8, !alias.scope !6084, !noalias !6085
  store <2 x i64> %i.cb, ptr %i.aq, align 8, !alias.scope !6088, !noalias !6089
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6086
  %i.cc = ptrtoint ptr %i.be to i64
  %i.cd = sub i64 %i.ar, %i.cc
  %i.ce = sdiv exact i64 %i.cd, 136               ; 2 uses
  %i.cf = sub nsw i64 0, %i.ce
  %i.cg = getelementptr inbounds [136 x i8], ptr %.sroa.0.0, i64 %i.cf
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ch, ptr noundef nonnull align 8 dereferenceable(136) %i.e, i64 136, i1 false), !noalias !6063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6063
  %i.ci = add nsw i64 %i.ce, 1
  %i.cj = icmp eq i64 %i.bf, 0
  br i1 %i.cj, label %.loopexit, label %bb.j

bb.z:                                             ; preds = %.body.i.i
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !6063
  unreachable

bb.aa:                                            ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %.body.i.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEEECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.ab

.loopexit:                                        ; preds = %bb.y, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  store i64 %i.ad, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !6062, !noalias !6061
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !6061, !noalias !6062, !noundef !3
  store i64 %i.cm, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !6062, !noalias !6061
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.aa

bb.ab:                                            ; preds = %.body
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEEECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !6090
  %i.o = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !6090 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6090
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.r = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.k), !noalias !6090
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.r, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.o, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.i
  %i.t = lshr i64 %i.f, 3
  %i.u = mul nuw nsw i64 %i.t, 7
  %.narrow = icmp ult i64 %i.d, 7
  %.sroa.07.0.i.i = select i1 %.narrow, i64 %i.d, i64 %i.u
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.g, %bb.h
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6103)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !6105, !noalias !6106, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.v, i64 %.pre-phi, i1 false), !noalias !6107
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !6105, !noalias !6106, !noundef !3 ; 3 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.z = load <16 x i8>, ptr %i.v, align 16, !noalias !6108
  %i.aa = icmp sgt <16 x i8> %i.z, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ae = ptrtoint ptr %i.v to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.k, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.af, %bb.i ], [ %i.av, %bb.k ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEEENCNvMse_B1D_B1A_15clone_from_impl0EECsdJxlLsGgtXr_16delta_benchmarks(i64 %.sroa.012.028.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #38
          to label %.body unwind label %bb.m, !noalias !6105

bb.j:                                             ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %.lr.ph.i.i
  %.sroa.012.028.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bd, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ]
  %.sroa.1015.027.i.i = phi i64 [ %i.x, %.lr.ph.i.i ], [ %i.as, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ]
  %.sroa.013.026.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.6.025.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.814.024.i.i = phi i16 [ %i.ab, %.lr.ph.i.i ], [ %i.ap, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.024.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.ag = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.sroa.6.025.i.i, %bb.j ] ; 2 uses
  %i.ah = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.sroa.013.026.i.i, %bb.j ]
  %i.ai = load <16 x i8>, ptr %i.ag, align 16, !noalias !6113
  %i.aj = icmp sgt <16 x i8> %i.ai, splat (i8 -1)
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 -768 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.aj to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.025.i.i, %bb.j ], [ %i.al, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.026.i.i, %bb.j ], [ %i.ak, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.024.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.am = add i16 %.lcssa.i.i.i, -1
  %i.an = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = and i16 %i.am, %.lcssa.i.i.i
  %i.aq = sub nsw i64 0, %i.ao
  %i.ar = getelementptr inbounds [48 x i8], ptr %.sroa.013.1.i.i, i64 %i.aq ; 3 uses
  %i.as = add i64 %.sroa.1015.027.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6107
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -48
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.at)
          to label %.noexc.i.i unwind label %bb.i, !noalias !6107

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 -24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au)
          to label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %bb.k, !noalias !6107

bb.k:                                             ; preds = %.noexc.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #38
          to label %.body.i.i unwind label %bb.l, !noalias !6107

bb.l:                                             ; preds = %bb.k
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !6107
  unreachable

_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %.noexc.i.i
  %i.ax = ptrtoint ptr %i.ar to i64
  %i.ay = sub i64 %i.ae, %i.ax
  %i.az = sdiv exact i64 %i.ay, 48                ; 2 uses
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr inbounds [48 x i8], ptr %.sroa.0.0, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bc, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !6107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6107
  %i.bd = add nsw i64 %i.az, 1
  %i.be = icmp eq i64 %i.as, 0
  br i1 %i.be, label %.loopexit, label %bb.j

bb.m:                                             ; preds = %.body.i.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !6107
  unreachable

bb.n:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #38
          to label %bb.p unwind label %bb.o

.loopexit:                                        ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  store i64 %i.x, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !6106, !noalias !6105
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !6105, !noalias !6106, !noundef !3
  store i64 %i.bh, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !6106, !noalias !6105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.o:                                             ; preds = %.body
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.p:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !3 ; 6 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @9, i64 32, i1 false)
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.h = add i64 %i.f, 1                          ; 2 uses
  %i.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.h, i64 72) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  br i1 %i.j, label %bb.e, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.k = extractvalue { i64, i1 } %i.i, 0
  %i.l = add nuw i64 %i.k, 8
  %i.m = and i64 %i.l, -16                        ; 3 uses
  %i.n = add i64 %i.f, 17                         ; 2 uses
  %i.o = add i64 %i.n, %i.m                       ; 5 uses
  %i.p = icmp ult i64 %i.o, %i.m
  %i.q = icmp ugt i64 %i.o, 9223372036854775792
  %or.cond.i.i = or i1 %i.p, %i.q
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !196

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.r = icmp eq i64 %i.o, 0
  br i1 %i.r, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !6118
  %i.s = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !6118 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6118
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.v = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.o), !noalias !6118
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.v, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.s, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.m
  %i.x = lshr i64 %i.h, 3
  %i.y = mul nuw nsw i64 %i.x, 7
  %.narrow = icmp ult i64 %i.f, 7
  %.sroa.07.0.i.i = select i1 %.narrow, i64 %i.f, i64 %i.y
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.n, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.f, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.w, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6131)
  %i.z = load ptr, ptr %1, align 8, !alias.scope !6133, !noalias !6134, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.z, i64 %.pre-phi, i1 false), !noalias !6135
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !6133, !noalias !6134, !noundef !3 ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.ad = load <16 x i8>, ptr %i.z, align 16, !noalias !6136
  %i.ae = icmp sgt <16 x i8> %i.ad, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.5.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.aj = ptrtoint ptr %i.z to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.body.i.i.i, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ak, %bb.i ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEEENCNvMse_B1D_B1A_15clone_from_impl0EECsdJxlLsGgtXr_16delta_benchmarks(i64 %.sroa.012.030.i.i, ptr nonnull align 8 dereferenceable(32) %i.d) #38
          to label %.body unwind label %bb.r, !noalias !6133

bb.j:                                             ; preds = %bb.q, %.lr.ph.i.i
  %.sroa.012.030.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bm, %bb.q ]
  %.sroa.1015.029.i.i = phi i64 [ %i.ab, %.lr.ph.i.i ], [ %i.ax, %bb.q ]
  %.sroa.013.028.i.i = phi ptr [ %i.z, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %bb.q ] ; 2 uses
  %.sroa.6.027.i.i = phi ptr [ %i.ag, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.q ] ; 2 uses
  %.sroa.814.026.i.i = phi i16 [ %i.af, %.lr.ph.i.i ], [ %i.au, %bb.q ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.026.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.al = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %.sroa.6.027.i.i, %bb.j ] ; 2 uses
  %i.am = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %.sroa.013.028.i.i, %bb.j ]
  %i.an = load <16 x i8>, ptr %i.al, align 16, !noalias !6141
  %i.ao = icmp sgt <16 x i8> %i.an, splat (i8 -1)
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 -1152 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ao to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.027.i.i, %bb.j ], [ %i.aq, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.028.i.i, %bb.j ], [ %i.ap, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.026.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.ar = add i16 %.lcssa.i.i.i, -1
  %i.as = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.at = zext nneg i16 %i.as to i64
  %i.au = and i16 %i.ar, %.lcssa.i.i.i
  %i.av = sub nsw i64 0, %i.at
  %i.aw = getelementptr inbounds [72 x i8], ptr %.sroa.013.1.i.i, i64 %i.av ; 4 uses
  %i.ax = add i64 %.sroa.1015.029.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6135
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6149)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ay)
          to label %.noexc.i.i unwind label %bb.i, !noalias !6135

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.az = getelementptr inbounds i8, ptr %i.aw, i64 -48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6154)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6156
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.az)
          to label %.noexc.i.i.i unwind label %bb.o, !noalias !6157

.noexc.i.i.i:                                     ; preds = %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 -24 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !range !244, !alias.scope !6158, !noalias !6159, !noundef !3
  %.not.i.i.i.i = icmp eq i64 %i.bb, -9223372036854775808
  br i1 %.not.i.i.i.i, label %bb.q, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6156
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ba)
          to label %bb.m unwind label %bb.l, !noalias !6159

bb.l:                                             ; preds = %bb.k
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #38
          to label %.body.i.i.i unwind label %bb.n, !noalias !6159

bb.m:                                             ; preds = %bb.k
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !6156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i.i.i, i64 16, i1 false), !noalias !6156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6156
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !6159
  unreachable

bb.o:                                             ; preds = %.noexc.i.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.o, %bb.l
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.be, %bb.o ], [ %i.bc, %bb.l ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) #38
          to label %.body.i.i unwind label %bb.p, !noalias !6135

bb.p:                                             ; preds = %.body.i.i.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !6135
  unreachable

bb.q:                                             ; preds = %bb.m, %.noexc.i.i.i
  %.sroa.0.0.i.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i.i, %bb.m ], [ -9223372036854775808, %.noexc.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !6160
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.ai, align 8, !alias.scope !6161, !noalias !6160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i, i64 16, i1 false), !noalias !6160
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6156
  %i.bg = ptrtoint ptr %i.aw to i64
  %i.bh = sub i64 %i.aj, %i.bg
  %i.bi = sdiv exact i64 %i.bh, 72                ; 2 uses
  %i.bj = sub nsw i64 0, %i.bi
  %i.bk = getelementptr inbounds [72 x i8], ptr %.sroa.0.0, i64 %i.bj
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bl, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !6135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6135
  %i.bm = add nsw i64 %i.bi, 1
  %i.bn = icmp eq i64 %i.ax, 0
  br i1 %i.bn, label %.loopexit, label %bb.j

bb.r:                                             ; preds = %.body.i.i
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !6135
  unreachable

bb.s:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %.body.i.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEEECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.t

.loopexit:                                        ; preds = %bb.q, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  store i64 %i.ab, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !6134, !noalias !6133
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !6133, !noalias !6134, !noundef !3
  store i64 %i.bq, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !6134, !noalias !6133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.s

bb.t:                                             ; preds = %.body
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEEECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @9, i64 32, i1 false)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = add i64 %i.d, 1                          ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 112) ; 2 uses
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
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !6162
  %i.o = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !6162 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6162
  br label %bb.g

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
  %i.t = lshr i64 %i.f, 3
  %i.u = mul nuw nsw i64 %i.t, 7
  %.narrow = icmp ult i64 %i.d, 7
  %.sroa.07.0.i.i = select i1 %.narrow, i64 %i.d, i64 %i.u
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
  %i.v = load ptr, ptr %1, align 8, !alias.scope !6177, !noalias !6178, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.v, i64 %.pre-phi, i1 false), !noalias !6179
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !6177, !noalias !6178, !noundef !3 ; 3 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.z = load <16 x i8>, ptr %i.v, align 16, !noalias !6180
  %i.aa = icmp sgt <16 x i8> %i.z, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ad = ptrtoint ptr %i.v to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEEENCNvMse_B1D_B1A_15clone_from_impl0EECsdJxlLsGgtXr_16delta_benchmarks(i64 %.sroa.012.026.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #38
          to label %.body unwind label %bb.k, !noalias !6177

bb.j:                                             ; preds = %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %.lr.ph.i.i
  %.sroa.012.026.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.az, %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ]
  %.sroa.1015.025.i.i = phi i64 [ %i.x, %.lr.ph.i.i ], [ %i.aq, %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ]
  %.sroa.013.024.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.6.023.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.814.022.i.i = phi i16 [ %i.ab, %.lr.ph.i.i ], [ %i.as, %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.022.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.af = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.sroa.6.023.i.i, %bb.j ] ; 2 uses
  %i.ag = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.sroa.013.024.i.i, %bb.j ]
  %i.ah = load <16 x i8>, ptr %i.af, align 16, !noalias !6185
  %i.ai = icmp sgt <16 x i8> %i.ah, splat (i8 -1)
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -1792 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ai to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.023.i.i, %bb.j ], [ %i.ak, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.024.i.i, %bb.j ], [ %i.aj, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.022.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = sub nsw i64 0, %i.am
  %i.ao = getelementptr inbounds [112 x i8], ptr %.sroa.013.1.i.i, i64 %i.an ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6179
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -112
  invoke fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(112) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ap) #39
          to label %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %bb.i, !noalias !6179

_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %.loopexit.i.i
  %i.aq = add i64 %.sroa.1015.025.i.i, -1         ; 2 uses
  %i.ar = add i16 %.lcssa.i.i.i, -1
  %i.as = and i16 %i.ar, %.lcssa.i.i.i
  %i.at = ptrtoint ptr %i.ao to i64
  %i.au = sub i64 %i.ad, %i.at
  %i.av = sdiv exact i64 %i.au, 112               ; 2 uses
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr inbounds [112 x i8], ptr %.sroa.0.0, i64 %i.aw
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ay, ptr noundef nonnull align 16 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !6179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6179
  %i.az = add nsw i64 %i.av, 1
  %i.ba = icmp eq i64 %i.aq, 0
  br i1 %i.ba, label %.loopexit, label %bb.j

bb.k:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !6179
  unreachable

bb.l:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #38
          to label %bb.n unwind label %bb.m

.loopexit:                                        ; preds = %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE17new_uninitializedCsdJxlLsGgtXr_16delta_benchmarks.exit
  store i64 %i.x, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !6178, !noalias !6177
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !6177, !noalias !6178, !noundef !3
  store i64 %i.bd, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !6178, !noalias !6177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.m:                                             ; preds = %.body
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.n:                                             ; preds = %.body
  resume { ptr, i32 } %i.ae
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6195)
  %i.q = load ptr, ptr %1, align 8, !alias.scope !6195, !noalias !6198, !nonnull !3, !noundef !3 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0) ]
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
end_hunk_3
