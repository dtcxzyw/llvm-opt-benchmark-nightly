inline.NumInlined: 1084
inline.NumDeleted: 543
begin_hunk_0_@_RINvXs6_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error6customNtNtCshmPyUV8PP35_6chrono6format10ParseErrorECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
bb.b:                                             ; preds = %bb.d, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #20
          to label %bb.f unwind label %bb.e, !noalias !884

bb.c:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.d, label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtNtCshmPyUV8PP35_6chrono6format10ParseErrorNtB5_8ToString9to_stringCsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !30

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #23
          to label %.noexc.i.i unwind label %bb.b, !noalias !884

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !884
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.i

_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtNtCshmPyUV8PP35_6chrono6format10ParseErrorNtB5_8ToString9to_stringCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !877
  %i.k = call noundef nonnull align 8 ptr @_RNvNtCseqDwI8vvjGQ_10serde_json5error10make_error(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.k
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvXs6_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error6customNtNtNtCsbvkFyIu7lgC_4core3num5error13ParseIntErrorECsgO8S5jLFugx_23deltalake_catalog_unity(i8 noundef range(i8 0, 5) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %0, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !886
  store i64 0, ptr %i.c, align 8, !noalias !886
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !886
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !886
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !886
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.f, align 8, !noalias !886
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !886
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !noalias !886
  store ptr %i.c, ptr %i.b, align 8, !noalias !886
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @70, ptr %i.g, align 8, !noalias !886
  %i.h = invoke noundef zeroext i1 @_RNvXs3_NtNtCsbvkFyIu7lgC_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b, !noalias !893

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #20
          to label %bb.f unwind label %bb.e, !noalias !893

bb.c:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.d, label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtNtNtCsbvkFyIu7lgC_4core3num5error13ParseIntErrorNtB5_8ToString9to_stringCsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !30

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #23
          to label %.noexc.i.i unwind label %bb.b, !noalias !893

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !893
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.i

_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtNtNtCsbvkFyIu7lgC_4core3num5error13ParseIntErrorNtB5_8ToString9to_stringCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !886
  %i.k = call noundef nonnull align 8 ptr @_RNvNtCseqDwI8vvjGQ_10serde_json5error10make_error(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.k
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvXs6_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error6customReECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !895)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !898)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !901
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !901
  %i.c = load i64, ptr %i.a, align 8, !range !65, !noalias !901, !noundef !3
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !235, !noalias !901, !noundef !3 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !noalias !901
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #23, !noalias !901
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i: ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !noalias !901, !nonnull !3, !noundef !3 ; 2 uses
  %i.j = icmp ule i64 %1, %i.f
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !901
  %.not.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i, label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringReNtB5_8ToString9to_stringCsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %0, i64 range(i64 0, -9223372036854775808) %1, i1 false), !noalias !905
  br label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringReNtB5_8ToString9to_stringCsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringReNtB5_8ToString9to_stringCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i, %bb.c
  store i64 %i.f, ptr %i.b, align 8, !alias.scope !906
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !906
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !906
  %i.k = call noundef nonnull align 8 ptr @_RNvNtCseqDwI8vvjGQ_10serde_json5error10make_error(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCs1gOyXocuPRE_10serde_core2de5implsNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_stringNtNtB22_5impls13StringVisitorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCs1gOyXocuPRE_10serde_core2de5implsNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB1W_4read7StrReadEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_stringNtNtB1j_5impls13StringVisitorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCs1gOyXocuPRE_10serde_core2de5implsNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB1W_4read9SliceReadEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_stringNtNtB1l_5impls13StringVisitorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtB8_12UnityCatalog42get_temp_table_credentials_with_permissionReB1M_B1M_B1M_E0B8_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(256) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.625.i.sroa.6 = alloca [40 x i8], align 8 ; 6 uses
  %.sroa.625.i.sroa.7 = alloca [176 x i8], align 8 ; 6 uses
  %i.a = alloca [256 x i8], align 8               ; 11 uses
  %.sroa.517.i = alloca [16 x i8], align 8        ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 12 uses
  %.sroa.625.i.sroa.5.i.sroa.6 = alloca [40 x i8], align 8 ; 8 uses
  %.sroa.625.i.sroa.6.i = alloca [168 x i8], align 8 ; 8 uses
  %i.d = alloca [248 x i8], align 8               ; 11 uses
  %.sroa.517.i.i = alloca [16 x i8], align 8      ; 7 uses
  %i.e = alloca [40 x i8], align 8                ; 9 uses
  %i.f = alloca [32 x i8], align 8                ; 13 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.14126.i.sroa.5 = alloca [40 x i8], align 8 ; 8 uses
  %.sroa.15.i = alloca [168 x i8], align 8        ; 6 uses
  %.sroa.9113.sroa.7.i.sroa.4 = alloca [40 x i8], align 8 ; 7 uses
  %.sroa.9113.sroa.8.i = alloca [168 x i8], align 8 ; 7 uses
  %.sroa.7.i = alloca [112 x i8], align 8         ; 6 uses
  %i.h = alloca [136 x i8], align 8               ; 9 uses
  %i.i = alloca [40 x i8], align 8                ; 5 uses
  %i.j = alloca [64 x i8], align 8                ; 12 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [312 x i8], align 8               ; 5 uses
  %i.r = alloca [312 x i8], align 8               ; 5 uses
  %.sroa.081.i = alloca [1240 x i8], align 8      ; 8 uses
  %i.s = alloca [136 x i8], align 8               ; 14 uses
  %.sroa.3.sroa.5.i.sroa.5 = alloca [16 x i8], align 8 ; 7 uses
  %.sroa.566.i = alloca [24 x i8], align 8        ; 6 uses
  %i.t = alloca [72 x i8], align 8                ; 11 uses
  %i.u = alloca [40 x i8], align 8                ; 16 uses
  %i.v = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.22.sroa.5 = alloca [40 x i8], align 8    ; 6 uses
  %.sroa.26 = alloca [176 x i8], align 8          ; 2 uses
  %.sroa.9216.sroa.8 = alloca [40 x i8], align 8  ; 2 uses
  %.sroa.9216.sroa.9 = alloca [176 x i8], align 8 ; 2 uses
  %i.w = alloca [72 x i8], align 8                ; 8 uses
  %.sroa.7179.sroa.3 = alloca [24 x i8], align 8  ; 2 uses
  %.sroa.7179.sroa.4 = alloca [72 x i8], align 8  ; 3 uses
  %i.x = alloca [136 x i8], align 8               ; 11 uses
  %i.y = alloca [40 x i8], align 8                ; 5 uses
  %i.z = alloca [16 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 9 uses
  %i.ab = alloca [24 x i8], align 8               ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 5 uses
  %i.ad = alloca [312 x i8], align 8              ; 5 uses
  %i.ae = alloca [312 x i8], align 8              ; 6 uses
  %i.af = alloca [312 x i8], align 8              ; 6 uses
  %.sroa.0171 = alloca [1240 x i8], align 8       ; 7 uses
  %.sroa.14153 = alloca [24 x i8], align 8        ; 9 uses
  %.sroa.10144.sroa.12 = alloca [24 x i8], align 8 ; 8 uses
  %i.ag = alloca [136 x i8], align 8              ; 17 uses
  %.sroa.8126.sroa.3 = alloca [40 x i8], align 8  ; 3 uses
  %.sroa.9128 = alloca [168 x i8], align 8        ; 2 uses
  %.sroa.13114.sroa.6 = alloca [40 x i8], align 8 ; 7 uses
  %.sroa.14115 = alloca [168 x i8], align 8       ; 7 uses
  %.sroa.3.sroa.7 = alloca [16 x i8], align 8     ; 3 uses
  %.sroa.585 = alloca [24 x i8], align 8          ; 2 uses
  %i.ah = alloca [72 x i8], align 8               ; 11 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 391 ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 1, !range !383, !noundef !3
  switch i8 %i.aj, label %default.unreachable318 [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.h
    i8 4, label %bb.q
    i8 5, label %bb.b
    i8 6, label %bb.eb
  ]

default.unreachable318:                           ; preds = %bb.eb, %bb.bg, %bb.q, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10144.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14153)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0171)
  br label %bb.dj

