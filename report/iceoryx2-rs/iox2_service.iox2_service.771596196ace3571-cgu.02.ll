Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iox2_service.iox2_service.771596196ace3571-cgu.02?download=true
inline.NumInlined: 968
inline.NumDeleted: 454
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCs1HHhRunvQSa_10serde_yaml7libyaml7emitter5ErrorECsadSKrpJ73hd_12iox2_service:bb.a
  call void @_RNvXsd_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #23, !noalias !506
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsadSKrpJ73hd_12iox2_service.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsadSKrpJ73hd_12iox2_service.exit: ; preds = %bb.c, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !506
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !550, !noundef !5
  switch i8 %i.a, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.f
    i8 2, label %bb.i
    i8 3, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc6borrow3CoweEECsadSKrpJ73hd_12iox2_service.exit
    i8 4, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc6borrow3CoweEECsadSKrpJ73hd_12iox2_service.exit
    i8 5, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXNtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB2_8BTreeMapINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedINtNtB8_6borrow3CoweEEIB15_NtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #23
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc6borrow3CoweEECsadSKrpJ73hd_12iox2_service.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !range !14, !alias.scope !551, !noundef !5
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc6borrow3CoweEECsadSKrpJ73hd_12iox2_service.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #23
  %.val.i.i.i = load i64, ptr %i.c, align 8, !range !6, !alias.scope !552, !noundef !5 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.f, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc6borrow3CoweEECsadSKrpJ73hd_12iox2_service.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !553, !nonnull !5, !noundef !5
  tail call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !554
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc6borrow3CoweEECsadSKrpJ73hd_12iox2_service.exit

bb.f:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !range !14, !alias.scope !555, !noundef !5
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc6borrow3CoweEECsadSKrpJ73hd_12iox2_service.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h) #23
  %.val.i.i.i.i = load i64, ptr %i.h, align 8, !range !6, !alias.scope !556, !noundef !5 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.k, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc6borrow3CoweEECsadSKrpJ73hd_12iox2_service.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !557, !nonnull !5, !noundef !5
  tail call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !558
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc6borrow3CoweEECsadSKrpJ73hd_12iox2_service.exit

bb.i:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !range !14, !alias.scope !559, !noundef !5
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc6borrow3CoweEECsadSKrpJ73hd_12iox2_service.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #23
  %.val.i.i.i.i1 = load i64, ptr %i.m, align 8, !range !6, !alias.scope !560, !noundef !5 ; 2 uses
  %i.p = icmp eq i64 %.val.i.i.i.i1, 0
  br i1 %i.p, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc6borrow3CoweEECsadSKrpJ73hd_12iox2_service.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i.i2 = load ptr, ptr %i.q, align 8, !alias.scope !561, !nonnull !5, !noundef !5
  tail call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i2, i64 noundef %.val.i.i.i.i1, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !562
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc6borrow3CoweEECsadSKrpJ73hd_12iox2_service.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc6borrow3CoweEECsadSKrpJ73hd_12iox2_service.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.a
  ret void

bb.l:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.r) #23
  %.val.i.i = load i64, ptr %i.r, align 8, !range !6, !alias.scope !563, !noundef !5 ; 2 uses
  %i.s = icmp eq i64 %.val.i.i, 0
  br i1 %i.s, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc6borrow3CoweEECsadSKrpJ73hd_12iox2_service.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.t, align 8, !alias.scope !564, !nonnull !5, !noundef !5
  %i.u = mul nuw i64 %.val.i.i, 56
  tail call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !noalias !565
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc6borrow3CoweEECsadSKrpJ73hd_12iox2_service.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noalias noundef ptr @_RINvNtCsi8sRyZZx6Wq_10serde_json3ser18format_escaped_strQINtNtCsbqH9stoieM8_5alloc3vec3VechENtB2_15PrettyFormatterECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree readnone align 8 captures(none) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 5 uses
  %i.b = alloca [6 x i8], align 4                 ; 6 uses
  %.val = load ptr, ptr %0, align 8, !alias.scope !583, !noalias !584, !nonnull !5, !align !18, !noundef !5 ; 6 uses
  tail call void @_RNvMs1_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechE17extend_from_sliceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef range(i64 0, -9223372036854775808) 1) #23, !noalias !585
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %exitcond.not.i1722 = icmp eq i64 %3, 0
  br i1 %exitcond.not.i1722, label %.outer.i._crit_edge, label %_RNvMNtCs8Chj7Szqq0n_4core5sliceSh8split_atCsadSKrpJ73hd_12iox2_service.exit.i.lr.ph

