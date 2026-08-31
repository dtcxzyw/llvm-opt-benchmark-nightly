Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.11?download=true
inline.NumInlined: 4306
inline.NumDeleted: 1709
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNvXs0_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags31rustc_layout_scalar_valid_range1__NtB5_46rustc_layout_scalar_valid_range_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute:bb.a
.thread166.thread178.i.i.i.i:                     ; preds = %bb.fe
  %i.ns = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.fj:                                            ; preds = %.thread166.i.i.i.i
  br i1 %i.nn, label %bb.fl, label %.body.i.i.i.i

bb.fk:                                            ; preds = %.thread166.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.15.1160.i.i.i.i) ]
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.15.1160.i.i.i.i, i64 48 ; 2 uses
  %i.nu = load i32, ptr %i.nt, align 4, !noalias !5838, !noundef !19
  %i.nv = add i32 %i.nu, -1                       ; 2 uses
  store i32 %i.nv, ptr %i.nt, align 4, !noalias !5838
  %i.nw = icmp eq i32 %i.nv, 0
  br i1 %i.nw, label %.invoke.i.i.i.i, label %.body.i.i.i.i

bb.fl:                                            ; preds = %bb.fj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.15.1160.i.i.i.i) ]
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.15.1160.i.i.i.i, i64 48 ; 2 uses
  %i.ny = load i32, ptr %i.nx, align 4, !noalias !5838, !noundef !19
  %i.nz = add i32 %i.ny, -1                       ; 2 uses
  store i32 %i.nz, ptr %i.nx, align 4, !noalias !5838
  %i.oa = icmp eq i32 %i.nz, 0
  br i1 %i.oa, label %.invoke.i.i.i.i, label %.body.i.i.i.i

.invoke.i.i.i.i:                                  ; preds = %bb.fl, %bb.fk
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.15.1160.i.i.i.i) #43
          to label %.body.i.i.i.i unwind label %bb.ci, !noalias !5838

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecATNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtB1e_4AttrEj1_EECsileJQcQObtj_7hir_def.exit.i.i.i.i: ; preds = %bb.fh, %.body.i.i.i.i
  %.pn39.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.nm, %bb.fh ], [ %.pn39.pn.pn.i.i.i.i, %.body.i.i.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_5chain5ChainIB1a_INtNtBG_7flatten7FlatMapINtNtB4_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileEINtB2q_11AstChildrenNtB2m_4AttrENCINvNtCsileJQcQObtj_7hir_def5attrs13collect_attrsNtNtB4_7convert10InfallibleNCNvNvXs0_NvNvMsl_B3V_NtB3V_9AttrFlags31rustc_layout_scalar_valid_range1__NtB5f_46rustc_layout_scalar_valid_range_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_0E0EIB1z_IB1X_INtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB8t_9HirFileIdNtB2m_6ModuleEEB3k_NCB3S_s_0EEIB1a_INtNtBG_6filter6FilterB3k_NCNvNtB2q_6traits21attrs_including_inner0EIBa4_IB1z_IB1X_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB2s_11syntax_node12RustLanguageEEB3k_NCBav_s_0ENCBav_s0_0EEENcNtINtCs83ee1IJTiSq_6either6EitherB3E_B4E_E4Left0EEB3X_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.l) #39
          to label %.body.i.i unwind label %bb.ci, !noalias !5838

