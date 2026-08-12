inline.NumInlined: 3041
inline.NumDeleted: 1673
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RINvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_orssu_1__NtB5_19DeclarationProviderNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeNtNtNtCs8yjYO7b73r2_10serde_json5value3ser10SerializerECs6u1mgJOKDyY_13rust_analyzer:bb.a
  %.sink.i = phi ptr [ %i.af, %bb.o ], [ %i.ai, %bb.r ], [ %i.ak, %bb.t ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i, ptr %i.al, align 8, !alias.scope !2531, !noalias !2534
  store i64 -1, ptr %0, align 8, !alias.scope !2531, !noalias !2534
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value3ser12SerializeMapECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(96) %i.g), !noalias !2531
  br label %_RINvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuressA_1__NtB5_30DeclarationRegistrationOptionsNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeNtNtNtCs8yjYO7b73r2_10serde_json5value3ser10SerializerECs6u1mgJOKDyY_13rust_analyzer.exit

bb.w:                                             ; preds = %bb.s, %bb.q, %bb.n
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value3ser12SerializeMapECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(96) %i.g) #30
          to label %common.resume unwind label %bb.x, !noalias !2531

bb.x:                                             ; preds = %bb.w
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31, !noalias !2531
  unreachable

_RINvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuressA_1__NtB5_30DeclarationRegistrationOptionsNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeNtNtNtCs8yjYO7b73r2_10serde_json5value3ser10SerializerECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.l, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2536
  br label %bb.y

bb.y:                                             ; preds = %_RINvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuressA_1__NtB5_30DeclarationRegistrationOptionsNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeNtNtNtCs8yjYO7b73r2_10serde_json5value3ser10SerializerECs6u1mgJOKDyY_13rust_analyzer.exit, %_RINvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuress5G_1__NtB5_18DeclarationOptionsNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeNtNtNtCs8yjYO7b73r2_10serde_json5value3ser10SerializerECs6u1mgJOKDyY_13rust_analyzer.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_orssw_1__NtB5_19DeclarationResponseNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeNtNtNtCs8yjYO7b73r2_10serde_json5value3ser10SerializerECs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !170, !noundef !5
  switch i64 %i.a, label %bb.d [
    i64 -2, label %bb.b
    i64 -1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RINvYNtNtNtCs8yjYO7b73r2_10serde_json5value3ser10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer11collect_seqRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures12LocationLinkEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
  br label %_RINvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_orssq_1__NtB5_11DeclarationNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeNtNtNtCs8yjYO7b73r2_10serde_json5value3ser10SerializerECs6u1mgJOKDyY_13rust_analyzer.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RINvYNtNtNtCs8yjYO7b73r2_10serde_json5value3ser10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer11collect_seqRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8LocationEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
  br label %_RINvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_orssq_1__NtB5_11DeclarationNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeNtNtNtCs8yjYO7b73r2_10serde_json5value3ser10SerializerECs6u1mgJOKDyY_13rust_analyzer.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_RINvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuress0_1__NtB5_8LocationNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeNtNtNtCs8yjYO7b73r2_10serde_json5value3ser10SerializerECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1)
  br label %_RINvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_orssq_1__NtB5_11DeclarationNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeNtNtNtCs8yjYO7b73r2_10serde_json5value3ser10SerializerECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_orssq_1__NtB5_11DeclarationNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeNtNtNtCs8yjYO7b73r2_10serde_json5value3ser10SerializerECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext1__NtB5_32InternalTestingFetchConfigOptionNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtNtCs8yjYO7b73r2_10serde_json5value5ValueEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 5 uses
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [72 x i8], align 8                ; 6 uses
  %i.e = alloca [96 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2560)
  %i.f = load i64, ptr %1, align 8, !range !344, !alias.scope !2560, !noalias !2557, !noundef !5 ; 2 uses
  %i.g = xor i64 %i.f, -9223372036854775808
  %i.h = icmp slt i64 %i.f, 0
  %i.i = select i1 %i.h, i64 %i.g, i64 5
  switch i64 %i.i, label %bb.b [
    i64 3, label %.noexc.i
    i64 5, label %bb.f
  ], !prof !2562

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2563
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false), !noalias !2557
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2563
  invoke void @_RNvMsm_NtNtCs8yjYO7b73r2_10serde_json5value2deNtB7_5Value10unexpected(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.d)
          to label %bb.i unwind label %bb.h, !noalias !2563

.noexc.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2563
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !2557
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 -1, ptr %i.k, align 8, !noalias !2563
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2564)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2567
  call void @_RINvXs3_NtNtCs8yjYO7b73r2_10serde_json5value2deNtB6_16EnumDeserializerNtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess12variant_seedINtNtCshzWfHUSfYae_4core6marker11PhantomDataNtNvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext1__NtB2S_32InternalTestingFetchConfigOptionNtB18_11Deserialize11deserialize7___FieldEEB2W_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %i.e), !noalias !2563
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !2569, !noalias !2567, !noundef !5 ; 2 uses
  %i.n = icmp eq i64 %i.m, -2
  %i.o = load ptr, ptr %i.b, align 8, !noalias !2567 ; 2 uses
  br i1 %i.n, label %bb.c, label %.noexc5.i