_RNvMNtCs8Chj7Szqq0n_4core5sliceSh8split_atCsadSKrpJ73hd_12iox2_service.exit.i.lr.ph: ; preds = %bb.a, %_RINvYNtNtCsi8sRyZZx6Wq_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtCsbqH9stoieM8_5alloc3vec3VechEECsadSKrpJ73hd_12iox2_service.exit.i
  %.sroa.05.0.ph.i24 = phi ptr [ %i.o, %_RINvYNtNtCsi8sRyZZx6Wq_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtCsbqH9stoieM8_5alloc3vec3VechEECsadSKrpJ73hd_12iox2_service.exit.i ], [ %2, %bb.a ] ; 4 uses
  %.sroa.5.0.ph.i23 = phi i64 [ %i.q, %_RINvYNtNtCsi8sRyZZx6Wq_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtCsbqH9stoieM8_5alloc3vec3VechEECsadSKrpJ73hd_12iox2_service.exit.i ], [ %3, %bb.a ] ; 3 uses
  br label %_RNvMNtCs8Chj7Szqq0n_4core5sliceSh8split_atCsadSKrpJ73hd_12iox2_service.exit.i

bb.b:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core5sliceSh8split_atCsadSKrpJ73hd_12iox2_service.exit.i
  %i.f = add i64 %.sroa.010.0.i18, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.f, %.sroa.5.0.ph.i23
  br i1 %exitcond.not.i, label %.outer.i._crit_edge, label %_RNvMNtCs8Chj7Szqq0n_4core5sliceSh8split_atCsadSKrpJ73hd_12iox2_service.exit.i

.outer.i._crit_edge:                              ; preds = %_RINvYNtNtCsi8sRyZZx6Wq_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtCsbqH9stoieM8_5alloc3vec3VechEECsadSKrpJ73hd_12iox2_service.exit.i, %bb.b, %bb.a
  %.sroa.5.0.ph.i.lcssa = phi i64 [ %.sroa.5.0.ph.i23, %bb.b ], [ %3, %bb.a ], [ %i.q, %_RINvYNtNtCsi8sRyZZx6Wq_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtCsbqH9stoieM8_5alloc3vec3VechEECsadSKrpJ73hd_12iox2_service.exit.i ] ; 2 uses
  %.sroa.05.0.ph.i.lcssa = phi ptr [ %.sroa.05.0.ph.i24, %bb.b ], [ %2, %bb.a ], [ %i.o, %_RINvYNtNtCsi8sRyZZx6Wq_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtCsbqH9stoieM8_5alloc3vec3VechEECsadSKrpJ73hd_12iox2_service.exit.i ]
  %i.g = icmp eq i64 %.sroa.5.0.ph.i.lcssa, 0
  br i1 %i.g, label %_RINvNtCsi8sRyZZx6Wq_10serde_json3ser27format_escaped_str_contentsQINtNtCsbqH9stoieM8_5alloc3vec3VechENtB2_15PrettyFormatterECsadSKrpJ73hd_12iox2_service.exit, label %bb.c

