Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche_server.quiche_server.73e48873ebe39462-cgu.10?download=true
begin_hunk_0_@_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtCsG258MDvU3F_3std2fs4FileEENtNtB8_3fmt5Write9write_strCs9WTr9tUZcLm_13quiche_server:bb.a
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9WTr9tUZcLm_13quiche_server.exit.i unwind label %bb.g, !dbg !7006

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9WTr9tUZcLm_13quiche_server.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7007
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs9WTr9tUZcLm_13quiche_server.exit, !dbg !6957

bb.f:                                             ; preds = %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs9WTr9tUZcLm_13quiche_server.exit.thread, %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs9WTr9tUZcLm_13quiche_server.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs9WTr9tUZcLm_13quiche_server.exit
  %.not11 = phi i1 [ false, %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs9WTr9tUZcLm_13quiche_server.exit.thread ], [ false, %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs9WTr9tUZcLm_13quiche_server.exit ], [ true, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs9WTr9tUZcLm_13quiche_server.exit ]
  ret i1 %.not11, !dbg !7008

bb.g:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  store ptr %i.m, ptr %i.n, align 8, !dbg !6954
  resume { ptr, i32 } %i.w, !dbg !7009

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs9WTr9tUZcLm_13quiche_server.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9WTr9tUZcLm_13quiche_server.exit.i, %bb.b
  store ptr %i.m, ptr %i.n, align 8, !dbg !6954
  br label %bb.f, !dbg !7010
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtCsG258MDvU3F_3std2fs4FileENtNtB8_3fmt5Write9write_strCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !7011 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !7015, !DIExpression(), !7019)
    #dbg_value(ptr %1, !7016, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7019)
    #dbg_value(i64 %2, !7016, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7019)
  %i.b = load ptr, ptr %0, align 8, !dbg !7020, !nonnull !56, !align !7021, !noundef !56
  %i.c = tail call noundef ptr @_RNvYNtNtCsG258MDvU3F_3std2fs4FileNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !7022 ; 3 uses
  %.not = icmp ne ptr %i.c, null, !dbg !7020      ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f, !dbg !7023

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.c, !7017, !DIExpression(), !7024)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7025 ; 3 uses
  %.val = load ptr, ptr %i.d, align 8, !dbg !7025, !noundef !56 ; 4 uses
    #dbg_value(ptr poison, !4841, !DIExpression(), !7026)
  %i.e = icmp eq ptr %.val, null, !dbg !7028
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs9WTr9tUZcLm_13quiche_server.exit, label %bb.c, !dbg !7028

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr poison, !4852, !DIExpression(), !7029)
    #dbg_value(ptr poison, !4862, !DIExpression(), !7031)
    #dbg_value(ptr poison, !4872, !DIExpression(), !7033)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7035
    #dbg_value(ptr %.val, !4880, !DIExpression(), !7036)
    #dbg_declare(ptr poison, !4887, !DIExpression(), !7038)
    #dbg_value(i64 1, !4904, !DIExpression(), !7039)
    #dbg_value(i64 1, !4913, !DIExpression(), !7041)
    #dbg_value(i64 -1, !4922, !DIExpression(), !7043)
    #dbg_value(ptr %.val, !4931, !DIExpression(), !7045)
    #dbg_value(ptr %.val, !4910, !DIExpression(), !7039)
  %i.f = ptrtoint ptr %.val to i64, !dbg !7047    ; 2 uses
    #dbg_value(i64 %i.f, !4888, !DIExpression(), !7048)
  %i.g = and i64 %i.f, 3, !dbg !7049
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9WTr9tUZcLm_13quiche_server.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9WTr9tUZcLm_13quiche_server.exit.i
    i64 1, label %bb.e
  ], !dbg !7050, !prof !4942

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
    #dbg_value(i64 %i.f, !4892, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !7051)
    #dbg_value(i64 %i.f, !4944, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !7052)
  %i.h = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr), !dbg !7054
    #dbg_value(i8 poison, !5100, !DIExpression(), !7055)
    #dbg_value(ptr poison, !5113, !DIExpression(), !7057)
  %i.i = and i64 %i.f, 1095216660480, !dbg !7058
  %i.j = icmp ne i64 %i.i, 1095216660480, !dbg !7058
  tail call void @llvm.assume(i1 %i.h), !dbg !7059
  tail call void @llvm.assume(i1 %i.j), !dbg !7059
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9WTr9tUZcLm_13quiche_server.exit.i, !dbg !7060

bb.e:                                             ; preds = %bb.c
    #dbg_value(ptr %.val, !4919, !DIExpression(), !7041)
    #dbg_value(ptr %.val, !4928, !DIExpression(), !7043)
  %i.k = getelementptr i8, ptr %.val, i64 -1, !dbg !7061 ; 2 uses
    #dbg_value(ptr %i.k, !4896, !DIExpression(), !7062)
    #dbg_declare(ptr poison, !5124, !DIExpression(), !7063)
    #dbg_value(ptr %i.k, !5129, !DIExpression(), !7065)
    #dbg_value(ptr %i.k, !5133, !DIExpression(), !7066)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ], !dbg !7068
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !7069 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !dbg !7069, !alias.scope !7070
  store i8 3, ptr %i.a, align 8, !dbg !7048, !alias.scope !7070
    #dbg_value(ptr %i.a, !5146, !DIExpression(), !7073)
    #dbg_value(ptr %i.l, !5154, !DIExpression(), !7075)
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9WTr9tUZcLm_13quiche_server.exit.i unwind label %bb.g, !dbg !7077

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9WTr9tUZcLm_13quiche_server.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7078
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs9WTr9tUZcLm_13quiche_server.exit, !dbg !7028