bb.c:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2567
  br label %bb.e

.noexc5.i:                                        ; preds = %.noexc.i
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.9.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx.i.i, i64 64, i1 false), !noalias !2567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2567
  store i64 %i.m, ptr %i.a, align 8, !noalias !2567
  %i.p = call noundef align 8 ptr @_RNvXs6_NtNtCs8yjYO7b73r2_10serde_json5value2deNtB5_19VariantDeserializerNtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess12unit_variant(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %i.a), !noalias !2563 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.p, null
  br i1 %.not9.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc5.i
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = trunc i64 %i.q to i8
  %..i.i = and i8 %i.r, 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %..i.i, ptr %i.s, align 1, !alias.scope !2570, !noalias !2571
  br label %bb.g

bb.e:                                             ; preds = %.noexc5.i, %bb.c
  %.sink13.i.i = phi ptr [ %i.o, %bb.c ], [ %i.p, %.noexc5.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink13.i.i, ptr %i.t, align 8, !alias.scope !2570, !noalias !2571
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_RINvXs1_NtNtCs8yjYO7b73r2_10serde_json5value2deINtNtBa_3map3MapNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB8_5ValueENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext1__NtB2X_32InternalTestingFetchConfigOptionNtB1P_11Deserialize11deserialize9___VisitorEB31_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @675, i64 noundef 32, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @678, i64 noundef 2), !noalias !5
  br label %_RINvXs2_NtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext1__NtB24_32InternalTestingFetchConfigOptionNtBW_11Deserialize11deserialize9___VisitorEB28_.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sink15.i.i = phi i8 [ 1, %bb.e ], [ 0, %bb.d ]
  store i8 %.sink15.i.i, ptr %0, align 8, !alias.scope !2570, !noalias !2571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2563
  br label %_RINvXs2_NtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext1__NtB24_32InternalTestingFetchConfigOptionNtBW_11Deserialize11deserialize9___VisitorEB28_.exit

bb.h:                                             ; preds = %bb.i, %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json5value5ValueECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(72) %i.d) #30
          to label %.thread.i unwind label %bb.k, !noalias !2563

bb.i:                                             ; preds = %bb.b
  %i.v = invoke noundef nonnull align 8 ptr @_RNvXs6_NtCs8yjYO7b73r2_10serde_json5errorNtB5_5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @842, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @829)
          to label %bb.j unwind label %bb.h, !noalias !2563

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2563
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.w, align 8, !alias.scope !2557, !noalias !2560
  store i8 1, ptr %0, align 8, !alias.scope !2557, !noalias !2560
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json5value5ValueECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(72) %i.d), !noalias !2563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2563
  br label %_RINvXs2_NtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext1__NtB24_32InternalTestingFetchConfigOptionNtBW_11Deserialize11deserialize9___VisitorEB28_.exit

bb.k:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31, !noalias !2557
  unreachable

.thread.i:                                        ; preds = %bb.h
  resume { ptr, i32 } %i.u

_RINvXs2_NtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext1__NtB24_32InternalTestingFetchConfigOptionNtBW_11Deserialize11deserialize9___VisitorEB28_.exit: ; preds = %bb.g, %bb.f, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3exts10_1__NtB5_6HealthNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeNtNtNtCs8yjYO7b73r2_10serde_json5value3ser10SerializerEB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = load i8, ptr %1, align 1, !range !6, !noundef !5
  switch i8 %i.d, label %default.unreachable9 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.f
  ]

default.unreachable9:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2572
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 0, -9223372036854775808) 2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2572
  %i.e = load i64, ptr %i.c, align 8, !range !7, !noalias !2572, !noundef !5
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !49, !noalias !2572, !noundef !5 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.f, label %bb.c, label %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit, !prof !50

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !noalias !2572
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #35, !noalias !2572
  unreachable

_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit: ; preds = %bb.b
  %i.k = load ptr, ptr %i.i, align 8, !noalias !2572, !nonnull !5, !noundef !5 ; 2 uses
  %i.l = icmp ugt i64 %i.h, 1
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2572
  store i16 27503, ptr %i.k, align 1, !noalias !2579
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2580
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, -9223372036854775808) 7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2580
  %i.m = load i64, ptr %i.b, align 8, !range !7, !noalias !2580, !noundef !5
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !49, !noalias !2580, !noundef !5 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.n, label %bb.e, label %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit4, !prof !50

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.q, align 8, !noalias !2580
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #35, !noalias !2580
  unreachable

_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit4: ; preds = %bb.d
  %i.s = load ptr, ptr %i.q, align 8, !noalias !2580, !nonnull !5, !noundef !5 ; 2 uses
  %i.t = icmp ugt i64 %i.p, 6
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2580
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.s, ptr noundef nonnull readonly align 1 dereferenceable(7) @680, i64 range(i64 0, -9223372036854775808) 7, i1 false), !noalias !2587
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2588
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 5, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2588
  %i.u = load i64, ptr %i.a, align 8, !range !7, !noalias !2588, !noundef !5
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !49, !noalias !2588, !noundef !5 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.v, label %bb.g, label %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit8, !prof !50

