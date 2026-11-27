Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_parser-4204840c537c9517.yara_x_parser.b6715538e8e8d337-cgu.15?download=true
inline.NumInlined: 167
inline.NumDeleted: 43
begin_hunk_0_@_RINvXs3_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB1V_8iterator8Iterator8find_map5checkRB19_NtB1d_4SpanNCNvMNtB1b_13syntax_streamNtB4l_12SyntaxStream8truncate0E0INtNtNtB1Z_3ops12control_flow11ControlFlowB45_EEB1d_:bb.a
  %i.l = load i32, ptr %i.d, align 4, !range !118, !alias.scope !119, !noalias !115, !noundef !7
  %i.m = trunc nuw i32 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !115
  %i.n = icmp eq ptr %i.h, %i.k
  br i1 %i.n, label %.loopexit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load <2 x i32>, ptr %i.o, align 4, !alias.scope !119, !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store <2 x i32> %i.q, ptr %i.p, align 4, !alias.scope !120
  store i32 1, ptr %0, align 4, !alias.scope !120
  br label %bb.f

.loopexit:                                        ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.a, ptr %i.c, align 8, !noalias !123
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load ptr, ptr %1, align 8, !alias.scope !124, !nonnull !7, !noundef !7 ; 2 uses
  %.promoted.i2 = load ptr, ptr %i.r, align 8, !alias.scope !124 ; 2 uses
  %i.t = icmp eq ptr %i.s, %.promoted.i2
  br i1 %i.t, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduQNCINvNvNtNtB1v_8iterator8Iterator8find_map5checkRBJ_NtBN_4SpanNCNvMNtBL_13syntax_streamNtB3E_12SyntaxStream8truncate0E0INtNtNtBa_3ops12control_flow11ControlFlowB3p_EEBN_.exit5, label %.lr.ph.i3

.lr.ph.i3:                                        ; preds = %.loopexit, %bb.e
  %i.u = phi ptr [ %i.v, %bb.e ], [ %.promoted.i2, %.loopexit ]
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -32 ; 4 uses
  store ptr %i.v, ptr %i.r, align 8, !alias.scope !124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !123
  call void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8find_map5checkRNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventNtB1U_4SpanNCNvMNtB1S_13syntax_streamNtB2N_12SyntaxStream8truncate0E0INtB7_5FnMutTuB1P_EE8call_mutB1U_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.v), !noalias !125
  %i.w = load i32, ptr %i.b, align 4, !range !118, !alias.scope !126, !noalias !123, !noundef !7
  %i.x = trunc nuw i32 %i.w to i1
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i3
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aa = load <2 x i32>, ptr %i.y, align 4, !alias.scope !126, !noalias !123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !123
  store <2 x i32> %i.aa, ptr %i.z, align 4, !alias.scope !127
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduQNCINvNvNtNtB1v_8iterator8Iterator8find_map5checkRBJ_NtBN_4SpanNCNvMNtBL_13syntax_streamNtB3E_12SyntaxStream8truncate0E0INtNtNtBa_3ops12control_flow11ControlFlowB3p_EEBN_.exit5

