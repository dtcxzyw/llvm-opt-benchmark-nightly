inline.NumInlined: 8450
inline.NumDeleted: 2899
begin_hunk_0_@_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtB2t_11StructFieldNtB1j_11Deserialize11deserialize9___VisitorECs7p2uQeJxui2_9deltalake:bb.a
bb.ev:                                            ; preds = %_RINvXs0_NvXNvNtCs8ulvy0Wg6Ot_12delta_kernel6schemas1_1__NtBb_11StructFieldNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_mapINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB2Q_4read7StrReadEECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.al, ptr noundef nonnull align 8 dereferenceable(96) %i.ak, i64 96, i1 false)
  %i.lf = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  store ptr %i.ld, ptr %i.lf, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.lg = load i64, ptr %i.al, align 8, !range !39, !noundef !11 ; 4 uses
  %i.lh = icmp eq i64 %i.lg, -9223372036854775808
  br i1 %i.lh, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %.not = icmp eq ptr %i.ld, null
  br i1 %.not, label %.thread438, label %bb.ey

.thread438:                                       ; preds = %bb.ew
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.222.0.copyload = load ptr, ptr %.sroa.222.0..sroa_idx, align 8
  %.sroa.323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.323.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.32.sroa.6)
  br label %.thread83

bb.ex:                                            ; preds = %bb.ev
  %i.li = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.lj = load ptr, ptr %i.li, align 8, !nonnull !11, !align !19, !noundef !11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.32.sroa.6)
  %.not90 = icmp eq ptr %i.ld, null
  br i1 %.not90, label %.thread83, label %bb.ez

bb.ey:                                            ; preds = %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.32.sroa.6)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(96) %i.al)
  br label %.thread83

.thread83:                                        ; preds = %.thread438, %bb.ey, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit50, %bb.ex
  %.sroa.09.289 = phi i64 [ %i.lg, %bb.ex ], [ %i.lg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit50 ], [ -9223372036854775808, %bb.ey ], [ %i.lg, %.thread438 ]
  %.sroa.10.288 = phi ptr [ %i.lj, %bb.ex ], [ %i.lj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit50 ], [ %i.ld, %bb.ey ], [ %.sroa.222.0.copyload, %.thread438 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.ay

bb.ez:                                            ; preds = %bb.ex
  call void @llvm.experimental.noalias.scope.decl(metadata !8556)
  call void @llvm.experimental.noalias.scope.decl(metadata !8559)
  %i.lk = load i64, ptr %i.ld, align 8, !range !2332, !alias.scope !8562, !noundef !11
  switch i64 %i.lk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit50 [
    i64 0, label %bb.fa
    i64 1, label %bb.fc
  ]

bb.fa:                                            ; preds = %bb.ez
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %.val1.i.i.i.i48 = load i64, ptr %i.ll, align 8, !alias.scope !8562, !noundef !11 ; 2 uses
  %i.lm = icmp eq i64 %.val1.i.i.i.i48, 0
  br i1 %i.lm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit50, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %.val.i.i.i.i49 = load ptr, ptr %i.ln, align 8, !alias.scope !8562, !nonnull !11, !noundef !11
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i49, i64 noundef range(i64 1, 0) %.val1.i.i.i.i48, i64 noundef 1) #23, !noalias !8562
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit50

bb.fc:                                            ; preds = %bb.ez
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.lo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit50 unwind label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit50: ; preds = %bb.ez, %bb.fa, %bb.fb, %bb.fc
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ld, i64 noundef 40, i64 noundef 8) #23
  br label %.thread83

bb.fe:                                            ; preds = %bb.d, %bb.ay
  %.sroa.10.3 = phi ptr [ %.sroa.10.1, %bb.ay ], [ %i.bd, %bb.d ]
  %i.lq = call noundef nonnull align 8 ptr @_RINvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 %.sroa.10.3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1)
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.lq, ptr %i.lr, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.fg

bb.ff:                                            ; preds = %bb.ay
  %.sroa.327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.327.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.14, i64 80, i1 false)
  store i64 %.sroa.09.1, ptr %0, align 8
  %.sroa.226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.1, ptr %.sroa.226.0..sroa_idx, align 8
  br label %bb.fg

