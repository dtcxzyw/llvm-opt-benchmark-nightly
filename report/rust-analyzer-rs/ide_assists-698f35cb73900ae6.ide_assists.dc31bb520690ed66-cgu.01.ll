Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_assists-698f35cb73900ae6.ide_assists.dc31bb520690ed66-cgu.01?download=true
inline.NumInlined: 6316
inline.NumDeleted: 3659
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtCs8Xq8PKFYOms_3hir5FieldNtB1q_4TypeEENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers19expand_rest_pattern26expand_record_rest_pattern00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatFieldTB4w_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB4E_11syntax_node12RustLanguageEEuNCINvNtNtB4C_14syntax_factory12constructors14iterator_inputB4w_INtNtB8_5chain5ChainINtB4C_11AstChildrenB4w_EBN_EE0NCINvNvB3B_8for_each4callB5z_NCINvNvNtB3F_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB4w_EIBa0_B5E_EEB5z_E0E0E0EB2b_:bb.a
bb.n:                                             ; preds = %bb.m
  %i.an = invoke noundef nonnull ptr @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory26record_pat_field_shorthand(ptr noundef nonnull align 8 %.sroa.01.0.copyload, i64 noundef 3, ptr noundef nonnull %i.am)
          to label %bb.o unwind label %bb.j, !noalias !7539 ; 4 uses

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !7547)
  call void @llvm.experimental.noalias.scope.decl(metadata !7548)
  %i.ao = load i8, ptr %i.e, align 8, !range !18, !alias.scope !7549, !noalias !7538, !noundef !6
  %switch.i.i4.i.i.i = icmp samesign ult i8 %i.ao, 25
  br i1 %switch.i.i4.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsiU5vK8fN4ZC_11ide_assists.exit6.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !7550)
  call void @llvm.experimental.noalias.scope.decl(metadata !7551)
  %i.ap = load ptr, ptr %i.p, align 8, !alias.scope !7552, !noalias !7538, !nonnull !6, !noundef !6
  %i.aq = atomicrmw add ptr %i.ap, i64 -1 release, align 8, !noalias !7553
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.q, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsiU5vK8fN4ZC_11ide_assists.exit6.i.i.i

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p) #27
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsiU5vK8fN4ZC_11ide_assists.exit6.i.i.i unwind label %bb.d, !noalias !7539

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsiU5vK8fN4ZC_11ide_assists.exit6.i.i.i: ; preds = %bb.q, %bb.p, %bb.o
  %.val.i.i.i = load ptr, ptr %i.c, align 8, !noalias !7538, !nonnull !6, !noundef !6 ; 2 uses
  %i.as = ptrtoint ptr %.val.i.i.i to i64
  %i.at = and i64 %i.as, 1
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers19expand_rest_pattern26expand_record_rest_pattern00B9_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsiU5vK8fN4ZC_11ide_assists.exit6.i.i.i
  %i.au = getelementptr i8, ptr %.val.i.i.i, i64 -1 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  %i.av = call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull %i.au), !noalias !7539
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr inbounds i8, ptr %i.au, i64 %i.aw ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7538
  store ptr %i.ax, ptr %i.b, align 8, !noalias !7538
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8, !noalias !7539
  %i.az = icmp eq i64 %i.ay, 2
  br i1 %i.az, label %bb.s, label %bb.t, !prof !4

bb.s:                                             ; preds = %bb.r
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !noalias !7539
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7538
  store ptr %i.ax, ptr %i.a, align 8, !noalias !7538
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !7539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7538
  br label %_RNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers19expand_rest_pattern26expand_record_rest_pattern00B9_.exit.i.i

bb.u:                                             ; preds = %bb.l, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #26, !noalias !7539
  unreachable

common.resume.i.i:                                ; preds = %bb.w, %bb.v, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i ], [ %i.be, %bb.w ], [ %i.be, %bb.v ]
  resume { ptr, i32 } %common.resume.op.i.i

_RNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers19expand_rest_pattern26expand_record_rest_pattern00B9_.exit.i.i: ; preds = %bb.t, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsiU5vK8fN4ZC_11ide_assists.exit6.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7538
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 48 ; 4 uses
  %i.bc = load i32, ptr %i.bb, align 4, !noalias !7554, !noundef !6 ; 2 uses
  %i.bd = icmp eq i32 %i.bc, -1
  br i1 %i.bd, label %bb.x, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRTNtCs8Xq8PKFYOms_3hir5FieldNtBY_4TypeENtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatFielduNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers19expand_rest_pattern26expand_record_rest_pattern00NCIB2_B1x_TB1x_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1F_11syntax_node12RustLanguageEEuNCINvNtNtB1D_14syntax_factory12constructors14iterator_inputB1x_INtNtB6_5chain5ChainINtB1D_11AstChildrenB1x_EINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2B_EEE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB4k_NCINvNvNtB8n_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB1x_EIB9V_B4p_EEB4k_E0E0E0E0B2L_.exit.i, !prof !4

bb.v:                                             ; preds = %bb.x
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = load i32, ptr %i.bb, align 4, !noalias !7554, !noundef !6
  %i.bg = add i32 %i.bf, -1                       ; 2 uses
  store i32 %i.bg, ptr %i.bb, align 4, !noalias !7554
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.w, label %common.resume.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.an) #27
          to label %common.resume.i.i unwind label %bb.y, !noalias !7554

bb.x:                                             ; preds = %_RNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers19expand_rest_pattern26expand_record_rest_pattern00B9_.exit.i.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #29
          to label %.noexc2.i.i.i.i unwind label %bb.v, !noalias !7554

.noexc2.i.i.i.i:                                  ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #26, !noalias !7554
  unreachable

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRTNtCs8Xq8PKFYOms_3hir5FieldNtBY_4TypeENtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatFielduNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers19expand_rest_pattern26expand_record_rest_pattern00NCIB2_B1x_TB1x_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1F_11syntax_node12RustLanguageEEuNCINvNtNtB1D_14syntax_factory12constructors14iterator_inputB1x_INtNtB6_5chain5ChainINtB1D_11AstChildrenB1x_EINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2B_EEE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB4k_NCINvNvNtB8n_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB1x_EIB9V_B4p_EEB4k_E0E0E0E0B2L_.exit.i: ; preds = %_RNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers19expand_rest_pattern26expand_record_rest_pattern00B9_.exit.i.i
  %i.bj = add nuw i32 %i.bc, 1
  store i32 %i.bj, ptr %i.bb, align 4, !noalias !7554
  call void @_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatFieldEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2u_EE10extend_oneCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.an, ptr noundef nonnull %i.an), !noalias !7554
  %i.bk = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.bl = icmp eq i64 %i.bk, %i.n
  br i1 %i.bl, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCs8Xq8PKFYOms_3hir5FieldNtBT_4TypeEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters3map8map_foldRBQ_NtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatFielduNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers19expand_rest_pattern26expand_record_rest_pattern00NCIB2h_B2R_TB2R_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB2Z_11syntax_node12RustLanguageEEuNCINvNtNtB2X_14syntax_factory12constructors14iterator_inputB2R_INtNtB2l_5chain5ChainINtB2X_11AstChildrenB2R_EINtB2j_3MapBF_B3V_EEE0NCINvNvB1t_8for_each4callB5F_NCINvNvNtB1x_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB2R_EIBan_B5K_EEB5F_E0E0E0E0EB45_.exit, label %bb.c

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCs8Xq8PKFYOms_3hir5FieldNtBT_4TypeEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters3map8map_foldRBQ_NtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatFielduNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers19expand_rest_pattern26expand_record_rest_pattern00NCIB2h_B2R_TB2R_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB2Z_11syntax_node12RustLanguageEEuNCINvNtNtB2X_14syntax_factory12constructors14iterator_inputB2R_INtNtB2l_5chain5ChainINtB2X_11AstChildrenB2R_EINtB2j_3MapBF_B3V_EEE0NCINvNvB1t_8for_each4callB5F_NCINvNvNtB1x_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB2R_EIBan_B5K_EEB5F_E0E0E0E0EB45_.exit: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRTNtCs8Xq8PKFYOms_3hir5FieldNtBY_4TypeENtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatFielduNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers19expand_rest_pattern26expand_record_rest_pattern00NCIB2_B1x_TB1x_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1F_11syntax_node12RustLanguageEEuNCINvNtNtB1D_14syntax_factory12constructors14iterator_inputB1x_INtNtB6_5chain5ChainINtB1D_11AstChildrenB1x_EINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2B_EEE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB4k_NCINvNvNtB8n_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB1x_EIB9V_B4p_EEB4k_E0E0E0E0B2L_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeEENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12generate_new12generate_news0_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4c_8for_each4callINtNtBc_6option6OptionTNtB22_7NameRefIB5g_NtB22_4ExprEEENCINvMsk_NtB1s_3vecINtB6i_3VecB5f_E14extend_trustedBN_E0E0EB34_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [20 x i8], align 4                ; 4 uses
  %i.b = alloca [20 x i8], align 4                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [20 x i8], align 4                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2t_8adapters3map8map_foldRBQ_INtNtBb_6option6OptionTNtB1v_7NameRefIB3M_NtB1v_4ExprEEEuNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12generate_new12generate_news0_00NCINvNvB2n_8for_each4callB3L_NCINvMsk_NtBV_3vecINtB6z_3VecB3L_E14extend_trustedINtB3d_3MapBF_B4G_EE0E0E0EB4Q_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.01.0.copyload = load ptr, ptr %i.l, align 8 ; 3 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = sub nuw i64 %i.m, %i.n
  %i.p = udiv exact i64 %i.o, 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.14.sroa.12.0..sroa.14.0..sroa_idx35.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.14.sroa.14.0..sroa.14.0..sroa_idx35.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 48 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 4 ; 3 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.r, %bb.p, %bb.g, %.noexc16.i, %.noexc15.i, %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.i.i.i, %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.d:                                             ; preds = %bb.t, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.bu, %bb.t ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.bv, %bb.t ] ; 2 uses
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %.sroa.01.0.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7573)
  call void @llvm.experimental.noalias.scope.decl(metadata !7574)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7575
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7576
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl12resolve_type(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.z)
          to label %.noexc.i unwind label %bb.c, !noalias !7577

