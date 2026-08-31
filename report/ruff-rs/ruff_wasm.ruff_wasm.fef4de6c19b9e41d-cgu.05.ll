Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_wasm.ruff_wasm.fef4de6c19b9e41d-cgu.05?download=true
inline.NumInlined: 840
inline.NumDeleted: 379
begin_hunk_0_@_RNvMs1a_CslT7UmUwa3wv_9ruff_wasmNtB6_9Workspace3new:bb.a
          to label %bb.j unwind label %bb.c

bb.j:                                             ; preds = %bb.i
  %i.r = load i64, ptr %i.a, align 8, !range !95, !noundef !13 ; 2 uses
  %i.s = icmp eq i64 %i.r, -1
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.s, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !13, !noundef !13
  %i.v = invoke fastcc noundef i32 @_RINvCslT7UmUwa3wv_9ruff_wasm10into_errorNtCsiXichZnxgbf_6anyhow5ErrorEB2_(ptr noundef nonnull %i.u)
          to label %bb.s unwind label %bb.c

bb.l:                                             ; preds = %bb.j
  %.sroa.456.0.copyload = load i32, ptr %i.t, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.041.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3020) %.sroa.041.sroa.5.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(3020) %.sroa.557.0..sroa_idx, i64 3020, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.r, ptr %0, align 8
  %.sroa.041.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.456.0.copyload, ptr %.sroa.041.sroa.4.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3032
  store i8 %2, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_RNvXs0_Cs2Qp84xiUxLo_17ruff_ranged_valueNtB5_16ValueSourceGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs2Qp84xiUxLo_17ruff_ranged_value11ValueSourcebEEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #20
          to label %.thread unwind label %bb.q

bb.n:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  %i.x = load i64, ptr %i.f, align 8, !range !345, !alias.scope !1073, !noundef !13 ; 2 uses
  %i.y = icmp eq i64 %i.x, -1
  br i1 %i.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs2Qp84xiUxLo_17ruff_ranged_value16ValueSourceGuardECslT7UmUwa3wv_9ruff_wasm.exit70, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %bb.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs2Qp84xiUxLo_17ruff_ranged_value16ValueSourceGuardECslT7UmUwa3wv_9ruff_wasm.exit70

bb.p:                                             ; preds = %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !1088, !nonnull !13, !noundef !13
  %i.ac = atomicrmw sub ptr %i.ab, i64 1 release, align 8, !noalias !1089
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs2Qp84xiUxLo_17ruff_ranged_value16ValueSourceGuardECslT7UmUwa3wv_9ruff_wasm.exit70.sink.split, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs2Qp84xiUxLo_17ruff_ranged_value16ValueSourceGuardECslT7UmUwa3wv_9ruff_wasm.exit70

bb.q:                                             ; preds = %bb.m
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs2Qp84xiUxLo_17ruff_ranged_value16ValueSourceGuardECslT7UmUwa3wv_9ruff_wasm.exit70.sink.split: ; preds = %bb.p, %bb.y
  %.sink = phi ptr [ %i.al, %bb.y ], [ %i.aa, %bb.p ]
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufE9drop_slowCs2Qp84xiUxLo_17ruff_ranged_value(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sink)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs2Qp84xiUxLo_17ruff_ranged_value16ValueSourceGuardECslT7UmUwa3wv_9ruff_wasm.exit70

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs2Qp84xiUxLo_17ruff_ranged_value16ValueSourceGuardECslT7UmUwa3wv_9ruff_wasm.exit70: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs2Qp84xiUxLo_17ruff_ranged_value16ValueSourceGuardECslT7UmUwa3wv_9ruff_wasm.exit70.sink.split, %bb.n, %bb.o, %bb.p, %bb.w, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.r:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.s:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.u

