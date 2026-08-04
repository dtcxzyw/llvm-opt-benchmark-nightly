inline.NumInlined: 3041
inline.NumDeleted: 1673
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RINvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuress7K_1__NtB5_20SignatureHelpOptionsNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeNtNtNtCs8yjYO7b73r2_10serde_json5value3ser10SerializerECs6u1mgJOKDyY_13rust_analyzer:bb.a
bb.i:                                             ; preds = %bb.k, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !987)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !990
  %i.q = load i8, ptr %i.p, align 8, !range !6, !alias.scope !987, !noalias !992, !noundef !5
  %.not.i = icmp eq i8 %i.q, 2
  br i1 %.not.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.d, ptr %i.a, align 8, !noalias !990
  %i.r = invoke noundef align 8 ptr @_RINvXs6_NtNtCsaUNMb2qFvZy_5serde7private3serINtB6_22FlatMapSerializeStructNtNtNtCs8yjYO7b73r2_10serde_json5value3ser12SerializeMapENtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionbEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @394, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.p)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %bb.j
  %.not17.i = icmp eq ptr %i.r, null
  br i1 %.not17.i, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %.not24 = icmp eq ptr %i.o, null
  br i1 %.not24, label %bb.i, label %bb.g

bb.l:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !990
  br label %bb.g

