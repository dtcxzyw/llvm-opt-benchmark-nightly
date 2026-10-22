Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi_c_api-15f02cf232a6f4a0.wasmi_c_api.bb97e6f20a774834-cgu.07?download=true
inline.NumInlined: 189
inline.NumDeleted: 100
begin_hunk_0_@_RINvMs0_NtNtCsefoF4u9kbII_5wasmi4func2tyNtB6_8FuncType12match_paramsNtNtBa_5value3ValECsg6ypMx2A1Am_11wasmi_c_api:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %2
  %i.h = tail call noundef zeroext i1 @_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEENtNtNtBa_6traits8iterator8Iterator5eq_byINtNtB8_3map3MapIBY_NtNtCsefoF4u9kbII_5wasmi5value3ValENvYB35_NtNtNtB39_4func2ty16DynamicallyTyped2tyENCINvYB3_B27_2eqB2L_E0ECsg6ypMx2A1Am_11wasmi_c_api(ptr noundef nonnull %i.d, ptr noundef nonnull %i.f, ptr noundef nonnull %1, ptr noundef nonnull %i.g)
  %. = select i1 %i.h, i8 -1, i8 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i8 [ %., %bb.b ], [ 2, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCsefoF4u9kbII_5wasmi4func2tyNtB6_8FuncType3newINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtB13_6option6OptionINtNtB1P_5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEENCNvNtB3g_4func17wasm_functype_new0EIBV_B1I_NCB4e_s_0EEB3i_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvMs2_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB6_8FuncType3newINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtB19_6option6OptionINtNtB1V_5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEENCNvNtB3m_4func17wasm_functype_new0EIB11_B1O_NCB4k_s_0EEB3o_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2)
  %i.d = load i8, ptr %i.c, align 8, !range !6, !noundef !5
  %i.e = icmp eq i8 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.g = load i8, ptr %i.f, align 1, !range !8, !noundef !5
  store i8 %i.g, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB4_13FuncTypeErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs7_NtCsefoF4u9kbII_5wasmi4funcINtB6_16TrampolineEntityNtNtCsg6ypMx2A1Am_11wasmi_c_api5store14WasmiStoreDataE4callQINtNtB8_5store5StoreBV_EEBZ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(1688) %1, i64 noundef range(i64 0, 2) %2, double %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !10, !invariant.load !5
  %i.g = add nsw i64 %i.f, -1
  %i.h = and i64 %i.g, -16
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %2, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !5, !nonnull !5
  %i.n = call noundef align 8 ptr %i.m(ptr noundef nonnull %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs7_NtCsefoF4u9kbII_5wasmi4funcINtB6_16TrampolineEntityuE4callQINtNtB8_5store5StoreuEECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(1688) %1, i64 noundef range(i64 0, 2) %2, double %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !10, !invariant.load !5
  %i.g = add nsw i64 %i.f, -1
  %i.h = and i64 %i.g, -16
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %2, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !5, !nonnull !5
  %i.n = call noundef align 8 ptr %i.m(ptr noundef nonnull %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs9_NtCsefoF4u9kbII_5wasmi4funcNtB6_4Func2tyINtNtNtB8_5store7context12StoreContextuEECsg6ypMx2A1Am_11wasmi_c_api(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1688) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner12resolve_func(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1584) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %1) ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !11, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  %.sroa.0.0.v.i = select i1 %i.c, i64 24, i64 8
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.0.v.i
  tail call void @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner17resolve_func_type(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1584) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs9_NtCsefoF4u9kbII_5wasmi4funcNtB6_4Func2tyRRQINtNtB8_5store5StoreuEECsg6ypMx2A1Am_11wasmi_c_api(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %2, align 8, !nonnull !5, !align !9, !noundef !5
  %.val.i.i = load ptr, ptr %.val.i, align 8, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner12resolve_func(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1584) %.val.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %1) ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !11, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  %.sroa.0.0.v.i = select i1 %i.c, i64 24, i64 8
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.0.v.i
  tail call void @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner17resolve_func_type(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1584) %.val.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RINvMs9_NtCsefoF4u9kbII_5wasmi4funcNtB6_4Func3newuINtNtNtB8_5store7context15StoreContextMutuENCINvNtCsg6ypMx2A1Am_11wasmi_c_api4func15create_functionNCNvB1y_13wasm_func_new0E0EB1A_(ptr noalias nofree noundef align 8 dereferenceable(1688) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 13 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = load i8, ptr %1, align 8, !range !8, !noundef !5
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.i = load i16, ptr %i.h, align 2, !noundef !5 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %i.l = atomicrmw add ptr %i.k, i64 1 monotonic, align 8
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.q, label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.o = load i8, ptr %i.n, align 1, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.q = load i8, ptr %i.p, align 2, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 3
  %.sroa.06.0.copyload = load i8, ptr %i.r, align 1
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.47.0.copyload = load i32, ptr %.sroa.47.0..sroa_idx, align 4
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = zext i8 %.sroa.06.0.copyload to i16
  br label %bb.d

bb.d:                                             ; preds = %bb.p, %bb.c
  %.sroa.6.sroa.5.0 = phi i16 [ %.sroa.6.sroa.5.0.extract.shift, %bb.p ], [ %i.s, %bb.c ]
  %.sroa.6.sroa.0.0 = phi i8 [ %.sroa.6.sroa.0.0.extract.trunc, %bb.p ], [ %i.q, %bb.c ]
  %.sroa.92.0.in = phi ptr [ %i.j, %bb.p ], [ %.sroa.58.0..sroa_idx, %bb.c ]
  %.sroa.9.0 = phi i32 [ undef, %bb.p ], [ %.sroa.47.0.copyload, %bb.c ]
  %.sroa.5.0 = phi i8 [ undef, %bb.p ], [ %i.o, %bb.c ]
  %.sroa.01.0 = phi i8 [ 1, %bb.p ], [ 0, %bb.c ]
  %.sroa.92.0 = load ptr, ptr %.sroa.92.0.in, align 1
  %.sroa.10.0.in = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.10.0 = load i64, ptr %.sroa.10.0.in, align 8
  %.sroa.6.sroa.5.0.insert.shift = shl nuw i16 %.sroa.6.sroa.5.0, 8
  %.sroa.6.sroa.0.0.insert.ext = zext i8 %.sroa.6.sroa.0.0 to i16
  %.sroa.6.sroa.0.0.insert.insert = or disjoint i16 %.sroa.6.sroa.5.0.insert.shift, %.sroa.6.sroa.0.0.insert.ext
  store i8 %.sroa.01.0, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i16 %.sroa.6.sroa.0.0.insert.insert, ptr %.sroa.54.0..sroa_idx, align 2
  %.sroa.6.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %.sroa.9.0, ptr %.sroa.6.0..sroa_idx5, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %.sroa.92.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.10.0, ptr %.sroa.8.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.t = invoke { ptr, i64 } @_RNvMs0_NtNtCsefoF4u9kbII_5wasmi4func2tyNtB5_8FuncType6params(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.h unwind label %bb.e, !noalias !80 ; 2 uses

bb.e:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.n, %bb.m, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.u, %bb.e ], [ %i.ap, %bb.n ], [ %i.ap, %bb.m ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.v = load i8, ptr %i.d, align 8, !range !8, !alias.scope !85, !noundef !5
  %3 = icmp eq i8 %i.v, 0
  br i1 %3, label %.body, label %bb.f

bb.f:                                             ; preds = %.body.i
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.w = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !88, !nonnull !5, !noundef !5
  %i.x = atomicrmw add ptr %i.w, i64 -1 release, align 8, !noalias !89
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.g, label %.body

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx) #19
          to label %.body unwind label %bb.o, !noalias !80

bb.h:                                             ; preds = %bb.d
  %i.z = extractvalue { ptr, i64 } %i.t, 0        ; 3 uses
  %i.aa = extractvalue { ptr, i64 } %i.t, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  %i.ac = invoke { ptr, i64 } @_RNvMs0_NtNtCsefoF4u9kbII_5wasmi4func2tyNtB5_8FuncType7results(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.i unwind label %bb.e, !noalias !80 ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.ad = invoke { ptr, i64 } @_RNvMs0_NtNtCsefoF4u9kbII_5wasmi4func2tyNtB5_8FuncType6params(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.j unwind label %bb.e, !noalias !80

bb.j:                                             ; preds = %bb.i
  %i.ae = extractvalue { ptr, i64 } %i.ac, 0      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  %i.af = extractvalue { ptr, i64 } %i.ac, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !90
  store ptr %i.z, ptr %i.a, align 8, !alias.scope !91, !noalias !90
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ab, ptr %i.ah, align 8, !alias.scope !91, !noalias !90
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ae, ptr %i.ai, align 8, !alias.scope !91, !noalias !90
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.ag, ptr %i.aj, align 8, !alias.scope !91, !noalias !90
  %i.ak = invoke { ptr, i64 } @_RINvXsb_NtNtCsexYYUdYSQU6_5alloc5boxed4iterINtB8_3BoxSNtNtCsefoF4u9kbII_5wasmi5value3ValEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB1w_8adapters5chain5ChainINtNtB2I_3map3MapINtNtB2I_6copied6CopiedINtNtNtB1y_5slice4iter4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEENvMBS_BQ_14default_for_tyEB39_EECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.k unwind label %bb.e, !noalias !80 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.al = extractvalue { ptr, i64 } %i.ak, 0      ; 3 uses
  %i.am = extractvalue { ptr, i64 } %i.ak, 1      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !90
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !92
  %i.an = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 65) 48, i64 noundef range(i64 1, 9) 8) #20, !noalias !92 ; 10 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.l, label %bb.u, !prof !7

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #21
          to label %.noexc8.i unwind label %bb.m, !noalias !80

.noexc8.i:                                        ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = icmp eq i64 %i.am, 0
  br i1 %i.aq, label %.body.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.ar = mul nuw nsw i64 %i.am, 24
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef range(i64 1, -9223372036854775808) %i.ar, i64 noundef 8) #20, !noalias !93
  br label %.body.i

bb.o:                                             ; preds = %bb.g
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !80
  unreachable

bb.p:                                             ; preds = %bb.b
  %.sroa.6.sroa.0.0.extract.trunc = trunc i16 %i.i to i8
  %.sroa.6.sroa.5.0.extract.shift = lshr i16 %i.i, 8
  br label %bb.d

bb.q:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %bb.ac, %bb.ad, %bb.g, %bb.f, %.body.i, %bb.t, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.cc, %bb.ai ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.g ], [ %eh.lpad-body.i, %bb.f ], [ %i.ay, %bb.t ], [ %i.bp, %bb.ad ], [ %i.bp, %bb.ac ]
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.at = load i8, ptr %1, align 8, !range !8, !alias.scope !97, !noundef !5
  %4 = icmp eq i8 %i.at, 0
  br i1 %4, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit, label %bb.r