bb.g:                                             ; preds = %bb.f
  %i.z = load i64, ptr %i.y, align 8, !noalias !2588
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.x, i64 %i.z) #35, !noalias !2588
  unreachable

_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit8: ; preds = %bb.f
  %i.aa = load ptr, ptr %i.y, align 8, !noalias !2588, !nonnull !5, !noundef !5 ; 2 uses
  %i.ab = icmp ugt i64 %i.x, 4
  tail call void @llvm.assume(i1 %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2588
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.aa, ptr noundef nonnull readonly align 1 dereferenceable(5) @681, i64 range(i64 0, -9223372036854775808) 5, i1 false), !noalias !2595
  br label %bb.h

bb.h:                                             ; preds = %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit8, %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit4, %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit
  %.sink11 = phi i64 [ %i.x, %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit8 ], [ %i.p, %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit4 ], [ %i.h, %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit ]
  %.sink10 = phi ptr [ %i.aa, %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit8 ], [ %i.s, %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit4 ], [ %i.k, %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit ]
  %.sink = phi i64 [ 5, %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit8 ], [ 7, %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit4 ], [ 2, %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit ]
  store i64 -9223372036854775805, ptr %0, align 8, !noalias !5
  %.sroa.4.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink11, ptr %.sroa.4.0..sroa_idx.i5, align 8, !noalias !5
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink10, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i6, align 8, !noalias !5
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sink, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i7, align 8, !noalias !5
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3exts12_1__NtB5_10CodeActionNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtNtCs8yjYO7b73r2_10serde_json5value5ValueEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([520 x i8]) align 8 captures(address) dereferenceable(520) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs2_NtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3exts12_1__NtB26_10CodeActionNtBW_11Deserialize11deserialize9___VisitorEB2a_(ptr noalias nofree noundef nonnull sret([520 x i8]) align 8 captures(address) dereferenceable(520) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @682, i64 noundef 10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @686, i64 noundef 7)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3exts13_1__NtB5_10CodeActionNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeNtNtNtCs8yjYO7b73r2_10serde_json5value3ser10SerializerEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(520) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 7 uses
  %i.c = alloca [96 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !range !4, !noundef !5
  %.not = icmp eq i64 %i.e, -1                    ; 2 uses
  %. = select i1 %.not, i64 1, i64 2
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !range !277, !noundef !5
  %.not58 = icmp ne i64 %i.g, -2                  ; 2 uses
  %.sroa.06.0 = zext i1 %.not58 to i64
  %i.h = add nuw nsw i64 %., %.sroa.06.0
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !range !4, !noundef !5
  %.not59 = icmp ne i64 %i.j, -1                  ; 2 uses
  %.sroa.07.0 = zext i1 %.not59 to i64
  %i.k = add nuw nsw i64 %i.h, %.sroa.07.0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !range !170, !noundef !5
  %.not60 = icmp ne i64 %i.m, -2                  ; 2 uses
  %.sroa.08.0 = zext i1 %.not60 to i64
  %i.n = add nuw nsw i64 %i.k, %.sroa.08.0
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !range !6, !noundef !5
  %.not61 = icmp ne i8 %i.p, 2                    ; 2 uses
  %.sroa.09.0 = zext i1 %.not61 to i64
  %i.q = add nuw nsw i64 %i.n, %.sroa.09.0
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !range !4, !noundef !5
  %.not62 = icmp ne i64 %i.s, -1                  ; 2 uses
  %.sroa.010.0 = zext i1 %.not62 to i64
  %i.t = add nuw nsw i64 %i.q, %.sroa.010.0
  call void @_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer16serialize_struct(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @682, i64 noundef 10, i64 noundef %i.t)
  %i.u = load i64, ptr %i.b, align 8, !range !4, !noundef !5 ; 2 uses
  %i.v = icmp eq i64 %i.u, -1
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.y, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.554.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.u, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.x, ptr %.sroa.4.0..sroa_idx, align 8
  %i.z = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.d unwind label %bb.aa      ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.not63 = icmp eq ptr %i.z, null
  br i1 %.not63, label %bb.e, label %bb.y

bb.e:                                             ; preds = %bb.d
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @683, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.g unwind label %bb.aa      ; 2 uses

bb.g:                                             ; preds = %bb.f
  %.not65 = icmp eq ptr %i.aa, null
  br i1 %.not65, label %bb.h, label %bb.y

bb.h:                                             ; preds = %bb.e, %bb.g
  br i1 %.not58, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ab = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations14CodeActionKindEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %bb.j unwind label %bb.aa      ; 2 uses

bb.j:                                             ; preds = %bb.i
  %.not67 = icmp eq ptr %i.ab, null
  br i1 %.not67, label %bb.k, label %bb.y

bb.k:                                             ; preds = %bb.h, %bb.j
  br i1 %.not59, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ac = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures7CommandEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef 7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.i)
          to label %bb.m unwind label %bb.aa      ; 2 uses