bb.fg:                                            ; preds = %bb.fe, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %.loopexit, %bb.am
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtB2t_5StatsNtB1j_11Deserialize11deserialize9___VisitorECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(80) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(none) %3, i64 noundef range(i64 0, 576460752303423488) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 10 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8563)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !8566, !noalias !8571, !noundef !11 ; 2 uses
  %.promoted.i = load i64, ptr %i.l, align 8, !alias.scope !8563, !noalias !8575 ; 2 uses
  %i.o = icmp ult i64 %.promoted.i, %i.n
  br i1 %i.o, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !8566, !noalias !8571, !nonnull !11, !noundef !11
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.r = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.u, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8577)
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !noalias !8578, !noundef !11
  switch i8 %i.t, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 91, label %bb.e
    i8 123, label %bb.f
  ], !prof !8193

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.u = add i64 %i.r, 1                          ; 3 uses
  store i64 %i.u, ptr %i.l, align 8, !alias.scope !8579, !noalias !8575
  %exitcond.not.i = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 5, ptr %i.k, align 8
  %i.v = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ax

bb.d:                                             ; preds = %bb.b
  %i.w = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(80) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @116)
  %i.x = ptrtoint ptr %i.w to i64
  br label %.thread58.a

bb.e:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.z = load i8, ptr %i.y, align 8, !noundef !11
  %i.aa = add i8 %i.z, -1                         ; 2 uses
  store i8 %i.aa, ptr %i.y, align 8
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %bb.h, !prof !26

bb.f:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.ad = load i8, ptr %i.ac, align 8, !noundef !11
  %i.ae = add i8 %i.ad, -1                        ; 2 uses
  store i8 %i.ae, ptr %i.ac, align 8
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.v, label %bb.w, !prof !26

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 24, ptr %i.j, align 8
  %i.ag = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ax

bb.h:                                             ; preds = %bb.e
  %i.ah = add i64 %i.r, 1
  store i64 %i.ah, ptr %i.l, align 8, !alias.scope !8582
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %0, ptr %i.h, align 8, !noalias !8585
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i8 1, ptr %i.ai, align 8, !noalias !8585
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8591)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8594
  call fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read7StrReadECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h), !noalias !8597
  %i.aj = load i8, ptr %i.g, align 8, !range !24, !noalias !8594, !noundef !11
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !noalias !8594, !nonnull !11, !align !19, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8594
  br label %_RINvXs0_NvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtBb_5StatsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB2M_4read7StrReadEECs7p2uQeJxui2_9deltalake.exit

bb.j:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !range !24, !noalias !8594, !noundef !11
  %i.ap = trunc nuw i8 %i.ao to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8594
  br i1 %i.ap, label %bb.k, label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementyECs7p2uQeJxui2_9deltalake.exit.i

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.h, align 8, !alias.scope !8598, !noalias !8599, !nonnull !11, !align !19, !noundef !11
  %i.ar = tail call fastcc { i64, ptr } @_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDatayENtB6_15DeserializeSeed11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB20_4read7StrReadEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(80) %i.aq), !noalias !8600 ; 2 uses
  %5 = extractvalue { i64, ptr } %i.ar, 0
  %6 = extractvalue { i64, ptr } %i.ar, 1
  %spec.select.i = and i64 %5, 1
  br label %_RINvXs0_NvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtBb_5StatsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB2M_4read7StrReadEECs7p2uQeJxui2_9deltalake.exit

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementyECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.j
  %i.as = tail call noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs7p2uQeJxui2_9deltalake(i64 noundef 0, ptr noundef nonnull @79, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @65)
  br label %_RINvXs0_NvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtBb_5StatsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB2M_4read7StrReadEECs7p2uQeJxui2_9deltalake.exit