bb.m:                                             ; preds = %bb.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !990
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false)
  call void @_RNvXs4_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB5_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap3end(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.n:                                             ; preds = %bb.b, %bb.g, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.o:                                             ; preds = %bb.p
  resume { ptr, i32 } %lpad.thr_comm

bb.p:                                             ; preds = %bb.j, %bb.h, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value3ser12SerializeMapECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(96) %i.d) #30
          to label %bb.o unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuress7P_1__NtB5_16ReferenceContextNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeINtNvNtNtCsaUNMb2qFvZy_5serde7private2de13missing_field24MissingFieldDeserializerNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEECs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXNvNtNtCsaUNMb2qFvZy_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs8yjYO7b73r2_10serde_json5error5ErrorENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuress7P_1__NtB3f_16ReferenceContextNtB28_11Deserialize11deserialize9___VisitorECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuress7P_1__NtB5_16ReferenceContextNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtNtCs8yjYO7b73r2_10serde_json5value5ValueECs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs2_NtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuress7P_1__NtB26_16ReferenceContextNtBW_11Deserialize11deserialize9___VisitorECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @228, i64 noundef 16, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @230, i64 noundef 1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuress7Y_1__NtB5_17CodeActionContextNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeNtNtNtCs8yjYO7b73r2_10serde_json5value3ser10SerializerECs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 7 uses
  %i.c = alloca [96 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !range !4, !noundef !5
  %.not = icmp eq i64 %i.e, -1                    ; 2 uses
  %. = select i1 %.not, i64 1, i64 2
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !range !6, !noundef !5
  %.not30 = icmp ne i8 %i.g, 2                    ; 2 uses
  %.sroa.06.0 = zext i1 %.not30 to i64
  %i.h = add nuw nsw i64 %., %.sroa.06.0
  call void @_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer16serialize_struct(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @232, i64 noundef 17, i64 noundef %i.h)
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
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.526.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.i, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  %i.n = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @98, i64 noundef 11, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.d unwind label %bb.o       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.not31 = icmp eq ptr %i.n, null
  br i1 %.not31, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations14CodeActionKindEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @233, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.g unwind label %bb.o       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %.not33 = icmp eq ptr %i.o, null
  br i1 %.not33, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.e, %bb.g
  br i1 %.not30, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.p = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations21CodeActionTriggerKindEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @219, i64 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.f)
          to label %bb.j unwind label %bb.o       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %.not35 = icmp eq ptr %i.p, null
  br i1 %.not35, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.h, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  call void @_RNvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB5_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct3end(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.m, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.m:                                             ; preds = %bb.j, %bb.g, %bb.d
  %.sink = phi ptr [ %i.o, %bb.g ], [ %i.n, %bb.d ], [ %i.p, %bb.j ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.q, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value3ser12SerializeMapECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c)
  br label %bb.l

bb.n:                                             ; preds = %bb.o
  resume { ptr, i32 } %lpad.thr_comm

bb.o:                                             ; preds = %bb.f, %bb.i, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value3ser12SerializeMapECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c) #30
          to label %bb.n unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuress7Z_1__NtB5_17CodeActionContextNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtNtCs8yjYO7b73r2_10serde_json5value5ValueECs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs2_NtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuress7Z_1__NtB26_17CodeActionContextNtBW_11Deserialize11deserialize9___VisitorECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @232, i64 noundef 17, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @234, i64 noundef 3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuress7d_1__NtB5_32WorkspaceFoldersInitializeParamsNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeINtNtNtCsaUNMb2qFvZy_5serde7private2de19FlatMapDeserializerNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEECs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs6_NtNtCsaUNMb2qFvZy_5serde7private2deINtB6_19FlatMapDeserializerNtNtCs8yjYO7b73r2_10serde_json5error5ErrorENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuress7d_1__NtB2Z_32WorkspaceFoldersInitializeParamsNtB1P_11Deserialize11deserialize9___VisitorECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @235, i64 noundef 32, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @237, i64 noundef 1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuress7e_1__NtB5_18ServerCapabilitiesNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeNtNtNtCs8yjYO7b73r2_10serde_json5value3ser10SerializerECs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1592) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 7 uses
  %i.c = alloca [96 x i8], align 8                ; 44 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1464 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !range !993, !noundef !5
  %.not = icmp ne i64 %i.e, -2                    ; 2 uses
  %. = zext i1 %.not to i64
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1576 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !range !994, !noundef !5
  %.not265 = icmp ne i8 %i.g, -2                  ; 2 uses
  %.sroa.06.0 = zext i1 %.not265 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !range !170, !noundef !5
  %.not266 = icmp ne i64 %i.i, -2                 ; 2 uses
  %.sroa.07.0 = zext i1 %.not266 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !170, !noundef !5
  %.not267 = icmp ne i64 %i.k, -2                 ; 2 uses
  %.sroa.08.0 = zext i1 %.not267 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1560 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !range !6, !noundef !5
  %.not268 = icmp ne i8 %i.m, 2                   ; 2 uses
  %.sroa.09.0 = zext i1 %.not268 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !range !170, !noundef !5
  %.not269 = icmp ne i64 %i.o, -2                 ; 2 uses
  %.sroa.010.0 = zext i1 %.not269 to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 816 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !range !995, !noundef !5
  %.not270 = icmp ne i64 %i.q, -2                 ; 2 uses
  %.sroa.011.0 = zext i1 %.not270 to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1562 ; 2 uses
  %i.s = load i8, ptr %i.r, align 2, !range !6, !noundef !5
  %.not271 = icmp ne i8 %i.s, 2                   ; 2 uses
  %.sroa.012.0 = zext i1 %.not271 to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 872 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !range !995, !noundef !5
  %.not272 = icmp ne i64 %i.u, -2                 ; 2 uses
  %.sroa.013.0 = zext i1 %.not272 to i64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 928 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !range !995, !noundef !5
  %.not273 = icmp ne i64 %i.w, -2                 ; 2 uses
  %.sroa.014.0 = zext i1 %.not273 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1564 ; 2 uses
  %i.y = load i8, ptr %i.x, align 4, !range !6, !noundef !5
  %.not274 = icmp ne i8 %i.y, 2                   ; 2 uses
  %.sroa.015.0 = zext i1 %.not274 to i64
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 1566 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 2, !range !6, !noundef !5
  %.not275 = icmp ne i8 %i.aa, 2                  ; 2 uses
  %.sroa.016.0 = zext i1 %.not275 to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 424 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !range !205, !noundef !5
  %.not276 = icmp ne i64 %i.ac, -3                ; 2 uses
  %.sroa.017.0 = zext i1 %.not276 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !range !205, !noundef !5
  %.not277 = icmp ne i64 %i.ae, -3                ; 2 uses
  %.sroa.018.0 = zext i1 %.not277 to i64
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 1572 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 4, !range !864, !noundef !5
  %.not278 = icmp ne i8 %i.ag, -1                 ; 2 uses
  %.sroa.019.0 = zext i1 %.not278 to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 1574 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 2, !range !864, !noundef !5
  %.not279 = icmp ne i8 %i.ai, -1                 ; 2 uses
  %.sroa.020.0 = zext i1 %.not279 to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 984 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !range !995, !noundef !5
  %.not280 = icmp ne i64 %i.ak, -2                ; 2 uses
  %.sroa.021.0 = zext i1 %.not280 to i64
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 1582 ; 2 uses
  %i.am = load i8, ptr %i.al, align 2, !range !994, !noundef !5
  %.not281 = icmp ne i8 %i.am, -2                 ; 2 uses
  %.sroa.022.0 = zext i1 %.not281 to i64
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1568 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 8, !range !6, !noundef !5
  %.not282 = icmp ne i8 %i.ao, 2                  ; 2 uses
  %.sroa.023.0 = zext i1 %.not282 to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 1584 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8, !range !994, !noundef !5
  %.not283 = icmp ne i8 %i.aq, -2                 ; 2 uses
  %.sroa.024.0 = zext i1 %.not283 to i64
  %i.ar = load i64, ptr %1, align 8, !range !4, !noundef !5
  %.not284 = icmp ne i64 %i.ar, -1                ; 2 uses
  %.sroa.025.0 = zext i1 %.not284 to i64
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 1586 ; 2 uses
  %i.at = load i8, ptr %i.as, align 2, !range !994, !noundef !5
  %.not285 = icmp ne i8 %i.at, -2                 ; 2 uses
  %.sroa.026.0 = zext i1 %.not285 to i64
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 1040 ; 2 uses
  %3 = load i64, ptr %2, align 8, !range !995, !noundef !5
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 1096 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !range !995, !noundef !5
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %5 = load i64, ptr %4, align 8, !range !4, !noundef !5
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 1152 ; 2 uses
  %7 = load i64, ptr %6, align 8, !range !995, !noundef !5
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 1208 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !range !995, !noundef !5
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %9 = load i64, ptr %8, align 8, !range !170, !noundef !5
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 1264 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 1296 ; 2 uses
  %11 = load i64, ptr %i.ay, align 8, !range !995, !noundef !5
  %i.az = load i64, ptr %10, align 8, !range !995, !noundef !5
  %.not293 = icmp ne i64 %11, -2                  ; 2 uses
  %.not292 = icmp ne i64 %i.az, -2                ; 2 uses
  %.not291.a = icmp ne i64 %9, -2                 ; 2 uses
  %.not290 = icmp ne i64 %i.ax, -2                ; 2 uses
  %.not289 = icmp ne i64 %7, -2                   ; 2 uses
  %.not288 = icmp ne i64 %5, -1                   ; 2 uses
  %.not287 = icmp ne i64 %i.av, -2                ; 2 uses
  %.not286.a = icmp ne i64 %3, -2                 ; 2 uses
  %12 = insertelement <8 x i1> poison, i1 %.not286.a, i64 0
  %13 = insertelement <8 x i1> %12, i1 %.not287, i64 1
  %14 = insertelement <8 x i1> %13, i1 %.not288, i64 2
  %15 = insertelement <8 x i1> %14, i1 %.not289, i64 3
  %16 = insertelement <8 x i1> %15, i1 %.not290, i64 4
  %17 = insertelement <8 x i1> %16, i1 %.not291.a, i64 5
  %18 = insertelement <8 x i1> %17, i1 %.not292, i64 6
  %19 = insertelement <8 x i1> %18, i1 %.not293, i64 7
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 1352 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !range !995, !noundef !5
  %.not294.a = icmp ne i64 %i.bb, -2              ; 2 uses
  %.sroa.035.0.a = zext i1 %.not294.a to i64
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 1408 ; 2 uses
  %21 = load i64, ptr %20, align 8, !range !995, !noundef !5
  %.not295 = icmp ne i64 %21, -2                  ; 2 uses
  %.sroa.036.0 = zext i1 %.not295 to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !range !205, !noundef !5
  %.not296.a = icmp ne i64 %i.bd, -3              ; 2 uses
  %.sroa.037.0.a = zext i1 %.not296.a to i64
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 1570 ; 2 uses
  %23 = load i8, ptr %22, align 2, !range !6, !noundef !5
  %.not297 = icmp ne i8 %23, 2                    ; 2 uses
  %.sroa.038.0 = zext i1 %.not297 to i64
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 592 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !range !205, !noundef !5
  %.not298.a = icmp ne i64 %i.bf, -3              ; 2 uses
  %.sroa.039.0.a = zext i1 %.not298.a to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 1488 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !range !52, !noundef !5
  %.not299.a = icmp ne i64 %i.bh, -1              ; 2 uses
  %.sroa.040.0.a = zext i1 %.not299.a to i64
  %24 = bitcast <8 x i1> %19 to i8
  %25 = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %24)
  %26 = zext nneg i8 %25 to i64
  %op.rdx = add nuw nsw i64 %26, %.sroa.06.0
  %op.rdx413 = add nuw nsw i64 %., %.sroa.07.0
  %op.rdx414 = add nuw nsw i64 %.sroa.08.0, %.sroa.09.0
  %op.rdx415 = add nuw nsw i64 %.sroa.010.0, %.sroa.011.0
  %op.rdx416 = add nuw nsw i64 %.sroa.012.0, %.sroa.013.0
  %op.rdx417 = add nuw nsw i64 %.sroa.014.0, %.sroa.015.0
  %op.rdx418 = add nuw nsw i64 %.sroa.016.0, %.sroa.017.0
  %op.rdx419 = add nuw nsw i64 %.sroa.018.0, %.sroa.019.0
  %op.rdx420 = add nuw nsw i64 %.sroa.020.0, %.sroa.021.0
  %op.rdx421 = add nuw nsw i64 %.sroa.022.0, %.sroa.023.0
  %op.rdx422 = add nuw nsw i64 %.sroa.024.0, %.sroa.025.0
  %op.rdx423 = add nuw nsw i64 %.sroa.026.0, %.sroa.035.0.a
  %op.rdx424 = add nuw nsw i64 %.sroa.036.0, %.sroa.037.0.a
  %op.rdx425 = add nuw nsw i64 %.sroa.038.0, %.sroa.039.0.a
  %op.rdx426 = add nuw nsw i64 %op.rdx, %op.rdx413
  %op.rdx427 = add nuw nsw i64 %op.rdx414, %op.rdx415
  %op.rdx428 = add nuw nsw i64 %op.rdx416, %op.rdx417
  %op.rdx429 = add nuw nsw i64 %op.rdx418, %op.rdx419
  %op.rdx430 = add nuw nsw i64 %op.rdx420, %op.rdx421
  %op.rdx431 = add nuw nsw i64 %op.rdx422, %op.rdx423
  %op.rdx432 = add nuw nsw i64 %op.rdx424, %op.rdx425
  %op.rdx433 = add nuw nsw i64 %op.rdx426, %op.rdx427
  %op.rdx434 = add nuw nsw i64 %op.rdx428, %op.rdx429
  %op.rdx435 = add nuw nsw i64 %op.rdx430, %op.rdx431
  %op.rdx436 = add nuw nsw i64 %op.rdx432, %.sroa.040.0.a
  %op.rdx437 = add nuw nsw i64 %op.rdx433, %op.rdx434
  %op.rdx438 = add nuw nsw i64 %op.rdx435, %op.rdx436
  %op.rdx439 = add nuw nsw i64 %op.rdx437, %op.rdx438
  call void @_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer16serialize_struct(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @238, i64 noundef 18, i64 noundef %op.rdx439)
  %i.bi = load i64, ptr %i.b, align 8, !range !4, !noundef !5 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, -1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  br i1 %i.bj, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bl, ptr %i.bm, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.dh