bb.m:                                             ; preds = %bb.l
  %.not69 = icmp eq ptr %i.ac, null
  br i1 %.not69, label %bb.n, label %bb.y

bb.n:                                             ; preds = %bb.k, %bb.m
  br i1 %.not60, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ad = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext20SnippetWorkspaceEditEEB2R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @684, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.l)
          to label %bb.p unwind label %bb.aa      ; 2 uses

bb.p:                                             ; preds = %bb.o
  %.not71 = icmp eq ptr %i.ad, null
  br i1 %.not71, label %bb.q, label %bb.y

bb.q:                                             ; preds = %bb.n, %bb.p
  br i1 %.not61, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ae = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionbEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @685, i64 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.o)
          to label %bb.s unwind label %bb.aa      ; 2 uses

bb.s:                                             ; preds = %bb.r
  %.not73 = icmp eq ptr %i.ae, null
  br i1 %.not73, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.q, %bb.s
  br i1 %.not62, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.af = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext14CodeActionDataEEB2R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.r)
          to label %bb.v unwind label %bb.aa      ; 2 uses

bb.v:                                             ; preds = %bb.u
  %.not75 = icmp eq ptr %i.af, null
  br i1 %.not75, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.t, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  call void @_RNvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB5_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct3end(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.x

bb.x:                                             ; preds = %bb.b, %bb.y, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.y:                                             ; preds = %bb.v, %bb.s, %bb.p, %bb.m, %bb.j, %bb.g, %bb.d
  %.sink = phi ptr [ %i.ae, %bb.s ], [ %i.ad, %bb.p ], [ %i.ac, %bb.m ], [ %i.ab, %bb.j ], [ %i.aa, %bb.g ], [ %i.z, %bb.d ], [ %i.af, %bb.v ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ag, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value3ser12SerializeMapECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c)
  br label %bb.x

bb.z:                                             ; preds = %bb.aa
  resume { ptr, i32 } %lpad.thr_comm

bb.aa:                                            ; preds = %bb.l, %bb.u, %bb.f, %bb.r, %bb.i, %bb.o, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value3ser12SerializeMapECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c) #30
          to label %bb.z unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3exts15_1__NtB5_14CodeActionDataNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeNtNtNtCs8yjYO7b73r2_10serde_json5value3ser10SerializerEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 7 uses
  %i.c = alloca [96 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
end_hunk_0
begin_hunk_1_@_RINvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3exts1M_1__NtB5_16CompletionImportNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeNtNtNtCs8yjYO7b73r2_10serde_json5value3ser10SerializerEB9_:bb.a
  store ptr %i.g, ptr %i.h, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.515.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.d, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  %i.i = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @715, i64 noundef 16, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.d unwind label %bb.k       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldbECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @716, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.j)
          to label %bb.f unwind label %bb.k       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %.not19 = icmp eq ptr %i.k, null
  br i1 %.not19, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  call void @_RNvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB5_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct3end(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.i:                                             ; preds = %bb.f, %bb.d
  %.sink = phi ptr [ %i.i, %bb.d ], [ %i.k, %bb.f ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.l, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value3ser12SerializeMapECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c)
  br label %bb.h

bb.j:                                             ; preds = %bb.k
  resume { ptr, i32 } %lpad.thr_comm

bb.k:                                             ; preds = %bb.e, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value3ser12SerializeMapECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c) #30
          to label %bb.j unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3exts1N_1__NtB5_16CompletionImportNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtNtCs8yjYO7b73r2_10serde_json5value5ValueEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs2_NtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3exts1N_1__NtB26_16CompletionImportNtBW_11Deserialize11deserialize9___VisitorEB2a_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @714, i64 noundef 16, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @717, i64 noundef 2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3exts1O_1__NtB5_20ClientCommandOptionsNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtNtCs8yjYO7b73r2_10serde_json5value5ValueEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs2_NtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3exts1O_1__NtB26_20ClientCommandOptionsNtBW_11Deserialize11deserialize9___VisitorEB2a_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @718, i64 noundef 20, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @719, i64 noundef 1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3exts1P_1__NtB5_23EvaluatePredicateParamsNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtNtCs8yjYO7b73r2_10serde_json5value5ValueEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([120 x i8]) align 8 captures(address) dereferenceable(120) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs2_NtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3exts1P_1__NtB26_23EvaluatePredicateParamsNtBW_11Deserialize11deserialize9___VisitorEB2a_(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @720, i64 noundef 23, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @721, i64 noundef 3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3exts1S_1__NtB5_23EvaluatePredicateResultNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeNtNtNtCs8yjYO7b73r2_10serde_json5value3ser10SerializerEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 7 uses
  %i.c = alloca [96 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer16serialize_struct(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @722, i64 noundef 23, i64 noundef 2)
  %i.d = load i64, ptr %i.b, align 8, !range !4, !noundef !5 ; 2 uses
  %i.e = icmp eq i64 %i.d, -1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.515.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.d, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext25PredicateEvaluationStatusEB2f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @723, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.i)
          to label %bb.d unwind label %bb.k       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.k = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.f unwind label %bb.k       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %.not19 = icmp eq ptr %i.k, null
  br i1 %.not19, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  call void @_RNvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB5_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct3end(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.i:                                             ; preds = %bb.f, %bb.d
  %.sink = phi ptr [ %i.j, %bb.d ], [ %i.k, %bb.f ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.l, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value3ser12SerializeMapECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c)
  br label %bb.h

bb.j:                                             ; preds = %bb.k
  resume { ptr, i32 } %lpad.thr_comm

bb.k:                                             ; preds = %bb.e, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value3ser12SerializeMapECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c) #30
          to label %bb.j unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3exts1U_1__NtB5_25PredicateEvaluationStatusNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeNtNtNtCs8yjYO7b73r2_10serde_json5value3ser10SerializerEB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = load i8, ptr %1, align 1, !range !1142, !noundef !5
  switch i8 %i.e, label %default.unreachable13 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.f
    i8 3, label %bb.h
  ]