.noexc.i:                                         ; preds = %bb.d
  %i.aa = load i32, ptr %i.q, align 8, !range !20, !noalias !7576, !noundef !6
  %.not.i.i.i = icmp eq i32 %i.aa, -1
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !7576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7576
  %.val21.i.i.i = load ptr, ptr %i.g, align 8, !noalias !7576, !nonnull !6, !noundef !6 ; 3 uses
  %.sroa.09.0.copyload.i.i.i.i = load i32, ptr %.val21.i.i.i, align 8, !noalias !7578 ; 2 uses
  %i.ab = icmp ne i32 %.sroa.09.0.copyload.i.i.i.i, 27
  call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp eq i32 %.sroa.09.0.copyload.i.i.i.i, 7
  br i1 %i.ac, label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.i.i.i, label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.thread.i.i.i

_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.i.i.i: ; preds = %bb.e
  %.sroa.811.sroa.8.0..sroa.811.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val21.i.i.i, i64 20
  %.sroa.811.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val21.i.i.i, i64 16
  %.sroa.811.sroa.0.0.copyload.i.i.i.i = load i8, ptr %.sroa.811.0..sroa_idx.i.i.i.i, align 8, !noalias !7578
  %switch.idx.cast.i.i.i.i = zext i8 %.sroa.811.sroa.0.0.copyload.i.i.i.i to i32
  call void @llvm.experimental.noalias.scope.decl(metadata !7579)
  store i8 2, ptr %i.r, align 4, !alias.scope !7580, !noalias !7576
  store i32 %switch.idx.cast.i.i.i.i, ptr %.sroa.14.sroa.12.0..sroa.14.0..sroa_idx35.sroa_idx.i.i.i, align 4, !alias.scope !7580, !noalias !7576
  %i.ad = load <2 x i32>, ptr %.sroa.811.sroa.8.0..sroa.811.0..sroa_idx.sroa_idx.i.i.i.i, align 4, !noalias !7578
  store <2 x i32> %i.ad, ptr %.sroa.14.sroa.14.0..sroa.14.0..sroa_idx35.sroa_idx.i.i.i, align 4, !alias.scope !7580, !noalias !7576
  store i32 0, ptr %i.e, align 4, !alias.scope !7581, !noalias !7576
  %i.ae = load ptr, ptr %i.u, align 8, !noalias !7582, !nonnull !6, !align !9, !noundef !6 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.af = load i32, ptr %.sroa.4.0.copyload, align 4, !range !16, !noalias !7582, !noundef !6
  %i.ag = load i32, ptr %i.w, align 4, !noalias !7582, !noundef !6
  %i.ah = load ptr, ptr %i.v, align 8, !noalias !7582, !nonnull !6, !align !9, !noundef !6
  %i.ai = invoke { i32, i32 } @_RNvMs4_Cs8Xq8PKFYOms_3hirNtB5_6Module5krate(i32 noundef %i.af, i32 noundef %i.ag, ptr noundef nonnull %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @7)
          to label %.noexc15.i unwind label %bb.c, !noalias !7577 ; 2 uses