_RINvXs0_NvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtBb_5StatsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB2M_4read7StrReadEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.i, %bb.k, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementyECs7p2uQeJxui2_9deltalake.exit.i
  %.sroa.4.1.i = phi ptr [ %6, %bb.k ], [ %i.as, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementyECs7p2uQeJxui2_9deltalake.exit.i ], [ %i.am, %bb.i ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %spec.select.i, %bb.k ], [ 1, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess12next_elementyECs7p2uQeJxui2_9deltalake.exit.i ], [ 1, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.at = load i8, ptr %i.y, align 8, !noundef !11
  %i.au = add i8 %i.at, 1
  store i8 %i.au, ptr %i.y, align 8
  %i.av = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(80) %0)
          to label %bb.m unwind label %bb.l       ; 8 uses

bb.l:                                             ; preds = %_RINvXs0_NvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtBb_5StatsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB2M_4read7StrReadEECs7p2uQeJxui2_9deltalake.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state5StatsNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake(i64 %.sroa.0.1.i, ptr %.sroa.4.1.i) #30
          to label %common.resume unwind label %bb.p

bb.m:                                             ; preds = %_RINvXs0_NvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtBb_5StatsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB2M_4read7StrReadEECs7p2uQeJxui2_9deltalake.exit
  %i.ax = trunc nuw i64 %.sroa.0.1.i to i1
  %i.ay = ptrtoint ptr %.sroa.4.1.i to i64        ; 3 uses
  %.not80 = icmp eq ptr %i.av, null               ; 2 uses
  br i1 %i.ax, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %.not80, label %.thread61, label %.thread55.a

.thread55.a:                                      ; preds = %bb.n
  %i.az = ptrtoint ptr %i.av to i64
  br label %.thread58.a

bb.o:                                             ; preds = %bb.m
  br i1 %.not80, label %.thread58.a, label %bb.q

bb.p:                                             ; preds = %bb.l, %bb.ao
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.q:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8604)
  %i.bb = load i64, ptr %i.av, align 8, !range !2332, !alias.scope !8607, !noundef !11
  switch i64 %i.bb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit [
    i64 0, label %bb.r
    i64 1, label %bb.t
  ]

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.bc, align 8, !alias.scope !8607, !noundef !11 ; 2 uses
  %i.bd = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.bd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.be, align 8, !alias.scope !8607, !nonnull !11, !noundef !11
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i, i64 noundef 1) #23, !noalias !8607
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit

bb.t:                                             ; preds = %bb.q
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit unwind label %bb.u

common.resume:                                    ; preds = %bb.ao, %bb.l, %bb.aw, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %i.bg, %bb.u ], [ %i.ea, %bb.aw ], [ %i.dr, %bb.ao ], [ %i.aw, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.u:                                             ; preds = %bb.t
  %i.bg = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.av, i64 noundef 40, i64 noundef 8) #23
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.q, %bb.r, %bb.s, %bb.t
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.av, i64 noundef 40, i64 noundef 8) #23
  br label %.thread58.a

bb.v:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 24, ptr %i.i, align 8
  %i.bh = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ax

bb.w:                                             ; preds = %bb.f
  %i.bi = add i64 %i.r, 1
  store i64 %i.bi, ptr %i.l, align 8, !alias.scope !8608
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %0, ptr %i.f, align 8, !noalias !8611
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 1, ptr %i.bj, align 8, !noalias !8611
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8614
  call fastcc void @_RINvNvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9MapAccesspENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f), !noalias !8621
  %i.bk = load i8, ptr %i.e, align 8, !range !24, !noalias !8614, !noundef !11
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %._crit_edge.i, label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %bb.w
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.x

._crit_edge.i:                                    ; preds = %bb.al, %bb.w
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !8622, !nonnull !11, !align !19, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8622
  br label %bb.ab

bb.x:                                             ; preds = %bb.al, %.lr.ph.i24
  %.sroa.05.057.i = phi i64 [ 0, %.lr.ph.i24 ], [ %.sroa.05.1.i, %bb.al ] ; 3 uses
  %.sroa.4.056.i = phi i64 [ undef, %.lr.ph.i24 ], [ %.sroa.4.1.i28, %bb.al ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8625)
  call void @llvm.experimental.noalias.scope.decl(metadata !8626)
  %i.bq = load i8, ptr %i.bm, align 1, !range !24, !noalias !8622, !noundef !11
  %i.br = trunc nuw i8 %i.bq to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8622
  br i1 %i.br, label %bb.y, label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtB23_5StatsNtB18_11Deserialize11deserialize7___FieldECs7p2uQeJxui2_9deltalake.exit.thread33.i

