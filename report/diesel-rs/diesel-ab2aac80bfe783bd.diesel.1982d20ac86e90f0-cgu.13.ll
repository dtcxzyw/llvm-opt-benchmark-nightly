Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-ab2aac80bfe783bd.diesel.1982d20ac86e90f0-cgu.13?download=true
inline.NumInlined: 961
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_RINvXNtCsjRvGck33osM_6diesel11deserializeNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures17ColumnInformationINtB3_10FromSqlRowNtNtNtB5_10expression16expression_types7UntypedNtNtNtB5_6sqlite7backend6SqliteE14build_from_rowNtNtNtB39_10connection3row9SqliteRowEBJ_:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %.not.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %i.x, align 8, !noalias !1565, !nonnull !5, !align !13, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1565
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.z, align 8, !alias.scope !1564
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.y, ptr %i.aa, align 8, !alias.scope !1564
  store i64 -1, ptr %0, align 8, !alias.scope !1564
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs2bNgeUs5Jlc_6diesel.exit.i.i unwind label %bb.j, !noalias !1564

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i unwind label %bb.k, !noalias !1564

bb.k:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #27, !noalias !1564
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs2bNgeUs5Jlc_6diesel.exit.i.i: ; preds = %bb.i
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i unwind label %bb.d, !noalias !1564

bb.l:                                             ; preds = %bb.h
  %i.ad = load i8, ptr %i.x, align 8, !range !8, !noalias !1565, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1565
  %.sroa.5.0..sroa_idx35.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx35.i, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !1566
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1566
  %i.ae = xor i8 %i.ad, 1
  store i64 0, ptr %0, align 8, !alias.scope !1564
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 -1, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !1564
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 -1, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !1564
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 %i.ae, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !1564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1565
  br label %_RINvXs0_NtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals6sqliteNtNtB8_15data_structures17ColumnInformationINtNtCsjRvGck33osM_6diesel11deserialize15QueryableByNameNtNtNtB1M_6sqlite7backend6SqliteE5buildNtNtNtB2F_10connection3row9SqliteRowEBa_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs2bNgeUs5Jlc_6diesel.exit.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1565
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit33.i unwind label %bb.m, !noalias !1564

bb.m:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume.i unwind label %bb.n, !noalias !1564

bb.n:                                             ; preds = %bb.m
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #27, !noalias !1564
  unreachable

common.resume.i:                                  ; preds = %.body.i, %bb.m
  %common.resume.op.i = phi { ptr, i32 } [ %i.af, %bb.m ], [ %.pn.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit33.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i
  call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e), !noalias !1564
  br label %_RINvXs0_NtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals6sqliteNtNtB8_15data_structures17ColumnInformationINtNtCsjRvGck33osM_6diesel11deserialize15QueryableByNameNtNtNtB1M_6sqlite7backend6SqliteE5buildNtNtNtB2F_10connection3row9SqliteRowEBa_.exit

bb.o:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #26
          to label %.body.i unwind label %bb.p, !noalias !1564

bb.p:                                             ; preds = %.body.i, %bb.o
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #27, !noalias !1564
  unreachable

.body.i:                                          ; preds = %bb.o, %bb.j, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.ah, %bb.o ], [ %i.ab, %bb.j ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #26
          to label %common.resume.i unwind label %bb.p, !noalias !1564

_RINvXs0_NtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals6sqliteNtNtB8_15data_structures17ColumnInformationINtNtCsjRvGck33osM_6diesel11deserialize15QueryableByNameNtNtNtB1M_6sqlite7backend6SqliteE5buildNtNtNtB2F_10connection3row9SqliteRowEBa_.exit: ; preds = %bb.b, %bb.l, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit33.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1565
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtCsjgZ4NMfOQZW_4toml2de12deserializerNtB6_12DeserializerNtNtCseMV7gzmhUlG_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCs2bNgeUs5Jlc_6diesel6config1__NtB2f_6ConfigNtB15_11Deserialize11deserialize9___VisitorEB2h_(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef range(i64 0, 576460752303423488) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 6 uses
  %.sroa.4 = alloca [39 x i8], align 1            ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.i = load <2 x i64>, ptr %1, align 8
  store <2 x i64> %i.i, ptr %i.h, align 8
  store i8 6, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.4, i64 39, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i8 0, ptr %i.j, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @_RINvXs0_NtNtNtCsjgZ4NMfOQZW_4toml2de12deserializer5valueNtB6_17ValueDeserializerNtNtCseMV7gzmhUlG_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCs2bNgeUs5Jlc_6diesel6config1__NtB2s_6ConfigNtB1i_11Deserialize11deserialize9___VisitorEB2u_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.k = load i64, ptr %0, align 8, !range !14, !noundef !5
  %.not = icmp eq i64 %i.k, -1
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false)
  invoke void @_RNvMNtNtCsjgZ4NMfOQZW_4toml2de5errorNtB2_5Error9set_input(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a, ptr noalias noundef readonly captures(address, read_provenance) %i.d, i64 %i.f)
          to label %_RNCINvXs0_NtNtCsjgZ4NMfOQZW_4toml2de12deserializerNtB8_12DeserializerNtNtCseMV7gzmhUlG_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCs2bNgeUs5Jlc_6diesel6config1__NtB2h_6ConfigNtB17_11Deserialize11deserialize9___VisitorE0B2j_.exit unwind label %bb.c, !noalias !1569

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a) #26
          to label %bb.e unwind label %bb.d, !noalias !1569

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #27, !noalias !1569
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.l