bb.r:                                             ; preds = %.body
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !100, !nonnull !5, !noundef !5
  %i.aw = atomicrmw add ptr %i.av, i64 -1 release, align 8, !noalias !100
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.au) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit unwind label %bb.aj

bb.t:                                             ; preds = %bb.ae
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %bb.k
  %i.az = extractvalue { ptr, i64 } %i.ad, 1
  store i64 1, ptr %i.an, align 8, !noalias !80
  %.sroa.4.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx9.i, align 8, !noalias !80
  %.sroa.5.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.al, ptr %.sroa.5.0..sroa_idx10.i, align 8, !noalias !80
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 %i.am, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !80
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store ptr %2, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !80
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  store i64 %i.az, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !alias.scope !90
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 5 uses
  store ptr %i.an, ptr %i.ba, align 8, !alias.scope !80
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr @3, ptr %i.bb, align 8, !alias.scope !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bc = atomicrmw add ptr %i.an, i64 1 monotonic, align 8
  %i.bd = icmp slt i64 %i.bc, 0
  br i1 %i.bd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.be = invoke { i64, i32 } @_RNvMs1_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE16alloc_trampolineCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %0, ptr noundef nonnull %i.an, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @3)
          to label %bb.x unwind label %bb.ai      ; 2 uses

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bf = extractvalue { i64, i32 } %i.be, 1
  %i.bg = extractvalue { i64, i32 } %i.be, 0
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 224
  invoke void @_RNvMs0_NtCsefoF4u9kbII_5wasmi4funcNtB5_14HostFuncEntity3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.bg, i32 noundef %i.bf)
          to label %bb.y unwind label %bb.ai

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  store i64 1, ptr %i.b, align 8
  %i.bj = invoke { i32, i32 } @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner10alloc_func(ptr noalias nofree noundef nonnull align 8 dereferenceable(1584) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
          to label %bb.z unwind label %bb.ai

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.bk = load i8, ptr %i.e, align 8, !range !8, !alias.scope !105, !noundef !5
  %5 = icmp eq i8 %i.bk, 0
  br i1 %5, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i16, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !108, !nonnull !5, !noundef !5
  %i.bn = atomicrmw add ptr %i.bm, i64 -1 release, align 8, !noalias !108
  %i.bo = icmp eq i64 %i.bn, 1
  br i1 %i.bo, label %bb.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i16

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bl) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i16 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  call void @llvm.experimental.noalias.scope.decl(metadata !110)
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.bq = load ptr, ptr %i.ba, align 8, !alias.scope !112, !nonnull !5, !noundef !5
  %i.br = atomicrmw add ptr %i.bq, i64 -1 release, align 8, !noalias !113
  %i.bs = icmp eq i64 %i.br, 1
  br i1 %i.bs, label %bb.ad, label %.body

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_uENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB2h_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB4d_4SyncEL_E9drop_slowCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ba) #19
          to label %.body unwind label %bb.af

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i16: ; preds = %bb.ab, %bb.aa, %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  call void @llvm.experimental.noalias.scope.decl(metadata !115)
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.bt = load ptr, ptr %i.ba, align 8, !alias.scope !117, !nonnull !5, !noundef !5
  %i.bu = atomicrmw add ptr %i.bt, i64 -1 release, align 8, !noalias !118
  %i.bv = icmp eq i64 %i.bu, 1
  br i1 %i.bv, label %bb.ae, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func24HostFuncTrampolineEntityuEECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.ae:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i16
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_uENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB2h_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB4d_4SyncEL_E9drop_slowCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ba) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func24HostFuncTrampolineEntityuEECsg6ypMx2A1Am_11wasmi_c_api.exit unwind label %bb.t

bb.af:                                            ; preds = %bb.ad
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func24HostFuncTrampolineEntityuEECsg6ypMx2A1Am_11wasmi_c_api.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i16, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.bx = load i8, ptr %1, align 8, !range !8, !alias.scope !122, !noundef !5
  %6 = icmp eq i8 %i.bx, 0
  br i1 %6, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit20, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func24HostFuncTrampolineEntityuEECsg6ypMx2A1Am_11wasmi_c_api.exit
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !123)
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !125, !nonnull !5, !noundef !5
  %i.ca = atomicrmw add ptr %i.bz, i64 -1 release, align 8, !noalias !125
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.ah, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit20

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.by) #19
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit20

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit20: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func24HostFuncTrampolineEntityuEECsg6ypMx2A1Am_11wasmi_c_api.exit, %bb.ag, %bb.ah
  ret { i32, i32 } %i.bj

bb.ai:                                            ; preds = %bb.w, %bb.x, %bb.y
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func24HostFuncTrampolineEntityuEECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 dereferenceable(40) %i.e) #23
          to label %.body unwind label %bb.aj