_RINvNtCs33K2ylI4knu_10hir_expand5attrs33expand_cfg_attr_with_doc_commentsNtNtCshzWfHUSfYae_4core7convert10InfallibleB19_INtNtNtNtB1d_4iter8adapters3map3MapINtNtB1Z_5chain5ChainIB2u_INtNtB1Z_7flatten7FlatMapINtNtB1d_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileEINtB3N_11AstChildrenNtB3J_4AttrENCINvNtCsileJQcQObtj_7hir_def5attrs13collect_attrsB19_NCNvNvXs0_NvNvMsl_B5i_NtB5i_9AttrFlags31rustc_layout_scalar_valid_range1__NtB6f_46rustc_layout_scalar_valid_range_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_0E0EIB2U_IB3j_INtNtB4_5files13InFileWrapperNtB4_9HirFileIdNtB3J_6ModuleEEB4H_NCB5f_s_0EEIB2u_INtNtB1Z_6filter6FilterB4H_NCNvNtB3N_6traits21attrs_including_inner0EIBaG_IB2U_IB3j_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB3P_11syntax_node12RustLanguageEEB4H_NCBb8_s_0ENCBb8_s0_0EEENcNtINtCs83ee1IJTiSq_6either6EitherB51_B19_E4Left0ENCB5f_s0_0NCINvB2_15expand_cfg_attrB19_B2t_Bex_NCB5f_s1_0E0EB5k_.exit.i.i.i: ; preds = %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBX_INtNtB7_7flatten7FlatMapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileEINtB2c_11AstChildrenNtB28_4AttrENCINvNtCsileJQcQObtj_7hir_def5attrs13collect_attrsNtNtBb_7convert10InfallibleNCNvNvXs0_NvNvMsl_B3H_NtB3H_9AttrFlags31rustc_layout_scalar_valid_range1__NtB51_46rustc_layout_scalar_valid_range_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_0E0EIB1l_IB1J_INtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB8f_9HirFileIdNtB28_6ModuleEEB36_NCB3E_s_0EEIBX_INtNtB7_6filter6FilterB36_NCNvNtB2c_6traits21attrs_including_inner0EIB9P_IB1l_IB1J_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB2e_11syntax_node12RustLanguageEEB36_NCBag_s_0ENCBag_s0_0EEENcNtINtCs83ee1IJTiSq_6either6EitherB3q_B4q_E4Left0ENtNtNtB9_6traits8iterator8Iterator4nextB3J_.exit.thread148.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5836
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_5chain5ChainIB1a_INtNtBG_7flatten7FlatMapINtNtB4_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileEINtB2q_11AstChildrenNtB2m_4AttrENCINvNtCsileJQcQObtj_7hir_def5attrs13collect_attrsNtNtB4_7convert10InfallibleNCNvNvXs0_NvNvMsl_B3V_NtB3V_9AttrFlags31rustc_layout_scalar_valid_range1__NtB5f_46rustc_layout_scalar_valid_range_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_0E0EIB1z_IB1X_INtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB8t_9HirFileIdNtB2m_6ModuleEEB3k_NCB3S_s_0EEIB1a_INtNtBG_6filter6FilterB3k_NCNvNtB2q_6traits21attrs_including_inner0EIBa4_IB1z_IB1X_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB2s_11syntax_node12RustLanguageEEB3k_NCBav_s_0ENCBav_s0_0EEENcNtINtCs83ee1IJTiSq_6either6EitherB3E_B4E_E4Left0EEB3X_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.l)
          to label %bb.fm unwind label %bb.c, !noalias !5799