default.unreachable13:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2638
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, -9223372036854775808) 5, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2638
  %i.f = load i64, ptr %i.d, align 8, !range !7, !noalias !2638, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !49, !noalias !2638, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.g, label %bb.c, label %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit, !prof !50

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !noalias !2638
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #35, !noalias !2638
  unreachable

_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit: ; preds = %bb.b
  %i.l = load ptr, ptr %i.j, align 8, !noalias !2638, !nonnull !5, !noundef !5 ; 2 uses
  %i.m = icmp ugt i64 %i.i, 4
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2638
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.l, ptr noundef nonnull readonly align 1 dereferenceable(5) @724, i64 range(i64 0, -9223372036854775808) 5, i1 false), !noalias !2645
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2646
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 0, -9223372036854775808) 9, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2646
  %i.n = load i64, ptr %i.c, align 8, !range !7, !noalias !2646, !noundef !5
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !49, !noalias !2646, !noundef !5 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.o, label %bb.e, label %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit4, !prof !50

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.r, align 8, !noalias !2646
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.s) #35, !noalias !2646
  unreachable

_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit4: ; preds = %bb.d
  %i.t = load ptr, ptr %i.r, align 8, !noalias !2646, !nonnull !5, !noundef !5 ; 2 uses
  %i.u = icmp ugt i64 %i.q, 8
  tail call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2646
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.t, ptr noundef nonnull readonly align 1 dereferenceable(9) @725, i64 range(i64 0, -9223372036854775808) 9, i1 false), !noalias !2653
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2654
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, -9223372036854775808) 7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2654
  %i.v = load i64, ptr %i.b, align 8, !range !7, !noalias !2654, !noundef !5
  %i.w = trunc nuw i64 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !49, !noalias !2654, !noundef !5 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.w, label %bb.g, label %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit8, !prof !50

bb.g:                                             ; preds = %bb.f
  %i.aa = load i64, ptr %i.z, align 8, !noalias !2654
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.y, i64 %i.aa) #35, !noalias !2654
  unreachable

_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit8: ; preds = %bb.f
  %i.ab = load ptr, ptr %i.z, align 8, !noalias !2654, !nonnull !5, !noundef !5 ; 2 uses
  %i.ac = icmp ugt i64 %i.y, 6
  tail call void @llvm.assume(i1 %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2654
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ab, ptr noundef nonnull readonly align 1 dereferenceable(7) @726, i64 range(i64 0, -9223372036854775808) 7, i1 false), !noalias !2661
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2662
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 11, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2662
  %i.ad = load i64, ptr %i.a, align 8, !range !7, !noalias !2662, !noundef !5
  %i.ae = trunc nuw i64 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !49, !noalias !2662, !noundef !5 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ae, label %bb.i, label %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit12, !prof !50

bb.i:                                             ; preds = %bb.h
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !2662
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.ag, i64 %i.ai) #35, !noalias !2662
  unreachable

_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit12: ; preds = %bb.h
  %i.aj = load ptr, ptr %i.ah, align 8, !noalias !2662, !nonnull !5, !noundef !5 ; 2 uses
  %i.ak = icmp ugt i64 %i.ag, 10
  tail call void @llvm.assume(i1 %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2662
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.aj, ptr noundef nonnull readonly align 1 dereferenceable(11) @727, i64 range(i64 0, -9223372036854775808) 11, i1 false), !noalias !2669
  br label %bb.j