bb.f:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs9WTr9tUZcLm_13quiche_server.exit
  ret i1 %.not, !dbg !7079

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  store ptr %i.c, ptr %i.d, align 8, !dbg !7025
  resume { ptr, i32 } %i.m, !dbg !7080

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs9WTr9tUZcLm_13quiche_server.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9WTr9tUZcLm_13quiche_server.exit.i, %bb.b
  store ptr %i.c, ptr %i.d, align 8, !dbg !7025
  br label %bb.f, !dbg !7081
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRNtNtCs3f36owOmepS_6quiche3cid17ConnectionIdEntryjjNCINvNvXs1_NtBV_6filterINtB2t_6FilterppENtNtNtBX_6traits8iterator8Iterator5count8to_usizeB1t_NCNvMs0_B1w_NtB1w_21ConnectionIdentifiers15available_scids0E0NCINvXsK_NtB30_5accumjNtB4V_3Sum3sumINtBT_3MapINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterB1u_EB2i_EE0E0INtB7_5FnMutTjB1t_EE8call_mutCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(80) %2) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !7082 {
bb.a:
    #dbg_value(i64 %1, !7131, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7139)
    #dbg_value(ptr %2, !7131, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7139)
    #dbg_value(ptr %0, !7130, !DIExpression(), !7139)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !7140
  %.val = load i64, ptr %i.a, align 16, !dbg !7140, !range !6136, !alias.scope !7141, !noundef !56
    #dbg_value(i64 %1, !7144, !DIExpression(), !7158)
    #dbg_value(ptr poison, !7149, !DIExpression(), !7158)
    #dbg_value(ptr poison, !7160, !DIExpression(), !7170)
    #dbg_value(ptr poison, !7160, !DIExpression(), !7170)
    #dbg_value(ptr undef, !7160, !DIExpression(DW_OP_deref), !7170)
  %i.b = xor i64 %.val, 1, !dbg !7172
    #dbg_value(ptr poison, !7173, !DIExpression(), !7210)
    #dbg_value(i64 %1, !7180, !DIExpression(), !7210)
    #dbg_value(i64 %i.b, !7181, !DIExpression(), !7210)
  %i.c = add i64 %i.b, %1, !dbg !7212
  ret i64 %i.c, !dbg !7213
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8find_map5checkRNtNtCs3f36owOmepS_6quiche3cid17ConnectionIdEntryTyINtNtBb_6option6OptionjEENCNvMs0_B1S_NtB1S_21ConnectionIdentifiers13find_scid_seq0E0INtB7_5FnMutTuB1P_EE8call_mutCs9WTr9tUZcLm_13quiche_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((8, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(80) %2) unnamed_addr #11 !dbg !7214 {
bb.a:
  %.sroa.4.i = alloca i64, align 8                ; 6 uses
  %.sroa.8.i = alloca i64, align 8                ; 4 uses
    #dbg_value(ptr %2, !7249, !DIExpression(), !7257)
    #dbg_value(ptr %1, !7248, !DIExpression(), !7257)
  %i.a = load ptr, ptr %1, align 8, !dbg !7258, !nonnull !56, !align !6748, !noundef !56
  %.val = load ptr, ptr %i.a, align 8, !dbg !7259, !nonnull !56, !align !6748, !noundef !56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7260), !dbg !7259
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7263), !dbg !7259
    #dbg_value(ptr poison, !7265, !DIExpression(DW_OP_deref), !7276)
    #dbg_declare(ptr poison, !7273, !DIExpression(), !7278)
    #dbg_value(ptr %2, !7270, !DIExpression(), !7276)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !7279
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i), !dbg !7279
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7280), !dbg !7279
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7283), !dbg !7279
    #dbg_value(ptr poison, !7285, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !7306)
    #dbg_value(ptr %2, !7305, !DIExpression(), !7306)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 56, !dbg !7308
  %.val.i.i = load ptr, ptr %i.b, align 8, !dbg !7308, !alias.scope !7309, !noalias !7310, !nonnull !56, !noundef !56
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64, !dbg !7308
  %.val3.i.i = load i64, ptr %i.c, align 16, !dbg !7308, !alias.scope !7309, !noalias !7310, !noundef !56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7311), !dbg !7308
    #dbg_value(ptr poison, !6799, !DIExpression(), !7314)
    #dbg_value(ptr poison, !6816, !DIExpression(), !7317)
    #dbg_value(ptr poison, !6821, !DIExpression(), !7318)
    #dbg_value(ptr %.val, !6817, !DIExpression(), !7317)
    #dbg_value(ptr %.val, !6821, !DIExpression(), !7320)
    #dbg_value(ptr %.val.i.i, !6839, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7322)
    #dbg_value(i64 %.val3.i.i, !6839, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7322)
    #dbg_value(ptr undef, !6805, !DIExpression(), !7324)
  %.sroa.46.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !7320
  %.sroa.46.0.i.i.i = load i64, ptr %.sroa.46.0.in.i.i.i, align 8, !dbg !7320, !alias.scope !7311, !noalias !7325, !noundef !56
    #dbg_value(ptr poison, !6847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7322)
    #dbg_value(i64 %.sroa.46.0.i.i.i, !6847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7322)
    #dbg_value(ptr undef, !6799, !DIExpression(), !7314)
    #dbg_value(i64 %.val3.i.i, !6848, !DIExpression(), !7326)
    #dbg_value(i64 %.val3.i.i, !6855, !DIExpression(), !7327)
    #dbg_value(i64 %.val3.i.i, !6863, !DIExpression(), !7329)
  %i.d = icmp eq i64 %.val3.i.i, %.sroa.46.0.i.i.i, !dbg !7330
  br i1 %i.d, label %_RNvXs8_NtCs3f36owOmepS_6quiche6packetNtB5_12ConnectionIdNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i, label %_RNCNvMs0_NtCs3f36owOmepS_6quiche3cidNtB7_21ConnectionIdentifiers13find_scid_seq0Cs9WTr9tUZcLm_13quiche_server.exit.i, !dbg !7330

_RNvXs8_NtCs3f36owOmepS_6quiche6packetNtB5_12ConnectionIdNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.a
  %.sroa.04.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !7320
  %.sroa.04.0.i.i.i = load ptr, ptr %.sroa.04.0.in.i.i.i, align 8, !dbg !7320, !alias.scope !7311, !noalias !7325, !nonnull !56, !noundef !56
    #dbg_value(ptr %.sroa.04.0.i.i.i, !6847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7322)
    #dbg_value(ptr %.val.i.i, !6861, !DIExpression(), !7327)
    #dbg_value(ptr %.sroa.04.0.i.i.i, !6862, !DIExpression(), !7327)
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i, ptr nonnull %.sroa.04.0.i.i.i, i64 %.val3.i.i), !dbg !7331, !noalias !7332
  %i.e = icmp eq i32 %bcmp.i.i.i, 0, !dbg !7331
  br i1 %i.e, label %bb.b, label %_RNCNvMs0_NtCs3f36owOmepS_6quiche3cidNtB7_21ConnectionIdentifiers13find_scid_seq0Cs9WTr9tUZcLm_13quiche_server.exit.i, !dbg !7308

bb.b:                                             ; preds = %_RNvXs8_NtCs3f36owOmepS_6quiche6packetNtB5_12ConnectionIdNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 72, !dbg !7333
  %i.g = load i64, ptr %i.f, align 8, !dbg !7333, !alias.scope !7309, !noalias !7310, !noundef !56
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !7334
  %i.i = load i64, ptr %i.h, align 16, !dbg !7334, !range !6136, !alias.scope !7309, !noalias !7310, !noundef !56
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40, !dbg !7334
  %i.k = load i64, ptr %i.j, align 8, !dbg !7334, !alias.scope !7309, !noalias !7310
  store i64 %i.i, ptr %.sroa.4.i, align 8, !dbg !7335, !alias.scope !7280, !noalias !7336
  br label %_RNCNvMs0_NtCs3f36owOmepS_6quiche3cidNtB7_21ConnectionIdentifiers13find_scid_seq0Cs9WTr9tUZcLm_13quiche_server.exit.i, !dbg !7337

_RNCNvMs0_NtCs3f36owOmepS_6quiche3cidNtB7_21ConnectionIdentifiers13find_scid_seq0Cs9WTr9tUZcLm_13quiche_server.exit.i: ; preds = %bb.b, %_RNvXs8_NtCs3f36owOmepS_6quiche6packetNtB5_12ConnectionIdNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i, %bb.a
  %.sroa.0.0.i = phi i64 [ %i.g, %bb.b ], [ undef, %_RNvXs8_NtCs3f36owOmepS_6quiche6packetNtB5_12ConnectionIdNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i ], [ undef, %bb.a ]
  %.sink2.i.sroa.phi.i = phi ptr [ %.sroa.8.i, %bb.b ], [ %.sroa.4.i, %_RNvXs8_NtCs3f36owOmepS_6quiche6packetNtB5_12ConnectionIdNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i ], [ %.sroa.4.i, %bb.a ]
  %.sink.i.i = phi i64 [ %i.k, %bb.b ], [ 2, %_RNvXs8_NtCs3f36owOmepS_6quiche6packetNtB5_12ConnectionIdNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i ], [ 2, %bb.a ]
  store i64 %.sink.i.i, ptr %.sink2.i.sroa.phi.i, align 8, !dbg !7306, !alias.scope !7280, !noalias !7336
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load i64, ptr %.sroa.4.i, align 8, !dbg !7279, !range !7338, !noalias !7339, !noundef !56 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i, 2, !dbg !7279
  br i1 %.not.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtCs3f36owOmepS_6quiche3cid17ConnectionIdEntryTyINtNtBe_6option6OptionjEENCNvMs0_B1j_NtB1j_21ConnectionIdentifiers13find_scid_seq0E0Cs9WTr9tUZcLm_13quiche_server.exit, label %bb.c, !dbg !7340

