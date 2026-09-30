Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi_c_api-15f02cf232a6f4a0.wasmi_c_api.bb97e6f20a774834-cgu.07?download=true
inline.NumInlined: 189
inline.NumDeleted: 100
begin_hunk_0_@_RINvMNtCsefoF4u9kbII_5wasmi5valueNtB3_3Val14unwrap_raw_valINtNtNtB5_5store7context12StoreContextuEECsg6ypMx2A1Am_11wasmi_c_api:bb.a
  %i.g = load i64, ptr %i.f, align 8, !noundef !5
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !noundef !5
  %i.j = zext i32 %i.i to i64
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noundef !5
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.sroa.09.0.copyload = load i128, ptr %i.m, align 1 ; 2 uses
  %i.n = trunc i128 %.sroa.09.0.copyload to i64
  %i.o = lshr i128 %.sroa.09.0.copyload, 64
  %i.p = trunc nuw i128 %i.o to i64
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load i32, ptr %i.q, align 4, !noundef !5 ; 2 uses
  %.not10 = icmp eq i32 %i.r, 0
  br i1 %.not10, label %bb.k, label %bb.j

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.t = load <2 x i32>, ptr %i.s, align 4
  %i.u = load i32, ptr %i.s, align 4, !noundef !5
  store <2 x i32> %i.t, ptr %i.a, align 8
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.n, label %bb.m