bb.y:                                             ; preds = %bb.x
  %i.bs = load ptr, ptr %i.f, align 8, !alias.scope !8627, !noalias !8628, !nonnull !11, !align !19, !noundef !11 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8629)
  call void @llvm.experimental.noalias.scope.decl(metadata !8632)
  call void @llvm.experimental.noalias.scope.decl(metadata !8635)
  call void @llvm.experimental.noalias.scope.decl(metadata !8638)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 40 ; 5 uses
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !8641, !noalias !8644, !noundef !11
  %i.bw = add i64 %i.bv, 1
  store i64 %i.bw, ptr %i.bu, align 8, !alias.scope !8641, !noalias !8644
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i64 0, ptr %i.bx, align 8, !alias.scope !8649, !noalias !8644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8650
  call void @_RNvXs8_NtCseqDwI8vvjGQ_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bt, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.bs), !noalias !8644
  %i.by = load i64, ptr %i.d, align 8, !range !53, !noalias !8650, !noundef !11
  %i.bz = icmp eq i64 %i.by, 2
  %i.ca = load ptr, ptr %i.bn, align 8, !noalias !8650 ; 5 uses
  br i1 %i.bz, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !8650
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ca) ]
  %i.cb = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, 10
  br i1 %i.cb, label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtB23_5StatsNtB18_11Deserialize11deserialize7___FieldECs7p2uQeJxui2_9deltalake.exit.i, label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtB23_5StatsNtB18_11Deserialize11deserialize7___FieldECs7p2uQeJxui2_9deltalake.exit.thread37.i

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtB23_5StatsNtB18_11Deserialize11deserialize7___FieldECs7p2uQeJxui2_9deltalake.exit.thread37.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8650
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8650
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ca) ]
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge.i
  %.sroa.1128.1.ph.i = phi ptr [ %i.ca, %bb.aa ], [ %i.bp, %._crit_edge.i ]
  %i.cc = ptrtoint ptr %.sroa.1128.1.ph.i to i64
  br label %_RINvXs0_NvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtBb_5StatsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_mapINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB2M_4read7StrReadEECs7p2uQeJxui2_9deltalake.exit

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtB23_5StatsNtB18_11Deserialize11deserialize7___FieldECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.z
  %i.cd = load i64, ptr %i.ca, align 1
  %i.ce = xor i64 %i.cd, 8245918729564419438
  %i.cf = getelementptr i8, ptr %i.ca, i64 8
  %i.cg = load i16, ptr %i.cf, align 1
  %i.ch = zext i16 %i.cg to i64
  %i.ci = xor i64 %i.ch, 29540
  %i.cj = or i64 %i.ce, %i.ci
  %i.ck = icmp ne i64 %i.cj, 0
  %i.cl = zext i1 %i.ck to i32
  %.not.i = icmp eq i32 %i.cl, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8650
  br i1 %.not.i, label %bb.ad, label %bb.ac

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtB23_5StatsNtB18_11Deserialize11deserialize7___FieldECs7p2uQeJxui2_9deltalake.exit.thread33.i: ; preds = %bb.x
  %i.cm = trunc nuw i64 %.sroa.05.057.i to i1
  br i1 %i.cm, label %_RINvXs0_NvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtBb_5StatsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_mapINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB2M_4read7StrReadEECs7p2uQeJxui2_9deltalake.exit, label %bb.an

bb.ac:                                            ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtB23_5StatsNtB18_11Deserialize11deserialize7___FieldECs7p2uQeJxui2_9deltalake.exit.i, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtB23_5StatsNtB18_11Deserialize11deserialize7___FieldECs7p2uQeJxui2_9deltalake.exit.thread37.i
  %i.cn = call fastcc noundef align 8 ptr @_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECs7p2uQeJxui2_9deltalake(ptr nonnull %i.bs) ; 2 uses
  %.not26.i = icmp eq ptr %i.cn, null
  br i1 %.not26.i, label %bb.al, label %bb.am