bb.aj:                                            ; preds = %bb.s, %bb.ai
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit: ; preds = %bb.r, %.body, %bb.s
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RINvMs9_NtCsefoF4u9kbII_5wasmi4funcNtB6_4Func3newuINtNtNtB8_5store7context15StoreContextMutuENCINvNtCsg6ypMx2A1Am_11wasmi_c_api4func15create_functionNCNvB1y_22wasm_func_new_with_env0E0EB1A_(ptr noalias nofree noundef align 8 dereferenceable(1688) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 13 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.g = load i8, ptr %1, align 8, !range !8, !noundef !5
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.j = load i16, ptr %i.i, align 2, !noundef !5 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5
  %i.m = atomicrmw add ptr %i.l, i64 1 monotonic, align 8
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.q, label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.p = load i8, ptr %i.o, align 1, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.r = load i8, ptr %i.q, align 2, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 3
  %.sroa.06.0.copyload = load i8, ptr %i.s, align 1
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.47.0.copyload = load i32, ptr %.sroa.47.0..sroa_idx, align 4
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = zext i8 %.sroa.06.0.copyload to i16
  br label %bb.d

bb.d:                                             ; preds = %bb.p, %bb.c
  %.sroa.6.sroa.5.0 = phi i16 [ %.sroa.6.sroa.5.0.extract.shift, %bb.p ], [ %i.t, %bb.c ]
  %.sroa.6.sroa.0.0 = phi i8 [ %.sroa.6.sroa.0.0.extract.trunc, %bb.p ], [ %i.r, %bb.c ]
  %.sroa.92.0.in = phi ptr [ %i.k, %bb.p ], [ %.sroa.58.0..sroa_idx, %bb.c ]
  %.sroa.9.0 = phi i32 [ undef, %bb.p ], [ %.sroa.47.0.copyload, %bb.c ]
  %.sroa.5.0 = phi i8 [ undef, %bb.p ], [ %i.p, %bb.c ]
  %.sroa.01.0 = phi i8 [ 1, %bb.p ], [ 0, %bb.c ]
  %.sroa.92.0 = load ptr, ptr %.sroa.92.0.in, align 1
  %.sroa.10.0.in = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.10.0 = load i64, ptr %.sroa.10.0.in, align 8
  %.sroa.6.sroa.5.0.insert.shift = shl nuw i16 %.sroa.6.sroa.5.0, 8
  %.sroa.6.sroa.0.0.insert.ext = zext i8 %.sroa.6.sroa.0.0 to i16
  %.sroa.6.sroa.0.0.insert.insert = or disjoint i16 %.sroa.6.sroa.5.0.insert.shift, %.sroa.6.sroa.0.0.insert.ext
  store i8 %.sroa.01.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i16 %.sroa.6.sroa.0.0.insert.insert, ptr %.sroa.54.0..sroa_idx, align 2
  %.sroa.6.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %.sroa.9.0, ptr %.sroa.6.0..sroa_idx5, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %.sroa.92.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.10.0, ptr %.sroa.8.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.u = invoke { ptr, i64 } @_RNvMs0_NtNtCsefoF4u9kbII_5wasmi4func2tyNtB5_8FuncType6params(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
          to label %bb.e unwind label %bb.n, !noalias !190 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.v = extractvalue { ptr, i64 } %i.u, 0        ; 3 uses
  %i.w = extractvalue { ptr, i64 } %i.u, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = invoke { ptr, i64 } @_RNvMs0_NtNtCsefoF4u9kbII_5wasmi4func2tyNtB5_8FuncType7results(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
          to label %bb.f unwind label %bb.n, !noalias !190 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.z = invoke { ptr, i64 } @_RNvMs0_NtNtCsefoF4u9kbII_5wasmi4func2tyNtB5_8FuncType6params(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
          to label %bb.g unwind label %bb.n, !noalias !190

bb.g:                                             ; preds = %bb.f
  %i.aa = extractvalue { ptr, i64 } %i.y, 0       ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  %i.ab = extractvalue { ptr, i64 } %i.y, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !191
  store ptr %i.v, ptr %i.b, align 8, !alias.scope !192, !noalias !191
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.x, ptr %i.ad, align 8, !alias.scope !192, !noalias !191
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.aa, ptr %i.ae, align 8, !alias.scope !192, !noalias !191
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.ac, ptr %i.af, align 8, !alias.scope !192, !noalias !191
  %i.ag = invoke { ptr, i64 } @_RINvXsb_NtNtCsexYYUdYSQU6_5alloc5boxed4iterINtB8_3BoxSNtNtCsefoF4u9kbII_5wasmi5value3ValEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB1w_8adapters5chain5ChainINtNtB2I_3map3MapINtNtB2I_6copied6CopiedINtNtNtB1y_5slice4iter4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEENvMBS_BQ_14default_for_tyEB39_EECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.h unwind label %bb.n, !noalias !190 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.ah = extractvalue { ptr, i64 } %i.z, 1
  %i.ai = extractvalue { ptr, i64 } %i.ag, 0
  %i.aj = extractvalue { ptr, i64 } %i.ag, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !191
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !193
  store i64 1, ptr %i.a, align 8, !noalias !191
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.ak, align 8, !noalias !191
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ai, ptr %i.al, align 8, !noalias !191
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.aj, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !191
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.ah, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !191
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !194
  %i.am = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 65) 64, i64 noundef range(i64 1, 9) 8) #20, !noalias !194 ; 5 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.i, label %bb.u, !prof !7

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #21
          to label %.noexc.i unwind label %bb.j, !noalias !190

.noexc.i:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNCINvMs5_NtCsefoF4u9kbII_5wasmi4funcINtB1n_24HostFuncTrampolineEntityuE3newNCINvNtCsg6ypMx2A1Am_11wasmi_c_api4func15create_functionNCNvB2w_22wasm_func_new_with_env0E0E0EEB2y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a) #23
          to label %.body.i unwind label %bb.k, !noalias !190

bb.k:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !190
  unreachable

.body.i:                                          ; preds = %bb.n, %bb.j
  %eh.lpad-body11.i = phi { ptr, i32 } [ %i.ao, %bb.j ], [ %i.au, %bb.n ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !195)
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %i.aq = load i8, ptr %i.e, align 8, !range !8, !alias.scope !198, !noundef !5
  %3 = icmp eq i8 %i.aq, 0
  br i1 %3, label %.body, label %bb.l

bb.l:                                             ; preds = %.body.i
  call void @llvm.experimental.noalias.scope.decl(metadata !199)
  call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %i.ar = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !201, !nonnull !5, !noundef !5
  %i.as = atomicrmw add ptr %i.ar, i64 -1 release, align 8, !noalias !202
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.m, label %.body

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx) #19
          to label %.body unwind label %bb.o, !noalias !188

bb.n:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void @_RNvXs0_NtCsg6ypMx2A1Am_11wasmi_c_api5utilsNtB5_11ForeignDataNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.av)
          to label %.body.i unwind label %bb.o, !noalias !188

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !188
  unreachable

bb.p:                                             ; preds = %bb.b
  %.sroa.6.sroa.0.0.extract.trunc = trunc i16 %i.j to i8
  %.sroa.6.sroa.5.0.extract.shift = lshr i16 %i.j, 8
  br label %bb.d

bb.q:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %bb.ac, %bb.ad, %bb.m, %bb.l, %.body.i, %bb.t, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.ai ], [ %eh.lpad-body11.i, %.body.i ], [ %eh.lpad-body11.i, %bb.m ], [ %eh.lpad-body11.i, %bb.l ], [ %i.bc, %bb.t ], [ %i.bs, %bb.ad ], [ %i.bs, %bb.ac ]
  call void @llvm.experimental.noalias.scope.decl(metadata !203)
  call void @llvm.experimental.noalias.scope.decl(metadata !204)
  call void @llvm.experimental.noalias.scope.decl(metadata !205)
  %i.ax = load i8, ptr %1, align 8, !range !8, !alias.scope !206, !noundef !5
  %4 = icmp eq i8 %i.ax, 0
  br i1 %4, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit, label %bb.r

