Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.11?download=true
inline.NumInlined: 10475
inline.NumDeleted: 2844
loop-unroll.NumRuntimeUnrolled: 99
loop-unroll.NumUnrolled: 108
begin_hunk_0_@_RINvXs9K_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_13CreateTriggerNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %_RINvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_25ConstraintCharacteristicsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_25ConstraintCharacteristicsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p, %bb.o, %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs9K_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_13CreateTriggerNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB13_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(720) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load i8, ptr %i.a, align 8, !range !135, !noundef !3
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_8write_u8Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i8 noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 705
  %i.d = load i8, ptr %i.c, align 1, !range !135, !noundef !3
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_8write_u8Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i8 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 706
  %i.f = load i8, ptr %i.e, align 2, !range !135, !noundef !3
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_8write_u8Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i8 noundef %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 336
  %.val4 = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.val5 = load i64, ptr %i.h, align 8, !noundef !3 ; 2 uses
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_19write_length_prefixCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.val5)
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceQDNtBR_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val4, i64 noundef %.val5, ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 711
  %.val6 = load i8, ptr %i.i, align 1, !range !864, !noundef !3
  %i.j = zext nneg i8 %.val6 to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 707
  %i.l = load i8, ptr %i.k, align 1, !range !135, !noundef !3
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_8write_u8Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i8 noundef %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.p = load i64, ptr %i.o, align 8, !noundef !3 ; 2 uses
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_19write_length_prefixCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.p)
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast7trigger12TriggerEventNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceQDNtBZ_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.n, i64 noundef %i.p, ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 384
  %.val2 = load ptr, ptr %i.q, align 8, !nonnull !3, !noundef !3
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 392
  %.val3 = load i64, ptr %i.r, align 8, !noundef !3 ; 2 uses
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_19write_length_prefixCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.val3)
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceQDNtBR_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val2, i64 noundef %.val3, ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.t = load i64, ptr %i.s, align 8, !range !4, !noundef !3
  %i.u = icmp ne i64 %i.t, -9223372036854775808   ; 2 uses
  %i.v = zext i1 %i.u to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.v)
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 432
  %.val = load ptr, ptr %i.w, align 8, !nonnull !3, !noundef !3
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 440
  %.val1 = load i64, ptr %i.x, align 8, !noundef !3 ; 2 uses
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_19write_length_prefixCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.val1)
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceQDNtBR_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !3, !noundef !3
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !3 ; 2 uses
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_19write_length_prefixCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ab)
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast7trigger18TriggerReferencingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceQDNtB15_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.z, i64 noundef %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 708
  %.val7 = load i8, ptr %i.ac, align 4, !range !135, !noundef !3
  %i.ad = zext nneg i8 %.val7 to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 709
  %i.af = load i8, ptr %i.ae, align 1, !range !135, !noundef !3
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_8write_u8Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i8 noundef %i.af)
  %i.ag = load i64, ptr %0, align 8, !range !372, !noundef !3
  %i.ah = icmp ne i64 %i.ag, 69                   ; 2 uses
  %i.ai = zext i1 %i.ah to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ai)
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBN_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef align 8 dereferenceable(16) %1) #57
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ak = load i64, ptr %i.aj, align 8, !range !4, !noundef !3
  %i.al = icmp ne i64 %i.ak, -9223372036854775808 ; 2 uses
  %i.am = zext i1 %i.al to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.am)
  br i1 %i.al, label %bb.f, label %_RINvXs1i_NtNtCs4lawaffTVVK_9sqlparser3ast7triggerNtB7_15TriggerExecBodyNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB19_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16564)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 496
  %.val.i = load i8, ptr %i.an, align 8, !range !135, !alias.scope !16564, !noalias !16567, !noundef !3
  %i.ao = zext nneg i8 %.val.i to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ao), !noalias !16564
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16569)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 456
  %.val.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !16572, !noalias !16573, !nonnull !3, !noundef !3
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 464
  %.val1.i.i = load i64, ptr %i.aq, align 8, !alias.scope !16572, !noalias !16573, !noundef !3 ; 2 uses
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_19write_length_prefixCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.val1.i.i), !noalias !16572
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceQDNtBR_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i, ptr noalias noundef nonnull align 8 dereferenceable(16) %1), !noalias !16572
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.as = load i64, ptr %i.ar, align 8, !range !4, !alias.scope !16572, !noalias !16573, !noundef !3
  %i.at = icmp ne i64 %i.as, -9223372036854775808 ; 2 uses
  %i.au = zext i1 %i.at to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.au), !noalias !16572
  br i1 %i.at, label %bb.g, label %_RINvXs1i_NtNtCs4lawaffTVVK_9sqlparser3ast7triggerNtB7_15TriggerExecBodyNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB19_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !16572, !noalias !16573, !nonnull !3, !noundef !3
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !16572, !noalias !16573, !noundef !3 ; 2 uses
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_19write_length_prefixCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ay), !noalias !16572
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceQDNtBV_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.aw, i64 noundef %i.ay, ptr noalias noundef nonnull align 8 dereferenceable(16) %1), !noalias !16572
  br label %_RINvXs1i_NtNtCs4lawaffTVVK_9sqlparser3ast7triggerNtB7_15TriggerExecBodyNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB19_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs1i_NtNtCs4lawaffTVVK_9sqlparser3ast7triggerNtB7_15TriggerExecBodyNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB19_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 710
  %i.ba = load i8, ptr %i.az, align 2, !range !135, !noundef !3
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_8write_u8Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i8 noundef %i.ba)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 3 uses
  %i.bc = load i64, ptr %i.bb, align 8, !range !311, !noundef !3 ; 2 uses
  %i.bd = icmp ne i64 %i.bc, -9223372036854775807 ; 2 uses
  %i.be = zext i1 %i.bd to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.be)
  br i1 %i.bd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RINvXs1i_NtNtCs4lawaffTVVK_9sqlparser3ast7triggerNtB7_15TriggerExecBodyNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB19_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16575)
  %i.bf = icmp ne i64 %i.bc, -9223372036854775808 ; 3 uses
  %i.bg = zext i1 %i.bf to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.bg), !noalias !16575
  %..i = select i1 %i.bf, i64 8, i64 16
  %.7.i = select i1 %i.bf, i64 16, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %..i
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !16575, !noalias !16578, !nonnull !3, !noundef !3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.7.i
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !16575, !noalias !16578, !noundef !3 ; 2 uses
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_19write_length_prefixCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.bk), !noalias !16575
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9StatementNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceQDNtBL_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bi, i64 noundef %i.bk, ptr noalias noundef nonnull align 8 dereferenceable(16) %1), !noalias !16575
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RINvXs1i_NtNtCs4lawaffTVVK_9sqlparser3ast7triggerNtB7_15TriggerExecBodyNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB19_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.bm = load i8, ptr %i.bl, align 8, !range !864, !noundef !3 ; 3 uses
  %i.bn = icmp ne i8 %i.bm, 3                     ; 2 uses
  %i.bo = zext i1 %i.bn to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.bo)
  br i1 %i.bn, label %bb.j, label %_RINvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_25ConstraintCharacteristicsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB1f_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16580)
  %i.bp = icmp ne i8 %i.bm, 2                     ; 2 uses
  %i.bq = zext i1 %i.bp to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.bq), !noalias !16580
  br i1 %i.bp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_8write_u8Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i8 noundef %i.bm), !noalias !16580
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 713
  %i.bs = load i8, ptr %i.br, align 1, !range !120, !alias.scope !16580, !noalias !16583, !noundef !3 ; 2 uses
  %i.bt = icmp ne i8 %i.bs, 2                     ; 2 uses
  %i.bu = zext i1 %i.bt to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.bu), !noalias !16580
  br i1 %i.bt, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bv = zext nneg i8 %i.bs to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.bv), !noalias !16580
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 714
  %i.bx = load i8, ptr %i.bw, align 2, !range !120, !alias.scope !16580, !noalias !16583, !noundef !3 ; 2 uses
  %i.by = icmp ne i8 %i.bx, 2                     ; 2 uses
  %i.bz = zext i1 %i.by to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.bz), !noalias !16580
  br i1 %i.by, label %bb.o, label %_RINvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_25ConstraintCharacteristicsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB1f_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_8write_u8Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i8 noundef %i.bx), !noalias !16580
  br label %_RINvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_25ConstraintCharacteristicsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB1f_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_25ConstraintCharacteristicsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB1f_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.o, %bb.n, %bb.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs9R_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_21MatchRecognizePatternNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 10 uses
  %.promoted = load i8, ptr %i.a, align 16, !alias.scope !16585
  %.promoted33 = load i128, ptr %1, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 16, !nonnull !3, !align !65 ; 6 uses
  %.promoted34 = load i64, ptr %i.b, align 8
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.p, %bb.a
  %2 = phi i64 [ %.promoted34, %bb.a ], [ %3, %bb.p ] ; 2 uses
  %i.e = phi i128 [ %.promoted33, %bb.a ], [ %i.y, %bb.p ] ; 3 uses
  %storemerge.i.i332 = phi i8 [ %.promoted, %bb.a ], [ %storemerge.i.i3, %bb.p ] ; 3 uses
  %.tr = phi ptr [ %0, %bb.a ], [ %i.dg, %bb.p ]  ; 18 uses
  %i.f = load i32, ptr %.tr, align 8, !range !2585, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16591)
  %i.g = icmp ugt i8 %storemerge.i.i332, 64
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.h = zext nneg i32 %i.f to i128
  %i.i = zext nneg i8 %storemerge.i.i332 to i128
  %i.j = shl nuw nsw i128 %i.h, %i.i
  %i.k = or i128 %i.e, %i.j
  %i.l = add nuw i8 %storemerge.i.i332, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

