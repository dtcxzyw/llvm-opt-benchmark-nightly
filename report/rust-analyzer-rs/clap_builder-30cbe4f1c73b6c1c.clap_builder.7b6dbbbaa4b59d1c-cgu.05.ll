Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/clap_builder-30cbe4f1c73b6c1c.clap_builder.7b6dbbbaa4b59d1c-cgu.05?download=true
inline.NumInlined: 208
inline.NumDeleted: 147
begin_hunk_0_@_RNvMNtNtCsaB0tVqiIPBo_12clap_builder6parser9validatorNtB2_9Validator8validate:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !122
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdEEB1e_.exit.i unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %.body unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdEEB1e_.exit.i: ; preds = %bb.bh
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc52:                                         ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdEEB1e_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !119
  br label %.thread103

bb.bk:                                            ; preds = %.noexc51
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdEEB1e_.exit20.i unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.go = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %.body unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdEEB1e_.exit20.i: ; preds = %bb.bk
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %.noexc53 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc53:                                         ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdEEB1e_.exit20.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !119
  br label %bb.x

bb.bn:                                            ; preds = %.body.i
  %i.gq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.bo:                                            ; preds = %._crit_edge, %bb.e
  %.val19 = phi i32 [ %.val19.pre, %._crit_edge ], [ %.val17, %bb.e ]
  %.val18 = phi i32 [ %.val18.pre, %._crit_edge ], [ %.val16, %bb.e ]
  %i.gr = phi ptr [ %.pre, %._crit_edge ], [ %i.cc, %bb.e ] ; 4 uses
  %i.gs = and i32 %.val18, 512
  %.not.i29 = icmp ne i32 %i.gs, 0
  %i.gt = and i32 %.val19, 512
  %i.gu = icmp ne i32 %i.gt, 0
  %.sroa.0.0.i30 = select i1 %.not.i29, i1 true, i1 %i.gu
  br i1 %.sroa.0.0.i30, label %bb.bp, label %.critedge

bb.bp:                                            ; preds = %bb.bo
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 296
  %i.gw = load i64, ptr %i.gv, align 8, !range !4, !alias.scope !130, !noundef !5
  %.not.i54 = icmp eq i64 %i.gw, -1               ; 2 uses
  %.sroa.3.0.in.v.i = select i1 %.not.i54, i64 544, i64 312
  %.sroa.3.0.in.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.sroa.3.0.in.v.i
  %.sroa.0.0.in.v.i = select i1 %.not.i54, i64 536, i64 304
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.sroa.0.0.in.v.i
  %.sroa.0.0.i55 = load ptr, ptr %.sroa.0.0.in.i, align 8, !alias.scope !130, !nonnull !5, !noundef !5
  %.sroa.3.0.i56 = load i64, ptr %.sroa.3.0.in.i, align 8, !alias.scope !130, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bl, i64 noundef %.sroa.3.0.i56, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bq:                                            ; preds = %bb.bp
  %i.gx = load i64, ptr %i.bl, align 8, !range !131, !noundef !5
  %i.gy = trunc nuw i64 %i.gx to i1
  %i.gz = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.ha = load i64, ptr %i.gz, align 8, !range !132, !noundef !5 ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  br i1 %i.gy, label %bb.br, label %bb.bs, !prof !7