bb.t:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.aa
  %.sink89 = phi i32 [ %i.v, %bb.s ], [ %i.q, %bb.t ], [ %i.l, %bb.aa ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink89, ptr %i.ag, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXs0_Cs2Qp84xiUxLo_17ruff_ranged_valueNtB5_16ValueSourceGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs2Qp84xiUxLo_17ruff_ranged_value11ValueSourcebEEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #20
          to label %.thread unwind label %bb.z

bb.w:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  %i.ai = load i64, ptr %i.f, align 8, !range !345, !alias.scope !1093, !noundef !13 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, -1
  br i1 %i.aj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs2Qp84xiUxLo_17ruff_ranged_value16ValueSourceGuardECslT7UmUwa3wv_9ruff_wasm.exit70, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !1096)
  call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  %i.ak = icmp eq i64 %i.ai, 0
  br i1 %i.ak, label %bb.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs2Qp84xiUxLo_17ruff_ranged_value16ValueSourceGuardECslT7UmUwa3wv_9ruff_wasm.exit70

bb.y:                                             ; preds = %bb.x
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  call void @llvm.experimental.noalias.scope.decl(metadata !1105)
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !1108, !nonnull !13, !noundef !13
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !1109
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs2Qp84xiUxLo_17ruff_ranged_value16ValueSourceGuardECslT7UmUwa3wv_9ruff_wasm.exit70.sink.split, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs2Qp84xiUxLo_17ruff_ranged_value16ValueSourceGuardECslT7UmUwa3wv_9ruff_wasm.exit70

bb.z:                                             ; preds = %bb.v
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.aa:                                            ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.u

.thread:                                          ; preds = %bb.ac, %bb.ab, %bb.v, %bb.m, %bb.c
  %.pn6474 = phi { ptr, i32 } [ %i.w, %bb.m ], [ %i.ah, %bb.v ], [ %lpad.thr_comm.split-lp, %bb.ac ], [ %i.g, %bb.c ], [ %lpad.thr_comm.split-lp, %bb.ab ]
  resume { ptr, i32 } %.pn6474