.noexc15.i:                                       ; preds = %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.i.i.i
  %i.aj = extractvalue { i32, i32 } %i.ai, 0
  %i.ak = extractvalue { i32, i32 } %i.ai, 1
  %i.al = invoke noundef zeroext i1 @_RNvMs5_NtCs8Xq8PKFYOms_3hir9semanticsINtB5_9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseE10is_nightlyCsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8 %i.v, i32 noundef %i.aj, i32 noundef %i.ak)
          to label %.noexc16.i unwind label %bb.c, !noalias !7577

.noexc16.i:                                       ; preds = %.noexc15.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 38
  %i.an = load i8, ptr %i.am, align 2, !range !14, !noalias !7582, !noundef !6
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 39
  %2 = load i16, ptr %i.ao, align 1, !noalias !7582
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7576
  %i.ap = load i32, ptr %.sroa.4.0.copyload, align 4, !range !16, !noalias !7582, !noundef !6
  %i.aq = load i32, ptr %i.w, align 4, !noalias !7582, !noundef !6
  %i.ar = load ptr, ptr %i.v, align 8, !noalias !7582, !nonnull !6, !align !9, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7576
  invoke void @_RNvNtNtCs6oosyzwIepl_6ide_db7imports13import_assets20item_for_path_search(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(none) dereferenceable(20) %i.b, ptr noundef nonnull align 8 %i.ar, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(20) %i.e)
          to label %.noexc17.i unwind label %bb.c, !noalias !7577

.noexc17.i:                                       ; preds = %.noexc16.i
  %i.as = load i32, ptr %i.b, align 4, !range !10, !noalias !7576, !noundef !6
  %.not16.i.i.i = icmp eq i32 %i.as, -1
  br i1 %.not16.i.i.i, label %bb.h, label %bb.g

bb.f:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7576
  br label %bb.t

_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.thread.i.i.i: ; preds = %.noexc19.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7576
  br label %bb.t

bb.g:                                             ; preds = %.noexc17.i
  %.sroa.511.0.insert.ext.i.i.i = zext i16 %2 to i32
  %.sroa.511.0.insert.shift.i.i.i = shl nuw nsw i32 %.sroa.511.0.insert.ext.i.i.i, 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.a, ptr noundef nonnull align 4 dereferenceable(20) %i.b, i64 20, i1 false), !noalias !7576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7576
  %.sroa.612.0.insert.shift.i.i.i = select i1 %i.al, i32 16777216, i32 0
  %.sroa.410.0.insert.insert.i.i.i = or disjoint i32 %.sroa.511.0.insert.shift.i.i.i, %.sroa.612.0.insert.shift.i.i.i
  %.sroa.09.0.insert.ext.i.i.i = zext nneg i8 %i.an to i32
  %.sroa.09.0.insert.insert.i.i.i = or disjoint i32 %.sroa.410.0.insert.insert.i.i.i, %.sroa.09.0.insert.ext.i.i.i
  invoke void @_RINvMs4_Cs8Xq8PKFYOms_3hirNtB6_6Module9find_pathNtB6_8ItemInNsECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, i32 noundef %i.ap, i32 noundef %i.aq, ptr noundef nonnull %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) @13, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(20) %i.a, i32 noundef %.sroa.09.0.insert.insert.i.i.i)
          to label %.noexc18.i unwind label %bb.c, !noalias !7577