bb.br:                                            ; preds = %bb.bq
  %i.hc = load i64, ptr %i.hb, align 8
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.ha, i64 %i.hc) #16
          to label %bb.cd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bs:                                            ; preds = %bb.bq
  %i.hd = load ptr, ptr %i.hb, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.he = icmp ule i64 %.sroa.3.0.i56, %i.ha
  call void @llvm.assume(i1 %i.he)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  %.not11 = icmp eq i64 %.sroa.3.0.i56, 0
  br i1 %.not11, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hd, ptr nonnull align 1 %.sroa.0.0.i55, i64 %.sroa.3.0.i56, i1 false)
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bv
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.bv:                                            ; preds = %bb.bs, %bb.bt
  store i64 %i.ha, ptr %i.br, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.hd, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store i64 %.sroa.3.0.i56, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  %i.hg = load ptr, ptr %i.bw, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.hh = getelementptr i8, ptr %i.hg, i64 184
  %.val20 = load ptr, ptr %i.hh, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.hi = getelementptr i8, ptr %i.hg, i64 192
  %.val21 = load i64, ptr %i.hi, align 8, !noundef !5
  %i.hj = getelementptr inbounds nuw [688 x i8], ptr %.val20, i64 %.val21
  store i64 2, ptr %i.bp, align 8
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  store i64 2, ptr %.sroa.484.0..sroa_idx, align 8
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 80
  store ptr %.val20, ptr %.sroa.585.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.bp, i64 88
  store ptr %i.hj, ptr %.sroa.6.0..sroa_idx86, align 8
  invoke void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB1W_7flatten7FlatMapINtNtNtB20_5slice4iter4IterNtNtNtCsaB0tVqiIPBo_12clap_builder7builder7command7CommandEINtNtB1W_5chain5ChainINtNtNtB1Y_7sources4once4OnceReEIB1S_IB35_TNtNtB3z_3str3StrbEENCNvMs2_B3x_B3v_15get_all_aliases0EENCNvMs5_B3x_B3v_20all_subcommand_names0ENCNvMNtNtB3B_6parser9validatorNtB76_9Validator8validates_0EE9from_iterB3B_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.bp)
          to label %bb.bw unwind label %bb.bu

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  %i.hk = load ptr, ptr %i.bw, align 8, !nonnull !5, !align !6, !noundef !5
  invoke void @_RNvMNtNtCsaB0tVqiIPBo_12clap_builder6output5usageNtB2_5Usage3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.hk)
          to label %bb.bx unwind label %bb.ca

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldTRNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdRNtNtNtNtB12_6parser7matches11matched_arg10MatchedArgEjjNCINvNvXs1_NtB6_6filterINtB2K_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMNtB1M_9validatorNtB48_9Validator18validate_exclusive0E0NCINvXsK_NtB3h_5accumjNtB5a_3Sum3sumINtB4_3MapINtNtB10_8flat_map4IterBW_B1G_EB2z_EE0E0B12_.exit.i.i.i.i, %bb.l, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i, %bb.n, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowRNtNtNtB1d_7builder3arg3ArgENCNvMNtB1X_9validatorNtB3V_9Validator18validate_exclusives_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B3o_NCB3S_s0_0E0E0B1d_.exit.i.i.i, %bb.cg, %.loopexit.i.i, %bb.cm, %bb.ci, %bb.ch, %_RINvYINtNtNtCsaB0tVqiIPBo_12clap_builder4util8flat_map4IterNtNtB8_2id2IdNtNtNtNtBa_6parser7matches11matched_arg10MatchedArgENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1Y_4find5checkTRBV_RB18_EQNCNvMNtB1e_9validatorNtB3G_9Validator15gather_requires0E0INtNtNtB26_3ops12control_flow11ControlFlowB3p_EEBa_.exit.i.i, %.lr.ph.i.i63, %bb.y, %bb.z, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMNtB1X_9validatorNtB3y_9Validator18validate_conflicts0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3v_s_0E0E0B1d_.exit.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdEEB1e_.exit20.i, %bb.aa, %bb.x, %.noexc27, %.lr.ph.i.i, %bb.by, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdEEB1e_.exit.i70, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdEEB1e_.exit.i.i69, %bb.cf, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdEEB1e_.exit.i, %_RNvMNtNtCsaB0tVqiIPBo_12clap_builder6parser9validatorNtB2_9Validator18validate_exclusive.exit.thread.i, %_RNvMNtNtCsaB0tVqiIPBo_12clap_builder6parser9validatorNtB2_9Validator18validate_exclusive.exit.i, %.noexc40, %bb.m, %.noexc35, %.noexc34, %.critedge, %.noexc, %bb.g, %bb.br, %bb.bp, %bb.j, %bb.i, %bb.f
  %lpad.loopexit.split-lp689 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.hl = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store ptr %0, ptr %i.hl, align 8, !alias.scope !134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false), !alias.scope !135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  invoke void @_RNvMNtNtCsaB0tVqiIPBo_12clap_builder6output5usageNtB2_5Usage23create_usage_with_title(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0)
          to label %bb.by unwind label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.hm = invoke noundef nonnull align 8 ptr @_RNvMNtCsaB0tVqiIPBo_12clap_builder5errorNtB2_5Error18missing_subcommandB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.gr, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.br, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bo)
          to label %bb.bz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  br label %bb.fs

bb.ca:                                            ; preds = %bb.bx, %bb.bw
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bq) #14
          to label %bb.cc unwind label %bb.cb

bb.cb:                                            ; preds = %.body, %bb.cc, %bb.ca
  %i.hn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.cc:                                            ; preds = %bb.ca, %bb.bu
  %.pn.ph = phi { ptr, i32 } [ %i.hf, %bb.bu ], [ %lpad.thr_comm, %bb.ca ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.br) #14
          to label %.body unwind label %bb.cb

bb.cd:                                            ; preds = %bb.br
  unreachable

.thread103:                                       ; preds = %.noexc52, %.noexc45
  %.sroa.0.0.i33.ph = phi ptr [ %i.ef, %.noexc45 ], [ %i.gh, %.noexc52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05.i)
  br label %bb.fs

bb.ce:                                            ; preds = %_RINvYINtNtNtCsaB0tVqiIPBo_12clap_builder4util8flat_map4IterNtNtB8_2id2IdNtNtNtNtBa_6parser7matches11matched_arg10MatchedArgENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB24_8adapters6filter15filter_try_foldTRBV_RB18_EuINtNtNtB26_3ops12control_flow11ControlFlowB3N_ENCNvMNtB1e_9validatorNtB4P_9Validator18validate_conflicts0NCINvNvB1Y_4find5checkB3N_QNCB4M_s_0E0E0B3Z_EBa_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !119
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05.i)
  %i.ho = load ptr, ptr %i.bw, align 8, !nonnull !5, !align !6, !noundef !5
  %i.hp = getelementptr i8, ptr %i.ho, i64 676
  %i.hq = load <2 x i32>, ptr %i.hp, align 4
  %2 = and <2 x i32> %i.hq, splat (i32 4096)
  %3 = icmp ne <2 x i32> %2, zeroinitializer      ; 2 uses
  %4 = extractelement <2 x i1> %3, i64 0
  %5 = extractelement <2 x i1> %3, i64 1
  %.sroa.0.0.i59 = select i1 %4, i1 true, i1 %5
  %brmerge.not = and i1 %.not.i, %.sroa.0.0.i59
  br i1 %brmerge.not, label %bb.fs, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.experimental.noalias.scope.decl(metadata !136)
  call void @llvm.experimental.noalias.scope.decl(metadata !137)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !138
  invoke void @_RNvMNtNtCsaB0tVqiIPBo_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher4args(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1)
          to label %.noexc71 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc71:                                         ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false), !noalias !139
  %i.hr = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.backedge, %.noexc71
  %i.ht = invoke { ptr, ptr } @_RNvXs1_NtNtCsaB0tVqiIPBo_12clap_builder4util8flat_mapINtB5_4IterNtNtB7_2id2IdNtNtNtNtB9_6parser7matches11matched_arg10MatchedArgENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %.noexc72 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc72:                                         ; preds = %.loopexit.i.i
  %i.hu = extractvalue { ptr, ptr } %i.ht, 0      ; 3 uses
  %.not.i.i.i60 = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i60, label %_RNvMNtNtCsaB0tVqiIPBo_12clap_builder6parser9validatorNtB2_9Validator15gather_requires.exit.i, label %bb.cg