bb.c:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 387
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 386
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 385
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.an, i8 0, i64 7, i1 false)
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !3, !align !15, !noundef !3 ; 2 uses
  store ptr %i.aq, ptr %i.ao, align 8
  store i8 1, ptr %i.ak, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !3, !noundef !3
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = load i64, ptr %i.au, align 8, !noundef !3
  store ptr %i.at, ptr %i.ar, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 400
  store i64 %i.av, ptr %i.aw, align 8
  store i8 1, ptr %i.al, align 2
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !3, !noundef !3
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !3
  store ptr %i.az, ptr %i.ax, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 416
  store i64 %i.bb, ptr %i.bc, align 8
  store i8 1, ptr %i.am, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !3, !noundef !3
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !3
  store ptr %i.bf, ptr %i.bd, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 432
  store i64 %i.bh, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !3, !noundef !3
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !3
  store ptr %i.bk, ptr %1, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.bm, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 440
  store ptr %i.aq, ptr %i.bo, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 656
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24
  unreachable

bb.f:                                             ; preds = %bb.h
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.br = load i8, ptr %i.bq, align 8, !range !382, !noundef !3
  %cond.i = icmp eq i8 %i.br, 3
  br i1 %cond.i, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit75

bb.g:                                             ; preds = %bb.f
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 448
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5tokenINtBO_10TokenCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringE18get_or_insert_withNCNCNvMs5_BS_NtBS_12UnityCatalog14get_credential00INtNtB4_3pin3PinINtNtB24_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtBO_14TemporaryTokenB20_ENtBS_17UnityCatalogErrorENtNtB4_6marker4SendEL_EEB5K_E0EBS_(ptr noundef nonnull align 8 %i.bs)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit75 unwind label %bb.o

bb.h:                                             ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 2 uses
  invoke fastcc void @_RNCNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtB7_12UnityCatalog14get_credential0B7_(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.ah, ptr noundef nonnull align 8 %i.bt, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.f

bb.i:                                             ; preds = %bb.h
  %i.bu = load i64, ptr %i.ah, align 8, !range !907, !noundef !3 ; 3 uses
  %i.bv = icmp eq i64 %i.bu, -9223372036854775794
  br i1 %i.bv, label %bb.j, label %bb.k

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.eu, %bb.dl, %bb.ce, %bb.j
  %.sink = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ 6, %bb.eu ], [ 5, %bb.dl ], [ 4, %bb.ce ], [ 3, %bb.j ]
  store i8 %.sink, ptr %i.ai, align 1
  ret void

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  store i64 -9223372036854775806, ptr %0, align 8
  br label %common.ret

bb.k:                                             ; preds = %bb.i
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.3.sroa.0.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.3.sroa.3.0.copyload = load ptr, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.3.sroa.5.0.copyload = load i64, ptr %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx, i64 16, i1 false)
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.585, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.585.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.bx = load i8, ptr %i.bw, align 8, !range !382, !noundef !3
  %cond.i40 = icmp eq i8 %i.bx, 3
  br i1 %cond.i40, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_12UnityCatalog14get_credential0EBO_.exit42

bb.l:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 448
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5tokenINtBO_10TokenCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringE18get_or_insert_withNCNCNvMs5_BS_NtBS_12UnityCatalog14get_credential00INtNtB4_3pin3PinINtNtB24_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtBO_14TemporaryTokenB20_ENtBS_17UnityCatalogErrorENtNtB4_6marker4SendEL_EEB5K_E0EBS_(ptr noundef nonnull align 8 %i.by)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_12UnityCatalog14get_credential0EBO_.exit42 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit75

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_12UnityCatalog14get_credential0EBO_.exit42: ; preds = %bb.k, %bb.l
  %.not.i = icmp eq i64 %i.bu, -9223372036854775795
  br i1 %.not.i, label %.thread319, label %bb.n

.thread319:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_12UnityCatalog14get_credential0EBO_.exit42
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 %.sroa.3.sroa.0.0.copyload, ptr %i.cb, align 8
  %.sroa.4.0..sroa_idx254 = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %.sroa.3.sroa.3.0.copyload, ptr %.sroa.4.0..sroa_idx254, align 8
  %.sroa.5255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %.sroa.3.sroa.5.0.copyload, ptr %.sroa.5255.0..sroa_idx, align 8
  %.sroa.6256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6256.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.7, i64 16, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cd = load ptr, ptr %i.cc, align 8, !nonnull !3, !align !15, !noundef !3
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.cf = load ptr, ptr %i.ce, align 8, !nonnull !3, !noundef !3
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.ch = load i64, ptr %i.cg, align 8, !noundef !3
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.cj = load ptr, ptr %i.ci, align 8, !nonnull !3, !noundef !3
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.cl = load i64, ptr %i.ck, align 8, !noundef !3
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.ca, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.cn = load ptr, ptr %i.cm, align 8, !nonnull !3, !noundef !3
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.cp = load i64, ptr %i.co, align 8, !noundef !3
  store ptr %i.cf, ptr %i.bt, align 8
  %.sroa.9106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 448
  store i64 %i.ch, ptr %.sroa.9106.0..sroa_idx, align 8
  %.sroa.10107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 456
  store ptr %i.cj, ptr %.sroa.10107.0..sroa_idx, align 8
  %.sroa.11108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 464
  store i64 %i.cl, ptr %.sroa.11108.0..sroa_idx, align 8
  %.sroa.12109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 472
  store ptr %i.cn, ptr %.sroa.12109.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 480
  store i64 %i.cp, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 496
  store ptr %i.cd, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 506
  store i8 0, ptr %.sroa.17.0..sroa_idx, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13114.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14115)
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 392
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14126.i.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9113.sroa.7.i.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9113.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.5.i.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.566.i)
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 506
  br label %bb.t

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_12UnityCatalog14get_credential0EBO_.exit42
  %.sroa.22.sroa.5.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.22.sroa.5, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.22.sroa.5.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.585, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.7, i64 16, i1 false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit73

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit73: ; preds = %bb.fa, %bb.dh, %bb.n
  %.sroa.7225.0 = phi i64 [ %i.bu, %bb.n ], [ %.sroa.7225.1, %bb.dh ], [ %.sroa.7225.1, %bb.fa ]
  %.sroa.13226.0 = phi i64 [ %.sroa.3.sroa.0.0.copyload, %bb.n ], [ %.sroa.13226.1, %bb.dh ], [ %.sroa.13226.1, %bb.fa ]
  %.sroa.19.0 = phi ptr [ %.sroa.3.sroa.3.0.copyload, %bb.n ], [ %.sroa.19.1, %bb.dh ], [ %.sroa.19.1, %bb.fa ]
  %.sroa.22.sroa.0.0 = phi i64 [ %.sroa.3.sroa.5.0.copyload, %bb.n ], [ %.sroa.22.sroa.0.1, %bb.dh ], [ %.sroa.22.sroa.0.1, %bb.fa ]
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 384
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.o:                                             ; preds = %bb.fg, %bb.g, %bb.ff, %bb.fe, %bb.fb, %.body66, %bb.di, %bb.dc, %bb.cq, %bb.cl, %.body
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit75: ; preds = %bb.m, %bb.g, %bb.f, %bb.fg, %bb.ey, %.body47
  %.pn34.pn = phi { ptr, i32 } [ %.pn31.pn, %bb.fg ], [ %i.nb, %bb.ey ], [ %.pn31.pn, %.body47 ], [ %i.bz, %bb.m ], [ %i.bp, %bb.f ], [ %i.bp, %bb.g ]
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 384
  store i32 0, ptr %i.cu, align 8
  store i8 2, ptr %i.ai, align 1
  resume { ptr, i32 } %.pn34.pn

