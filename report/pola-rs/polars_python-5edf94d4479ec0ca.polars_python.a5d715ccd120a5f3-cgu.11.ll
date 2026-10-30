Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_python-5edf94d4479ec0ca.polars_python.a5d715ccd120a5f3-cgu.11?download=true
inline.NumInlined: 17758
inline.NumDeleted: 7698
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumUnrolled: 27
loop-unroll.NumUnrolledNotLatch: 5
begin_hunk_0_@_RINvXs9_NtCsk1caaszg7Cl_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9MapAccess13next_key_seedINtNtCscgRAwXFJnXP_4core6marker11PhantomDatajEECseeLknQCOKOd_13polars_python:bb.a
  %i.p = add i64 %i.o, 1, !dbg !117422            ; 3 uses
  store i64 %i.p, ptr %i.n, align 8, !dbg !117422, !alias.scope !117395
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117396), !dbg !117423
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117397), !dbg !117424
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 32, !dbg !117425 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !dbg !117425, !alias.scope !117398, !noundef !1853
  %i.s = icmp ult i64 %i.p, %i.r, !dbg !117426
  br i1 %i.s, label %bb.f, label %bb.l, !dbg !117426

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.m, align 8, !dbg !117427, !alias.scope !117398, !nonnull !1853, !noundef !1853
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.p, !dbg !117427
  %i.v = load i8, ptr %i.u, align 1, !dbg !117427, !noalias !117399, !noundef !1853 ; 3 uses
  %i.w = icmp ugt i8 %i.v, 47, !dbg !117428
  br i1 %i.w, label %bb.h, label %bb.g, !dbg !117428

bb.g:                                             ; preds = %bb.f
  %.old2.i.i.i.i = icmp eq i8 %i.v, 45, !dbg !117429
  br i1 %.old2.i.i.i.i, label %bb.i, label %bb.l, !dbg !117429, !prof !1896

bb.h:                                             ; preds = %bb.f
  %i.x = icmp ult i8 %i.v, 58, !dbg !117428
  br i1 %i.x, label %bb.i, label %bb.l, !dbg !117428, !prof !2660

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = tail call fastcc { i64, ptr } @_RINvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB6_12DeserializerNtNtB8_4read7StrReadE18deserialize_numberNtNvXs1c_NtNtCs40veMcpUDl8_10serde_core2de5implsjNtB1L_11Deserialize11deserialize16PrimitiveVisitorECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.l), !dbg !117430 ; 3 uses
  %i.z = extractvalue { i64, ptr } %i.y, 0, !dbg !117431
  %i.aa = extractvalue { i64, ptr } %i.y, 1, !dbg !117431
  %i.ab = trunc nuw i64 %i.z to i1, !dbg !117432
  br i1 %i.ab, label %_RINvXs3_NtCs40veMcpUDl8_10serde_core2deINtNtCscgRAwXFJnXP_4core6marker11PhantomDatajENtB6_15DeserializeSeed11deserializeINtNtCsk1caaszg7Cl_10serde_json2de6MapKeyNtNtB1Z_4read7StrReadEECseeLknQCOKOd_13polars_python.exit, label %bb.j, !dbg !117432

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117401), !dbg !117433
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117402), !dbg !117434
  %i.ac = load i64, ptr %i.n, align 8, !dbg !117435, !alias.scope !117403, !noundef !1853 ; 3 uses
  %i.ad = load i64, ptr %i.q, align 8, !dbg !117436, !alias.scope !117403, !noundef !1853
  %i.ae = icmp ult i64 %i.ac, %i.ad, !dbg !117435
  br i1 %i.ae, label %_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit24.i.i.i.i, label %_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit24.thread.i.i.i.i, !dbg !117435

_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit24.i.i.i.i: ; preds = %bb.j
  %i.af = load ptr, ptr %i.m, align 8, !dbg !117437, !alias.scope !117403, !nonnull !1853, !noundef !1853
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac, !dbg !117437
  %i.ah = load i8, ptr %i.ag, align 1, !dbg !117437, !noalias !117404, !noundef !1853
  %i.ai = icmp eq i8 %i.ah, 34, !dbg !117438
  br i1 %i.ai, label %bb.k, label %_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit24.thread.i.i.i.i, !dbg !117438, !prof !2226

bb.k:                                             ; preds = %_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit24.i.i.i.i
  %i.aj = add nuw i64 %i.ac, 1, !dbg !117439
  store i64 %i.aj, ptr %i.n, align 8, !dbg !117439, !alias.scope !117405
  %i.ak = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.aa, 1, !dbg !117440
  br label %_RINvXs3_NtCs40veMcpUDl8_10serde_core2deINtNtCscgRAwXFJnXP_4core6marker11PhantomDatajENtB6_15DeserializeSeed11deserializeINtNtCsk1caaszg7Cl_10serde_json2de6MapKeyNtNtB1Z_4read7StrReadEECseeLknQCOKOd_13polars_python.exit, !dbg !117440

_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit24.thread.i.i.i.i: ; preds = %_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit24.i.i.i.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !117441, !noalias !117406
  store i64 11, ptr %i.a, align 8, !dbg !117441, !noalias !117406
  %i.al = call noundef nonnull align 8 ptr @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !117442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !117443, !noalias !117406
  %i.am = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.al, 1, !dbg !117440
  br label %_RINvXs3_NtCs40veMcpUDl8_10serde_core2deINtNtCscgRAwXFJnXP_4core6marker11PhantomDatajENtB6_15DeserializeSeed11deserializeINtNtCsk1caaszg7Cl_10serde_json2de6MapKeyNtNtB1Z_4read7StrReadEECseeLknQCOKOd_13polars_python.exit, !dbg !117440

bb.l:                                             ; preds = %bb.h, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !117444, !noalias !117406
  store i64 18, ptr %i.b, align 8, !dbg !117444, !noalias !117406
  %i.an = call noundef nonnull align 8 ptr @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !117445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !117446, !noalias !117406
  %i.ao = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.an, 1, !dbg !117440
  br label %_RINvXs3_NtCs40veMcpUDl8_10serde_core2deINtNtCscgRAwXFJnXP_4core6marker11PhantomDatajENtB6_15DeserializeSeed11deserializeINtNtCsk1caaszg7Cl_10serde_json2de6MapKeyNtNtB1Z_4read7StrReadEECseeLknQCOKOd_13polars_python.exit, !dbg !117440

_RINvXs3_NtCs40veMcpUDl8_10serde_core2deINtNtCscgRAwXFJnXP_4core6marker11PhantomDatajENtB6_15DeserializeSeed11deserializeINtNtCsk1caaszg7Cl_10serde_json2de6MapKeyNtNtB1Z_4read7StrReadEECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.i, %bb.k, %_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit24.thread.i.i.i.i, %bb.l
  %.merged.i.i.i.i = phi { i64, ptr } [ %i.ao, %bb.l ], [ %i.ak, %bb.k ], [ %i.am, %_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit24.thread.i.i.i.i ], [ %i.y, %bb.i ], !dbg !117447 ; 2 uses
  %i.ap = extractvalue { i64, ptr } %.merged.i.i.i.i, 0, !dbg !117448
  %i.aq = extractvalue { i64, ptr } %.merged.i.i.i.i, 1, !dbg !117448 ; 2 uses
  %i.ar = trunc nuw i64 %i.ap to i1, !dbg !117409
  br i1 %i.ar, label %bb.n, label %bb.o, !dbg !117409

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.d, %bb.b
  ret void, !dbg !117449

bb.n:                                             ; preds = %_RINvXs3_NtCs40veMcpUDl8_10serde_core2deINtNtCscgRAwXFJnXP_4core6marker11PhantomDatajENtB6_15DeserializeSeed11deserializeINtNtCsk1caaszg7Cl_10serde_json2de6MapKeyNtNtB1Z_4read7StrReadEECseeLknQCOKOd_13polars_python.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !117450
  store ptr %i.aq, ptr %i.as, align 8, !dbg !117450
  store i64 2, ptr %0, align 8, !dbg !117450
  br label %bb.m, !dbg !117451