bb.i:                                             ; preds = %bb.n, %bb.k, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.8.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ %i.p, %bb.f ], [ 0, %bb.k ], [ 0, %bb.n ]
  %.sroa.0.0 = phi i64 [ %i.e, %bb.b ], [ %i.g, %bb.c ], [ %i.j, %bb.d ], [ %i.l, %bb.e ], [ %i.n, %bb.f ], [ %i.aa, %bb.k ], [ %i.af, %bb.n ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0, ptr %i.w, align 8
  store i64 1, ptr %0, align 8
  br label %bb.p

bb.j:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i32, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 1576
  %.val = load i32, ptr %i.z, align 8, !noundef !5
  %.not.i.i.not.i = icmp eq i32 %i.y, %.val
  br i1 %.not.i.i.not.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.g, %bb.j
  %i.aa = zext i32 %i.r to i64
  br label %bb.i

bb.l:                                             ; preds = %bb.j
  store i64 0, ptr %0, align 8
  br label %bb.p

bb.m:                                             ; preds = %bb.h
  %i.ab = call { i32, i32 } @_RINvMsl_NtCsefoF4u9kbII_5wasmi7reftypeNtB6_9ExternRef10unwrap_rawINtNtNtB8_5store7context12StoreContextuEECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1688) %2) ; 2 uses
  %i.ac = extractvalue { i32, i32 } %i.ab, 0
  %i.ad = extractvalue { i32, i32 } %i.ab, 1
  %i.ae = trunc i32 %i.ac to i1
  br i1 %i.ae, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.h, %bb.m
  %.sroa.67.0 = phi i32 [ %i.ad, %bb.m ], [ 0, %bb.h ]
  %i.af = zext i32 %.sroa.67.0 to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.o:                                             ; preds = %bb.m
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.o, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RINvMs0_NtNtCsefoF4u9kbII_5wasmi4func2tyNtB6_8FuncType12match_paramsNtNtBa_5value3ValECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 384307168202282326) %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvMs0_NtNtCsefoF4u9kbII_5wasmi4func2tyNtB5_8FuncType6params(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
  %i.b = extractvalue { ptr, i64 } %i.a, 1
  %.not = icmp eq i64 %i.b, %2
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { ptr, i64 } @_RNvMs0_NtNtCsefoF4u9kbII_5wasmi4func2tyNtB5_8FuncType6params(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 3 uses
  %i.e = extractvalue { ptr, i64 } %i.c, 1
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
  %3 = trunc nuw i64 %i.b to i1
  %.sroa.0.0.v.i = select i1 %3, i64 24, i64 8
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
  %3 = trunc nuw i64 %i.b to i1
  %.sroa.0.0.v.i = select i1 %3, i64 24, i64 8
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
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.u, %bb.e ], [ %i.aq, %bb.n ], [ %i.aq, %bb.m ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.v = load i8, ptr %i.d, align 8, !range !8, !alias.scope !85, !noalias !80, !noundef !5
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %.body, label %bb.f

bb.f:                                             ; preds = %.body.i
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.x = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !88, !noalias !80, !nonnull !5, !noundef !5
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !89
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.g, label %.body

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx) #19
          to label %.body unwind label %bb.o, !noalias !80

bb.h:                                             ; preds = %bb.d
  %i.aa = extractvalue { ptr, i64 } %i.t, 0       ; 3 uses
  %i.ab = extractvalue { ptr, i64 } %i.t, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  %i.ad = invoke { ptr, i64 } @_RNvMs0_NtNtCsefoF4u9kbII_5wasmi4func2tyNtB5_8FuncType7results(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.i unwind label %bb.e, !noalias !80 ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.ae = invoke { ptr, i64 } @_RNvMs0_NtNtCsefoF4u9kbII_5wasmi4func2tyNtB5_8FuncType6params(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.j unwind label %bb.e, !noalias !80

bb.j:                                             ; preds = %bb.i
  %i.af = extractvalue { ptr, i64 } %i.ad, 0      ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.ad, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !90
  store ptr %i.aa, ptr %i.a, align 8, !alias.scope !91, !noalias !90
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ac, ptr %i.ai, align 8, !alias.scope !91, !noalias !90
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.af, ptr %i.aj, align 8, !alias.scope !91, !noalias !90
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.ah, ptr %i.ak, align 8, !alias.scope !91, !noalias !90
  %i.al = invoke { ptr, i64 } @_RINvXsb_NtNtCsexYYUdYSQU6_5alloc5boxed4iterINtB8_3BoxSNtNtCsefoF4u9kbII_5wasmi5value3ValEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB1w_8adapters5chain5ChainINtNtB2I_3map3MapINtNtB2I_6copied6CopiedINtNtNtB1y_5slice4iter4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEENvMBS_BQ_14default_for_tyEB39_EECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.k unwind label %bb.e, !noalias !80 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.am = extractvalue { ptr, i64 } %i.al, 0      ; 3 uses
  %i.an = extractvalue { ptr, i64 } %i.al, 1      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !90
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !92
  %i.ao = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 65) 48, i64 noundef range(i64 1, 9) 8) #20, !noalias !92 ; 10 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.l, label %bb.u, !prof !7

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #21
          to label %.noexc8.i unwind label %bb.m, !noalias !80

.noexc8.i:                                        ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = icmp eq i64 %i.an, 0
  br i1 %i.ar, label %.body.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  %i.as = mul nuw nsw i64 %i.an, 24
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.am, i64 noundef range(i64 1, -9223372036854775808) %i.as, i64 noundef 8) #20, !noalias !93
  br label %.body.i

bb.o:                                             ; preds = %bb.g
  %i.at = landingpad { ptr, i32 }
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
  %.pn = phi { ptr, i32 } [ %i.cg, %bb.ai ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.g ], [ %eh.lpad-body.i, %bb.f ], [ %i.ba, %bb.t ], [ %i.bs, %bb.ad ], [ %i.bs, %bb.ac ]
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.au = load i8, ptr %1, align 8, !range !8, !alias.scope !97, !noundef !5
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit, label %bb.r

bb.r:                                             ; preds = %.body
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !100, !nonnull !5, !noundef !5
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !100
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aw) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit unwind label %bb.aj

bb.t:                                             ; preds = %bb.ae
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %bb.k
  %i.bb = extractvalue { ptr, i64 } %i.ae, 1
  store i64 1, ptr %i.ao, align 8, !noalias !80
  %.sroa.4.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx9.i, align 8, !noalias !80
  %.sroa.5.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