bb.p:                                             ; preds = %bb.v, %bb.u
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.p
  %i.cw = phi ptr [ %i.cx, %bb.p ], [ %i.fm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.cv, %bb.p ], [ %.pn29.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13114.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14115)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBP_12UnityCatalog9get_tableReB1V_B1V_E0EBP_(ptr noundef nonnull align 8 %i.cw) #20
          to label %.body47 unwind label %bb.o

bb.q:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 506
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !range !384, !noalias !908
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13114.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14115)
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14126.i.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9113.sroa.7.i.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9113.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.5.i.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.566.i)
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 506 ; 6 uses
  switch i8 %.pre, label %default.unreachable318 [
    i8 0, label %bb.t
    i8 1, label %bb.u
    i8 2, label %bb.v
    i8 3, label %bb.r
    i8 4, label %bb.s
    i8 5, label %bb.bg
  ]

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !908
  br label %bb.y

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !908
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.081.i)
  br label %bb.av

bb.t:                                             ; preds = %.thread319, %bb.q
  %i.cz = phi ptr [ %i.cr, %.thread319 ], [ %i.cy, %bb.q ]
  %i.da = phi ptr [ %i.cq, %.thread319 ], [ %i.cx, %bb.q ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 505
  store i8 0, ptr %i.db, align 1, !noalias !908
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 504
  store i8 0, ptr %i.dc, align 8, !noalias !908
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.df = load ptr, ptr %i.de, align 8, !noalias !908, !nonnull !3, !align !15, !noundef !3 ; 2 uses
  store ptr %i.df, ptr %i.dd, align 8, !noalias !908
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !908, !nonnull !3, !noundef !3
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.dj = load i64, ptr %i.di, align 8, !noalias !908, !noundef !3
  store ptr %i.dh, ptr %i.da, align 8, !noalias !908
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 400
  store i64 %i.dj, ptr %i.dk, align 8, !noalias !908
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !908, !nonnull !3, !noundef !3
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.dp = load i64, ptr %i.do, align 8, !noalias !908, !noundef !3
  store ptr %i.dn, ptr %i.dl, align 8, !noalias !908
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 416
  store i64 %i.dp, ptr %i.dq, align 8, !noalias !908
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.dt = load ptr, ptr %i.ds, align 8, !noalias !908, !nonnull !3, !noundef !3
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.dv = load i64, ptr %i.du, align 8, !noalias !908, !noundef !3
  store ptr %i.dt, ptr %i.dr, align 8, !noalias !908
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 432
  store i64 %i.dv, ptr %i.dw, align 8, !noalias !908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !908
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 512
  store ptr %i.df, ptr %i.dx, align 8, !noalias !908
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 728
  store i8 0, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !908
  br label %bb.y

bb.u:                                             ; preds = %bb.q
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #24
          to label %.noexc43 unwind label %bb.p

.noexc43:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.q
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #24
          to label %.noexc44 unwind label %bb.p

.noexc44:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.y
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !908
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 728
  %i.ea = load i8, ptr %i.dz, align 8, !range !382, !noalias !908, !noundef !3
  %cond.i.i = icmp eq i8 %i.ea, 3
  br i1 %cond.i.i, label %bb.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.x:                                             ; preds = %bb.w
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 520
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5tokenINtBO_10TokenCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringE18get_or_insert_withNCNCNvMs5_BS_NtBS_12UnityCatalog14get_credential00INtNtB4_3pin3PinINtNtB24_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtBO_14TemporaryTokenB20_ENtBS_17UnityCatalogErrorENtNtB4_6marker4SendEL_EEB5K_E0EBS_(ptr noundef nonnull align 8 %i.eb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.ar, !noalias !912

bb.y:                                             ; preds = %bb.t, %bb.r
  %i.ec = phi ptr [ %i.cz, %bb.t ], [ %i.cy, %bb.r ] ; 7 uses
  %i.ed = phi ptr [ %i.da, %bb.t ], [ %i.cx, %bb.r ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !908
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  invoke fastcc void @_RNCNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtB7_12UnityCatalog14get_credential0B7_(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.t, ptr noundef nonnull align 8 %i.ee, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.z unwind label %bb.w, !noalias !912

bb.z:                                             ; preds = %bb.y
  %i.ef = load i64, ptr %i.t, align 8, !range !907, !noalias !908, !noundef !3 ; 3 uses
  %i.eg = icmp eq i64 %i.ef, -9223372036854775794
  br i1 %i.eg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !908
  br label %bb.ce

bb.ab:                                            ; preds = %bb.z
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.3.sroa.0.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !908 ; 3 uses
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.3.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !908 ; 4 uses
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.3.sroa.5.i.sroa.0.0.copyload = load i64, ptr %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !908 ; 2 uses
  %.sroa.3.sroa.5.i.sroa.5.0..sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.5.i.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.5.i.sroa.5.0..sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i.sroa_idx, i64 16, i1 false), !noalias !908
  %.sroa.566.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.566.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.566.0..sroa_idx.i, i64 24, i1 false), !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !908
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 728
  %i.ei = load i8, ptr %i.eh, align 8, !range !382, !noalias !908, !noundef !3
  %cond.i37.i = icmp eq i8 %i.ei, 3
  br i1 %cond.i37.i, label %bb.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_12UnityCatalog14get_credential0EBO_.exit39.i

bb.ac:                                            ; preds = %bb.ab
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 520
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5tokenINtBO_10TokenCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringE18get_or_insert_withNCNCNvMs5_BS_NtBS_12UnityCatalog14get_credential00INtNtB4_3pin3PinINtNtB24_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtBO_14TemporaryTokenB20_ENtBS_17UnityCatalogErrorENtNtB4_6marker4SendEL_EEB5K_E0EBS_(ptr noundef nonnull align 8 %i.ej)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_12UnityCatalog14get_credential0EBO_.exit39.i unwind label %bb.ad, !noalias !912

bb.ad:                                            ; preds = %bb.ac
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_12UnityCatalog14get_credential0EBO_.exit39.i: ; preds = %bb.ac, %bb.ab
  %.not.i.i = icmp eq i64 %i.ef, -9223372036854775795
  br i1 %.not.i.i, label %bb.ae, label %bb.at

bb.ae:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_12UnityCatalog14get_credential0EBO_.exit39.i
  %.sroa.5135.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %.sroa.3.sroa.5.i.sroa.0.0.copyload, ptr %.sroa.5135.0..sroa_idx.i, align 8, !noalias !908
  %.sroa.3.sroa.5.i.sroa.5.0..sroa.5135.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.5.i.sroa.5.0..sroa.5135.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.5.i.sroa.5, i64 16, i1 false), !noalias !908
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 505 ; 2 uses
  store i8 1, ptr %i.el, align 1, !noalias !908
  store i64 %.sroa.3.sroa.0.0.copyload.i, ptr %i.u, align 8, !noalias !908
  %.sroa.4134.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.sroa.3.sroa.3.0.copyload.i, ptr %.sroa.4134.0..sroa_idx.i, align 8, !noalias !908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !908
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.081.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !908
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.en = load ptr, ptr %i.em, align 8, !noalias !908, !nonnull !3, !align !15, !noundef !3 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !908
  %i.ep = inttoptr i64 %.sroa.3.sroa.0.0.copyload.i to ptr ; 2 uses
  invoke void @_RNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtB5_12UnityCatalog11catalog_url(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noundef nonnull align 8 %i.en)
          to label %bb.ah unwind label %bb.af, !noalias !912

.body.i:                                          ; preds = %bb.ai, %bb.ag, %bb.af
  %.pn10.i = phi { ptr, i32 } [ %i.er, %bb.ag ], [ %i.eq, %bb.af ], [ %i.fd, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !908
  br label %bb.al

bb.af:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.ae
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ag:                                            ; preds = %bb.ah
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !908
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n) #20
          to label %.body.i unwind label %bb.ar, !noalias !912

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !908
  %.val35.i = load ptr, ptr %i.ed, align 8, !noalias !908, !nonnull !3, !noundef !3
  %i.es = getelementptr i8, ptr %1, i64 400
  %.val36.i = load i64, ptr %i.es, align 8, !noalias !908, !noundef !3
  store ptr %.val35.i, ptr %i.m, align 8, !noalias !908
  %i.et = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.val36.i, ptr %i.et, align 8, !noalias !908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !908
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 408
  %.val33.i = load ptr, ptr %i.eu, align 8, !noalias !908, !nonnull !3, !noundef !3
  %i.ev = getelementptr i8, ptr %1, i64 416
  %.val34.i = load i64, ptr %i.ev, align 8, !noalias !908, !noundef !3
  store ptr %.val33.i, ptr %i.l, align 8, !noalias !908
  %i.ew = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %.val34.i, ptr %i.ew, align 8, !noalias !908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !908
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 424
  %.val.i = load ptr, ptr %i.ex, align 8, !noalias !908, !nonnull !3, !noundef !3
  %i.ey = getelementptr i8, ptr %1, i64 432
  %.val32.i = load i64, ptr %i.ey, align 8, !noalias !908, !noundef !3
  store ptr %.val.i, ptr %i.k, align 8, !noalias !908
  %i.ez = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.val32.i, ptr %i.ez, align 8, !noalias !908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !908
  store ptr %i.n, ptr %i.j, align 8, !noalias !908
  %.sroa.585.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.585.0..sroa_idx.i, align 8, !noalias !908
  %i.fa = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.m, ptr %i.fa, align 8, !noalias !908
  %.sroa.587.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr %.sroa.587.0..sroa_idx.i, align 8, !noalias !908
  %i.fb = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.l, ptr %i.fb, align 8, !noalias !908
  %.sroa.589.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr %.sroa.589.0..sroa_idx.i, align 8, !noalias !908
  %i.fc = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store ptr %i.k, ptr %i.fc, align 8, !noalias !908
  %.sroa.591.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr %.sroa.591.0..sroa_idx.i, align 8, !noalias !908
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull @34, ptr noundef nonnull %i.j)
          to label %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit.i unwind label %bb.ag, !noalias !912