bb.r:                                             ; preds = %.body
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !209, !nonnull !5, !noundef !5
  %i.ba = atomicrmw add ptr %i.az, i64 -1 release, align 8, !noalias !209
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ay) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit unwind label %bb.aj

bb.t:                                             ; preds = %bb.ae
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.am, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !alias.scope !193
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 5 uses
  store ptr %i.am, ptr %i.bd, align 8, !alias.scope !188
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr @4, ptr %i.be, align 8, !alias.scope !188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bf = atomicrmw add ptr %i.am, i64 1 monotonic, align 8
  %i.bg = icmp slt i64 %i.bf, 0
  br i1 %i.bg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bh = invoke { i64, i32 } @_RNvMs1_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE16alloc_trampolineCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %0, ptr noundef nonnull %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @4)
          to label %bb.x unwind label %bb.ai      ; 2 uses

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bi = extractvalue { i64, i32 } %i.bh, 1
  %i.bj = extractvalue { i64, i32 } %i.bh, 0
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 224
  invoke void @_RNvMs0_NtCsefoF4u9kbII_5wasmi4funcNtB5_14HostFuncEntity3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.bj, i32 noundef %i.bi)
          to label %bb.y unwind label %bb.ai

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  store i64 1, ptr %i.c, align 8
  %i.bm = invoke { i32, i32 } @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner10alloc_func(ptr noalias nofree noundef nonnull align 8 dereferenceable(1584) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.z unwind label %bb.ai

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  call void @llvm.experimental.noalias.scope.decl(metadata !212)
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.bn = load i8, ptr %i.f, align 8, !range !8, !alias.scope !214, !noundef !5
  %5 = icmp eq i8 %i.bn, 0
  br i1 %5, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i16, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !217, !nonnull !5, !noundef !5
  %i.bq = atomicrmw add ptr %i.bp, i64 -1 release, align 8, !noalias !217
  %i.br = icmp eq i64 %i.bq, 1
  br i1 %i.br, label %bb.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i16

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bo) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i16 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !218)
  call void @llvm.experimental.noalias.scope.decl(metadata !219)
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  %i.bt = load ptr, ptr %i.bd, align 8, !alias.scope !221, !nonnull !5, !noundef !5
  %i.bu = atomicrmw add ptr %i.bt, i64 -1 release, align 8, !noalias !222
  %i.bv = icmp eq i64 %i.bu, 1
  br i1 %i.bv, label %bb.ad, label %.body

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_uENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB2h_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB4d_4SyncEL_E9drop_slowCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bd) #19
          to label %.body unwind label %bb.af

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i16: ; preds = %bb.ab, %bb.aa, %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  call void @llvm.experimental.noalias.scope.decl(metadata !224)
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.bw = load ptr, ptr %i.bd, align 8, !alias.scope !226, !nonnull !5, !noundef !5
  %i.bx = atomicrmw add ptr %i.bw, i64 -1 release, align 8, !noalias !227
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.ae, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func24HostFuncTrampolineEntityuEECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.ae:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i16
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_uENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB2h_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB4d_4SyncEL_E9drop_slowCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bd) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func24HostFuncTrampolineEntityuEECsg6ypMx2A1Am_11wasmi_c_api.exit unwind label %bb.t

bb.af:                                            ; preds = %bb.ad
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func24HostFuncTrampolineEntityuEECsg6ypMx2A1Am_11wasmi_c_api.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i16, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !228)
  call void @llvm.experimental.noalias.scope.decl(metadata !229)
  call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.ca = load i8, ptr %1, align 8, !range !8, !alias.scope !231, !noundef !5
  %6 = icmp eq i8 %i.ca, 0
  br i1 %6, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit20, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func24HostFuncTrampolineEntityuEECsg6ypMx2A1Am_11wasmi_c_api.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !232)
  call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !234, !nonnull !5, !noundef !5
  %i.cd = atomicrmw add ptr %i.cc, i64 -1 release, align 8, !noalias !234
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.ah, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit20

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.cb) #19
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit20

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit20: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func24HostFuncTrampolineEntityuEECsg6ypMx2A1Am_11wasmi_c_api.exit, %bb.ag, %bb.ah
  ret { i32, i32 } %i.bm

bb.ai:                                            ; preds = %bb.w, %bb.x, %bb.y
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func24HostFuncTrampolineEntityuEECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 dereferenceable(40) %i.f) #23
          to label %.body unwind label %bb.aj

bb.aj:                                            ; preds = %bb.s, %bb.ai
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit: ; preds = %bb.r, %.body, %bb.s
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs9_NtCsefoF4u9kbII_5wasmi4funcNtB6_4Func4calluINtNtNtB8_5store7context15StoreContextMutuEECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(1688) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 384307168202282326) %3, ptr noalias nofree noundef nonnull align 8 %4, i64 noundef range(i64 0, 384307168202282326) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.d = tail call noundef nonnull align 8 ptr @_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner12resolve_func(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1688) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %0), !noalias !253 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !range !11, !noalias !253, !noundef !5
  %i.f = trunc nuw i64 %i.e to i1
  %.sroa.0.0.v.i.i = select i1 %i.f, i64 24, i64 8
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.0.v.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !254
  store ptr %2, ptr %i.b, align 8, !noalias !254
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.g, align 8, !noalias !254
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %4, ptr %i.h, align 8, !noalias !254
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %5, ptr %i.i, align 8, !noalias !254
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !252, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = call noundef range(i8 -1, 5) i8 @_RINvMs8_NtCsefoF4u9kbII_5wasmi6engineNtB6_11EngineInner17resolve_func_typeNCINvMs9_NtB8_4funcNtB1j_4Func33verify_and_prepare_inputs_outputsINtNtNtB8_5store7context12StoreContextuEE0INtNtCskKLDkoKarTP_4core6result6ResultuNtNtB1j_5error9FuncErrorEECsg6ypMx2A1Am_11wasmi_c_api(ptr noundef nonnull align 8 %i.l, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !254
  %.not = icmp eq i8 %i.m, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.m, ptr %i.n, align 1
  store i8 18, ptr %i.a, align 8
  %i.o = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.val11 = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.p = atomicrmw add ptr %.val11, i64 1 monotonic, align 8
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = atomicrmw add ptr %.val11, i64 -1 release, align 8, !noalias !255
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsefoF4u9kbII_5wasmi6engine11EngineInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECsg6ypMx2A1Am_11wasmi_c_api.exit unwind label %bb.j

bb.g:                                             ; preds = %bb.c
  store ptr %.val11, ptr %i.c, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.val11, i64 16
  %i.v = invoke noundef align 8 ptr @_RINvMNtNtCsefoF4u9kbII_5wasmi6engine8executorNtB5_11EngineInner12execute_funcuRSNtNtB7_5value3ValQB1f_ECsg6ypMx2A1Am_11wasmi_c_api(ptr noundef nonnull align 8 %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 384307168202282326) %3, ptr noalias nofree noundef nonnull align 8 %4, i64 noundef range(i64 0, 384307168202282326) %5)
          to label %_RINvMs1_NtCsefoF4u9kbII_5wasmi6engineNtB6_6Engine12execute_funcuRSNtNtB8_5value3ValQB11_ECsg6ypMx2A1Am_11wasmi_c_api.exit unwind label %bb.e

_RINvMs1_NtCsefoF4u9kbII_5wasmi6engineNtB6_6Engine12execute_funcuRSNtNtB8_5value3ValQB11_ECsg6ypMx2A1Am_11wasmi_c_api.exit: ; preds = %bb.g
  %i.w = atomicrmw add ptr %.val11, i64 -1 release, align 8, !noalias !256
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECsg6ypMx2A1Am_11wasmi_c_api.exit14