bb.c:                                             ; preds = %tailrecurse
  %i.m = trunc i128 %i.e to i64
  %i.n = lshr i128 %i.e, 64
  %i.o = xor i64 %2, %i.m
  %i.p = load i64, ptr %i.d, align 8, !noalias !16585, !noundef !3
  %i.q = zext i64 %i.o to i128
  %i.r = zext i64 %i.p to i128
  %i.s = xor i128 %i.n, %i.r
  %i.t = mul nuw i128 %i.s, %i.q                  ; 2 uses
  %i.u = lshr i128 %i.t, 64
  %i.v = xor i128 %i.u, %i.t
  %i.w = trunc i128 %i.v to i64                   ; 2 uses
  store i64 %i.w, ptr %i.b, align 8, !alias.scope !16585
  %i.x = zext nneg i32 %i.f to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4: ; preds = %bb.b, %bb.c
  %i.y = phi i128 [ %i.x, %bb.c ], [ %i.k, %bb.b ] ; 17 uses
  %3 = phi i64 [ %i.w, %bb.c ], [ %2, %bb.b ]     ; 6 uses
  %storemerge.i.i3 = phi i8 [ 64, %bb.c ], [ %i.l, %bb.b ] ; 7 uses
  store i128 %i.y, ptr %1, align 16, !alias.scope !16585
  store i8 %storemerge.i.i3, ptr %i.a, align 16, !alias.scope !16585
  switch i32 %i.f, label %default.unreachable47 [
    i32 0, label %bb.d
    i32 1, label %bb.g
    i32 2, label %bb.j
    i32 3, label %bb.m
    i32 4, label %bb.p
    i32 5, label %bb.q
    i32 6, label %bb.t
  ]