bb.o:                                             ; preds = %_RINvXs3_NtCs40veMcpUDl8_10serde_core2deINtNtCscgRAwXFJnXP_4core6marker11PhantomDatajENtB6_15DeserializeSeed11deserializeINtNtCsk1caaszg7Cl_10serde_json2de6MapKeyNtNtB1Z_4read7StrReadEECseeLknQCOKOd_13polars_python.exit
  %i.at = ptrtoint ptr %i.aq to i64, !dbg !117448
  store i64 1, ptr %0, align 8, !dbg !117452
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !117452
  store i64 %i.at, ptr %i.au, align 8, !dbg !117452
  br label %bb.m, !dbg !117453
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtCsk1caaszg7Cl_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9MapAccess13next_key_seedINtNtCscgRAwXFJnXP_4core6marker11PhantomDatamEECseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !117454 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !117531
  call fastcc void @_RINvNvXs9_NtCsk1caaszg7Cl_10serde_json2deINtB8_9MapAccesspENtNtCs40veMcpUDl8_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.d, ptr noalias noundef align 8 dereferenceable(16) %1), !dbg !117531
  %i.e = load i8, ptr %i.d, align 8, !dbg !117531, !range !2053, !noundef !1853
  %i.f = trunc nuw i8 %i.e to i1, !dbg !117531
  br i1 %i.f, label %bb.b, label %bb.c, !dbg !117532

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !117533
  %i.h = load ptr, ptr %i.g, align 8, !dbg !117533, !nonnull !1853, !align !1880, !noundef !1853
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !117534
  store ptr %i.h, ptr %i.i, align 8, !dbg !117534
  store i32 1, ptr %0, align 8, !dbg !117534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !117535
  br label %2, !dbg !117536

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 1, !dbg !117537
  %i.k = load i8, ptr %i.j, align 1, !dbg !117537, !range !2053, !noundef !1853
  %i.l = trunc nuw i8 %i.k to i1, !dbg !117537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !117535
  br i1 %i.l, label %bb.e, label %bb.d, !dbg !117532

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !117538
  store i32 0, ptr %i.m, align 4, !dbg !117538
  store i32 0, ptr %0, align 8, !dbg !117538
  br label %2, !dbg !117536

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !117539
  %i.n = load ptr, ptr %1, align 8, !dbg !117540, !nonnull !1853, !align !1880, !noundef !1853 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117509), !dbg !117541
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117510), !dbg !117541
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117511), !dbg !117542
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117512), !dbg !117542
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117513), !dbg !117543
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117514), !dbg !117543
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117515), !dbg !117544
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117516), !dbg !117544
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !117545 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 40, !dbg !117546 ; 4 uses
  %i.q = load i64, ptr %i.p, align 8, !dbg !117546, !alias.scope !117517, !noundef !1853
  %i.r = add i64 %i.q, 1, !dbg !117546            ; 3 uses
  store i64 %i.r, ptr %i.p, align 8, !dbg !117546, !alias.scope !117517
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117518), !dbg !117547
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117519), !dbg !117548
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !117549 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !dbg !117549, !alias.scope !117520, !noundef !1853
  %i.u = icmp ult i64 %i.r, %i.t, !dbg !117550
  br i1 %i.u, label %bb.f, label %bb.k, !dbg !117550

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.o, align 8, !dbg !117551, !alias.scope !117520, !nonnull !1853, !noundef !1853
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.r, !dbg !117551
  %i.x = load i8, ptr %i.w, align 1, !dbg !117551, !noalias !117521, !noundef !1853 ; 3 uses
  %i.y = icmp ugt i8 %i.x, 47, !dbg !117552
  br i1 %i.y, label %bb.h, label %bb.g, !dbg !117552

bb.g:                                             ; preds = %bb.f
  %.old2.i.i.i.i = icmp eq i8 %i.x, 45, !dbg !117553
  br i1 %.old2.i.i.i.i, label %bb.i, label %bb.k, !dbg !117553, !prof !1896

bb.h:                                             ; preds = %bb.f
  %i.z = icmp ult i8 %i.x, 58, !dbg !117552
  br i1 %i.z, label %bb.i, label %bb.k, !dbg !117552, !prof !2660

bb.i:                                             ; preds = %bb.h, %bb.g
  call fastcc void @_RINvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB6_12DeserializerNtNtB8_4read7StrReadE18deserialize_numberNtNvXs16_NtNtCs40veMcpUDl8_10serde_core2de5implsmNtB1L_11Deserialize11deserialize16PrimitiveVisitorECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.n), !dbg !117554
  %i.aa = load i32, ptr %i.c, align 8, !dbg !117555, !range !1894, !alias.scope !117522, !noundef !1853
  %i.ab = trunc nuw i32 %i.aa to i1, !dbg !117556
  br i1 %i.ab, label %_RINvXs3_NtCs40veMcpUDl8_10serde_core2deINtNtCscgRAwXFJnXP_4core6marker11PhantomDatamENtB6_15DeserializeSeed11deserializeINtNtCsk1caaszg7Cl_10serde_json2de6MapKeyNtNtB1Z_4read7StrReadEECseeLknQCOKOd_13polars_python.exit.thread, label %bb.j, !dbg !117556

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117524), !dbg !117557
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117525), !dbg !117558
  %i.ac = load i64, ptr %i.p, align 8, !dbg !117559, !alias.scope !117526, !noundef !1853 ; 3 uses
  %i.ad = load i64, ptr %i.s, align 8, !dbg !117560, !alias.scope !117526, !noundef !1853
  %i.ae = icmp ult i64 %i.ac, %i.ad, !dbg !117559
  br i1 %i.ae, label %_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit19.i.i.i.i, label %_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit19.thread.i.i.i.i, !dbg !117559

_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit19.i.i.i.i: ; preds = %bb.j
  %i.af = load ptr, ptr %i.o, align 8, !dbg !117561, !alias.scope !117526, !nonnull !1853, !noundef !1853
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac, !dbg !117561
  %i.ah = load i8, ptr %i.ag, align 1, !dbg !117561, !noalias !117527, !noundef !1853
  %i.ai = icmp eq i8 %i.ah, 34, !dbg !117562
  br i1 %i.ai, label %bb.l, label %_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit19.thread.i.i.i.i, !dbg !117562, !prof !2226

_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit19.thread.i.i.i.i: ; preds = %_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit19.i.i.i.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !117563, !noalias !117528
  store i64 11, ptr %i.a, align 8, !dbg !117563, !noalias !117528
  %i.aj = call noundef nonnull align 8 ptr @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !117564, !noalias !117522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !117565, !noalias !117528
  br label %_RINvXs3_NtCs40veMcpUDl8_10serde_core2deINtNtCscgRAwXFJnXP_4core6marker11PhantomDatamENtB6_15DeserializeSeed11deserializeINtNtCsk1caaszg7Cl_10serde_json2de6MapKeyNtNtB1Z_4read7StrReadEECseeLknQCOKOd_13polars_python.exit.thread4, !dbg !117566

bb.k:                                             ; preds = %bb.h, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !117567, !noalias !117528
  store i64 18, ptr %i.b, align 8, !dbg !117567, !noalias !117528
  %i.ak = call noundef nonnull align 8 ptr @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !117568, !noalias !117522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !117569, !noalias !117528
  br label %_RINvXs3_NtCs40veMcpUDl8_10serde_core2deINtNtCscgRAwXFJnXP_4core6marker11PhantomDatamENtB6_15DeserializeSeed11deserializeINtNtCsk1caaszg7Cl_10serde_json2de6MapKeyNtNtB1Z_4read7StrReadEECseeLknQCOKOd_13polars_python.exit.thread4, !dbg !117566

2:                                                ; preds = %bb.l, %_RINvXs3_NtCs40veMcpUDl8_10serde_core2deINtNtCscgRAwXFJnXP_4core6marker11PhantomDatamENtB6_15DeserializeSeed11deserializeINtNtCsk1caaszg7Cl_10serde_json2de6MapKeyNtNtB1Z_4read7StrReadEECseeLknQCOKOd_13polars_python.exit.thread, %bb.d, %bb.b
  ret void, !dbg !117570