end_hunk_0
begin_hunk_1_@_RINvMs9_NtCsefoF4u9kbII_5wasmi4funcNtB6_4Func3newuINtNtNtB8_5store7context15StoreContextMutuENCINvNtCsg6ypMx2A1Am_11wasmi_c_api4func15create_functionNCNvB1y_22wasm_func_new_with_env0E0EB1A_:bb.a

bb.n:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void @_RNvXs0_NtCsg6ypMx2A1Am_11wasmi_c_api5utilsNtB5_11ForeignDataNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aw)
          to label %.body.i unwind label %bb.o, !noalias !188

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ax = landingpad { ptr, i32 }
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
  %.pn = phi { ptr, i32 } [ %i.cj, %bb.ai ], [ %eh.lpad-body11.i, %.body.i ], [ %eh.lpad-body11.i, %bb.m ], [ %eh.lpad-body11.i, %bb.l ], [ %i.be, %bb.t ], [ %i.bv, %bb.ad ], [ %i.bv, %bb.ac ]
  call void @llvm.experimental.noalias.scope.decl(metadata !203)
  call void @llvm.experimental.noalias.scope.decl(metadata !204)
  call void @llvm.experimental.noalias.scope.decl(metadata !205)
  %i.ay = load i8, ptr %1, align 8, !range !8, !alias.scope !206, !noundef !5
  %i.az = icmp eq i8 %i.ay, 0
  br i1 %i.az, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit, label %bb.r

bb.r:                                             ; preds = %.body
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !209, !nonnull !5, !noundef !5
  %i.bc = atomicrmw sub ptr %i.bb, i64 1 release, align 8, !noalias !209
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ba) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit unwind label %bb.aj

bb.t:                                             ; preds = %bb.ae
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.am, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !alias.scope !193, !noalias !210
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 5 uses
  store ptr %i.am, ptr %i.bf, align 8, !alias.scope !188, !noalias !211
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr @4, ptr %i.bg, align 8, !alias.scope !188, !noalias !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bh = atomicrmw add ptr %i.am, i64 1 monotonic, align 8
  %i.bi = icmp slt i64 %i.bh, 0
  br i1 %i.bi, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bj = invoke { i64, i32 } @_RNvMs1_NtCsefoF4u9kbII_5wasmi5storeINtB5_5StoreuE16alloc_trampolineCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %0, ptr noundef nonnull %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @4)
          to label %bb.x unwind label %bb.ai      ; 2 uses

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bk = extractvalue { i64, i32 } %i.bj, 1
  %i.bl = extractvalue { i64, i32 } %i.bj, 0
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 224
  invoke void @_RNvMs0_NtCsefoF4u9kbII_5wasmi4funcNtB5_14HostFuncEntity3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.bl, i32 noundef %i.bk)
          to label %bb.y unwind label %bb.ai

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  store i64 1, ptr %i.c, align 8
  %i.bo = invoke { i32, i32 } @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner10alloc_func(ptr noalias nofree noundef nonnull align 8 dereferenceable(1584) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.z unwind label %bb.ai

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !212)
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.bp = load i8, ptr %i.f, align 8, !range !8, !alias.scope !216, !noundef !5
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i16, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !217)
  call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !219, !nonnull !5, !noundef !5
  %i.bt = atomicrmw sub ptr %i.bs, i64 1 release, align 8, !noalias !219
  %i.bu = icmp eq i64 %i.bt, 1
  br i1 %i.bu, label %bb.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i16

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.br) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i16 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  call void @llvm.experimental.noalias.scope.decl(metadata !221)
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %i.bw = load ptr, ptr %i.bf, align 8, !alias.scope !223, !nonnull !5, !noundef !5
  %i.bx = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !224
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.ad, label %.body

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_uENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB2h_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB4d_4SyncEL_E9drop_slowCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bf) #19
          to label %.body unwind label %bb.af

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i16: ; preds = %bb.ab, %bb.aa, %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.bz = load ptr, ptr %i.bf, align 8, !alias.scope !228, !nonnull !5, !noundef !5
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !noalias !229
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.ae, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func24HostFuncTrampolineEntityuEECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.ae:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i16
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_uENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB2h_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB4d_4SyncEL_E9drop_slowCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bf) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func24HostFuncTrampolineEntityuEECsg6ypMx2A1Am_11wasmi_c_api.exit unwind label %bb.t

