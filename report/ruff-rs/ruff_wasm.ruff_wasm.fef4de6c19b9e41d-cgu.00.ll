Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_wasm.ruff_wasm.fef4de6c19b9e41d-cgu.00?download=true
inline.NumInlined: 2593
inline.NumDeleted: 1098
begin_hunk_0_@_RINvXNtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB3_9SeqAccessNtNtCs6nZeqdiIoCH_10serde_core2de9SeqAccess17next_element_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEECslT7UmUwa3wv_9ruff_wasm:bb.a

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.e, ptr %i.g, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXNvNtCsEhZmuQNqkz_11ruff_linter13rule_selectors_1__NtB5_22UnresolvedRuleSelectorNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, i32 noundef %i.e)
  %i.h = load i64, ptr %i.a, align 8, !range !298, !noundef !4 ; 2 uses
  %i.i = icmp eq i64 %i.h, -1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.k, ptr %i.l, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.h:                                             ; preds = %bb.f
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.9.sroa.8.0..sroa.9.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.9.sroa.8.0..sroa.9.0..sroa_idx4.sroa_idx, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.5.0..sroa_idx, i64 44, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.h, ptr %0, align 8
  %.sroa.9.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.k, ptr %.sroa.9.0..sroa_idx4, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB3_9SeqAccessNtNtCs6nZeqdiIoCH_10serde_core2de9SeqAccess17next_element_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtCscdodAO9FK5_5alloc6string6StringEECslT7UmUwa3wv_9ruff_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef align 4 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = tail call { i32, i32 } @_RINvMs16_CsdjJ41tfNHOz_6js_sysNtB7_9IterState4nextNtCsXBDNnD8Soy_12wasm_bindgen7JsValueECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull dereferenceable(1) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %1) ; 2 uses
  %i.d = extractvalue { i32, i32 } %i.c, 0        ; 2 uses
  %i.e = extractvalue { i32, i32 } %i.c, 1        ; 2 uses
  %.not = icmp eq i32 %i.d, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc i32 %i.d to i1
  br i1 %i.f, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.e, ptr %i.g, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXs6_NtNtCs6nZeqdiIoCH_10serde_core2de5implsNtNtCscdodAO9FK5_5alloc6string6StringNtB8_11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i32 noundef %i.e)
  %i.h = load i64, ptr %i.a, align 8, !range !3, !noundef !4 ; 2 uses
  %i.i = icmp eq i64 %i.h, -1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.k, ptr %i.l, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.h:                                             ; preds = %bb.f
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.9.sroa.8.0..sroa.9.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.sroa.8.0..sroa.9.0..sroa_idx4.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.h, ptr %0, align 8
  %.sroa.9.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.k, ptr %.sroa.9.0..sroa_idx4, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB3_9SeqAccessNtNtCs6nZeqdiIoCH_10serde_core2de9SeqAccess17next_element_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEECslT7UmUwa3wv_9ruff_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((15, 16)) %0, ptr noalias noundef align 4 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = tail call { i32, i32 } @_RINvMs16_CsdjJ41tfNHOz_6js_sysNtB7_9IterState4nextNtCsXBDNnD8Soy_12wasm_bindgen7JsValueECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull dereferenceable(1) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %1) ; 2 uses
  %i.d = extractvalue { i32, i32 } %i.c, 0        ; 2 uses
  %i.e = extractvalue { i32, i32 } %i.c, 1        ; 2 uses
  %.not = icmp eq i32 %i.d, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc i32 %i.d to i1
  br i1 %i.f, label %.sink.split, label %bb.d

.sink.split.sink.split:                           ; preds = %bb.d, %bb.e
  %.sink.ph.ph = phi i8 [ %i.h, %bb.e ], [ -2, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.b
  %.sink38 = phi i32 [ %i.e, %bb.b ], [ %i.j, %.sink.split.sink.split ]
  %.sink.ph = phi i8 [ -2, %bb.b ], [ %.sink.ph.ph, %.sink.split.sink.split ]
  store i32 %.sink38, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %.sink = phi i8 [ -1, %bb.a ], [ %.sink.ph, %.sink.split ]
  %.sroa.8.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %.sink, ptr %.sroa.8.0..sroa_idx3, align 1
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXNvNtCskLngH8kgpZI_15ruff_python_ast4names_1__NtB5_4NameNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, i32 noundef %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.h = load i8, ptr %i.g, align 1, !range !10, !noundef !4 ; 2 uses
  %i.i = icmp eq i8 %i.h, -1
  %i.j = load i32, ptr %i.a, align 8
  br i1 %i.i, label %.sink.split.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.0.sroa.8.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %.sroa.0.sroa.8.0..sroa_idx29, ptr noundef nonnull align 4 dereferenceable(11) %.sroa.4.0..sroa_idx, i64 11, i1 false)
  br label %.sink.split.sink.split
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB3_9SeqAccessNtNtCs6nZeqdiIoCH_10serde_core2de9SeqAccess17next_element_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionEECslT7UmUwa3wv_9ruff_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef align 4 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = tail call { i32, i32 } @_RINvMs16_CsdjJ41tfNHOz_6js_sysNtB7_9IterState4nextNtCsXBDNnD8Soy_12wasm_bindgen7JsValueECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull dereferenceable(1) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %1) ; 2 uses
  %i.d = extractvalue { i32, i32 } %i.c, 0        ; 2 uses
  %i.e = extractvalue { i32, i32 } %i.c, 1        ; 2 uses
  %.not = icmp eq i32 %i.d, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc i32 %i.d to i1
  br i1 %i.f, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.e, ptr %i.g, align 8
  store i64 -3, ptr %0, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorizes2_1__NtB5_13ImportSectionNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i32 noundef %i.e)
  %i.h = load i64, ptr %i.a, align 8, !range !6, !noundef !4 ; 2 uses
  %i.i = icmp eq i64 %i.h, -2
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.k, ptr %i.l, align 8
  store i64 -3, ptr %0, align 8
  br label %bb.d

bb.h:                                             ; preds = %bb.f
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.9.sroa.8.0..sroa.9.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.sroa.8.0..sroa.9.0..sroa_idx4.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.h, ptr %0, align 8
  %.sroa.9.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.k, ptr %.sroa.9.0..sroa_idx4, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294902014) i64 @_RINvXNtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB3_9SeqAccessNtNtCs6nZeqdiIoCH_10serde_core2de9SeqAccess17next_element_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settings12ConstantTypeEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef align 4 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = tail call { i32, i32 } @_RINvMs16_CsdjJ41tfNHOz_6js_sysNtB7_9IterState4nextNtCsXBDNnD8Soy_12wasm_bindgen7JsValueECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull dereferenceable(1) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0) ; 2 uses
  %i.c = extractvalue { i32, i32 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { i32, i32 } %i.b, 1        ; 2 uses
  %.not = icmp eq i32 %i.c, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i32 %i.c to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.g, %bb.f, %bb.d
  %.sroa.71.0 = phi i64 [ %i.f, %bb.d ], [ %.sroa.635.0.extract.shift, %bb.f ], [ 0, %bb.g ], [ 0, %bb.a ]
  %.sroa.5.0 = phi i64 [ 0, %bb.d ], [ 0, %bb.f ], [ %i.i, %bb.g ], [ 65280, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.d ], [ 1, %bb.f ], [ 0, %bb.g ], [ 0, %bb.a ]
  %.sroa.71.0.insert.shift = shl nuw i64 %.sroa.71.0, 32
  %.sroa.5.0.insert.insert = or disjoint i64 %.sroa.71.0.insert.shift, %.sroa.5.0
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.insert, %.sroa.0.0
  ret i64 %.sroa.0.0.insert.insert

bb.d:                                             ; preds = %bb.b
  %i.f = zext i32 %i.d to i64
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.g = tail call i64 @_RINvXNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingss_1__NtB5_12ConstantTypeNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(i32 noundef %i.d) ; 3 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.635.0.extract.shift = lshr i64 %i.g, 32
  br label %bb.c

bb.g:                                             ; preds = %bb.e
  %i.i = and i64 %i.g, 65280
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RINvXNtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB3_9SeqAccessNtNtCs6nZeqdiIoCH_10serde_core2de9SeqAccess17next_element_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatacEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef align 4 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [4 x i8], align 4                 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = tail call { i32, i32 } @_RINvMs16_CsdjJ41tfNHOz_6js_sysNtB7_9IterState4nextNtCsXBDNnD8Soy_12wasm_bindgen7JsValueECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull dereferenceable(1) %i.c, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0) ; 2 uses
  %i.e = extractvalue { i32, i32 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i32, i32 } %i.d, 1        ; 7 uses
  %.not = icmp eq i32 %i.e, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = trunc i32 %i.e to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatacENtB6_15DeserializeSeed11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit, %bb.b, %bb.a
  %.sroa.5.0 = phi i32 [ -1, %bb.a ], [ %i.f, %bb.b ], [ %.pn13.i.i.i, %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatacENtB6_15DeserializeSeed11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit ]
  %.sroa.0.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ %.sroa.0.0.i.i.i, %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatacENtB6_15DeserializeSeed11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit ]
  %i.h = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.i = insertvalue { i32, i32 } %i.h, i32 %.sroa.5.0, 1
  ret { i32, i32 } %i.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.f, ptr %i.b, align 4
  %i.j = invoke noundef align 4 ptr @_RINvYNtCsXBDNnD8Soy_12wasm_bindgen7JsValueNtNtB5_4cast6JsCast7dyn_refNtCsdjJ41tfNHOz_6js_sys8JsStringECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %bb.g unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %bb.i, %bb.h, %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp ugt i32 %i.f, 1027
  br i1 %i.l, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %i.f) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit.i.i.i