_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit.i:     ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !908
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.ai, !noalias !912

bb.ai:                                            ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit.i
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body.i unwind label %bb.aj, !noalias !912

bb.aj:                                            ; preds = %bb.ai
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !912
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.ak unwind label %bb.af, !noalias !912

bb.ak:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.o, i64 24, i1 false), !alias.scope !913, !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !908
  invoke void @_RINvMs_NtCsjkRrtHEnRPD_18reqwest_middleware6clientNtB5_20ClientWithMiddleware3getNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([312 x i8]) align 8 captures(address) dereferenceable(312) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.eo, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
          to label %bb.an unwind label %bb.am, !noalias !912

bb.al:                                            ; preds = %bb.am, %.body.i
  %.pn14.i = phi { ptr, i32 } [ %i.ff, %bb.am ], [ %.pn10.i, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !908
  br label %bb.aq

bb.am:                                            ; preds = %bb.ak
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.an:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !908
  store i8 0, ptr %i.el, align 1, !noalias !908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.u, i64 40, i1 false), !noalias !908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @32, i64 32, i1 false), !noalias !908
  invoke void @_RINvMs2_NtCsjkRrtHEnRPD_18reqwest_middleware6clientNtB6_14RequestBuilder6headerNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameNtNtB1j_5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([312 x i8]) align 8 captures(none) dereferenceable(312) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(312) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.i)
          to label %bb.ap unwind label %bb.ao, !noalias !912

bb.ao:                                            ; preds = %bb.an
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !908
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.081.i, ptr noundef nonnull align 8 dereferenceable(312) %i.r, i64 312, i1 false), !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1240) %i.ee, ptr noundef nonnull align 8 dereferenceable(1240) %.sroa.081.i, i64 1240, i1 false), !noalias !908
  %.sroa.882.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1752
  store i8 0, ptr %.sroa.882.0..sroa_idx.i, align 8, !noalias !908
  br label %bb.av