bb.j:                                             ; preds = %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit12, %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit8, %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit4, %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit
  %.sink15 = phi i64 [ %i.ag, %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit12 ], [ %i.y, %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit8 ], [ %i.q, %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit4 ], [ %i.i, %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit ]
  %.sink14 = phi ptr [ %i.aj, %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit12 ], [ %i.ab, %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit8 ], [ %i.t, %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit4 ], [ %i.l, %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit ]
  %.sink = phi i64 [ 11, %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit12 ], [ 7, %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit8 ], [ 9, %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit4 ], [ 5, %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit ]
  store i64 -9223372036854775805, ptr %0, align 8, !noalias !5
  %.sroa.4.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink15, ptr %.sroa.4.0..sroa_idx.i9, align 8, !noalias !5
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink14, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i10, align 8, !noalias !5
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sink, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i11, align 8, !noalias !5
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3exts1V_1__NtB5_26GetFailedObligationsParamsNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtNtCs8yjYO7b73r2_10serde_json5value5ValueEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs2_NtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3exts1V_1__NtB26_26GetFailedObligationsParamsNtBW_11Deserialize11deserialize9___VisitorEB2a_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @728, i64 noundef 26, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @157, i64 noundef 2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3exts1_1__NtB5_34InternalTestingFetchConfigResponseNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeNtNtNtCs8yjYO7b73r2_10serde_json5value3ser10SerializerEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !range !35, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB5_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer25serialize_newtype_variantbECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @729, i64 noundef 34, i32 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @677, i64 noundef 14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.c)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB5_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer25serialize_newtype_variantbECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @729, i64 noundef 34, i32 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @676, i64 noundef 17, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3exts1c_1__NtB5_15SnippetTextEditNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeINtNtNtNtCsaUNMb2qFvZy_5serde7private2de7content22ContentRefDeserializerNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCsaUNMb2qFvZy_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs8yjYO7b73r2_10serde_json5error5ErrorENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3exts1c_1__NtB3c_15SnippetTextEditNtB22_11Deserialize11deserialize9___VisitorEB3g_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @300, i64 noundef 15, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @731, i64 noundef 4)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3exts1d_1__NtB5_15SnippetTextEditNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeNtNtNtCs8yjYO7b73r2_10serde_json5value3ser10SerializerEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 7 uses
  %i.c = alloca [96 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !6, !noundef !5
  %.not = icmp eq i8 %i.e, 2                      ; 2 uses
  %. = select i1 %.not, i64 2, i64 3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !range !4, !noundef !5
  %.not33 = icmp ne i64 %i.g, -1                  ; 2 uses
  %.sroa.06.0 = zext i1 %.not33 to i64
  %i.h = add nuw nsw i64 %., %.sroa.06.0
  call void @_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer16serialize_struct(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @300, i64 noundef 15, i64 noundef %i.h)
  %i.i = load i64, ptr %i.b, align 8, !range !4, !noundef !5 ; 2 uses
  %i.j = icmp eq i64 %i.i, -1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.m, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.529.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.i, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.n)
          to label %bb.d unwind label %bb.q       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.not34 = icmp eq ptr %i.o, null
  br i1 %.not34, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.p = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @90, i64 noundef 7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.f unwind label %bb.q       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %.not35 = icmp eq ptr %i.p, null
  br i1 %.not35, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations16InsertTextFormatEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.d)
          to label %bb.i unwind label %bb.q       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %.not37 = icmp eq ptr %i.q, null
  br i1 %.not37, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.g, %bb.i
  br i1 %.not33, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.r = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %bb.l unwind label %bb.q       ; 2 uses