bb.g:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = invoke noundef i32 @_RNvMs1D_CsdjJ41tfNHOz_6js_sysNtB6_8JsString7as_char(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.j)
          to label %bb.j unwind label %bb.e       ; 3 uses

bb.i:                                             ; preds = %bb.j, %bb.g
  %i.n = invoke noundef i32 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer13invalid_type_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19)
          to label %bb.l unwind label %bb.e       ; 2 uses

bb.j:                                             ; preds = %bb.h
  %.not7.i.i.i = icmp eq i32 %i.m, -1
  br i1 %.not7.i.i.i, label %bb.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = icmp ugt i32 %i.f, 1027
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit10.sink.split.i.i.i, label %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatacENtB6_15DeserializeSeed11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit10.sink.split.i.i.i: ; preds = %bb.l, %bb.k
  %.pn13.ph.i.i.i = phi i32 [ %i.n, %bb.l ], [ %i.m, %bb.k ]
  %.sroa.0.0.ph.i.i.i = phi i32 [ 1, %bb.l ], [ 0, %bb.k ]
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %i.f) #14
  br label %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatacENtB6_15DeserializeSeed11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.l:                                             ; preds = %bb.i
  %i.p = icmp ugt i32 %i.f, 1027
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit10.sink.split.i.i.i, label %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatacENtB6_15DeserializeSeed11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit.i.i.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.k

_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatacENtB6_15DeserializeSeed11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit10.sink.split.i.i.i, %bb.l
  %.pn13.i.i.i = phi i32 [ %i.n, %bb.l ], [ %i.m, %bb.k ], [ %.pn13.ph.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit10.sink.split.i.i.i ]
  %.sroa.0.0.i.i.i = phi i32 [ 1, %bb.l ], [ 0, %bb.k ], [ %.sroa.0.0.ph.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit10.sink.split.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB3_9SeqAccessNtNtCs6nZeqdiIoCH_10serde_core2de9SeqAccess17next_element_seedNtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content14ContentVisitorECslT7UmUwa3wv_9ruff_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1)) %0, ptr noalias noundef align 4 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = tail call { i32, i32 } @_RINvMs16_CsdjJ41tfNHOz_6js_sysNtB7_9IterState4nextNtCsXBDNnD8Soy_12wasm_bindgen7JsValueECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull dereferenceable(1) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %1) ; 2 uses
  %i.d = extractvalue { i32, i32 } %i.c, 0        ; 2 uses
  %i.e = extractvalue { i32, i32 } %i.c, 1        ; 2 uses
  %.not = icmp eq i32 %i.d, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc i32 %i.d to i1
  br i1 %i.f, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  store i8 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.e, ptr %i.g, align 4
  store i8 -2, ptr %0, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsi_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs6nZeqdiIoCH_10serde_core2de15DeserializeSeed11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, i32 noundef %i.e)
  %i.h = load i8, ptr %i.a, align 8, !range !8, !noundef !4 ; 2 uses
  %i.i = icmp eq i8 %i.h, -1
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.k = load i32, ptr %i.j, align 4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.k, ptr %i.l, align 4
  store i8 -2, ptr %0, align 8
  br label %bb.d

bb.h:                                             ; preds = %bb.f
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.9.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.9.0..sroa_idx4, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.436.0..sroa_idx, i64 3, i1 false)
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.537.0.copyload = load i32, ptr %.sroa.537.0..sroa_idx, align 4
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.9.sroa.9.0..sroa.9.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.sroa.9.0..sroa.9.0..sroa_idx4.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.638.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 %i.h, ptr %0, align 8
  %.sroa.9.sroa.8.0..sroa.9.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.537.0.copyload, ptr %.sroa.9.sroa.8.0..sroa.9.0..sroa_idx4.sroa_idx, align 4
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_9MapAccessNtNtCs6nZeqdiIoCH_10serde_core2de9MapAccess13next_key_seedNtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content14ContentVisitorECslT7UmUwa3wv_9ruff_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1)) %0, ptr noalias noundef align 4 dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = tail call { i32, i32 } @_RINvMs16_CsdjJ41tfNHOz_6js_sysNtB7_9IterState4nextNtCsXBDNnD8Soy_12wasm_bindgen7JsValueECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull dereferenceable(1) %i.c, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b) ; 2 uses
  %i.e = extractvalue { i32, i32 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i32, i32 } %i.d, 1        ; 2 uses
  %.not = icmp eq i32 %i.e, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = trunc i32 %i.e to i1
  br i1 %i.g, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  store i8 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %bb.h, %bb.e, %bb.c
  ret void
end_hunk_0
begin_hunk_1_@_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB4M_6string6StringENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEECslT7UmUwa3wv_9ruff_wasm:bb.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCscdodAO9FK5_5alloc6string6StringNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEECslT7UmUwa3wv_9ruff_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.b, align 4
  %i.c = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %.noexc

.noexc:                                           ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1988)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1988
  call void @_RINvXs3g_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCscdodAO9FK5_5alloc6string6StringNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB9_11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, i32 noundef %1)
  %i.d = load ptr, ptr %i.a, align 8, !noalias !1988, !noundef !4
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i32, ptr %i.f, align 8, !noalias !1988, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.g, ptr %i.h, align 4, !alias.scope !1988
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCscdodAO9FK5_5alloc6string6StringNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCscdodAO9FK5_5alloc6string6StringNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCscdodAO9FK5_5alloc6string6StringNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.c, %bb.d
  %.sink.i = phi i32 [ 1, %bb.c ], [ 0, %bb.d ]
  store i32 %.sink.i, ptr %0, align 8, !alias.scope !1988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1988
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.f, %bb.e, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCscdodAO9FK5_5alloc6string6StringNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  ret void

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.j, align 8, !alias.scope !1989
  store i32 0, ptr %0, align 8, !alias.scope !1989
  %i.k = icmp ugt i32 %1, 1027
  br i1 %i.k, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.l

bb.g:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp ugt i32 %1, 1027
  br i1 %i.m, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4

bb.h:                                             ; preds = %bb.g
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtCscdodAO9FK5_5alloc6string6StringNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEECslT7UmUwa3wv_9ruff_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.b, align 4
  %i.c = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %.noexc

.noexc:                                           ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1994)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1994
  call void @_RINvXs1q_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtCscdodAO9FK5_5alloc6string6StringNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB9_11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, i32 noundef %1)
  %i.d = load ptr, ptr %i.a, align 8, !noalias !1994, !noundef !4
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i32, ptr %i.f, align 8, !noalias !1994, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.g, ptr %i.h, align 4, !alias.scope !1994
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtCscdodAO9FK5_5alloc6string6StringNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtCscdodAO9FK5_5alloc6string6StringNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtCscdodAO9FK5_5alloc6string6StringNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.c, %bb.d
  %.sink.i = phi i32 [ 1, %bb.c ], [ 0, %bb.d ]
  store i32 %.sink.i, ptr %0, align 8, !alias.scope !1994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1994
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.f, %bb.e, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtCscdodAO9FK5_5alloc6string6StringNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  ret void

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.j, align 8, !alias.scope !1995
  store i32 0, ptr %0, align 8, !alias.scope !1995
  %i.k = icmp ugt i32 %1, 1027
  br i1 %i.k, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.l

bb.g:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp ugt i32 %1, 1027
  br i1 %i.m, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4

bb.h:                                             ; preds = %bb.g
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufINtNtB2K_3vec3VecNtNtB2K_6string6StringEEEECslT7UmUwa3wv_9ruff_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.b, align 4
  %i.c = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %.noexc

.noexc:                                           ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !2000)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2000
  call void @_RINvXs3f_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufINtNtBT_3vec3VecNtNtBT_6string6StringEENtB9_11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, i32 noundef %1)
  %i.d = load i32, ptr %i.a, align 8, !range !9, !noalias !2000, !noundef !4
  %i.e = trunc nuw i32 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.g = load i32, ptr %i.f, align 4, !noalias !2000, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.g, ptr %i.h, align 8, !alias.scope !2000
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufINtNtB1d_3vec3VecNtNtB1d_6string6StringEEENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufINtNtB1d_3vec3VecNtNtB1d_6string6StringEEENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufINtNtB1d_3vec3VecNtNtB1d_6string6StringEEENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.c, %bb.d
  %.sink.i = phi i64 [ 2, %bb.c ], [ 1, %bb.d ]
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !2000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2000
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.f, %bb.e, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2AWtUsOyxgP_3std4path7PathBufINtNtB1d_3vec3VecNtNtB1d_6string6StringEEENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  ret void

bb.e:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8, !alias.scope !2001
  %i.j = icmp ugt i32 %1, 1027
  br i1 %i.j, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.k

bb.g:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp ugt i32 %1, 1027
  br i1 %i.l, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4

bb.h:                                             ; preds = %bb.g
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294967038) i64 @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtCs7Ma6rQP8bRy_14ruff_formatter11IndentStyleEECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %0, ptr %i.a, align 4
  %i.b = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtCs7Ma6rQP8bRy_14ruff_formatter11IndentStyleENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtCs7Ma6rQP8bRy_14ruff_formatter11IndentStyleENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.b
  %i.c = call i64 @_RINvXNvCs7Ma6rQP8bRy_14ruff_formatters_1__NtB5_11IndentStyleNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) ; 3 uses
  %i.d = trunc i64 %i.c to i1
  %i.e = and i64 %i.c, 256
  %spec.select.i = select i1 %i.d, i64 0, i64 %i.e
  %i.f = and i64 %i.c, -4294967295
  %.sroa.0.0.insert.insert.i = or disjoint i64 %spec.select.i, %i.f
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.d, %bb.c, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtCs7Ma6rQP8bRy_14ruff_formatter11IndentStyleENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.insert.insert.i, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtCs7Ma6rQP8bRy_14ruff_formatter11IndentStyleENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit ], [ 512, %bb.c ], [ 512, %bb.d ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i32 %0, 1027
  br i1 %i.g, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %bb.c
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp ugt i32 %0, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options11LintOptionsEECslT7UmUwa3wv_9ruff_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([2352 x i8]) align 8 captures(none) dereferenceable(2352) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2352 x i8], align 8              ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.b, align 4
  %i.c = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %.noexc