bb.aq:                                            ; preds = %bb.ao, %bb.al
  %.pn16.i = phi { ptr, i32 } [ %i.fg, %bb.ao ], [ %.pn14.i, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !908
  br label %bb.as

bb.ar:                                            ; preds = %bb.cd, %bb.cc, %.body52.i, %bb.au, %bb.ag, %bb.x
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !912
  unreachable

bb.as:                                            ; preds = %bb.az, %bb.au, %bb.aq
  %3 = phi ptr [ %i.fp, %bb.az ], [ %i.fp, %bb.au ], [ %i.ec, %bb.aq ]
  %i.fi = phi ptr [ %i.fq, %bb.az ], [ %i.fq, %bb.au ], [ %i.ed, %bb.aq ]
  %i.fj = phi ptr [ %4, %bb.az ], [ %4, %bb.au ], [ %.sroa.3.sroa.3.0.copyload.i, %bb.aq ]
  %i.fk = phi ptr [ %i.fr, %bb.az ], [ %i.fr, %bb.au ], [ %i.ep, %bb.aq ]
  %.pn26.i = phi { ptr, i32 } [ %i.fv, %bb.az ], [ %i.fo, %bb.au ], [ %.pn16.i, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.081.i)
  br label %bb.be

bb.at:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_12UnityCatalog14get_credential0EBO_.exit39.i
  %.sroa.14126.i.sroa.5.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.14126.i.sroa.5, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14126.i.sroa.5.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.566.i, i64 24, i1 false), !noalias !908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14126.i.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.5.i.sroa.5, i64 16, i1 false), !noalias !908
  br label %bb.cf

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.w, %bb.x, %bb.ad, %bb.cd, %bb.be
  %i.fl = phi ptr [ %5, %bb.cd ], [ %5, %bb.be ], [ %i.ec, %bb.ad ], [ %i.ec, %bb.w ], [ %i.ec, %bb.x ]
  %i.fm = phi ptr [ %i.ge, %bb.cd ], [ %i.ge, %bb.be ], [ %i.ed, %bb.ad ], [ %i.ed, %bb.w ], [ %i.ed, %bb.x ]
  %.pn29.pn.i = phi { ptr, i32 } [ %.pn26.pn.i, %bb.cd ], [ %.pn26.pn.i, %bb.be ], [ %i.ek, %bb.ad ], [ %i.dy, %bb.w ], [ %i.dy, %bb.x ]
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 505
  store i8 0, ptr %i.fn, align 1, !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !908
  store i8 2, ptr %i.fl, align 2, !noalias !908
  br label %.body

bb.au:                                            ; preds = %bb.av
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !908
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs2_NtCsjkRrtHEnRPD_18reqwest_middleware6clientNtBO_14RequestBuilder4send0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.fs) #20
          to label %bb.as unwind label %bb.ar, !noalias !912

bb.av:                                            ; preds = %bb.ap, %bb.s
  %i.fp = phi ptr [ %i.cy, %bb.s ], [ %i.ec, %bb.ap ] ; 5 uses
  %i.fq = phi ptr [ %i.cx, %bb.s ], [ %i.ed, %bb.ap ] ; 4 uses
  %4 = phi ptr [ undef, %bb.s ], [ %.sroa.3.sroa.3.0.copyload.i, %bb.ap ] ; 3 uses
  %i.fr = phi ptr [ undef, %bb.s ], [ %i.ep, %bb.ap ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !908
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 5 uses
  invoke fastcc void @_RNCNvMs2_NtCsjkRrtHEnRPD_18reqwest_middleware6clientNtB7_14RequestBuilder4send0CsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 captures(address) dereferenceable(136) %i.h, ptr noundef nonnull align 8 %i.fs, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.aw unwind label %bb.au, !noalias !912

bb.aw:                                            ; preds = %bb.av
  %i.ft = load i64, ptr %i.h, align 8, !range !356, !noalias !908, !noundef !3 ; 3 uses
  %i.fu = icmp eq i64 %i.ft, 4
  br i1 %i.fu, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.081.i)
  br label %bb.ce

bb.ay:                                            ; preds = %bb.aw
  %.sroa.393.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.393.0.copyload.i = load i64, ptr %.sroa.393.0..sroa_idx.i, align 8, !noalias !908 ; 2 uses
  %.sroa.594.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.594.0.copyload.i = load ptr, ptr %.sroa.594.0..sroa_idx.i, align 8, !noalias !908 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.7.0..sroa_idx.i, i64 112, i1 false), !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !908
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs2_NtCsjkRrtHEnRPD_18reqwest_middleware6clientNtBO_14RequestBuilder4send0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.fs)
          to label %bb.ba unwind label %bb.az, !noalias !912

bb.az:                                            ; preds = %bb.ay
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ba:                                            ; preds = %bb.ay
  %i.fw = icmp eq i64 %i.ft, 3
  br i1 %i.fw, label %bb.bc, label %.thread.i

.thread.i:                                        ; preds = %bb.ba
  %.sroa.697.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.697.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.7.i, i64 112, i1 false), !noalias !908
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 504
  store i64 %i.ft, ptr %i.s, align 8, !noalias !908
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %.sroa.393.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !908
  %.sroa.596.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %.sroa.594.0.copyload.i, ptr %.sroa.596.0..sroa_idx.i, align 8, !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.081.i)
  store i8 0, ptr %i.fx, align 8, !noalias !908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.fs, ptr noundef nonnull align 8 dereferenceable(136) %i.s, i64 136, i1 false), !noalias !908
  %.sroa.8109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1072 ; 2 uses
  store i8 0, ptr %.sroa.8109.0..sroa_idx.i, align 8, !noalias !908
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.625.i.sroa.5.i.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.625.i.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.517.i.i)
  br label %bb.bi

bb.bb:                                            ; preds = %.body52.i
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.fz = load i8, ptr %i.fy, align 8, !range !27, !noalias !908, !noundef !3
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.cc, label %bb.be

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.081.i)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.cb, %bb.bc
  %i.gb = phi ptr [ %i.fp, %bb.bc ], [ %i.gx, %bb.cb ]
  %i.gc = phi ptr [ %i.fq, %bb.bc ], [ %i.gy, %bb.cb ]
  %.sroa.5122.1.i = phi i64 [ -9223372036854775807, %bb.bc ], [ -9223372036854775808, %bb.cb ]
  %.sroa.9123.1.i = phi i64 [ %.sroa.393.0.copyload.i, %bb.bc ], [ %i.if, %bb.cb ]
  %.sroa.13.1.i = phi ptr [ %.sroa.594.0.copyload.i, %bb.bc ], [ undef, %bb.cb ]
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 504
  store i8 0, ptr %i.gd, align 8, !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !908
  br label %bb.cf