bb.c:                                             ; preds = %.outer.i._crit_edge
  call void @_RNvMs1_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechE17extend_from_sliceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0.ph.i.lcssa, i64 noundef range(i64 1, -9223372036854775808) %.sroa.5.0.ph.i.lcssa) #23, !noalias !587
  br label %_RINvNtCsi8sRyZZx6Wq_10serde_json3ser27format_escaped_str_contentsQINtNtCsbqH9stoieM8_5alloc3vec3VechENtB2_15PrettyFormatterECsadSKrpJ73hd_12iox2_service.exit

_RNvMNtCs8Chj7Szqq0n_4core5sliceSh8split_atCsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core5sliceSh8split_atCsadSKrpJ73hd_12iox2_service.exit.i.lr.ph, %bb.b
  %.sroa.010.0.i18 = phi i64 [ 0, %_RNvMNtCs8Chj7Szqq0n_4core5sliceSh8split_atCsadSKrpJ73hd_12iox2_service.exit.i.lr.ph ], [ %i.f, %bb.b ] ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.05.0.ph.i24, i64 %.sroa.010.0.i18
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !586, !noundef !5 ; 3 uses
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @_RNvNtCsi8sRyZZx6Wq_10serde_json3ser6ESCAPE, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !586, !noundef !5 ; 3 uses
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.d

bb.d:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core5sliceSh8split_atCsadSKrpJ73hd_12iox2_service.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.05.0.ph.i24, i64 %.sroa.010.0.i18
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  %i.p = xor i64 %.sroa.010.0.i18, -1
  %i.q = add i64 %.sroa.5.0.ph.i23, %i.p          ; 3 uses
  %i.r = icmp eq i64 %.sroa.010.0.i18, 0
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvMs1_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechE17extend_from_sliceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0.ph.i24, i64 noundef range(i64 1, -9223372036854775808) %.sroa.010.0.i18) #23, !noalias !588
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = icmp eq i8 %i.l, 117
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !586
  %i.t = and i8 %i.i, 15
  %i.u = zext nneg i8 %i.t to i64
  %i.v = lshr i8 %i.i, 4
  %i.w = zext nneg i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr @_RNvNvNtNtCsi8sRyZZx6Wq_10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !586, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr @_RNvNvNtNtCsi8sRyZZx6Wq_10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS, i64 %i.u
  %i.aa = load i8, ptr %i.z, align 1, !noalias !586, !noundef !5
  store <4 x i8> <i8 92, i8 117, i8 48, i8 48>, ptr %i.b, align 4, !noalias !586
  store i8 %i.y, ptr %i.d, align 4, !noalias !586
  store i8 %i.aa, ptr %i.e, align 1, !noalias !586
  call void @_RNvMs1_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechE17extend_from_sliceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 0, -9223372036854775808) 6) #23, !noalias !589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !586
  br label %_RINvYNtNtCsi8sRyZZx6Wq_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtCsbqH9stoieM8_5alloc3vec3VechEECsadSKrpJ73hd_12iox2_service.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !586
  store i8 92, ptr %i.a, align 1, !noalias !586
  store i8 %i.l, ptr %i.c, align 1, !noalias !586
  call void @_RNvMs1_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechE17extend_from_sliceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef range(i64 0, -9223372036854775808) 2) #23, !noalias !590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !586
  br label %_RINvYNtNtCsi8sRyZZx6Wq_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtCsbqH9stoieM8_5alloc3vec3VechEECsadSKrpJ73hd_12iox2_service.exit.i

_RINvYNtNtCsi8sRyZZx6Wq_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtCsbqH9stoieM8_5alloc3vec3VechEECsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %bb.h, %bb.g
  %exitcond.not.i17 = icmp eq i64 %i.q, 0
  br i1 %exitcond.not.i17, label %.outer.i._crit_edge, label %_RNvMNtCs8Chj7Szqq0n_4core5sliceSh8split_atCsadSKrpJ73hd_12iox2_service.exit.i.lr.ph

