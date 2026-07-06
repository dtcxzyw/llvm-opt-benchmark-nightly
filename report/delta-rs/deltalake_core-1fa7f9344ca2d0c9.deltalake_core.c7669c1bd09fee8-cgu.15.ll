inline.NumInlined: 12000
inline.NumDeleted: 3498
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RINvXseV_NtCs4lawaffTVVK_9sqlparser3astNtB7_14FetchDirectionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a

bb.g:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !range !1797, !noundef !3
  %i.n = icmp ne i64 %i.m, -9223372036854775787   ; 2 uses
  %i.o = zext i1 %i.n to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26065
  store i64 %i.o, ptr %i.a, align 8, !noalias !26065
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26065
  br i1 %i.n, label %.sink.split, label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXseV_NtCs4lawaffTVVK_9sqlparser3astNtB7_14FetchDirectionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBY_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !1796, !noundef !3 ; 2 uses
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.a)
  switch i64 %i.a, label %bb.b [
    i64 0, label %bb.c
    i64 5, label %bb.d
    i64 6, label %bb.e
    i64 8, label %bb.f
    i64 10, label %bb.g
  ]

.sink.split:                                      ; preds = %bb.g, %bb.f, %bb.c, %bb.d, %bb.e
  %.sink = phi ptr [ %i.e, %bb.f ], [ %i.b, %bb.c ], [ %i.d, %bb.e ], [ %i.c, %bb.d ], [ %i.i, %bb.g ]
  tail call fastcc void @_RINvXsr_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_5ValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBV_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sink, ptr noalias noundef align 8 dereferenceable(16) %1) #55
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.g, %bb.f, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !range !1797, !noundef !3
  %i.g = icmp ne i64 %i.f, -9223372036854775787   ; 2 uses
  %i.h = zext i1 %i.g to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.h)
  br i1 %i.g, label %.sink.split, label %bb.b

bb.g:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !range !1797, !noundef !3
  %i.k = icmp ne i64 %i.j, -9223372036854775787   ; 2 uses
  %i.l = zext i1 %i.k to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.l)
  br i1 %i.k, label %.sink.split, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEENtB8_11Deserialize11deserializeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26070)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26073)
  %i.c = load i8, ptr %1, align 8, !range !131, !alias.scope !26073, !noalias !26070, !noundef !3
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.d, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26075
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !26070
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26076)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26079
  call void @_RINvXsh_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureENtB8_11Deserialize11deserializeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !noalias !26075
  %i.e = load i64, ptr %i.a, align 8, !range !141, !noalias !26079, !noundef !3
  %i.f = icmp eq i64 %i.e, -9223372036854775808
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !noalias !26079, !nonnull !3, !align !42, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8, !alias.scope !26081, !noalias !26082
  store i64 -9223372036854775807, ptr %0, align 8, !alias.scope !26081, !noalias !26082
  br label %bb.e

bb.c:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !26082
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !26083, !noalias !26073
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !noalias !26070
  br label %_RINvXs2_NtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_optionINtNtBW_5impls13OptionVisitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEEECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26079
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26075
  br label %_RINvXs2_NtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_optionINtNtBW_5impls13OptionVisitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEEECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs2_NtNtCseqDwI8vvjGQ_10serde_json5value2deNtB8_5ValueNtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_optionINtNtBW_5impls13OptionVisitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEENtB8_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB3v_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26086)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26089)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26091
  call void @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !26086
  %i.c = load i8, ptr %i.b, align 8, !range !137, !noalias !26091, !noundef !3
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noalias !26091, !nonnull !3, !align !42, !noundef !3
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.h = load i8, ptr %i.g, align 1, !range !137, !noalias !26091, !noundef !3
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.k = load i8, ptr %i.j, align 2, !noalias !26091
  %i.l = icmp eq i8 %i.k, 110
  %or.cond.i = select i1 %i.i, i1 %i.l, i1 false
  br i1 %or.cond.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !26092)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26095
  call void @_RINvXsh_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureENtB8_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2S_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !26097
  %i.m = load i64, ptr %i.a, align 8, !range !141, !noalias !26095, !noundef !3
  %i.n = icmp eq i64 %i.m, -9223372036854775808
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !26095, !nonnull !3, !align !42, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8, !alias.scope !26097, !noalias !26098
  store i64 -9223372036854775807, ptr %0, align 8, !alias.scope !26097, !noalias !26098
  br label %_RINvXsd_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtB6_13OptionVisitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEENtB8_7Visitor10visit_someQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB38_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !26098
  br label %_RINvXsd_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtB6_13OptionVisitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEENtB8_7Visitor10visit_someQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB38_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvXsd_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtB6_13OptionVisitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEENtB8_7Visitor10visit_someQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB38_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26095
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_optionINtNtB1l_5impls13OptionVisitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEEECs14kWLkQVSKO_14deltalake_core.exit