bb.af:                                            ; preds = %bb.ad
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func24HostFuncTrampolineEntityuEECsg6ypMx2A1Am_11wasmi_c_api.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i16, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !230)
  call void @llvm.experimental.noalias.scope.decl(metadata !231)
  call void @llvm.experimental.noalias.scope.decl(metadata !232)
  %i.cd = load i8, ptr %1, align 8, !range !8, !alias.scope !233, !noundef !5
  %i.ce = icmp eq i8 %i.cd, 0
  br i1 %i.ce, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit20, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func24HostFuncTrampolineEntityuEECsg6ypMx2A1Am_11wasmi_c_api.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !234)
  call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !236, !nonnull !5, !noundef !5
  %i.ch = atomicrmw sub ptr %i.cg, i64 1 release, align 8, !noalias !236
  %i.ci = icmp eq i64 %i.ch, 1
  br i1 %i.ci, label %bb.ah, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit20

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.cf) #19
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit20

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit20: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func24HostFuncTrampolineEntityuEECsg6ypMx2A1Am_11wasmi_c_api.exit, %bb.ag, %bb.ah
  ret { i32, i32 } %i.bo

bb.ai:                                            ; preds = %bb.w, %bb.x, %bb.y
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func24HostFuncTrampolineEntityuEECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 dereferenceable(40) %i.f) #23
          to label %.body unwind label %bb.aj

bb.aj:                                            ; preds = %bb.s, %bb.ai
  %i.ck = landingpad { ptr, i32 }
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %i.d = tail call noundef nonnull align 8 ptr @_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner12resolve_func(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1688) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %0), !noalias !255 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !range !11, !noalias !255, !noundef !5
  %6 = trunc nuw i64 %i.e to i1
  %.sroa.0.0.v.i.i = select i1 %6, i64 24, i64 8
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.0.v.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !256
  store ptr %2, ptr %i.b, align 8, !noalias !256
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.f, align 8, !noalias !256
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %4, ptr %i.g, align 8, !noalias !256
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %5, ptr %i.h, align 8, !noalias !256
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !254, !noalias !257, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = call noundef range(i8 -1, 5) i8 @_RINvMs8_NtCsefoF4u9kbII_5wasmi6engineNtB6_11EngineInner17resolve_func_typeNCINvMs9_NtB8_4funcNtB1j_4Func33verify_and_prepare_inputs_outputsINtNtNtB8_5store7context12StoreContextuEE0INtNtCskKLDkoKarTP_4core6result6ResultuNtNtB1j_5error9FuncErrorEECsg6ypMx2A1Am_11wasmi_c_api(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !256
  %.not = icmp eq i8 %i.l, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.l, ptr %i.m, align 1
  store i8 18, ptr %i.a, align 8
  %i.n = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.val11 = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.o = atomicrmw add ptr %.val11, i64 1 monotonic, align 8
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = atomicrmw sub ptr %.val11, i64 1 release, align 8, !noalias !258
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsefoF4u9kbII_5wasmi6engine11EngineInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECsg6ypMx2A1Am_11wasmi_c_api.exit unwind label %bb.j

bb.g:                                             ; preds = %bb.c
  store ptr %.val11, ptr %i.c, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.val11, i64 16
  %i.u = invoke noundef align 8 ptr @_RINvMNtNtCsefoF4u9kbII_5wasmi6engine8executorNtB5_11EngineInner12execute_funcuRSNtNtB7_5value3ValQB1f_ECsg6ypMx2A1Am_11wasmi_c_api(ptr noundef nonnull align 8 %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 384307168202282326) %3, ptr noalias nofree noundef nonnull align 8 %4, i64 noundef range(i64 0, 384307168202282326) %5)
          to label %_RINvMs1_NtCsefoF4u9kbII_5wasmi6engineNtB6_6Engine12execute_funcuRSNtNtB8_5value3ValQB11_ECsg6ypMx2A1Am_11wasmi_c_api.exit unwind label %bb.e