bb.cg:                                            ; preds = %.noexc72
  %i.hv = extractvalue { ptr, ptr } %i.ht, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hv) ]
  %i.hw = invoke noundef zeroext i1 @_RNvMNtNtNtCsaB0tVqiIPBo_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg14check_explicit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.hv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @0)
          to label %.noexc73 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc73:                                         ; preds = %bb.cg
  br i1 %i.hw, label %_RINvYINtNtNtCsaB0tVqiIPBo_12clap_builder4util8flat_map4IterNtNtB8_2id2IdNtNtNtNtBa_6parser7matches11matched_arg10MatchedArgENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1Y_4find5checkTRBV_RB18_EQNCNvMNtB1e_9validatorNtB3G_9Validator15gather_requires0E0INtNtNtB26_3ops12control_flow11ControlFlowB3p_EEBa_.exit.i.i, label %.loopexit.i.i.backedge

.loopexit.i.i.backedge:                           ; preds = %.noexc80, %.noexc73, %bb.co, %.noexc77, %.noexc76
  br label %.loopexit.i.i

_RINvYINtNtNtCsaB0tVqiIPBo_12clap_builder4util8flat_map4IterNtNtB8_2id2IdNtNtNtNtBa_6parser7matches11matched_arg10MatchedArgENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1Y_4find5checkTRBV_RB18_EQNCNvMNtB1e_9validatorNtB3G_9Validator15gather_requires0E0INtNtNtB26_3ops12control_flow11ControlFlowB3p_EEBa_.exit.i.i: ; preds = %.noexc73
  %i.hx = load ptr, ptr %i.bw, align 8, !alias.scope !140, !nonnull !5, !align !6, !noundef !5
  %i.hy = invoke noundef align 8 ptr @_RNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB5_7Command4find(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.hx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.hu)
          to label %.noexc74 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc74:                                         ; preds = %_RINvYINtNtNtCsaB0tVqiIPBo_12clap_builder4util8flat_map4IterNtNtB8_2id2IdNtNtNtNtBa_6parser7matches11matched_arg10MatchedArgENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1Y_4find5checkTRBV_RB18_EQNCNvMNtB1e_9validatorNtB3G_9Validator15gather_requires0E0INtNtNtB26_3ops12control_flow11ControlFlowB3p_EEBa_.exit.i.i
  %.not20.i.i = icmp eq ptr %i.hy, null
  br i1 %.not20.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %.noexc74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !139
  %i.hz = load ptr, ptr %i.bw, align 8, !alias.scope !140, !nonnull !5, !align !6, !noundef !5
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 536
  invoke void @_RINvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB6_7Command19unroll_arg_requiresNCNvMNtNtBa_6parser9validatorNtB1v_9Validator15gather_requiress_0EBa_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.hz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.hv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ia)
          to label %.noexc75 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc75:                                         ; preds = %bb.ch
  %i.ib = load ptr, ptr %i.hr, align 8, !noalias !139, !nonnull !5, !noundef !5 ; 3 uses
  %i.ic = load i64, ptr %i.u, align 8, !range !8, !noalias !139, !noundef !5
  %i.id = load i64, ptr %i.hs, align 8, !noalias !139, !noundef !5 ; 2 uses
  %i.ie = icmp ult i64 %i.id, 576460752303423488
  call void @llvm.assume(i1 %i.ie)
  %i.if = getelementptr inbounds nuw [16 x i8], ptr %i.ib, i64 %i.id
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !139
  store ptr %i.ib, ptr %i.t, align 8, !noalias !139
  store ptr %i.ib, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !139
  store i64 %i.ic, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !139
  store ptr %i.if, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !139
  br label %bb.cj

bb.ci:                                            ; preds = %.noexc74
  %i.ig = load ptr, ptr %i.bw, align 8, !alias.scope !140, !nonnull !5, !align !6, !noundef !5
  %i.ih = invoke noundef align 8 ptr @_RNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB5_7Command10find_group(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.ig, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.hu)
          to label %.noexc76 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc76:                                         ; preds = %bb.ci
  %.not21.i.i = icmp eq ptr %i.ih, null
  br i1 %.not21.i.i, label %.loopexit.i.i.backedge, label %bb.co