.noexc:                                           ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !2006)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2006
  call void @_RINvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss3_1__NtB5_11LintOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull sret([2352 x i8]) align 8 captures(none) dereferenceable(2352) %i.a, i32 noundef %1)
  %i.d = load i64, ptr %i.a, align 8, !range !5, !noalias !2006, !noundef !4
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i32, ptr %i.f, align 8, !noalias !2006, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.g, ptr %i.h, align 8, !alias.scope !2006
  store i64 -1, ptr %0, align 8, !alias.scope !2006
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options11LintOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2352) %0, ptr noundef nonnull align 8 dereferenceable(2352) %i.a, i64 2352, i1 false)
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options11LintOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options11LintOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2006
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.f, %bb.e, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options11LintOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  ret void

bb.e:                                             ; preds = %bb.b
  store i64 2, ptr %0, align 8, !alias.scope !2007
  %i.i = icmp ugt i32 %1, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.j

bb.g:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp ugt i32 %1, 1027
  br i1 %i.k, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4

bb.h:                                             ; preds = %bb.g
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options11RuffOptionsEECslT7UmUwa3wv_9ruff_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.b, align 4
  %i.c = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %.noexc

.noexc:                                           ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !2012)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2012
  call void @_RINvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1t_1__NtB5_11RuffOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, i32 noundef %1)
  %i.d = load i64, ptr %i.a, align 8, !range !6, !noalias !2012, !noundef !4
  %i.e = icmp eq i64 %i.d, -2
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i32, ptr %i.f, align 8, !noalias !2012, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.g, ptr %i.h, align 8, !alias.scope !2012
  store i64 -3, ptr %0, align 8, !alias.scope !2012
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options11RuffOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options11RuffOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options11RuffOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2012
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.f, %bb.e, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options11RuffOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  ret void

bb.e:                                             ; preds = %bb.b
  store i64 -2, ptr %0, align 8, !alias.scope !2013
  %i.i = icmp ugt i32 %1, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.j

bb.g:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp ugt i32 %1, 1027
  br i1 %i.k, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4

bb.h:                                             ; preds = %bb.g
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options12IsortOptionsEECslT7UmUwa3wv_9ruff_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([448 x i8]) align 8 captures(none) dereferenceable(448) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [448 x i8], align 8               ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.b, align 4
  %i.c = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %.noexc

.noexc:                                           ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !2018)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2018
  call void @_RINvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss12_1__NtB5_12IsortOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull sret([448 x i8]) align 8 captures(address) dereferenceable(448) %i.a, i32 noundef %1)
  %i.d = load i64, ptr %i.a, align 8, !range !5, !noalias !2018, !noundef !4
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i32, ptr %i.f, align 8, !noalias !2018, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.g, ptr %i.h, align 8, !alias.scope !2018
  store i64 -1, ptr %0, align 8, !alias.scope !2018
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options12IsortOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull align 8 dereferenceable(448) %i.a, i64 448, i1 false)
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options12IsortOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

end_hunk_1
begin_hunk_2_@_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options13McCabeOptionsEECslT7UmUwa3wv_9ruff_wasm:bb.a
  resume { ptr, i32 } %i.k

bb.g:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp ugt i32 %1, 1027
  br i1 %i.l, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4

bb.h:                                             ; preds = %bb.g
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options13PylintOptionsEECslT7UmUwa3wv_9ruff_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([216 x i8]) align 8 captures(none) dereferenceable(216) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [216 x i8], align 8               ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.b, align 4
  %i.c = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %.noexc

.noexc:                                           ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !2036)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2036
  call void @_RINvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1n_1__NtB5_13PylintOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull sret([216 x i8]) align 8 captures(address) dereferenceable(216) %i.a, i32 noundef %1)
  %i.d = load i64, ptr %i.a, align 8, !range !5, !noalias !2036, !noundef !4
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i32, ptr %i.f, align 8, !noalias !2036, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.g, ptr %i.h, align 8, !alias.scope !2036
  store i64 -1, ptr %0, align 8, !alias.scope !2036
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options13PylintOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(216) %i.a, i64 216, i1 false)
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options13PylintOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options13PylintOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2036
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.f, %bb.e, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options13PylintOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  ret void

bb.e:                                             ; preds = %bb.b
  store i64 2, ptr %0, align 8, !alias.scope !2037
  %i.i = icmp ugt i32 %1, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.j

bb.g:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp ugt i32 %1, 1027
  br i1 %i.k, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4

bb.h:                                             ; preds = %bb.g
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options14AnalyzeOptionsEECslT7UmUwa3wv_9ruff_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.b, align 4
  %i.c = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %.noexc

.noexc:                                           ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !2042)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2042
  call void @_RINvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1y_1__NtB5_14AnalyzeOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.a, i32 noundef %1)
  %i.d = load i64, ptr %i.a, align 8, !range !5, !noalias !2042, !noundef !4
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i32, ptr %i.f, align 8, !noalias !2042, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.g, ptr %i.h, align 8, !alias.scope !2042
  store i64 -1, ptr %0, align 8, !alias.scope !2042
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options14AnalyzeOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options14AnalyzeOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options14AnalyzeOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2042
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.f, %bb.e, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options14AnalyzeOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  ret void

bb.e:                                             ; preds = %bb.b
  store i64 2, ptr %0, align 8, !alias.scope !2043
  %i.i = icmp ugt i32 %1, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.j

bb.g:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp ugt i32 %1, 1027
  br i1 %i.k, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4

bb.h:                                             ; preds = %bb.g
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options15PyflakesOptionsEECslT7UmUwa3wv_9ruff_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.b, align 4
  %i.c = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %.noexc

.noexc:                                           ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !2048)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2048
  call void @_RINvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1k_1__NtB5_15PyflakesOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, i32 noundef %1)
  %i.d = load i64, ptr %i.a, align 8, !range !6, !noalias !2048, !noundef !4
  %i.e = icmp eq i64 %i.d, -2
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i32, ptr %i.f, align 8, !noalias !2048, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.g, ptr %i.h, align 8, !alias.scope !2048
  store i64 -3, ptr %0, align 8, !alias.scope !2048
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options15PyflakesOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options15PyflakesOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options15PyflakesOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2048
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.f, %bb.e, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options15PyflakesOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  ret void

bb.e:                                             ; preds = %bb.b
  store i64 -2, ptr %0, align 8, !alias.scope !2049
  %i.i = icmp ugt i32 %1, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.j

bb.g:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp ugt i32 %1, 1027
  br i1 %i.k, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4

bb.h:                                             ; preds = %bb.g
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294902014) i64 @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options16PyUpgradeOptionsEECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %0, ptr %i.a, align 4
  %i.b = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options16PyUpgradeOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options16PyUpgradeOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.b
  %i.c = call i64 @_RINvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1q_1__NtB5_16PyUpgradeOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) ; 3 uses
  %i.d = trunc i64 %i.c to i1
  %i.e = and i64 %i.c, 65280
  %.sroa.3.0.i = select i1 %i.d, i64 0, i64 %i.e
  %i.f = and i64 %i.c, -4294967295
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.3.0.i, %i.f
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.d, %bb.c, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options16PyUpgradeOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.insert.insert.i, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options16PyUpgradeOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit ], [ 65280, %bb.c ], [ 65280, %bb.d ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i32 %0, 1027
  br i1 %i.g, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %bb.c
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp ugt i32 %0, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294902014) i64 @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options16PydoclintOptionsEECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %0, ptr %i.a, align 4
  %i.b = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options16PydoclintOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options16PydoclintOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.b
  %i.c = call i64 @_RINvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1h_1__NtB5_16PydoclintOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) ; 3 uses
  %i.d = trunc i64 %i.c to i1
  %i.e = and i64 %i.c, 65280
  %.sroa.3.0.i = select i1 %i.d, i64 0, i64 %i.e
  %i.f = and i64 %i.c, -4294967295
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.3.0.i, %i.f
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.d, %bb.c, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options16PydoclintOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.insert.insert.i, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options16PydoclintOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit ], [ 65280, %bb.c ], [ 65280, %bb.d ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i32 %0, 1027
  br i1 %i.g, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %bb.c
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp ugt i32 %0, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options17Flake8SelfOptionsEECslT7UmUwa3wv_9ruff_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.b, align 4
  %i.c = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %.noexc

.noexc:                                           ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !2054)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2054
  call void @_RINvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionssQ_1__NtB5_17Flake8SelfOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, i32 noundef %1)
  %i.d = load i64, ptr %i.a, align 8, !range !6, !noalias !2054, !noundef !4
  %i.e = icmp eq i64 %i.d, -2
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i32, ptr %i.f, align 8, !noalias !2054, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.g, ptr %i.h, align 8, !alias.scope !2054
  store i64 -3, ptr %0, align 8, !alias.scope !2054
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options17Flake8SelfOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options17Flake8SelfOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options17Flake8SelfOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2054
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.f, %bb.e, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options17Flake8SelfOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  ret void

bb.e:                                             ; preds = %bb.b
  store i64 -2, ptr %0, align 8, !alias.scope !2055
  %i.i = icmp ugt i32 %1, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.j

bb.g:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp ugt i32 %1, 1027
  br i1 %i.k, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4

bb.h:                                             ; preds = %bb.g
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options17Pep8NamingOptionsEECslT7UmUwa3wv_9ruff_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.b, align 4
  %i.c = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %.noexc