bb.c:                                             ; preds = %_RNCNvMs0_NtCs3f36owOmepS_6quiche3cidNtB7_21ConnectionIdentifiers13find_scid_seq0Cs9WTr9tUZcLm_13quiche_server.exit.i
    #dbg_value(i64 %.sroa.0.0.i, !7271, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7341)
    #dbg_value(i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i, !7271, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7341)
  %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.0.copyload.i = load i64, ptr %.sroa.8.i, align 8, !dbg !7342, !noalias !7339
    #dbg_value(i64 %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.0.copyload.i, !7271, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7341)
  store i64 %.sroa.0.0.i, ptr %0, align 8, !dbg !7343, !alias.scope !7260, !noalias !7263
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7343
  store i64 %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !7343, !alias.scope !7260, !noalias !7263
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtCs3f36owOmepS_6quiche3cid17ConnectionIdEntryTyINtNtBe_6option6OptionjEENCNvMs0_B1j_NtB1j_21ConnectionIdentifiers13find_scid_seq0E0Cs9WTr9tUZcLm_13quiche_server.exit, !dbg !7344

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtCs3f36owOmepS_6quiche3cid17ConnectionIdEntryTyINtNtBe_6option6OptionjEENCNvMs0_B1j_NtB1j_21ConnectionIdentifiers13find_scid_seq0E0Cs9WTr9tUZcLm_13quiche_server.exit: ; preds = %_RNCNvMs0_NtCs3f36owOmepS_6quiche3cidNtB7_21ConnectionIdentifiers13find_scid_seq0Cs9WTr9tUZcLm_13quiche_server.exit.i, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7276
  store i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i, ptr %i.l, align 8, !dbg !7276, !alias.scope !7260, !noalias !7263
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !7344
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i), !dbg !7344
  ret void, !dbg !7345
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8find_map5checkRNtNtCs3f36owOmepS_6quiche3cid17ConnectionIdEntryyQNCNvMs0_B1S_NtB1S_21ConnectionIdentifiers25lowest_available_dcid_seq0E0INtB7_5FnMutTuB1P_EE8call_mutCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #2 !dbg !7346 {
bb.a:
    #dbg_value(ptr %1, !7374, !DIExpression(), !7377)
    #dbg_value(ptr %0, !7373, !DIExpression(), !7377)
  %i.a = load ptr, ptr %0, align 8, !dbg !7378, !nonnull !56, !align !6748, !noundef !56
    #dbg_value(ptr %i.a, !7379, !DIExpression(DW_OP_deref), !7390)
    #dbg_declare(ptr poison, !7387, !DIExpression(), !7392)
    #dbg_value(ptr %1, !7384, !DIExpression(), !7390)
  %i.b = tail call { i64, i64 } @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMs0_NtCs3f36owOmepS_6quiche3cidNtBW_21ConnectionIdentifiers25lowest_available_dcid_seq0INtB7_5FnMutTRNtBW_17ConnectionIdEntryEE8call_mutCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(80) %1), !dbg !7393 ; 3 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0, !dbg !7393
  %i.d = trunc nuw i64 %i.c to i1, !dbg !7394
  %i.e = extractvalue { i64, i64 } %i.b, 1, !dbg !7394
  %.sroa.3.0.i = select i1 %i.d, i64 %i.e, i64 undef, !dbg !7394
  %i.f = insertvalue { i64, i64 } %i.b, i64 %.sroa.3.0.i, 1, !dbg !7395
  ret { i64, i64 } %i.f, !dbg !7396
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i64, i64 } @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8position5checkRyNCNvMs0_NtCs3f36owOmepS_6quiche3cidNtB1Z_21ConnectionIdentifiers27mark_advertise_new_scid_seq0E0INtB7_5FnMutTuB1P_EE8call_mutCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 !dbg !7397 {
bb.a:
    #dbg_value(ptr %1, !7429, !DIExpression(), !7437)
    #dbg_value(ptr %0, !7428, !DIExpression(), !7437)
  %i.a = load ptr, ptr %0, align 8, !dbg !7438, !nonnull !56, !align !6748, !noundef !56 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !dbg !7439, !nonnull !56, !align !6748, !noundef !56
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !7439
  %.val2 = load ptr, ptr %i.b, align 8, !dbg !7439, !nonnull !56, !noundef !56 ; 2 uses
  %.val3 = load i64, ptr %1, align 8, !dbg !7439, !noundef !56
    #dbg_value(ptr poison, !7440, !DIExpression(DW_OP_deref), !7451)
    #dbg_value(ptr poison, !7446, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !7451)
    #dbg_declare(ptr poison, !7447, !DIExpression(), !7453)
    #dbg_value(ptr poison, !7445, !DIExpression(), !7451)
    #dbg_value(ptr poison, !7454, !DIExpression(DW_OP_deref, DW_OP_deref), !7461)
    #dbg_value(ptr poison, !7460, !DIExpression(), !7461)
  %i.c = load i64, ptr %.val, align 8, !dbg !7463, !noundef !56
  %i.d = icmp eq i64 %.val3, %i.c, !dbg !7464
  %i.e = load i64, ptr %.val2, align 8, !dbg !7451, !noundef !56 ; 2 uses
  br i1 %i.d, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8position5checkRyNCNvMs0_NtCs3f36owOmepS_6quiche3cidNtB1q_21ConnectionIdentifiers27mark_advertise_new_scid_seq0E0Cs9WTr9tUZcLm_13quiche_server.exit, label %bb.b, !dbg !7465

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %i.e, 1, !dbg !7466
  store i64 %i.f, ptr %.val2, align 8, !dbg !7466
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8position5checkRyNCNvMs0_NtCs3f36owOmepS_6quiche3cidNtB1q_21ConnectionIdentifiers27mark_advertise_new_scid_seq0E0Cs9WTr9tUZcLm_13quiche_server.exit, !dbg !7467

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8position5checkRyNCNvMs0_NtCs3f36owOmepS_6quiche3cidNtB1q_21ConnectionIdentifiers27mark_advertise_new_scid_seq0E0Cs9WTr9tUZcLm_13quiche_server.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i64 [ 0, %bb.b ], [ 1, %bb.a ], !dbg !7451
  %i.g = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0, !dbg !7468
  %i.h = insertvalue { i64, i64 } %i.g, i64 %i.e, 1, !dbg !7468
  ret { i64, i64 } %i.h, !dbg !7469
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionNtNtCs3f36owOmepS_6quiche16transport_params26UnknownTransportParametersENtB6_5Debug3fmtCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !dbg !7470 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !7491, !DIExpression(), !7495)
    #dbg_value(ptr %1, !7492, !DIExpression(), !7495)
  %i.b = load ptr, ptr %0, align 8, !dbg !7496, !nonnull !56, !align !6748, !noundef !56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7497), !dbg !7500
    #dbg_value(ptr %i.b, !7501, !DIExpression(), !7510)
    #dbg_value(ptr %1, !7507, !DIExpression(), !7510)
  %i.c = load i64, ptr %i.b, align 8, !dbg !7512, !range !7513, !alias.scope !7497, !noalias !7514, !noundef !56
  %.not.i = icmp eq i64 %i.c, -1, !dbg !7512
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !7512

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7516, !noalias !7517
    #dbg_value(ptr %i.b, !7508, !DIExpression(), !7518)
  store ptr %i.b, ptr %i.a, align 8, !dbg !7516, !noalias !7517
    #dbg_value(ptr %i.a, !7508, !DIExpression(DW_OP_deref), !7518)
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30), !dbg !7519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7520, !noalias !7517
  br label %_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCs3f36owOmepS_6quiche16transport_params26UnknownTransportParametersENtNtB7_3fmt5Debug3fmtCs9WTr9tUZcLm_13quiche_server.exit, !dbg !7520

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 4), !dbg !7512, !noalias !7497
  br label %_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCs3f36owOmepS_6quiche16transport_params26UnknownTransportParametersENtNtB7_3fmt5Debug3fmtCs9WTr9tUZcLm_13quiche_server.exit, !dbg !7512