bb.cj:                                            ; preds = %bb.cl, %.noexc75
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.ii = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !141, !noalias !139, !nonnull !5, !noundef !5
  %i.ij = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !141, !noalias !139, !nonnull !5, !noundef !5 ; 4 uses
  %i.ik = icmp eq ptr %i.ij, %i.ii
  br i1 %i.ik, label %bb.cm, label %bb.cl

bb.ck:                                            ; preds = %bb.cl
  %i.il = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %.body unwind label %bb.cn

bb.cl:                                            ; preds = %bb.cj
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  store ptr %i.im, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !141, !noalias !139
  %i.in = load ptr, ptr %i.ij, align 8, !noalias !141, !nonnull !5, !noundef !5
  %i.io = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.ip = load i64, ptr %i.io, align 8, !noalias !141, !noundef !5
  %i.iq = invoke noundef i64 @_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder4util5graphINtB4_10ChildGraphNtNtB6_2id2IdE6insertB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.in, i64 noundef %i.ip)
          to label %bb.cj unwind label %bb.ck     ; 0 uses

bb.cm:                                            ; preds = %bb.cj
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %.noexc77 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc77:                                         ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !139
  br label %.loopexit.i.i.backedge

bb.cn:                                            ; preds = %bb.ck
  %i.ir = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.co:                                            ; preds = %.noexc76
  %i.is = getelementptr inbounds nuw i8, ptr %i.ih, i64 32
  %i.it = load ptr, ptr %i.is, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ih, i64 40
  %i.iv = load i64, ptr %i.iu, align 8, !noundef !5 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.iv, 4
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 %.idx.i.i
  %i.ix = icmp eq i64 %i.iv, 0
  br i1 %i.ix, label %.loopexit.i.i.backedge, label %.lr.ph.i.i63

.lr.ph.i.i63:                                     ; preds = %bb.co, %.noexc80
  %.sroa.011.027.i.i = phi ptr [ %i.jc, %.noexc80 ], [ %i.it, %bb.co ] ; 3 uses
  %i.iy = load ptr, ptr %.sroa.011.027.i.i, align 8, !nonnull !5, !noundef !5
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.011.027.i.i, i64 8
  %i.ja = load i64, ptr %i.iz, align 8, !noundef !5
  %i.jb = invoke noundef i64 @_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder4util5graphINtB4_10ChildGraphNtNtB6_2id2IdE6insertB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.iy, i64 noundef %i.ja)
          to label %.noexc80 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc80:                                         ; preds = %.lr.ph.i.i63
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.011.027.i.i, i64 16 ; 2 uses
  %i.jd = icmp eq ptr %i.jc, %i.iw
  br i1 %i.jd, label %.loopexit.i.i.backedge, label %.lr.ph.i.i63

_RNvMNtNtCsaB0tVqiIPBo_12clap_builder6parser9validatorNtB2_9Validator15gather_requires.exit.i: ; preds = %.noexc72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !138
  store i64 0, ptr %i.ac, align 8, !noalias !138
  %i.je = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.je, align 8, !noalias !138
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 10 uses
  store i64 0, ptr %i.jf, align 8, !noalias !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !138
  invoke void @_RNvMNtNtCsaB0tVqiIPBo_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher4args(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1)
          to label %bb.cp unwind label %.thread162.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.660

.thread162.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.660: ; preds = %bb.fp, %bb.fm, %bb.fi, %bb.fd, %bb.ez, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdEEB1e_.exit11.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdEEB1e_.exit9.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdEEB1e_.exit.i101.i, %bb.ek, %bb.ej, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterINtNtNtCsaB0tVqiIPBo_12clap_builder4util5graph5ChildNtNtBO_2id2IdEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1U_8adapters3map12map_try_foldRBJ_RB1z_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvMs_BM_INtBM_10ChildGraphB1z_E4iter0NCINvNvB1O_4find5checkB3l_QNCNvMNtNtBQ_6parser9validatorNtB5k_9Validator17validate_requireds0_0E0E0B3r_EBQ_.exit.i, %.lr.ph.i.i.i66, %bb.ee, %.lr.ph538, %.lr.ph540, %bb.dd, %bb.cz, %.lr.ph542, %.lr.ph.i, %bb.cw, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdEEB1e_.exit13.i.i, %bb.es, %bb.cs, %.lr.ph.i77.i, %bb.cq, %.backedge.i.i, %_RNvMNtNtCsaB0tVqiIPBo_12clap_builder6parser9validatorNtB2_9Validator15gather_requires.exit.i, %bb.cp
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread153.i

bb.cp:                                            ; preds = %_RNvMNtNtCsaB0tVqiIPBo_12clap_builder6parser9validatorNtB2_9Validator15gather_requires.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false), !noalias !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !138
  %i.jg = load ptr, ptr %i.bw, align 8, !alias.scope !136, !nonnull !5, !align !6, !noundef !5
  %i.jh = invoke { ptr, ptr } @_RNvXs1_NtNtCsaB0tVqiIPBo_12clap_builder4util8flat_mapINtB5_4IterNtNtB7_2id2IdNtNtNtNtB9_6parser7matches11matched_arg10MatchedArgENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %.noexc.i64 unwind label %.thread162.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.660 ; 2 uses

.noexc.i64:                                       ; preds = %bb.cp
  %i.ji = extractvalue { ptr, ptr } %i.jh, 0      ; 2 uses
  %.not7.not.i.i = icmp eq ptr %i.ji, null
  br i1 %.not7.not.i.i, label %.loopexit213.i, label %.lr.ph.i77.i