.noexc:                                           ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !2060)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2060
  call void @_RINvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss18_1__NtB5_17Pep8NamingOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.a, i32 noundef %1)
  %i.d = load i64, ptr %i.a, align 8, !range !6, !noalias !2060, !noundef !4
  %i.e = icmp eq i64 %i.d, -2
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i32, ptr %i.f, align 8, !noalias !2060, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.g, ptr %i.h, align 8, !alias.scope !2060
  store i64 -3, ptr %0, align 8, !alias.scope !2060
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options17Pep8NamingOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options17Pep8NamingOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options17Pep8NamingOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2060
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.f, %bb.e, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options17Pep8NamingOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  ret void

bb.e:                                             ; preds = %bb.b
  store i64 -2, ptr %0, align 8, !alias.scope !2061
  %i.i = icmp ugt i32 %1, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.j

bb.g:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp ugt i32 %1, 1027
  br i1 %i.k, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4

bb.h:                                             ; preds = %bb.g
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options17PydocstyleOptionsEECslT7UmUwa3wv_9ruff_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.b, align 4
  %i.c = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %.noexc

.noexc:                                           ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !2066)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2066
  call void @_RINvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1e_1__NtB5_17PydocstyleOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, i32 noundef %1)
  %i.d = load i64, ptr %i.a, align 8, !range !6, !noalias !2066, !noundef !4
  %i.e = icmp eq i64 %i.d, -2
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i32, ptr %i.f, align 8, !noalias !2066, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.g, ptr %i.h, align 8, !alias.scope !2066
  store i64 -3, ptr %0, align 8, !alias.scope !2066
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options17PydocstyleOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options17PydocstyleOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options17PydocstyleOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2066
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.f, %bb.e, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options17PydocstyleOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  ret void

bb.e:                                             ; preds = %bb.b
  store i64 -2, ptr %0, align 8, !alias.scope !2067
  %i.i = icmp ugt i32 %1, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.j

bb.g:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp ugt i32 %1, 1027
  br i1 %i.k, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4

bb.h:                                             ; preds = %bb.g
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -65534) i64 @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options18PycodestyleOptionsEECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %0, ptr %i.a, align 4
  %i.b = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options18PycodestyleOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options18PycodestyleOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.b
  %i.c = call i64 @_RINvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1b_1__NtB5_18PycodestyleOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) ; 3 uses
  %i.d = trunc i64 %i.c to i1
  %.sroa.010.0.insert.ext.i = and i64 %i.c, 4294901760
  %spec.select.i = select i1 %i.d, i64 0, i64 %.sroa.010.0.insert.ext.i
  %i.e = and i64 %i.c, -4294967295
  %.sroa.0.0.insert.insert.i = or disjoint i64 %spec.select.i, %i.e
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.d, %bb.c, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options18PycodestyleOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.insert.insert.i, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options18PycodestyleOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit ], [ 71776119061217280, %bb.c ], [ 71776119061217280, %bb.d ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ugt i32 %0, 1027
  br i1 %i.f, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %bb.c
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

bb.e:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp ugt i32 %0, 1027
  br i1 %i.h, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options19Flake8BanditOptionsEECslT7UmUwa3wv_9ruff_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.b, align 4
  %i.c = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %.noexc

.noexc:                                           ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !2072)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2072
  call void @_RINvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionssc_1__NtB5_19Flake8BanditOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.a, i32 noundef %1)
  %i.d = load i64, ptr %i.a, align 8, !range !6, !noalias !2072, !noundef !4
  %i.e = icmp eq i64 %i.d, -2
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i32, ptr %i.f, align 8, !noalias !2072, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.g, ptr %i.h, align 8, !alias.scope !2072
  store i64 -3, ptr %0, align 8, !alias.scope !2072
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options19Flake8BanditOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false)
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options19Flake8BanditOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options19Flake8BanditOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2072
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.f, %bb.e, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options19Flake8BanditOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  ret void

bb.e:                                             ; preds = %bb.b
  store i64 -2, ptr %0, align 8, !alias.scope !2073
  %i.i = icmp ugt i32 %1, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.j

bb.g:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp ugt i32 %1, 1027
  br i1 %i.k, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4

bb.h:                                             ; preds = %bb.g
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options19Flake8ErrMsgOptionsEECslT7UmUwa3wv_9ruff_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.b, align 4
  %i.c = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %.noexc

.noexc:                                           ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !2078)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2078
  call void @_RINvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionssu_1__NtB5_19Flake8ErrMsgOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, i32 noundef %1)
  %i.d = load i64, ptr %i.a, align 8, !range !5, !noalias !2078, !noundef !4 ; 2 uses
  %i.e = icmp eq i64 %i.d, 2
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.h = load i32, ptr %i.f, align 8, !noalias !2078, !noundef !4
  store i32 %i.h, ptr %i.g, align 8, !alias.scope !2078
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options19Flake8ErrMsgOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %.noexc
  %i.i = load i64, ptr %i.f, align 8, !noalias !2078
  store i64 %i.i, ptr %i.g, align 8, !alias.scope !2078
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options19Flake8ErrMsgOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options19Flake8ErrMsgOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.c, %bb.d
  %.sink.i = phi i64 [ -1, %bb.c ], [ %i.d, %bb.d ]
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !2078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2078
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.f, %bb.e, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options19Flake8ErrMsgOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  ret void

bb.e:                                             ; preds = %bb.b
  store i64 2, ptr %0, align 8, !alias.scope !2079
  %i.j = icmp ugt i32 %1, 1027
  br i1 %i.j, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.k

bb.g:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp ugt i32 %1, 1027
  br i1 %i.l, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4

bb.h:                                             ; preds = %bb.g
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -254) i64 @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options19Flake8QuotesOptionsEECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %0, ptr %i.a, align 4
  %i.b = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.d, label %.noexc

.noexc:                                           ; preds = %bb.b
  %i.c = call i64 @_RINvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionssN_1__NtB5_19Flake8QuotesOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) ; 3 uses
  %.sroa.512.0.extract.shift.i = lshr i64 %i.c, 32 ; 2 uses
  %i.d = trunc i64 %i.c to i1
  br i1 %i.d, label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options19Flake8QuotesOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.e = trunc i64 %i.c to i32
  %.sroa.5.1.extract.trunc.i = trunc nuw i64 %.sroa.512.0.extract.shift.i to i32
  %.sroa.013.0.insert.insert.i = call i32 @llvm.fshl.i32(i32 %.sroa.5.1.extract.trunc.i, i32 %i.e, i32 24) ; 2 uses
  %.sroa.416.0.extract.shift.i = lshr i32 %.sroa.013.0.insert.insert.i, 24
  %i.f = zext nneg i32 %.sroa.416.0.extract.shift.i to i64
  %i.g = shl i32 %.sroa.013.0.insert.insert.i, 8
  %i.h = zext i32 %i.g to i64
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options19Flake8QuotesOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options19Flake8QuotesOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %.noexc, %bb.c
  %.sroa.3.sroa.0.0.i = phi i64 [ %i.h, %bb.c ], [ 0, %.noexc ]
  %.sroa.4.0.i = phi i64 [ %i.f, %bb.c ], [ %.sroa.512.0.extract.shift.i, %.noexc ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ 1, %.noexc ]
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.i, 32
  %.sroa.3.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.3.sroa.0.0.i
  %.sroa.0.0.insert.insert.i = or i64 %.sroa.3.0.insert.insert.i, %.sroa.0.0.i
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.e, %bb.d, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options19Flake8QuotesOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.insert.insert.i, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options19Flake8QuotesOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit ], [ 65280, %bb.d ], [ 65280, %bb.e ]
  ret i64 %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.i = icmp ugt i32 %0, 1027
  br i1 %i.i, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.e:                                             ; preds = %bb.d
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.j

bb.f:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp ugt i32 %0, 1027
  br i1 %i.k, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8

bb.g:                                             ; preds = %bb.f
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options20Flake8BugbearOptionsEECslT7UmUwa3wv_9ruff_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.b, align 4
  %i.c = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %.noexc

.noexc:                                           ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !2084)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2084
  call void @_RINvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionssi_1__NtB5_20Flake8BugbearOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i32 noundef %1)
  %i.d = load i64, ptr %i.a, align 8, !range !6, !noalias !2084, !noundef !4
  %i.e = icmp eq i64 %i.d, -2
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i32, ptr %i.f, align 8, !noalias !2084, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.g, ptr %i.h, align 8, !alias.scope !2084
  store i64 -3, ptr %0, align 8, !alias.scope !2084
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options20Flake8BugbearOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options20Flake8BugbearOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options20Flake8BugbearOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2084
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.f, %bb.e, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options20Flake8BugbearOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  ret void

bb.e:                                             ; preds = %bb.b
  store i64 -2, ptr %0, align 8, !alias.scope !2085
  %i.i = icmp ugt i32 %1, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.j

bb.g:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp ugt i32 %1, 1027
  br i1 %i.k, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4

bb.h:                                             ; preds = %bb.g
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options20Flake8GetTextOptionsEECslT7UmUwa3wv_9ruff_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.b, align 4
  %i.c = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %.noexc

.noexc:                                           ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !2090)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2090
  call void @_RINvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionssx_1__NtB5_20Flake8GetTextOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, i32 noundef %1)
  %i.d = load i64, ptr %i.a, align 8, !range !6, !noalias !2090, !noundef !4
  %i.e = icmp eq i64 %i.d, -2
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i32, ptr %i.f, align 8, !noalias !2090, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.g, ptr %i.h, align 8, !alias.scope !2090
  store i64 -3, ptr %0, align 8, !alias.scope !2090
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options20Flake8GetTextOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options20Flake8GetTextOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options20Flake8GetTextOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2090
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.f, %bb.e, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options20Flake8GetTextOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  ret void