bb.c:                                             ; preds = %bb.a
  %.sroa.5261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5261.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.bi, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.bl, ptr %.sroa.4.0..sroa_idx, align 8
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.bn = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations20PositionEncodingKindEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @239, i64 noundef 16, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.e unwind label %bb.dk      ; 2 uses

bb.e:                                             ; preds = %bb.d
  %.not301 = icmp eq ptr %i.bn, null
  br i1 %.not301, label %bb.f, label %bb.di

bb.f:                                             ; preds = %bb.c, %bb.e
  br i1 %.not265, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bo = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors16TextDocumentSyncEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(6) %i.f)
          to label %bb.h unwind label %bb.dk      ; 2 uses

bb.h:                                             ; preds = %bb.g
  %.not303 = icmp eq ptr %i.bo, null
  br i1 %.not303, label %bb.i, label %bb.di

bb.i:                                             ; preds = %bb.f, %bb.h
  br i1 %.not266, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bp = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors20NotebookDocumentSyncEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @241, i64 noundef 20, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.h)
          to label %bb.k unwind label %bb.dk      ; 2 uses

bb.k:                                             ; preds = %bb.j
  %.not305 = icmp eq ptr %i.bp, null
  br i1 %.not305, label %bb.l, label %bb.di

bb.l:                                             ; preds = %bb.i, %bb.k
  br i1 %.not267, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bq = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures17CompletionOptionsEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @242, i64 noundef 18, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.j)
          to label %bb.n unwind label %bb.dk      ; 2 uses

bb.n:                                             ; preds = %bb.m
  %.not307 = icmp eq ptr %i.bq, null
  br i1 %.not307, label %bb.o, label %bb.di

bb.o:                                             ; preds = %bb.l, %bb.n
  br i1 %.not268, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.br = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors13HoverProviderEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @243, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.l)
          to label %bb.q unwind label %bb.dk      ; 2 uses

bb.q:                                             ; preds = %bb.p
  %.not309 = icmp eq ptr %i.br, null
  br i1 %.not309, label %bb.r, label %bb.di

bb.r:                                             ; preds = %bb.o, %bb.q
  br i1 %.not269, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bs = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures20SignatureHelpOptionsEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @244, i64 noundef 21, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.n)
          to label %bb.t unwind label %bb.dk      ; 2 uses

bb.t:                                             ; preds = %bb.s
  %.not311 = icmp eq ptr %i.bs, null
  br i1 %.not311, label %bb.u, label %bb.di

bb.u:                                             ; preds = %bb.r, %bb.t
  br i1 %.not270, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bt = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors19DeclarationProviderEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @245, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.p)
          to label %bb.w unwind label %bb.dk      ; 2 uses

bb.w:                                             ; preds = %bb.v
  %.not313 = icmp eq ptr %i.bt, null
  br i1 %.not313, label %bb.x, label %bb.di

bb.x:                                             ; preds = %bb.u, %bb.w
  br i1 %.not271, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.bu = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors18DefinitionProviderEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @246, i64 noundef 18, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.r)
          to label %bb.z unwind label %bb.dk      ; 2 uses

bb.z:                                             ; preds = %bb.y
  %.not315 = icmp eq ptr %i.bu, null
  br i1 %.not315, label %bb.aa, label %bb.di

bb.aa:                                            ; preds = %bb.x, %bb.z
  br i1 %.not272, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.bv = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors22TypeDefinitionProviderEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @247, i64 noundef 22, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.t)
          to label %bb.ac unwind label %bb.dk     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %.not317 = icmp eq ptr %i.bv, null
  br i1 %.not317, label %bb.ad, label %bb.di

bb.ad:                                            ; preds = %bb.aa, %bb.ac
  br i1 %.not273, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.bw = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors22ImplementationProviderEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @248, i64 noundef 22, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.v)
          to label %bb.af unwind label %bb.dk     ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %.not319 = icmp eq ptr %i.bw, null
  br i1 %.not319, label %bb.ag, label %bb.di

bb.ag:                                            ; preds = %bb.ad, %bb.af
  br i1 %.not274, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.bx = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors18ReferencesProviderEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @249, i64 noundef 18, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.x)
          to label %bb.ai unwind label %bb.dk     ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  %.not321 = icmp eq ptr %i.bx, null
  br i1 %.not321, label %bb.aj, label %bb.di

bb.aj:                                            ; preds = %bb.ag, %bb.ai
  br i1 %.not275, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.by = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors25DocumentHighlightProviderEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @250, i64 noundef 25, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.z)
          to label %bb.al unwind label %bb.dk     ; 2 uses

bb.al:                                            ; preds = %bb.ak
  %.not323 = icmp eq ptr %i.by, null
  br i1 %.not323, label %bb.am, label %bb.di

bb.am:                                            ; preds = %bb.aj, %bb.al
  br i1 %.not276, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.bz = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors22DocumentSymbolProviderEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @251, i64 noundef 22, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ab)
          to label %bb.ao unwind label %bb.dk     ; 2 uses

bb.ao:                                            ; preds = %bb.an
  %.not325 = icmp eq ptr %i.bz, null
  br i1 %.not325, label %bb.ap, label %bb.di

bb.ap:                                            ; preds = %bb.am, %bb.ao
  br i1 %.not277, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.ca = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors18CodeActionProviderEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @252, i64 noundef 18, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ad)
          to label %bb.ar unwind label %bb.dk     ; 2 uses

bb.ar:                                            ; preds = %bb.aq
  %.not327 = icmp eq ptr %i.ca, null
  br i1 %.not327, label %bb.as, label %bb.di

bb.as:                                            ; preds = %bb.ap, %bb.ar
  br i1 %.not278, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.cb = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15CodeLensOptionsEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @253, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.af)
          to label %bb.au unwind label %bb.dk     ; 2 uses

bb.au:                                            ; preds = %bb.at
  %.not329 = icmp eq ptr %i.cb, null
  br i1 %.not329, label %bb.av, label %bb.di