_RINvNtCsi8sRyZZx6Wq_10serde_json3ser27format_escaped_str_contentsQINtNtCsbqH9stoieM8_5alloc3vec3VechENtB2_15PrettyFormatterECsadSKrpJ73hd_12iox2_service.exit: ; preds = %.outer.i._crit_edge, %bb.c
  call void @_RNvMs1_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechE17extend_from_sliceCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef range(i64 0, -9223372036854775808) 1) #23, !noalias !591
  ret ptr null
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCsbqH9stoieM8_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTdNtNtB6_6string6StringEENCINvNtNtNtCs5WK5l2q0aFk_12clap_builder6parser8features11suggestions12did_you_meanRB2n_INtNtNtB1f_5slice4iter4IterB2n_EEs0_0EB2n_ECsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !noundef !5
  %i.f = shl i64 %i.b, 5                          ; 5 uses
  %i.g = udiv i64 %i.f, 24                        ; 2 uses
  %i.h = tail call { ptr, ptr } @_RINvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters3mapINtB6_3MapINtNtNtCsbqH9stoieM8_5alloc3vec9into_iter8IntoIterTdNtNtB14_6string6StringEENCINvNtNtNtCs5WK5l2q0aFk_12clap_builder6parser8features11suggestions12did_you_meanRB1N_INtNtNtBc_5slice4iter4IterB1N_EEs0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1N_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1N_E0INtNtBc_6result6ResultB4S_zEECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c, ptr noundef %i.e) #23
  tail call void @_RNvMs0_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #23
  %.not.i = icmp ne i64 %i.b, 0
  %i.i = mul nuw i64 %i.g, 24                     ; 4 uses
  %i.j = icmp ne i64 %i.f, %i.i
  %.sroa.0.0.i = select i1 %.not.i, i1 %i.j, i1 false
  br i1 %.sroa.0.0.i, label %2, label %_RNvMs0_NtCsbqH9stoieM8_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.thread

_RNvMs0_NtCsbqH9stoieM8_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.thread: ; preds = %2, %_RNvMs0_NtCsbqH9stoieM8_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit, %bb.a
  %.sroa.04.0 = phi ptr [ %i.c, %bb.a ], [ %i.s, %_RNvMs0_NtCsbqH9stoieM8_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit ], [ inttoptr (i64 8 to ptr), %2 ]
  %i.k = extractvalue { ptr, ptr } %i.h, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.c to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 24
  store i64 %i.g, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.04.0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.q, align 8
  tail call void @_RNvXse_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #23
  ret void

2:                                                ; preds = %bb.a
  %3 = icmp eq i64 %i.f, 0
  br i1 %3, label %_RNvMs0_NtCsbqH9stoieM8_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.thread, label %_RNvMs0_NtCsbqH9stoieM8_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit

_RNvMs0_NtCsbqH9stoieM8_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit: ; preds = %2
  %i.r = icmp ule i64 %i.i, %i.f
  tail call void @llvm.assume(i1 %i.r)
  %i.s = tail call noundef align 8 ptr @_RNvCsicpYtSlSgpD_7___rustc14___rust_realloc(ptr noundef nonnull %i.c, i64 noundef %i.f, i64 noundef 8, i64 noundef range(i64 0, -15) %i.i) #23 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.b, label %_RNvMs0_NtCsbqH9stoieM8_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.thread, !prof !592

bb.b:                                             ; preds = %_RNvMs0_NtCsbqH9stoieM8_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit
  tail call void @_RNvNtCsbqH9stoieM8_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.i) #25
  unreachable
}