_RNCINvXs0_NtNtCsjgZ4NMfOQZW_4toml2de12deserializerNtB8_12DeserializerNtNtCseMV7gzmhUlG_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCs2bNgeUs5Jlc_6diesel6config1__NtB2h_6ConfigNtB17_11Deserialize11deserialize9___VisitorE0B2j_.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RNCINvXs0_NtNtCsjgZ4NMfOQZW_4toml2de12deserializerNtB8_12DeserializerNtNtCseMV7gzmhUlG_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCs2bNgeUs5Jlc_6diesel6config1__NtB2h_6ConfigNtB17_11Deserialize11deserialize9___VisitorE0B2j_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs6_NtNtCseEiWxPEiqDv_18tracing_subscriber3fmt6formatNtB6_13DefaultFieldsNtB6_12FormatFields13format_fieldsRNtNtCs3bbNWNt4QPc_12tracing_core4span10AttributesECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1573)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !1574
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 1, ptr %i.c, align 8, !alias.scope !1575
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 25 ; 2 uses
  store i8 0, ptr %i.d, align 1, !alias.scope !1575
  call void @_RNvXs5_NtCseEiWxPEiqDv_18tracing_subscriber5fieldRNtNtCs3bbNWNt4QPc_12tracing_core4span10AttributesNtB5_12RecordFields6recordCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) @22)
  %.sroa.3.0.copyload = load i8, ptr %i.d, align 1
  %i.e = trunc nuw i8 %.sroa.3.0.copyload to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs6_NtNtCseEiWxPEiqDv_18tracing_subscriber3fmt6formatNtB6_13DefaultFieldsNtB6_12FormatFields13format_fieldsRNtNtCs3bbNWNt4QPc_12tracing_core4span6RecordECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1579)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !1580
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 1, ptr %i.c, align 8, !alias.scope !1581
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 25 ; 2 uses
  store i8 0, ptr %i.d, align 1, !alias.scope !1581
  call void @_RNvXs5_NtCseEiWxPEiqDv_18tracing_subscriber5fieldRNtNtCs3bbNWNt4QPc_12tracing_core4span6RecordNtB5_12RecordFields6recordCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) @22)
  %.sroa.3.0.copyload = load i8, ptr %i.d, align 1
  %i.e = trunc nuw i8 %.sroa.3.0.copyload to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8A_NtNtCsjRvGck33osM_6diesel10type_impls6tuplesTmmEINtNtBb_11deserialize16FromStaticSqlRowTNtNtNtNtBb_2pg5types9sql_types3OidB1x_ENtNtB1D_7backend2PgE14build_from_rowNtNtNtB1D_10connection3row5PgRowECs2bNgeUs5Jlc_6diesel(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = tail call noundef i64 @_RNvXs0_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rowNtB5_5PgRowINtNtBb_3row3RowNtNtB9_7backend2PgE11field_count(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs0_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rowNtB5_5PgRowINtNtBb_3row3RowNtNtB9_7backend2PgE11partial_row(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, i64 noundef 0, i64 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1588
  call void @_RINvXs2_NtCsjRvGck33osM_6diesel11deserializemINtB6_16FromStaticSqlRowNtNtNtNtB8_2pg5types9sql_types3OidNtNtB1b_7backend2PgE14build_from_rowINtNtNtB8_3row7private10PartialRowNtNtNtB1b_10connection3row5PgRowEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d), !noalias !1589
  %i.f = load ptr, ptr %i.a, align 8, !noalias !1588, !noundef !5 ; 2 uses
  %.not.i12 = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %.not.i12, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !noalias !1588, !nonnull !5, !align !13, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1588
  store ptr %i.f, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = load i32, ptr %i.g, align 8, !noalias !1588, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1588
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXs0_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rowNtB5_5PgRowINtNtBb_3row3RowNtNtB9_7backend2PgE11partial_row(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, i64 noundef 1, i64 noundef %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1590
  call void @_RINvXs2_NtCsjRvGck33osM_6diesel11deserializemINtB6_16FromStaticSqlRowNtNtNtNtB8_2pg5types9sql_types3OidNtNtB1b_7backend2PgE14build_from_rowINtNtNtB8_3row7private10PartialRowNtNtNtB1b_10connection3row5PgRowEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c), !noalias !1591
  %i.k = load ptr, ptr %i.b, align 8, !noalias !1590, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.l, align 8, !noalias !1590, !nonnull !5, !align !13, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1590
  store ptr %i.k, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.n, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = load i32, ptr %i.l, align 8, !noalias !1590, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1590
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.j, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.o, ptr %i.q, align 4
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtCsjgZ4NMfOQZW_4toml2de5errorNtB5_5ErrorNtNtCseMV7gzmhUlG_10serde_core2de5Error6customNtNtCskxSKy3V5Mgr_5regex5error5ErrorECs2bNgeUs5Jlc_6diesel(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1600
  store i64 0, ptr %i.c, align 8, !noalias !1600
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1600
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !1600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1600
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.f, align 8, !noalias !1600
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !1600
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !noalias !1600
  store ptr %i.c, ptr %i.b, align 8, !noalias !1600
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @116, ptr %i.g, align 8, !noalias !1600
  %i.h = invoke noundef zeroext i1 @_RNvXs0_NtCskxSKy3V5Mgr_5regex5errorNtB5_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b, !noalias !1601

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #26
          to label %.body unwind label %bb.e, !noalias !1601

bb.c:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.d, label %bb.g, !prof !4

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @117, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #25
          to label %.noexc.i.i unwind label %bb.b, !noalias !1601

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #27, !noalias !1601
  unreachable

bb.f:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.i, %bb.b ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskxSKy3V5Mgr_5regex5error5ErrorECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 dereferenceable(24) %1) #26
          to label %common.resume unwind label %bb.l

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  invoke fastcc void @_RINvMNtNtCsjgZ4NMfOQZW_4toml2de5errorNtB3_5Error6customNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.d)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.l = load i64, ptr %1, align 8, !range !9, !alias.scope !1603, !noundef !5
  %.not.i = icmp eq i64 %i.l, -1
  br i1 %.not.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskxSKy3V5Mgr_5regex5error5ErrorECs2bNgeUs5Jlc_6diesel.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %.body, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.j ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i: ; preds = %bb.i
  call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskxSKy3V5Mgr_5regex5error5ErrorECs2bNgeUs5Jlc_6diesel.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskxSKy3V5Mgr_5regex5error5ErrorECs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.h, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i
  ret void

bb.l:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtCsjgZ4NMfOQZW_4toml2de5errorNtB5_5ErrorNtNtCseMV7gzmhUlG_10serde_core2de5Error6customReECs2bNgeUs5Jlc_6diesel(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1612)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1613
  call void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1613
  %i.d = load i64, ptr %i.a, align 8, !range !6, !noalias !1613, !noundef !5
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !7, !noalias !1613, !noundef !5 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2bNgeUs5Jlc_6diesel.exit.i.i.i, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !noalias !1613
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #25, !noalias !1613
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2bNgeUs5Jlc_6diesel.exit.i.i.i: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !noalias !1613, !nonnull !5, !noundef !5 ; 2 uses
  %i.k = icmp ule i64 %2, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1613
  %.not.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i, label %_RNvXsB_NtCs40k4W9msRzi_5alloc6stringReNtB5_8ToString9to_stringCs2bNgeUs5Jlc_6diesel.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2bNgeUs5Jlc_6diesel.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !1614
  br label %_RNvXsB_NtCs40k4W9msRzi_5alloc6stringReNtB5_8ToString9to_stringCs2bNgeUs5Jlc_6diesel.exit

_RNvXsB_NtCs40k4W9msRzi_5alloc6stringReNtB5_8ToString9to_stringCs2bNgeUs5Jlc_6diesel.exit: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2bNgeUs5Jlc_6diesel.exit.i.i.i, %bb.c
  store i64 %i.g, ptr %i.c, align 8, !alias.scope !1615
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1615
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  call fastcc void @_RINvMNtNtCsjgZ4NMfOQZW_4toml2de5errorNtB3_5Error6customNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYINtNtCscI6d9CVNmLh_4core4hash18BuildHasherDefaultNtNtNtCseEiWxPEiqDv_18tracing_subscriber8registry10extensions8IdHasherENtB6_11BuildHasher8hash_oneRNtNtB8_3any6TypeIdECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load i64, ptr %i.a, align 8, !noalias !1618
  ret i64 %.val.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 ptr @_RINvYNtNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals5mysql18information_schema6tables7columns10table_nameNtNtNtCsjRvGck33osM_6diesel18expression_methods25global_expression_methods17ExpressionMethods2eqRNtNtCs40k4W9msRzi_5alloc6string6StringEBf_(ptr noalias noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(24) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvYNtNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals5mysql18information_schema6tables7columns12table_schemaNtNtNtCsjRvGck33osM_6diesel18expression_methods25global_expression_methods17ExpressionMethods2eqINtNtCs40k4W9msRzi_5alloc6borrow3CowNtNtB3u_6string6StringEEBf_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSINtNtB7_5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendEEL_E11sort_by_keyNtBU_16MigrationVersionNCNCINvNtB1J_10migrations15redo_migrationsNtB1H_15InferConnectionB1B_Es0_0s1_0E0B1J_(ptr %.0.val, ptr nofree readonly captures(none) %.8.val, ptr %.0.val1, ptr nofree readonly captures(none) %.8.val3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1652
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !5, !noalias !1652, !nonnull !5
  %i.g = tail call { ptr, ptr } %i.f(ptr noundef nonnull %.0.val), !noalias !1652, !inline_history !1621 ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.g, 0
  %i.i = extractvalue { ptr, ptr } %i.g, 1
end_hunk_0