_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCs3f36owOmepS_6quiche16transport_params26UnknownTransportParametersENtNtB7_3fmt5Debug3fmtCs9WTr9tUZcLm_13quiche_server.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in.i, !dbg !7521
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !dbg !7522 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !7527, !DIExpression(), !7531)
    #dbg_value(ptr %1, !7528, !DIExpression(), !7531)
  %i.b = load ptr, ptr %0, align 8, !dbg !7532, !nonnull !56, !noundef !56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7533), !dbg !7536
    #dbg_value(ptr %i.b, !7537, !DIExpression(), !7545)
    #dbg_value(ptr %1, !7542, !DIExpression(), !7545)
  %i.c = load i8, ptr %i.b, align 1, !dbg !7547, !range !734, !alias.scope !7533, !noalias !7548, !noundef !56
  %i.d = trunc nuw i8 %i.c to i1, !dbg !7547
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !7547

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1, !dbg !7547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7550, !noalias !7551
    #dbg_value(ptr %i.e, !7543, !DIExpression(), !7552)
  store ptr %i.e, ptr %i.a, align 8, !dbg !7550, !noalias !7551
    #dbg_value(ptr %i.a, !7543, !DIExpression(DW_OP_deref), !7552)
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @32), !dbg !7553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7554, !noalias !7551
  br label %_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCs9WTr9tUZcLm_13quiche_server.exit, !dbg !7554

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 4), !dbg !7547, !noalias !7533
  br label %_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCs9WTr9tUZcLm_13quiche_server.exit, !dbg !7547

_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCs9WTr9tUZcLm_13quiche_server.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in.i, !dbg !7555
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCs3f36owOmepS_6quiche16transport_params25UnknownTransportParameterINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtB6_5Debug3fmtCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !dbg !7556 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !7562, !DIExpression(), !7564)
    #dbg_value(ptr %1, !7563, !DIExpression(), !7564)
  %i.b = load ptr, ptr %0, align 8, !dbg !7565, !nonnull !56, !align !6748, !noundef !56 ; 2 uses
    #dbg_value(ptr %i.b, !7566, !DIExpression(), !7574)
    #dbg_value(ptr %1, !7573, !DIExpression(), !7574)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !7576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7577, !noalias !7578
  store ptr %i.b, ptr %i.a, align 8, !dbg !7577, !noalias !7578
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 25, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 2, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21), !dbg !7582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7583, !noalias !7578
  ret i1 %i.d, !dbg !7584
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs3f36owOmepS_6quiche16transport_params26UnknownTransportParametersNtB6_5Debug3fmtCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !dbg !7585 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !7590, !DIExpression(), !7592)
    #dbg_value(ptr %1, !7591, !DIExpression(), !7592)
  %i.b = load ptr, ptr %0, align 8, !dbg !7593, !nonnull !56, !align !6748, !noundef !56 ; 2 uses
    #dbg_value(ptr %i.b, !7594, !DIExpression(), !7601)
    #dbg_value(ptr %1, !7600, !DIExpression(), !7601)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !7603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7604, !noalias !7605
  store ptr %i.b, ptr %i.a, align 8, !dbg !7604, !noalias !7605
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 26, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 8, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33), !dbg !7609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7610, !noalias !7605
  ret i1 %i.d, !dbg !7611
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdNtB6_5Debug3fmtCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 !dbg !7612 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
    #dbg_value(ptr %0, !7616, !DIExpression(), !7620)
    #dbg_value(ptr %1, !7617, !DIExpression(), !7620)
  %i.c = load ptr, ptr %0, align 8, !dbg !7621, !nonnull !56, !align !6748, !noundef !56 ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8, !dbg !7622
  %.val = load ptr, ptr %i.d, align 8, !dbg !7622, !nonnull !56, !noundef !56 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 16, !dbg !7622
  %.val2 = load i64, ptr %i.e, align 8, !dbg !7622, !noundef !56 ; 2 uses
  %.val3 = load ptr, ptr %1, align 8, !dbg !7622  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !7622
  %.val4 = load ptr, ptr %i.f, align 8, !dbg !7622 ; 2 uses
    #dbg_value(ptr poison, !7623, !DIExpression(), !7646)
    #dbg_value(ptr poison, !7655, !DIExpression(), !7685)
    #dbg_value(ptr poison, !7656, !DIExpression(), !7685)
    #dbg_value(ptr poison, !7686, !DIExpression(), !7695)
    #dbg_value(i64 1, !7698, !DIExpression(), !7702)
    #dbg_value(ptr %.val, !7704, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7717)
    #dbg_value(ptr %.val, !7723, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7730)
    #dbg_value(ptr %.val, !7728, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7731)
    #dbg_value(i64 %.val2, !7704, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7717)
    #dbg_value(i64 %.val2, !7723, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7730)
end_hunk_0
begin_hunk_1_@_RNvXs7_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9WTr9tUZcLm_13quiche_server:bb.a
    #dbg_value(ptr %0, !8389, !DIExpression(), !8392)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !8393
  %i.c = load i8, ptr %i.b, align 8, !dbg !8393, !range !734, !noundef !56
  %i.d = trunc nuw i8 %i.c to i1, !dbg !8393
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs9WTr9tUZcLm_13quiche_server.exit, label %bb.b, !dbg !8393

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef ptr @_RNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCsG258MDvU3F_3std2fs4FileE9flush_bufCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef align 8 dereferenceable(32) %0), !dbg !8394 ; 4 uses
    #dbg_value(ptr poison, !4841, !DIExpression(), !8395)
  %i.f = icmp eq ptr %i.e, null, !dbg !8397
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs9WTr9tUZcLm_13quiche_server.exit, label %bb.c, !dbg !8397

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr poison, !4852, !DIExpression(), !8398)
    #dbg_value(ptr poison, !4862, !DIExpression(), !8400)
    #dbg_value(ptr poison, !4872, !DIExpression(), !8402)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8404
    #dbg_value(ptr %i.e, !4880, !DIExpression(), !8405)
    #dbg_declare(ptr poison, !4887, !DIExpression(), !8407)
    #dbg_value(i64 1, !4904, !DIExpression(), !8408)
    #dbg_value(i64 1, !4913, !DIExpression(), !8410)
    #dbg_value(i64 -1, !4922, !DIExpression(), !8412)
    #dbg_value(ptr %i.e, !4931, !DIExpression(), !8414)
    #dbg_value(ptr %i.e, !4910, !DIExpression(), !8408)
  %i.g = ptrtoint ptr %i.e to i64, !dbg !8416     ; 2 uses
    #dbg_value(i64 %i.g, !4888, !DIExpression(), !8417)
  %i.h = and i64 %i.g, 3, !dbg !8418
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9WTr9tUZcLm_13quiche_server.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9WTr9tUZcLm_13quiche_server.exit.i
    i64 1, label %bb.e
  ], !dbg !8419, !prof !4942

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
    #dbg_value(i64 %i.g, !4892, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !8420)
    #dbg_value(i64 %i.g, !4944, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !8421)
  %i.i = icmp ult ptr %i.e, inttoptr (i64 188978561024 to ptr), !dbg !8423
    #dbg_value(i8 poison, !5100, !DIExpression(), !8424)
    #dbg_value(ptr poison, !5113, !DIExpression(), !8426)
  %i.j = and i64 %i.g, 1095216660480, !dbg !8427
  %i.k = icmp ne i64 %i.j, 1095216660480, !dbg !8427
  tail call void @llvm.assume(i1 %i.i), !dbg !8428
  tail call void @llvm.assume(i1 %i.k), !dbg !8428
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9WTr9tUZcLm_13quiche_server.exit.i, !dbg !8429