default.unreachable47:                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  unreachable

bb.d:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.z = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !range !311, !noundef !3 ; 2 uses
  %i.ab = icmp slt i64 %i.aa, 0
  %i.ac = add i64 %i.aa, -9223372036854775807
  %i.ad = select i1 %i.ab, i64 %i.ac, i64 0       ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16595)
  %i.ae = icmp ugt i8 %storemerge.i.i3, 64
  br i1 %i.ae, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = zext nneg i64 %i.ad to i128
  %i.ag = shl nuw nsw i128 %i.af, 64
  %i.ah = or i128 %i.y, %i.ag
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

bb.f:                                             ; preds = %bb.d
  %i.ai = trunc i128 %i.y to i64
  %i.aj = lshr i128 %i.y, 64
  %i.ak = xor i64 %3, %i.ai
  %i.al = load i64, ptr %i.d, align 8, !noalias !16598, !noundef !3
  %i.am = zext i64 %i.ak to i128
  %i.an = zext i64 %i.al to i128
  %i.ao = xor i128 %i.aj, %i.an
  %i.ap = mul nuw i128 %i.ao, %i.am               ; 2 uses
  %i.aq = lshr i128 %i.ap, 64
  %i.ar = xor i128 %i.aq, %i.ap
  %i.as = trunc i128 %i.ar to i64
  store i64 %i.as, ptr %i.b, align 8, !alias.scope !16598
  %i.at = zext nneg i64 %i.ad to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2: ; preds = %bb.e, %bb.f
  %storemerge12 = phi i128 [ %i.ah, %bb.e ], [ %i.at, %bb.f ]
  %storemerge.i.i1 = phi i8 [ -128, %bb.e ], [ 64, %bb.f ]
  store i128 %storemerge12, ptr %1, align 16, !alias.scope !16598
  store i8 %storemerge.i.i1, ptr %i.a, align 16, !alias.scope !16598
  %i.au = icmp eq i64 %i.ad, 0
  br i1 %i.au, label %bb.ai, label %_RINvXsa1_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_20RepetitionQuantifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.g:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.av = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !range !311, !noundef !3 ; 2 uses
  %i.ax = icmp slt i64 %i.aw, 0
  %i.ay = add i64 %i.aw, -9223372036854775807
  %i.az = select i1 %i.ax, i64 %i.ay, i64 0       ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16602)
  %i.ba = icmp ugt i8 %storemerge.i.i3, 64
  br i1 %i.ba, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = zext nneg i64 %i.az to i128
  %i.bc = shl nuw nsw i128 %i.bb, 64
  %i.bd = or i128 %i.y, %i.bc
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