bb.ad:                                            ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtB23_5StatsNtB18_11Deserialize11deserialize7___FieldECs7p2uQeJxui2_9deltalake.exit.i
  %.not25.i = icmp eq i64 %.sroa.05.057.i, 0
  br i1 %.not25.i, label %bb.af, label %bb.ae, !prof !25

bb.ae:                                            ; preds = %bb.ad
  %i.co = call noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error15duplicate_fieldCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 10)
  %i.cp = ptrtoint ptr %i.co to i64
  br label %_RINvXs0_NvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtBb_5StatsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_mapINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB2M_4read7StrReadEECs7p2uQeJxui2_9deltalake.exit

bb.af:                                            ; preds = %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !8651)
  call void @llvm.experimental.noalias.scope.decl(metadata !8654)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !8657, !noalias !8662, !noundef !11 ; 2 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.bu, align 8, !alias.scope !8666, !noalias !8667 ; 2 uses
  %i.cs = icmp ult i64 %.promoted.i.i.i.i.i, %i.cr
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.af
  %i.ct = load ptr, ptr %i.bt, align 8, !alias.scope !8657, !noalias !8662, !nonnull !11, !noundef !11
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %.lr.ph.i.i.i.i.i
  %i.cu = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.cx, %bb.ah ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8668)
  call void @llvm.experimental.noalias.scope.decl(metadata !8669)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !noalias !8670, !noundef !11
  switch i8 %i.cw, label %bb.ai [
    i8 32, label %bb.ah
    i8 10, label %bb.ah
    i8 9, label %bb.ah
    i8 13, label %bb.ah
    i8 58, label %bb.ak
  ], !prof !7996

bb.ah:                                            ; preds = %bb.ag, %bb.ag, %bb.ag, %bb.ag
  %i.cx = add i64 %i.cu, 1                        ; 3 uses
  store i64 %i.cx, ptr %i.bu, align 8, !alias.scope !8671, !noalias !8667
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.cx, %i.cr
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.ag

.loopexit.i.i.i.i:                                ; preds = %bb.ah, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8674
  store i64 3, ptr %i.b, align 8, !noalias !8674
  %i.cy = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bs, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8674
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8674
  store i64 6, ptr %i.c, align 8, !noalias !8674
  %i.cz = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bs, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8674
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.loopexit.i.i.i.i
  %.sroa.0.0.i.ph.i.i.i = phi ptr [ %i.cy, %.loopexit.i.i.i.i ], [ %i.cz, %bb.ai ]
  %i.da = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %.sroa.0.0.i.ph.i.i.i, 1
  br label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueyECs7p2uQeJxui2_9deltalake.exit.i

bb.ak:                                            ; preds = %bb.ag
  %i.db = add i64 %i.cu, 1
  store i64 %i.db, ptr %i.bu, align 8, !alias.scope !8675
  %i.dc = call fastcc { i64, ptr } @_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDatayENtB6_15DeserializeSeed11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB20_4read7StrReadEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(80) %i.bs)
  br label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueyECs7p2uQeJxui2_9deltalake.exit.i

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueyECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.ak, %bb.aj
  %.merged.i.i.i = phi { i64, ptr } [ %i.da, %bb.aj ], [ %i.dc, %bb.ak ] ; 2 uses
  %i.dd = extractvalue { i64, ptr } %.merged.i.i.i, 0
  %i.de = extractvalue { i64, ptr } %.merged.i.i.i, 1
  %i.df = ptrtoint ptr %i.de to i64               ; 2 uses
  %i.dg = trunc nuw i64 %i.dd to i1
  br i1 %i.dg, label %_RINvXs0_NvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtBb_5StatsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_mapINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB2M_4read7StrReadEECs7p2uQeJxui2_9deltalake.exit, label %bb.al