bb.e:                                             ; preds = %bb.b
  store i64 -2, ptr %0, align 8, !alias.scope !2091
  %i.i = icmp ugt i32 %1, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.j

bb.g:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp ugt i32 %1, 1027
  br i1 %i.k, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4

bb.h:                                             ; preds = %bb.g
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options21Flake8BuiltinsOptionsEECslT7UmUwa3wv_9ruff_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.b, align 4
  %i.c = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %.noexc

.noexc:                                           ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !2096)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2096
  call void @_RINvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionssl_1__NtB5_21Flake8BuiltinsOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.a, i32 noundef %1)
end_hunk_2
begin_hunk_3_@_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options24Flake8BooleanTrapOptionsEECslT7UmUwa3wv_9ruff_wasm:bb.a
  resume { ptr, i32 } %i.j

bb.g:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp ugt i32 %1, 1027
  br i1 %i.k, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4

bb.h:                                             ; preds = %bb.g
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options24Flake8PytestStyleOptionsEECslT7UmUwa3wv_9ruff_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.b, align 4
  %i.c = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %.noexc

.noexc:                                           ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !2114)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2114
  call void @_RINvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionssK_1__NtB5_24Flake8PytestStyleOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.a, i32 noundef %1)
  %i.d = load i64, ptr %i.a, align 8, !range !6, !noalias !2114, !noundef !4
  %i.e = icmp eq i64 %i.d, -2
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i32, ptr %i.f, align 8, !noalias !2114, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.g, ptr %i.h, align 8, !alias.scope !2114
  store i64 -3, ptr %0, align 8, !alias.scope !2114
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options24Flake8PytestStyleOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false)
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options24Flake8PytestStyleOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options24Flake8PytestStyleOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2114
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.f, %bb.e, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options24Flake8PytestStyleOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  ret void

bb.e:                                             ; preds = %bb.b
  store i64 -2, ptr %0, align 8, !alias.scope !2115
  %i.i = icmp ugt i32 %1, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.j

bb.g:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp ugt i32 %1, 1027
  br i1 %i.k, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4

bb.h:                                             ; preds = %bb.g
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options24Flake8TidyImportsOptionsEECslT7UmUwa3wv_9ruff_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.b, align 4
  %i.c = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %.noexc

.noexc:                                           ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !2120)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2120
  call void @_RINvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionssT_1__NtB5_24Flake8TidyImportsOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.a, i32 noundef %1)
  %i.d = load i64, ptr %i.a, align 8, !range !6, !noalias !2120, !noundef !4
  %i.e = icmp eq i64 %i.d, -2
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i32, ptr %i.f, align 8, !noalias !2120, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.g, ptr %i.h, align 8, !alias.scope !2120
  store i64 -3, ptr %0, align 8, !alias.scope !2120
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options24Flake8TidyImportsOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i64 160, i1 false)
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options24Flake8TidyImportsOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options24Flake8TidyImportsOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2120
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.f, %bb.e, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options24Flake8TidyImportsOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  ret void

bb.e:                                             ; preds = %bb.b
  store i64 -2, ptr %0, align 8, !alias.scope !2121
  %i.i = icmp ugt i32 %1, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.j

bb.g:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp ugt i32 %1, 1027
  br i1 %i.k, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4

bb.h:                                             ; preds = %bb.g
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options25Flake8TypeCheckingOptionsEECslT7UmUwa3wv_9ruff_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.b, align 4
  %i.c = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %.noexc

.noexc:                                           ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !2126)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2126
  call void @_RINvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionssW_1__NtB5_25Flake8TypeCheckingOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.a, i32 noundef %1)
  %i.d = load i64, ptr %i.a, align 8, !range !6, !noalias !2126, !noundef !4
  %i.e = icmp eq i64 %i.d, -2
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i32, ptr %i.f, align 8, !noalias !2126, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.g, ptr %i.h, align 8, !alias.scope !2126
  store i64 -3, ptr %0, align 8, !alias.scope !2126
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options25Flake8TypeCheckingOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options25Flake8TypeCheckingOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options25Flake8TypeCheckingOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2126
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.f, %bb.e, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options25Flake8TypeCheckingOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  ret void

bb.e:                                             ; preds = %bb.b
  store i64 -2, ptr %0, align 8, !alias.scope !2127
  %i.i = icmp ugt i32 %1, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.j

bb.g:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp ugt i32 %1, 1027
  br i1 %i.k, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4

bb.h:                                             ; preds = %bb.g
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294902014) i64 @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options27Flake8ComprehensionsOptionsEECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %0, ptr %i.a, align 4
  %i.b = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options27Flake8ComprehensionsOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options27Flake8ComprehensionsOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.b
  %i.c = call i64 @_RINvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionsso_1__NtB5_27Flake8ComprehensionsOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) ; 3 uses
  %i.d = trunc i64 %i.c to i1
  %i.e = and i64 %i.c, 65280
  %.sroa.3.0.i = select i1 %i.d, i64 0, i64 %i.e
  %i.f = and i64 %i.c, -4294967295
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.3.0.i, %i.f
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.d, %bb.c, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options27Flake8ComprehensionsOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.insert.insert.i, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options27Flake8ComprehensionsOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit ], [ 65280, %bb.c ], [ 65280, %bb.d ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i32 %0, 1027
  br i1 %i.g, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %bb.c
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp ugt i32 %0, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294902014) i64 @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options28Flake8UnusedArgumentsOptionsEECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %0, ptr %i.a, align 4
  %i.b = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options28Flake8UnusedArgumentsOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options28Flake8UnusedArgumentsOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.b
  %i.c = call i64 @_RINvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionssZ_1__NtB5_28Flake8UnusedArgumentsOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) ; 3 uses
  %i.d = trunc i64 %i.c to i1
  %i.e = and i64 %i.c, 65280
  %.sroa.3.0.i = select i1 %i.d, i64 0, i64 %i.e
  %i.f = and i64 %i.c, -4294967295
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.3.0.i, %i.f
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.d, %bb.c, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options28Flake8UnusedArgumentsOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.insert.insert.i, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options28Flake8UnusedArgumentsOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit ], [ 65280, %bb.c ], [ 65280, %bb.d ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i32 %0, 1027
  br i1 %i.g, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %bb.c
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp ugt i32 %0, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294902014) i64 @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options30Flake8ImplicitStrConcatOptionsEECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %0, ptr %i.a, align 4
  %i.b = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options30Flake8ImplicitStrConcatOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options30Flake8ImplicitStrConcatOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.b
  %i.c = call i64 @_RINvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionssA_1__NtB5_30Flake8ImplicitStrConcatOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) ; 3 uses
  %i.d = trunc i64 %i.c to i1
  %i.e = and i64 %i.c, 65280
  %.sroa.3.0.i = select i1 %i.d, i64 0, i64 %i.e
  %i.f = and i64 %i.c, -4294967295
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.3.0.i, %i.f
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.d, %bb.c, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options30Flake8ImplicitStrConcatOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.insert.insert.i, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options30Flake8ImplicitStrConcatOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit ], [ 65280, %bb.c ], [ 65280, %bb.d ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i32 %0, 1027
  br i1 %i.g, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %bb.c
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp ugt i32 %0, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options30Flake8ImportConventionsOptionsEECslT7UmUwa3wv_9ruff_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.b, align 4
  %i.c = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %.noexc

.noexc:                                           ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !2132)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2132
  call void @_RINvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionssD_1__NtB5_30Flake8ImportConventionsOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.a, i32 noundef %1)
  %i.d = load i32, ptr %i.a, align 8, !range !9, !noalias !2132, !noundef !4
  %i.e = trunc nuw i32 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.g = load i32, ptr %i.f, align 4, !noalias !2132, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.g, ptr %i.h, align 8, !alias.scope !2132
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options30Flake8ImportConventionsOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(128) %i.i, i64 128, i1 false)
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options30Flake8ImportConventionsOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options30Flake8ImportConventionsOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.c, %bb.d
  %.sink.i = phi i64 [ 2, %bb.c ], [ 1, %bb.d ]
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !2132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2132
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.f, %bb.e, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace7options30Flake8ImportConventionsOptionsENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  ret void

bb.e:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8, !alias.scope !2133
  %i.j = icmp ugt i32 %1, 1027
  br i1 %i.j, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.k

bb.g:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp ugt i32 %1, 1027
  br i1 %i.l, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4