bb.e:                                             ; preds = %bb.c
    #dbg_value(ptr %i.e, !4919, !DIExpression(), !8410)
    #dbg_value(ptr %i.e, !4928, !DIExpression(), !8412)
  %i.l = getelementptr i8, ptr %i.e, i64 -1, !dbg !8430 ; 2 uses
    #dbg_value(ptr %i.l, !4896, !DIExpression(), !8431)
    #dbg_declare(ptr poison, !5124, !DIExpression(), !8432)
    #dbg_value(ptr %i.l, !5129, !DIExpression(), !8434)
    #dbg_value(ptr %i.l, !5133, !DIExpression(), !8435)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ], !dbg !8437
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !8438 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !dbg !8438, !alias.scope !8439
  store i8 3, ptr %i.a, align 8, !dbg !8417, !alias.scope !8439
    #dbg_value(ptr %i.a, !5146, !DIExpression(), !8442)
    #dbg_value(ptr %i.m, !5154, !DIExpression(), !8444)
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m), !dbg !8446
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9WTr9tUZcLm_13quiche_server.exit.i, !dbg !8447

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9WTr9tUZcLm_13quiche_server.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8448
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs9WTr9tUZcLm_13quiche_server.exit, !dbg !8397

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs9WTr9tUZcLm_13quiche_server.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9WTr9tUZcLm_13quiche_server.exit.i, %bb.b, %bb.a
  ret void, !dbg !8449
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #13 !dbg !8450 {
bb.a:
    #dbg_value(ptr %0, !8457, !DIExpression(), !8459)
    #dbg_value(ptr %1, !8458, !DIExpression(), !8459)
    #dbg_value(ptr %1, !8460, !DIExpression(), !8467)
    #dbg_value(ptr %1, !8469, !DIExpression(), !8473)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !8475
  %i.b = load i32, ptr %i.a, align 8, !dbg !8475, !noundef !56 ; 2 uses
  %i.c = and i32 %i.b, 33554432, !dbg !8475
  %.not = icmp eq i32 %i.c, 0, !dbg !8475
  br i1 %.not, label %bb.b, label %bb.c, !dbg !8476

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864, !dbg !8477
  %.not3 = icmp eq i32 %i.d, 0, !dbg !8477
  br i1 %.not3, label %bb.d, label %bb.e, !dbg !8478

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !8479
  br label %bb.f, !dbg !8479

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !8480
  br label %bb.f, !dbg !8480

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsE_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !8481
  br label %bb.f, !dbg !8481

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in, !dbg !8482
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #13 !dbg !8483 {
bb.a:
    #dbg_value(ptr %0, !8488, !DIExpression(), !8490)
    #dbg_value(ptr %1, !8489, !DIExpression(), !8490)
    #dbg_value(ptr %1, !8491, !DIExpression(), !8494)
    #dbg_value(ptr %1, !8496, !DIExpression(), !8499)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !8501
  %i.b = load i32, ptr %i.a, align 8, !dbg !8501, !noundef !56 ; 2 uses
  %i.c = and i32 %i.b, 33554432, !dbg !8501
  %.not = icmp eq i32 %i.c, 0, !dbg !8501
  br i1 %.not, label %bb.b, label %bb.c, !dbg !8502

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864, !dbg !8503
  %.not3 = icmp eq i32 %i.d, 0, !dbg !8503
  br i1 %.not3, label %bb.d, label %bb.e, !dbg !8504

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !8505
  br label %bb.f, !dbg !8505

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !8506
  br label %bb.f, !dbg !8506

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !8507
  br label %bb.f, !dbg !8507

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in, !dbg !8508
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree17dedup_sorted_iterINtB4_15DedupSortedIteryyINtNtNtCskKLDkoKarTP_4core5array4iter8IntoIterTyyEKj4_EENtNtNtNtB1C_4iter6traits8iterator8Iterator4nextCs9WTr9tUZcLm_13quiche_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %1) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !8509 {
bb.a:
    #dbg_value(ptr %1, !8586, !DIExpression(), !8596)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.promoted = load i64, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.promoted29 = load i64, ptr %i.a, align 8      ; 5 uses
    #dbg_value(ptr %1, !8597, !DIExpression(), !8607)
  switch i64 %.promoted, label %.preheader [
    i64 2, label %bb.b
    i64 0, label %_RNvXs3_NtNtCskKLDkoKarTP_4core5array4iterINtB5_8IntoIterTyyEKj4_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9WTr9tUZcLm_13quiche_server.exit.thread19
  ], !dbg !8609

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.a, !8610, !DIExpression(), !8618)
    #dbg_value(ptr %i.a, !8620, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8639)
    #dbg_value(i64 4, !8620, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8639)
    #dbg_value(i64 1, !8641, !DIExpression(), !8645)
    #dbg_value(ptr %i.a, !8663, !DIExpression(), !8665)
    #dbg_value(ptr %i.a, !8655, !DIExpression(), !8666)
  %.not.i.i = icmp eq i64 %i.c, %.promoted29, !dbg !8667
  br i1 %.not.i.i, label %_RNvXs3_NtNtCskKLDkoKarTP_4core5array4iterINtB5_8IntoIterTyyEKj4_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9WTr9tUZcLm_13quiche_server.exit.thread19, label %_RNvXs3_NtNtCskKLDkoKarTP_4core5array4iterINtB5_8IntoIterTyyEKj4_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9WTr9tUZcLm_13quiche_server.exit.thread, !dbg !8667