bb.ab:                                            ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = icmp ugt i32 %1, 1027
  br i1 %i.aq, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  tail call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #23
  br label %.thread
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvMs1a_CslT7UmUwa3wv_9ruff_wasmNtB6_9Workspace5check(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(3040) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [80 x i8], align 8                ; 6 uses
  %i.i = alloca [80 x i8], align 8                ; 10 uses
  %i.j = alloca [96 x i8], align 8                ; 8 uses
  %i.k = alloca [56 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %i.m = alloca [104 x i8], align 8               ; 4 uses
  %i.n = alloca [96 x i8], align 8                ; 5 uses
  %i.o = alloca [96 x i8], align 8                ; 10 uses
  %i.p = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.q = load i64, ptr %i.a, align 8, !range !61, !noundef !13
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !1026, !noundef !13 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.r, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.v = load i64, ptr %i.u, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.u, align 8, !nonnull !13, !noundef !13 ; 3 uses
  %i.x = icmp ule i64 %2, %i.t
  tail call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i64 %i.t, ptr %i.p, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.w, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %2, ptr %.sroa.524.0..sroa_idx, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i8 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2718
  %.sroa.028.0.copyload = load i16, ptr %i.aa, align 2 ; 2 uses
  %i.ab = zext i16 %.sroa.028.0.copyload to i24
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2719
  %.sroa.530.0.copyload = load i16, ptr %.sroa.530.0..sroa_idx, align 1 ; 2 uses
  %3 = zext i16 %.sroa.530.0.copyload to i48
  %4 = lshr i16 %.sroa.530.0.copyload, 8
  %i.ac = trunc i16 %.sroa.028.0.copyload to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ad = or disjoint i48 %3, 13238272
  %.sroa.038.2.insert.insert = select i1 %i.ac, i48 %i.ad, i48 13241859
  invoke void @_RNvCsb6FLkjZuKG_18ruff_python_parser15parse_unchecked(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %2, i48 %.sroa.038.2.insert.insert)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter7locator7LocatorECslT7UmUwa3wv_9ruff_wasm.exit, %bb.g
  %.pn55 = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %.pn53, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter7locator7LocatorECslT7UmUwa3wv_9ruff_wasm.exit ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter11source_kind10SourceKindECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef align 8 dereferenceable(32) %i.p) #20
          to label %bb.ay unwind label %bb.aw

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter7locator7LocatorECslT7UmUwa3wv_9ruff_wasm.exit62, %bb.k, %bb.h, %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  invoke void @_RNvMs_Csb6FLkjZuKG_18ruff_python_parserINtB4_6ParsedNtNtCskLngH8kgpZI_15ruff_python_ast9generated3ModE15try_into_module(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.m)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.af = load i64, ptr %i.n, align 8, !range !95, !noundef !13
  %.not42 = icmp eq i64 %i.af, -1
  br i1 %.not42, label %bb.k, label %bb.j, !prof !11

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.o, ptr noundef nonnull align 8 dereferenceable(96) %i.n, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %1, ptr %i.l, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  store i64 %2, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 5 uses
  store ptr null, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMNtCsjSXNr8pNfhj_19ruff_python_codegen7stylistNtB2_7Stylist11from_tokens(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.q unwind label %bb.p

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 46, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #21
          to label %bb.l unwind label %bb.g

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.r, %bb.p
  %.pn51 = phi { ptr, i32 } [ %i.am, %bb.p ], [ %.pn49, %bb.r ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1110)
  call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  call void @llvm.experimental.noalias.scope.decl(metadata !1116)
  call void @llvm.experimental.noalias.scope.decl(metadata !1119)
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !1122, !noundef !13 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter7locator7LocatorECslT7UmUwa3wv_9ruff_wasm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !1123
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter7locator7LocatorECslT7UmUwa3wv_9ruff_wasm.exit

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs9BeaGo73rC4_16ruff_source_file10line_index14LineIndexInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter7locator7LocatorECslT7UmUwa3wv_9ruff_wasm.exit unwind label %bb.aw

bb.p:                                             ; preds = %bb.aq, %bb.j
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.q:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.an = load ptr, ptr %i.l, align 8, !nonnull !13, !noundef !13
  %i.ao = load i64, ptr %i.ag, align 8, !noundef !13
  invoke void @_RNvMNtCsf5BUmUrrPiN_17ruff_python_index7indexerNtB2_7Indexer11from_tokens(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.an, i64 noundef %i.ao)
          to label %bb.t unwind label %bb.s

bb.r:                                             ; preds = %.body59, %bb.s
  %.pn49 = phi { ptr, i32 } [ %i.ap, %bb.s ], [ %.pn47, %.body59 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjSXNr8pNfhj_19ruff_python_codegen7stylist7StylistECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef align 8 dereferenceable(56) %i.k) #20
          to label %bb.m unwind label %bb.aw

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter10directives10DirectivesECslT7UmUwa3wv_9ruff_wasm.exit, %bb.q
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.aq = invoke noundef i8 @_RNvMNtCsEhZmuQNqkz_11ruff_linter10directivesNtB2_5Flags13from_settings(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2432) %i.z)
          to label %bb.v unwind label %bb.u

.body59:                                          ; preds = %.body.i, %bb.u, %bb.x
  %.pn47 = phi { ptr, i32 } [ %.pn45, %bb.x ], [ %i.ar, %bb.u ], [ %eh.lpad-body.i, %.body.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsf5BUmUrrPiN_17ruff_python_index7indexer7IndexerECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef align 8 dereferenceable(96) %i.j) #20
          to label %bb.r unwind label %bb.aw

bb.u:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter4noqa11NoqaMappingECslT7UmUwa3wv_9ruff_wasm.exit.i, %bb.v, %bb.t
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body59

bb.v:                                             ; preds = %bb.t
  invoke void @_RNvNtCsEhZmuQNqkz_11ruff_linter10directives18extract_directives(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o, i8 noundef %i.aq, ptr noundef nonnull align 8 %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.j)
          to label %bb.w unwind label %bb.u

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.as = load ptr, ptr %i.l, align 8, !nonnull !13, !noundef !13
  %i.at = load i64, ptr %i.ag, align 8, !noundef !13
  invoke void @_RNvMs4_NtCsEhZmuQNqkz_11ruff_linter11suppressionNtB5_12Suppressions11from_tokens(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.as, i64 noundef %i.at, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2432) %i.z)
          to label %bb.z unwind label %bb.y

bb.x:                                             ; preds = %.thread, %bb.y
  %.pn45 = phi { ptr, i32 } [ %i.au, %bb.y ], [ %.pn.pn, %.thread ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter10directives10DirectivesECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef align 8 dereferenceable(80) %i.i) #20
          to label %.body59 unwind label %bb.aw