bb.av:                                            ; preds = %bb.as, %bb.au
  br i1 %.not279, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.cc = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures19DocumentLinkOptionsEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @254, i64 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.ah)
          to label %bb.ax unwind label %bb.dk     ; 2 uses

bb.ax:                                            ; preds = %bb.aw
  %.not331 = icmp eq ptr %i.cc, null
  br i1 %.not331, label %bb.ay, label %bb.di

bb.ay:                                            ; preds = %bb.av, %bb.ax
  br i1 %.not280, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.cd = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors13ColorProviderEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @255, i64 noundef 13, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.aj)
          to label %bb.ba unwind label %bb.dk     ; 2 uses

bb.ba:                                            ; preds = %bb.az
  %.not333 = icmp eq ptr %i.cd, null
  br i1 %.not333, label %bb.bb, label %bb.di

bb.bb:                                            ; preds = %bb.ay, %bb.ba
  br i1 %.not281, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.ce = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors23WorkspaceSymbolProviderEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @256, i64 noundef 23, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.al)
          to label %bb.bd unwind label %bb.dk     ; 2 uses

bb.bd:                                            ; preds = %bb.bc
  %.not335 = icmp eq ptr %i.ce, null
  br i1 %.not335, label %bb.be, label %bb.di

bb.be:                                            ; preds = %bb.bb, %bb.bd
  br i1 %.not282, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.cf = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors26DocumentFormattingProviderEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @257, i64 noundef 26, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.an)
          to label %bb.bg unwind label %bb.dk     ; 2 uses

bb.bg:                                            ; preds = %bb.bf
  %.not337 = icmp eq ptr %i.cf, null
  br i1 %.not337, label %bb.bh, label %bb.di

bb.bh:                                            ; preds = %bb.be, %bb.bg
  br i1 %.not283, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.cg = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors31DocumentRangeFormattingProviderEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @258, i64 noundef 31, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.ap)
          to label %bb.bj unwind label %bb.dk     ; 2 uses

bb.bj:                                            ; preds = %bb.bi
  %.not339 = icmp eq ptr %i.cg, null
  br i1 %.not339, label %bb.bk, label %bb.di

bb.bk:                                            ; preds = %bb.bh, %bb.bj
  br i1 %.not284, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.ch = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures31DocumentOnTypeFormattingOptionsEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @259, i64 noundef 32, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.bm unwind label %bb.dk     ; 2 uses

bb.bm:                                            ; preds = %bb.bl
  %.not341 = icmp eq ptr %i.ch, null
  br i1 %.not341, label %bb.bn, label %bb.di

bb.bn:                                            ; preds = %bb.bk, %bb.bm
  br i1 %.not285, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.ci = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors14RenameProviderEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @260, i64 noundef 14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.as)
          to label %bb.bp unwind label %bb.dk     ; 2 uses

bb.bp:                                            ; preds = %bb.bo
  %.not343 = icmp eq ptr %i.ci, null
  br i1 %.not343, label %bb.bq, label %bb.di

bb.bq:                                            ; preds = %bb.bn, %bb.bp
  br i1 %.not286.a, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.cj = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors20FoldingRangeProviderEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @261, i64 noundef 20, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %2)
          to label %bb.bs unwind label %bb.dk     ; 2 uses

bb.bs:                                            ; preds = %bb.br
  %.not345 = icmp eq ptr %i.cj, null
  br i1 %.not345, label %bb.bt, label %bb.di

bb.bt:                                            ; preds = %bb.bq, %bb.bs
  br i1 %.not287, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.ck = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors22SelectionRangeProviderEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @262, i64 noundef 22, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.au)
          to label %bb.bv unwind label %bb.dk     ; 2 uses

bb.bv:                                            ; preds = %bb.bu
  %.not347 = icmp eq ptr %i.ck, null
  br i1 %.not347, label %bb.bw, label %bb.di

bb.bw:                                            ; preds = %bb.bt, %bb.bv
  br i1 %.not288, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  %i.cl = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures21ExecuteCommandOptionsEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @263, i64 noundef 22, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4)
          to label %bb.by unwind label %bb.dk     ; 2 uses

bb.by:                                            ; preds = %bb.bx
  %.not349 = icmp eq ptr %i.cl, null
  br i1 %.not349, label %bb.bz, label %bb.di

bb.bz:                                            ; preds = %bb.bw, %bb.by
  br i1 %.not289, label %bb.ca, label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  %i.cm = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors21CallHierarchyProviderEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @264, i64 noundef 21, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %6)
          to label %bb.cb unwind label %bb.dk     ; 2 uses

bb.cb:                                            ; preds = %bb.ca
  %.not351 = icmp eq ptr %i.cm, null
  br i1 %.not351, label %bb.cc, label %bb.di

bb.cc:                                            ; preds = %bb.bz, %bb.cb
  br i1 %.not290, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %i.cn = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors26LinkedEditingRangeProviderEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @265, i64 noundef 26, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.aw)
          to label %bb.ce unwind label %bb.dk     ; 2 uses

bb.ce:                                            ; preds = %bb.cd
  %.not353 = icmp eq ptr %i.cn, null
  br i1 %.not353, label %bb.cf, label %bb.di

bb.cf:                                            ; preds = %bb.cc, %bb.ce
  br i1 %.not291.a, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.co = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors22SemanticTokensProviderEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @266, i64 noundef 22, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %8)
          to label %bb.ch unwind label %bb.dk     ; 2 uses

bb.ch:                                            ; preds = %bb.cg
  %.not355 = icmp eq ptr %i.co, null
  br i1 %.not355, label %bb.ci, label %bb.di

bb.ci:                                            ; preds = %bb.cf, %bb.ch
  br i1 %.not292, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  %i.cp = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors15MonikerProviderEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @267, i64 noundef 15, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %10)
          to label %bb.ck unwind label %bb.dk     ; 2 uses

bb.ck:                                            ; preds = %bb.cj
  %.not357 = icmp eq ptr %i.cp, null
  br i1 %.not357, label %bb.cl, label %bb.di

bb.cl:                                            ; preds = %bb.ci, %bb.ck
  br i1 %.not293, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %i.cq = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors21TypeHierarchyProviderEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @268, i64 noundef 21, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ay)
          to label %bb.cn unwind label %bb.dk     ; 2 uses

bb.cn:                                            ; preds = %bb.cm
  %.not359 = icmp eq ptr %i.cq, null
  br i1 %.not359, label %bb.co, label %bb.di

bb.co:                                            ; preds = %bb.cl, %bb.cn
  br i1 %.not294.a, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %i.cr = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors19InlineValueProviderEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @269, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ba)
          to label %bb.cq unwind label %bb.dk     ; 2 uses

bb.cq:                                            ; preds = %bb.cp
  %.not361 = icmp eq ptr %i.cr, null
  br i1 %.not361, label %bb.cr, label %bb.di

bb.cr:                                            ; preds = %bb.co, %bb.cq
  br i1 %.not295, label %bb.cs, label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  %i.cs = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors17InlayHintProviderEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @270, i64 noundef 17, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %20)
          to label %bb.ct unwind label %bb.dk     ; 2 uses

bb.ct:                                            ; preds = %bb.cs
  %.not363 = icmp eq ptr %i.cs, null
  br i1 %.not363, label %bb.cu, label %bb.di