bb.l:                                             ; preds = %bb.k
  %.not39 = icmp eq ptr %i.r, null
  br i1 %.not39, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.j, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  call void @_RNvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB5_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct3end(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.n:                                             ; preds = %bb.b, %bb.o, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.o:                                             ; preds = %bb.l, %bb.i, %bb.f, %bb.d
  %.sink = phi ptr [ %i.q, %bb.i ], [ %i.p, %bb.f ], [ %i.o, %bb.d ], [ %i.r, %bb.l ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.s, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value3ser12SerializeMapECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c)
  br label %bb.n

bb.p:                                             ; preds = %bb.q
  resume { ptr, i32 } %lpad.thr_comm

bb.q:                                             ; preds = %bb.e, %bb.k, %bb.c, %bb.h
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value3ser12SerializeMapECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c) #30
          to label %bb.p unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3exts1e_1__NtB5_11HoverParamsNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtNtCs8yjYO7b73r2_10serde_json5value5ValueEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs2_NtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer15deserialize_mapNtNvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3exts1e_1__NtB23_11HoverParamsNtBW_11Deserialize11deserialize9___VisitorEB27_(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3exts1g_1__NtB5_15PositionOrRangeNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeINtNvNtNtCsaUNMb2qFvZy_5serde7private2de13missing_field24MissingFieldDeserializerNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEEB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvYINtNvNtNtCsaUNMb2qFvZy_5serde7private2de13missing_field24MissingFieldDeserializerNtNtCs8yjYO7b73r2_10serde_json5error5ErrorENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer24___deserialize_content_v1NtNtB8_7content14ContentVisitorECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.e = load i8, ptr %i.c, align 8, !range !308, !noundef !5 ; 2 uses
  %i.f = icmp eq i8 %i.e, -1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !align !127, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8
  store i32 1, ptr %0, align 8
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.410.0..sroa_idx, i64 7, i1 false)
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
end_hunk_1
begin_hunk_2_@_RINvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3extsZ_1__NtB5_18ServerStatusParamsNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeNtNtNtCs8yjYO7b73r2_10serde_json5value3ser10SerializerEB9_:bb.a
bb.c:                                             ; preds = %bb.a
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.518.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.d, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.j = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext6HealthEB2f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @790, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.i)
          to label %bb.d unwind label %bb.m       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldbECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @791, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.k)
          to label %bb.f unwind label %bb.m       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %.not22 = icmp eq ptr %i.l, null
  br i1 %.not22, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.m = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.h unwind label %bb.m       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %.not23 = icmp eq ptr %i.m, null
  br i1 %.not23, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  call void @_RNvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB5_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct3end(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.k, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.k:                                             ; preds = %bb.h, %bb.f, %bb.d
  %.sink = phi ptr [ %i.l, %bb.f ], [ %i.j, %bb.d ], [ %i.m, %bb.h ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.n, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value3ser12SerializeMapECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c)
  br label %bb.j

bb.l:                                             ; preds = %bb.m
  resume { ptr, i32 } %lpad.thr_comm

bb.m:                                             ; preds = %bb.g, %bb.e, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value3ser12SerializeMapECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c) #30
          to label %bb.l unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3extsb_1__NtB5_25FetchDependencyListResultNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeNtNtNtCs8yjYO7b73r2_10serde_json5value3ser10SerializerEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 7 uses
  %i.c = alloca [96 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer16serialize_struct(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @792, i64 noundef 25, i64 noundef 1)
  %i.d = load i64, ptr %i.b, align 8, !range !4, !noundef !5 ; 2 uses
  %i.e = icmp eq i64 %i.d, -1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.512.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.d, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  %i.i = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext15CrateInfoResultEEB2M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @793, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.d unwind label %bb.i       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.j, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value3ser12SerializeMapECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  call void @_RNvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB5_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct3end(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.h:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.k

bb.i:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value3ser12SerializeMapECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c) #30
          to label %bb.h unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3extsc_1__NtB5_20ViewSyntaxTreeParamsNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtNtCs8yjYO7b73r2_10serde_json5value5ValueEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs2_NtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3extsc_1__NtB26_20ViewSyntaxTreeParamsNtBW_11Deserialize11deserialize9___VisitorEB2a_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @794, i64 noundef 20, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @67, i64 noundef 1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3extse_1__NtB5_20ViewCrateGraphParamsNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtNtCs8yjYO7b73r2_10serde_json5value5ValueEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs2_NtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3extse_1__NtB26_20ViewCrateGraphParamsNtBW_11Deserialize11deserialize9___VisitorEB2a_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @795, i64 noundef 20, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @796, i64 noundef 1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3extsg_1__NtB5_18ViewItemTreeParamsNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtNtCs8yjYO7b73r2_10serde_json5value5ValueEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs2_NtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3extsg_1__NtB26_18ViewItemTreeParamsNtBW_11Deserialize11deserialize9___VisitorEB2a_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @797, i64 noundef 18, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @67, i64 noundef 1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3extsi_1__NtB5_18DiscoverTestParamsNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtNtCs8yjYO7b73r2_10serde_json5value5ValueEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs2_NtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3extsi_1__NtB26_18DiscoverTestParamsNtBW_11Deserialize11deserialize9___VisitorEB2a_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @798, i64 noundef 18, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @800, i64 noundef 1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3extsl_1__NtB5_12TestItemKindNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeNtNtNtCs8yjYO7b73r2_10serde_json5value3ser10SerializerEB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = load i8, ptr %1, align 1, !range !6, !noundef !5
  switch i8 %i.d, label %default.unreachable9 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.f
  ]

default.unreachable9:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2733
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 0, -9223372036854775808) 7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2733
  %i.e = load i64, ptr %i.c, align 8, !range !7, !noalias !2733, !noundef !5
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !49, !noalias !2733, !noundef !5 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.f, label %bb.c, label %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit, !prof !50

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !noalias !2733
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #35, !noalias !2733
  unreachable

_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit: ; preds = %bb.b
  %i.k = load ptr, ptr %i.i, align 8, !noalias !2733, !nonnull !5, !noundef !5 ; 2 uses
  %i.l = icmp ugt i64 %i.h, 6
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2733
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.k, ptr noundef nonnull readonly align 1 dereferenceable(7) @801, i64 range(i64 0, -9223372036854775808) 7, i1 false), !noalias !2740
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2741
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, -9223372036854775808) 6, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2741
  %i.m = load i64, ptr %i.b, align 8, !range !7, !noalias !2741, !noundef !5
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !49, !noalias !2741, !noundef !5 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.n, label %bb.e, label %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit4, !prof !50

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.q, align 8, !noalias !2741
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #35, !noalias !2741
  unreachable

_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit4: ; preds = %bb.d
  %i.s = load ptr, ptr %i.q, align 8, !noalias !2741, !nonnull !5, !noundef !5 ; 2 uses
  %i.t = icmp ugt i64 %i.p, 5
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2741
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.s, ptr noundef nonnull readonly align 1 dereferenceable(6) @802, i64 range(i64 0, -9223372036854775808) 6, i1 false), !noalias !2748
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2749
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 4, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2749
  %i.u = load i64, ptr %i.a, align 8, !range !7, !noalias !2749, !noundef !5
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !49, !noalias !2749, !noundef !5 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.v, label %bb.g, label %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit8, !prof !50