bb.y:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCslT7UmUwa3wv_9ruff_wasm15ExpandedMessageEEB19_.exit, %bb.w
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 2, ptr %i.f, align 8
  %.sroa.040.2.insert.ext = zext nneg i16 %4 to i24
  %.sroa.040.2.insert.shift = shl nuw i24 %.sroa.040.2.insert.ext, 16
  %.sroa.040.2.insert.insert = or disjoint i24 %.sroa.040.2.insert.shift, %i.ab
  invoke void @_RNvNtCsEhZmuQNqkz_11ruff_linter6linter10check_path(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 10, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %i.l, ptr noundef nonnull align 8 %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2432) %i.z, i1 noundef zeroext false, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p, i8 noundef 0, ptr noundef nonnull align 8 %i.o, i24 %.sroa.040.2.insert.insert, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.h)
          to label %bb.ab unwind label %bb.aa

.thread:                                          ; preds = %bb.ai, %bb.ae, %.thread68, %bb.ax, %bb.aa
  %.pn.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.ax ], [ %lpad.thr_comm, %.thread68 ], [ %i.av, %bb.aa ], [ %i.bg, %bb.ae ], [ %i.bl, %bb.ai ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter11suppression12SuppressionsECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef align 8 dereferenceable(80) %i.h) #20
          to label %bb.x unwind label %bb.aw

bb.aa:                                            ; preds = %bb.z
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB2_7Locator14to_source_code(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull align 8 %i.l)
          to label %bb.ac unwind label %bb.ax

.thread68:                                        ; preds = %bb.aj, %bb.ac
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !13, !noundef !13 ; 3 uses
  %i.ay = load i64, ptr %i.g, align 8, !range !406, !noundef !13
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !noundef !13 ; 2 uses
  %i.bb = icmp ult i64 %i.ba, 1152921504606846976
  call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.ba
  store ptr %i.ax, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ax, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.ay, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.bc, ptr %.sroa.69.0..sroa_idx, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %0, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.e, ptr %i.be, align 8
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtCslT7UmUwa3wv_9ruff_wasm15ExpandedMessageEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvMs1a_B14_NtB14_9Workspace5check0EE9from_iterB14_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.c)
          to label %bb.ad unwind label %.thread68

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.b, align 4
  %i.bf = invoke { i32, i32 } @_RINvYRNtNtCsioq3h7D9pfI_18serde_wasm_bindgen3ser10SerializerNtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer11collect_seqRINtNtCscdodAO9FK5_5alloc3vec3VecNtCslT7UmUwa3wv_9ruff_wasm15ExpandedMessageEEB2s_(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.af unwind label %bb.ae     ; 2 uses

bb.ae:                                            ; preds = %bb.ag, %bb.ad
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCslT7UmUwa3wv_9ruff_wasm15ExpandedMessageEEB19_(ptr noalias noundef align 8 dereferenceable(24) %i.d) #20
          to label %.thread unwind label %bb.aw

bb.af:                                            ; preds = %bb.ad
  %i.bh = extractvalue { i32, i32 } %i.bf, 0
  %i.bi = extractvalue { i32, i32 } %i.bf, 1      ; 2 uses
  %i.bj = trunc i32 %i.bh to i1
  br i1 %i.bj, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.bk = invoke fastcc noundef i32 @_RINvCslT7UmUwa3wv_9ruff_wasm10into_errorNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorEB2_(i32 noundef %i.bi)
          to label %bb.ah unwind label %bb.ae

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sroa.3.0 = phi i32 [ %i.bi, %bb.af ], [ %i.bk, %bb.ag ]
  %.sroa.0.0 = phi i32 [ 0, %bb.af ], [ 1, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCslT7UmUwa3wv_9ruff_wasm15ExpandedMessageENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBG_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCslT7UmUwa3wv_9ruff_wasm15ExpandedMessageENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.thread unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCslT7UmUwa3wv_9ruff_wasm15ExpandedMessageENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCslT7UmUwa3wv_9ruff_wasm15ExpandedMessageEEB19_.exit unwind label %.thread68

bb.ak:                                            ; preds = %bb.ai
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCslT7UmUwa3wv_9ruff_wasm15ExpandedMessageEEB19_.exit: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter11suppression12SuppressionsECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef align 8 dereferenceable(80) %i.h)
          to label %bb.al unwind label %bb.y

bb.al:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCslT7UmUwa3wv_9ruff_wasm15ExpandedMessageEEB19_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECslT7UmUwa3wv_9ruff_wasm.exit.i.i unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.i)
          to label %.body.i unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECslT7UmUwa3wv_9ruff_wasm.exit.i.i: ; preds = %bb.al
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter4noqa11NoqaMappingECslT7UmUwa3wv_9ruff_wasm.exit.i unwind label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECslT7UmUwa3wv_9ruff_wasm.exit.i.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ao, %bb.am
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bp, %bb.ao ], [ %i.bn, %bb.am ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter10directives15IsortDirectivesECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef align 8 dereferenceable(56) %i.bq) #20
          to label %.body59 unwind label %bb.ap

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter4noqa11NoqaMappingECslT7UmUwa3wv_9ruff_wasm.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECslT7UmUwa3wv_9ruff_wasm.exit.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter10directives15IsortDirectivesECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef align 8 dereferenceable(56) %i.br)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter10directives10DirectivesECslT7UmUwa3wv_9ruff_wasm.exit unwind label %bb.u