bb.h:                                             ; preds = %bb.g
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294902014) i64 @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace8settings10LineEndingEECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %0, ptr %i.a, align 4
  %i.b = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace8settings10LineEndingENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace8settings10LineEndingENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.b
  %i.c = call i64 @_RINvXNvNtCs3ZkgueCtkyH_14ruff_workspace8settingss_1__NtB5_10LineEndingNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) ; 3 uses
  %i.d = trunc i64 %i.c to i1
  %i.e = and i64 %i.c, 65280
  %.sroa.3.0.i = select i1 %i.d, i64 0, i64 %i.e
  %i.f = and i64 %i.c, -4294967295
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.3.0.i, %i.f
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.d, %bb.c, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace8settings10LineEndingENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.insert.insert.i, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs3ZkgueCtkyH_14ruff_workspace8settings10LineEndingENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit ], [ 65280, %bb.c ], [ 65280, %bb.d ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i32 %0, 1027
  br i1 %i.g, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %bb.c
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp ugt i32 %0, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294902014) i64 @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtCs8CpBcHC8tKo_21ruff_python_formatter7options10QuoteStyleEECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %0, ptr %i.a, align 4
  %i.b = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs8CpBcHC8tKo_21ruff_python_formatter7options10QuoteStyleENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs8CpBcHC8tKo_21ruff_python_formatter7options10QuoteStyleENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.b
  %i.c = call i64 @_RINvXNvNtCs8CpBcHC8tKo_21ruff_python_formatter7optionss1_1__NtB5_10QuoteStyleNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) ; 3 uses
  %i.d = trunc i64 %i.c to i1
  %i.e = and i64 %i.c, 65280
  %.sroa.3.0.i = select i1 %i.d, i64 0, i64 %i.e
  %i.f = and i64 %i.c, -4294967295
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.3.0.i, %i.f
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.d, %bb.c, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs8CpBcHC8tKo_21ruff_python_formatter7options10QuoteStyleENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.insert.insert.i, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs8CpBcHC8tKo_21ruff_python_formatter7options10QuoteStyleENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit ], [ 65280, %bb.c ], [ 65280, %bb.d ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i32 %0, 1027
  br i1 %i.g, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %bb.c
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp ugt i32 %0, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294901758) i64 @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtCs8CpBcHC8tKo_21ruff_python_formatter7options22DocstringCodeLineWidthEECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %0, ptr %i.a, align 4
  %i.b = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs8CpBcHC8tKo_21ruff_python_formatter7options22DocstringCodeLineWidthENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs8CpBcHC8tKo_21ruff_python_formatter7options22DocstringCodeLineWidthENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.b
  %i.c = call i64 @_RINvXNvNtCs8CpBcHC8tKo_21ruff_python_formatter7optionsse_1__NtB5_22DocstringCodeLineWidthNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) ; 4 uses
  %i.d = trunc i64 %i.c to i1                     ; 2 uses
  %.sroa.54.0.extract.shift.i = lshr i64 %i.c, 32 ; 2 uses
  %i.e = and i64 %.sroa.54.0.extract.shift.i, 4294901760
  %.sroa.43.0.extract.shift.i = lshr i64 %i.c, 16
  %.sroa.4.sroa.3.0.i = select i1 %i.d, i64 %i.e, i64 0
  %.sroa.4.sroa.0.0.in.i = select i1 %i.d, i64 %.sroa.54.0.extract.shift.i, i64 %.sroa.43.0.extract.shift.i
  %.sroa.0.0.i = and i64 %i.c, 1
  %.sroa.4.sroa.0.0.insert.ext.i = and i64 %.sroa.4.sroa.0.0.in.i, 65535
  %.sroa.4.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.sroa.3.0.i, %.sroa.4.sroa.0.0.insert.ext.i
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.sroa.0.0.insert.insert.i, 32
  %.sroa.3.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.0.0.i
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.3.0.insert.insert.i, 65536
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.d, %bb.c, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs8CpBcHC8tKo_21ruff_python_formatter7options22DocstringCodeLineWidthENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.insert.insert.i, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs8CpBcHC8tKo_21ruff_python_formatter7options22DocstringCodeLineWidthENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit ], [ 0, %bb.c ], [ 0, %bb.d ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ugt i32 %0, 1027
  br i1 %i.f, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %bb.c
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

bb.e:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp ugt i32 %0, 1027
  br i1 %i.h, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294967038) i64 @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtCs8CpBcHC8tKo_21ruff_python_formatter7options22NestedStringQuoteStyleEECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %0, ptr %i.a, align 4
  %i.b = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs8CpBcHC8tKo_21ruff_python_formatter7options22NestedStringQuoteStyleENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs8CpBcHC8tKo_21ruff_python_formatter7options22NestedStringQuoteStyleENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.b
  %i.c = call i64 @_RINvXNvNtCs8CpBcHC8tKo_21ruff_python_formatter7optionss8_1__NtB5_22NestedStringQuoteStyleNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) ; 3 uses
  %i.d = trunc i64 %i.c to i1
  %i.e = and i64 %i.c, 256
  %spec.select.i = select i1 %i.d, i64 0, i64 %i.e
  %i.f = and i64 %i.c, -4294967295
  %.sroa.0.0.insert.insert.i = or disjoint i64 %spec.select.i, %i.f
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.d, %bb.c, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs8CpBcHC8tKo_21ruff_python_formatter7options22NestedStringQuoteStyleENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.insert.insert.i, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs8CpBcHC8tKo_21ruff_python_formatter7options22NestedStringQuoteStyleENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit ], [ 512, %bb.c ], [ 512, %bb.d ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i32 %0, 1027
  br i1 %i.g, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %bb.c
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp ugt i32 %0, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294967038) i64 @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtCs8yaccCKGz54_10ruff_graph8settings9DirectionEECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %0, ptr %i.a, align 4
  %i.b = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs8yaccCKGz54_10ruff_graph8settings9DirectionENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs8yaccCKGz54_10ruff_graph8settings9DirectionENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.b
  %i.c = call i64 @_RINvXNvNtCs8yaccCKGz54_10ruff_graph8settingss_1__NtB5_9DirectionNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) ; 3 uses
  %i.d = trunc i64 %i.c to i1
  %i.e = and i64 %i.c, 256
  %spec.select.i = select i1 %i.d, i64 0, i64 %i.e
  %i.f = and i64 %i.c, -4294967295
  %.sroa.0.0.insert.insert.i = or disjoint i64 %spec.select.i, %i.f
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.d, %bb.c, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs8yaccCKGz54_10ruff_graph8settings9DirectionENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.insert.insert.i, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs8yaccCKGz54_10ruff_graph8settings9DirectionENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit ], [ 512, %bb.c ], [ 512, %bb.d ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i32 %0, 1027
  br i1 %i.g, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %bb.c
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp ugt i32 %0, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -65534) i64 @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtCsEhZmuQNqkz_11ruff_linter10line_width10LineLengthEECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %0, ptr %i.a, align 4
  %i.b = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCsEhZmuQNqkz_11ruff_linter10line_width10LineLengthENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCsEhZmuQNqkz_11ruff_linter10line_width10LineLengthENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.b
  %i.c = call i64 @_RINvXs1_NtCsEhZmuQNqkz_11ruff_linter10line_widthNtB6_10LineLengthNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) ; 3 uses
  %i.d = trunc i64 %i.c to i1
  %i.e = and i64 %i.c, 4294901760
  %.sroa.3.0.i = select i1 %i.d, i64 0, i64 %i.e
  %i.f = and i64 %i.c, -4294967295
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.3.0.i, %i.f
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.d, %bb.c, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCsEhZmuQNqkz_11ruff_linter10line_width10LineLengthENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.insert.insert.i, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCsEhZmuQNqkz_11ruff_linter10line_width10LineLengthENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit ], [ 0, %bb.c ], [ 0, %bb.d ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i32 %0, 1027
  br i1 %i.g, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %bb.c
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp ugt i32 %0, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294902014) i64 @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtCsEhZmuQNqkz_11ruff_linter10line_width11IndentWidthEECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %0, ptr %i.a, align 4
  %i.b = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCsEhZmuQNqkz_11ruff_linter10line_width11IndentWidthENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCsEhZmuQNqkz_11ruff_linter10line_width11IndentWidthENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.b
  %i.c = call i64 @_RINvXNvNtCsEhZmuQNqkz_11ruff_linter10line_widths1_1__NtB5_11IndentWidthNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) ; 3 uses
  %i.d = trunc i64 %i.c to i1
  %i.e = and i64 %i.c, 65280
  %.sroa.3.0.i = select i1 %i.d, i64 0, i64 %i.e
  %i.f = and i64 %i.c, -4294967295
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.3.0.i, %i.f
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.d, %bb.c, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCsEhZmuQNqkz_11ruff_linter10line_width11IndentWidthENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.insert.insert.i, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCsEhZmuQNqkz_11ruff_linter10line_width11IndentWidthENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit ], [ 0, %bb.c ], [ 0, %bb.d ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i32 %0, 1027
  br i1 %i.g, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %bb.c
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp ugt i32 %0, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtCscdodAO9FK5_5alloc6string6StringEECslT7UmUwa3wv_9ruff_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.b, align 4
  %i.c = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %.noexc

.noexc:                                           ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !2138)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2138
  call void @_RINvXs6_NtNtCs6nZeqdiIoCH_10serde_core2de5implsNtNtCscdodAO9FK5_5alloc6string6StringNtB8_11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i32 noundef %1)
  %i.d = load i64, ptr %i.a, align 8, !range !3, !noalias !2138, !noundef !4
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i32, ptr %i.f, align 8, !noalias !2138, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.g, ptr %i.h, align 8, !alias.scope !2138
  store i64 -2, ptr %0, align 8, !alias.scope !2138
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCscdodAO9FK5_5alloc6string6StringENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCscdodAO9FK5_5alloc6string6StringENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCscdodAO9FK5_5alloc6string6StringENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2138
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.f, %bb.e, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtCscdodAO9FK5_5alloc6string6StringENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  ret void

bb.e:                                             ; preds = %bb.b
  store i64 -1, ptr %0, align 8, !alias.scope !2139
  %i.i = icmp ugt i32 %1, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.j

bb.g:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp ugt i32 %1, 1027
  br i1 %i.k, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4