bb.fm:                                            ; preds = %_RINvNtCs33K2ylI4knu_10hir_expand5attrs33expand_cfg_attr_with_doc_commentsNtNtCshzWfHUSfYae_4core7convert10InfallibleB19_INtNtNtNtB1d_4iter8adapters3map3MapINtNtB1Z_5chain5ChainIB2u_INtNtB1Z_7flatten7FlatMapINtNtB1d_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileEINtB3N_11AstChildrenNtB3J_4AttrENCINvNtCsileJQcQObtj_7hir_def5attrs13collect_attrsB19_NCNvNvXs0_NvNvMsl_B5i_NtB5i_9AttrFlags31rustc_layout_scalar_valid_range1__NtB6f_46rustc_layout_scalar_valid_range_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_0E0EIB2U_IB3j_INtNtB4_5files13InFileWrapperNtB4_9HirFileIdNtB3J_6ModuleEEB4H_NCB5f_s_0EEIB2u_INtNtB1Z_6filter6FilterB4H_NCNvNtB3N_6traits21attrs_including_inner0EIBaG_IB2U_IB3j_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB3P_11syntax_node12RustLanguageEEB4H_NCBb8_s_0ENCBb8_s0_0EEENcNtINtCs83ee1IJTiSq_6either6EitherB51_B19_E4Left0ENCB5f_s0_0NCINvB2_15expand_cfg_attrB19_B2t_Bex_NCB5f_s1_0E0EB5k_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.val.i.i = load ptr, ptr %i.q, align 8, !alias.scope !5800, !noalias !5796, !nonnull !19, !noundef !19 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 48 ; 2 uses
  %i.oc = load i32, ptr %i.ob, align 4, !noalias !5986, !noundef !19
  %i.od = add i32 %i.oc, -1                       ; 2 uses
  store i32 %i.od, ptr %i.ob, align 4, !noalias !5986
  %i.oe = icmp eq i32 %i.od, 0
  br i1 %i.oe, label %bb.fn, label %_RNvNvXs0_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBf_9AttrFlags31rustc_layout_scalar_valid_range1__NtB7_46rustc_layout_scalar_valid_range_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_.exit

bb.fn:                                            ; preds = %bb.fm
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i.i) #43, !noalias !5986
  br label %_RNvNvXs0_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBf_9AttrFlags31rustc_layout_scalar_valid_range1__NtB7_46rustc_layout_scalar_valid_range_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_.exit

bb.fo:                                            ; preds = %bb.a
  %i.of = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_7flatten7FlatMapINtNtB4_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileEINtB25_11AstChildrenNtB21_4AttrENCINvNtCsileJQcQObtj_7hir_def5attrs13collect_attrsNtNtB4_7convert10InfallibleNCNvNvXs0_NvNvMsl_B3A_NtB3A_9AttrFlags31rustc_layout_scalar_valid_range1__NtB4U_46rustc_layout_scalar_valid_range_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_0E0EIB1e_IB1C_INtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB88_9HirFileIdNtB21_6ModuleEEB2Z_NCB3x_s_0EEEB3C_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.o) #39
          to label %.body.i.i unwind label %bb.fp, !noalias !5799

bb.fp:                                            ; preds = %bb.fo, %bb.b
  %i.og = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !5799
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11AnyHasAttrsEECsileJQcQObtj_7hir_def.exit.i.i: ; preds = %bb.b, %.body.i.i
  resume { ptr, i32 } %.pn.i.i

