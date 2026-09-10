Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_wasm.ruff_wasm.fef4de6c19b9e41d-cgu.02?download=true
inline.NumInlined: 199
inline.NumDeleted: 44
begin_hunk_0_@_RINvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1z_1__NtB5_14AnalyzeOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeRNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser10SerializerECslT7UmUwa3wv_9ruff_wasm:bb.a
  br i1 %i.ad, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 75
  %i.af = invoke { i32, i32 } @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen3serNtB6_16ObjectSerializerNtNtCs6nZeqdiIoCH_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionbEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @171, i64 noundef 21, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.ae)
          to label %bb.o unwind label %bb.t       ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.ag = extractvalue { i32, i32 } %i.af, 0
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = load i32, ptr %i.g, align 8, !noundef !4
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser16ObjectSerializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser16ObjectSerializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.q, %bb.r, %bb.a, %bb.p
  %.sroa.10.0 = phi i32 [ %i.ai, %bb.p ], [ %.sroa.10.1, %bb.r ], [ %.sroa.10.1, %bb.q ], [ %i.f, %bb.a ]
  %.sroa.0.0 = phi i32 [ 0, %bb.p ], [ 1, %bb.r ], [ 1, %bb.q ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aj = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.ak = insertvalue { i32, i32 } %i.aj, i32 %.sroa.10.0, 1
  ret { i32, i32 } %i.ak

bb.q:                                             ; preds = %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  %.pn = phi { i32, i32 } [ %i.ab, %bb.m ], [ %i.i, %bb.c ], [ %i.m, %bb.e ], [ %i.q, %bb.g ], [ %i.u, %bb.i ], [ %i.x, %bb.k ], [ %i.af, %bb.o ]
  %.sroa.10.1 = extractvalue { i32, i32 } %.pn, 1 ; 2 uses
  %.val41 = load i32, ptr %i.g, align 8, !noundef !4 ; 2 uses
  %i.al = icmp ugt i32 %.val41, 1027
  br i1 %i.al, label %bb.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser16ObjectSerializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.r:                                             ; preds = %bb.q
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.val41) #13
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser16ObjectSerializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.s:                                             ; preds = %bb.u, %bb.t
  resume { ptr, i32 } %i.am

bb.t:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %bb.j, %bb.l, %bb.n
  %i.am = landingpad { ptr, i32 }
          cleanup
  %.val = load i32, ptr %i.g, align 8, !noundef !4 ; 2 uses
  %i.an = icmp ugt i32 %.val, 1027
  br i1 %i.an, label %bb.u, label %bb.s