bb.g:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !26099, !noalias !26086, !noundef !3
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.r, align 8, !alias.scope !26099, !noalias !26086
  %i.u = call noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 3), !noalias !26086 ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !26102, !noalias !26089
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_optionINtNtB1l_5impls13OptionVisitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEEECs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %bb.g, %bb.b
  %.sink.i = phi ptr [ %i.f, %bb.b ], [ %i.u, %bb.g ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i, ptr %i.v, align 8, !alias.scope !26086, !noalias !26089
  store i64 -9223372036854775807, ptr %0, align 8, !alias.scope !26086, !noalias !26089
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_optionINtNtB1l_5impls13OptionVisitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEEECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_optionINtNtB1l_5impls13OptionVisitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvXsd_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtB6_13OptionVisitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEENtB8_7Visitor10visit_someQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB38_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26091
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXse_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEENtB8_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerINtNtB3g_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26105
  call void @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRShEE16parse_whitespaceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(104) %0)
  %i.b = load i8, ptr %i.a, align 8, !range !137, !noalias !26105, !noundef !3
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !noalias !26105, !nonnull !3, !align !42, !noundef !3
  %1 = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.e, 1
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_optionINtNtB1n_5impls13OptionVisitorINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEEECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.g = load i8, ptr %i.f, align 1, !range !137, !noalias !26105, !noundef !3
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.j = load i8, ptr %i.i, align 2, !noalias !26105
  %i.k = icmp eq i8 %i.j, 110
  %or.cond.i = select i1 %i.h, i1 %i.k, i1 false
  br i1 %or.cond.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = call { i64, ptr } @_RINvXs3s_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtB9_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerINtNtB2E_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %0)
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_optionINtNtB1n_5impls13OptionVisitorINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEEECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read7discardCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.m)
  %i.n = call noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRShEE11parse_identCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 3) ; 2 uses
  %.not.i = icmp ne ptr %i.n, null
  %spec.select9.i = zext i1 %.not.i to i64
  %2 = insertvalue { i64, ptr } poison, i64 %spec.select9.i, 0
  %3 = insertvalue { i64, ptr } %2, ptr %i.n, 1
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_optionINtNtB1n_5impls13OptionVisitorINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEEECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_optionINtNtB1n_5impls13OptionVisitorINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.merged.i = phi { i64, ptr } [ %3, %bb.e ], [ %i.l, %bb.d ], [ %1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26105
  ret { i64, ptr } %.merged.i
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXse_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEENtB8_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB3g_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26108)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26108
  call void @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %0)
  %i.b = load i8, ptr %i.a, align 8, !range !137, !noalias !26108, !noundef !3
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !noalias !26108, !nonnull !3, !align !42, !noundef !3
  %1 = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.e, 1
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_optionINtNtB1l_5impls13OptionVisitorINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEEECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.g = load i8, ptr %i.f, align 1, !range !137, !noalias !26108, !noundef !3
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.j = load i8, ptr %i.i, align 2, !noalias !26108
  %i.k = icmp eq i8 %i.j, 110
  %or.cond.i = select i1 %i.h, i1 %i.k, i1 false
  br i1 %or.cond.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = call { i64, ptr } @_RINvXs3s_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtB9_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2E_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %0)
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_optionINtNtB1l_5impls13OptionVisitorINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEEECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !26111, !noundef !3
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.m, align 8, !alias.scope !26111
  %i.p = call noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 3) ; 2 uses
  %.not.i = icmp ne ptr %i.p, null
  %spec.select9.i = zext i1 %.not.i to i64
  %2 = insertvalue { i64, ptr } poison, i64 %spec.select9.i, 0
  %3 = insertvalue { i64, ptr } %2, ptr %i.p, 1
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_optionINtNtB1l_5impls13OptionVisitorINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEEECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_optionINtNtB1l_5impls13OptionVisitorINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.merged.i = phi { i64, ptr } [ %3, %bb.e ], [ %i.l, %bb.d ], [ %1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26108
  ret { i64, ptr } %.merged.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEENtB8_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerINtNtB2x_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias noundef align 8 dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26114)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26117
  call void @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRShEE16parse_whitespaceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(104) %1), !noalias !26114
  %i.c = load i8, ptr %i.b, align 8, !range !137, !noalias !26117, !noundef !3
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noalias !26117, !nonnull !3, !align !42, !noundef !3
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.h = load i8, ptr %i.g, align 1, !range !137, !noalias !26117, !noundef !3
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.k = load i8, ptr %i.j, align 2, !noalias !26117
  %i.l = icmp eq i8 %i.k, 110
  %or.cond.i = select i1 %i.i, i1 %i.l, i1 false
  br i1 %or.cond.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !26119)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26122
  call void @_RINvXs3s_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc4sync3ArceENtB9_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerINtNtB1V_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(104) %1), !noalias !26124
  %i.m = load ptr, ptr %i.a, align 8, !noalias !26122, !noundef !3 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.o, align 8, !noalias !26122, !nonnull !3, !align !42, !noundef !3
  br label %_RINvXsd_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtB6_13OptionVisitorINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEENtB8_7Visitor10visit_someQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerINtNtB2a_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.f:                                             ; preds = %bb.d
  %i.q = load i64, ptr %i.o, align 8, !noalias !26122, !noundef !3
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.q, ptr %i.r, align 8, !alias.scope !26124, !noalias !26125
  br label %_RINvXsd_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtB6_13OptionVisitorINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEENtB8_7Visitor10visit_someQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerINtNtB2a_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvXsd_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtB6_13OptionVisitorINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEENtB8_7Visitor10visit_someQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerINtNtB2a_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f, %bb.e
  %.sink.i.i = phi ptr [ %i.p, %bb.e ], [ %i.m, %bb.f ]
  %storemerge.i.i = phi i64 [ 1, %bb.e ], [ 0, %bb.f ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i.i, ptr %i.s, align 8, !alias.scope !26124, !noalias !26125
  store i64 %storemerge.i.i, ptr %0, align 8, !alias.scope !26124, !noalias !26125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26122
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_optionINtNtB1n_5impls13OptionVisitorINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEEECs14kWLkQVSKO_14deltalake_core.exit

bb.g:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read7discardCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.t), !noalias !26114
  %i.u = call noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRShEE11parse_identCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 3), !noalias !26114 ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false), !alias.scope !26126, !noalias !26129
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_optionINtNtB1n_5impls13OptionVisitorINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEEECs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %bb.g, %bb.b
  %.sink.i = phi ptr [ %i.f, %bb.b ], [ %i.u, %bb.g ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i, ptr %i.v, align 8, !alias.scope !26114, !noalias !26129
  store i64 1, ptr %0, align 8, !alias.scope !26114, !noalias !26129
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_optionINtNtB1n_5impls13OptionVisitorINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEEECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadRShEENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_optionINtNtB1n_5impls13OptionVisitorINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvXsd_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtB6_13OptionVisitorINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEENtB8_7Visitor10visit_someQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerINtNtB2a_4read6IoReadRShEEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26117
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEENtB8_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2x_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26133)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26135
  call void @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !26130
  %i.c = load i8, ptr %i.b, align 8, !range !137, !noalias !26135, !noundef !3
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noalias !26135, !nonnull !3, !align !42, !noundef !3
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.h = load i8, ptr %i.g, align 1, !range !137, !noalias !26135, !noundef !3
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.k = load i8, ptr %i.j, align 2, !noalias !26135
  %i.l = icmp eq i8 %i.k, 110
  %or.cond.i = select i1 %i.i, i1 %i.l, i1 false
  br i1 %or.cond.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !26136)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26139
  call void @_RINvXs3s_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc4sync3ArceENtB9_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB1V_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !26141
  %i.m = load ptr, ptr %i.a, align 8, !noalias !26139, !noundef !3 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.o, align 8, !noalias !26139, !nonnull !3, !align !42, !noundef !3
  br label %_RINvXsd_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtB6_13OptionVisitorINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEENtB8_7Visitor10visit_someQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2a_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.f:                                             ; preds = %bb.d
  %i.q = load i64, ptr %i.o, align 8, !noalias !26139, !noundef !3
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.q, ptr %i.r, align 8, !alias.scope !26141, !noalias !26142
  br label %_RINvXsd_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtB6_13OptionVisitorINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEENtB8_7Visitor10visit_someQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2a_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvXsd_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtB6_13OptionVisitorINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEENtB8_7Visitor10visit_someQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2a_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f, %bb.e
  %.sink.i.i = phi ptr [ %i.p, %bb.e ], [ %i.m, %bb.f ]
  %storemerge.i.i = phi i64 [ 1, %bb.e ], [ 0, %bb.f ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i.i, ptr %i.s, align 8, !alias.scope !26141, !noalias !26142
  store i64 %storemerge.i.i, ptr %0, align 8, !alias.scope !26141, !noalias !26142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26139
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_optionINtNtB1l_5impls13OptionVisitorINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEEECs14kWLkQVSKO_14deltalake_core.exit

bb.g:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !26143, !noalias !26130, !noundef !3
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8, !alias.scope !26143, !noalias !26130
  %i.w = call noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 3), !noalias !26130 ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false), !alias.scope !26146, !noalias !26133
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_optionINtNtB1l_5impls13OptionVisitorINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEEECs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %bb.g, %bb.b
  %.sink.i = phi ptr [ %i.f, %bb.b ], [ %i.w, %bb.g ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i, ptr %i.x, align 8, !alias.scope !26130, !noalias !26133
  store i64 1, ptr %0, align 8, !alias.scope !26130, !noalias !26133
  br label %_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_optionINtNtB1l_5impls13OptionVisitorINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEEECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_optionINtNtB1l_5impls13OptionVisitorINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvXsd_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtB6_13OptionVisitorINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEENtB8_7Visitor10visit_someQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2a_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26135
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBK_B2g_EEENtB8_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB3E_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 16)) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26152)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26154
  call void @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !26149
  %i.c = load i8, ptr %i.b, align 8, !range !137, !noalias !26154, !noundef !3
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noalias !26154, !nonnull !3, !align !42, !noundef !3
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.h = load i8, ptr %i.g, align 1, !range !137, !noalias !26154, !noundef !3
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.k = load i8, ptr %i.j, align 2, !noalias !26154
  %i.l = icmp eq i8 %i.k, 110
  %or.cond.i = select i1 %i.i, i1 %i.l, i1 false
  br i1 %or.cond.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !26155)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26158
  call void @_RINvXs3g_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB1F_EENtB9_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB3A_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !26160
  %i.m = load ptr, ptr %i.a, align 8, !noalias !26158, !noundef !3
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !26158, !nonnull !3, !align !42, !noundef !3
end_hunk_0