bb.be:                                            ; preds = %bb.cc, %bb.bb, %bb.as
  %5 = phi ptr [ %3, %bb.as ], [ %6, %bb.cc ], [ %6, %bb.bb ] ; 2 uses
  %i.ge = phi ptr [ %i.fi, %bb.as ], [ %i.gm, %bb.cc ], [ %i.gm, %bb.bb ] ; 2 uses
  %i.gf = phi ptr [ %i.fj, %bb.as ], [ %i.gp, %bb.cc ], [ %i.gp, %bb.bb ]
  %i.gg = phi ptr [ %i.fk, %bb.as ], [ %i.go, %bb.cc ], [ %i.go, %bb.bb ]
  %.pn26.pn.i = phi { ptr, i32 } [ %.pn26.i, %bb.as ], [ %eh.lpad-body53.i, %bb.cc ], [ %eh.lpad-body53.i, %bb.bb ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 504
  store i8 0, ptr %i.gh, align 8, !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !908
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 505
  %i.gj = load i8, ptr %i.gi, align 1, !range !27, !noalias !908, !noundef !3
  %i.gk = trunc nuw i8 %i.gj to i1
  br i1 %i.gk, label %bb.cd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.bf:                                            ; preds = %bb.bk, %bb.bj
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %.body52.i

.body52.i:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.bf
  %6 = phi ptr [ %i.cy, %bb.bf ], [ %i.gx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ] ; 2 uses
  %i.gm = phi ptr [ %i.cx, %bb.bf ], [ %i.gy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ] ; 2 uses
  %i.gn = phi ptr [ %i.gq, %bb.bf ], [ %i.ha, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ]
  %i.go = phi ptr [ undef, %bb.bf ], [ %i.hb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ] ; 2 uses
  %i.gp = phi ptr [ undef, %bb.bf ], [ %8, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ] ; 2 uses
  %eh.lpad-body53.i = phi { ptr, i32 } [ %i.gl, %bb.bf ], [ %.pn4.pn.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseE0EB1U_(ptr noundef nonnull align 8 %i.gn) #20
          to label %bb.bb unwind label %bb.ar, !noalias !912

bb.bg:                                            ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !908
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 1072 ; 3 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !382, !noalias !917
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.625.i.sroa.5.i.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.625.i.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.517.i.i)
  switch i8 %.pre.i, label %default.unreachable318 [
    i8 0, label %bb.bi
    i8 1, label %bb.bj
    i8 2, label %bb.bk
    i8 3, label %bb.bh
  ]

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !917
  br label %bb.bl

bb.bi:                                            ; preds = %bb.bg, %.thread.i
  %i.gr = phi ptr [ %i.fp, %.thread.i ], [ %i.cy, %bb.bg ]
  %i.gs = phi ptr [ %i.fq, %.thread.i ], [ %i.cx, %bb.bg ]
  %i.gt = phi ptr [ %.sroa.8109.0..sroa_idx.i, %.thread.i ], [ %.phi.trans.insert.i, %bb.bg ]
  %i.gu = phi ptr [ %i.fs, %.thread.i ], [ %i.gq, %bb.bg ] ; 2 uses
  %i.gv = phi ptr [ %i.fr, %.thread.i ], [ undef, %bb.bg ]
  %7 = phi ptr [ %4, %.thread.i ], [ undef, %bb.bg ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !917
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.gw, ptr noundef nonnull align 8 dereferenceable(136) %i.gu, i64 136, i1 false), !noalias !917
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1064
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !917
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bg
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #24
          to label %.noexc50.i unwind label %bb.bf, !noalias !912

.noexc50.i:                                       ; preds = %bb.bj
  unreachable

bb.bk:                                            ; preds = %bb.bg
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #24
          to label %.noexc51.i unwind label %bb.bf, !noalias !912

.noexc51.i:                                       ; preds = %bb.bk
  unreachable

bb.bl:                                            ; preds = %bb.bi, %bb.bh
  %i.gx = phi ptr [ %i.gr, %bb.bi ], [ %i.cy, %bb.bh ] ; 4 uses
  %i.gy = phi ptr [ %i.gs, %bb.bi ], [ %i.cx, %bb.bh ] ; 3 uses
  %i.gz = phi ptr [ %i.gt, %bb.bi ], [ %.phi.trans.insert.i, %bb.bh ] ; 4 uses
  %i.ha = phi ptr [ %i.gu, %bb.bi ], [ %i.gq, %bb.bh ]
  %i.hb = phi ptr [ %i.gv, %bb.bi ], [ undef, %bb.bh ]
  %8 = phi ptr [ %7, %bb.bi ], [ undef, %bb.bh ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !917
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 3 uses
  invoke fastcc void @_RNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB4_8Response5bytes0CsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.e, ptr noundef nonnull align 8 %i.hc, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.bn unwind label %bb.bm, !noalias !921

bb.bm:                                            ; preds = %bb.bl
  %i.hd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !917
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response5bytes0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.hc) #20
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.bx, !noalias !921

bb.bn:                                            ; preds = %bb.bl
  %i.he = load i64, ptr %i.e, align 8, !range !65, !noalias !917, !noundef !3
  %i.hf = trunc nuw i64 %i.he to i1
  br i1 %i.hf, label %bb.by, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.016.0.copyload.i.i = load ptr, ptr %i.hg, align 8, !noalias !917 ; 3 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.3.0.copyload.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !917 ; 5 uses
  %.sroa.517.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.517.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.517.0..sroa_idx.i.i, i64 16, i1 false), !noalias !917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !917
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response5bytes0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.hc)
          to label %bb.bq unwind label %bb.bp, !noalias !921

bb.bp:                                            ; preds = %bb.bo
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

bb.bq:                                            ; preds = %bb.bo
  %i.hi = icmp eq ptr %.sroa.016.0.copyload.i.i, null
  br i1 %i.hi, label %.thread, label %bb.bs

bb.br:                                            ; preds = %bb.bu, %bb.bs
  %i.hj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !917
  call void @llvm.experimental.noalias.scope.decl(metadata !922)
  call void @llvm.experimental.noalias.scope.decl(metadata !925)
  %i.hk = load ptr, ptr %i.f, align 8, !alias.scope !928, !noalias !917, !nonnull !3, !align !15, !noundef !3
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 32
  %i.hm = load ptr, ptr %i.hl, align 8, !noalias !929, !nonnull !3, !noundef !3
  %i.hn = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ho = load ptr, ptr %.sroa.4.0..sroa_idx.i49.i, align 8, !alias.scope !928, !noalias !917, !noundef !3
  %i.hp = load i64, ptr %.sroa.519.0..sroa_idx.i.i, align 8, !alias.scope !928, !noalias !917, !noundef !3
  invoke void %i.hm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hn, ptr noundef %i.ho, i64 noundef %i.hp)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.bx, !noalias !921, !inline_history !930

bb.bs:                                            ; preds = %bb.bq
  %.sroa.519.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.519.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.517.i.i, i64 16, i1 false), !noalias !917
  store ptr %.sroa.016.0.copyload.i.i, ptr %i.f, align 8, !noalias !917
  %.sroa.4.0..sroa_idx.i49.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %.sroa.3.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i49.i, align 8, !noalias !917
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !917
  %.val7.i.i = load i64, ptr %.sroa.519.0..sroa_idx.i.i, align 8, !noalias !917, !noundef !3 ; 2 uses
  invoke void @_RINvNtCseqDwI8vvjGQ_10serde_json2de10from_sliceNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseEBN_(ptr noalias noundef nonnull sret([248 x i8]) align 8 captures(address) dereferenceable(248) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.3.0.copyload.i.i, i64 noundef %.val7.i.i)
          to label %bb.bt unwind label %bb.br, !noalias !921

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.experimental.noalias.scope.decl(metadata !931)
  %i.hq = load i64, ptr %i.d, align 8, !range !934, !alias.scope !935, !noalias !937, !noundef !3 ; 2 uses
  %i.hr = icmp eq i64 %i.hq, -9223372036854775807 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !alias.scope !938, !noalias !917 ; 2 uses
  br i1 %i.hr, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.hu = invoke noundef nonnull align 8 ptr @_RINvNtCsgO6CtM78C4N_7reqwest5error6decodeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 %i.ht)
          to label %._RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2F_6decodeB1O_EEBM_.exit_crit_edge.i.i unwind label %bb.br, !noalias !921

._RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2F_6decodeB1O_EEBM_.exit_crit_edge.i.i: ; preds = %bb.bu
  %.pre.i.i = load ptr, ptr %i.f, align 8, !alias.scope !939, !noalias !917
  %.pre28.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i49.i, align 8, !alias.scope !939, !noalias !917
  %.pre29.i.i = load i64, ptr %.sroa.519.0..sroa_idx.i.i, align 8, !alias.scope !939, !noalias !917
  br label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2F_6decodeB1O_EEBM_.exit.i.i