.lr.ph.i77.i:                                     ; preds = %.noexc.i64, %.noexc80.i
  %i.jj = phi ptr [ %i.js, %.noexc80.i ], [ %i.ji, %.noexc.i64 ]
  %i.jk = phi { ptr, ptr } [ %i.jr, %.noexc80.i ], [ %i.jh, %.noexc.i64 ]
  %i.jl = extractvalue { ptr, ptr } %i.jk, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jl) ]
  %i.jm = invoke noundef zeroext i1 @_RNvMNtNtNtCsaB0tVqiIPBo_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg14check_explicit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.jl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @0)
          to label %.noexc78.i unwind label %.thread162.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.660

.noexc78.i:                                       ; preds = %.lr.ph.i77.i
  br i1 %i.jm, label %bb.cq, label %.backedge.i.i

bb.cq:                                            ; preds = %.noexc78.i
  %i.jn = invoke noundef align 8 ptr @_RNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB5_7Command4find(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.jg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.jj)
          to label %.noexc79.i unwind label %.thread162.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.660 ; 2 uses

.noexc79.i:                                       ; preds = %bb.cq
  %.not.i.i.i.i.i = icmp eq ptr %i.jn, null
  br i1 %.not.i.i.i.i.i, label %.backedge.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %.noexc79.i
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 592
  %i.jp = load i32, ptr %i.jo, align 8, !noundef !5
  %i.jq = and i32 %i.jp, 16384
  %.not6.i.i = icmp eq i32 %i.jq, 0
  br i1 %.not6.i.i, label %.backedge.i.i, label %.loopexit213.i

.backedge.i.i:                                    ; preds = %.split.i.i, %.noexc79.i, %.noexc78.i
  %i.jr = invoke { ptr, ptr } @_RNvXs1_NtNtCsaB0tVqiIPBo_12clap_builder4util8flat_mapINtB5_4IterNtNtB7_2id2IdNtNtNtNtB9_6parser7matches11matched_arg10MatchedArgENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %.noexc80.i unwind label %.thread162.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.660 ; 2 uses

.noexc80.i:                                       ; preds = %.backedge.i.i
  %i.js = extractvalue { ptr, ptr } %i.jr, 0      ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.js, null
  br i1 %.not.not.i.i, label %.loopexit213.i, label %.lr.ph.i77.i

.loopexit213.i:                                   ; preds = %.noexc80.i, %.split.i.i, %.noexc.i64
  %.not.lcssa.i.i = phi i1 [ false, %.noexc.i64 ], [ true, %.split.i.i ], [ false, %.noexc80.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !138
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val50.i = load ptr, ptr %i.jt, align 8, !alias.scope !136, !nonnull !5, !noundef !5 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val51.i = load i64, ptr %i.ju, align 8, !alias.scope !136, !noundef !5
  %i.jv = getelementptr inbounds nuw [40 x i8], ptr %.val50.i, i64 %.val51.i
  %i.jw = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.jx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.jy = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.jz = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  br label %_RNvMNtNtCsaB0tVqiIPBo_12clap_builder6parser9validatorNtB2_9Validator22is_missing_required_ok.exit.thread.i

_RNvMNtNtCsaB0tVqiIPBo_12clap_builder6parser9validatorNtB2_9Validator22is_missing_required_ok.exit.thread.i: ; preds = %_RNvMNtNtCsaB0tVqiIPBo_12clap_builder6parser9validatorNtB2_9Validator22is_missing_required_ok.exit.thread.i.backedge, %.loopexit213.i
  %.sroa.0.0.i65 = phi ptr [ %.val50.i, %.loopexit213.i ], [ %i.kf, %_RNvMNtNtCsaB0tVqiIPBo_12clap_builder6parser9validatorNtB2_9Validator22is_missing_required_ok.exit.thread.i.backedge ]
  %.sroa.04.0.i = phi i64 [ 0, %.loopexit213.i ], [ %.sroa.04.0.i.be, %_RNvMNtNtCsaB0tVqiIPBo_12clap_builder6parser9validatorNtB2_9Validator22is_missing_required_ok.exit.thread.i.backedge ] ; 10 uses
  br label %bb.cr

bb.cr:                                            ; preds = %.noexc81.i, %_RNvMNtNtCsaB0tVqiIPBo_12clap_builder6parser9validatorNtB2_9Validator22is_missing_required_ok.exit.thread.i
  %i.kb = phi ptr [ %i.kf, %.noexc81.i ], [ %.sroa.0.0.i65, %_RNvMNtNtCsaB0tVqiIPBo_12clap_builder6parser9validatorNtB2_9Validator22is_missing_required_ok.exit.thread.i ] ; 3 uses
  %i.kc = icmp eq ptr %i.kb, %i.jv
  br i1 %i.kc, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 24 ; 3 uses
  %i.ke = invoke noundef zeroext i1 @_RNvMNtNtCsaB0tVqiIPBo_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.kd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @0)
          to label %.noexc81.i unwind label %.thread162.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.660