.noexc18.i:                                       ; preds = %bb.g
  %i.at = load i8, ptr %i.s, align 8, !range !33, !noalias !7576, !noundef !6
  %.not17.i.i.i = icmp eq i8 %i.at, -1
  br i1 %.not17.i.i.i, label %.noexc19.sink.split.i, label %bb.i

bb.h:                                             ; preds = %.noexc17.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7576
  br label %.noexc19.sink.split.i

bb.i:                                             ; preds = %.noexc18.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !7576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7576
  %i.au = load i32, ptr %.sroa.4.0.copyload, align 4, !range !16, !noalias !7582, !noundef !6
  %i.av = load i32, ptr %i.w, align 4, !noalias !7582, !noundef !6
  %i.aw = load ptr, ptr %i.v, align 8, !noalias !7582, !nonnull !6, !align !9, !noundef !6
  %i.ax = invoke { i32, i32 } @_RNvMs4_Cs8Xq8PKFYOms_3hirNtB5_6Module5krate(i32 noundef %i.au, i32 noundef %i.av, ptr noundef nonnull %i.aw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @7)
          to label %bb.k unwind label %bb.j, !noalias !7582 ; 2 uses

.noexc19.sink.split.i:                            ; preds = %bb.h, %.noexc18.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7576
  br label %.noexc19.i

.noexc19.i:                                       ; preds = %bb.p, %.noexc19.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7576
  br label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.thread.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i, %bb.q, %bb.j
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ay, %bb.j ], [ %i.bn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i ], [ %i.bn, %bb.q ]
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %bb.u unwind label %bb.s, !noalias !7582

bb.j:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.az = extractvalue { i32, i32 } %i.ax, 0
  %i.ba = extractvalue { i32, i32 } %i.ax, 1
  %i.bb = load ptr, ptr %i.v, align 8, !noalias !7582, !nonnull !6, !align !9, !noundef !6
  %i.bc = invoke noundef i8 @_RNvMs_Cs8Xq8PKFYOms_3hirNtB4_5Crate7edition(i32 noundef %i.az, i32 noundef %i.ba, ptr noundef nonnull %i.bb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @7)
          to label %bb.l unwind label %bb.j, !noalias !7582 ; 2 uses

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.bd = load ptr, ptr %i.v, align 8, !noalias !7582, !nonnull !6, !align !9, !noundef !6
  %i.be = invoke noundef nonnull ptr @_RNvNtCs6oosyzwIepl_6ide_db7helpers28mod_path_to_ast_with_factory(ptr noundef nonnull align 8 %.sroa.5.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d, i8 noundef %i.bc)
          to label %bb.m unwind label %bb.j, !noalias !7582

bb.m:                                             ; preds = %bb.l
  %i.bf = invoke { i64, ptr } @_RNvNtCs6oosyzwIepl_6ide_db23use_trivial_constructor36use_trivial_constructor_with_factory(ptr noundef nonnull align 8 %.sroa.5.0.copyload, ptr noundef nonnull align 8 %i.bd, ptr noundef nonnull %i.be, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g, i8 noundef %i.bc)
          to label %bb.n unwind label %bb.j, !noalias !7582 ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.bg = extractvalue { i64, ptr } %i.bf, 0      ; 2 uses
  %.not18.i.i.i = icmp eq i64 %i.bg, -1
  br i1 %.not18.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = extractvalue { i64, ptr } %i.bf, 1      ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !7583, !noalias !7577, !nonnull !6, !noundef !6
  %i.bk = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !7583, !noalias !7577, !noundef !6
  %i.bm = invoke noundef nonnull ptr @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory8name_ref(ptr noundef nonnull align 8 %.sroa.5.0.copyload, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bj, i64 noundef %i.bl)
          to label %bb.r unwind label %bb.q, !noalias !7582

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %.noexc19.i unwind label %bb.c, !noalias !7577

bb.q:                                             ; preds = %bb.o
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bh) ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 48 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !noalias !7582, !noundef !6
  %i.bq = add i32 %i.bp, -1                       ; 2 uses
  store i32 %i.bq, ptr %i.bo, align 4, !noalias !7582
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i: ; preds = %bb.q
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bh) #27
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i unwind label %bb.s, !noalias !7582