bb.cu:                                            ; preds = %bb.cr, %bb.ct
  br i1 %.not296.a, label %bb.cv, label %bb.cx

bb.cv:                                            ; preds = %bb.cu
  %i.ct = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors18DiagnosticProviderEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @271, i64 noundef 18, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bc)
          to label %bb.cw unwind label %bb.dk     ; 2 uses

bb.cw:                                            ; preds = %bb.cv
  %.not365 = icmp eq ptr %i.ct, null
  br i1 %.not365, label %bb.cx, label %bb.di

bb.cx:                                            ; preds = %bb.cu, %bb.cw
  br i1 %.not297, label %bb.cy, label %bb.da

bb.cy:                                            ; preds = %bb.cx
  %i.cu = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors24InlineCompletionProviderEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @272, i64 noundef 24, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %22)
          to label %bb.cz unwind label %bb.dk     ; 2 uses

bb.cz:                                            ; preds = %bb.cy
  %.not367 = icmp eq ptr %i.cu, null
  br i1 %.not367, label %bb.da, label %bb.di

bb.da:                                            ; preds = %bb.cx, %bb.cz
  br i1 %.not298.a, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %bb.da
  %i.cv = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures16WorkspaceOptionsEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @273, i64 noundef 9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.be)
          to label %bb.dc unwind label %bb.dk     ; 2 uses

bb.dc:                                            ; preds = %bb.db
  %.not369 = icmp eq ptr %i.cv, null
  br i1 %.not369, label %bb.dd, label %bb.di

bb.dd:                                            ; preds = %bb.da, %bb.dc
  br i1 %.not299.a, label %bb.de, label %bb.dg

bb.de:                                            ; preds = %bb.dd
  %i.cw = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtB8_5ValueEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @274, i64 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bg)
          to label %bb.df unwind label %bb.dk     ; 2 uses

bb.df:                                            ; preds = %bb.de
  %.not371 = icmp eq ptr %i.cw, null
  br i1 %.not371, label %bb.dg, label %bb.di

bb.dg:                                            ; preds = %bb.dd, %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  call void @_RNvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB5_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct3end(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.dh

bb.dh:                                            ; preds = %bb.b, %bb.di, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.di:                                            ; preds = %bb.df, %bb.dc, %bb.cz, %bb.cw, %bb.ct, %bb.cq, %bb.cn, %bb.ck, %bb.ch, %bb.ce, %bb.cb, %bb.by, %bb.bv, %bb.bs, %bb.bp, %bb.bm, %bb.bj, %bb.bg, %bb.bd, %bb.ba, %bb.ax, %bb.au, %bb.ar, %bb.ao, %bb.al, %bb.ai, %bb.af, %bb.ac, %bb.z, %bb.w, %bb.t, %bb.q, %bb.n, %bb.k, %bb.h, %bb.e
  %.sink = phi ptr [ %i.cv, %bb.dc ], [ %i.cu, %bb.cz ], [ %i.ct, %bb.cw ], [ %i.cs, %bb.ct ], [ %i.cr, %bb.cq ], [ %i.cq, %bb.cn ], [ %i.cp, %bb.ck ], [ %i.co, %bb.ch ], [ %i.cn, %bb.ce ], [ %i.cm, %bb.cb ], [ %i.cl, %bb.by ], [ %i.ck, %bb.bv ], [ %i.cj, %bb.bs ], [ %i.ci, %bb.bp ], [ %i.ch, %bb.bm ], [ %i.cg, %bb.bj ], [ %i.cf, %bb.bg ], [ %i.ce, %bb.bd ], [ %i.cd, %bb.ba ], [ %i.cc, %bb.ax ], [ %i.cb, %bb.au ], [ %i.ca, %bb.ar ], [ %i.bz, %bb.ao ], [ %i.by, %bb.al ], [ %i.bx, %bb.ai ], [ %i.bw, %bb.af ], [ %i.bv, %bb.ac ], [ %i.bu, %bb.z ], [ %i.bt, %bb.w ], [ %i.bs, %bb.t ], [ %i.br, %bb.q ], [ %i.bq, %bb.n ], [ %i.bp, %bb.k ], [ %i.bo, %bb.h ], [ %i.bn, %bb.e ], [ %i.cw, %bb.df ]
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.cx, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value3ser12SerializeMapECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c)
  br label %bb.dh

bb.dj:                                            ; preds = %bb.dk
  resume { ptr, i32 } %lpad.thr_comm