bb.i:                                             ; preds = %bb.g
  %i.be = trunc i128 %i.y to i64
  %i.bf = lshr i128 %i.y, 64
  %i.bg = xor i64 %3, %i.be
  %i.bh = load i64, ptr %i.d, align 8, !noalias !16605, !noundef !3
  %i.bi = zext i64 %i.bg to i128
  %i.bj = zext i64 %i.bh to i128
  %i.bk = xor i128 %i.bf, %i.bj
  %i.bl = mul nuw i128 %i.bk, %i.bi               ; 2 uses
  %i.bm = lshr i128 %i.bl, 64
  %i.bn = xor i128 %i.bm, %i.bl
  %i.bo = trunc i128 %i.bn to i64
  store i64 %i.bo, ptr %i.b, align 8, !alias.scope !16605
  %i.bp = zext nneg i64 %i.az to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit: ; preds = %bb.h, %bb.i
  %storemerge = phi i128 [ %i.bd, %bb.h ], [ %i.bp, %bb.i ]
  %storemerge.i.i = phi i8 [ -128, %bb.h ], [ 64, %bb.i ]
  store i128 %storemerge, ptr %1, align 16, !alias.scope !16605
  store i8 %storemerge.i.i, ptr %i.a, align 16, !alias.scope !16605
  %i.bq = icmp eq i64 %i.az, 0
  br i1 %i.bq, label %bb.aj, label %_RINvXsa1_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_20RepetitionQuantifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.br = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !3, !noundef !3
  %i.bt = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16612)
  %i.bv = icmp ugt i8 %storemerge.i.i3, 64
  br i1 %i.bv, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = zext i64 %i.bu to i128
  %i.bx = shl nuw i128 %i.bw, 64
  %i.by = or i128 %i.y, %i.bx
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.j
  %i.bz = trunc i128 %i.y to i64
  %i.ca = lshr i128 %i.y, 64
  %i.cb = xor i64 %3, %i.bz
  %i.cc = load i64, ptr %i.d, align 8, !noalias !16615, !noundef !3
  %i.cd = zext i64 %i.cb to i128
  %i.ce = zext i64 %i.cc to i128
  %i.cf = xor i128 %i.ca, %i.ce
  %i.cg = mul nuw i128 %i.cf, %i.cd               ; 2 uses
  %i.ch = lshr i128 %i.cg, 64
  %i.ci = xor i128 %i.ch, %i.cg
  %i.cj = trunc i128 %i.ci to i64
  store i64 %i.cj, ptr %i.b, align 8, !alias.scope !16615
  %i.ck = zext i64 %i.bu to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.k, %bb.l
  %.sink.i = phi i128 [ %i.ck, %bb.l ], [ %i.by, %bb.k ]
  %storemerge.i.i.i = phi i8 [ 64, %bb.l ], [ -128, %bb.k ]
  store i128 %.sink.i, ptr %1, align 16, !alias.scope !16615
  store i8 %storemerge.i.i.i, ptr %i.a, align 16, !alias.scope !16615
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bs, i64 noundef %i.bu, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  br label %_RINvXsa1_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_20RepetitionQuantifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.m:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.cl = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !nonnull !3, !noundef !3
  %i.cn = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.co = load i64, ptr %i.cn, align 8, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16622)
  %i.cp = icmp ugt i8 %storemerge.i.i3, 64
  br i1 %i.cp, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cq = zext i64 %i.co to i128
  %i.cr = shl nuw i128 %i.cq, 64
  %i.cs = or i128 %i.y, %i.cr
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit7