_RNvNvXs0_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBf_9AttrFlags31rustc_layout_scalar_valid_range1__NtB7_46rustc_layout_scalar_valid_range_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_.exit: ; preds = %bb.fm, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5777
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.526.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5777
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.i, i64 16, i1 false), !noalias !5989
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !noalias !5989
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.6.i, i64 16, i1 false), !noalias !5989
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.8.i, i64 16, i1 false), !noalias !5989
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4cfgs1__NtB5_19cfgs_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration11id_to_input(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa19lookup_page_type_id(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.a, ptr noundef nonnull align 8 %1, i32 noundef %2) #40
  %i.b = load i128, ptr %i.a, align 16, !alias.scope !5990, !noalias !5993, !noundef !19
  switch i128 %i.b, label %_RNvXs0_NvCsileJQcQObtj_7hir_defsq_1__NtB7_9AttrDefIdNtNtCsd9Lm8bEdjjY_5salsa12salsa_struct15SalsaStructInDb4cast.exit [
    i128 23998263827229183792959929123520229578, label %bb.r
    i128 -97184270617010861658353207146752761079, label %bb.d
    i128 -62411650611649667411066111649662297105, label %bb.b
    i128 -20990837537062668899120981839717642698, label %bb.c
    i128 -21874841680126783175296719439851744756, label %bb.e
    i128 79519546736350100141851160739474990204, label %bb.f
    i128 -159355729960196945567270460952592882941, label %bb.g
    i128 -98840270010909393136961367925282537589, label %bb.h
    i128 -151273950820976664405559179168159279077, label %bb.i
    i128 152750080780635426876197659287071528989, label %bb.l
    i128 119471348532951577862931370000254497398, label %bb.m
    i128 17563489064049214559708873980706820793, label %bb.j
    i128 74921997000100453082775561577847586285, label %bb.k
    i128 -1955046672703350699932221219368760523, label %bb.n
    i128 -163920021159244417168287089547550353597, label %bb.o
    i128 -49000117291128915288575155700179464822, label %bb.p
    i128 -163360047050819586882371396158206893472, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  br label %bb.r

bb.d:                                             ; preds = %bb.a
  br label %bb.r

bb.e:                                             ; preds = %bb.a
  br label %bb.r

bb.f:                                             ; preds = %bb.a
  br label %bb.r

bb.g:                                             ; preds = %bb.a
  br label %bb.r

bb.h:                                             ; preds = %bb.a
  br label %bb.r

bb.i:                                             ; preds = %bb.a
  br label %bb.r

bb.j:                                             ; preds = %bb.a
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  br label %bb.r

bb.l:                                             ; preds = %bb.a
  br label %bb.r

bb.m:                                             ; preds = %bb.a
  br label %bb.r

bb.n:                                             ; preds = %bb.a
  br label %bb.r

bb.o:                                             ; preds = %bb.a
  br label %bb.r

bb.p:                                             ; preds = %bb.a
  br label %bb.r

bb.q:                                             ; preds = %bb.a
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.a, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.l, %bb.d, %bb.n, %bb.o, %bb.p, %bb.c, %bb.b, %bb.k, %bb.j, %bb.m
  %.sroa.31.0.ph = phi i32 [ %2, %bb.m ], [ %2, %bb.j ], [ %2, %bb.k ], [ %2, %bb.b ], [ %2, %bb.c ], [ %3, %bb.p ], [ %3, %bb.o ], [ %3, %bb.n ], [ %2, %bb.d ], [ %3, %bb.l ], [ %3, %bb.i ], [ %3, %bb.h ], [ %3, %bb.g ], [ %3, %bb.f ], [ %3, %bb.e ], [ %3, %bb.a ], [ %3, %bb.q ]
  %.sroa.18.0.ph = phi i32 [ 0, %bb.m ], [ 1, %bb.j ], [ 2, %bb.k ], [ 1, %bb.b ], [ 2, %bb.c ], [ %2, %bb.p ], [ %2, %bb.o ], [ %2, %bb.n ], [ 0, %bb.d ], [ %2, %bb.l ], [ %2, %bb.i ], [ %2, %bb.h ], [ %2, %bb.g ], [ %2, %bb.f ], [ %2, %bb.e ], [ %2, %bb.a ], [ %2, %bb.q ]
  %.sroa.0.0.ph = phi i32 [ 8, %bb.m ], [ 8, %bb.j ], [ 8, %bb.k ], [ 1, %bb.b ], [ 1, %bb.c ], [ 11, %bb.p ], [ 10, %bb.o ], [ 9, %bb.n ], [ 1, %bb.d ], [ 7, %bb.l ], [ 6, %bb.i ], [ 5, %bb.h ], [ 4, %bb.g ], [ 3, %bb.f ], [ 2, %bb.e ], [ 0, %bb.a ], [ 12, %bb.q ]
  store i32 %.sroa.0.0.ph, ptr %0, align 4
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.18.0.ph, ptr %.sroa.18.0..sroa_idx, align 4
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.31.0.ph, ptr %.sroa.31.0..sroa_idx, align 4
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %3, ptr %.sroa.44.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RNvXs0_NvCsileJQcQObtj_7hir_defsq_1__NtB7_9AttrDefIdNtNtCsd9Lm8bEdjjY_5salsa12salsa_struct15SalsaStructInDb4cast.exit: ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @318, i64 noundef 20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @324) #41
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4cfgs1__NtB5_19cfgs_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration12values_equal(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !3978, !noundef !19 ; 3 uses
  %.not = icmp eq i64 %i.a, -1
  %i.b = load i64, ptr %1, align 8, !range !3978, !noundef !19 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %.lr.ph.i, label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %i.b, -1
  br label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit: ; preds = %tailrecurse.i, %.lr.ph.i, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.b, %bb.c
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.b ], [ %i.d, %bb.c ], [ false, %bb.j ], [ false, %bb.d ], [ %i.ab, %bb.i ], [ %spec.select.i.i, %bb.f ], [ %i.al, %bb.k ], [ false, %bb.h ], [ %4, %bb.g ], [ false, %tailrecurse.i ], [ true, %.lr.ph.i ]
  ret i1 %.sroa.0.0.shrunk

.lr.ph.i:                                         ; preds = %bb.b, %tailrecurse.i
  %i.e = phi i64 [ %i.j, %tailrecurse.i ], [ %i.a, %bb.b ]
  %.tr717.i = phi ptr [ %i.i, %tailrecurse.i ], [ %1, %bb.b ] ; 7 uses
  %.tr16.i = phi ptr [ %i.g, %tailrecurse.i ], [ %0, %bb.b ] ; 7 uses
  switch i64 %i.e, label %default.unreachable [
    i64 1, label %bb.d
    i64 2, label %bb.h
    i64 3, label %bb.j
    i64 4, label %tailrecurse.i
    i64 0, label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit
  ]

default.unreachable:                              ; preds = %.lr.ph.i
  unreachable

tailrecurse.i:                                    ; preds = %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %.tr16.i, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noalias !5995, !nonnull !19, !noundef !19 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.tr717.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !noalias !5998, !nonnull !19, !noundef !19 ; 2 uses
  %i.j = load i64, ptr %i.g, align 8, !range !1374, !noalias !6000, !noundef !19 ; 2 uses
  %i.k = load i64, ptr %i.i, align 8, !range !1374, !noalias !6000, !noundef !19
  %i.l = icmp eq i64 %i.j, %i.k
  br i1 %i.l, label %.lr.ph.i, label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.tr16.i, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.tr717.i, i64 8
  %.val.i.a = load ptr, ptr %i.m, align 8, !noalias !5995, !noundef !19 ; 2 uses
  %.val5.i = load ptr, ptr %i.n, align 8, !noalias !5998, !noundef !19 ; 3 uses
  %i.o = icmp ne ptr %.val.i.a, null              ; 2 uses
  %i.p = icmp eq ptr %.val5.i, null               ; 3 uses
  %not..i.i = xor i1 %i.p, true
  %i.q = xor i1 %i.o, %i.p
  br i1 %i.q, label %bb.e, label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %2 = getelementptr inbounds nuw i8, ptr %.tr717.i, i64 16
  %.val6.i = load ptr, ptr %2, align 8, !noalias !5998
  %3 = getelementptr inbounds nuw i8, ptr %.tr16.i, i64 16
  %.val4.i = load ptr, ptr %3, align 8, !noalias !5995
  %4 = icmp eq ptr %.val4.i, %.val6.i             ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.assume(i1 %not..i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i) ]
  %i.r = icmp eq ptr %.val.i.a, %.val5.i
  %spec.select.i.i = select i1 %i.r, i1 %4, i1 false
  br label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.assume(i1 %i.p)
  br label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.s = getelementptr inbounds nuw i8, ptr %.tr16.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noalias !5995, !noundef !19 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.tr717.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noalias !5998, !noundef !19
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.i, label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.tr717.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !5998, !nonnull !19, !noundef !19
  %i.z = getelementptr inbounds nuw i8, ptr %.tr16.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !5995, !nonnull !19, !noundef !19
  %i.ab = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.y, i64 noundef %i.t), !noalias !6000, !inline_history !6001
  br label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %.lr.ph.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr16.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !5995, !noundef !19 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr717.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noalias !5998, !noundef !19
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.k, label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr717.i, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !5998, !nonnull !19, !noundef !19
  %i.aj = getelementptr inbounds nuw i8, ptr %.tr16.i, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !5995, !nonnull !19, !noundef !19
  %i.al = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ai, i64 noundef %i.ad), !noalias !6000, !inline_history !6001
  br label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: cold noreturn nonlazybind uwtable