_RNvXs3_NtNtCskKLDkoKarTP_4core5array4iterINtB5_8IntoIterTyyEKj4_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9WTr9tUZcLm_13quiche_server.exit.thread: ; preds = %bb.b
    #dbg_value(i64 %.promoted29, !8656, !DIExpression(), !8668)
    #dbg_value(i64 %.promoted29, !8644, !DIExpression(), !8645)
  %i.e = add nuw nsw i64 %.promoted29, 1, !dbg !8669 ; 2 uses
  store i64 %i.e, ptr %i.a, align 8, !dbg !8670, !alias.scope !8671, !noalias !8676
    #dbg_value(i64 %.promoted29, !8679, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8701)
    #dbg_value(i64 1, !8679, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8701)
    #dbg_value(ptr %i.d, !8698, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8701)
    #dbg_value(i64 4, !8698, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8701)
    #dbg_value(i64 %.promoted29, !8699, !DIExpression(), !8703)
    #dbg_value(i64 %.promoted29, !8704, !DIExpression(), !8710)
    #dbg_value(i64 %.promoted29, !8712, !DIExpression(), !8722)
    #dbg_value(i64 %.promoted29, !8724, !DIExpression(), !8739)
    #dbg_value(ptr %i.d, !8718, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8722)
    #dbg_value(ptr %i.d, !8737, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8739)
    #dbg_value(i64 4, !8718, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8722)
    #dbg_value(i64 4, !8737, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8739)
  %i.f = icmp ult i64 %.promoted29, 4, !dbg !8741
  tail call void @llvm.assume(i1 %i.f), !dbg !8742
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.promoted29, !dbg !8743 ; 2 uses
    #dbg_value(ptr %i.g, !8744, !DIExpression(), !8751)
    #dbg_value(ptr %i.g, !8753, !DIExpression(), !8759)
    #dbg_value(ptr %i.g, !8761, !DIExpression(), !8764)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !8766
  br label %.preheader, !dbg !8767

.preheader:                                       ; preds = %_RNvXs3_NtNtCskKLDkoKarTP_4core5array4iterINtB5_8IntoIterTyyEKj4_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9WTr9tUZcLm_13quiche_server.exit.thread, %bb.a
  %.ph = phi i64 [ %.promoted29, %bb.a ], [ %i.e, %_RNvXs3_NtNtCskKLDkoKarTP_4core5array4iterINtB5_8IntoIterTyyEKj4_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9WTr9tUZcLm_13quiche_server.exit.thread ] ; 2 uses
  %.sroa.9.118.ph.in = phi ptr [ %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, %bb.a ], [ %i.h, %_RNvXs3_NtNtCskKLDkoKarTP_4core5array4iterINtB5_8IntoIterTyyEKj4_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9WTr9tUZcLm_13quiche_server.exit.thread ]
  %.sroa.6.117.ph.in = phi ptr [ %.sroa.5.0..sroa_idx, %bb.a ], [ %i.g, %_RNvXs3_NtNtCskKLDkoKarTP_4core5array4iterINtB5_8IntoIterTyyEKj4_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9WTr9tUZcLm_13quiche_server.exit.thread ]
  %.sroa.6.117.ph = load i64, ptr %.sroa.6.117.ph.in, align 8 ; 3 uses
  %.sroa.9.118.ph = load i64, ptr %.sroa.9.118.ph.in, align 8 ; 2 uses
    #dbg_value(i64 %.sroa.6.117.ph, !8587, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8768)
    #dbg_value(i64 %.sroa.9.118.ph, !8587, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8768)
    #dbg_value(ptr %1, !8769, !DIExpression(), !8790)
    #dbg_value(ptr %i.a, !8788, !DIExpression(), !8792)
  %.not.i.i.i.i.not39 = icmp eq i64 %i.c, %.ph, !dbg !8793
  br i1 %.not.i.i.i.i.not39, label %._crit_edge, label %.lr.ph, !dbg !8793

bb.c:                                             ; preds = %.lr.ph
    #dbg_value(i64 %.sroa.6.117.ph, !8587, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8768)
    #dbg_value(i64 %i.o, !8587, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8768)
    #dbg_value(ptr %1, !8769, !DIExpression(), !8790)
    #dbg_value(ptr %i.a, !8788, !DIExpression(), !8792)
    #dbg_value(ptr %1, !8817, !DIExpression(), !8820)
    #dbg_value(ptr %1, !8821, !DIExpression(), !8828)
    #dbg_value(ptr %1, !8830, !DIExpression(), !8837)
    #dbg_value(ptr %i.a, !8818, !DIExpression(), !8820)
    #dbg_value(ptr poison, !8806, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !8839)
    #dbg_value(ptr %i.a, !8610, !DIExpression(), !8840)
    #dbg_value(ptr %i.a, !8620, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8841)
    #dbg_value(i64 4, !8620, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8841)
    #dbg_value(i64 1, !8641, !DIExpression(), !8842)
    #dbg_value(ptr %i.a, !8663, !DIExpression(), !8845)
    #dbg_value(ptr %i.a, !8655, !DIExpression(), !8846)
  %.not.i.i.i.i.not = icmp eq i64 %i.c, %i.j, !dbg !8793
  br i1 %.not.i.i.i.i.not, label %._crit_edge.loopexit, label %.lr.ph, !dbg !8793

_RNvXs3_NtNtCskKLDkoKarTP_4core5array4iterINtB5_8IntoIterTyyEKj4_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9WTr9tUZcLm_13quiche_server.exit.thread19: ; preds = %bb.a, %bb.b
  store i64 2, ptr %1, align 8, !dbg !8596
  br label %bb.d, !dbg !8847

bb.d:                                             ; preds = %bb.e, %._crit_edge, %_RNvXs3_NtNtCskKLDkoKarTP_4core5array4iterINtB5_8IntoIterTyyEKj4_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9WTr9tUZcLm_13quiche_server.exit.thread19
  %.sink = phi i64 [ 1, %bb.e ], [ 1, %._crit_edge ], [ 0, %_RNvXs3_NtNtCskKLDkoKarTP_4core5array4iterINtB5_8IntoIterTyyEKj4_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9WTr9tUZcLm_13quiche_server.exit.thread19 ]
  store i64 %.sink, ptr %0, align 8, !dbg !8596
  ret void, !dbg !8849

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.sroa.9.11840 = phi i64 [ %i.o, %bb.c ], [ %.sroa.9.118.ph, %.preheader ]
  %i.i = phi i64 [ %i.j, %bb.c ], [ %.ph, %.preheader ] ; 3 uses
    #dbg_value(i64 %.sroa.9.11840, !8587, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8850), !dbg !8853
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8854), !dbg !8853
    #dbg_value(i64 %i.i, !8656, !DIExpression(), !8856)
    #dbg_value(i64 %i.i, !8644, !DIExpression(), !8842)
  %i.j = add nuw nsw i64 %i.i, 1, !dbg !8857      ; 4 uses
    #dbg_value(i64 %i.i, !8679, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8858)
    #dbg_value(i64 1, !8679, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8858)
    #dbg_value(ptr %i.d, !8698, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8858)
    #dbg_value(i64 4, !8698, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8858)
    #dbg_value(i64 %i.i, !8699, !DIExpression(), !8860)
    #dbg_value(i64 %i.i, !8704, !DIExpression(), !8861)
    #dbg_value(i64 %i.i, !8712, !DIExpression(), !8863)
    #dbg_value(i64 %i.i, !8724, !DIExpression(), !8865)
    #dbg_value(ptr %i.d, !8718, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8863)
    #dbg_value(ptr %i.d, !8737, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8865)
    #dbg_value(i64 4, !8718, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8863)
    #dbg_value(i64 4, !8737, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8865)
  %i.k = icmp ult i64 %i.i, 4, !dbg !8867
  tail call void @llvm.assume(i1 %i.k), !dbg !8868
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.i, !dbg !8869 ; 2 uses
    #dbg_value(ptr %i.l, !8744, !DIExpression(), !8870)
    #dbg_value(ptr %i.l, !8753, !DIExpression(), !8872)
    #dbg_value(ptr %i.l, !8761, !DIExpression(), !8874)
  %i.m = load i64, ptr %i.l, align 8, !dbg !8876, !alias.scope !8877, !noalias !8884, !noundef !56 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !8876
  %i.o = load i64, ptr %i.n, align 8, !dbg !8876, !alias.scope !8877, !noalias !8884, !noundef !56 ; 4 uses
    #dbg_value(i64 %i.o, !8827, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8828)
    #dbg_value(i64 %i.m, !8827, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8828)
    #dbg_value(i64 poison, !8827, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8828)
    #dbg_value(ptr %.sroa.5.0..sroa_idx, !8591, !DIExpression(), !8888)
    #dbg_value(ptr poison, !8889, !DIExpression(), !8896)
    #dbg_value(ptr poison, !8895, !DIExpression(), !8896)
  %.not = icmp eq i64 %.sroa.6.117.ph, %i.m, !dbg !8898
  br i1 %.not, label %bb.c, label %bb.e, !dbg !8899