bb.al:                                            ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueyECs7p2uQeJxui2_9deltalake.exit.i, %bb.ac
  %.sroa.4.1.i28 = phi i64 [ %i.df, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueyECs7p2uQeJxui2_9deltalake.exit.i ], [ %.sroa.4.056.i, %bb.ac ]
  %.sroa.05.1.i = phi i64 [ 1, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueyECs7p2uQeJxui2_9deltalake.exit.i ], [ %.sroa.05.057.i, %bb.ac ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8678
  call fastcc void @_RINvNvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9MapAccesspENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f), !noalias !8621
  %i.dh = load i8, ptr %i.e, align 8, !range !24, !noalias !8678, !noundef !11
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %._crit_edge.i, label %bb.x

bb.am:                                            ; preds = %bb.ac
  %i.dj = ptrtoint ptr %i.cn to i64
  br label %_RINvXs0_NvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtBb_5StatsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_mapINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB2M_4read7StrReadEECs7p2uQeJxui2_9deltalake.exit

bb.an:                                            ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtB23_5StatsNtB18_11Deserialize11deserialize7___FieldECs7p2uQeJxui2_9deltalake.exit.thread33.i
  %i.dk = call { i64, ptr } @_RINvXNvNtNtCs6sYutav3ODB_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_anyNtNvXs19_NtB28_5implsyNtB28_11Deserialize11deserialize16PrimitiveVisitorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 10) ; 2 uses
  %i.dl = extractvalue { i64, ptr } %i.dk, 0
  %i.dm = extractvalue { i64, ptr } %i.dk, 1
  %i.dn = ptrtoint ptr %i.dm to i64
  %spec.select.i25 = and i64 %i.dl, 1
  br label %_RINvXs0_NvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtBb_5StatsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_mapINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB2M_4read7StrReadEECs7p2uQeJxui2_9deltalake.exit

_RINvXs0_NvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtBb_5StatsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_mapINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB2M_4read7StrReadEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueyECs7p2uQeJxui2_9deltalake.exit.i, %bb.ab, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtB23_5StatsNtB18_11Deserialize11deserialize7___FieldECs7p2uQeJxui2_9deltalake.exit.thread33.i, %bb.ae, %bb.am, %bb.an
  %.sroa.7.1.i = phi i64 [ %.sroa.4.056.i, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtB23_5StatsNtB18_11Deserialize11deserialize7___FieldECs7p2uQeJxui2_9deltalake.exit.thread33.i ], [ %i.dn, %bb.an ], [ %i.cc, %bb.ab ], [ %i.dj, %bb.am ], [ %i.cp, %bb.ae ], [ %i.df, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueyECs7p2uQeJxui2_9deltalake.exit.i ] ; 4 uses
  %.sroa.0.1.i27 = phi i64 [ 0, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtB23_5StatsNtB18_11Deserialize11deserialize7___FieldECs7p2uQeJxui2_9deltalake.exit.thread33.i ], [ %spec.select.i25, %bb.an ], [ 1, %bb.ab ], [ 1, %bb.am ], [ 1, %bb.ae ], [ 1, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueyECs7p2uQeJxui2_9deltalake.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.do = load i8, ptr %i.ac, align 8, !noundef !11
  %i.dp = add i8 %i.do, 1
  store i8 %i.dp, ptr %i.ac, align 8
  %i.dq = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(80) %0)
          to label %bb.ap unwind label %bb.ao     ; 8 uses

bb.ao:                                            ; preds = %_RINvXs0_NvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtBb_5StatsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_mapINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB2M_4read7StrReadEECs7p2uQeJxui2_9deltalake.exit
  %i.dr = landingpad { ptr, i32 }
          cleanup
  %i.ds = inttoptr i64 %.sroa.7.1.i to ptr
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state5StatsNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake(i64 %.sroa.0.1.i27, ptr %i.ds) #30
          to label %common.resume unwind label %bb.p