bb.h:                                             ; preds = %_RINvMs1_NtCsefoF4u9kbII_5wasmi6engineNtB6_6Engine12execute_funcuRSNtNtB8_5value3ValQB11_ECsg6ypMx2A1Am_11wasmi_c_api.exit
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsefoF4u9kbII_5wasmi6engine11EngineInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #19
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECsg6ypMx2A1Am_11wasmi_c_api.exit14

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECsg6ypMx2A1Am_11wasmi_c_api.exit14: ; preds = %_RINvMs1_NtCsefoF4u9kbII_5wasmi6engineNtB6_6Engine12execute_funcuRSNtNtB8_5value3ValQB11_ECsg6ypMx2A1Am_11wasmi_c_api.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECsg6ypMx2A1Am_11wasmi_c_api.exit14, %bb.b
  %.sroa.0.0 = phi ptr [ %i.o, %bb.b ], [ %i.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECsg6ypMx2A1Am_11wasmi_c_api.exit14 ]
  ret ptr %.sroa.0.0

bb.j:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECsg6ypMx2A1Am_11wasmi_c_api.exit: ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.r
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func24HostFuncTrampolineEntityuEECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  %i.a = load i8, ptr %0, align 8, !range !8, !alias.scope !282, !noundef !5
  %1 = icmp eq i8 %i.a, 0
  br i1 %1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !285, !nonnull !5, !noundef !5
  %i.d = atomicrmw add ptr %i.c, i64 -1 release, align 8, !noalias !285
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !289, !nonnull !5, !noundef !5
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !289
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func16TrampolineEntityuEECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_uENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB2h_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB4d_4SyncEL_E9drop_slowCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func16TrampolineEntityuEECsg6ypMx2A1Am_11wasmi_c_api.exit unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit: ; preds = %bb.b, %bb.a, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !293, !nonnull !5, !noundef !5
  %i.m = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !293
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func16TrampolineEntityuEECsg6ypMx2A1Am_11wasmi_c_api.exit2

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_uENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB2h_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB4d_4SyncEL_E9drop_slowCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k) #19
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func16TrampolineEntityuEECsg6ypMx2A1Am_11wasmi_c_api.exit2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func16TrampolineEntityuEECsg6ypMx2A1Am_11wasmi_c_api.exit2: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit, %bb.f
  ret void

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func16TrampolineEntityuEECsg6ypMx2A1Am_11wasmi_c_api.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNCINvMs5_NtCsefoF4u9kbII_5wasmi4funcINtB1n_24HostFuncTrampolineEntityuE3newNCINvNtCsg6ypMx2A1Am_11wasmi_c_api4func15create_functionNCNvB2w_22wasm_func_new_with_env0E0E0EEB2y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load i64, ptr %i.a, align 8, !alias.scope !296, !noundef !5 ; 2 uses
  %i.b = icmp eq i64 %.val1.i, 0
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs5_NtCsefoF4u9kbII_5wasmi4funcINtBK_24HostFuncTrampolineEntityuE3newNCINvNtCsg6ypMx2A1Am_11wasmi_c_api4func15create_functionNCNvB1S_22wasm_func_new_with_env0E0E0EB1U_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !296, !nonnull !5, !noundef !5
  %i.d = mul nuw nsw i64 %.val1.i, 24
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.d, i64 noundef 8) #20, !noalias !296
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs5_NtCsefoF4u9kbII_5wasmi4funcINtBK_24HostFuncTrampolineEntityuE3newNCINvNtCsg6ypMx2A1Am_11wasmi_c_api4func15create_functionNCNvB1S_22wasm_func_new_with_env0E0E0EB1U_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs5_NtCsefoF4u9kbII_5wasmi4funcINtBK_24HostFuncTrampolineEntityuE3newNCINvNtCsg6ypMx2A1Am_11wasmi_c_api4func15create_functionNCNvB1S_22wasm_func_new_with_env0E0E0EB1U_.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_RNvXs0_NtCsg6ypMx2A1Am_11wasmi_c_api5utilsNtB5_11ForeignDataNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEB1g_(ptr nonnull captures(address) %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 1, i64 noundef 1) #20
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs5_NtCsefoF4u9kbII_5wasmi4funcINtBK_24HostFuncTrampolineEntityuE3newNCINvNtCsg6ypMx2A1Am_11wasmi_c_api4func15create_functionNCNvB1S_13wasm_func_new0E0E0EB1U_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtCsefoF4u9kbII_5wasmi5value3ValEECsg6ypMx2A1Am_11wasmi_c_api.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.c = mul nuw nsw i64 %.val1, 24
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef 8) #20
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtCsefoF4u9kbII_5wasmi5value3ValEECsg6ypMx2A1Am_11wasmi_c_api.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtCsefoF4u9kbII_5wasmi5value3ValEECsg6ypMx2A1Am_11wasmi_c_api.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs5_NtCsefoF4u9kbII_5wasmi4funcINtBK_24HostFuncTrampolineEntityuE3newNCINvNtCsg6ypMx2A1Am_11wasmi_c_api4func15create_functionNCNvB1S_22wasm_func_new_with_env0E0E0EB1U_(ptr noalias nofree noundef align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtCsefoF4u9kbII_5wasmi5value3ValEECsg6ypMx2A1Am_11wasmi_c_api.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.c = mul nuw nsw i64 %.val1, 24
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef 8) #20
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtCsefoF4u9kbII_5wasmi5value3ValEECsg6ypMx2A1Am_11wasmi_c_api.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtCsefoF4u9kbII_5wasmi5value3ValEECsg6ypMx2A1Am_11wasmi_c_api.exit: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXs0_NtCsg6ypMx2A1Am_11wasmi_c_api5utilsNtB5_11ForeignDataNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types5table16wasm_tabletype_tEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314)
  %i.a = load i8, ptr %0, align 8, !range !12, !alias.scope !315, !noundef !5 ; 2 uses
  %i.b = icmp samesign ult i8 %i.a, 2
  br i1 %i.b, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6extern17wasm_externtype_tEBH_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %1 = icmp eq i8 %i.a, 0
  br i1 %1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !322, !nonnull !5, !noundef !5
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !322
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXs8_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_tNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit.i.i.i unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXs8_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_tNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types4func9CFuncTypeEBH_.exit.i.i unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.pn.i.i.i = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.g, %bb.e ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_RNvXs8_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_tNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit6.i.i.i unwind label %bb.g

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit.i.i.i

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit.i.i.i, %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit6.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit.i.i.i
  resume { ptr, i32 } %.pn.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types4func9CFuncTypeEBH_.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_RNvXs8_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_tNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6extern17wasm_externtype_tEBH_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6extern17wasm_externtype_tEBH_.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types4func9CFuncTypeEBH_.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RINvXs1_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cellRSNtNtBe_5value3ValNtB6_12LowerToCells14lower_to_cellsNtNtNtBe_5store2id7StoreIdQSNtB6_4CellECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 384307168202282326) %1, i32 noundef %2, ptr noalias nofree noundef align 8 dereferenceable(16) %3) unnamed_addr #1 {