._crit_edge.loopexit:                             ; preds = %bb.c
  store i64 %i.j, ptr %i.a, align 8, !dbg !8900, !alias.scope !8877, !noalias !8884
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !8901, !alias.scope !8850, !noalias !8854
  store i64 %i.o, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !dbg !8901, !alias.scope !8850, !noalias !8854
  br label %._crit_edge, !dbg !8596

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.sroa.9.118.lcssa = phi i64 [ %.sroa.9.118.ph, %.preheader ], [ %i.o, %._crit_edge.loopexit ]
    #dbg_value(i64 undef, !8827, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8828)
    #dbg_value(i64 undef, !8827, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8828)
    #dbg_value(i64 poison, !8827, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8828)
  store i64 0, ptr %1, align 8, !dbg !8596
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8902
  store i64 %.sroa.6.117.ph, ptr %i.p, align 8, !dbg !8902
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8902
  store i64 %.sroa.9.118.lcssa, ptr %i.q, align 8, !dbg !8902
  br label %bb.d, !dbg !8903

bb.e:                                             ; preds = %.lr.ph
  store i64 %i.j, ptr %i.a, align 8, !dbg !8900, !alias.scope !8877, !noalias !8884
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !8901, !alias.scope !8850, !noalias !8854
  store i64 %i.o, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !dbg !8901, !alias.scope !8850, !noalias !8854
  store i64 1, ptr %1, align 8, !dbg !8596
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8905
  store i64 %.sroa.6.117.ph, ptr %i.r, align 8, !dbg !8905
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8905
  store i64 %.sroa.9.11840, ptr %i.s, align 8, !dbg !8905
  br label %bb.d, !dbg !8906
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSINtNtCs3f36owOmepS_6quiche16transport_params25UnknownTransportParameterINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtB5_5Debug3fmtCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #2 !dbg !8908 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !8918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8920)
    #dbg_value(ptr %0, !8921, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8937)
    #dbg_value(ptr %0, !8939, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8949)
    #dbg_value(i64 %1, !8918, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8920)
    #dbg_value(i64 %1, !8921, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8937)
    #dbg_value(i64 %1, !8939, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8949)
    #dbg_value(ptr %2, !8919, !DIExpression(), !8920)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8951
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !8952
    #dbg_value(i64 %1, !8943, !DIExpression(), !8953)
    #dbg_value(i64 %1, !8954, !DIExpression(), !8961)
    #dbg_value(ptr %0, !8945, !DIExpression(), !8963)
    #dbg_value(ptr %0, !8960, !DIExpression(), !8961)
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1, !dbg !8964
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCs3f36owOmepS_6quiche16transport_params25UnknownTransportParameterINtNtCsexYYUdYSQU6_5alloc3vec3VechEEINtNtNtBa_5slice4iter4IterB14_EECs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b), !dbg !8965
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !8966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8967
  ret i1 %i.d, !dbg !8968
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write18write_all_vectoredCs9WTr9tUZcLm_13quiche_server(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !8969 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 10 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !8989, !DIExpression(), !9007)
    #dbg_value(ptr %1, !8979, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9009)
    #dbg_value(i64 %2, !8979, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9009)
    #dbg_value(ptr %0, !8978, !DIExpression(), !9009)
    #dbg_value(ptr poison, !9010, !DIExpression(), !9019)
    #dbg_value(i64 0, !8996, !DIExpression(), !9023)
    #dbg_value(i64 0, !8999, !DIExpression(), !9024)
    #dbg_value(i64 0, !9005, !DIExpression(), !9025)
    #dbg_value(i64 0, !9026, !DIExpression(), !9034)
    #dbg_value(i64 0, !9036, !DIExpression(), !9044)
    #dbg_value(i64 0, !9046, !DIExpression(), !9054)
    #dbg_value(ptr undef, !8989, !DIExpression(), !9023)
    #dbg_value(i64 1, !9056, !DIExpression(), !9060)
    #dbg_value(i64 0, !8997, !DIExpression(), !9062)
    #dbg_value(i64 0, !9063, !DIExpression(), !9075)
    #dbg_value(i64 0, !9077, !DIExpression(), !9086)
    #dbg_value(i64 0, !9088, !DIExpression(), !9099)
    #dbg_value(ptr %1, !9101, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9104)
    #dbg_value(ptr %1, !9106, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9115)
    #dbg_value(i64 %2, !9101, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9104)
    #dbg_value(i64 %2, !9106, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9115)
    #dbg_value(i64 %2, !9109, !DIExpression(), !9117)
    #dbg_value(i64 %2, !9118, !DIExpression(), !9122)
    #dbg_value(ptr %1, !9111, !DIExpression(), !9124)
    #dbg_value(ptr %1, !9121, !DIExpression(), !9122)
  %.idx.i = shl nuw nsw i64 %2, 4, !dbg !9125     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i, !dbg !9125
    #dbg_value(ptr %1, !9001, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9126)
    #dbg_value(ptr %i.d, !9001, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9126)
    #dbg_value(ptr undef, !9010, !DIExpression(), !9019)
    #dbg_value(ptr %1, !9013, !DIExpression(), !9127)
    #dbg_value(ptr %1, !9059, !DIExpression(), !9060)
    #dbg_value(ptr %i.d, !9015, !DIExpression(), !9128)
    #dbg_value(ptr poison, !9129, !DIExpression(), !9133)
    #dbg_value(ptr poison, !9132, !DIExpression(), !9135)
  %i.e = icmp eq i64 %2, 0, !dbg !9136
  br i1 %i.e, label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %.lr.ph.preheader.i, !dbg !9137

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.f = add nsw i64 %.idx.i, -16, !dbg !9138
  %i.g = lshr exact i64 %i.f, 4, !dbg !9138
  %i.h = add nuw nsw i64 %i.g, 1, !dbg !9138
  br label %.lr.ph.i, !dbg !9138

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %.sroa.05.048.i = phi i64 [ %i.l, %bb.b ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.010.047.i = phi ptr [ %i.k, %bb.b ], [ %1, %.lr.ph.preheader.i ] ; 2 uses
    #dbg_value(i64 0, !9046, !DIExpression(), !9054)
    #dbg_value(i64 %.sroa.05.048.i, !9088, !DIExpression(), !9099)
    #dbg_value(ptr %.sroa.010.047.i, !9001, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !9126)
    #dbg_value(ptr %.sroa.010.047.i, !9003, !DIExpression(), !9146)
    #dbg_value(ptr %.sroa.010.047.i, !9147, !DIExpression(), !9150)
    #dbg_value(i64 0, !9143, !DIExpression(), !9152)
    #dbg_value(ptr %.sroa.010.047.i, !9153, !DIExpression(), !9156)
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.047.i, i64 8, !dbg !9158
  %i.j = load i64, ptr %i.i, align 8, !dbg !9158, !noalias !9159, !noundef !56
    #dbg_value(i64 %i.j, !9144, !DIExpression(), !9152)
  %.not = icmp eq i64 %i.j, 0, !dbg !9138
  br i1 %.not, label %bb.b, label %._crit_edge.i, !dbg !9138

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.010.047.i, i64 16, !dbg !9162 ; 2 uses
    #dbg_value(ptr %i.k, !9001, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9126)
    #dbg_value(i64 0, !8996, !DIExpression(), !9023)
    #dbg_value(i64 0, !8999, !DIExpression(), !9024)
    #dbg_value(i64 0, !9005, !DIExpression(), !9025)
    #dbg_value(i64 0, !9026, !DIExpression(), !9034)
    #dbg_value(i64 0, !9036, !DIExpression(), !9044)
    #dbg_value(i64 0, !9046, !DIExpression(), !9054)
  %i.l = add nuw nsw i64 %.sroa.05.048.i, 1, !dbg !9163
    #dbg_value(i64 %i.l, !9088, !DIExpression(), !9099)
    #dbg_value(i64 %i.l, !9077, !DIExpression(), !9086)
    #dbg_value(i64 %i.l, !9063, !DIExpression(), !9075)
    #dbg_value(i64 %i.l, !8997, !DIExpression(), !9062)
    #dbg_value(ptr undef, !9010, !DIExpression(), !9019)
    #dbg_value(ptr %i.k, !9013, !DIExpression(), !9127)
    #dbg_value(ptr %i.k, !9059, !DIExpression(), !9060)
    #dbg_value(ptr %i.d, !9015, !DIExpression(), !9128)
    #dbg_value(ptr poison, !9129, !DIExpression(), !9133)
    #dbg_value(ptr poison, !9132, !DIExpression(), !9135)
  %i.m = icmp eq ptr %i.k, %i.d, !dbg !9136
  br i1 %i.m, label %._crit_edge.i, label %.lr.ph.i, !dbg !9137

._crit_edge.i:                                    ; preds = %bb.b, %.lr.ph.i
  %.sroa.05.0.lcssa.i = phi i64 [ %.sroa.05.048.i, %.lr.ph.i ], [ %i.h, %bb.b ], !dbg !9023 ; 5 uses
    #dbg_value(ptr %1, !9072, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9075)
    #dbg_value(ptr %1, !9083, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9086)
    #dbg_value(i64 %2, !9072, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9075)
    #dbg_value(i64 %2, !9083, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9086)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !8979, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9009)
    #dbg_value(i64 0, !8979, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9009)
  %i.n = icmp ugt i64 %.sroa.05.0.lcssa.i, %2, !dbg !9164
  br i1 %i.n, label %bb.d, label %bb.c, !dbg !9164, !prof !9165

bb.c:                                             ; preds = %._crit_edge.i
    #dbg_value(!DIArgList(i64 %2, i64 %.sroa.05.0.lcssa.i), !9084, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !9166)
    #dbg_value(!DIArgList(i64 %2, i64 %.sroa.05.0.lcssa.i), !9098, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !9099)
    #dbg_value(ptr %1, !9097, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9099)
    #dbg_value(i64 %2, !9097, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9099)
    #dbg_value(!DIArgList(ptr %1, i64 %.sroa.05.0.lcssa.i), !8979, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !9009)
    #dbg_value(!DIArgList(i64 %2, i64 %.sroa.05.0.lcssa.i), !8979, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9009)
    #dbg_value(ptr poison, !9167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9172)
    #dbg_value(!DIArgList(i64 %2, i64 %.sroa.05.0.lcssa.i), !9167, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9172)
  %i.o = icmp eq i64 %2, %.sroa.05.0.lcssa.i, !dbg !9174
  br i1 %i.o, label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %.lr.ph, !dbg !9175

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.05.0.lcssa.i, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #28, !dbg !9176, !noalias !9159
  unreachable, !dbg !9176

.lr.ph:                                           ; preds = %bb.c
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.05.0.lcssa.i, !dbg !9177
    #dbg_value(ptr %i.p, !8979, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9009)
  %i.q = sub nuw nsw i64 %2, %.sroa.05.0.lcssa.i, !dbg !9178
    #dbg_value(i64 %i.q, !9084, !DIExpression(), !9166)
    #dbg_value(i64 %i.q, !9098, !DIExpression(), !9099)
    #dbg_value(i64 %i.q, !9167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9172)
    #dbg_value(i64 %i.q, !8979, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9009)
    #dbg_value(ptr %i.p, !9033, !DIExpression(), !9034)
    #dbg_value(ptr %i.p, !9043, !DIExpression(), !9179)
    #dbg_value(ptr poison, !9051, !DIExpression(), !9054)
    #dbg_value(ptr %i.p, !8979, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9009)
    #dbg_value(i64 %i.q, !8979, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9009)
    #dbg_value(ptr poison, !9180, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9183)
    #dbg_value(i64 %i.q, !9180, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9183)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %bb.e, !dbg !9185

bb.e:                                             ; preds = %.lr.ph, %_RNvMs7_NtNtCskKLDkoKarTP_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit26
  %.sroa.0.04086 = phi ptr [ %i.p, %.lr.ph ], [ %.sroa.0.14156, %_RNvMs7_NtNtCskKLDkoKarTP_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit26 ] ; 10 uses
  %.sroa.8.085 = phi i64 [ %i.q, %.lr.ph ], [ %.sroa.8.154, %_RNvMs7_NtNtCskKLDkoKarTP_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit26 ] ; 9 uses
    #dbg_value(ptr %.sroa.0.04086, !8979, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9009)
    #dbg_value(i64 %.sroa.8.085, !8979, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9009)
  call void @llvm.experimental.noalias.scope.decl(metadata !9186), !dbg !9189
  call void @llvm.experimental.noalias.scope.decl(metadata !9190), !dbg !9189
    #dbg_value(ptr poison, !8049, !DIExpression(), !9192)
    #dbg_value(ptr poison, !8049, !DIExpression(), !9195)
    #dbg_value(ptr %0, !8004, !DIExpression(), !9197)
    #dbg_value(ptr %0, !8094, !DIExpression(), !9198)
    #dbg_value(ptr %0, !8094, !DIExpression(), !9200)
    #dbg_value(ptr %0, !8094, !DIExpression(), !9202)
    #dbg_value(ptr %.sroa.0.04086, !8005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9197)
    #dbg_value(ptr %.sroa.0.04086, !8103, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9204)
    #dbg_value(ptr %.sroa.0.04086, !8110, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9206)
    #dbg_value(ptr %.sroa.0.04086, !8115, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9208)
    #dbg_value(ptr %.sroa.0.04086, !8110, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9210)
    #dbg_value(ptr %.sroa.0.04086, !8115, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9212)
    #dbg_value(ptr %.sroa.0.04086, !8110, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9214)
    #dbg_value(ptr %.sroa.0.04086, !8115, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9216)
    #dbg_value(i64 %.sroa.8.085, !8005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9197)
    #dbg_value(i64 %.sroa.8.085, !8103, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9204)
    #dbg_value(i64 %.sroa.8.085, !8110, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9206)
    #dbg_value(i64 %.sroa.8.085, !8115, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9208)
    #dbg_value(i64 %.sroa.8.085, !8110, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9210)
    #dbg_value(i64 %.sroa.8.085, !8115, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9212)
    #dbg_value(i64 %.sroa.8.085, !8110, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9214)
    #dbg_value(i64 %.sroa.8.085, !8115, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9216)
    #dbg_value(i64 1, !8149, !DIExpression(), !9218)
    #dbg_value(i64 1, !8158, !DIExpression(), !9220)
end_hunk_1