_RINvXs3_NtCs40veMcpUDl8_10serde_core2deINtNtCscgRAwXFJnXP_4core6marker11PhantomDatamENtB6_15DeserializeSeed11deserializeINtNtCsk1caaszg7Cl_10serde_json2de6MapKeyNtNtB1Z_4read7StrReadEECseeLknQCOKOd_13polars_python.exit.thread4: ; preds = %bb.k, %_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit19.thread.i.i.i.i
  %.sink = phi ptr [ %i.aj, %_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit19.thread.i.i.i.i ], [ %i.ak, %bb.k ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !117571
  store ptr %.sink, ptr %i.al, align 8, !dbg !117571, !alias.scope !117522
  br label %_RINvXs3_NtCs40veMcpUDl8_10serde_core2deINtNtCscgRAwXFJnXP_4core6marker11PhantomDatamENtB6_15DeserializeSeed11deserializeINtNtCsk1caaszg7Cl_10serde_json2de6MapKeyNtNtB1Z_4read7StrReadEECseeLknQCOKOd_13polars_python.exit.thread, !dbg !117533

_RINvXs3_NtCs40veMcpUDl8_10serde_core2deINtNtCscgRAwXFJnXP_4core6marker11PhantomDatamENtB6_15DeserializeSeed11deserializeINtNtCsk1caaszg7Cl_10serde_json2de6MapKeyNtNtB1Z_4read7StrReadEECseeLknQCOKOd_13polars_python.exit.thread: ; preds = %_RINvXs3_NtCs40veMcpUDl8_10serde_core2deINtNtCscgRAwXFJnXP_4core6marker11PhantomDatamENtB6_15DeserializeSeed11deserializeINtNtCsk1caaszg7Cl_10serde_json2de6MapKeyNtNtB1Z_4read7StrReadEECseeLknQCOKOd_13polars_python.exit.thread4, %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !117533
  %i.an = load ptr, ptr %i.am, align 8, !dbg !117533, !nonnull !1853, !align !1880, !noundef !1853
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !117572
  store ptr %i.an, ptr %i.ao, align 8, !dbg !117572
  store i32 1, ptr %0, align 8, !dbg !117572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !117573
  br label %2, !dbg !117574

bb.l:                                             ; preds = %_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit19.i.i.i.i
  %i.ap = add nuw i64 %i.ac, 1, !dbg !117575
  store i64 %i.ap, ptr %i.p, align 8, !dbg !117575, !alias.scope !117530
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 4, !dbg !117537
  %i.ar = load i32, ptr %i.aq, align 4, !dbg !117537, !noundef !1853
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !117576
  store i32 1, ptr %i.as, align 4, !dbg !117576
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !117576
  store i32 %i.ar, ptr %i.at, align 8, !dbg !117576
  store i32 0, ptr %0, align 8, !dbg !117576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !117573
  br label %2, !dbg !117577
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtCsk1caaszg7Cl_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9MapAccess15next_value_seedINtNtCscgRAwXFJnXP_4core6marker11PhantomDataINtNtB2f_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtCsgZ49sUHp3tW_5alloc6string6StringEEECseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias noundef writable sret([160 x i8]) align 16 captures(address) dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !117578 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !dbg !117617, !nonnull !1853, !align !1880, !noundef !1853 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117608), !dbg !117618
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117609), !dbg !117619
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !117610, !noundef !1853 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.d, align 8, !alias.scope !117611 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i.i, %i.f, !dbg !117620
  br i1 %i.g, label %.lr.ph.i.i, label %.loopexit.i, !dbg !117620

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !117610, !nonnull !1853, !noundef !1853
  br label %bb.b, !dbg !117620

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.j = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117612), !dbg !117621
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117613), !dbg !117622
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j, !dbg !117623
  %i.l = load i8, ptr %i.k, align 1, !dbg !117623, !noalias !117614, !noundef !1853
  switch i8 %i.l, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 58, label %bb.f
  ], !dbg !117624, !prof !2193

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add nuw i64 %i.j, 1, !dbg !117625        ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !dbg !117625, !alias.scope !117615
  %exitcond.not.i.i = icmp eq i64 %i.m, %i.f, !dbg !117620
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b, !dbg !117620

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !117626, !noalias !117608
  store i64 3, ptr %i.a, align 8, !dbg !117626, !noalias !117608
  %i.n = call noundef nonnull align 8 ptr @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !117627
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !117628, !noalias !117608
  br label %bb.e, !dbg !117629

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !117630, !noalias !117608
  store i64 6, ptr %i.b, align 8, !dbg !117630, !noalias !117608
  %i.o = call noundef nonnull align 8 ptr @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !117631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !117632, !noalias !117608
  br label %bb.e, !dbg !117633

bb.e:                                             ; preds = %bb.d, %.loopexit.i
  %.sroa.0.0.i.ph = phi ptr [ %i.n, %.loopexit.i ], [ %i.o, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !117634
  store ptr %.sroa.0.0.i.ph, ptr %i.p, align 8, !dbg !117634
  store i8 33, ptr %0, align 16, !dbg !117634
  br label %bb.g, !dbg !117635

bb.f:                                             ; preds = %bb.b
  %i.q = add nuw i64 %i.j, 1, !dbg !117636
  store i64 %i.q, ptr %i.d, align 8, !dbg !117636, !alias.scope !117616
  tail call void @_RINvXsF_NtNtCs40veMcpUDl8_10serde_core2de5implsINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtCsgZ49sUHp3tW_5alloc6string6StringENtB8_11Deserialize11deserializeQINtNtCsk1caaszg7Cl_10serde_json2de12DeserializerNtNtB3q_4read7StrReadEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c), !dbg !117637
  br label %bb.g, !dbg !117638

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void, !dbg !117639
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtCsk1caaszg7Cl_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9MapAccess15next_value_seedINtNtCscgRAwXFJnXP_4core6marker11PhantomDataINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtB2X_6string6StringEEECseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !117640 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !dbg !117679, !nonnull !1853, !align !1880, !noundef !1853 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117670), !dbg !117680
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117671), !dbg !117681
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !117672, !noundef !1853 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.d, align 8, !alias.scope !117673 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i.i, %i.f, !dbg !117682
  br i1 %i.g, label %.lr.ph.i.i, label %.loopexit.i, !dbg !117682

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !117672, !nonnull !1853, !noundef !1853
  br label %bb.b, !dbg !117682

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.j = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117674), !dbg !117683
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117675), !dbg !117684
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j, !dbg !117685
  %i.l = load i8, ptr %i.k, align 1, !dbg !117685, !noalias !117676, !noundef !1853
  switch i8 %i.l, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 58, label %bb.f
  ], !dbg !117686, !prof !2193

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add nuw i64 %i.j, 1, !dbg !117687        ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !dbg !117687, !alias.scope !117677
  %exitcond.not.i.i = icmp eq i64 %i.m, %i.f, !dbg !117682
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b, !dbg !117682

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !117688, !noalias !117670
  store i64 3, ptr %i.a, align 8, !dbg !117688, !noalias !117670
  %i.n = call noundef nonnull align 8 ptr @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !117689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !117690, !noalias !117670
  br label %bb.e, !dbg !117691

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !117692, !noalias !117670
  store i64 6, ptr %i.b, align 8, !dbg !117692, !noalias !117670
  %i.o = call noundef nonnull align 8 ptr @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !117693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !117694, !noalias !117670
  br label %bb.e, !dbg !117695