bb.bv:                                            ; preds = %bb.bt
  %.sroa.625.0..sroa_idx26.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.625.i.sroa.0.0.copyload.i = load i64, ptr %.sroa.625.0..sroa_idx26.i.i, align 8, !alias.scope !944, !noalias !917
  %.sroa.625.i.sroa.4.0..sroa.625.0..sroa_idx26.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.625.i.sroa.4.0.copyload.i = load ptr, ptr %.sroa.625.i.sroa.4.0..sroa.625.0..sroa_idx26.i.sroa_idx.i, align 8, !alias.scope !944, !noalias !917
  %.sroa.625.i.sroa.5.0..sroa.625.0..sroa_idx26.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.625.i.sroa.5.i.sroa.0.0.copyload = load i64, ptr %.sroa.625.i.sroa.5.0..sroa.625.0..sroa_idx26.i.sroa_idx.i, align 8, !alias.scope !944, !noalias !917
  %.sroa.625.i.sroa.5.i.sroa.6.0..sroa.625.i.sroa.5.0..sroa.625.0..sroa_idx26.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.625.i.sroa.5.i.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.625.i.sroa.5.i.sroa.6.0..sroa.625.i.sroa.5.0..sroa.625.0..sroa_idx26.i.sroa_idx.i.sroa_idx, i64 40, i1 false), !alias.scope !944, !noalias !917
  %.sroa.625.i.sroa.6.0..sroa.625.0..sroa_idx26.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.625.i.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.625.i.sroa.6.0..sroa.625.0..sroa_idx26.i.sroa_idx.i, i64 168, i1 false), !alias.scope !944, !noalias !917
  br label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2F_6decodeB1O_EEBM_.exit.i.i

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2F_6decodeB1O_EEBM_.exit.i.i: ; preds = %bb.bv, %._RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2F_6decodeB1O_EEBM_.exit_crit_edge.i.i
  %.sroa.625.i.sroa.5.i.sroa.0.0 = phi i64 [ undef, %._RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2F_6decodeB1O_EEBM_.exit_crit_edge.i.i ], [ %.sroa.625.i.sroa.5.i.sroa.0.0.copyload, %bb.bv ]
  %.sroa.625.i.sroa.0.0.i = phi i64 [ undef, %._RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2F_6decodeB1O_EEBM_.exit_crit_edge.i.i ], [ %.sroa.625.i.sroa.0.0.copyload.i, %bb.bv ]
  %.sroa.625.i.sroa.4.0.i = phi ptr [ undef, %._RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2F_6decodeB1O_EEBM_.exit_crit_edge.i.i ], [ %.sroa.625.i.sroa.4.0.copyload.i, %bb.bv ]
  %i.hv = phi i64 [ %.pre29.i.i, %._RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2F_6decodeB1O_EEBM_.exit_crit_edge.i.i ], [ %.val7.i.i, %bb.bv ]
  %i.hw = phi ptr [ %.pre28.i.i, %._RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2F_6decodeB1O_EEBM_.exit_crit_edge.i.i ], [ %.sroa.3.0.copyload.i.i, %bb.bv ]
  %i.hx = phi ptr [ %.pre.i.i, %._RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2F_6decodeB1O_EEBM_.exit_crit_edge.i.i ], [ %.sroa.016.0.copyload.i.i, %bb.bv ]
  %.sroa.422.1.i.i = phi ptr [ %i.hu, %._RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2F_6decodeB1O_EEBM_.exit_crit_edge.i.i ], [ %i.ht, %bb.bv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !917
  call void @llvm.experimental.noalias.scope.decl(metadata !945)
  call void @llvm.experimental.noalias.scope.decl(metadata !946)
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 32
  %i.hz = load ptr, ptr %i.hy, align 8, !noalias !947, !nonnull !3, !noundef !3
  %i.ia = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  invoke void %i.hz(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ia, ptr noundef %i.hw, i64 noundef %i.hv)
          to label %bb.bz unwind label %bb.bw, !noalias !921, !inline_history !930

bb.bw:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2F_6decodeB1O_EEBM_.exit.i.i
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

bb.bx:                                            ; preds = %bb.br, %bb.bm
  %i.ic = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !921
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.bw, %bb.br, %bb.bp, %bb.bm
  %.pn4.pn.i.i = phi { ptr, i32 } [ %i.hj, %bb.br ], [ %i.ib, %bb.bw ], [ %i.hh, %bb.bp ], [ %i.hd, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !917
  store i8 2, ptr %i.gz, align 8, !noalias !917
  br label %.body52.i

.thread:                                          ; preds = %bb.bq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !917
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9113.sroa.7.i.sroa.4, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.625.i.sroa.5.i.sroa.6, i64 40, i1 false), !noalias !908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.9113.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.625.i.sroa.6.i, i64 168, i1 false), !noalias !908
  store i8 1, ptr %i.gz, align 8, !noalias !917
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.625.i.sroa.5.i.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.625.i.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517.i.i)
  br label %bb.cb

bb.by:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !917
  store i8 3, ptr %i.gz, align 8, !noalias !917
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.625.i.sroa.5.i.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.625.i.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !908
  br label %bb.ce

bb.bz:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2F_6decodeB1O_EEBM_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !917
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9113.sroa.7.i.sroa.4, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.625.i.sroa.5.i.sroa.6, i64 40, i1 false), !noalias !908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.9113.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.625.i.sroa.6.i, i64 168, i1 false), !noalias !908
  store i8 1, ptr %i.gz, align 8, !noalias !917
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.625.i.sroa.5.i.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.625.i.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517.i.i)
  br i1 %i.hr, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.14126.i.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9113.sroa.7.i.sroa.4, i64 40, i1 false), !noalias !908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.15.i, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.9113.sroa.8.i, i64 168, i1 false), !noalias !908
  %i.id = ptrtoint ptr %.sroa.422.1.i.i to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 504
  store i8 0, ptr %i.ie, align 8, !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !908
  br label %bb.cf

bb.cb:                                            ; preds = %.thread, %bb.bz
  %.sroa.422.0.i.i266 = phi ptr [ %.sroa.3.0.copyload.i.i, %.thread ], [ %.sroa.422.1.i.i, %bb.bz ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.422.0.i.i266) ]
  %i.if = ptrtoint ptr %.sroa.422.0.i.i266 to i64
  br label %bb.bd

bb.cc:                                            ; preds = %bb.bb
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(136) %i.s) #20
          to label %bb.be unwind label %bb.ar, !noalias !912

bb.cd:                                            ; preds = %bb.be
  call void @llvm.experimental.noalias.scope.decl(metadata !948)
  call void @llvm.experimental.noalias.scope.decl(metadata !951)
  call void @llvm.experimental.noalias.scope.decl(metadata !954)
  %i.ig = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  %i.ih = load ptr, ptr %i.ig, align 8, !noalias !957, !nonnull !3, !noundef !3
  %i.ii = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ij = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ik = load i64, ptr %i.ij, align 8, !alias.scope !958, !noalias !908, !noundef !3
  invoke void %i.ih(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ii, ptr noundef %i.gf, i64 noundef %i.ik)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.ar, !noalias !912, !inline_history !395

bb.ce:                                            ; preds = %bb.aa, %bb.ax, %bb.by
  %i.il = phi ptr [ %i.ec, %bb.aa ], [ %i.fp, %bb.ax ], [ %i.gx, %bb.by ]
  %.sink.i.ph = phi i8 [ 3, %bb.aa ], [ 4, %bb.ax ], [ 5, %bb.by ]
  store i8 %.sink.i.ph, ptr %i.il, align 2, !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14126.i.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9113.sroa.7.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9113.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.5.i.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.566.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13114.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14115)
  store i64 -9223372036854775806, ptr %0, align 8
  br label %common.ret