bb.a:
  %.idx = mul nuw nsw i64 %1, 24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %_RINvXs2_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cellRNtNtBe_5value3ValNtB6_12LowerToCells14lower_to_cellsNtNtNtBe_5store2id7StoreIdQSNtB6_4CellECsg6ypMx2A1Am_11wasmi_c_api.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvXs2_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cellRNtNtBe_5value3ValNtB6_12LowerToCells14lower_to_cellsNtNtNtBe_5store2id7StoreIdQSNtB6_4CellECsg6ypMx2A1Am_11wasmi_c_api.exit.thread9
  %.sroa.01.012 = phi ptr [ %0, %.lr.ph ], [ %i.ax, %_RINvXs2_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cellRNtNtBe_5value3ValNtB6_12LowerToCells14lower_to_cellsNtNtNtBe_5store2id7StoreIdQSNtB6_4CellECsg6ypMx2A1Am_11wasmi_c_api.exit.thread9 ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.d = load i8, ptr %.sroa.01.012, align 8, !range !4, !alias.scope !340, !noundef !5
  switch i8 %i.d, label %default.unreachable [
    i8 0, label %bb.c
    i8 1, label %bb.e
    i8 2, label %bb.g
    i8 3, label %bb.i
    i8 4, label %bb.k
    i8 5, label %bb.n
    i8 6, label %bb.o
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.01.012, i64 4
  %i.f = load i32, ptr %i.e, align 4, !alias.scope !340, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %i.g = load ptr, ptr %3, align 8, !alias.scope !343, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  %i.h = load i64, ptr %i.c, align 8, !alias.scope !343, !noundef !5 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %3, align 8, !alias.scope !343
  store i64 0, ptr %i.c, align 8, !alias.scope !343
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %_RINvXs2_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cellRNtNtBe_5value3ValNtB6_12LowerToCells14lower_to_cellsNtNtNtBe_5store2id7StoreIdQSNtB6_4CellECsg6ypMx2A1Am_11wasmi_c_api.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = zext i32 %i.f to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = add i64 %i.h, -1
  store i64 %i.i, ptr %i.g, align 8, !noalias !344
  br label %_RINvXs2_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cellRNtNtBe_5value3ValNtB6_12LowerToCells14lower_to_cellsNtNtNtBe_5store2id7StoreIdQSNtB6_4CellECsg6ypMx2A1Am_11wasmi_c_api.exit.thread9.sink.split

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.012, i64 8
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !340, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.n = load ptr, ptr %3, align 8, !alias.scope !346, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  %i.o = load i64, ptr %i.c, align 8, !alias.scope !346, !noundef !5 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %3, align 8, !alias.scope !346
  store i64 0, ptr %i.c, align 8, !alias.scope !346
  %.not.i1.i = icmp eq i64 %i.o, 0
  br i1 %.not.i1.i, label %_RINvXs2_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cellRNtNtBe_5value3ValNtB6_12LowerToCells14lower_to_cellsNtNtNtBe_5store2id7StoreIdQSNtB6_4CellECsg6ypMx2A1Am_11wasmi_c_api.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = add i64 %i.o, -1
  store i64 %i.m, ptr %i.n, align 8, !noalias !347
  br label %_RINvXs2_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cellRNtNtBe_5value3ValNtB6_12LowerToCells14lower_to_cellsNtNtNtBe_5store2id7StoreIdQSNtB6_4CellECsg6ypMx2A1Am_11wasmi_c_api.exit.thread9.sink.split

bb.g:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.01.012, i64 4
  %i.s = load i32, ptr %i.r, align 4, !alias.scope !340, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.t = load ptr, ptr %3, align 8, !alias.scope !349, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  %i.u = load i64, ptr %i.c, align 8, !alias.scope !349, !noundef !5 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %3, align 8, !alias.scope !349
  store i64 0, ptr %i.c, align 8, !alias.scope !349
  %.not.i4.i = icmp eq i64 %i.u, 0
  br i1 %.not.i4.i, label %_RINvXs2_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cellRNtNtBe_5value3ValNtB6_12LowerToCells14lower_to_cellsNtNtNtBe_5store2id7StoreIdQSNtB6_4CellECsg6ypMx2A1Am_11wasmi_c_api.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = zext i32 %i.s to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = add i64 %i.u, -1
  store i64 %i.v, ptr %i.t, align 8, !noalias !350
  br label %_RINvXs2_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cellRNtNtBe_5value3ValNtB6_12LowerToCells14lower_to_cellsNtNtNtBe_5store2id7StoreIdQSNtB6_4CellECsg6ypMx2A1Am_11wasmi_c_api.exit.thread9.sink.split

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.01.012, i64 8
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !340, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  %i.aa = load ptr, ptr %3, align 8, !alias.scope !352, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  %i.ab = load i64, ptr %i.c, align 8, !alias.scope !352, !noundef !5 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %3, align 8, !alias.scope !352
  store i64 0, ptr %i.c, align 8, !alias.scope !352
  %.not.i7.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i7.i, label %_RINvXs2_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cellRNtNtBe_5value3ValNtB6_12LowerToCells14lower_to_cellsNtNtNtBe_5store2id7StoreIdQSNtB6_4CellECsg6ypMx2A1Am_11wasmi_c_api.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = add i64 %i.ab, -1
  store i64 %i.z, ptr %i.aa, align 8, !noalias !353
  br label %_RINvXs2_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cellRNtNtBe_5value3ValNtB6_12LowerToCells14lower_to_cellsNtNtNtBe_5store2id7StoreIdQSNtB6_4CellECsg6ypMx2A1Am_11wasmi_c_api.exit.thread9.sink.split

bb.k:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.01.012, i64 1
  %.sroa.0.0.copyload.i = load i128, ptr %i.ae, align 1, !alias.scope !340 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.af = load ptr, ptr %3, align 8, !alias.scope !356, !nonnull !5, !align !9, !noundef !5 ; 3 uses
  %i.ag = load i64, ptr %i.c, align 8, !alias.scope !356, !noundef !5 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %3, align 8, !alias.scope !356
  store i64 0, ptr %i.c, align 8, !alias.scope !356
  %.not.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i, label %_RINvXs2_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cellRNtNtBe_5value3ValNtB6_12LowerToCells14lower_to_cellsNtNtNtBe_5store2id7StoreIdQSNtB6_4CellECsg6ypMx2A1Am_11wasmi_c_api.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = trunc i128 %.sroa.0.0.copyload.i to i64
  store i64 %i.ah, ptr %i.af, align 8, !noalias !357
  %.not.i9.i.i = icmp eq i64 %i.ag, 1
  br i1 %.not.i9.i.i, label %_RINvXs2_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cellRNtNtBe_5value3ValNtB6_12LowerToCells14lower_to_cellsNtNtNtBe_5store2id7StoreIdQSNtB6_4CellECsg6ypMx2A1Am_11wasmi_c_api.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = lshr i128 %.sroa.0.0.copyload.i, 64
  %i.ak = trunc nuw i128 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.am = add i64 %i.ag, -2
  store i64 %i.ak, ptr %i.ai, align 8, !noalias !358
  br label %_RINvXs2_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cellRNtNtBe_5value3ValNtB6_12LowerToCells14lower_to_cellsNtNtNtBe_5store2id7StoreIdQSNtB6_4CellECsg6ypMx2A1Am_11wasmi_c_api.exit.thread9.sink.split

bb.n:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.01.012, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !alias.scope !340, !noundef !5
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.01.012, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !alias.scope !340
  %i.ar = tail call noundef i8 @_RINvXsQ_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cellINtNtBe_7reftype8NullableNtNtBe_4func4FuncENtB6_12LowerToCells14lower_to_cellsNtNtNtBe_5store2id7StoreIdQSNtB6_4CellECsg6ypMx2A1Am_11wasmi_c_api(i32 noundef %i.ao, i32 %i.aq, i32 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %3), !noalias !340
  br label %_RINvXs2_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cellRNtNtBe_5value3ValNtB6_12LowerToCells14lower_to_cellsNtNtNtBe_5store2id7StoreIdQSNtB6_4CellECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.o:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.01.012, i64 4
  %i.at = load i32, ptr %i.as, align 4, !alias.scope !340, !noundef !5
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.01.012, i64 8
  %i.av = load i32, ptr %i.au, align 8, !alias.scope !340
  %i.aw = tail call noundef i8 @_RINvXsT_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cellINtNtBe_7reftype8NullableNtB14_9ExternRefENtB6_12LowerToCells14lower_to_cellsNtNtNtBe_5store2id7StoreIdQSNtB6_4CellECsg6ypMx2A1Am_11wasmi_c_api(i32 noundef %i.at, i32 %i.av, i32 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %3), !noalias !340
  br label %_RINvXs2_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cellRNtNtBe_5value3ValNtB6_12LowerToCells14lower_to_cellsNtNtNtBe_5store2id7StoreIdQSNtB6_4CellECsg6ypMx2A1Am_11wasmi_c_api.exit

_RINvXs2_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cellRNtNtBe_5value3ValNtB6_12LowerToCells14lower_to_cellsNtNtNtBe_5store2id7StoreIdQSNtB6_4CellECsg6ypMx2A1Am_11wasmi_c_api.exit: ; preds = %bb.n, %bb.o
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCsg6ypMx2A1Am_11wasmi_c_api5types5tableNtB4_10CTableType3new:bb.a
bb.e:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsg6ypMx2A1Am_11wasmi_c_api.exit25, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsg6ypMx2A1Am_11wasmi_c_api.exit
  %.sroa.04.0 = phi i32 [ %.sroa.6.0.extract.trunc.i, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsg6ypMx2A1Am_11wasmi_c_api.exit ], [ -1, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsg6ypMx2A1Am_11wasmi_c_api.exit25 ]
  %.sroa.6.0.extract.shift.i21 = lshr i64 %.sroa.013.0.insert.insert, 32
  %.sroa.6.0.extract.trunc.i22 = trunc nuw i64 %.sroa.6.0.extract.shift.i21 to i32
  %. = add nuw nsw i8 %i.d, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %., ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sroa.6.0.extract.trunc.i22, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.sroa.04.0, ptr %i.s, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, -126) i8 @_RNvNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val12from_valtype(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = load i8, ptr %0, align 1, !range !4, !noundef !5 ; 5 uses
  switch i8 %i.c, label %default.unreachable4 [
    i8 0, label %bb.e
    i8 1, label %bb.e
    i8 2, label %bb.e
    i8 3, label %bb.e
    i8 5, label %bb.b
    i8 6, label %bb.c
    i8 4, label %bb.d
  ], !prof !14

default.unreachable4:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8, !captures !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeNtB6_5Debug3fmtCsg6ypMx2A1Am_11wasmi_c_api, ptr %.sroa.43.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @17, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #17
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ -128, %bb.c ], [ %i.c, %bb.a ], [ %i.c, %bb.a ], [ %i.c, %bb.a ], [ -127, %bb.b ], [ %i.c, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs5zeGauAcNNa_10wasmi_core4trap8TrapCodeNtB6_5Debug3fmtCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %.val = load i8, ptr %i.a, align 1, !range !485, !noundef !5
  %switch.tableidx = add nsw i8 %.val, -1         ; 2 uses
  %i.b = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs5zeGauAcNNa_10wasmi_core4trap8TrapCodeNtB6_5Debug3fmtCsg6ypMx2A1Am_11wasmi_c_api, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %switch.tableidx to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs5zeGauAcNNa_10wasmi_core4trap8TrapCodeNtB6_5Debug3fmtCsg6ypMx2A1Am_11wasmi_c_api.50, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsefoF4u9kbII_5wasmi4func4FuncNtB6_5Debug3fmtCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !16, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !489
  store ptr %i.b, ptr %i.a, align 8, !noalias !489
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !489
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeNtB6_5Debug3fmtCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !9, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !493
  store ptr %i.b, ptr %i.a, align 8, !noalias !493
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !493
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsefoF4u9kbII_5wasmi6memory2ty10MemoryTypeNtB6_5Debug3fmtCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !9, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !497
  store ptr %i.b, ptr %i.a, align 8, !noalias !497
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !497
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators9BlockTypeNtB6_5Debug3fmtCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !align !16, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !501)
  %i.d = load i8, ptr %i.c, align 4, !range !6, !alias.scope !501, !noundef !5
  switch i8 %i.d, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 5), !noalias !501
  br label %_RNvXsm_NtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operatorsNtB5_9BlockTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !502
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.f, ptr %i.b, align 8, !noalias !502
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @40)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !502
  br label %_RNvXsm_NtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operatorsNtB5_9BlockTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !502
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.h, ptr %i.a, align 8, !noalias !502
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @42)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !502
  br label %_RNvXsm_NtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operatorsNtB5_9BlockTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