bb.o:                                             ; preds = %bb.m
  %i.ct = trunc i128 %i.y to i64
  %i.cu = lshr i128 %i.y, 64
  %i.cv = xor i64 %3, %i.ct
  %i.cw = load i64, ptr %i.d, align 8, !noalias !16625, !noundef !3
  %i.cx = zext i64 %i.cv to i128
  %i.cy = zext i64 %i.cw to i128
  %i.cz = xor i128 %i.cu, %i.cy
  %i.da = mul nuw i128 %i.cz, %i.cx               ; 2 uses
  %i.db = lshr i128 %i.da, 64
  %i.dc = xor i128 %i.db, %i.da
  %i.dd = trunc i128 %i.dc to i64
  store i64 %i.dd, ptr %i.b, align 8, !alias.scope !16625
  %i.de = zext i64 %i.co to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit7

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit7: ; preds = %bb.n, %bb.o
  %.sink.i5 = phi i128 [ %i.de, %bb.o ], [ %i.cs, %bb.n ]
  %storemerge.i.i.i6 = phi i8 [ 64, %bb.o ], [ -128, %bb.n ]
  store i128 %.sink.i5, ptr %1, align 16, !alias.scope !16625
  store i8 %storemerge.i.i.i6, ptr %i.a, align 16, !alias.scope !16625
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21MatchRecognizePatternNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cm, i64 noundef %i.co, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  br label %_RINvXsa1_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_20RepetitionQuantifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.p:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.df = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !3, !noundef !3
  br label %tailrecurse

bb.q:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.dh = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !nonnull !3, !noundef !3
  %i.dj = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.dk = load i64, ptr %i.dj, align 8, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16626)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16629)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16632)
  %i.dl = icmp ugt i8 %storemerge.i.i3, 64
  br i1 %i.dl, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dm = zext i64 %i.dk to i128
  %i.dn = shl nuw i128 %i.dm, 64
  %i.do = or i128 %i.y, %i.dn
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit10