bb.r:                                             ; preds = %bb.o
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %.noexc20.i unwind label %bb.c, !noalias !7577

.noexc20.i:                                       ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7576
  br label %bb.t

bb.s:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #26, !noalias !7582
  unreachable

bb.t:                                             ; preds = %.noexc20.i, %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.thread.i.i.i, %bb.f
  %.sroa.10.0.i.i = phi ptr [ undef, %bb.f ], [ undef, %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.thread.i.i.i ], [ %i.bh, %.noexc20.i ]
  %.sroa.4.3.i.i = phi i64 [ -2, %bb.f ], [ -2, %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.thread.i.i.i ], [ %i.bg, %.noexc20.i ]
  %.sroa.0.0.i.i = phi ptr [ undef, %bb.f ], [ undef, %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.thread.i.i.i ], [ %i.bm, %.noexc20.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7575
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i ; 3 uses
  store ptr %.sroa.0.0.i.i, ptr %i.bt, align 8, !noalias !7584
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 %.sroa.4.3.i.i, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !7584
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store ptr %.sroa.10.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !7584
  %i.bu = add i64 %.val10.i, 1                    ; 2 uses
  %i.bv = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.bw = icmp eq i64 %i.bv, %i.p
  br i1 %i.bw, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2t_8adapters3map8map_foldRBQ_INtNtBb_6option6OptionTNtB1v_7NameRefIB3M_NtB1v_4ExprEEEuNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12generate_new12generate_news0_00NCINvNvB2n_8for_each4callB3L_NCINvMsk_NtBV_3vecINtB6z_3VecB3L_E14extend_trustedINtB3d_3MapBF_B4G_EE0E0E0EB4Q_.exit, label %bb.d

bb.u:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.x, %bb.c ], [ %.pn.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !7577
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2t_8adapters3map8map_foldRBQ_INtNtBb_6option6OptionTNtB1v_7NameRefIB3M_NtB1v_4ExprEEEuNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12generate_new12generate_news0_00NCINvNvB2n_8for_each4callB3L_NCINvMsk_NtBV_3vecINtB6z_3VecB3L_E14extend_trustedINtB3d_3MapBF_B4G_EE0E0E0EB4Q_.exit: ; preds = %bb.t, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.bu, %bb.t ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !7577
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatINtNtBc_6option6OptionNtB1q_4TypeENtCs8Xq8PKFYOms_3hir5ParamEENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11inline_call6inlines_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4l_8for_each4callINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB1q_8PathExprENCINvMsk_B5r_IB5p_B5o_E14extend_trustedBN_E0E0EB3n_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 4                ; 5 uses
  %i.h = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.01.0.copyload = load ptr, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load <2 x ptr>, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.m = icmp eq ptr %i.h, %i.j
  br i1 %i.m, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatINtNtBb_6option6OptionNtBT_4TypeENtCs8Xq8PKFYOms_3hir5ParamEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2N_8adapters3map8map_foldRBQ_INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBT_8PathExprEuNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11inline_call6inlines_0NCINvNvB2H_8for_each4callB45_NCINvMsk_B48_IB46_B45_E14extend_trustedINtB3x_3MapBF_B4S_EE0E0E0EB50_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = ptrtoint ptr %i.h to i64
  %i.p = sub nuw i64 %i.n, %i.o
  %i.q = udiv exact i64 %i.p, 88
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.s = getelementptr i8, ptr %.sroa.4.0.copyload, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.7.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.10.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.d

bb.c:                                             ; preds = %.noexc18.i, %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11inline_call6inline0B7_.exit.i.i.i, %.noexc16.i, %bb.g, %bb.f, %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.d:                                             ; preds = %bb.k, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.ao, %bb.k ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.ap, %bb.k ] ; 2 uses
  %i.x = getelementptr inbounds nuw [88 x i8], ptr %i.h, i64 %.sroa.01.0.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7601)
  call void @llvm.experimental.noalias.scope.decl(metadata !7602)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !30, !alias.scope !7603, !noalias !7604, !noundef !6
  %i.ab = icmp eq i64 %i.aa, 3
  br i1 %i.ab, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ad = invoke noundef zeroext i1 @_RNvMsA_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtB7_9generated5nodes8IdentPat15is_simple_ident(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac)
end_hunk_0