.noexc81.i:                                       ; preds = %bb.cs
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kb, i64 40 ; 2 uses
  br i1 %i.ke, label %bb.cr, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterINtNtNtCsaB0tVqiIPBo_12clap_builder4util5graph5ChildNtNtBO_2id2IdEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1U_8adapters3map12map_try_foldRBJ_RB1z_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvMs_BM_INtBM_10ChildGraphB1z_E4iter0NCINvNvB1O_4find5checkB3l_QNCNvMNtNtBQ_6parser9validatorNtB5k_9Validator17validate_requireds0_0E0E0B3r_EBQ_.exit.i

_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterINtNtNtCsaB0tVqiIPBo_12clap_builder4util5graph5ChildNtNtBO_2id2IdEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1U_8adapters3map12map_try_foldRBJ_RB1z_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvMs_BM_INtBM_10ChildGraphB1z_E4iter0NCINvNvB1O_4find5checkB3l_QNCNvMNtNtBQ_6parser9validatorNtB5k_9Validator17validate_requireds0_0E0E0B3r_EBQ_.exit.i: ; preds = %.noexc81.i
  %i.kg = load ptr, ptr %i.bw, align 8, !alias.scope !136, !nonnull !5, !align !6, !noundef !5
  %i.kh = invoke noundef align 8 ptr @_RNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB5_7Command4find(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.kg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.kd)
          to label %bb.eh unwind label %.thread162.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.660 ; 6 uses

bb.ct:                                            ; preds = %bb.cr
  %i.ki = load ptr, ptr %i.bw, align 8, !alias.scope !136, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.kj = getelementptr i8, ptr %i.ki, i64 136
  %.val52.i = load ptr, ptr %i.kj, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.kk = getelementptr i8, ptr %i.ki, i64 144
  %.val53.i = load i64, ptr %i.kk, align 8, !noundef !5
  %i.kl = getelementptr inbounds nuw [600 x i8], ptr %.val52.i, i64 %.val53.i
  %i.km = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.kn = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.not.i67 = xor i1 %.not.lcssa.i.i, true
  br label %.outer

.outer:                                           ; preds = %bb.eg, %bb.ct
  %.sroa.0136.0.i.ph = phi ptr [ %i.ks, %bb.eg ], [ %.val52.i, %bb.ct ]
  %.sroa.04.1.i.ph = phi i64 [ %..i.i, %bb.eg ], [ %.sroa.04.0.i, %bb.ct ] ; 3 uses
  br label %bb.cu

bb.cu:                                            ; preds = %.backedge, %.outer
  %.sroa.0136.0.i = phi ptr [ %.sroa.0136.0.i.ph, %.outer ], [ %i.ks, %.backedge ]
  br label %bb.cv

bb.cv:                                            ; preds = %.noexc84.i, %bb.cu
  %i.ko = phi ptr [ %i.ks, %.noexc84.i ], [ %.sroa.0136.0.i, %bb.cu ] ; 15 uses
  %i.kp = icmp eq ptr %i.ko, %i.kl
  br i1 %i.kp, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 536 ; 2 uses
  %i.kr = invoke noundef zeroext i1 @_RNvMNtNtCsaB0tVqiIPBo_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.kq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @0)
          to label %.noexc84.i unwind label %.thread162.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.660

.noexc84.i:                                       ; preds = %bb.cw
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ko, i64 600 ; 3 uses
  br i1 %i.kr, label %bb.cv, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMNtNtBW_6parser9validatorNtB2v_9Validator17validate_requireds2_0EBW_.exit.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMNtNtBW_6parser9validatorNtB2v_9Validator17validate_requireds2_0EBW_.exit.i: ; preds = %.noexc84.i
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ko, i64 208
  %i.ku = load ptr, ptr %i.kt, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ko, i64 216
  %i.kw = load i64, ptr %i.kv, align 8, !noundef !5 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.kw, 5
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ku, i64 %.idx.i
  %i.ky = icmp eq i64 %i.kw, 0
  br i1 %i.ky, label %._crit_edge.i, label %.lr.ph.i

bb.cx:                                            ; preds = %bb.cv
  %i.kz = load ptr, ptr %i.bw, align 8, !alias.scope !136, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.la = getelementptr i8, ptr %i.kz, i64 676
  %i.lb = load <2 x i32>, ptr %i.la, align 4
  %6 = and <2 x i32> %i.lb, splat (i32 16)
  %7 = icmp ne <2 x i32> %6, zeroinitializer      ; 2 uses
  %8 = extractelement <2 x i1> %7, i64 0
  %9 = extractelement <2 x i1> %7, i64 1
  %.sroa.0.0.i86.i = select i1 %8, i1 true, i1 %9
  br i1 %.sroa.0.0.i86.i, label %.loopexit.i, label %bb.cy

.loopexit.i:                                      ; preds = %bb.db, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCNvMNtNtB1c_6parser9validatorNtB4x_9Validator17validate_requireds4_0E0E0B1c_.exit.i.i, %bb.cy, %bb.cx
  %i.lc = load i64, ptr %i.jf, align 8, !noalias !138, !noundef !5 ; 2 uses
  %i.ld = icmp ult i64 %i.lc, 576460752303423488
  call void @llvm.assume(i1 %i.ld)
  %i.le = icmp eq i64 %i.lc, 0
  br i1 %i.le, label %bb.du, label %bb.de