define void @_RNvXs0_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4cfgs1__NtB5_19cfgs_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration13cycle_initial(ptr dead_on_unwind noalias nofree noundef readnone sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(240) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %5) unnamed_addr #12 {
bb.a:
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @316, ptr noundef nonnull inttoptr (i64 45 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @340) #41
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtBd_9AttrFlags4cfgs1__NtB5_19cfgs_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %2, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [8 x i8], align 8                 ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 15 uses
  %i.g = alloca [168 x i8], align 8               ; 20 uses
  %i.h = alloca [64 x i8], align 8                ; 8 uses
  %i.i = alloca [64 x i8], align 8                ; 4 uses
  %i.j = alloca [104 x i8], align 8               ; 11 uses
  %i.k = alloca [168 x i8], align 8               ; 5 uses
  %.sroa.526.i.i = alloca [32 x i8], align 8      ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6002)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !6005
  store i64 0, ptr %i.o, align 8, !noalias !6005
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.p, align 8, !noalias !6005
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8, !noalias !6005
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6005
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.526.i.i)
  invoke fastcc void @_RNvNtCsileJQcQObtj_7hir_def5attrs12attrs_source(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %i.h, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3)
          to label %.noexc.i unwind label %.thread16.i, !noalias !6002

.noexc.i:                                         ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !6008
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !6008
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !noalias !6008, !noundef !19
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.v = load i32, ptr %i.u, align 8, !range !1451, !noalias !6008, !noundef !19
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 60
  %i.x = load i32, ptr %i.w, align 4, !noalias !6008, !noundef !19
  %.sroa.526.32..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.526.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.526.32..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !6008
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !6008
  store i64 1, ptr %i.j, align 8, !noalias !6008
  %.sroa.419.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.t, ptr %.sroa.419.0..sroa_idx.i.i, align 8, !noalias !6008
  %.sroa.520.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %.sroa.520.0..sroa_idx.i.i, align 8, !noalias !6008
  %.sroa.722.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i64 0, ptr %.sroa.722.0..sroa_idx.i.i, align 8, !noalias !6008
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i64 0, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !6008
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i64 0, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !6008
  %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.526.i.i, i64 32, i1 false), !noalias !6008
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6008
  invoke void @_RNvNtNtCsjJXvCMGntp8_6syntax3ast6traits21attrs_including_inner(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.i, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @45)
          to label %bb.d unwind label %bb.dv, !noalias !6013