bb.g:                                             ; preds = %bb.f
  %i.z = load i64, ptr %i.y, align 8, !noalias !2749
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.x, i64 %i.z) #35, !noalias !2749
  unreachable

_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit8: ; preds = %bb.f
  %i.aa = load ptr, ptr %i.y, align 8, !noalias !2749, !nonnull !5, !noundef !5 ; 2 uses
  %i.ab = icmp ugt i64 %i.x, 3
  tail call void @llvm.assume(i1 %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2749
  store i32 1953719668, ptr %i.aa, align 1, !noalias !2756
  br label %bb.h

bb.h:                                             ; preds = %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit8, %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit4, %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit
  %.sink11 = phi i64 [ %i.x, %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit8 ], [ %i.p, %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit4 ], [ %i.h, %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit ]
  %.sink10 = phi ptr [ %i.aa, %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit8 ], [ %i.s, %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit4 ], [ %i.k, %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit ]
  %.sink = phi i64 [ 4, %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit8 ], [ 6, %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit4 ], [ 7, %_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant.exit ]
  store i64 -9223372036854775805, ptr %0, align 8, !noalias !5
  %.sroa.4.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink11, ptr %.sroa.4.0..sroa_idx.i5, align 8, !noalias !5
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink10, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i6, align 8, !noalias !5
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sink, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i7, align 8, !noalias !5
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3extsn_1__NtB5_8TestItemNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeNtNtNtCs8yjYO7b73r2_10serde_json5value3ser10SerializerEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(504) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 7 uses
  %i.c = alloca [96 x i8], align 8                ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer16serialize_struct(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @804, i64 noundef 8, i64 noundef 8)
  %i.d = load i64, ptr %i.b, align 8, !range !4, !noundef !5 ; 2 uses
  %i.e = icmp eq i64 %i.d, -1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.533.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.d, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  %i.i = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @151, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.d unwind label %bb.w       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.u

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.f unwind label %bb.w       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %.not37 = icmp eq ptr %i.k, null
  br i1 %.not37, label %bb.g, label %bb.u

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 501
  %i.m = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext12TestItemKindEB2f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.l)
          to label %bb.h unwind label %bb.w       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %.not38 = icmp eq ptr %i.m, null
  br i1 %.not38, label %bb.i, label %bb.u

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 500
  %i.o = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldbECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @805, i64 noundef 18, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.n)
          to label %bb.j unwind label %bb.w       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %.not39 = icmp eq ptr %i.o, null
  br i1 %.not39, label %bb.k, label %bb.u

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @441, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
          to label %bb.l unwind label %bb.w       ; 2 uses

bb.l:                                             ; preds = %bb.k
  %.not40 = icmp eq ptr %i.q, null
  br i1 %.not40, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.s = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures22TextDocumentIdentifierEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.r)
          to label %bb.n unwind label %bb.w       ; 2 uses

bb.n:                                             ; preds = %bb.m
  %.not41 = icmp eq ptr %i.s, null
  br i1 %.not41, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.u = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.t)
          to label %bb.p unwind label %bb.w       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %.not42 = icmp eq ptr %i.u, null
  br i1 %.not42, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.w = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext8RunnableEEB2R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @788, i64 noundef 8, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(320) %i.v)
          to label %bb.r unwind label %bb.w       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %.not43 = icmp eq ptr %i.w, null
  br i1 %.not43, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  call void @_RNvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB5_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct3end(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.t

bb.t:                                             ; preds = %bb.b, %bb.u, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.u:                                             ; preds = %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d
  %.sink = phi ptr [ %i.u, %bb.p ], [ %i.s, %bb.n ], [ %i.q, %bb.l ], [ %i.o, %bb.j ], [ %i.m, %bb.h ], [ %i.k, %bb.f ], [ %i.i, %bb.d ], [ %i.w, %bb.r ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.x, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value3ser12SerializeMapECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c)
  br label %bb.t

bb.v:                                             ; preds = %bb.w
  resume { ptr, i32 } %lpad.thr_comm

bb.w:                                             ; preds = %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value3ser12SerializeMapECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c) #30
          to label %bb.v unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3extsp_1__NtB5_19DiscoverTestResultsNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeNtNtNtCs8yjYO7b73r2_10serde_json5value3ser10SerializerEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 7 uses
  %i.c = alloca [96 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer16serialize_struct(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @806, i64 noundef 19, i64 noundef 3)
  %i.d = load i64, ptr %i.b, align 8, !range !4, !noundef !5 ; 2 uses
  %i.e = icmp eq i64 %i.d, -1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.518.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.d, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  %i.i = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext8TestItemEEB2M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @807, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.d unwind label %bb.m       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtB2Q_6string6StringEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @808, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.f unwind label %bb.m       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %.not22 = icmp eq ptr %i.k, null
  br i1 %.not22, label %bb.g, label %bb.k

end_hunk_2