bb.cy:                                            ; preds = %bb.cx
  %i.lf = getelementptr i8, ptr %i.kz, i64 136
  %.val56.i = load ptr, ptr %i.lf, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.lg = getelementptr i8, ptr %i.kz, i64 144
  %.val57.i = load i64, ptr %i.lg, align 8, !noundef !5 ; 2 uses
  %.idx254.i = mul nuw nsw i64 %.val57.i, 600
  %i.lh = getelementptr inbounds nuw i8, ptr %.val56.i, i64 %.idx254.i ; 2 uses
  %i.li = icmp eq i64 %.val57.i, 0
  br i1 %i.li, label %.loopexit.i, label %.lr.ph.i88.i

.lr.ph.i88.i:                                     ; preds = %bb.cy, %.lr.ph.i88.i.backedge
  %i.lj = phi ptr [ %i.lk, %.lr.ph.i88.i.backedge ], [ %.val56.i, %bb.cy ] ; 7 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 600 ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 552
  %i.lm = load ptr, ptr %i.ll, align 8, !alias.scope !142, !noalias !143, !noundef !5
  %.not.i.i.i.i68 = icmp eq ptr %i.lm, null
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 584
  %i.lo = load i32, ptr %i.ln, align 8, !range !144, !alias.scope !142, !noalias !143
  %.not1.i.i.i.i = icmp eq i32 %i.lo, -1
  %or.cond.i.i.i = select i1 %.not.i.i.i.i68, i1 %.not1.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %bb.cz, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCNvMNtNtB1c_6parser9validatorNtB4x_9Validator17validate_requireds4_0E0E0B1c_.exit.i.i

bb.cz:                                            ; preds = %.lr.ph.i88.i
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lj, i64 536 ; 2 uses
  %i.lq = invoke noundef zeroext i1 @_RNvMNtNtCsaB0tVqiIPBo_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.lp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @0)
          to label %.noexc91.i unwind label %.thread162.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.660

.noexc91.i:                                       ; preds = %bb.cz
  br i1 %i.lq, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCNvMNtNtB1c_6parser9validatorNtB4x_9Validator17validate_requireds4_0E0E0B1c_.exit.i.i, label %bb.da

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCNvMNtNtB1c_6parser9validatorNtB4x_9Validator17validate_requireds4_0E0E0B1c_.exit.i.i: ; preds = %.noexc91.i, %.lr.ph.i88.i
  %i.lr = icmp eq ptr %i.lk, %i.lh
  br i1 %i.lr, label %.loopexit.i, label %.lr.ph.i88.i.backedge

.lr.ph.i88.i.backedge:                            ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCNvMNtNtB1c_6parser9validatorNtB4x_9Validator17validate_requireds4_0E0E0B1c_.exit.i.i, %bb.db
  br label %.lr.ph.i88.i

bb.da:                                            ; preds = %.noexc91.i
  %i.ls = getelementptr i8, ptr %i.lj, i64 40
  %.val62.i = load i64, ptr %i.ls, align 8, !range !131, !noundef !5
  %i.lt = getelementptr i8, ptr %i.lj, i64 48
  %.val63.i = load i64, ptr %i.lt, align 8
  %i.lu = trunc nuw i64 %.val62.i to i1
  %i.lv = icmp uge i64 %.val63.i, %.sroa.04.1.i.ph
  %.sroa.042.0.not.i = select i1 %i.lu, i1 %i.lv, i1 false
  br i1 %.sroa.042.0.not.i, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdE8push_mutBL_.exit.i, %bb.da
  %i.lw = icmp eq ptr %i.lk, %i.lh
  br i1 %i.lw, label %.loopexit.i, label %.lr.ph.i88.i.backedge

bb.dc:                                            ; preds = %bb.da
  %.val70.i = load ptr, ptr %i.lp, align 8, !nonnull !5, !noundef !5
  %i.lx = getelementptr i8, ptr %i.lj, i64 544
  %.val71.i = load i64, ptr %i.lx, align 8, !noundef !5
  %i.ly = load i64, ptr %i.jf, align 8, !alias.scope !145, !noalias !138, !noundef !5 ; 3 uses
  %i.lz = load i64, ptr %i.ac, align 8, !range !8, !alias.scope !145, !noalias !138, !noundef !5
  %i.ma = icmp eq i64 %i.ly, %i.lz
  br i1 %i.ma, label %bb.dd, label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdE8push_mutBL_.exit.i

bb.dd:                                            ; preds = %bb.dc
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac) #17
          to label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdE8push_mutBL_.exit.i unwind label %.thread162.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.660

_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdE8push_mutBL_.exit.i: ; preds = %bb.dd, %bb.dc
  %i.mb = load ptr, ptr %i.je, align 8, !alias.scope !145, !noalias !138, !nonnull !5, !noundef !5
  %i.mc = getelementptr inbounds nuw [16 x i8], ptr %i.mb, i64 %i.ly ; 2 uses
  store ptr %.val70.i, ptr %i.mc, align 8, !noalias !146
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  store i64 %.val71.i, ptr %i.md, align 8
  %i.me = add i64 %i.ly, 1
  store i64 %i.me, ptr %i.jf, align 8, !alias.scope !145, !noalias !138
  br label %bb.db

bb.de:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !138
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  call void @llvm.experimental.noalias.scope.decl(metadata !148)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !149
  %i.mf = load ptr, ptr %i.bw, align 8, !alias.scope !150, !nonnull !5, !align !6, !noundef !5 ; 4 uses
  invoke void @_RNvMNtNtCsaB0tVqiIPBo_12clap_builder6output5usageNtB2_5Usage3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.mf)
          to label %bb.df unwind label %.thread.i.i, !noalias !151