.body.i.i:                                        ; preds = %bb.dv, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecATNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtB1e_4AttrEj1_EECsileJQcQObtj_7hir_def.exit.i.i.i.i, %bb.c
  %.pn.i.i = phi { ptr, i32 } [ %i.ac, %bb.c ], [ %i.kg, %bb.dv ], [ %.pn39.pn.pn.pn.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecATNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtB1e_4AttrEj1_EECsileJQcQObtj_7hir_def.exit.i.i.i.i ] ; 2 uses
  %.val11.i.i = load ptr, ptr %i.l, align 8, !alias.scope !6014, !noalias !6008, !nonnull !19, !noundef !19 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 48 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !noalias !6017, !noundef !19
  %i.aa = add i32 %i.z, -1                        ; 2 uses
  store i32 %i.aa, ptr %i.y, align 4, !noalias !6017
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.b, label %.thread11.i

bb.b:                                             ; preds = %.body.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val11.i.i) #43
          to label %.thread11.i unwind label %bb.dw, !noalias !6020

bb.c:                                             ; preds = %_RINvNtCs33K2ylI4knu_10hir_expand5attrs33expand_cfg_attr_with_doc_commentsNtNtCshzWfHUSfYae_4core7convert10InfallibleB19_INtNtNtNtB1d_4iter8adapters3map3MapINtNtB1Z_5chain5ChainIB2u_INtNtB1Z_7flatten7FlatMapINtNtB1d_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileEINtB3N_11AstChildrenNtB3J_4AttrENCINvNtCsileJQcQObtj_7hir_def5attrs13collect_attrsB19_NCNvNvXs0_NvNvMsl_B5i_NtB5i_9AttrFlags4cfgs1__NtB6f_19cfgs_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_0E0EIB2U_IB3j_INtNtB4_5files13InFileWrapperNtB4_9HirFileIdNtB3J_6ModuleEEB4H_NCB5f_s_0EEIB2u_INtNtB1Z_6filter6FilterB4H_NCNvNtB3N_6traits21attrs_including_inner0EIB9N_IB2U_IB3j_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB3P_11syntax_node12RustLanguageEEB4H_NCBaf_s_0ENCBaf_s0_0EEENcNtINtCs83ee1IJTiSq_6either6EitherB51_B19_E4Left0ENCB5f_s0_0NCINvB2_15expand_cfg_attrB19_B2t_BdE_NCB5f_s1_0E0EB5k_.exit.i.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.d:                                             ; preds = %.noexc.i
  call void @llvm.experimental.noalias.scope.decl(metadata !6021)
  call void @llvm.experimental.noalias.scope.decl(metadata !6024)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.j, i64 104, i1 false), !alias.scope !6026, !noalias !6028
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.i, i64 64, i1 false), !alias.scope !6029, !noalias !6030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6008
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6031
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(168) %i.k, i64 168, i1 false), !alias.scope !6036, !noalias !6040
  call void @llvm.experimental.noalias.scope.decl(metadata !6041)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6044
  store i64 0, ptr %i.f, align 8, !noalias !6044
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  %.sroa.gep.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 10 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 11 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 10 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 96 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 104 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 112 ; 13 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 120 ; 10 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 152 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 144 ; 2 uses
  %.sroa.5.0..sroa_idx4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 156 ; 2 uses
  %.sroa.57.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 128 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 136 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.e