bb.e:                                             ; preds = %.lr.ph.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !123
  %i.ab = icmp eq ptr %i.s, %i.v
  br i1 %i.ab, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduQNCINvNvNtNtB1v_8iterator8Iterator8find_map5checkRBJ_NtBN_4SpanNCNvMNtBL_13syntax_streamNtB3E_12SyntaxStream8truncate0E0INtNtNtBa_3ops12control_flow11ControlFlowB3p_EEBN_.exit5, label %.lr.ph.i3

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduQNCINvNvNtNtB1v_8iterator8Iterator8find_map5checkRBJ_NtBN_4SpanNCNvMNtBL_13syntax_streamNtB3E_12SyntaxStream8truncate0E0INtNtNtBa_3ops12control_flow11ControlFlowB3p_EEBN_.exit5: ; preds = %bb.e, %.loopexit, %bb.d
  %storemerge.i4 = phi i32 [ 1, %bb.d ], [ 0, %.loopexit ], [ 0, %bb.e ]
  store i32 %storemerge.i4, ptr %0, align 4, !alias.scope !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduQNCINvNvNtNtB1v_8iterator8Iterator8find_map5checkRBJ_NtBN_4SpanNCNvMNtBL_13syntax_streamNtB3E_12SyntaxStream8truncate0E0INtNtNtBa_3ops12control_flow11ControlFlowB3p_EEBN_.exit5
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterjENtCs2CmfWUMKNor_9itertools9Itertools13find_positionNCNvMNtNtCsfF8zpZz1lvn_13yara_x_parser6parser12token_streamNtB1Z_11TokenStream15remove_bookmark0EB23_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i64 0, ptr %i.f, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !146
  store ptr %i.e, ptr %i.c, align 8, !noalias !147
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.g, align 8, !noalias !147
  call void @llvm.experimental.noalias.scope.decl(metadata !148)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !147
  store ptr %i.c, ptr %i.b, align 8, !noalias !149
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !150, !noalias !146, !nonnull !7, !noundef !7
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !150, !noalias !146
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.j = phi ptr [ %i.l, %bb.c ], [ %.promoted.i.i.i, %bb.a ] ; 3 uses
  %i.k = icmp eq ptr %i.j, %i.i
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !alias.scope !150, !noalias !146
  %i.m = call { i64, ptr } @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvXs_NtNtNtBb_4iter8adapters9enumerateINtBY_9EnumeratepENtNtNtB12_6traits8iterator8Iterator8try_fold9enumerateRjuINtNtB9_12control_flow11ControlFlowTjB2F_EENCINvNvB1N_4find5checkB3h_NCINvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterjENtCs2CmfWUMKNor_9itertools9Itertools13find_positionNCNvMNtNtCsfF8zpZz1lvn_13yara_x_parser6parser12token_streamNtB5R_11TokenStream15remove_bookmark0E0E0E0INtB7_5FnMutTuB2F_EE8call_mutB5V_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j), !noalias !151 ; 2 uses
  %i.n = extractvalue { i64, ptr } %i.m, 1        ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !147
  %i.o = extractvalue { i64, ptr } %i.m, 0
  br label %_RINvXs2_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterjENtB6_15IteratorRefSpec13spec_try_folduNCINvNvXs_NtNtBa_8adapters9enumerateINtB2F_9EnumeratepENtB6_8Iterator8try_fold9enumerateRjuINtNtNtBc_3ops12control_flow11ControlFlowTjB3V_EENCINvNvB3o_4find5checkB4D_NCINvYBR_NtCs2CmfWUMKNor_9itertools9Itertools13find_positionNCNvMNtNtCsfF8zpZz1lvn_13yara_x_parser6parser12token_streamNtB6e_11TokenStream15remove_bookmark0E0E0E0B3Y_EB6i_.exit

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !147
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !147
  store ptr %i.c, ptr %i.a, align 8, !noalias !153
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !154, !noalias !146, !nonnull !7, !noundef !7
  %.promoted.i5.i.i = load ptr, ptr %i.p, align 8, !alias.scope !154, !noalias !146
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.s = phi ptr [ %i.u, %bb.g ], [ %.promoted.i5.i.i, %bb.e ] ; 3 uses
  %i.t = icmp eq ptr %i.s, %i.r
  br i1 %i.t, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterjENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvXs_NtNtBR_8adapters9enumerateINtB1L_9EnumeratepEBL_8try_fold9enumerateRjuINtNtNtBa_3ops12control_flow11ControlFlowTjB2Q_EENCINvNvBL_4find5checkB3y_NCINvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterjENtCs2CmfWUMKNor_9itertools9Itertools13find_positionNCNvMNtNtCsfF8zpZz1lvn_13yara_x_parser6parser12token_streamNtB67_11TokenStream15remove_bookmark0E0E0E0B2T_EB6b_.exit9.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr %i.u, ptr %i.p, align 8, !alias.scope !154, !noalias !146
  %i.v = call { i64, ptr } @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvXs_NtNtNtBb_4iter8adapters9enumerateINtBY_9EnumeratepENtNtNtB12_6traits8iterator8Iterator8try_fold9enumerateRjuINtNtB9_12control_flow11ControlFlowTjB2F_EENCINvNvB1N_4find5checkB3h_NCINvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterjENtCs2CmfWUMKNor_9itertools9Itertools13find_positionNCNvMNtNtCsfF8zpZz1lvn_13yara_x_parser6parser12token_streamNtB5R_11TokenStream15remove_bookmark0E0E0E0INtB7_5FnMutTuB2F_EE8call_mutB5V_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s), !noalias !155 ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 1        ; 2 uses
  %.not.i.i6.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i6.i.i, label %bb.f, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = extractvalue { i64, ptr } %i.v, 0
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterjENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvXs_NtNtBR_8adapters9enumerateINtB1L_9EnumeratepEBL_8try_fold9enumerateRjuINtNtNtBa_3ops12control_flow11ControlFlowTjB2Q_EENCINvNvBL_4find5checkB3y_NCINvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterjENtCs2CmfWUMKNor_9itertools9Itertools13find_positionNCNvMNtNtCsfF8zpZz1lvn_13yara_x_parser6parser12token_streamNtB67_11TokenStream15remove_bookmark0E0E0E0B2T_EB6b_.exit9.i.i

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterjENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvXs_NtNtBR_8adapters9enumerateINtB1L_9EnumeratepEBL_8try_fold9enumerateRjuINtNtNtBa_3ops12control_flow11ControlFlowTjB2Q_EENCINvNvBL_4find5checkB3y_NCINvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterjENtCs2CmfWUMKNor_9itertools9Itertools13find_positionNCNvMNtNtCsfF8zpZz1lvn_13yara_x_parser6parser12token_streamNtB67_11TokenStream15remove_bookmark0E0E0E0B2T_EB6b_.exit9.i.i: ; preds = %bb.f, %bb.h
  %.sroa.3.0.i7.i.i = phi ptr [ %i.w, %bb.h ], [ null, %bb.f ]
  %.sroa.0.0.i8.i.i = phi i64 [ %i.x, %bb.h ], [ undef, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !147
  br label %_RINvXs2_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterjENtB6_15IteratorRefSpec13spec_try_folduNCINvNvXs_NtNtBa_8adapters9enumerateINtB2F_9EnumeratepENtB6_8Iterator8try_fold9enumerateRjuINtNtNtBc_3ops12control_flow11ControlFlowTjB3V_EENCINvNvB3o_4find5checkB4D_NCINvYBR_NtCs2CmfWUMKNor_9itertools9Itertools13find_positionNCNvMNtNtCsfF8zpZz1lvn_13yara_x_parser6parser12token_streamNtB6e_11TokenStream15remove_bookmark0E0E0E0B3Y_EB6i_.exit

_RINvXs2_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterjENtB6_15IteratorRefSpec13spec_try_folduNCINvNvXs_NtNtBa_8adapters9enumerateINtB2F_9EnumeratepENtB6_8Iterator8try_fold9enumerateRjuINtNtNtBc_3ops12control_flow11ControlFlowTjB3V_EENCINvNvB3o_4find5checkB4D_NCINvYBR_NtCs2CmfWUMKNor_9itertools9Itertools13find_positionNCNvMNtNtCsfF8zpZz1lvn_13yara_x_parser6parser12token_streamNtB6e_11TokenStream15remove_bookmark0E0E0E0B3Y_EB6i_.exit: ; preds = %bb.d, %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterjENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvXs_NtNtBR_8adapters9enumerateINtB1L_9EnumeratepEBL_8try_fold9enumerateRjuINtNtNtBa_3ops12control_flow11ControlFlowTjB2Q_EENCINvNvBL_4find5checkB3y_NCINvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterjENtCs2CmfWUMKNor_9itertools9Itertools13find_positionNCNvMNtNtCsfF8zpZz1lvn_13yara_x_parser6parser12token_streamNtB67_11TokenStream15remove_bookmark0E0E0E0B2T_EB6b_.exit9.i.i
  %.pre-phi = phi ptr [ %i.n, %bb.d ], [ %.sroa.3.0.i7.i.i, %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterjENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvXs_NtNtBR_8adapters9enumerateINtB1L_9EnumeratepEBL_8try_fold9enumerateRjuINtNtNtBa_3ops12control_flow11ControlFlowTjB2Q_EENCINvNvBL_4find5checkB3y_NCINvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterjENtCs2CmfWUMKNor_9itertools9Itertools13find_positionNCNvMNtNtCsfF8zpZz1lvn_13yara_x_parser6parser12token_streamNtB67_11TokenStream15remove_bookmark0E0E0E0B2T_EB6b_.exit9.i.i ] ; 2 uses
  %.pn.i.i = phi i64 [ %i.o, %bb.d ], [ %.sroa.0.0.i8.i.i, %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterjENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvXs_NtNtBR_8adapters9enumerateINtB1L_9EnumeratepEBL_8try_fold9enumerateRjuINtNtNtBa_3ops12control_flow11ControlFlowTjB2Q_EENCINvNvBL_4find5checkB3y_NCINvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterjENtCs2CmfWUMKNor_9itertools9Itertools13find_positionNCNvMNtNtCsfF8zpZz1lvn_13yara_x_parser6parser12token_streamNtB67_11TokenStream15remove_bookmark0E0E0E0B2T_EB6b_.exit9.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !146
  %.not = icmp eq ptr %.pre-phi, null
  %.sroa.0.0 = select i1 %.not, i64 undef, i64 %.pn.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.y = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.z = insertvalue { i64, ptr } %i.y, ptr %.pre-phi, 1
  ret { i64, ptr } %i.z
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfsNtB2_7DFSIter3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #3 {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  %i.a = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef 8) #24 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #23
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 0, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfsNtB2_7DFSIter8contexts(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !156, !noundef !7
  %.not = icmp eq i64 %i.a, -1
  %. = select i1 %.not, ptr null, ptr %1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i64, ptr %i.d, align 8, !noundef !7
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.e
  tail call void @_RINvNtCs2CmfWUMKNor_9itertools4free5chainINtNtCskKLDkoKarTP_4core6option4IterNtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs10DFSContextEINtNtNtNtBI_4iter8adapters10filter_map9FilterMapINtNtB2c_3rev3RevINtNtNtBI_5slice4iter4IterINtB1f_8DFSEventTRNtB1h_4ExprB1d_EEEENCNvMB1f_NtB1f_7DFSIter8contexts0EEB1j_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %., ptr noundef nonnull %i.c, ptr noundef nonnull %i.f)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs1_NtCs94G7V7CXYRk_8bitflags4iterINtB5_9IterNamesNtNtCsfF8zpZz1lvn_13yara_x_parser3ast9RuleFlagsE3newBT_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.val1 = load i8, ptr %1, align 1, !noundef !7  ; 2 uses
  store ptr @7, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.val1, ptr %i.c, align 8
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %.val1, ptr %2, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8, !alias.scope !161 ; 2 uses
  %.sroa.05.0.i = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0.i, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 4 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !163
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i.i = load ptr, ptr %i.h, align 8, !alias.scope !163
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val12.i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !163
  %i.i = load i64, ptr %i.a, align 8, !range !11, !noalias !163, !noundef !7
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.j, label %bb.e, label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsfF8zpZz1lvn_13yara_x_parser.exit.i

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.k, align 8, !range !12, !noalias !163, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !163
  br label %bb.f

_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsfF8zpZz1lvn_13yara_x_parser.exit.i: ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !noalias !163, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !163
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !163
  %i.p = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.p)
  store i64 %i.f, ptr %0, align 8, !alias.scope !163
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.e
  %.sroa.3.0.i.ph = phi i64 [ %i.n, %bb.e ], [ undef, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i.ph = phi i64 [ %i.l, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.3.0.i.ph) #23
  unreachable

bb.g:                                             ; preds = %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsfF8zpZz1lvn_13yara_x_parser.exit.i, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #5 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8                ; 2 uses
  %.sroa.05.0 = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 4 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !166
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i = load ptr, ptr %i.h, align 8, !alias.scope !166
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val12.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !166
  %i.i = load i64, ptr %i.a, align 8, !range !11, !noalias !166, !noundef !7
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.j, label %bb.e, label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsfF8zpZz1lvn_13yara_x_parser.exit

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.k, align 8, !range !12, !noalias !166, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !166
  br label %bb.f

_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsfF8zpZz1lvn_13yara_x_parser.exit: ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !noalias !166, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !166
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !166
  %i.p = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.p)
  store i64 %i.f, ptr %0, align 8, !alias.scope !166
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsfF8zpZz1lvn_13yara_x_parser.exit, %bb.c, %bb.e, %bb.b
  %.sroa.3.0 = phi i64 [ undef, %bb.b ], [ undef, %bb.c ], [ %i.n, %bb.e ], [ undef, %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsfF8zpZz1lvn_13yara_x_parser.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.l, %bb.e ], [ -1, %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsfF8zpZz1lvn_13yara_x_parser.exit ], [ -1, %bb.a ]
  %i.q = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.r = insertvalue { i64, i64 } %i.q, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.r
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCs907JfTDu8Xv_8indexmap6BucketReuEE8grow_oneCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !10, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !169
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !169
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 24), !noalias !169
  %i.f = load i64, ptr %i.a, align 8, !range !11, !noalias !169, !noundef !7
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !12, !noalias !169, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !169
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !169, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !169
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !169
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !169
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBR_4ExprNtBP_10DFSContextEEE8grow_oneBT_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !10, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !172
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !172
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 32), !noalias !172
  %i.f = load i64, ptr %i.a, align 8, !range !11, !noalias !172, !noundef !7
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !12, !noalias !172, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !172
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !172, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !172
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !172
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !172
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsdJkkaF0JZ31_10ascii_tree4TreeE8grow_oneCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !10, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !175
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !175
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 48), !noalias !175
  %i.f = load i64, ptr %i.a, align 8, !range !11, !noalias !175, !noundef !7
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c
end_hunk_0