.thread19.i.i:                                    ; preds = %bb.ds
  br i1 %.sroa.03.2.ph.i.i, label %bb.dt, label %.body

.thread.i.i:                                      ; preds = %bb.dg, %bb.df, %bb.de
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.df:                                            ; preds = %bb.de
  %i.mh = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %0, ptr %i.mh, align 8, !noalias !149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !149
  %i.mi = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.mj = load ptr, ptr %i.mi, align 8, !alias.scope !148, !noalias !138, !nonnull !5, !noundef !5 ; 4 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ml = load i64, ptr %i.mk, align 8, !alias.scope !148, !noalias !138, !noundef !5 ; 2 uses
  %i.mm = getelementptr inbounds nuw [16 x i8], ptr %i.mj, i64 %i.ml ; 2 uses
  store ptr %i.mj, ptr %i.n, align 8, !noalias !149
  %i.mn = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.mm, ptr %i.mn, align 8, !noalias !149
  %i.mo = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.mf, ptr %i.mo, align 8, !noalias !149
  invoke void @_RINvXs3_NtNtCsaB0tVqiIPBo_12clap_builder4util8flat_setINtB6_7FlatSetNtNtCsbSS6DM8SDEO_5alloc6string6StringEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1O_8adapters3map3MapINtNtNtB1Q_5slice4iter4IterNtNtB8_2id2IdENCNvMNtNtBa_6parser9validatorNtB48_9Validator22missing_required_error0EEBa_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
          to label %bb.dg unwind label %.thread.i.i, !noalias !152

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !149
  %i.mp = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.mq = load ptr, ptr %i.mp, align 8, !noalias !149, !nonnull !5, !noundef !5 ; 3 uses
  %i.mr = load i64, ptr %i.o, align 8, !range !8, !noalias !149, !noundef !5
  %i.ms = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.mt = load i64, ptr %i.ms, align 8, !noalias !149, !noundef !5 ; 2 uses
  %i.mu = icmp ult i64 %i.mt, 384307168202282326
  call void @llvm.assume(i1 %i.mu)
  %i.mv = getelementptr inbounds nuw [24 x i8], ptr %i.mq, i64 %i.mt
  store ptr %i.mq, ptr %i.p, align 8, !noalias !149
  %i.mw = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.mr, ptr %i.mw, align 8, !noalias !149
  %i.mx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.mq, ptr %i.mx, align 8, !noalias !149
  %i.my = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.mv, ptr %i.my, align 8, !noalias !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !149
  invoke void @_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB6_3VecNtNtB8_6string6StringEINtB4_12SpecFromIterBW_INtNtB6_9into_iter8IntoIterBW_EE9from_iterCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.p)
          to label %bb.dh unwind label %.thread.i.i, !noalias !152

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !149
  invoke void @_RNvMNtNtCsaB0tVqiIPBo_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher4args(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1)
          to label %bb.di unwind label %bb.ds, !noalias !148

bb.di:                                            ; preds = %bb.dh
  %i.mz = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mz, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !149
  %.sroa.09.0.copyload.i.i = load i64, ptr %i.x, align 8, !alias.scope !148, !noalias !138
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.na = icmp ult i64 %i.ml, 576460752303423488
  call void @llvm.assume(i1 %i.na)
  %.sroa.4.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store ptr %i.mf, ptr %.sroa.4.0..sroa_idx8.i.i, align 8, !alias.scope !154, !noalias !149
  store ptr %i.mj, ptr %i.l, align 8, !alias.scope !155, !noalias !149
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.mj, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !155, !noalias !149
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %.sroa.09.0.copyload.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !alias.scope !155, !noalias !149
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.mm, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8, !alias.scope !155, !noalias !149
  invoke void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB2k_6cloned6ClonedINtNtB2k_6filter6FilterINtNtB2k_3map3MapIB3v_INtNtB15_8flat_map4IterB11_NtNtNtNtB17_6parser7matches11matched_arg10MatchedArgENCNvMNtB4K_9validatorNtB5A_9Validator22missing_required_errors_0ENCB5x_s0_0ENCB5x_s1_0EEINtNtB4_9into_iter8IntoIterB11_EEE9from_iterB17_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.l)
          to label %bb.dj unwind label %bb.ds, !noalias !148

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !149
  %i.nb = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.nc = load ptr, ptr %i.nb, align 8, !noalias !149, !nonnull !5, !noundef !5
  %i.nd = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ne = load i64, ptr %i.nd, align 8, !noalias !149, !noundef !5
  invoke void @_RNvMNtNtCsaB0tVqiIPBo_12clap_builder6output5usageNtB2_5Usage23create_usage_with_title(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.nc, i64 noundef %i.ne)
          to label %bb.dl unwind label %bb.dq, !noalias !148

bb.dk:                                            ; preds = %bb.dl
  %i.nf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.dl:                                            ; preds = %bb.dj
  %i.ng = invoke noundef nonnull align 8 ptr @_RNvMNtCsaB0tVqiIPBo_12clap_builder5errorNtB2_5Error25missing_required_argumentB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.mf, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i)
          to label %bb.dm unwind label %bb.dk, !noalias !148

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !149
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdEEB1e_.exit.i.i69 unwind label %bb.dn, !noalias !148

bb.dn:                                            ; preds = %bb.dm
end_hunk_0