bb.ap:                                            ; preds = %_RINvXs0_NvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtBb_5StatsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_mapINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB2M_4read7StrReadEECs7p2uQeJxui2_9deltalake.exit
  %i.dt = trunc nuw i64 %.sroa.0.1.i27 to i1
  %.not79 = icmp eq ptr %i.dq, null               ; 2 uses
  br i1 %i.dt, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  br i1 %.not79, label %.thread61, label %.thread72

.thread72:                                        ; preds = %bb.aq
  %i.du = ptrtoint ptr %i.dq to i64
  br label %.thread58.a

bb.ar:                                            ; preds = %bb.ap
  br i1 %.not79, label %.thread58.a, label %bb.as, !prof !8681

bb.as:                                            ; preds = %bb.ar
  call void @llvm.experimental.noalias.scope.decl(metadata !8682)
  call void @llvm.experimental.noalias.scope.decl(metadata !8685)
  %i.dv = load i64, ptr %i.dq, align 8, !range !2332, !alias.scope !8688, !noundef !11
  switch i64 %i.dv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit31 [
    i64 0, label %bb.at
    i64 1, label %bb.av
  ]

bb.at:                                            ; preds = %bb.as
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %.val1.i.i.i.i29 = load i64, ptr %i.dw, align 8, !alias.scope !8688, !noundef !11 ; 2 uses
  %i.dx = icmp eq i64 %.val1.i.i.i.i29, 0
  br i1 %i.dx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit31, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.val.i.i.i.i30 = load ptr, ptr %i.dy, align 8, !alias.scope !8688, !nonnull !11, !noundef !11
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i30, i64 noundef range(i64 1, 0) %.val1.i.i.i.i29, i64 noundef 1) #23, !noalias !8688
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit31

bb.av:                                            ; preds = %bb.as
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.dz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit31 unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dq, i64 noundef 40, i64 noundef 8) #23
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit31: ; preds = %bb.as, %bb.at, %bb.au, %bb.av
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dq, i64 noundef 40, i64 noundef 8) #23
  br label %.thread58.a

.thread58.a:                                      ; preds = %.thread72, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit31, %bb.ar, %.thread55.a, %bb.o, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit, %bb.d
  %.sroa.9.3 = phi i64 [ %i.x, %bb.d ], [ %i.ay, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit ], [ %i.az, %.thread55.a ], [ %i.ay, %bb.o ], [ %i.du, %.thread72 ], [ %.sroa.7.1.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit31 ], [ %.sroa.7.1.i, %bb.ar ]
  %i.eb = inttoptr i64 %.sroa.9.3 to ptr
  %i.ec = call noundef nonnull align 8 ptr @_RINvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 %i.eb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0)
  br label %bb.ax

.thread61:                                        ; preds = %bb.aq, %bb.n
  %.sroa.9.164 = phi i64 [ %i.ay, %bb.n ], [ %.sroa.7.1.i, %bb.aq ]
  %i.ed = inttoptr i64 %.sroa.9.164 to ptr
  br label %bb.ax