.body.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i, %bb.ds, %bb.dr, %bb.dq, %.thread164.thread176.i.i.i.i, %.thread164.thread176.thread.i.i.i.i, %bb.cp, %bb.co, %bb.cj, %bb.ch, %bb.cg, %bb.cf, %bb.by, %bb.bs, %bb.bn, %bb.bm, %bb.bd, %bb.bc, %bb.az, %bb.al, %bb.aj, %bb.ai, %bb.y, %bb.x, %bb.u, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i, %.loopexit.i.i.i.i
  %.pn39.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn39163.i.i.i.i, %bb.ds ], [ %lpad.thr_comm.split-lp.i.i.i.i, %bb.cj ], [ %i.gs, %bb.cf ], [ %.pn39163.i.i.i.i, %bb.dr ], [ %.pn39163.i.i.i.i, %bb.dq ], [ %i.gh, %bb.by ], [ %lpad.phi15.i.i.i7.i.i.i.i.i.i.i.i.i, %bb.bd ], [ %i.jt, %.thread164.thread176.i.i.i.i ], [ %eh.lpad-body.i.i.i.i.i.i.i, %bb.bs ], [ %lpad.phi15.i.i.i.i.i.i.i.i.i.i.i.i, %bb.x ], [ %i.df, %bb.al ], [ %lpad.phi.i.i.i.i.i.i.i.i.i.i.i.i, %bb.u ], [ %lpad.phi20.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aj ], [ %i.dd, %bb.ai ], [ %lpad.phi15.i.i.i.i.i.i.i.i.i.i.i.i, %bb.y ], [ %lpad.phi15.i.i.i7.i.i.i.i.i.i.i.i.i, %bb.bc ], [ %lpad.phi.i.i.i32.i.i.i.i.i.i.i.i.i, %bb.az ], [ %lpad.phi20.i.i.i28.i.i.i.i.i.i.i.i.i, %bb.bn ], [ %i.fk, %bb.bm ], [ %i.gt, %bb.ch ], [ %i.gt, %bb.cg ], [ %lpad.loopexit.split-lp192.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i ], [ %.pn39163.i.i.i.i, %.invoke.i.i.i.i ], [ %i.hl, %bb.cp ], [ %i.hl, %bb.co ], [ %i.jm, %.thread164.thread176.thread.i.i.i.i ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit191.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i ]
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBL_4AttrEj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecATNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtB1e_4AttrEj1_EECsileJQcQObtj_7hir_def.exit.i.i.i.i unwind label %bb.ci, !noalias !6047