_RINvMs1_NtCsefoF4u9kbII_5wasmi6engineNtB6_6Engine12execute_funcuRSNtNtB8_5value3ValQB11_ECsg6ypMx2A1Am_11wasmi_c_api.exit: ; preds = %bb.g
  %i.v = atomicrmw sub ptr %.val11, i64 1 release, align 8, !noalias !259
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECsg6ypMx2A1Am_11wasmi_c_api.exit14

bb.h:                                             ; preds = %_RINvMs1_NtCsefoF4u9kbII_5wasmi6engineNtB6_6Engine12execute_funcuRSNtNtB8_5value3ValQB11_ECsg6ypMx2A1Am_11wasmi_c_api.exit
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsefoF4u9kbII_5wasmi6engine11EngineInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #19
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECsg6ypMx2A1Am_11wasmi_c_api.exit14

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECsg6ypMx2A1Am_11wasmi_c_api.exit14: ; preds = %_RINvMs1_NtCsefoF4u9kbII_5wasmi6engineNtB6_6Engine12execute_funcuRSNtNtB8_5value3ValQB11_ECsg6ypMx2A1Am_11wasmi_c_api.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECsg6ypMx2A1Am_11wasmi_c_api.exit14, %bb.b
  %.sroa.0.0 = phi ptr [ %i.n, %bb.b ], [ %i.u, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECsg6ypMx2A1Am_11wasmi_c_api.exit14 ]
  ret ptr %.sroa.0.0

bb.j:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineECsg6ypMx2A1Am_11wasmi_c_api.exit: ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.q
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func24HostFuncTrampolineEntityuEECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  %i.a = load i8, ptr %0, align 8, !range !8, !alias.scope !285, !noundef !5
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !288, !nonnull !5, !noundef !5
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !288
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !292, !nonnull !5, !noundef !5
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !292
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func16TrampolineEntityuEECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_uENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB2h_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB4d_4SyncEL_E9drop_slowCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func16TrampolineEntityuEECsg6ypMx2A1Am_11wasmi_c_api.exit unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit: ; preds = %bb.b, %bb.a, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !296, !nonnull !5, !noundef !5
  %i.n = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !296
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func16TrampolineEntityuEECsg6ypMx2A1Am_11wasmi_c_api.exit2

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_uENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB2h_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB4d_4SyncEL_E9drop_slowCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l) #19
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func16TrampolineEntityuEECsg6ypMx2A1Am_11wasmi_c_api.exit2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func16TrampolineEntityuEECsg6ypMx2A1Am_11wasmi_c_api.exit2: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit, %bb.f
  ret void

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func16TrampolineEntityuEECsg6ypMx2A1Am_11wasmi_c_api.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNCINvMs5_NtCsefoF4u9kbII_5wasmi4funcINtB1n_24HostFuncTrampolineEntityuE3newNCINvNtCsg6ypMx2A1Am_11wasmi_c_api4func15create_functionNCNvB2w_22wasm_func_new_with_env0E0E0EEB2y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load i64, ptr %i.a, align 8, !alias.scope !299, !noundef !5 ; 2 uses
  %i.b = icmp eq i64 %.val1.i, 0
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs5_NtCsefoF4u9kbII_5wasmi4funcINtBK_24HostFuncTrampolineEntityuE3newNCINvNtCsg6ypMx2A1Am_11wasmi_c_api4func15create_functionNCNvB1S_22wasm_func_new_with_env0E0E0EB1U_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !299, !nonnull !5, !noundef !5
  %i.d = mul nuw nsw i64 %.val1.i, 24
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.d, i64 noundef 8) #20, !noalias !299
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
end_hunk_1