bb.dk:                                            ; preds = %bb.p, %bb.de, %bb.bc, %bb.db, %bb.ab, %bb.cy, %bb.az, %bb.cv, %bb.d, %bb.cs, %bb.aw, %bb.cp, %bb.y, %bb.cm, %bb.at, %bb.cj, %bb.m, %bb.cg, %bb.aq, %bb.cd, %bb.v, %bb.ca, %bb.an, %bb.bx, %bb.g, %bb.bu, %bb.ak, %bb.br, %bb.s, %bb.bo, %bb.ah, %bb.bl, %bb.j, %bb.bi, %bb.ae, %bb.bf
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value3ser12SerializeMapECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c) #30
          to label %bb.dj unwind label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuress7g_1__NtB5_10ServerInfoNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeNtNtNtCs8yjYO7b73r2_10serde_json5value3ser10SerializerECs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 7 uses
  %i.c = alloca [96 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !range !4, !noundef !5
  %.not = icmp eq i64 %i.e, -1                    ; 2 uses
  %. = select i1 %.not, i64 1, i64 2
  call void @_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer16serialize_struct(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @275, i64 noundef 10, i64 noundef %.)
  %i.f = load i64, ptr %i.b, align 8, !range !4, !noundef !5 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.j, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.519.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.f, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %i.k = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.d unwind label %bb.l       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.not23 = icmp eq ptr %i.k, null
  br i1 %.not23, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.g unwind label %bb.l       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %.not25 = icmp eq ptr %i.l, null
  br i1 %.not25, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.e, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  call void @_RNvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB5_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct3end(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.j:                                             ; preds = %bb.g, %bb.d
  %.sink = phi ptr [ %i.k, %bb.d ], [ %i.l, %bb.g ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.m, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value3ser12SerializeMapECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c)
  br label %bb.i

bb.k:                                             ; preds = %bb.l
  resume { ptr, i32 } %lpad.thr_comm

bb.l:                                             ; preds = %bb.c, %bb.f
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8yjYO7b73r2_10serde_json5value3ser12SerializeMapECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c) #30
          to label %bb.k unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuress7j_1__NtB5_31VersionedTextDocumentIdentifierNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtNtCs8yjYO7b73r2_10serde_json5value5ValueECs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs2_NtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer15deserialize_mapNtNvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuress7j_1__NtB23_31VersionedTextDocumentIdentifierNtBW_11Deserialize11deserialize9___VisitorECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuress7n_1__NtB5_9FileEventNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtNtCs8yjYO7b73r2_10serde_json5value5ValueECs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs2_NtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuress7n_1__NtB26_9FileEventNtBW_11Deserialize11deserialize9___VisitorECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @278, i64 noundef 9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @279, i64 noundef 2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuress7o_1__NtB5_17FileSystemWatcherNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeNtNtNtCs8yjYO7b73r2_10serde_json5value3ser10SerializerECs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 7 uses
  %i.c = alloca [96 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !range !996, !noundef !5
  %.not = icmp eq i32 %i.e, -1                    ; 2 uses
  %. = select i1 %.not, i64 1, i64 2
  call void @_RNvXs_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB4_10SerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer16serialize_struct(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @280, i64 noundef 17, i64 noundef %.)
  %i.f = load i64, ptr %i.b, align 8, !range !4, !noundef !5 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.j, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.519.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.f, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %i.k = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors11GlobPatternECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @281, i64 noundef 11, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %1)
          to label %bb.d unwind label %bb.l       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.not23 = icmp eq ptr %i.k, null
  br i1 %.not23, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB6_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations9WatchKindEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %bb.g unwind label %bb.l       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %.not25 = icmp eq ptr %i.l, null
  br i1 %.not25, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.e, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  call void @_RNvXs6_NtNtCs8yjYO7b73r2_10serde_json5value3serNtB5_12SerializeMapNtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct3end(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i
end_hunk_0
begin_hunk_1_@_RNvXs0_NvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuresscf_1__NtBa_20CodeActionTagOptionsNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1D_7Visitor9expecting
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuresscf_1__NtBa_20CodeActionTagOptionsNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1D_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuressch_1__NtBa_28ClientCodeLensResolveOptionsNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1L_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuresscj_1__NtBa_29ClientFoldingRangeKindOptionsNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1M_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuresscl_1__NtBa_25ClientFoldingRangeOptionsNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1I_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuresscn_1__NtB7_23DiagnosticsCapabilitiesNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1D_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuresscp_1__NtBa_34ClientSemanticTokensRequestOptionsNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1R_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuresscr_1__NtBa_29ClientInlayHintResolveOptionsNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1M_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuressct_1__NtBa_34ClientShowMessageActionItemOptionsNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1R_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuresscv_1__NtBa_24CompletionItemTagOptionsNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1H_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuresscx_1__NtBa_34ClientCompletionItemResolveOptionsNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1R_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuresscz_1__NtBa_41ClientCompletionItemInsertTextModeOptionsNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1Y_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuresst_1__NtBa_18FoldingRangeParamsNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1A_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuressz_1__NtBa_17DeclarationParamsNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1z_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXsf_Cs2vT3jxLudSK_3urlNtB8_3UrlNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB2_10UrlVisitorNtBB_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRTmmENtB6_5Debug3fmtCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10FileRenameENtB6_5Debug3fmtCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtCs9HU4uknhSfY_10line_index9LineIndexE10drop_innerCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCshzWfHUSfYae_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors30TextDocumentContentChangeEventENtB6_5Debug3fmtCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures9FileEventENtB6_5Debug3fmtCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures20SignatureInformationENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderENtB6_5Debug3fmtCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors4EditENtB6_5Debug3fmtCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCshzWfHUSfYae_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtBa_6option6OptionNtNtCsdcPuHeDsw6v_13project_model18build_dependencies17BuildScriptOutputEINtNtNtBa_5slice4iter4IterB14_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticINtNtNtBa_5slice4iter4IterB14_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10FileRenameINtNtNtBa_5slice4iter4IterB14_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderINtNtNtBa_5slice4iter4IterB14_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures18InlayHintLabelPartINtNtNtBa_5slice4iter4IterB14_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures20ParameterInformationINtNtNtBa_5slice4iter4IterB14_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures20SignatureInformationINtNtNtBa_5slice4iter4IterB14_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures22TextDocumentIdentifierINtNtNtBa_5slice4iter4IterB14_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationINtNtNtBa_5slice4iter4IterB14_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeINtNtNtBa_5slice4iter4IterB14_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8PositionINtNtNtBa_5slice4iter4IterB14_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8TextEditINtNtNtBa_5slice4iter4IterB14_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures9FileEventINtNtNtBa_5slice4iter4IterB14_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations10MarkupKindINtNtNtBa_5slice4iter4IterB14_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations10SymbolKindINtNtNtBa_5slice4iter4IterB14_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations11TokenFormatINtNtNtBa_5slice4iter4IterB14_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations13CodeActionTagINtNtNtBa_5slice4iter4IterB14_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations13DiagnosticTagINtNtNtBa_5slice4iter4IterB14_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations14CodeActionKindINtNtNtBa_5slice4iter4IterB14_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations14InsertTextModeINtNtNtBa_5slice4iter4IterB14_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations16FoldingRangeKindINtNtNtBa_5slice4iter4IterB14_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations17CompletionItemTagINtNtNtBa_5slice4iter4IterB14_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations18CompletionItemKindINtNtNtBa_5slice4iter4IterB14_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations20PositionEncodingKindINtNtNtBa_5slice4iter4IterB14_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations21ResourceOperationKindINtNtNtBa_5slice4iter4IterB14_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations9SymbolTagINtNtNtBa_5slice4iter4IterB14_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors30TextDocumentContentChangeEventINtNtNtBa_5slice4iter4IterB14_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors4EditINtNtNtBa_5slice4iter4IterB14_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext15SnippetTextEditINtNtNtBa_5slice4iter4IterB14_EEB1a_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext30SnippetDocumentChangeOperationINtNtNtBa_5slice4iter4IterB14_EEB1a_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext8TestItemINtNtNtBa_5slice4iter4IterB14_EEB1a_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #22

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { cold }
attributes #31 = { cold noreturn nounwind }
attributes #32 = { noinline }
attributes #33 = { noinline noreturn }
attributes #34 = { inlinehint }
attributes #35 = { noreturn }
attributes #36 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (73dc9167f 2026-08-01)"}
!4 = !{i64 -1, i64 -9223372036854775808}
!5 = !{}
!6 = !{i8 0, i8 3}
!7 = !{i64 0, i64 2}
!8 = !{!"branch_weights", i32 2, i32 0, i32 2146410441, i32 1073205}
!9 = !{!10, !12, !14, !16, !18, !20}
!10 = distinct !{!10, !11, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtCsM5evIHPibA_17crossbeam_channel7context5InnerENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!11 = distinct !{!11, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtCsM5evIHPibA_17crossbeam_channel7context5InnerENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer"}
!12 = distinct !{!12, !13, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcNtNtCsM5evIHPibA_17crossbeam_channel7context5InnerEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!13 = distinct !{!13, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcNtNtCsM5evIHPibA_17crossbeam_channel7context5InnerEECs6u1mgJOKDyY_13rust_analyzer"}
!14 = distinct !{!14, !15, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!15 = distinct !{!15, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextECs6u1mgJOKDyY_13rust_analyzer"}
!16 = distinct !{!16, !17, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!17 = distinct !{!17, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextEECs6u1mgJOKDyY_13rust_analyzer"}
!18 = distinct !{!18, !19, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextEEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!19 = distinct !{!19, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextEEECs6u1mgJOKDyY_13rust_analyzer"}
!20 = distinct !{!20, !21, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextEEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!21 = distinct !{!21, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextEEECs6u1mgJOKDyY_13rust_analyzer"}
!22 = !{!23, !25, !27, !29, !31, !33}
!23 = distinct !{!23, !24, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context5InnerENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!24 = distinct !{!24, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context5InnerENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer"}
!25 = distinct !{!25, !26, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context5InnerEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!26 = distinct !{!26, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context5InnerEECs6u1mgJOKDyY_13rust_analyzer"}
!27 = distinct !{!27, !28, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!28 = distinct !{!28, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECs6u1mgJOKDyY_13rust_analyzer"}
!29 = distinct !{!29, !30, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!30 = distinct !{!30, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextEECs6u1mgJOKDyY_13rust_analyzer"}
!31 = distinct !{!31, !32, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextEEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!32 = distinct !{!32, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextEEECs6u1mgJOKDyY_13rust_analyzer"}
!33 = distinct !{!33, !34, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextEEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!34 = distinct !{!34, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextEEECs6u1mgJOKDyY_13rust_analyzer"}
!35 = !{i8 0, i8 2}
!36 = !{!"branch_weights", i32 1, i32 585287003, i32 1561415935, i32 780708}
!37 = !{!"branch_weights", i32 1, i32 4001}
!38 = !{i64 1, i64 0}
!39 = !{!40, !42, !44, !46}
!40 = distinct !{!40, !41, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtCscAsMj0W7j8b_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!41 = distinct !{!41, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtCscAsMj0W7j8b_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer"}
!42 = distinct !{!42, !43, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcNtNtNtCscAsMj0W7j8b_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!43 = distinct !{!43, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcNtNtNtCscAsMj0W7j8b_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECs6u1mgJOKDyY_13rust_analyzer"}
!44 = distinct !{!44, !45, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsbSS6DM8SDEO_5alloc4sync3ArcNtNtNtCscAsMj0W7j8b_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!45 = distinct !{!45, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsbSS6DM8SDEO_5alloc4sync3ArcNtNtNtCscAsMj0W7j8b_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECs6u1mgJOKDyY_13rust_analyzer"}
!46 = distinct !{!46, !47, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std6thread6thread6ThreadECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!47 = distinct !{!47, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std6thread6thread6ThreadECs6u1mgJOKDyY_13rust_analyzer"}
!48 = !{i64 0, i64 3}
!49 = !{i64 0, i64 -9223372036854775807}
!50 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!51 = !{i8 -1, i8 4}
!52 = !{i64 -1, i64 -9223372036854775803}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_RNvMs3_NtCs8yjYO7b73r2_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadQINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufreader9BufReaderNtNtCscAsMj0W7j8b_3std2fs4FileEEE3endCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!55 = distinct !{!55, !"_RNvMs3_NtCs8yjYO7b73r2_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadQINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufreader9BufReaderNtNtCscAsMj0W7j8b_3std2fs4FileEEE3endCs6u1mgJOKDyY_13rust_analyzer"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_RNvMs3_NtCs8yjYO7b73r2_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadQINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufreader9BufReaderNtNtCscAsMj0W7j8b_3std2fs4FileEEE16parse_whitespaceCs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!58 = distinct !{!58, !"_RNvMs3_NtCs8yjYO7b73r2_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadQINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufreader9BufReaderNtNtCscAsMj0W7j8b_3std2fs4FileEEE16parse_whitespaceCs6u1mgJOKDyY_13rust_analyzer"}
!59 = !{!60, !57, !54}
!60 = distinct !{!60, !61, !"_RNvXs2_NtCs8yjYO7b73r2_10serde_json4readINtB5_6IoReadQINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufreader9BufReaderNtNtCscAsMj0W7j8b_3std2fs4FileEENtB5_4Read4peekCs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!61 = distinct !{!61, !"_RNvXs2_NtCs8yjYO7b73r2_10serde_json4readINtB5_6IoReadQINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufreader9BufReaderNtNtCscAsMj0W7j8b_3std2fs4FileEENtB5_4Read4peekCs6u1mgJOKDyY_13rust_analyzer"}
!62 = !{!63, !64}
!63 = distinct !{!63, !61, !"_RNvXs2_NtCs8yjYO7b73r2_10serde_json4readINtB5_6IoReadQINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufreader9BufReaderNtNtCscAsMj0W7j8b_3std2fs4FileEENtB5_4Read4peekCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!64 = distinct !{!64, !58, !"_RNvMs3_NtCs8yjYO7b73r2_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadQINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufreader9BufReaderNtNtCscAsMj0W7j8b_3std2fs4FileEEE16parse_whitespaceCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!65 = !{!66}
!66 = distinct !{!66, !61, !"_RNvXs2_NtCs8yjYO7b73r2_10serde_json4readINtB5_6IoReadQINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufreader9BufReaderNtNtCscAsMj0W7j8b_3std2fs4FileEENtB5_4Read4peekCs6u1mgJOKDyY_13rust_analyzer: argument 1:Peel0"}
!67 = !{!63, !66, !64, !57, !54}
!68 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!69 = !{!66, !57, !54}
!70 = !{!71, !57, !54}
!71 = distinct !{!71, !72, !"_RNvXs2_NtCs8yjYO7b73r2_10serde_json4readINtB5_6IoReadQINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufreader9BufReaderNtNtCscAsMj0W7j8b_3std2fs4FileEENtB5_4Read7discardCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!72 = distinct !{!72, !"_RNvXs2_NtCs8yjYO7b73r2_10serde_json4readINtB5_6IoReadQINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufreader9BufReaderNtNtCscAsMj0W7j8b_3std2fs4FileEENtB5_4Read7discardCs6u1mgJOKDyY_13rust_analyzer"}
!73 = !{!64}
!74 = !{!60}
!75 = !{!63, !60, !64, !57, !54}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.peeled.count", i32 1}
!78 = !{!63, !64, !57, !54}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_RNvMs3_NtCs8yjYO7b73r2_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE3endCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!81 = distinct !{!81, !"_RNvMs3_NtCs8yjYO7b73r2_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE3endCs6u1mgJOKDyY_13rust_analyzer"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_RNvMs3_NtCs8yjYO7b73r2_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!84 = distinct !{!84, !"_RNvMs3_NtCs8yjYO7b73r2_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs6u1mgJOKDyY_13rust_analyzer"}
!85 = !{!86, !88, !83, !80}
!86 = distinct !{!86, !87, !"_RNvXs5_NtCs8yjYO7b73r2_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek: argument 1"}
!87 = distinct !{!87, !"_RNvXs5_NtCs8yjYO7b73r2_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek"}
!88 = distinct !{!88, !89, !"_RNvXs8_NtCs8yjYO7b73r2_10serde_json4readNtB5_7StrReadNtB5_4Read4peek: argument 1"}
!89 = distinct !{!89, !"_RNvXs8_NtCs8yjYO7b73r2_10serde_json4readNtB5_7StrReadNtB5_4Read4peek"}
!90 = !{!91, !92, !93}
!91 = distinct !{!91, !87, !"_RNvXs5_NtCs8yjYO7b73r2_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek: argument 0"}
!92 = distinct !{!92, !89, !"_RNvXs8_NtCs8yjYO7b73r2_10serde_json4readNtB5_7StrReadNtB5_4Read4peek: argument 0"}
!93 = distinct !{!93, !84, !"_RNvMs3_NtCs8yjYO7b73r2_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!94 = !{!83, !80}
!95 = !{!93}
!96 = !{!88}
!97 = !{!86}
!98 = !{!91, !86, !92, !88, !93, !83, !80}
!99 = !{!100, !83, !80}
!100 = distinct !{!100, !101, !"_RNvXs8_NtCs8yjYO7b73r2_10serde_json4readNtB5_7StrReadNtB5_4Read7discard: argument 0"}
!101 = distinct !{!101, !"_RNvXs8_NtCs8yjYO7b73r2_10serde_json4readNtB5_7StrReadNtB5_4Read7discard"}
!102 = !{i64 -1, i64 -9223372036854775806}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_RNvMs3_NtCs8yjYO7b73r2_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE3endCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!105 = distinct !{!105, !"_RNvMs3_NtCs8yjYO7b73r2_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE3endCs6u1mgJOKDyY_13rust_analyzer"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_RNvMs3_NtCs8yjYO7b73r2_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!108 = distinct !{!108, !"_RNvMs3_NtCs8yjYO7b73r2_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs6u1mgJOKDyY_13rust_analyzer"}
!109 = !{!110, !112, !107, !104}
!110 = distinct !{!110, !111, !"_RNvXs5_NtCs8yjYO7b73r2_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek: argument 1"}
!111 = distinct !{!111, !"_RNvXs5_NtCs8yjYO7b73r2_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek"}
!112 = distinct !{!112, !113, !"_RNvXs8_NtCs8yjYO7b73r2_10serde_json4readNtB5_7StrReadNtB5_4Read4peek: argument 1"}
!113 = distinct !{!113, !"_RNvXs8_NtCs8yjYO7b73r2_10serde_json4readNtB5_7StrReadNtB5_4Read4peek"}
!114 = !{!115, !116, !117}
!115 = distinct !{!115, !111, !"_RNvXs5_NtCs8yjYO7b73r2_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek: argument 0"}
!116 = distinct !{!116, !113, !"_RNvXs8_NtCs8yjYO7b73r2_10serde_json4readNtB5_7StrReadNtB5_4Read4peek: argument 0"}
!117 = distinct !{!117, !108, !"_RNvMs3_NtCs8yjYO7b73r2_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!118 = !{!107, !104}
!119 = !{!117}
!120 = !{!112}
!121 = !{!110}
!122 = !{!115, !110, !116, !112, !117, !107, !104}
!123 = !{!124, !107, !104}
!124 = distinct !{!124, !125, !"_RNvXs8_NtCs8yjYO7b73r2_10serde_json4readNtB5_7StrReadNtB5_4Read7discard: argument 0"}
!125 = distinct !{!125, !"_RNvXs8_NtCs8yjYO7b73r2_10serde_json4readNtB5_7StrReadNtB5_4Read7discard"}
!126 = !{i16 0, i16 2}
!127 = !{i64 8}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_RINvNtCs8yjYO7b73r2_10serde_json4read11peek_or_eofINtB2_6IoReadQINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufreader9BufReaderNtNtCscAsMj0W7j8b_3std2fs4FileEEECs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!130 = distinct !{!130, !"_RINvNtCs8yjYO7b73r2_10serde_json4read11peek_or_eofINtB2_6IoReadQINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufreader9BufReaderNtNtCscAsMj0W7j8b_3std2fs4FileEEECs6u1mgJOKDyY_13rust_analyzer"}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_RNvXs2_NtCs8yjYO7b73r2_10serde_json4readINtB5_6IoReadQINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufreader9BufReaderNtNtCscAsMj0W7j8b_3std2fs4FileEENtB5_4Read4peekCs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!133 = distinct !{!133, !"_RNvXs2_NtCs8yjYO7b73r2_10serde_json4readINtB5_6IoReadQINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufreader9BufReaderNtNtCscAsMj0W7j8b_3std2fs4FileEENtB5_4Read4peekCs6u1mgJOKDyY_13rust_analyzer"}
!134 = !{!132, !129}
!135 = !{!136, !137}
!136 = distinct !{!136, !133, !"_RNvXs2_NtCs8yjYO7b73r2_10serde_json4readINtB5_6IoReadQINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufreader9BufReaderNtNtCscAsMj0W7j8b_3std2fs4FileEENtB5_4Read4peekCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!137 = distinct !{!137, !130, !"_RINvNtCs8yjYO7b73r2_10serde_json4read11peek_or_eofINtB2_6IoReadQINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufreader9BufReaderNtNtCscAsMj0W7j8b_3std2fs4FileEEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!138 = !{!136, !132, !137, !129}
!139 = !{!137, !129}
!140 = !{!137}
!141 = !{!142, !137}
!142 = distinct !{!142, !143, !"_RINvNtCs8yjYO7b73r2_10serde_json4read5errorINtB2_6IoReadQINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufreader9BufReaderNtNtCscAsMj0W7j8b_3std2fs4FileEEhECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!143 = distinct !{!143, !"_RINvNtCs8yjYO7b73r2_10serde_json4read5errorINtB2_6IoReadQINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufreader9BufReaderNtNtCscAsMj0W7j8b_3std2fs4FileEEhECs6u1mgJOKDyY_13rust_analyzer"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_RINvNtCs8yjYO7b73r2_10serde_json4read11peek_or_eofINtB2_6IoReadQINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufreader9BufReaderNtNtCscAsMj0W7j8b_3std2fs4FileEEECs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!146 = distinct !{!146, !"_RINvNtCs8yjYO7b73r2_10serde_json4read11peek_or_eofINtB2_6IoReadQINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufreader9BufReaderNtNtCscAsMj0W7j8b_3std2fs4FileEEECs6u1mgJOKDyY_13rust_analyzer"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_RNvXs2_NtCs8yjYO7b73r2_10serde_json4readINtB5_6IoReadQINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufreader9BufReaderNtNtCscAsMj0W7j8b_3std2fs4FileEENtB5_4Read4peekCs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!149 = distinct !{!149, !"_RNvXs2_NtCs8yjYO7b73r2_10serde_json4readINtB5_6IoReadQINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufreader9BufReaderNtNtCscAsMj0W7j8b_3std2fs4FileEENtB5_4Read4peekCs6u1mgJOKDyY_13rust_analyzer"}
!150 = !{!151, !148, !152, !145}
!151 = distinct !{!151, !149, !"_RNvXs2_NtCs8yjYO7b73r2_10serde_json4readINtB5_6IoReadQINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufreader9BufReaderNtNtCscAsMj0W7j8b_3std2fs4FileEENtB5_4Read4peekCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!152 = distinct !{!152, !146, !"_RINvNtCs8yjYO7b73r2_10serde_json4read11peek_or_eofINtB2_6IoReadQINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufreader9BufReaderNtNtCscAsMj0W7j8b_3std2fs4FileEEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!153 = !{!151, !152}
!154 = !{!152, !145}
!155 = !{!152}
!156 = !{!157, !152}
!157 = distinct !{!157, !158, !"_RINvNtCs8yjYO7b73r2_10serde_json4read5errorINtB2_6IoReadQINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufreader9BufReaderNtNtCscAsMj0W7j8b_3std2fs4FileEEhECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!158 = distinct !{!158, !"_RINvNtCs8yjYO7b73r2_10serde_json4read5errorINtB2_6IoReadQINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufreader9BufReaderNtNtCscAsMj0W7j8b_3std2fs4FileEEhECs6u1mgJOKDyY_13rust_analyzer"}
end_hunk_1