bb.cf:                                            ; preds = %bb.ca, %bb.bd, %bb.at
  %i.im = phi ptr [ %i.gb, %bb.bd ], [ %i.gx, %bb.ca ], [ %i.ec, %bb.at ]
  %i.in = phi ptr [ %i.gc, %bb.bd ], [ %i.gy, %bb.ca ], [ %i.ed, %bb.at ]
  %.sroa.14126.i.sroa.0.0 = phi i64 [ undef, %bb.bd ], [ %.sroa.625.i.sroa.5.i.sroa.0.0, %bb.ca ], [ %.sroa.3.sroa.5.i.sroa.0.0.copyload, %bb.at ] ; 2 uses
  %.sroa.0121.2.i = phi i64 [ -9223372036854775807, %bb.bd ], [ %i.hq, %bb.ca ], [ -9223372036854775807, %bb.at ] ; 3 uses
  %.sroa.5122.2.i = phi i64 [ %.sroa.5122.1.i, %bb.bd ], [ %i.id, %bb.ca ], [ %i.ef, %bb.at ] ; 2 uses
  %.sroa.9123.2.i = phi i64 [ %.sroa.9123.1.i, %bb.bd ], [ %.sroa.625.i.sroa.0.0.i, %bb.ca ], [ %.sroa.3.sroa.0.0.copyload.i, %bb.at ] ; 2 uses
  %.sroa.13.2.i = phi ptr [ %.sroa.13.1.i, %bb.bd ], [ %.sroa.625.i.sroa.4.0.i, %bb.ca ], [ %.sroa.3.sroa.3.0.copyload.i, %bb.at ] ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 505
  store i8 0, ptr %i.io, align 1, !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13114.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.14126.i.sroa.5, i64 40, i1 false), !noalias !959
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.14115, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.15.i, i64 168, i1 false), !noalias !959
  store i8 1, ptr %i.im, align 2, !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14126.i.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9113.sroa.7.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9113.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.5.i.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.566.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8126.sroa.3, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13114.sroa.6, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.9128, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.14115, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13114.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14115)
  %i.ip = icmp eq i64 %.sroa.0121.2.i, -9223372036854775807
  br i1 %i.ip, label %bb.dg, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 389 ; 2 uses
  store i8 1, ptr %i.iq, align 1
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 390 ; 2 uses
  store i8 1, ptr %i.ir, align 2
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  store i64 %.sroa.0121.2.i, ptr %i.is, align 8
  %.sroa.4137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  store i64 %.sroa.5122.2.i, ptr %.sroa.4137.0..sroa_idx, align 8
  %.sroa.5138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i64 %.sroa.9123.2.i, ptr %.sroa.5138.0..sroa_idx, align 8
  %.sroa.6139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr %.sroa.13.2.i, ptr %.sroa.6139.0..sroa_idx, align 8
  %.sroa.7140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i64 %.sroa.14126.i.sroa.0.0, ptr %.sroa.7140.0..sroa_idx, align 8
  %.sroa.7140.sroa.4.0..sroa.7140.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7140.sroa.4.0..sroa.7140.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8126.sroa.3, i64 40, i1 false)
  %.sroa.8141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.8141.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.9128, i64 168, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10144.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14153)
  %i.it = icmp eq i64 %.sroa.0121.2.i, -9223372036854775808
  br i1 %i.it, label %bb.ch, label %bb.cn

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i8 0, ptr %i.ir, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.w, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4137.0..sroa_idx, i64 72, i1 false)
  %.sroa.0188.0.copyload = load ptr, ptr %i.w, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.4.sroa.0243.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.4.sroa.4.0.copyload = load i64, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14153, ptr noundef nonnull align 8 dereferenceable(24) %i.iu, i64 24, i1 false)
  %i.iv = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models12ErrorDetailsENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.iv)
          to label %bb.cj unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.iw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models12ErrorDetailsENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.iv)
          to label %.body50 unwind label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models12ErrorDetailsENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.iv)
          to label %bb.ds unwind label %bb.de

bb.ck:                                            ; preds = %bb.ci
  %i.ix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.cl:                                            ; preds = %bb.dc, %bb.cm
  %.pn19 = phi { ptr, i32 } [ %i.iz, %bb.cm ], [ %.pn17, %bb.dc ]
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 392
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models5TableEBK_(ptr noalias noundef align 8 dereferenceable(248) %i.iy) #20
          to label %bb.df unwind label %bb.o

bb.cm:                                            ; preds = %bb.dv, %bb.dp, %bb.cn
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.cn:                                            ; preds = %bb.cg
  store i8 0, ptr %i.iq, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.in, ptr noundef nonnull align 8 dereferenceable(248) %i.is, i64 248, i1 false)
  %i.ja = getelementptr i8, ptr %1, i64 520
  %.val38 = load ptr, ptr %i.ja, align 8, !nonnull !3, !noundef !3
  %i.jb = getelementptr i8, ptr %1, i64 528
  %.val39 = load i64, ptr %i.jb, align 8, !noundef !3
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.jc = getelementptr i8, ptr %1, i64 8
  %.val37 = load i64, ptr %i.jc, align 8, !noundef !3
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 2 uses
  invoke void @_RNvMs6_NtCsgO8S5jLFugx_23deltalake_catalog_unity6modelsNtB5_32TemporaryTableCredentialsRequest3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.jd, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val38, i64 noundef %.val39, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val37)
          to label %bb.co unwind label %bb.cm

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0171)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.jf = load ptr, ptr %i.je, align 8, !nonnull !3, !align !15, !noundef !3 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  invoke void @_RNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtB5_12UnityCatalog11catalog_url(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noundef nonnull align 8 %i.jf)
          to label %bb.cr unwind label %bb.cp

.body57:                                          ; preds = %bb.cs, %bb.cp, %bb.cq
  %.pn5 = phi { ptr, i32 } [ %i.ji, %bb.cq ], [ %i.jh, %bb.cp ], [ %i.jj, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.cv

bb.cp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.co
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %.body57

bb.cq:                                            ; preds = %bb.cr
  %i.ji = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa) #20
          to label %.body57 unwind label %bb.o

bb.cr:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %i.aa, ptr %i.z, align 8
  %.sroa.5175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5175.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noundef nonnull @31, ptr noundef nonnull %i.z)
          to label %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit unwind label %bb.cq

_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit:       ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.cs

bb.cs:                                            ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit
  %i.jj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.body57 unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.jk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.cu unwind label %bb.cp

bb.cu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !alias.scope !960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  invoke void @_RINvMs_NtCsjkRrtHEnRPD_18reqwest_middleware6clientNtB5_20ClientWithMiddleware4postNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([312 x i8]) align 8 captures(address) dereferenceable(312) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.jg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ac)
          to label %bb.cx unwind label %bb.cw

bb.cv:                                            ; preds = %bb.cw, %.body57
  %.pn9 = phi { ptr, i32 } [ %i.jl, %bb.cw ], [ %.pn5, %.body57 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.dd

end_hunk_0