bb.e:                                             ; preds = %bb.d, %.loopexit.i
  %.sroa.0.0.i.ph = phi ptr [ %i.n, %.loopexit.i ], [ %i.o, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !117696
  store ptr %.sroa.0.0.i.ph, ptr %i.p, align 8, !dbg !117696
  store ptr null, ptr %0, align 8, !dbg !117696
  br label %bb.g, !dbg !117697

bb.f:                                             ; preds = %bb.b
  %i.q = add nuw i64 %i.j, 1, !dbg !117698
  store i64 %i.q, ptr %i.d, align 8, !dbg !117698, !alias.scope !117678
  tail call void @_RINvXs3s_NtNtCs40veMcpUDl8_10serde_core2de5implsINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtBP_6string6StringENtB9_11Deserialize11deserializeQINtNtCsk1caaszg7Cl_10serde_json2de12DeserializerNtNtB2g_4read7StrReadEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c), !dbg !117699
  br label %bb.g, !dbg !117700

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void, !dbg !117701
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtCsk1caaszg7Cl_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9MapAccess15next_value_seedINtNtCscgRAwXFJnXP_4core6marker11PhantomDataNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarEECseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !117702 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !dbg !117740, !nonnull !1853, !align !1880, !noundef !1853 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117731), !dbg !117741
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117732), !dbg !117742
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !117733, !noundef !1853 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.d, align 8, !alias.scope !117734 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i.i, %i.f, !dbg !117743
  br i1 %i.g, label %.lr.ph.i.i, label %.loopexit.i, !dbg !117743

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !117733, !nonnull !1853, !noundef !1853
  br label %bb.b, !dbg !117743

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.j = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117735), !dbg !117744
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117736), !dbg !117745
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j, !dbg !117746
  %i.l = load i8, ptr %i.k, align 1, !dbg !117746, !noalias !117737, !noundef !1853
  switch i8 %i.l, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 58, label %bb.f
  ], !dbg !117747, !prof !2193

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add nuw i64 %i.j, 1, !dbg !117748        ; 3 uses
end_hunk_0
begin_hunk_1_@llvm.umin.i8
!117370 = distinct !DILocation(line: 220, column: 19, scope: !117366, inlinedAt: !117367)
!117371 = distinct !DILocation(line: 689, column: 23, scope: !5, inlinedAt: !117370)
!117372 = distinct !{!117372, !117364, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek: argument 0"}
!117373 = distinct !{!117373, !117368, !"_RNvXs5_NtCsk1caaszg7Cl_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek: argument 0"}
!117374 = distinct !{!117374, i1 true, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek"}
!117375 = distinct !{!117375, !117374, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek: argument 1"}
!117376 = distinct !DILexicalBlock(scope: !117357, file: !1867, line: 2189, column: 13)
!117377 = distinct !DILocation(line: 2191, column: 32, scope: !117376, inlinedAt: !117358)
!117378 = distinct !{!117378, i1 true, !"_RNvXs5_NtCsk1caaszg7Cl_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek"}
!117379 = distinct !{!117379, !117378, !"_RNvXs5_NtCsk1caaszg7Cl_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek: argument 1"}
!117380 = distinct !DILocation(line: 220, column: 19, scope: !117366, inlinedAt: !117377)
!117381 = distinct !DILocation(line: 689, column: 23, scope: !5, inlinedAt: !117380)
!117382 = distinct !{!117382, !117374, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek: argument 0"}
!117383 = distinct !{!117383, !117378, !"_RNvXs5_NtCsk1caaszg7Cl_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek: argument 0"}
!117384 = distinct !DILocation(line: 2192, column: 39, scope: !117376, inlinedAt: !117358)
!117385 = distinct !DILocation(line: 228, column: 19, scope: !117356, inlinedAt: !117384)
!117386 = distinct !DILocation(line: 694, column: 23, scope: !9, inlinedAt: !117385)
!117387 = distinct !{!117387, i1 true, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read7discard"}
!117388 = distinct !{!117388, !117387, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read7discard: argument 0"}
!117389 = distinct !DILexicalBlock(scope: !117340, file: !1875, line: 414, column: 13)
!117390 = !DILexicalBlockFile(scope: !117340, file: !1875, discriminator: 0)
!117391 = !{!117343}
!117392 = !{!117345}
!117393 = !{!117349}
!117394 = !{!117353}
!117395 = !{!117363, !117353, !117349, !117345, !117343}
!117396 = !{!117365}
!117397 = !{!117369}
!117398 = !{!117369, !117365, !117353, !117349, !117345, !117343}
!117399 = !{!117373, !117369, !117372, !117365, !117353, !117349, !117345, !117343}
!117400 = !DILexicalBlockFile(scope: !117357, file: !1875, discriminator: 0)
!117401 = !{!117375}
!117402 = !{!117379}
!117403 = !{!117379, !117375, !117353, !117349, !117345, !117343}
!117404 = !{!117383, !117379, !117382, !117375}
!117405 = !{!117388, !117353, !117349, !117345, !117343}
!117406 = !{!117353, !117349, !117345, !117343}
!117407 = !DILexicalBlockFile(scope: !117340, file: !1877, discriminator: 0)
!117408 = !DILocation(line: 2020, column: 17, scope: !117340)
!117409 = !DILocation(line: 412, column: 9, scope: !117390)
!117410 = !DILocation(line: 414, column: 39, scope: !117390)
!117411 = !DILocation(line: 414, column: 54, scope: !117341)
!117412 = !DILocation(line: 415, column: 9, scope: !117390)
!117413 = !DILocation(line: 2025, column: 5, scope: !117340)
!117414 = !DILocation(line: 413, column: 38, scope: !117390)
!117415 = !DILocation(line: 2023, column: 13, scope: !117340)
!117416 = !DILocation(line: 2021, column: 56, scope: !117340)
!117417 = !DILocation(line: 2021, column: 31, scope: !117340)
!117418 = !DILocation(line: 825, column: 9, scope: !117346, inlinedAt: !117347)
!117419 = !DILocation(line: 148, column: 30, scope: !117350, inlinedAt: !117351)
!117420 = !DILocation(line: 2173, column: 18, scope: !117354, inlinedAt: !117355)
!117421 = !DILocation(line: 228, column: 9, scope: !117356, inlinedAt: !117359)
!117422 = !DILocation(line: 570, column: 9, scope: !8, inlinedAt: !117361)
!117423 = !DILocation(line: 220, column: 19, scope: !117366, inlinedAt: !117367)
!117424 = !DILocation(line: 689, column: 23, scope: !5, inlinedAt: !117370)
!117425 = !DILocation(line: 561, column: 28, scope: !4, inlinedAt: !117371)
!117426 = !DILocation(line: 561, column: 15, scope: !4, inlinedAt: !117371)
!117427 = !DILocation(line: 562, column: 18, scope: !4, inlinedAt: !117371)
!117428 = !DILocation(line: 2185, column: 22, scope: !117357, inlinedAt: !117358)
!117429 = !DILocation(line: 2184, column: 13, scope: !117357, inlinedAt: !117358)
!117430 = !DILocation(line: 2189, column: 38, scope: !117357, inlinedAt: !117358)
!117431 = !DILocation(line: 2189, column: 30, scope: !117357, inlinedAt: !117358)
!117432 = !DILocation(line: 412, column: 9, scope: !117400, inlinedAt: !117358)
!117433 = !DILocation(line: 220, column: 19, scope: !117366, inlinedAt: !117377)
!117434 = !DILocation(line: 689, column: 23, scope: !5, inlinedAt: !117380)
!117435 = !DILocation(line: 561, column: 15, scope: !4, inlinedAt: !117381)
!117436 = !DILocation(line: 561, column: 28, scope: !4, inlinedAt: !117381)
!117437 = !DILocation(line: 562, column: 18, scope: !4, inlinedAt: !117381)
!117438 = !DILocation(line: 2191, column: 13, scope: !117376, inlinedAt: !117358)
!117439 = !DILocation(line: 570, column: 9, scope: !8, inlinedAt: !117386)
!117440 = !DILocation(line: 2197, column: 9, scope: !117357, inlinedAt: !117358)
!117441 = !DILocation(line: 2193, column: 52, scope: !117376, inlinedAt: !117358)
!117442 = !DILocation(line: 2193, column: 41, scope: !117376, inlinedAt: !117358)
!117443 = !DILocation(line: 2193, column: 82, scope: !117376, inlinedAt: !117358)
!117444 = !DILocation(line: 2186, column: 47, scope: !117357, inlinedAt: !117358)
!117445 = !DILocation(line: 2186, column: 41, scope: !117357, inlinedAt: !117358)
!117446 = !DILocation(line: 2186, column: 76, scope: !117357, inlinedAt: !117358)
!117447 = !DILocation(line: 2197, column: 10, scope: !117357, inlinedAt: !117358)
!117448 = !DILocation(line: 2021, column: 26, scope: !117340)
!117449 = !DILocation(line: 2025, column: 6, scope: !117340)
!117450 = !DILocation(line: 414, column: 54, scope: !117389)
!117451 = !DILocation(line: 0, scope: !117407)
!117452 = !DILocation(line: 2021, column: 13, scope: !117340)
!117453 = !DILocation(line: 2020, column: 9, scope: !117340)
!117454 = distinct !DISubprogram(name: "next_key_seed<serde_json::read::StrRead, core::marker::PhantomData<u32>>", linkageName: "_RINvXs9_NtCsk1caaszg7Cl_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9MapAccess13next_key_seedINtNtCscgRAwXFJnXP_4core6marker11PhantomDatamEECseeLknQCOKOd_13polars_python", scope: !2175, file: !1867, line: 1986, type: !1854, scopeLine: 1986, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1853)
!117455 = distinct !DILexicalBlock(scope: !117454, file: !1875, line: 414, column: 13)
!117456 = distinct !{!117456, i1 true, !"_RINvXs3_NtCs40veMcpUDl8_10serde_core2deINtNtCscgRAwXFJnXP_4core6marker11PhantomDatamENtB6_15DeserializeSeed11deserializeINtNtCsk1caaszg7Cl_10serde_json2de6MapKeyNtNtB1Z_4read7StrReadEECseeLknQCOKOd_13polars_python"}
!117457 = distinct !{!117457, !117456, !"_RINvXs3_NtCs40veMcpUDl8_10serde_core2deINtNtCscgRAwXFJnXP_4core6marker11PhantomDatamENtB6_15DeserializeSeed11deserializeINtNtCsk1caaszg7Cl_10serde_json2de6MapKeyNtNtB1Z_4read7StrReadEECseeLknQCOKOd_13polars_python: argument 0"}
!117458 = distinct !{!117458, !117456, !"_RINvXs3_NtCs40veMcpUDl8_10serde_core2deINtNtCscgRAwXFJnXP_4core6marker11PhantomDatamENtB6_15DeserializeSeed11deserializeINtNtCsk1caaszg7Cl_10serde_json2de6MapKeyNtNtB1Z_4read7StrReadEECseeLknQCOKOd_13polars_python: argument 1"}
!117459 = distinct !{!117459, i1 true, !"_RINvXs16_NtNtCs40veMcpUDl8_10serde_core2de5implsmNtB9_11Deserialize11deserializeINtNtCsk1caaszg7Cl_10serde_json2de6MapKeyNtNtB1l_4read7StrReadEECseeLknQCOKOd_13polars_python"}
!117460 = distinct !{!117460, !117459, !"_RINvXs16_NtNtCs40veMcpUDl8_10serde_core2de5implsmNtB9_11Deserialize11deserializeINtNtCsk1caaszg7Cl_10serde_json2de6MapKeyNtNtB1l_4read7StrReadEECseeLknQCOKOd_13polars_python: argument 0"}
!117461 = distinct !DISubprogram(name: "deserialize<u32, serde_json::de::MapKey<serde_json::read::StrRead>>", linkageName: "_RINvXs3_NtCs40veMcpUDl8_10serde_core2deINtNtCscgRAwXFJnXP_4core6marker11PhantomDatamENtB6_15DeserializeSeed11deserializeINtNtCsk1caaszg7Cl_10serde_json2de6MapKeyNtNtB1Z_4read7StrReadEECseeLknQCOKOd_13polars_python", scope: !2190, file: !2189, line: 821, type: !1854, scopeLine: 821, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1853)
!117462 = distinct !DILocation(line: 2021, column: 31, scope: !117454)
!117463 = distinct !{!117463, !117459, !"_RINvXs16_NtNtCs40veMcpUDl8_10serde_core2de5implsmNtB9_11Deserialize11deserializeINtNtCsk1caaszg7Cl_10serde_json2de6MapKeyNtNtB1l_4read7StrReadEECseeLknQCOKOd_13polars_python: argument 1"}
!117464 = distinct !{!117464, i1 true, !"_RINvXsh_NtCsk1caaszg7Cl_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de12Deserializer15deserialize_u32NtNvXs16_NtB1b_5implsmNtB1b_11Deserialize11deserialize16PrimitiveVisitorECseeLknQCOKOd_13polars_python"}
!117465 = distinct !{!117465, !117464, !"_RINvXsh_NtCsk1caaszg7Cl_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de12Deserializer15deserialize_u32NtNvXs16_NtB1b_5implsmNtB1b_11Deserialize11deserialize16PrimitiveVisitorECseeLknQCOKOd_13polars_python: argument 0"}
!117466 = distinct !DISubprogram(name: "deserialize<serde_json::de::MapKey<serde_json::read::StrRead>>", linkageName: "_RINvXs16_NtNtCs40veMcpUDl8_10serde_core2de5implsmNtB9_11Deserialize11deserializeINtNtCsk1caaszg7Cl_10serde_json2de6MapKeyNtNtB1l_4read7StrReadEECseeLknQCOKOd_13polars_python", scope: !1889, file: !1885, line: 132, type: !1854, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1853)
!117467 = distinct !DILocation(line: 825, column: 9, scope: !117461, inlinedAt: !117462)
!117468 = distinct !{!117468, !117464, !"_RINvXsh_NtCsk1caaszg7Cl_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de12Deserializer15deserialize_u32NtNvXs16_NtB1b_5implsmNtB1b_11Deserialize11deserialize16PrimitiveVisitorECseeLknQCOKOd_13polars_python: argument 1"}
!117469 = distinct !{!117469, i1 true, !"_RINvMsg_NtCsk1caaszg7Cl_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadE18deserialize_numberNtNvXs16_NtNtCs40veMcpUDl8_10serde_core2de5implsmNtB1E_11Deserialize11deserialize16PrimitiveVisitorECseeLknQCOKOd_13polars_python"}
!117470 = distinct !{!117470, !117469, !"_RINvMsg_NtCsk1caaszg7Cl_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadE18deserialize_numberNtNvXs16_NtNtCs40veMcpUDl8_10serde_core2de5implsmNtB1E_11Deserialize11deserialize16PrimitiveVisitorECseeLknQCOKOd_13polars_python: argument 0"}
!117471 = distinct !DISubprogram(name: "deserialize_u32<serde_json::read::StrRead, serde_core::de::impls::{impl#70}::deserialize::PrimitiveVisitor>", linkageName: "_RINvXsh_NtCsk1caaszg7Cl_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de12Deserializer15deserialize_u32NtNvXs16_NtB1b_5implsmNtB1b_11Deserialize11deserialize16PrimitiveVisitorECseeLknQCOKOd_13polars_python", scope: !2277, file: !1867, line: 2169, type: !1854, scopeLine: 2169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1853)
!117472 = distinct !DILocation(line: 148, column: 30, scope: !117466, inlinedAt: !117467)
!117473 = distinct !{!117473, !117469, !"_RINvMsg_NtCsk1caaszg7Cl_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadE18deserialize_numberNtNvXs16_NtNtCs40veMcpUDl8_10serde_core2de5implsmNtB1E_11Deserialize11deserialize16PrimitiveVisitorECseeLknQCOKOd_13polars_python: argument 1"}
!117474 = distinct !DISubprogram(name: "eat_char<serde_json::read::StrRead>", linkageName: "_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE8eat_charCseeLknQCOKOd_13polars_python", scope: !1870, file: !1867, line: 227, type: !1854, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1853)
!117475 = distinct !DISubprogram(name: "deserialize_number<serde_json::read::StrRead, serde_core::de::impls::{impl#70}::deserialize::PrimitiveVisitor>", linkageName: "_RINvMsg_NtCsk1caaszg7Cl_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadE18deserialize_numberNtNvXs16_NtNtCs40veMcpUDl8_10serde_core2de5implsmNtB1E_11Deserialize11deserialize16PrimitiveVisitorECseeLknQCOKOd_13polars_python", scope: !2659, file: !1867, line: 2178, type: !1854, scopeLine: 2178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1853)
!117476 = distinct !DILocation(line: 2173, column: 18, scope: !117471, inlinedAt: !117472)
!117477 = distinct !DILocation(line: 2182, column: 21, scope: !117475, inlinedAt: !117476)
!117478 = distinct !DILocation(line: 228, column: 19, scope: !117474, inlinedAt: !117477)
!117479 = distinct !DILocation(line: 694, column: 23, scope: !9, inlinedAt: !117478)
!117480 = distinct !{!117480, i1 true, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read7discard"}
!117481 = distinct !{!117481, !117480, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read7discard: argument 0"}
!117482 = distinct !{!117482, i1 true, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek"}
!117483 = distinct !{!117483, !117482, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek: argument 1"}
!117484 = distinct !DISubprogram(name: "peek<serde_json::read::StrRead>", linkageName: "_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE4peekCseeLknQCOKOd_13polars_python", scope: !1870, file: !1867, line: 219, type: !1854, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1853)
!117485 = distinct !DILocation(line: 2184, column: 32, scope: !117475, inlinedAt: !117476)
!117486 = distinct !{!117486, i1 true, !"_RNvXs5_NtCsk1caaszg7Cl_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek"}
!117487 = distinct !{!117487, !117486, !"_RNvXs5_NtCsk1caaszg7Cl_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek: argument 1"}
!117488 = distinct !DILocation(line: 220, column: 19, scope: !117484, inlinedAt: !117485)
!117489 = distinct !DILocation(line: 689, column: 23, scope: !5, inlinedAt: !117488)
!117490 = distinct !{!117490, !117482, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek: argument 0"}
!117491 = distinct !{!117491, !117486, !"_RNvXs5_NtCsk1caaszg7Cl_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek: argument 0"}
!117492 = distinct !{!117492, i1 true, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek"}
!117493 = distinct !{!117493, !117492, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek: argument 1"}
!117494 = distinct !DILexicalBlock(scope: !117475, file: !1867, line: 2189, column: 13)
!117495 = distinct !DILocation(line: 2191, column: 32, scope: !117494, inlinedAt: !117476)
!117496 = distinct !{!117496, i1 true, !"_RNvXs5_NtCsk1caaszg7Cl_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek"}
!117497 = distinct !{!117497, !117496, !"_RNvXs5_NtCsk1caaszg7Cl_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek: argument 1"}
!117498 = distinct !DILocation(line: 220, column: 19, scope: !117484, inlinedAt: !117495)
!117499 = distinct !DILocation(line: 689, column: 23, scope: !5, inlinedAt: !117498)
!117500 = distinct !{!117500, !117492, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek: argument 0"}
!117501 = distinct !{!117501, !117496, !"_RNvXs5_NtCsk1caaszg7Cl_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek: argument 0"}
!117502 = distinct !DILexicalBlock(scope: !117454, file: !1875, line: 414, column: 13)
!117503 = distinct !DILocation(line: 2192, column: 39, scope: !117494, inlinedAt: !117476)
!117504 = distinct !DILocation(line: 228, column: 19, scope: !117474, inlinedAt: !117503)
!117505 = distinct !DILocation(line: 694, column: 23, scope: !9, inlinedAt: !117504)
!117506 = distinct !{!117506, i1 true, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read7discard"}
!117507 = distinct !{!117507, !117506, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read7discard: argument 0"}
!117508 = !DILexicalBlockFile(scope: !117454, file: !1875, discriminator: 0)
!117509 = !{!117457}
!117510 = !{!117458}
!117511 = !{!117460}
!117512 = !{!117463}
!117513 = !{!117465}
!117514 = !{!117468}
!117515 = !{!117470}
!117516 = !{!117473}
!117517 = !{!117481, !117473, !117468, !117463, !117458}
!117518 = !{!117483}
!117519 = !{!117487}
!117520 = !{!117487, !117483, !117473, !117468, !117463, !117458}
!117521 = !{!117491, !117487, !117490, !117483, !117470, !117473, !117465, !117468, !117460, !117463, !117457, !117458}
!117522 = !{!117470, !117465, !117460, !117457}
!117523 = !DILexicalBlockFile(scope: !117475, file: !1875, discriminator: 0)
!117524 = !{!117493}
!117525 = !{!117497}
!117526 = !{!117497, !117493, !117473, !117468, !117463, !117458}
!117527 = !{!117501, !117497, !117500, !117493, !117470, !117465, !117460, !117457}
!117528 = !{!117470, !117473, !117465, !117468, !117460, !117463, !117457, !117458}
!117529 = !DILexicalBlockFile(scope: !117454, file: !1877, discriminator: 0)
!117530 = !{!117507, !117473, !117468, !117463, !117458}
!117531 = !DILocation(line: 2020, column: 17, scope: !117454)
!117532 = !DILocation(line: 412, column: 9, scope: !117508)
!117533 = !DILocation(line: 414, column: 39, scope: !117508)
!117534 = !DILocation(line: 414, column: 54, scope: !117455)
!117535 = !DILocation(line: 415, column: 9, scope: !117508)
!117536 = !DILocation(line: 2025, column: 5, scope: !117454)
!117537 = !DILocation(line: 413, column: 38, scope: !117508)
!117538 = !DILocation(line: 2023, column: 13, scope: !117454)
!117539 = !DILocation(line: 2021, column: 26, scope: !117454)
!117540 = !DILocation(line: 2021, column: 56, scope: !117454)
!117541 = !DILocation(line: 2021, column: 31, scope: !117454)
!117542 = !DILocation(line: 825, column: 9, scope: !117461, inlinedAt: !117462)
!117543 = !DILocation(line: 148, column: 30, scope: !117466, inlinedAt: !117467)
!117544 = !DILocation(line: 2173, column: 18, scope: !117471, inlinedAt: !117472)
!117545 = !DILocation(line: 228, column: 9, scope: !117474, inlinedAt: !117477)
!117546 = !DILocation(line: 570, column: 9, scope: !8, inlinedAt: !117479)
!117547 = !DILocation(line: 220, column: 19, scope: !117484, inlinedAt: !117485)
!117548 = !DILocation(line: 689, column: 23, scope: !5, inlinedAt: !117488)
!117549 = !DILocation(line: 561, column: 28, scope: !4, inlinedAt: !117489)
!117550 = !DILocation(line: 561, column: 15, scope: !4, inlinedAt: !117489)
!117551 = !DILocation(line: 562, column: 18, scope: !4, inlinedAt: !117489)
!117552 = !DILocation(line: 2185, column: 22, scope: !117475, inlinedAt: !117476)
!117553 = !DILocation(line: 2184, column: 13, scope: !117475, inlinedAt: !117476)
!117554 = !DILocation(line: 2189, column: 38, scope: !117475, inlinedAt: !117476)
!117555 = !DILocation(line: 2189, column: 30, scope: !117475, inlinedAt: !117476)
!117556 = !DILocation(line: 412, column: 9, scope: !117523, inlinedAt: !117476)
!117557 = !DILocation(line: 220, column: 19, scope: !117484, inlinedAt: !117495)
!117558 = !DILocation(line: 689, column: 23, scope: !5, inlinedAt: !117498)
!117559 = !DILocation(line: 561, column: 15, scope: !4, inlinedAt: !117499)
!117560 = !DILocation(line: 561, column: 28, scope: !4, inlinedAt: !117499)
!117561 = !DILocation(line: 562, column: 18, scope: !4, inlinedAt: !117499)
!117562 = !DILocation(line: 2191, column: 13, scope: !117494, inlinedAt: !117476)
!117563 = !DILocation(line: 2193, column: 52, scope: !117494, inlinedAt: !117476)
!117564 = !DILocation(line: 2193, column: 41, scope: !117494, inlinedAt: !117476)
!117565 = !DILocation(line: 2193, column: 82, scope: !117494, inlinedAt: !117476)
!117566 = !DILocation(line: 2197, column: 9, scope: !117475, inlinedAt: !117476)
!117567 = !DILocation(line: 2186, column: 47, scope: !117475, inlinedAt: !117476)
!117568 = !DILocation(line: 2186, column: 41, scope: !117475, inlinedAt: !117476)
!117569 = !DILocation(line: 2186, column: 76, scope: !117475, inlinedAt: !117476)
!117570 = !DILocation(line: 2025, column: 6, scope: !117454)
!117571 = !DILocation(line: 0, scope: !117475, inlinedAt: !117476)
!117572 = !DILocation(line: 414, column: 54, scope: !117502)
!117573 = !DILocation(line: 2022, column: 9, scope: !117454)
!117574 = !DILocation(line: 0, scope: !117529)
!117575 = !DILocation(line: 570, column: 9, scope: !8, inlinedAt: !117505)
!117576 = !DILocation(line: 2021, column: 13, scope: !117454)
!117577 = !DILocation(line: 2020, column: 9, scope: !117454)
!117578 = distinct !DISubprogram(name: "next_value_seed<serde_json::read::StrRead, core::marker::PhantomData<core::result::Result<polars_core::frame::column::Column, alloc::string::String>>>", linkageName: "_RINvXs9_NtCsk1caaszg7Cl_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9MapAccess15next_value_seedINtNtCscgRAwXFJnXP_4core6marker11PhantomDataINtNtB2f_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtCsgZ49sUHp3tW_5alloc6string6StringEEECseeLknQCOKOd_13polars_python", scope: !2175, file: !1867, line: 2027, type: !1854, scopeLine: 2027, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1853)
!117579 = distinct !{!117579, i1 true, !"_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE18parse_object_colonCseeLknQCOKOd_13polars_python"}
!117580 = distinct !{!117580, !117579, !"_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE18parse_object_colonCseeLknQCOKOd_13polars_python: argument 0"}
!117581 = distinct !{!117581, i1 true, !"_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCseeLknQCOKOd_13polars_python"}
!117582 = distinct !{!117582, !117581, !"_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCseeLknQCOKOd_13polars_python: argument 1"}
!117583 = distinct !DILocation(line: 2031, column: 22, scope: !117578)
!117584 = distinct !{!117584, i1 true, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek"}
!117585 = distinct !{!117585, !117584, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek: argument 1"}
!117586 = distinct !{!117586, i1 true, !"_RNvXs5_NtCsk1caaszg7Cl_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek"}
!117587 = distinct !{!117587, !117586, !"_RNvXs5_NtCsk1caaszg7Cl_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek: argument 1"}
!117588 = distinct !DILocation(line: 1062, column: 25, scope: !941, inlinedAt: !117583)
!117589 = distinct !DILocation(line: 257, column: 29, scope: !7, inlinedAt: !117588)
!117590 = distinct !DILocation(line: 220, column: 19, scope: !6, inlinedAt: !117589)
!117591 = distinct !DILocation(line: 689, column: 23, scope: !5, inlinedAt: !117590)
!117592 = distinct !{!117592, !117581, !"_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCseeLknQCOKOd_13polars_python: argument 0"}
!117593 = distinct !{!117593, !117584, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek: argument 0"}
!117594 = distinct !{!117594, !117586, !"_RNvXs5_NtCsk1caaszg7Cl_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek: argument 0"}
!117595 = distinct !DILocation(line: 259, column: 26, scope: !7, inlinedAt: !117588)
!117596 = distinct !DILocation(line: 228, column: 19, scope: !10, inlinedAt: !117595)
!117597 = distinct !DILocation(line: 694, column: 23, scope: !9, inlinedAt: !117596)
!117598 = distinct !{!117598, i1 true, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read7discard"}
!117599 = distinct !{!117599, !117598, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read7discard: argument 0"}
!117600 = distinct !DILexicalBlock(scope: !117578, file: !1875, line: 414, column: 13)
!117601 = distinct !DILocation(line: 1064, column: 22, scope: !941, inlinedAt: !117583)
!117602 = distinct !DILocation(line: 228, column: 19, scope: !942, inlinedAt: !117601)
!117603 = distinct !DILocation(line: 694, column: 23, scope: !9, inlinedAt: !117602)
!117604 = distinct !{!117604, i1 true, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read7discard"}
!117605 = distinct !{!117605, !117604, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read7discard: argument 0"}
!117606 = distinct !DISubprogram(name: "deserialize<core::result::Result<polars_core::frame::column::Column, alloc::string::String>, &mut serde_json::de::Deserializer<serde_json::read::StrRead>>", linkageName: "_RINvXs3_NtCs40veMcpUDl8_10serde_core2deINtNtCscgRAwXFJnXP_4core6marker11PhantomDataINtNtBG_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtCsgZ49sUHp3tW_5alloc6string6StringEENtB6_15DeserializeSeed11deserializeQINtNtCsk1caaszg7Cl_10serde_json2de12DeserializerNtNtB3P_4read7StrReadEECseeLknQCOKOd_13polars_python", scope: !2190, file: !2189, line: 821, type: !1854, scopeLine: 821, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1853)
!117607 = distinct !DILocation(line: 2033, column: 14, scope: !117578)
!117608 = !{!117580}
!117609 = !{!117582}
!117610 = !{!117587, !117585, !117582, !117580}
!117611 = !{!117582, !117580}
!117612 = !{!117585}
!117613 = !{!117587}
!117614 = !{!117594, !117587, !117593, !117585, !117592, !117582, !117580}
!117615 = !{!117599, !117582, !117580}
!117616 = !{!117605, !117580}
!117617 = !DILocation(line: 2031, column: 14, scope: !117578)
!117618 = !DILocation(line: 2031, column: 22, scope: !117578)
!117619 = !DILocation(line: 1062, column: 25, scope: !941, inlinedAt: !117583)
!117620 = !DILocation(line: 561, column: 15, scope: !4, inlinedAt: !117591)
!117621 = !DILocation(line: 220, column: 19, scope: !6, inlinedAt: !117589)
!117622 = !DILocation(line: 689, column: 23, scope: !5, inlinedAt: !117590)
!117623 = !DILocation(line: 562, column: 18, scope: !4, inlinedAt: !117591)
!117624 = !DILocation(line: 412, column: 9, scope: !1876, inlinedAt: !117588)
!117625 = !DILocation(line: 570, column: 9, scope: !8, inlinedAt: !117597)
!117626 = !DILocation(line: 1068, column: 41, scope: !941, inlinedAt: !117583)
!117627 = !DILocation(line: 1068, column: 30, scope: !941, inlinedAt: !117583)
!117628 = !DILocation(line: 1068, column: 73, scope: !941, inlinedAt: !117583)
!117629 = !DILocation(line: 1068, column: 74, scope: !941, inlinedAt: !117583)
!117630 = !DILocation(line: 1067, column: 44, scope: !941, inlinedAt: !117583)
!117631 = !DILocation(line: 1067, column: 33, scope: !941, inlinedAt: !117583)
!117632 = !DILocation(line: 1067, column: 68, scope: !941, inlinedAt: !117583)
!117633 = !DILocation(line: 1067, column: 69, scope: !941, inlinedAt: !117583)
!117634 = !DILocation(line: 414, column: 54, scope: !117600)
!117635 = !DILocation(line: 2034, column: 5, scope: !117578)
!117636 = !DILocation(line: 570, column: 9, scope: !8, inlinedAt: !117603)
!117637 = !DILocation(line: 825, column: 9, scope: !117606, inlinedAt: !117607)
!117638 = !DILocation(line: 2033, column: 14, scope: !117578)
!117639 = !DILocation(line: 2034, column: 6, scope: !117578)
!117640 = distinct !DISubprogram(name: "next_value_seed<serde_json::read::StrRead, core::marker::PhantomData<alloc::sync::Arc<[alloc::string::String], alloc::alloc::Global>>>", linkageName: "_RINvXs9_NtCsk1caaszg7Cl_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9MapAccess15next_value_seedINtNtCscgRAwXFJnXP_4core6marker11PhantomDataINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtB2X_6string6StringEEECseeLknQCOKOd_13polars_python", scope: !2175, file: !1867, line: 2027, type: !1854, scopeLine: 2027, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1853)
!117641 = distinct !{!117641, i1 true, !"_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE18parse_object_colonCseeLknQCOKOd_13polars_python"}
!117642 = distinct !{!117642, !117641, !"_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE18parse_object_colonCseeLknQCOKOd_13polars_python: argument 0"}
!117643 = distinct !{!117643, i1 true, !"_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCseeLknQCOKOd_13polars_python"}
!117644 = distinct !{!117644, !117643, !"_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCseeLknQCOKOd_13polars_python: argument 1"}
!117645 = distinct !DILocation(line: 2031, column: 22, scope: !117640)
!117646 = distinct !{!117646, i1 true, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek"}
!117647 = distinct !{!117647, !117646, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek: argument 1"}
!117648 = distinct !{!117648, i1 true, !"_RNvXs5_NtCsk1caaszg7Cl_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek"}
!117649 = distinct !{!117649, !117648, !"_RNvXs5_NtCsk1caaszg7Cl_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek: argument 1"}
!117650 = distinct !DILocation(line: 1062, column: 25, scope: !941, inlinedAt: !117645)
!117651 = distinct !DILocation(line: 257, column: 29, scope: !7, inlinedAt: !117650)
!117652 = distinct !DILocation(line: 220, column: 19, scope: !6, inlinedAt: !117651)
!117653 = distinct !DILocation(line: 689, column: 23, scope: !5, inlinedAt: !117652)
!117654 = distinct !{!117654, !117643, !"_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCseeLknQCOKOd_13polars_python: argument 0"}
!117655 = distinct !{!117655, !117646, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek: argument 0"}
!117656 = distinct !{!117656, !117648, !"_RNvXs5_NtCsk1caaszg7Cl_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek: argument 0"}
!117657 = distinct !DILocation(line: 259, column: 26, scope: !7, inlinedAt: !117650)
!117658 = distinct !DILocation(line: 228, column: 19, scope: !10, inlinedAt: !117657)
!117659 = distinct !DILocation(line: 694, column: 23, scope: !9, inlinedAt: !117658)
!117660 = distinct !{!117660, i1 true, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read7discard"}
!117661 = distinct !{!117661, !117660, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read7discard: argument 0"}
!117662 = distinct !DILexicalBlock(scope: !117640, file: !1875, line: 414, column: 13)
!117663 = distinct !DILocation(line: 1064, column: 22, scope: !941, inlinedAt: !117645)
!117664 = distinct !DILocation(line: 228, column: 19, scope: !942, inlinedAt: !117663)
!117665 = distinct !DILocation(line: 694, column: 23, scope: !9, inlinedAt: !117664)
!117666 = distinct !{!117666, i1 true, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read7discard"}
!117667 = distinct !{!117667, !117666, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read7discard: argument 0"}
!117668 = distinct !DISubprogram(name: "deserialize<alloc::sync::Arc<[alloc::string::String], alloc::alloc::Global>, &mut serde_json::de::Deserializer<serde_json::read::StrRead>>", linkageName: "_RINvXs3_NtCs40veMcpUDl8_10serde_core2deINtNtCscgRAwXFJnXP_4core6marker11PhantomDataINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtB1o_6string6StringEENtB6_15DeserializeSeed11deserializeQINtNtCsk1caaszg7Cl_10serde_json2de12DeserializerNtNtB2V_4read7StrReadEECseeLknQCOKOd_13polars_python", scope: !2190, file: !2189, line: 821, type: !1854, scopeLine: 821, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1853)
!117669 = distinct !DILocation(line: 2033, column: 14, scope: !117640)
!117670 = !{!117642}
!117671 = !{!117644}
!117672 = !{!117649, !117647, !117644, !117642}
!117673 = !{!117644, !117642}
!117674 = !{!117647}
!117675 = !{!117649}
!117676 = !{!117656, !117649, !117655, !117647, !117654, !117644, !117642}
!117677 = !{!117661, !117644, !117642}
!117678 = !{!117667, !117642}
!117679 = !DILocation(line: 2031, column: 14, scope: !117640)
!117680 = !DILocation(line: 2031, column: 22, scope: !117640)
!117681 = !DILocation(line: 1062, column: 25, scope: !941, inlinedAt: !117645)
!117682 = !DILocation(line: 561, column: 15, scope: !4, inlinedAt: !117653)
!117683 = !DILocation(line: 220, column: 19, scope: !6, inlinedAt: !117651)
!117684 = !DILocation(line: 689, column: 23, scope: !5, inlinedAt: !117652)
!117685 = !DILocation(line: 562, column: 18, scope: !4, inlinedAt: !117653)
!117686 = !DILocation(line: 412, column: 9, scope: !1876, inlinedAt: !117650)
!117687 = !DILocation(line: 570, column: 9, scope: !8, inlinedAt: !117659)
!117688 = !DILocation(line: 1068, column: 41, scope: !941, inlinedAt: !117645)
!117689 = !DILocation(line: 1068, column: 30, scope: !941, inlinedAt: !117645)
!117690 = !DILocation(line: 1068, column: 73, scope: !941, inlinedAt: !117645)
!117691 = !DILocation(line: 1068, column: 74, scope: !941, inlinedAt: !117645)
!117692 = !DILocation(line: 1067, column: 44, scope: !941, inlinedAt: !117645)
!117693 = !DILocation(line: 1067, column: 33, scope: !941, inlinedAt: !117645)
!117694 = !DILocation(line: 1067, column: 68, scope: !941, inlinedAt: !117645)
!117695 = !DILocation(line: 1067, column: 69, scope: !941, inlinedAt: !117645)
!117696 = !DILocation(line: 414, column: 54, scope: !117662)
!117697 = !DILocation(line: 2034, column: 5, scope: !117640)
!117698 = !DILocation(line: 570, column: 9, scope: !8, inlinedAt: !117665)
!117699 = !DILocation(line: 825, column: 9, scope: !117668, inlinedAt: !117669)
!117700 = !DILocation(line: 2033, column: 14, scope: !117640)
!117701 = !DILocation(line: 2034, column: 6, scope: !117640)
!117702 = distinct !DISubprogram(name: "next_value_seed<serde_json::read::StrRead, core::marker::PhantomData<polars_core::scalar::Scalar>>", linkageName: "_RINvXs9_NtCsk1caaszg7Cl_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9MapAccess15next_value_seedINtNtCscgRAwXFJnXP_4core6marker11PhantomDataNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarEECseeLknQCOKOd_13polars_python", scope: !2175, file: !1867, line: 2027, type: !1854, scopeLine: 2027, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1853)
!117703 = distinct !{!117703, i1 true, !"_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE18parse_object_colonCseeLknQCOKOd_13polars_python"}
!117704 = distinct !{!117704, !117703, !"_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE18parse_object_colonCseeLknQCOKOd_13polars_python: argument 0"}
!117705 = distinct !{!117705, i1 true, !"_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCseeLknQCOKOd_13polars_python"}
!117706 = distinct !{!117706, !117705, !"_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCseeLknQCOKOd_13polars_python: argument 1"}
!117707 = distinct !DILocation(line: 2031, column: 22, scope: !117702)
!117708 = distinct !{!117708, i1 true, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek"}
!117709 = distinct !{!117709, !117708, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek: argument 1"}
!117710 = distinct !{!117710, i1 true, !"_RNvXs5_NtCsk1caaszg7Cl_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek"}
!117711 = distinct !{!117711, !117710, !"_RNvXs5_NtCsk1caaszg7Cl_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek: argument 1"}
!117712 = distinct !DILocation(line: 1062, column: 25, scope: !941, inlinedAt: !117707)
!117713 = distinct !DILocation(line: 257, column: 29, scope: !7, inlinedAt: !117712)
!117714 = distinct !DILocation(line: 220, column: 19, scope: !6, inlinedAt: !117713)
!117715 = distinct !DILocation(line: 689, column: 23, scope: !5, inlinedAt: !117714)
!117716 = distinct !{!117716, !117705, !"_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCseeLknQCOKOd_13polars_python: argument 0"}
!117717 = distinct !{!117717, !117708, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek: argument 0"}
!117718 = distinct !{!117718, !117710, !"_RNvXs5_NtCsk1caaszg7Cl_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek: argument 0"}
!117719 = distinct !DILocation(line: 259, column: 26, scope: !7, inlinedAt: !117712)
!117720 = distinct !DILocation(line: 228, column: 19, scope: !10, inlinedAt: !117719)
!117721 = distinct !DILocation(line: 694, column: 23, scope: !9, inlinedAt: !117720)
!117722 = distinct !{!117722, i1 true, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read7discard"}
!117723 = distinct !{!117723, !117722, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read7discard: argument 0"}
!117724 = distinct !DILexicalBlock(scope: !117702, file: !1875, line: 414, column: 13)
!117725 = distinct !DILocation(line: 1064, column: 22, scope: !941, inlinedAt: !117707)
!117726 = distinct !DILocation(line: 228, column: 19, scope: !942, inlinedAt: !117725)
!117727 = distinct !DILocation(line: 694, column: 23, scope: !9, inlinedAt: !117726)
!117728 = distinct !{!117728, i1 true, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read7discard"}
!117729 = distinct !{!117729, !117728, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read7discard: argument 0"}
!117730 = distinct !DILocation(line: 2033, column: 14, scope: !117702)
!117731 = !{!117704}
!117732 = !{!117706}
!117733 = !{!117711, !117709, !117706, !117704}
!117734 = !{!117706, !117704}
!117735 = !{!117709}
!117736 = !{!117711}
!117737 = !{!117718, !117711, !117717, !117709, !117716, !117706, !117704}
!117738 = !{!117723, !117706, !117704}
!117739 = !{!117729, !117704}
!117740 = !DILocation(line: 2031, column: 14, scope: !117702)
!117741 = !DILocation(line: 2031, column: 22, scope: !117702)
!117742 = !DILocation(line: 1062, column: 25, scope: !941, inlinedAt: !117707)
!117743 = !DILocation(line: 561, column: 15, scope: !4, inlinedAt: !117715)
!117744 = !DILocation(line: 220, column: 19, scope: !6, inlinedAt: !117713)
!117745 = !DILocation(line: 689, column: 23, scope: !5, inlinedAt: !117714)
!117746 = !DILocation(line: 562, column: 18, scope: !4, inlinedAt: !117715)
!117747 = !DILocation(line: 412, column: 9, scope: !1876, inlinedAt: !117712)
!117748 = !DILocation(line: 570, column: 9, scope: !8, inlinedAt: !117721)
!117749 = !DILocation(line: 1068, column: 41, scope: !941, inlinedAt: !117707)
!117750 = !DILocation(line: 1068, column: 30, scope: !941, inlinedAt: !117707)
!117751 = !DILocation(line: 1068, column: 73, scope: !941, inlinedAt: !117707)
!117752 = !DILocation(line: 1068, column: 74, scope: !941, inlinedAt: !117707)
!117753 = !DILocation(line: 1067, column: 44, scope: !941, inlinedAt: !117707)
!117754 = !DILocation(line: 1067, column: 33, scope: !941, inlinedAt: !117707)
!117755 = !DILocation(line: 1067, column: 68, scope: !941, inlinedAt: !117707)
!117756 = !DILocation(line: 1067, column: 69, scope: !941, inlinedAt: !117707)
!117757 = !DILocation(line: 414, column: 54, scope: !117724)
!117758 = !DILocation(line: 2034, column: 5, scope: !117702)
!117759 = !DILocation(line: 570, column: 9, scope: !8, inlinedAt: !117727)
!117760 = !DILocation(line: 825, column: 9, scope: !1237, inlinedAt: !117730)
!117761 = !DILocation(line: 2033, column: 14, scope: !117702)
!117762 = !DILocation(line: 2034, column: 6, scope: !117702)
!117763 = distinct !DISubprogram(name: "next_value_seed<serde_json::read::StrRead, core::marker::PhantomData<polars_core::schema::iceberg::IcebergColumn>>", linkageName: "_RINvXs9_NtCsk1caaszg7Cl_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9MapAccess15next_value_seedINtNtCscgRAwXFJnXP_4core6marker11PhantomDataNtNtNtCs1LHh8CLbVkQ_11polars_core6schema7iceberg13IcebergColumnEECseeLknQCOKOd_13polars_python", scope: !2175, file: !1867, line: 2027, type: !1854, scopeLine: 2027, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1853)
!117764 = distinct !{!117764, i1 true, !"_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE18parse_object_colonCseeLknQCOKOd_13polars_python"}
!117765 = distinct !{!117765, !117764, !"_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE18parse_object_colonCseeLknQCOKOd_13polars_python: argument 0"}
!117766 = distinct !{!117766, i1 true, !"_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCseeLknQCOKOd_13polars_python"}
!117767 = distinct !{!117767, !117766, !"_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCseeLknQCOKOd_13polars_python: argument 1"}
!117768 = distinct !DILocation(line: 2031, column: 22, scope: !117763)
!117769 = distinct !{!117769, i1 true, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek"}
!117770 = distinct !{!117770, !117769, !"_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read4peek: argument 1"}
!117771 = distinct !{!117771, i1 true, !"_RNvXs5_NtCsk1caaszg7Cl_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek"}
end_hunk_1