bb.ax:                                            ; preds = %.thread58.a, %.thread61, %bb.g, %bb.v, %.loopexit
  %.sroa.7.3 = phi ptr [ %i.v, %.loopexit ], [ %i.bh, %bb.v ], [ %i.ag, %bb.g ], [ %i.ed, %.thread61 ], [ %i.ec, %.thread58.a ]
  %.sroa.0.3 = phi i64 [ 1, %.loopexit ], [ 1, %bb.v ], [ 1, %bb.g ], [ 0, %.thread61 ], [ 1, %.thread58.a ]
  %i.ee = insertvalue { i64, ptr } poison, i64 %.sroa.0.3, 0
  %i.ef = insertvalue { i64, ptr } %i.ee, ptr %.sroa.7.3, 1
  ret { i64, ptr } %i.ef
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_i32NtNvXsR_NtB1l_5implslNtB1l_11Deserialize11deserialize16PrimitiveVisitorECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 20 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8689)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8694)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !8697, !noalias !8700, !noundef !11 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.j, align 8, !alias.scope !8703, !noalias !8704 ; 2 uses
  %i.m = icmp ult i64 %.promoted.i.i, %i.l
  br i1 %i.m, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !8697, !noalias !8700, !nonnull !11, !noundef !11
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.p = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.s, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8705)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !noalias !8706, !noundef !11 ; 3 uses
  switch i8 %i.r, label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs7p2uQeJxui2_9deltalake.exit.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.s = add i64 %i.p, 1                          ; 3 uses
  store i64 %i.s, ptr %i.j, align 8, !alias.scope !8707, !noalias !8704
  %exitcond.not.i.i = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8710
  %i.t = icmp eq i8 %i.r, 45
  br i1 %i.t, label %bb.d, label %bb.e

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8710
  store i64 5, ptr %i.i, align 8, !noalias !8710
  %i.u = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i), !noalias !8689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8710
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.v, align 8, !alias.scope !8689, !noalias !8692
  store i32 1, ptr %0, align 8, !alias.scope !8689, !noalias !8692
  br label %_RINvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB6_12DeserializerNtNtB8_4read9SliceReadE18deserialize_numberNtNvXsR_NtNtCs1gOyXocuPRE_10serde_core2de5implslNtB1M_11Deserialize11deserialize16PrimitiveVisitorECs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs7p2uQeJxui2_9deltalake.exit.i
  %i.w = add i64 %i.p, 1
  store i64 %i.w, ptr %i.j, align 8, !alias.scope !8711, !noalias !8689
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8710
  call fastcc void @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext false), !noalias !8689
  %i.x = load i64, ptr %i.g, align 8, !range !2107, !noalias !8710, !noundef !11 ; 2 uses
  %i.y = icmp eq i64 %i.x, 3
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br i1 %i.y, label %bb.f, label %bb.g

bb.e:                                             ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs7p2uQeJxui2_9deltalake.exit.i
  %i.aa = add i8 %i.r, -48
  %or.cond.i = icmp ult i8 %i.aa, 10
  br i1 %or.cond.i, label %bb.r, label %bb.q, !prof !7461

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.z, align 8, !noalias !8710, !nonnull !11, !align !19, !noundef !11
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ac, align 8, !alias.scope !8689, !noalias !8692
  store i32 1, ptr %0, align 8, !alias.scope !8689, !noalias !8692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8710
  br label %bb.p

bb.g:                                             ; preds = %bb.d
  %.sroa.2.0.copyload.i = load i64, ptr %i.z, align 8, !noalias !8710 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8714)
  switch i64 %i.x, label %default.unreachable [
    i64 0, label %bb.h
    i64 1, label %bb.i
    i64 2, label %bb.l
  ]

default.unreachable:                              ; preds = %bb.u, %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ad = bitcast i64 %.sroa.2.0.copyload.i to double
  call void @_RINvYNtNvXsR_NtNtCs1gOyXocuPRE_10serde_core2de5implslNtBd_11Deserialize11deserialize16PrimitiveVisitorNtBd_7Visitor9visit_f64NtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.h, double noundef %i.ad), !noalias !8717
  br label %_RINvMs2_NtCseqDwI8vvjGQ_10serde_json2deNtB6_12ParserNumber5visitNtNvXsR_NtNtCs1gOyXocuPRE_10serde_core2de5implslNtB1a_11Deserialize11deserialize16PrimitiveVisitorECs7p2uQeJxui2_9deltalake.exit.i

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8719)
  %i.ae = icmp ugt i64 %.sroa.2.0.copyload.i, 2147483647
  br i1 %i.ae, label %bb.k, label %bb.j, !prof !26

bb.j:                                             ; preds = %bb.i
  %i.af = trunc nuw nsw i64 %.sroa.2.0.copyload.i to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.af, ptr %i.ag, align 4, !alias.scope !8722, !noalias !8723
  br label %_RINvXNvXsR_NtNtCs1gOyXocuPRE_10serde_core2de5implslNtBb_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBb_7Visitor9visit_u64NtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake.exit.i.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8724
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.2.0.copyload.i, ptr %i.ah, align 8, !noalias !8724
  store i8 1, ptr %i.e, align 8, !noalias !8724
end_hunk_0