; Function Attrs: cold nounwind nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCsbqH9stoieM8_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !595)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !6, !alias.scope !595, !noundef !5 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.c)
  %i.h = icmp eq i64 %4, 1
  %i.i = icmp ult i64 %4, 1025
  %..i = select i1 %i.i, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.h, i64 8, i64 %..i
  %i.j = tail call i64 @llvm.umax.i64(i64 %.sroa.08.0.i, i64 %i.g) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !595
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.k, align 8, !alias.scope !595
  call fastcc void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) #23, !noalias !595
  %i.l = load i64, ptr %i.a, align 8, !range !12, !noalias !595, !noundef !5
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr %i.n, align 8, !range !20, !noalias !595, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noalias !595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !595
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.q, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.o, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #25
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.n, align 8, !noalias !595, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !595
  store ptr %i.r, ptr %i.k, align 8, !alias.scope !595
  %i.s = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.s)
  store i64 %i.j, ptr %0, align 8, !alias.scope !595
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvXNvXNvXsw_NtNtCsePUspIjoSTD_10serde_core2de5implsNtNtCs8Chj7Szqq0n_4core4time8DurationNtBe_11Deserialize11deserializeNtB6_5FieldB1q_11deserializeNtB3_12FieldVisitorNtBe_7Visitor9visit_strNtNtNtCs7PFeJTloU4p_4toml2de5error5ErrorECsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  switch i64 %2, label %bb.e [
    i64 4, label %bb.b
    i64 5, label %bb.d
  ], !prof !21

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 1
  %i.b = icmp ne i32 %i.a, 1935893875
  %i.c = zext i1 %i.b to i32
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.e, align 8
  store i64 2, ptr %0, align 8
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.f = load i32, ptr %1, align 1
  %i.g = xor i32 %i.f, 1869504878
  %i.h = getelementptr i8, ptr %1, i64 4
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i32
  %i.k = xor i32 %i.j, 115
  %i.l = or i32 %i.g, %i.k
  %i.m = icmp ne i32 %i.l, 0
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.e, !prof !19

bb.e:                                             ; preds = %bb.b, %bb.a, %bb.d
  tail call fastcc void @_RNvYNtNtNtCs7PFeJTloU4p_4toml2de5error5ErrorNtNtCsePUspIjoSTD_10serde_core2de5Error13unknown_fieldCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #23
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.p, align 8
  store i64 2, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvXNvXs_NtCs1HHhRunvQSa_10serde_yaml3serQINtB8_10SerializerpENtNtCsePUspIjoSTD_10serde_core3ser10Serializer13serialize_strNtB3_16InferScalarStyleNtNtB13_2de7Visitor9visit_strNtNtBa_5error5ErrorECsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 2)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs1HHhRunvQSa_10serde_yaml2de21digits_but_not_number(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #23
  %. = select i1 %i.a, i8 2, i8 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %., ptr %i.b, align 1
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvXNvXsw_NtNtCsePUspIjoSTD_10serde_core2de5implsNtNtCs8Chj7Szqq0n_4core4time8DurationNtBb_11Deserialize11deserializeNtB3_5FieldB1n_11deserializeINtNtBb_5value23BorrowedStrDeserializerNtNtNtCs7PFeJTloU4p_4toml2de5error5ErrorEECsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !607)
  switch i64 %2, label %bb.e [
    i64 4, label %bb.b
    i64 5, label %bb.d
  ], !prof !21

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 1
  %i.b = icmp ne i32 %i.a, 1935893875
  %i.c = zext i1 %i.b to i32
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.e, align 8, !alias.scope !608, !noalias !609
  store i64 2, ptr %0, align 8, !alias.scope !608, !noalias !609
  br label %_RINvXsl_NtNtCsePUspIjoSTD_10serde_core2de5valueINtB6_23BorrowedStrDeserializerNtNtNtCs7PFeJTloU4p_4toml2de5error5ErrorENtB8_12Deserializer22deserialize_identifierNtNvXNvXsw_NtB8_5implsNtNtCs8Chj7Szqq0n_4core4time8DurationNtB8_11Deserialize11deserializeNtB2F_5FieldB3x_11deserialize12FieldVisitorECsadSKrpJ73hd_12iox2_service.exit