bb.h:                                             ; preds = %bb.g
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294902014) i64 @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types12OutputFormatEECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %0, ptr %i.a, align 4
  %i.b = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types12OutputFormatENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types12OutputFormatENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.b
  %i.c = call i64 @_RINvXNvNtNtCsEhZmuQNqkz_11ruff_linter8settings5typess5_1__NtB5_12OutputFormatNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) ; 3 uses
  %i.d = trunc i64 %i.c to i1
  %i.e = and i64 %i.c, 65280
  %.sroa.3.0.i = select i1 %i.d, i64 0, i64 %i.e
  %i.f = and i64 %i.c, -4294967295
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.3.0.i, %i.f
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.d, %bb.c, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types12OutputFormatENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.insert.insert.i, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types12OutputFormatENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit ], [ 65280, %bb.c ], [ 65280, %bb.d ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i32 %0, 1027
  br i1 %i.g, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %bb.c
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp ugt i32 %0, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294902014) i64 @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types13PythonVersionEECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %0, ptr %i.a, align 4
  %i.b = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types13PythonVersionENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types13PythonVersionENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.b
  %i.c = call i64 @_RINvXNvNtNtCsEhZmuQNqkz_11ruff_linter8settings5typess_1__NtB5_13PythonVersionNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) ; 3 uses
  %i.d = trunc i64 %i.c to i1
  %i.e = and i64 %i.c, 65280
  %.sroa.3.0.i = select i1 %i.d, i64 0, i64 %i.e
  %i.f = and i64 %i.c, -4294967295
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.3.0.i, %i.f
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.d, %bb.c, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types13PythonVersionENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.insert.insert.i, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types13PythonVersionENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit ], [ 65280, %bb.c ], [ 65280, %bb.d ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i32 %0, 1027
  br i1 %i.g, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %bb.c
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp ugt i32 %0, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types15RequiredVersionEECslT7UmUwa3wv_9ruff_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.b, align 4
  %i.c = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %.noexc

.noexc:                                           ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !2144)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2144
  call void @_RINvXNvNtNtCsEhZmuQNqkz_11ruff_linter8settings5typess8_1__NtB5_15RequiredVersionNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i32 noundef %1)
  %i.d = load i64, ptr %i.a, align 8, !range !3, !noalias !2144, !noundef !4
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i32, ptr %i.f, align 8, !noalias !2144, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.g, ptr %i.h, align 8, !alias.scope !2144
  store i64 -2, ptr %0, align 8, !alias.scope !2144
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types15RequiredVersionENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types15RequiredVersionENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types15RequiredVersionENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2144
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.f, %bb.e, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types15RequiredVersionENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  ret void

bb.e:                                             ; preds = %bb.b
  store i64 -1, ptr %0, align 8, !alias.scope !2145
  %i.i = icmp ugt i32 %1, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.j

bb.g:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp ugt i32 %1, 1027
  br i1 %i.k, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4

bb.h:                                             ; preds = %bb.g
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294902014) i64 @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settings10ConventionEECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %0, ptr %i.a, align 4
  %i.b = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settings10ConventionENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settings10ConventionENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.b
  %i.c = call i64 @_RINvXNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingss_1__NtB5_10ConventionNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) ; 3 uses
  %i.d = trunc i64 %i.c to i1
  %i.e = and i64 %i.c, 65280
  %.sroa.3.0.i = select i1 %i.d, i64 0, i64 %i.e
  %i.f = and i64 %i.c, -4294967295
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.3.0.i, %i.f
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.d, %bb.c, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settings10ConventionENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.insert.insert.i, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settings10ConventionENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit ], [ 65280, %bb.c ], [ 65280, %bb.d ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i32 %0, 1027
  br i1 %i.g, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %bb.c
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp ugt i32 %0, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294967038) i64 @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_quotes8settings5QuoteEECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %0, ptr %i.a, align 4
  %i.b = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_quotes8settings5QuoteENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_quotes8settings5QuoteENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.b
  %i.c = call i64 @_RINvXNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_quotes8settingss_1__NtB5_5QuoteNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) ; 3 uses
  %i.d = trunc i64 %i.c to i1
  %i.e = and i64 %i.c, 256
  %spec.select.i = select i1 %i.d, i64 0, i64 %i.e
  %i.f = and i64 %i.c, -4294967295
  %.sroa.0.0.insert.insert.i = or disjoint i64 %spec.select.i, %i.f
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.d, %bb.c, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_quotes8settings5QuoteENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.insert.insert.i, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_quotes8settings5QuoteENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit ], [ 512, %bb.c ], [ 512, %bb.d ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i32 %0, 1027
  br i1 %i.g, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %bb.c
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp ugt i32 %0, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294902014) i64 @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5types19ParametrizeNameTypeEECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %0, ptr %i.a, align 4
  %i.b = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5types19ParametrizeNameTypeENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5types19ParametrizeNameTypeENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.b
  %i.c = call i64 @_RINvXNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5typess_1__NtB5_19ParametrizeNameTypeNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) ; 3 uses
  %i.d = trunc i64 %i.c to i1
  %i.e = and i64 %i.c, 65280
  %.sroa.3.0.i = select i1 %i.d, i64 0, i64 %i.e
  %i.f = and i64 %i.c, -4294967295
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.3.0.i, %i.f
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.d, %bb.c, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5types19ParametrizeNameTypeENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.insert.insert.i, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5types19ParametrizeNameTypeENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit ], [ 65280, %bb.c ], [ 65280, %bb.d ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i32 %0, 1027
  br i1 %i.g, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %bb.c
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp ugt i32 %0, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294967038) i64 @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5types21ParametrizeValuesTypeEECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %0, ptr %i.a, align 4
  %i.b = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5types21ParametrizeValuesTypeENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5types21ParametrizeValuesTypeENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.b
  %i.c = call i64 @_RINvXNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5typess2_1__NtB5_21ParametrizeValuesTypeNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) ; 3 uses
  %i.d = trunc i64 %i.c to i1
  %i.e = and i64 %i.c, 256
  %spec.select.i = select i1 %i.d, i64 0, i64 %i.e
  %i.f = and i64 %i.c, -4294967295
  %.sroa.0.0.insert.insert.i = or disjoint i64 %spec.select.i, %i.f
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.d, %bb.c, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5types21ParametrizeValuesTypeENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.insert.insert.i, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5types21ParametrizeValuesTypeENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit ], [ 512, %bb.c ], [ 512, %bb.d ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i32 %0, 1027
  br i1 %i.g, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %bb.c
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp ugt i32 %0, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294967038) i64 @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5types24ParametrizeValuesRowTypeEECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %0, ptr %i.a, align 4
  %i.b = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5types24ParametrizeValuesRowTypeENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5types24ParametrizeValuesRowTypeENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.b
  %i.c = call i64 @_RINvXNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5typess5_1__NtB5_24ParametrizeValuesRowTypeNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) ; 3 uses
  %i.d = trunc i64 %i.c to i1
  %i.e = and i64 %i.c, 256
  %spec.select.i = select i1 %i.d, i64 0, i64 %i.e
  %i.f = and i64 %i.c, -4294967295
  %.sroa.0.0.insert.insert.i = or disjoint i64 %spec.select.i, %i.f
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.d, %bb.c, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5types24ParametrizeValuesRowTypeENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.insert.insert.i, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5types24ParametrizeValuesRowTypeENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit ], [ 512, %bb.c ], [ 512, %bb.d ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i32 %0, 1027
  br i1 %i.g, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %bb.c
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp ugt i32 %0, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294967038) i64 @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings10StrictnessEECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %0, ptr %i.a, align 4
  %i.b = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings10StrictnessENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings10StrictnessENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.b
  %i.c = call i64 @_RINvXNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settingss2_1__NtB5_10StrictnessNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) ; 3 uses
  %i.d = trunc i64 %i.c to i1
  %i.e = and i64 %i.c, 256
  %spec.select.i = select i1 %i.d, i64 0, i64 %i.e
  %i.f = and i64 %i.c, -4294967295
  %.sroa.0.0.insert.insert.i = or disjoint i64 %spec.select.i, %i.f
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.d, %bb.c, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings10StrictnessENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.insert.insert.i, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings10StrictnessENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit ], [ 512, %bb.c ], [ 512, %bb.d ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i32 %0, 1027
  br i1 %i.g, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %bb.c
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp ugt i32 %0, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings14ImportSelectorEECslT7UmUwa3wv_9ruff_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.b, align 4
  %i.c = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %.noexc

.noexc:                                           ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !2150)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2150
  call void @_RINvXNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settingsse_1__NtB5_14ImportSelectorNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, i32 noundef %1)
  %i.d = load i64, ptr %i.a, align 8, !range !6, !noalias !2150, !noundef !4
  %i.e = icmp eq i64 %i.d, -2
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i32, ptr %i.f, align 8, !noalias !2150, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.g, ptr %i.h, align 8, !alias.scope !2150
  store i64 -3, ptr %0, align 8, !alias.scope !2150
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings14ImportSelectorENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings14ImportSelectorENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings14ImportSelectorENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2150
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.f, %bb.e, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settings14ImportSelectorENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  ret void

bb.e:                                             ; preds = %bb.b
  store i64 -2, ptr %0, align 8, !alias.scope !2151
  %i.i = icmp ugt i32 %1, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.j

bb.g:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp ugt i32 %1, 1027
  br i1 %i.k, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4

bb.h:                                             ; preds = %bb.g
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionEECslT7UmUwa3wv_9ruff_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.b, align 4
  %i.c = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %.noexc

.noexc:                                           ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !2156)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2156
  call void @_RINvXNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorizes2_1__NtB5_13ImportSectionNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i32 noundef %1)
  %i.d = load i64, ptr %i.a, align 8, !range !6, !noalias !2156, !noundef !4
  %i.e = icmp eq i64 %i.d, -2
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i32, ptr %i.f, align 8, !noalias !2156, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.g, ptr %i.h, align 8, !alias.scope !2156
  store i64 -3, ptr %0, align 8, !alias.scope !2156
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2156
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.f, %bb.e, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  ret void

bb.e:                                             ; preds = %bb.b
  store i64 -2, ptr %0, align 8, !alias.scope !2157
  %i.i = icmp ugt i32 %1, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.j