bb.s:                                             ; preds = %bb.q
  %i.dp = trunc i128 %i.y to i64
  %i.dq = lshr i128 %i.y, 64
  %i.dr = xor i64 %3, %i.dp
  %i.ds = load i64, ptr %i.d, align 8, !noalias !16635, !noundef !3
  %i.dt = zext i64 %i.dr to i128
  %i.du = zext i64 %i.ds to i128
  %i.dv = xor i128 %i.dq, %i.du
  %i.dw = mul nuw i128 %i.dv, %i.dt               ; 2 uses
  %i.dx = lshr i128 %i.dw, 64
  %i.dy = xor i128 %i.dx, %i.dw
  %i.dz = trunc i128 %i.dy to i64
  store i64 %i.dz, ptr %i.b, align 8, !alias.scope !16635
  %i.ea = zext i64 %i.dk to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit10

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit10: ; preds = %bb.r, %bb.s
  %.sink.i8 = phi i128 [ %i.ea, %bb.s ], [ %i.do, %bb.r ]
  %storemerge.i.i.i9 = phi i8 [ 64, %bb.s ], [ -128, %bb.r ]
  store i128 %.sink.i8, ptr %1, align 16, !alias.scope !16635
  store i8 %storemerge.i.i.i9, ptr %i.a, align 16, !alias.scope !16635
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21MatchRecognizePatternNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.di, i64 noundef %i.dk, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  br label %_RINvXsa1_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_20RepetitionQuantifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.eb = getelementptr inbounds nuw i8, ptr %.tr, i64 4
  %i.ec = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !nonnull !3, !noundef !3
  tail call fastcc void @_RINvXs9R_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_21MatchRecognizePatternNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ed, ptr noalias noundef align 16 dereferenceable(48) %1) #57
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16639)
  %i.ee = load i32, ptr %i.eb, align 4, !range !2585, !alias.scope !16636, !noalias !16639, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16641)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16644)
  %i.ef = load i8, ptr %i.a, align 16, !alias.scope !16647, !noalias !16636, !noundef !3 ; 3 uses
  %i.eg = icmp ugt i8 %i.ef, 64
  br i1 %i.eg, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eh = zext nneg i32 %i.ee to i128
  %i.ei = zext nneg i8 %i.ef to i128
  %i.ej = shl nuw nsw i128 %i.eh, %i.ei
  %i.ek = load i128, ptr %1, align 16, !alias.scope !16647, !noalias !16636, !noundef !3
  %i.el = or i128 %i.ek, %i.ej
  %i.em = add nuw i8 %i.ef, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i

bb.v:                                             ; preds = %bb.t
  %i.en = load i128, ptr %1, align 16, !alias.scope !16647, !noalias !16636, !noundef !3 ; 2 uses
  %i.eo = trunc i128 %i.en to i64
  %i.ep = lshr i128 %i.en, 64
  %i.eq = load i64, ptr %i.b, align 8, !alias.scope !16647, !noalias !16636, !noundef !3
  %i.er = xor i64 %i.eq, %i.eo
  %i.es = load ptr, ptr %i.c, align 16, !alias.scope !16647, !noalias !16636, !nonnull !3, !align !65, !noundef !3
  %i.et = load i64, ptr %i.es, align 8, !noalias !16648, !noundef !3
  %i.eu = zext i64 %i.er to i128
  %i.ev = zext i64 %i.et to i128
  %i.ew = xor i128 %i.ep, %i.ev
  %i.ex = mul nuw i128 %i.ew, %i.eu               ; 2 uses
  %i.ey = lshr i128 %i.ex, 64
  %i.ez = xor i128 %i.ey, %i.ex
  %i.fa = trunc i128 %i.ez to i64
  store i64 %i.fa, ptr %i.b, align 8, !alias.scope !16647, !noalias !16636
  %i.fb = zext nneg i32 %i.ee to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i: ; preds = %bb.v, %bb.u
  %i.fc = phi i128 [ %i.fb, %bb.v ], [ %i.el, %bb.u ] ; 13 uses
  %storemerge.i.i.i11 = phi i8 [ 64, %bb.v ], [ %i.em, %bb.u ] ; 13 uses
  store i128 %i.fc, ptr %1, align 16, !alias.scope !16647, !noalias !16636
  store i8 %storemerge.i.i.i11, ptr %i.a, align 16, !alias.scope !16647, !noalias !16636
  switch i32 %i.ee, label %_RINvXsa1_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_20RepetitionQuantifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit [
    i32 3, label %bb.w
    i32 4, label %bb.z
    i32 5, label %bb.ac
    i32 6, label %bb.af
  ]