_RNvXsm_NtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operatorsNtB5_9BlockTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.in.i = phi i1 [ %i.e, %bb.b ], [ %i.g, %bb.c ], [ %i.i, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtCskKLDkoKarTP_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef nonnull align 8 ptr @wasm_tabletype_as_externtype(ptr noalias nofree noundef readnone returned align 8 captures(ret: address, provenance) dereferenceable(56) %0) unnamed_addr #5 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef nonnull align 8 ptr @wasm_tabletype_as_externtype_const(ptr noalias nofree noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(56) %0) unnamed_addr #5 {
bb.a:
  ret ptr %0
}

; Function Attrs: nounwind nonlazybind uwtable
define noalias noundef nonnull align 8 ptr @wasm_tabletype_copy(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.7 = alloca [3 x i8], align 1             ; 3 uses
  %.sroa.8.sroa.0 = alloca [20 x i8], align 4     ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = load i8, ptr %0, align 8, !range !12, !noundef !5 ; 3 uses
  %i.e = icmp samesign ugt i8 %i.d, 1
  %i.f = zext nneg i8 %i.d to i64
  %i.g = add nsw i64 %i.f, -1
  %i.h = select i1 %i.e, i64 %i.g, i64 0
  switch i64 %i.h, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.o
    i64 2, label %bb.p
    i64 3, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !519
  %i.i = trunc nuw i8 %i.d to i1                  ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.k = load i16, ptr %i.j, align 2, !alias.scope !518, !noundef !5 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !518, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !519
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !518, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.s = load i8, ptr %i.r, align 2, !alias.scope !518, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.sroa.05.0.copyload.i = load i8, ptr %i.t, align 1, !alias.scope !518
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.46.0.copyload.i = load i32, ptr %.sroa.46.0..sroa_idx.i, align 4, !alias.scope !518
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = zext i8 %.sroa.05.0.copyload.i to i16
  %.sroa.91.0.pre.i = load ptr, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !518
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.v = phi ptr [ %i.m, %bb.g ], [ %.sroa.91.0.pre.i, %bb.e ] ; 2 uses
  %.sroa.6.sroa.5.0.i = phi i16 [ %.sroa.6.sroa.5.0.extract.shift.i, %bb.g ], [ %i.u, %bb.e ]
  %.sroa.6.sroa.0.0.i = phi i8 [ %.sroa.6.sroa.0.0.extract.trunc.i, %bb.g ], [ %i.s, %bb.e ]
  %.sroa.9.0.i = phi i32 [ undef, %bb.g ], [ %.sroa.46.0.copyload.i, %bb.e ]
  %.sroa.5.0.i = phi i8 [ undef, %bb.g ], [ %i.q, %bb.e ]
  %.sroa.0.0.copyload9 = phi i8 [ 1, %bb.g ], [ 0, %bb.e ] ; 2 uses
  %.sroa.10.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.10.0.i = load i64, ptr %.sroa.10.0.in.i, align 8, !alias.scope !518
  %.sroa.6.sroa.5.0.insert.shift.i = shl nuw i16 %.sroa.6.sroa.5.0.i, 8
  %.sroa.6.sroa.0.0.insert.ext.i = zext i8 %.sroa.6.sroa.0.0.i to i16
  %.sroa.6.sroa.0.0.insert.insert.i = or disjoint i16 %.sroa.6.sroa.5.0.insert.shift.i, %.sroa.6.sroa.0.0.insert.ext.i
  store i8 %.sroa.0.0.copyload9, ptr %i.b, align 8, !noalias !519
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store i8 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 1, !noalias !519
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i16 %.sroa.6.sroa.0.0.insert.insert.i, ptr %.sroa.53.0..sroa_idx.i, align 2, !noalias !519
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 %.sroa.9.0.i, ptr %.sroa.6.0..sroa_idx4.i, align 4, !noalias !519
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.v, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !519
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.10.0.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !519
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = invoke { i64, ptr } @_RNvXs5_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_tNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.w)
          to label %bb.l unwind label %bb.k, !noalias !520 ; 2 uses