bb.g:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp ugt i32 %1, 1027
  br i1 %i.k, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4

bb.h:                                             ; preds = %bb.g
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit4
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294967038) i64 @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settings20RelativeImportsOrderEECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %0, ptr %i.a, align 4
  %i.b = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settings20RelativeImportsOrderENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settings20RelativeImportsOrderENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.b
  %i.c = call i64 @_RINvXNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingss_1__NtB5_20RelativeImportsOrderNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) ; 3 uses
  %i.d = trunc i64 %i.c to i1
  %i.e = and i64 %i.c, 256
  %spec.select.i = select i1 %i.d, i64 0, i64 %i.e
  %i.f = and i64 %i.c, -4294967295
  %.sroa.0.0.insert.insert.i = or disjoint i64 %spec.select.i, %i.f
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.d, %bb.c, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settings20RelativeImportsOrderENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.insert.insert.i, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settings20RelativeImportsOrderENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit ], [ 512, %bb.c ], [ 512, %bb.d ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i32 %0, 1027
  br i1 %i.g, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %bb.c
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp ugt i32 %0, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294967038) i64 @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorbEECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %0, ptr %i.a, align 4
  %i.b = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorbENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorbENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.b
  %i.c = call i64 @_RINvXs1_NtNtCs6nZeqdiIoCH_10serde_core2de5implsbNtB8_11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(i32 noundef %0) ; 3 uses
  %i.d = trunc i64 %i.c to i1
  %i.e = and i64 %i.c, 256
  %spec.select.i = select i1 %i.d, i64 0, i64 %i.e
  %i.f = and i64 %i.c, -4294967295
  %.sroa.0.0.insert.insert.i = or disjoint i64 %spec.select.i, %i.f
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.d, %bb.c, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorbENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.insert.insert.i, %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitorbENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit ], [ 512, %bb.c ], [ 512, %bb.d ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i32 %0, 1027
  br i1 %i.g, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.d:                                             ; preds = %bb.c
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp ugt i32 %0, 1027
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8

bb.f:                                             ; preds = %bb.e
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %0) #14
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit8
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitoriEECslT7UmUwa3wv_9ruff_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [4 x i8], align 4                 ; 8 uses
  %i.d = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.d, align 4
  %i.e = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d)
          to label %bb.b unwind label %bb.r

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !2166)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2167
  store i32 %1, ptr %i.c, align 4, !noalias !2168
  %i.f = invoke noundef zeroext i1 @_RNvCsXBDNnD8Soy_12wasm_bindgen20___wbindgen_is_bigint(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c)
          to label %bb.d unwind label %bb.m, !noalias !2168

bb.d:                                             ; preds = %bb.c
  br i1 %i.f, label %.noexc, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = invoke { i64, i64 } @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer15as_safe_integer(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c)
          to label %.noexc.i.i.i unwind label %bb.m, !noalias !2168 ; 2 uses

.noexc.i.i.i:                                     ; preds = %bb.e
  %i.h = extractvalue { i64, i64 } %i.g, 0
  %i.i = trunc nuw i64 %i.h to i1                 ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc.i.i.i
  %i.j = extractvalue { i64, i64 } %i.g, 1
  br label %.noexc11.i.i.i

bb.g:                                             ; preds = %.noexc.i.i.i
  %i.k = invoke noundef i32 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer13invalid_type_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @91)
          to label %.noexc11.i.i.i unwind label %bb.m, !noalias !2168

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2168
  call void @_RNvYxNtNtNtCsXBDNnD8Soy_12wasm_bindgen7convert6traits14TryFromJsValue17try_from_js_valueCslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, i32 noundef %1)
  %i.l = load i32, ptr %i.b, align 8, !range !9, !noalias !2168, !noundef !4
  %i.m = trunc nuw i32 %i.l to i1
  br i1 %i.m, label %bb.i, label %_RINvXsX_NtNtCs6nZeqdiIoCH_10serde_core2de5implsiNtB8_11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit.thread5.i

.noexc11.i.i.i:                                   ; preds = %bb.g, %bb.f
  %.sroa.9.0.i = phi i64 [ %i.j, %bb.f ], [ undef, %bb.g ]
  %.sroa.6.0.i = phi i32 [ undef, %bb.f ], [ %i.k, %bb.g ]
  %i.n = icmp ugt i32 %1, 1027
  br i1 %i.n, label %bb.h, label %_RINvXsX_NtNtCs6nZeqdiIoCH_10serde_core2de5implsiNtB8_11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit.i

bb.h:                                             ; preds = %.noexc11.i.i.i
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14, !noalias !2168
  br label %_RINvXsX_NtNtCs6nZeqdiIoCH_10serde_core2de5implsiNtB8_11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit.i

bb.i:                                             ; preds = %.noexc
  %i.o = invoke noundef i32 @_RINvMs0_NtCsioq3h7D9pfI_18serde_wasm_bindgen5errorNtB6_5Error3newReECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull readonly captures(address, read_provenance) @305, i64 noundef 72)
          to label %bb.k unwind label %bb.j, !noalias !2168

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.val10.i.i.i = load i32, ptr %i.q, align 4, !noalias !2168 ; 2 uses
  %i.r = icmp ugt i32 %.val10.i.i.i, 1027
  br i1 %i.r, label %.body.thread.sink.split, label %.body.thread

_RINvXsX_NtNtCs6nZeqdiIoCH_10serde_core2de5implsiNtB8_11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit.thread5.i: ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noalias !2168, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2167
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.val6.i.i.i = load i32, ptr %i.u, align 4, !noalias !2168 ; 2 uses
  %i.v = icmp ugt i32 %.val6.i.i.i, 1027
  br i1 %i.v, label %bb.l, label %_RINvXsX_NtNtCs6nZeqdiIoCH_10serde_core2de5implsiNtB8_11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit.thread.i

bb.l:                                             ; preds = %bb.k
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.val6.i.i.i) #14, !noalias !2168
  br label %_RINvXsX_NtNtCs6nZeqdiIoCH_10serde_core2de5implsiNtB8_11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit.thread.i

_RINvXsX_NtNtCs6nZeqdiIoCH_10serde_core2de5implsiNtB8_11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit.thread.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2167
  br label %bb.n

bb.m:                                             ; preds = %bb.g, %bb.e, %bb.c
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = icmp ugt i32 %1, 1027
  br i1 %i.w, label %.body.thread.sink.split, label %.body.thread

_RINvXsX_NtNtCs6nZeqdiIoCH_10serde_core2de5implsiNtB8_11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit.i: ; preds = %bb.h, %.noexc11.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2167
  br i1 %i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RINvXsX_NtNtCs6nZeqdiIoCH_10serde_core2de5implsiNtB8_11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit.i, %_RINvXsX_NtNtCs6nZeqdiIoCH_10serde_core2de5implsiNtB8_11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit.thread.i
  %.sroa.6.14.i = phi i32 [ %i.o, %_RINvXsX_NtNtCs6nZeqdiIoCH_10serde_core2de5implsiNtB8_11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit.thread.i ], [ %.sroa.6.0.i, %_RINvXsX_NtNtCs6nZeqdiIoCH_10serde_core2de5implsiNtB8_11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.6.14.i, ptr %i.x, align 8, !alias.scope !2166
  store i64 2, ptr %0, align 8, !alias.scope !2166
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitoriENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.o:                                             ; preds = %_RINvXsX_NtNtCs6nZeqdiIoCH_10serde_core2de5implsiNtB8_11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit.i, %_RINvXsX_NtNtCs6nZeqdiIoCH_10serde_core2de5implsiNtB8_11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit.thread5.i
  %.sroa.9.19.i = phi i64 [ %i.t, %_RINvXsX_NtNtCs6nZeqdiIoCH_10serde_core2de5implsiNtB8_11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit.thread5.i ], [ %.sroa.9.0.i, %_RINvXsX_NtNtCs6nZeqdiIoCH_10serde_core2de5implsiNtB8_11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit.i ]
  store i64 1, ptr %0, align 8, !alias.scope !2166
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.19.i, ptr %i.y, align 8, !alias.scope !2166
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitoriENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitoriENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  ret void

bb.p:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8, !alias.scope !2169
  %i.z = icmp ugt i32 %1, 1027
  br i1 %i.z, label %bb.q, label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitoriENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.q:                                             ; preds = %bb.p
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #14
  br label %_RINvXsd_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtB6_13OptionVisitoriENtB8_7Visitor10visit_someNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm.exit

.body.thread.sink.split:                          ; preds = %bb.j, %bb.m, %bb.r
  %.sink = phi i32 [ %1, %bb.r ], [ %1, %bb.m ], [ %.val10.i.i.i, %bb.j ]
  %eh.lpad-body7.ph = phi { ptr, i32 } [ %i.aa, %bb.r ], [ %lpad.thr_comm.i.i.i, %bb.m ], [ %i.p, %bb.j ]
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.sink) #14
  br label %.body.thread

.body.thread:                                     ; preds = %.body.thread.sink.split, %bb.r, %bb.m, %bb.j
  %eh.lpad-body7 = phi { ptr, i32 } [ %i.p, %bb.j ], [ %i.aa, %bb.r ], [ %lpad.thr_comm.i.i.i, %bb.m ], [ %eh.lpad-body7.ph, %.body.thread.sink.split ]
  resume { ptr, i32 } %eh.lpad-body7

bb.r:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = icmp ugt i32 %1, 1027
  br i1 %i.ab, label %.body.thread.sink.split, label %.body.thread
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorjEECslT7UmUwa3wv_9ruff_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.b, align 4
  %i.c = invoke noundef zeroext i1 @_RNvMs7_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB5_12Deserializer10is_nullish(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %.noexc
end_hunk_3