bb.d:                                             ; preds = %bb.a
  %i.f = load i32, ptr %1, align 1
  %i.g = xor i32 %i.f, 1869504878
  %i.h = getelementptr i8, ptr %1, i64 4
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i32
  %i.k = xor i32 %i.j, 115
  %i.l = or i32 %i.g, %i.k
  %i.m = icmp ne i32 %i.l, 0
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.e, !prof !19

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  tail call fastcc void @_RNvYNtNtNtCs7PFeJTloU4p_4toml2de5error5ErrorNtNtCsePUspIjoSTD_10serde_core2de5Error13unknown_fieldCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #23
  br label %_RINvXsl_NtNtCsePUspIjoSTD_10serde_core2de5valueINtB6_23BorrowedStrDeserializerNtNtNtCs7PFeJTloU4p_4toml2de5error5ErrorENtB8_12Deserializer22deserialize_identifierNtNvXNvXsw_NtB8_5implsNtNtCs8Chj7Szqq0n_4core4time8DurationNtB8_11Deserialize11deserializeNtB2F_5FieldB3x_11deserialize12FieldVisitorECsadSKrpJ73hd_12iox2_service.exit

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.p, align 8, !alias.scope !608, !noalias !609
  store i64 2, ptr %0, align 8, !alias.scope !608, !noalias !609
  br label %_RINvXsl_NtNtCsePUspIjoSTD_10serde_core2de5valueINtB6_23BorrowedStrDeserializerNtNtNtCs7PFeJTloU4p_4toml2de5error5ErrorENtB8_12Deserializer22deserialize_identifierNtNvXNvXsw_NtB8_5implsNtNtCs8Chj7Szqq0n_4core4time8DurationNtB8_11Deserialize11deserializeNtB2F_5FieldB3x_11deserialize12FieldVisitorECsadSKrpJ73hd_12iox2_service.exit

_RINvXsl_NtNtCsePUspIjoSTD_10serde_core2de5valueINtB6_23BorrowedStrDeserializerNtNtNtCs7PFeJTloU4p_4toml2de5error5ErrorENtB8_12Deserializer22deserialize_identifierNtNvXNvXsw_NtB8_5implsNtNtCs8Chj7Szqq0n_4core4time8DurationNtB8_11Deserialize11deserializeNtB2F_5FieldB3x_11deserialize12FieldVisitorECsadSKrpJ73hd_12iox2_service.exit: ; preds = %bb.c, %bb.e, %bb.f
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvXNvXsw_NtNtCsePUspIjoSTD_10serde_core2de5implsNtNtCs8Chj7Szqq0n_4core4time8DurationNtBb_11Deserialize11deserializeNtB3_5FieldB1n_11deserializeNtNtNtNtCs7PFeJTloU4p_4toml2de12deserializer3key15KeyDeserializerECsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RINvXsz_NtNtCsePUspIjoSTD_10serde_core2de5valueINtB6_18CowStrDeserializerNtNtNtCs7PFeJTloU4p_4toml2de5error5ErrorENtB8_12Deserializer15deserialize_anyNtNvXNvXsw_NtB8_5implsNtNtCs8Chj7Szqq0n_4core4time8DurationNtB8_11Deserialize11deserializeNtB2t_5FieldB3l_11deserialize12FieldVisitorECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a) #23
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvXs0_NtCs5kzjBmDVxDj_21iceoryx2_bb_container18relocatable_optionINtB6_17RelocatableOptionNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config5event8DeadlineENtNtCsePUspIjoSTD_10serde_core3ser9Serialize9serializeNtNtNtCs7PFeJTloU4p_4toml3ser5value15ValueSerializerECsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !range !9, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RINvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config5event1__NtB5_8DeadlineNtNtCsePUspIjoSTD_10serde_core3ser9Serialize9serializeNtNtNtCs7PFeJTloU4p_4toml3ser5value15ValueSerializerECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext %3) #23
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775806, ptr %0, align 8, !alias.scope !612
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
end_hunk_0