bb.g:                                             ; preds = %bb.d
  %.sroa.6.sroa.0.0.extract.trunc.i = trunc i16 %i.k to i8
  %.sroa.6.sroa.5.0.extract.shift.i = lshr i16 %i.k, 8
  br label %bb.f

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit.i: ; preds = %bb.m, %bb.k
  br i1 %i.i, label %bb.i, label %.body7

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit.i
  %i.y = atomicrmw add ptr %i.v, i64 -1 release, align 8, !noalias !521
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.j, label %.body7

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i) #19
          to label %.body7 unwind label %bb.n, !noalias !520

bb.k:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit.i

bb.l:                                             ; preds = %bb.f
  %i.ab = extractvalue { i64, ptr } %i.x, 0       ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  store i64 %i.ab, ptr %i.a, align 8, !noalias !519
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !noalias !519
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = invoke { i64, ptr } @_RNvXs5_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_tNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ae)
          to label %bb.r unwind label %bb.m, !noalias !520 ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs8_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_tNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit.i unwind label %bb.n, !noalias !520

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !520
  unreachable

bb.o:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7, ptr noundef nonnull align 1 dereferenceable(3) %i.ai, i64 3, i1 false)
  br label %bb.s

bb.p:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.422.0.copyload = load i64, ptr %.sroa.422.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx23, align 8
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.624.0.copyload = load i64, ptr %.sroa.624.0..sroa_idx, align 8
  %.sroa.8.sroa.0.4..sroa_idx14 = getelementptr inbounds nuw i8, ptr %.sroa.8.sroa.0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.sroa.0.4..sroa_idx14, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false)
  br label %bb.s

bb.q:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.426.0.copyload = load i64, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.527.0.copyload = load ptr, ptr %.sroa.527.0..sroa_idx, align 8
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.628.0.copyload = load i64, ptr %.sroa.628.0..sroa_idx, align 8
  %.sroa.729.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.729.0.copyload = load ptr, ptr %.sroa.729.0..sroa_idx, align 8
  %.sroa.8.sroa.0.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8.sroa.0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.sroa.0.4..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false)
  br label %bb.s

.body7:                                           ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit.i, %bb.i, %bb.j
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #22
  unreachable

bb.r:                                             ; preds = %bb.l
  %i.al = extractvalue { i64, ptr } %i.af, 0
  %i.am = extractvalue { i64, ptr } %i.af, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4.0..sroa_idx.i, i64 3, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8.sroa.0, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6.0..sroa_idx4.i, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !519
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.sroa.8.sroa.9.0 = phi ptr [ %i.am, %bb.r ], [ undef, %bb.o ], [ undef, %bb.p ], [ %.sroa.729.0.copyload, %bb.q ]
  %.sroa.8.sroa.8.0 = phi i64 [ %i.al, %bb.r ], [ undef, %bb.o ], [ %.sroa.624.0.copyload, %bb.p ], [ %.sroa.628.0.copyload, %bb.q ]
  %.sroa.8.sroa.7.0 = phi ptr [ %i.ac, %bb.r ], [ undef, %bb.o ], [ %.sroa.5.0.copyload, %bb.p ], [ %.sroa.527.0.copyload, %bb.q ]
  %.sroa.8.sroa.6.0 = phi i64 [ %i.ab, %bb.r ], [ undef, %bb.o ], [ %.sroa.422.0.copyload, %bb.p ], [ %.sroa.426.0.copyload, %bb.q ]
  %.sroa.0.0 = phi i8 [ %.sroa.0.0.copyload9, %bb.r ], [ 2, %bb.o ], [ 3, %bb.p ], [ 4, %bb.q ]
  store i8 %.sroa.0.0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7, i64 3, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8.sroa.0, i64 20, i1 false)
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.8.sroa.6.0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %.sroa.8.sroa.7.0, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %.sroa.8.sroa.8.0, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %.sroa.8.sroa.9.0, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !522
  %i.an = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 65) 56, i64 noundef range(i64 1, 9) 8) #20, !noalias !522 ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.t, label %bb.w, !prof !7

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #21
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types5table16wasm_tabletype_tEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c) #23
          to label %.body unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

.body:                                            ; preds = %bb.u
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #24
  unreachable

bb.w:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.an, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.an
}

; Function Attrs: nounwind nonlazybind uwtable
define void @wasm_tabletype_delete(ptr noalias noundef nonnull align 8 %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543)
  %i.a = load i8, ptr %0, align 8, !range !12, !alias.scope !544, !noundef !5 ; 2 uses
  %i.b = icmp samesign ult i8 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !545)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !548)
  %1 = icmp eq i8 %i.a, 0
  br i1 %1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !551, !nonnull !5, !noundef !5
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !551
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXs8_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_tNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit.i.i.i.i.i unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXs8_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_tNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types4func9CFuncTypeEBH_.exit.i.i.i.i unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_RNvXs8_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_tNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %.body unwind label %bb.g

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit.i.i.i.i.i

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit.i.i.i.i.i, %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types4func9CFuncTypeEBH_.exit.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_RNvXs8_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_tNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types4func9CFuncTypeEBH_.exit.i.i.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit.i.i.i.i.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 56, i64 noundef 8) #20
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #24
  unreachable

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types4func9CFuncTypeEBH_.exit.i.i.i.i, %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 56, i64 noundef 8) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define noundef nonnull ptr @wasm_tabletype_element(ptr noalias nofree noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(56) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define noundef nonnull align 4 ptr @wasm_tabletype_limits(ptr noalias nofree noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(56) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  ret ptr %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define noalias noundef align 8 ptr @wasm_tabletype_new(ptr noalias noundef nonnull captures(address) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = load i8, ptr %0, align 1, !range !4, !noundef !5
  switch i8 %i.d, label %bb.b [
    i8 5, label %bb.d
    i8 6, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 1, i64 noundef 1) #20
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.04.0 = phi i1 [ true, %bb.c ], [ false, %bb.a ]
  %i.e = load i32, ptr %1, align 4, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !noundef !5 ; 2 uses
  %i.h = icmp ne i32 %i.g, -1
  %. = zext i1 %i.h to i32
  invoke void @_RNvMNtNtCsefoF4u9kbII_5wasmi5table2tyNtB2_9TableType3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, i1 noundef zeroext %.sroa.04.0, i32 noundef %i.e, i32 noundef %., i32 %i.g)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.i, %bb.e
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEB1g_(ptr %0) #23
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #24
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !557
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !558
  store i8 1, ptr %i.a, align 8, !noalias !557
  invoke void @_RNvMs_NtNtCsg6ypMx2A1Am_11wasmi_c_api5types6externNtB4_17wasm_externtype_t16from_extern_type(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !559
  %i.k = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 65) 56, i64 noundef range(i64 1, 9) 8) #20, !noalias !559 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.h, label %bb.k, !prof !7

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #21
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types5table16wasm_tabletype_tEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c) #23
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 1, i64 noundef 1) #20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.b ], [ %i.k, %bb.k ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define noalias noundef nonnull ptr @wasm_valtype_copy(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load i8, ptr %0, align 1
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20
  %i.a = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 65) 1, i64 noundef range(i64 1, 9) 1) #20 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.d, !prof !7

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #21
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #22
  unreachable

bb.d:                                             ; preds = %bb.a
  store i8 %.sroa.0.0.copyload, ptr %i.a, align 1
  ret ptr %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define void @wasm_valtype_delete(ptr noalias noundef nonnull captures(address) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 1, i64 noundef 1) #20
  ret void
}

end_hunk_1