.sink.split.i:                                    ; preds = %bb.ah, %bb.ag, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u32.exit5.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u32.exit7.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u32.exit9.i
  %storemerge.i.i1.sink.i = phi i8 [ %storemerge.i.i8.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u32.exit9.i ], [ %storemerge.i.i4.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u32.exit5.i ], [ %storemerge.i.i6.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u32.exit7.i ], [ %i.ix, %bb.ag ], [ 32, %bb.ah ]
  store i8 %storemerge.i.i1.sink.i, ptr %i.a, align 16, !alias.scope !16639, !noalias !16636
  br label %_RINvXsa1_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_20RepetitionQuantifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.w:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.fe = load i32, ptr %i.fd, align 8, !alias.scope !16636, !noalias !16639, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16649)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16652)
  %i.ff = icmp ugt i8 %storemerge.i.i.i11, 96
  br i1 %i.ff, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fg = zext i32 %i.fe to i128
  %i.fh = zext nneg i8 %storemerge.i.i.i11 to i128
  %i.fi = shl nuw i128 %i.fg, %i.fh
  %i.fj = or i128 %i.fi, %i.fc
  %i.fk = add nuw i8 %storemerge.i.i.i11, 32
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u32.exit9.i

bb.y:                                             ; preds = %bb.w
  %i.fl = trunc i128 %i.fc to i64
  %i.fm = lshr i128 %i.fc, 64
  %i.fn = load i64, ptr %i.b, align 8, !alias.scope !16655, !noalias !16636, !noundef !3
  %i.fo = xor i64 %i.fn, %i.fl
  %i.fp = load ptr, ptr %i.c, align 16, !alias.scope !16655, !noalias !16636, !nonnull !3, !align !65, !noundef !3
  %i.fq = load i64, ptr %i.fp, align 8, !noalias !16656, !noundef !3
  %i.fr = zext i64 %i.fo to i128
  %i.fs = zext i64 %i.fq to i128
  %i.ft = xor i128 %i.fm, %i.fs
  %i.fu = mul nuw i128 %i.ft, %i.fr               ; 2 uses
  %i.fv = lshr i128 %i.fu, 64
  %i.fw = xor i128 %i.fv, %i.fu
  %i.fx = trunc i128 %i.fw to i64
  store i64 %i.fx, ptr %i.b, align 8, !alias.scope !16655, !noalias !16636
  %i.fy = zext i32 %i.fe to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u32.exit9.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u32.exit9.i: ; preds = %bb.y, %bb.x
  %.sink12.i = phi i128 [ %i.fy, %bb.y ], [ %i.fj, %bb.x ]
  %storemerge.i.i8.i = phi i8 [ 32, %bb.y ], [ %i.fk, %bb.x ]
  store i128 %.sink12.i, ptr %1, align 16, !alias.scope !16655, !noalias !16636
  br label %.sink.split.i

bb.z:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i
  %i.fz = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.ga = load i32, ptr %i.fz, align 8, !alias.scope !16636, !noalias !16639, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16660)
  %i.gb = icmp ugt i8 %storemerge.i.i.i11, 96
  br i1 %i.gb, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gc = zext i32 %i.ga to i128
  %i.gd = zext nneg i8 %storemerge.i.i.i11 to i128
  %i.ge = shl nuw i128 %i.gc, %i.gd
  %i.gf = or i128 %i.ge, %i.fc
  %i.gg = add nuw i8 %storemerge.i.i.i11, 32
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u32.exit7.i