bb.u:                                             ; preds = %bb.t
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.val) #13
  br label %bb.s
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RINvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss2_1__NtB5_11LintOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeRNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser10SerializerECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2352) %0, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(4) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXsa_NtCsioq3h7D9pfI_18serde_wasm_bindgen3serRNtB5_10SerializerNtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer13serialize_map(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %1, i64 noundef 0, i64 undef)
  %i.d = load i32, ptr %i.b, align 8, !range !8, !noundef !4 ; 2 uses
  %i.e = icmp eq i32 %i.d, 2
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.545.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i32 %i.d, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  store i32 %i.g, ptr %.sroa.4.0..sroa_idx, align 4
  %i.h = invoke fastcc { i32, i32 } @_RINvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss6_1__NtB5_17LintCommonOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2264) %0, ptr noalias noundef align 8 dereferenceable(24) %i.c)
          to label %bb.d unwind label %bb.u       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { i32, i32 } %i.h, 0
  %i.j = trunc i32 %i.i to i1
  br i1 %i.j, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2264
  %i.l = invoke { i32, i32 } @_RINvYNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerNtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_entryeINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB2J_6string6StringEEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
          to label %bb.f unwind label %bb.u       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.m = extractvalue { i32, i32 } %i.l, 0
  %i.n = trunc i32 %i.m to i1
  br i1 %i.n, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2347
  %i.p = invoke { i32, i32 } @_RINvYNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerNtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_entryeINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs3ZkgueCtkyH_14ruff_workspace7options16PydoclintOptionsEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @173, i64 noundef 9, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.o)
          to label %bb.h unwind label %bb.u       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.q = extractvalue { i32, i32 } %i.p, 0
  %i.r = trunc i32 %i.q to i1
  br i1 %i.r, label %bb.s, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2288
  %i.t = invoke { i32, i32 } @_RINvYNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerNtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_entryeINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs3ZkgueCtkyH_14ruff_workspace7options11RuffOptionsEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @174, i64 noundef 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.s)
          to label %bb.j unwind label %bb.u       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.u = extractvalue { i32, i32 } %i.t, 0
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2344
  %i.x = invoke { i32, i32 } @_RINvYNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerNtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_entryeINtNtCs4NRVxsYgnAr_4core6option6OptionbEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 7, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.w)
          to label %bb.l unwind label %bb.u       ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.y = extractvalue { i32, i32 } %i.x, 0
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2345
  %i.ab = invoke { i32, i32 } @_RINvYNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerNtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_entryeINtNtCs4NRVxsYgnAr_4core6option6OptionbEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @175, i64 noundef 17, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.aa)
          to label %bb.n unwind label %bb.u       ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.ac = extractvalue { i32, i32 } %i.ab, 0
  %i.ad = trunc i32 %i.ac to i1
  br i1 %i.ad, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2346
  %i.af = invoke { i32, i32 } @_RINvYNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerNtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_entryeINtNtCs4NRVxsYgnAr_4core6option6OptionbEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @176, i64 noundef 18, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.ae)
          to label %bb.p unwind label %bb.u       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.ag = extractvalue { i32, i32 } %i.af, 0
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ai = call { i32, i32 } @_RNvXs6_NtCsioq3h7D9pfI_18serde_wasm_bindgen3serNtB5_13MapSerializerNtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap3end(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.r

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerECslT7UmUwa3wv_9ruff_wasm.exit, %bb.q
  %.merged = phi { i32, i32 } [ %i.an, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerECslT7UmUwa3wv_9ruff_wasm.exit ], [ %i.ai, %bb.q ]
  ret { i32, i32 } %.merged

bb.s:                                             ; preds = %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d
  %.pn = phi { i32, i32 } [ %i.ab, %bb.n ], [ %i.h, %bb.d ], [ %i.l, %bb.f ], [ %i.p, %bb.h ], [ %i.t, %bb.j ], [ %i.x, %bb.l ], [ %i.af, %bb.p ]
  %.sroa.10.1 = extractvalue { i32, i32 } %.pn, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %.val1.i = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !alias.scope !84 ; 2 uses
  %i.aj = icmp ugt i32 %.val1.i, 1027
  br i1 %i.aj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsdjJ41tfNHOz_6js_sys3MapECslT7UmUwa3wv_9ruff_wasm.exit.sink.split.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser9MapResultECslT7UmUwa3wv_9ruff_wasm.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsdjJ41tfNHOz_6js_sys3MapECslT7UmUwa3wv_9ruff_wasm.exit.sink.split.i.i: ; preds = %bb.s
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.val1.i) #13, !noalias !84
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser9MapResultECslT7UmUwa3wv_9ruff_wasm.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser9MapResultECslT7UmUwa3wv_9ruff_wasm.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsdjJ41tfNHOz_6js_sys3MapECslT7UmUwa3wv_9ruff_wasm.exit.sink.split.i.i, %bb.s
  %.val2.i = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !range !6, !alias.scope !84, !noundef !4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.val3.i = load i32, ptr %i.ak, align 4, !alias.scope !84 ; 2 uses
  %i.al = icmp ne i32 %.val2.i, 0
  %i.am = icmp ugt i32 %.val3.i, 1027
  %or.cond.i6.i = select i1 %i.al, i1 %i.am, i1 false
  br i1 %or.cond.i6.i, label %bb.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerECslT7UmUwa3wv_9ruff_wasm.exit

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser9MapResultECslT7UmUwa3wv_9ruff_wasm.exit.i
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.val3.i) #13, !noalias !84
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.t, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser9MapResultECslT7UmUwa3wv_9ruff_wasm.exit.i, %bb.b
  %.sroa.10.2 = phi i32 [ %i.g, %bb.b ], [ %.sroa.10.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser9MapResultECslT7UmUwa3wv_9ruff_wasm.exit.i ], [ %.sroa.10.1, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.an = insertvalue { i32, i32 } { i32 1, i32 poison }, i32 %.sroa.10.2, 1
  br label %bb.r

bb.u:                                             ; preds = %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef align 8 dereferenceable(24) %i.c) #12
  resume { ptr, i32 } %lpad.thr_comm
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss3_1__NtB5_11LintOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECslT7UmUwa3wv_9ruff_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([2352 x i8]) align 8 captures(none) dereferenceable(2352) initializes((0, 12)) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %.sroa.02.i = alloca [200 x i8], align 8        ; 3 uses
  %.sroa.4951 = alloca [27 x i8], align 1         ; 4 uses
  %i.a = alloca [2352 x i8], align 8              ; 53 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1B_1__NtB2e_15LintOptionsWireNtB14_11Deserialize11deserialize9___VisitorECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull sret([2352 x i8]) align 8 captures(address) dereferenceable(2352) %i.a, i32 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @177, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @178, i64 noundef 51)
  %i.b = load i64, ptr %i.a, align 8, !range !7, !noundef !4
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i32, ptr %i.d, align 8, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.e, ptr %i.f, align 8
  store i64 2, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(448) %.sroa.68.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(448) %.sroa.7.0..sroa_idx, i64 448, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 664
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 680
  %.sroa.911.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.911.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.10.0..sroa_idx, i64 216, i1 false)
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 896
  %.sroa.1012.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1012.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx, i64 24, i1 false)
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 920
  %.sroa.1113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 920
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1113.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.0..sroa_idx, i64 24, i1 false)
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 944
  %.sroa.1214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 944
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1214.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.0..sroa_idx, i64 24, i1 false)
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 968
  %.sroa.1315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 968
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1315.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14.0..sroa_idx, i64 24, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 992
  %.sroa.1416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 992
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1416.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.0..sroa_idx, i64 24, i1 false)
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1016
  %.sroa.1517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1517.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.0..sroa_idx, i64 24, i1 false)
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1040
  %.sroa.1618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1618.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.17.0..sroa_idx, i64 24, i1 false)
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1064
  %.sroa.1719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1064
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1719.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.18.0..sroa_idx, i64 24, i1 false)
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %.sroa.1820.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1088
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1820.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.19.0..sroa_idx, i64 24, i1 false)
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1112
  %.sroa.1921.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1921.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.20.0..sroa_idx, i64 24, i1 false)
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1136
  %.sroa.2022.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2022.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21.0..sroa_idx, i64 24, i1 false)
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1160
  %.sroa.2123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2123.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.22.0..sroa_idx, i64 24, i1 false)
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1184
  %.sroa.2224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2224.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.23.0..sroa_idx, i64 24, i1 false)
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1208
  %.sroa.2325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2325.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.24.0..sroa_idx, i64 24, i1 false)
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1232
  %.sroa.2426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2426.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25.0..sroa_idx, i64 24, i1 false)
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1256
  %.sroa.2527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2527.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.26.0..sroa_idx, i64 24, i1 false)
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1280
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1304
  %.sroa.2628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.2628.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.28.0..sroa_idx, i64 104, i1 false)
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1408
  %.sroa.2729.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2729.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.29.0..sroa_idx, i64 24, i1 false)
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1432
  %.sroa.2830.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2830.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.30.0..sroa_idx, i64 24, i1 false)
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1456
  %.sroa.2931.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.2931.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.31.0..sroa_idx, i64 104, i1 false)
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1560
  %.sroa.3032.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3032.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.32.0..sroa_idx, i64 48, i1 false)
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1608
  %.sroa.3133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1584
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.3133.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.33.0..sroa_idx, i64 160, i1 false)
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1768
  %.sroa.3234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1744
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.3234.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.34.0..sroa_idx, i64 80, i1 false)
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1848
  %.sroa.3335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1824
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3335.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.35.0..sroa_idx, i64 48, i1 false)
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1896
  %.sroa.3436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.3436.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.36.0..sroa_idx, i64 104, i1 false)
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2000
  %.sroa.3537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.3537.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.37.0..sroa_idx, i64 96, i1 false)
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2096
  %.sroa.3638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3638.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.38.0..sroa_idx, i64 56, i1 false)
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2152
  %.sroa.3739.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3739.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.39.0..sroa_idx, i64 48, i1 false)
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2200
  %.sroa.5052.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5052.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.40.0..sroa_idx, i64 56, i1 false)
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2256
  %.sroa.3840.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3840.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.41.0..sroa_idx, i64 32, i1 false)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2288
  %.sroa.3941.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3941.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.42.0..sroa_idx, i64 32, i1 false)
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2320
  %.sroa.43.0.copyload = load i32, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2324
  %.sroa.4143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %.sroa.4143.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(6) %.sroa.44.0..sroa_idx, i64 6, i1 false)
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2330
  %.sroa.45.0.copyload = load i8, ptr %.sroa.45.0..sroa_idx, align 2
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2331
  %.sroa.46.0.copyload = load i8, ptr %.sroa.46.0..sroa_idx, align 1
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2332
  %.sroa.47.0.copyload = load i8, ptr %.sroa.47.0..sroa_idx, align 4
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2333
  %.sroa.48.0.copyload = load i8, ptr %.sroa.48.0..sroa_idx, align 1
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2334
  %.sroa.49.0.copyload = load i8, ptr %.sroa.49.0..sroa_idx, align 2
  %.sroa.50.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2335
  %.sroa.4446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %.sroa.4446.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.50.0..sroa_idx, i64 5, i1 false)
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2340
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2344
  %.sroa.55.0.copyload = load i8, ptr %.sroa.55.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4951)
  %.sroa.02.136..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.02.i, i64 136
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.02.136..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false)
  %.sroa.4951.2264..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4951, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4951.2264..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.27.0..sroa_idx, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.02.i, ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 136, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.02.i, i64 200, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.h = load <2 x i64>, ptr %.sroa.5.0..sroa_idx, align 8
  store <2 x i64> %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.79.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.i = load <2 x i64>, ptr %.sroa.8.0..sroa_idx, align 8
  store <2 x i64> %i.i, ptr %.sroa.79.0..sroa_idx, align 8
  %.sroa.4042.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2240
  store i32 %.sroa.43.0.copyload, ptr %.sroa.4042.0..sroa_idx, align 8
  %.sroa.4244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2250
  store i8 %.sroa.45.0.copyload, ptr %.sroa.4244.0..sroa_idx, align 2
  %.sroa.4345.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2251
  store i8 %.sroa.46.0.copyload, ptr %.sroa.4345.0..sroa_idx, align 1
  %.sroa.4547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2257
  %i.j = load <4 x i8>, ptr %.sroa.51.0..sroa_idx, align 4
  store <4 x i8> %i.j, ptr %.sroa.4547.0..sroa_idx, align 1
  %.sroa.4951.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %.sroa.4951.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(27) %.sroa.4951, i64 27, i1 false)
  %.sroa.5153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2344
  store i8 %.sroa.47.0.copyload, ptr %.sroa.5153.0..sroa_idx, align 8
  %.sroa.5254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2345
  store i8 %.sroa.48.0.copyload, ptr %.sroa.5254.0..sroa_idx, align 1
  %.sroa.5355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2346
  store i8 %.sroa.49.0.copyload, ptr %.sroa.5355.0..sroa_idx, align 2
  %.sroa.5456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2347
  store i8 %.sroa.55.0.copyload, ptr %.sroa.5456.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4951)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i32, i32 } @_RINvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss6_1__NtB5_17LintCommonOptionsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeINtNtNtCsjjJOMqlcxxG_5serde7private3ser17FlatMapSerializerNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2264) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 48 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.c = call { i32, i32 } @_RINvXs6_NtNtCsjjJOMqlcxxG_5serde7private3serINtB6_22FlatMapSerializeStructNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerENtNtCs6nZeqdiIoCH_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VeccEEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 19, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b) ; 2 uses
  %i.d = extractvalue { i32, i32 } %i.c, 0
  %i.e = trunc i32 %i.d to i1
  br i1 %i.e, label %bb.au, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.g = call { i32, i32 } @_RINvXs6_NtNtCsjjJOMqlcxxG_5serde7private3serINtB6_22FlatMapSerializeStructNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerENtNtCs6nZeqdiIoCH_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 18, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f) ; 2 uses
  %i.h = extractvalue { i32, i32 } %i.g, 0
  %i.i = trunc i32 %i.h to i1
  br i1 %i.i, label %bb.au, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.k = call { i32, i32 } @_RINvXs6_NtNtCsjjJOMqlcxxG_5serde7private3serINtB6_22FlatMapSerializeStructNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerENtNtCs6nZeqdiIoCH_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j) ; 2 uses
  %i.l = extractvalue { i32, i32 } %i.k, 0
  %i.m = trunc i32 %i.l to i1
  br i1 %i.m, label %bb.au, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.o = call { i32, i32 } @_RINvXs6_NtNtCsjjJOMqlcxxG_5serde7private3serINtB6_22FlatMapSerializeStructNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerENtNtCs6nZeqdiIoCH_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n) ; 2 uses
  %i.p = extractvalue { i32, i32 } %i.o, 0
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %bb.au, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.s = call { i32, i32 } @_RINvXs6_NtNtCsjjJOMqlcxxG_5serde7private3serINtB6_22FlatMapSerializeStructNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerENtNtCs6nZeqdiIoCH_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 14, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r) ; 2 uses
  %i.t = extractvalue { i32, i32 } %i.s, 0
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %bb.au, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.w = call { i32, i32 } @_RINvXs6_NtNtCsjjJOMqlcxxG_5serde7private3serINtB6_22FlatMapSerializeStructNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerENtNtCs6nZeqdiIoCH_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 16, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v) ; 2 uses
  %i.x = extractvalue { i32, i32 } %i.w, 0
  %i.y = trunc i32 %i.x to i1
  br i1 %i.y, label %bb.au, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.aa = call { i32, i32 } @_RINvXs6_NtNtCsjjJOMqlcxxG_5serde7private3serINtB6_22FlatMapSerializeStructNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerENtNtCs6nZeqdiIoCH_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB3T_6string6StringEEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z) ; 2 uses
  %i.ab = extractvalue { i32, i32 } %i.aa, 0
  %i.ac = trunc i32 %i.ab to i1
  br i1 %i.ac, label %bb.au, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.ae = call { i32, i32 } @_RINvXs6_NtNtCsjjJOMqlcxxG_5serde7private3serINtB6_22FlatMapSerializeStructNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerENtNtCs6nZeqdiIoCH_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad) ; 2 uses
  %i.af = extractvalue { i32, i32 } %i.ae, 0
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %bb.au, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.ai = call { i32, i32 } @_RINvXs6_NtNtCsjjJOMqlcxxG_5serde7private3serINtB6_22FlatMapSerializeStructNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerENtNtCs6nZeqdiIoCH_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah) ; 2 uses
  %i.aj = extractvalue { i32, i32 } %i.ai, 0
  %i.ak = trunc i32 %i.aj to i1
  br i1 %i.ak, label %bb.au, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.am = call { i32, i32 } @_RINvXs6_NtNtCsjjJOMqlcxxG_5serde7private3serINtB6_22FlatMapSerializeStructNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerENtNtCs6nZeqdiIoCH_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 17, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al) ; 2 uses
  %i.an = extractvalue { i32, i32 } %i.am, 0
  %i.ao = trunc i32 %i.an to i1
  br i1 %i.ao, label %bb.au, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.aq = call { i32, i32 } @_RINvXs6_NtNtCsjjJOMqlcxxG_5serde7private3serINtB6_22FlatMapSerializeStructNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerENtNtCs6nZeqdiIoCH_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 19, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap) ; 2 uses
  %i.ar = extractvalue { i32, i32 } %i.aq, 0
  %i.as = trunc i32 %i.ar to i1
  br i1 %i.as, label %bb.au, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2250
  %i.au = call { i32, i32 } @_RINvXs6_NtNtCsjjJOMqlcxxG_5serde7private3serINtB6_22FlatMapSerializeStructNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerENtNtCs6nZeqdiIoCH_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionbEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 26, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.at) ; 2 uses
  %i.av = extractvalue { i32, i32 } %i.au, 0
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %bb.au, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.ay = call { i32, i32 } @_RINvXs6_NtNtCsjjJOMqlcxxG_5serde7private3serINtB6_22FlatMapSerializeStructNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerENtNtCs6nZeqdiIoCH_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB3T_6string6StringEEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 14, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax) ; 2 uses
  %i.az = extractvalue { i32, i32 } %i.ay, 0
  %i.ba = trunc i32 %i.az to i1
  br i1 %i.ba, label %bb.au, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.bc = call { i32, i32 } @_RINvXs6_NtNtCsjjJOMqlcxxG_5serde7private3serINtB6_22FlatMapSerializeStructNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerENtNtCs6nZeqdiIoCH_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bb) ; 2 uses
  %i.bd = extractvalue { i32, i32 } %i.bc, 0
  %i.be = trunc i32 %i.bd to i1
  br i1 %i.be, label %bb.au, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 2251
  %i.bg = call { i32, i32 } @_RINvXs6_NtNtCsjjJOMqlcxxG_5serde7private3serINtB6_22FlatMapSerializeStructNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerENtNtCs6nZeqdiIoCH_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionbEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 22, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.bf) ; 2 uses
  %i.bh = extractvalue { i32, i32 } %i.bg, 0
  %i.bi = trunc i32 %i.bh to i1
  br i1 %i.bi, label %bb.au, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.bk = call { i32, i32 } @_RINvXs6_NtNtCsjjJOMqlcxxG_5serde7private3serINtB6_22FlatMapSerializeStructNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerENtNtCs6nZeqdiIoCH_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB3T_6string6StringEEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bj) ; 2 uses
  %i.bl = extractvalue { i32, i32 } %i.bk, 0
  %i.bm = trunc i32 %i.bl to i1
  br i1 %i.bm, label %bb.au, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.bo = call { i32, i32 } @_RINvXs6_NtNtCsjjJOMqlcxxG_5serde7private3serINtB6_22FlatMapSerializeStructNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerENtNtCs6nZeqdiIoCH_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB3T_6string6StringEEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 14, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn) ; 2 uses
  %i.bp = extractvalue { i32, i32 } %i.bo, 0
  %i.bq = trunc i32 %i.bp to i1
  br i1 %i.bq, label %bb.au, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.bs = call { i32, i32 } @_RINvXs6_NtNtCsjjJOMqlcxxG_5serde7private3serINtB6_22FlatMapSerializeStructNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerENtNtCs6nZeqdiIoCH_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.br) ; 2 uses
  %i.bt = extractvalue { i32, i32 } %i.bs, 0
  %i.bu = trunc i32 %i.bt to i1
  br i1 %i.bu, label %bb.au, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 2252
  %i.bw = call { i32, i32 } @_RINvXs6_NtNtCsjjJOMqlcxxG_5serde7private3serINtB6_22FlatMapSerializeStructNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerENtNtCs6nZeqdiIoCH_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs3ZkgueCtkyH_14ruff_workspace7options24Flake8AnnotationsOptionsEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 18, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(5) %i.bv) ; 2 uses
  %i.bx = extractvalue { i32, i32 } %i.bw, 0
  %i.by = trunc i32 %i.bx to i1
  br i1 %i.by, label %bb.au, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.ca = call { i32, i32 } @_RINvXs6_NtNtCsjjJOMqlcxxG_5serde7private3serINtB6_22FlatMapSerializeStructNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerENtNtCs6nZeqdiIoCH_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs3ZkgueCtkyH_14ruff_workspace7options19Flake8BanditOptionsEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.bz) ; 2 uses
  %i.cb = extractvalue { i32, i32 } %i.ca, 0
  %i.cc = trunc i32 %i.cb to i1
  br i1 %i.cc, label %bb.au, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.ce = call { i32, i32 } @_RINvXs6_NtNtCsjjJOMqlcxxG_5serde7private3serINtB6_22FlatMapSerializeStructNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerENtNtCs6nZeqdiIoCH_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs3ZkgueCtkyH_14ruff_workspace7options24Flake8BooleanTrapOptionsEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 19, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cd) ; 2 uses
  %i.cf = extractvalue { i32, i32 } %i.ce, 0
  %i.cg = trunc i32 %i.cf to i1
  br i1 %i.cg, label %bb.au, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.ci = call { i32, i32 } @_RINvXs6_NtNtCsjjJOMqlcxxG_5serde7private3serINtB6_22FlatMapSerializeStructNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerENtNtCs6nZeqdiIoCH_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs3ZkgueCtkyH_14ruff_workspace7options20Flake8BugbearOptionsEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 14, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ch) ; 2 uses
  %i.cj = extractvalue { i32, i32 } %i.ci, 0
  %i.ck = trunc i32 %i.cj to i1
  br i1 %i.ck, label %bb.au, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.cm = call { i32, i32 } @_RINvXs6_NtNtCsjjJOMqlcxxG_5serde7private3serINtB6_22FlatMapSerializeStructNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerENtNtCs6nZeqdiIoCH_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs3ZkgueCtkyH_14ruff_workspace7options21Flake8BuiltinsOptionsEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.cl) ; 2 uses
  %i.cn = extractvalue { i32, i32 } %i.cm, 0
  %i.co = trunc i32 %i.cn to i1
  br i1 %i.co, label %bb.au, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 2257
  %i.cq = call { i32, i32 } @_RINvXs6_NtNtCsjjJOMqlcxxG_5serde7private3serINtB6_22FlatMapSerializeStructNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerENtNtCs6nZeqdiIoCH_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs3ZkgueCtkyH_14ruff_workspace7options27Flake8ComprehensionsOptionsEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 21, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.cp) ; 2 uses
  %i.cr = extractvalue { i32, i32 } %i.cq, 0
  %i.cs = trunc i32 %i.cr to i1
  br i1 %i.cs, label %bb.au, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cu = call { i32, i32 } @_RINvXs6_NtNtCsjjJOMqlcxxG_5serde7private3serINtB6_22FlatMapSerializeStructNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerENtNtCs6nZeqdiIoCH_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs3ZkgueCtkyH_14ruff_workspace7options22Flake8CopyrightOptionsEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 16, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ct) ; 2 uses
  %i.cv = extractvalue { i32, i32 } %i.cu, 0
  %i.cw = trunc i32 %i.cv to i1
  br i1 %i.cw, label %bb.au, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cy = call { i32, i32 } @_RINvXs6_NtNtCsjjJOMqlcxxG_5serde7private3serINtB6_22FlatMapSerializeStructNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerENtNtCs6nZeqdiIoCH_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs3ZkgueCtkyH_14ruff_workspace7options19Flake8ErrMsgOptionsEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cx) ; 2 uses
  %i.cz = extractvalue { i32, i32 } %i.cy, 0
  %i.da = trunc i32 %i.cz to i1
  br i1 %i.da, label %bb.au, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 2240
  %i.dc = call { i32, i32 } @_RINvXs6_NtNtCsjjJOMqlcxxG_5serde7private3serINtB6_22FlatMapSerializeStructNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerENtNtCs6nZeqdiIoCH_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs3ZkgueCtkyH_14ruff_workspace7options19Flake8QuotesOptionsEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 13, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.db) ; 2 uses
  %i.dd = extractvalue { i32, i32 } %i.dc, 0
  %i.de = trunc i32 %i.dd to i1
  br i1 %i.de, label %bb.au, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %i.dg = call { i32, i32 } @_RINvXs6_NtNtCsjjJOMqlcxxG_5serde7private3serINtB6_22FlatMapSerializeStructNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser13MapSerializerENtNtCs6nZeqdiIoCH_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs3ZkgueCtkyH_14ruff_workspace7options17Flake8SelfOptionsEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.df) ; 2 uses
end_hunk_0