bb.ap:                                            ; preds = %.body.i
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter10directives10DirectivesECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter4noqa11NoqaMappingECslT7UmUwa3wv_9ruff_wasm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsf5BUmUrrPiN_17ruff_python_index7indexer7IndexerECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef align 8 dereferenceable(96) %i.j)
          to label %bb.aq unwind label %bb.s

bb.aq:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter10directives10DirectivesECslT7UmUwa3wv_9ruff_wasm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjSXNr8pNfhj_19ruff_python_codegen7stylist7StylistECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef align 8 dereferenceable(56) %i.k)
          to label %bb.ar unwind label %bb.p

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  call void @llvm.experimental.noalias.scope.decl(metadata !1133)
  call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  %i.bt = load ptr, ptr %i.ah, align 8, !alias.scope !1142, !noundef !13 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter7locator7LocatorECslT7UmUwa3wv_9ruff_wasm.exit62, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bv = atomicrmw sub ptr %i.bt, i64 1 release, align 8, !noalias !1143
  %i.bw = icmp eq i64 %i.bv, 1
  br i1 %i.bw, label %bb.at, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter7locator7LocatorECslT7UmUwa3wv_9ruff_wasm.exit62

bb.at:                                            ; preds = %bb.as
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs9BeaGo73rC4_16ruff_source_file10line_index14LineIndexInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter7locator7LocatorECslT7UmUwa3wv_9ruff_wasm.exit62 unwind label %bb.au

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter7locator7LocatorECslT7UmUwa3wv_9ruff_wasm.exit: ; preds = %bb.n, %bb.m, %bb.o, %bb.au
  %.pn53 = phi { ptr, i32 } [ %i.bx, %bb.au ], [ %.pn51, %bb.o ], [ %.pn51, %bb.m ], [ %.pn51, %bb.n ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsb6FLkjZuKG_18ruff_python_parser6ParsedNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ModModuleEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef align 8 dereferenceable(96) %i.o) #20
          to label %bb.f unwind label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter7locator7LocatorECslT7UmUwa3wv_9ruff_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter7locator7LocatorECslT7UmUwa3wv_9ruff_wasm.exit62: ; preds = %bb.as, %bb.ar, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsb6FLkjZuKG_18ruff_python_parser6ParsedNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ModModuleEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef align 8 dereferenceable(96) %i.o)
          to label %bb.av unwind label %bb.g

bb.av:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter7locator7LocatorECslT7UmUwa3wv_9ruff_wasm.exit62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter11source_kind10SourceKindECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef align 8 dereferenceable(32) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.by = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.bz = insertvalue { i32, i32 } %i.by, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.bz

end_hunk_0