.loopexit.i.i.i.i:                                ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4AttrEEECsileJQcQObtj_7hir_def.exit.i.i.i.i23.i.i.i.i.i.i.i.i.i, %bb.bf
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.loopexit.i.i.i.i:              ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4AttrEEECsileJQcQObtj_7hir_def.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aa
  %lpad.loopexit191.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.i.i.i:     ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileEINtB1V_11AstChildrenNtB1R_4AttrENCINvNtCsileJQcQObtj_7hir_def5attrs13collect_attrsNtNtBa_7convert10InfallibleNCNvNvXs0_NvNvMsl_B3q_NtB3q_9AttrFlags4cfgs1__NtB4K_19cfgs_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_0E0EIB14_IB1s_INtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB75_9HirFileIdNtB1R_6ModuleEEB2P_NCB3n_s_0EEIBO_INtNtB6_6filter6FilterB2P_NCNvNtB1V_6traits21attrs_including_inner0EIB8F_IB14_IB1s_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1X_11syntax_node12RustLanguageEEB2P_NCB96_s_0ENCB96_s0_0EEENtNtNtB8_6traits8iterator8Iterator4nextB3s_.exit.i.i.i.i.i, %.noexc7.i.i.i.i.i.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4AttrEEECsileJQcQObtj_7hir_def.exit.i.peel.i.i.i11.i.i.i.i.i.i.i.i.i, %bb.au, %.noexc.i.i.i.i.i.i.i.i.i.i, %bb.ae, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4AttrEEECsileJQcQObtj_7hir_def.exit.i.peel.i.i.i.i.i.i.i.i.i.i.i.i, %bb.p, %bb.i
  %lpad.loopexit.split-lp192.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.e:                                             ; preds = %.backedge.i.i.i.i, %bb.d
  %.sroa.031.0.i.i = phi ptr [ null, %bb.d ], [ %.sroa.031.1.i.i, %.backedge.i.i.i.i ] ; 7 uses
  %i.at = phi i64 [ 0, %bb.d ], [ %.pre.i.i.i.i, %.backedge.i.i.i.i ]
  %i.au = icmp ugt i64 %i.at, 1                   ; 2 uses
  %.sink9.idx.i.sroa.sel.i.i.i.i = select i1 %i.au, ptr %.sroa.gep.i.i.i.i, ptr %i.f ; 2 uses
  %i.av = load i64, ptr %.sink9.idx.i.sroa.sel.i.i.i.i, align 8, !noalias !6044, !noundef !19 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.f, label %bb.bu

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !6048)
  call void @llvm.experimental.noalias.scope.decl(metadata !6051)
  call void @llvm.experimental.noalias.scope.decl(metadata !6054)
  %i.ax = load i64, ptr %i.af, align 8, !range !992, !alias.scope !6057, !noalias !6058, !noundef !19 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ax, -1
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bt, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !6059)
  call void @llvm.experimental.noalias.scope.decl(metadata !6062)
  call void @llvm.experimental.noalias.scope.decl(metadata !6065)
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ax, 2
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.am, label %bb.h
end_hunk_0