bb.ab:                                            ; preds = %bb.z
  %i.gh = trunc i128 %i.fc to i64
  %i.gi = lshr i128 %i.fc, 64
  %i.gj = load i64, ptr %i.b, align 8, !alias.scope !16663, !noalias !16636, !noundef !3
  %i.gk = xor i64 %i.gj, %i.gh
  %i.gl = load ptr, ptr %i.c, align 16, !alias.scope !16663, !noalias !16636, !nonnull !3, !align !65, !noundef !3
  %i.gm = load i64, ptr %i.gl, align 8, !noalias !16664, !noundef !3
  %i.gn = zext i64 %i.gk to i128
  %i.go = zext i64 %i.gm to i128
  %i.gp = xor i128 %i.gi, %i.go
  %i.gq = mul nuw i128 %i.gp, %i.gn               ; 2 uses
  %i.gr = lshr i128 %i.gq, 64
  %i.gs = xor i128 %i.gr, %i.gq
  %i.gt = trunc i128 %i.gs to i64
  store i64 %i.gt, ptr %i.b, align 8, !alias.scope !16663, !noalias !16636
  %i.gu = zext i32 %i.ga to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u32.exit7.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u32.exit7.i: ; preds = %bb.ab, %bb.aa
  %.sink13.i = phi i128 [ %i.gu, %bb.ab ], [ %i.gf, %bb.aa ]
  %storemerge.i.i6.i = phi i8 [ 32, %bb.ab ], [ %i.gg, %bb.aa ]
  store i128 %.sink13.i, ptr %1, align 16, !alias.scope !16663, !noalias !16636
  br label %.sink.split.i

bb.ac:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i
  %i.gv = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.gw = load i32, ptr %i.gv, align 8, !alias.scope !16636, !noalias !16639, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16668)
  %i.gx = icmp ugt i8 %storemerge.i.i.i11, 96
  br i1 %i.gx, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gy = zext i32 %i.gw to i128
  %i.gz = zext nneg i8 %storemerge.i.i.i11 to i128
  %i.ha = shl nuw i128 %i.gy, %i.gz
  %i.hb = or i128 %i.ha, %i.fc
  %i.hc = add nuw i8 %storemerge.i.i.i11, 32
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u32.exit5.i

bb.ae:                                            ; preds = %bb.ac
  %i.hd = trunc i128 %i.fc to i64
  %i.he = lshr i128 %i.fc, 64
  %i.hf = load i64, ptr %i.b, align 8, !alias.scope !16671, !noalias !16636, !noundef !3
  %i.hg = xor i64 %i.hf, %i.hd
  %i.hh = load ptr, ptr %i.c, align 16, !alias.scope !16671, !noalias !16636, !nonnull !3, !align !65, !noundef !3
  %i.hi = load i64, ptr %i.hh, align 8, !noalias !16672, !noundef !3
  %i.hj = zext i64 %i.hg to i128
  %i.hk = zext i64 %i.hi to i128
  %i.hl = xor i128 %i.he, %i.hk
  %i.hm = mul nuw i128 %i.hl, %i.hj               ; 2 uses
  %i.hn = lshr i128 %i.hm, 64
  %i.ho = xor i128 %i.hn, %i.hm
  %i.hp = trunc i128 %i.ho to i64
  store i64 %i.hp, ptr %i.b, align 8, !alias.scope !16671, !noalias !16636
  %i.hq = zext i32 %i.gw to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u32.exit5.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u32.exit5.i: ; preds = %bb.ae, %bb.ad
  %.sink14.i = phi i128 [ %i.hq, %bb.ae ], [ %i.hb, %bb.ad ]
  %storemerge.i.i4.i = phi i8 [ 32, %bb.ae ], [ %i.hc, %bb.ad ]
  store i128 %.sink14.i, ptr %1, align 16, !alias.scope !16671, !noalias !16636
  br label %.sink.split.i

bb.af:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i
end_hunk_0
