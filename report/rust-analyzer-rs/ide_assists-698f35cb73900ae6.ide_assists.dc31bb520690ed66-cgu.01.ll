Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_assists-698f35cb73900ae6.ide_assists.dc31bb520690ed66-cgu.01?download=true
inline.NumInlined: 6316
inline.NumDeleted: 3659
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_7inspect7InspectINtNtNtCscFGNKo4Sl5v_9itertools8adaptors13multi_product12MultiProductINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms15ExtendedVariantEENCNvB3i_22add_missing_match_armssf_0ENCB4F_sg_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB5p_4find5checkTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatbEQNCB4F_sh_0E0INtNtNtBc_3ops12control_flow11ControlFlowB6t_EEB3m_:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.53.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.64.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.o, %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !4443
  call void @llvm.experimental.noalias.scope.decl(metadata !4445)
  %i.n = load atomic i64, ptr @_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt5LEVEL monotonic, align 8, !noalias !4446 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armssf_0B7_.exit.i.i.i, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.d, label %.noexc3.i.i.i

.noexc3.i.i.i:                                    ; preds = %bb.d, %bb.c
  invoke void @_RNvNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit8hit_cold(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 39)
          to label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armssf_0B7_.exit.i.i.i unwind label %bb.l, !noalias !4447

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit13add_to_survey(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 39)
          to label %.noexc3.i.i.i unwind label %bb.l, !noalias !4447

_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armssf_0B7_.exit.i.i.i: ; preds = %.noexc3.i.i.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !4443
  call void @llvm.experimental.noalias.scope.decl(metadata !4449)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4448
  %i.p = load ptr, ptr %i.i, align 8, !alias.scope !4450, !noalias !4451, !nonnull !6, !align !9, !noundef !6 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4452)
  call void @llvm.experimental.noalias.scope.decl(metadata !4453)
  %i.q = load ptr, ptr %i.k, align 8, !alias.scope !4453, !noalias !4454, !nonnull !6, !noundef !6 ; 4 uses
  %i.r = load i64, ptr %i.l, align 8, !alias.scope !4453, !noalias !4454, !noundef !6 ; 3 uses
  %.idx = mul nuw nsw i64 %i.r, 12
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx ; 2 uses
  %i.t = load ptr, ptr %i.p, align 8, !alias.scope !4452, !noalias !4455, !nonnull !6, !align !9, !noundef !6 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !4452, !noalias !4455, !nonnull !6, !align !21, !noundef !6 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4456)
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.x = load i32, ptr %i.v, align 4, !range !16, !alias.scope !4456, !noalias !4457
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.z = load i32, ptr %i.y, align 4, !alias.scope !4456, !noalias !4457
  %.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not14.not = icmp eq i64 %i.r, 0
  br i1 %.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not14.not, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armssg_0B7_.exit.i.i.i.i, label %.lr.ph

bb.e:                                             ; preds = %.noexc9.i.i.i.i.i
  %.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.not = icmp eq ptr %i.ab, %i.s
  br i1 %.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.not, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armssg_0B7_.exit.i.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armssf_0B7_.exit.i.i.i, %bb.e
  %i.aa = phi ptr [ %i.ab, %bb.e ], [ %i.q, %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armssf_0B7_.exit.i.i.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 12 ; 2 uses
  %i.ac = load ptr, ptr %i.w, align 8, !noalias !4458, !nonnull !6, !align !9, !noundef !6 ; 2 uses
  %i.ad = invoke { i32, i32 } @_RNvMs4_Cs8Xq8PKFYOms_3hirNtB5_6Module5krate(i32 noundef %i.x, i32 noundef %i.z, ptr noundef nonnull %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @7)
          to label %.noexc.i.i.i.i.i unwind label %bb.f, !noalias !4459 ; 2 uses

.noexc.i.i.i.i.i:                                 ; preds = %.lr.ph
  %i.ae = extractvalue { i32, i32 } %i.ad, 0
  %i.af = extractvalue { i32, i32 } %i.ad, 1
  %i.ag = invoke noundef zeroext i1 @_RNvMs_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_armsNtB4_15ExtendedVariant16should_be_hidden(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.aa, ptr noundef nonnull align 8 %i.ac, i32 noundef %i.ae, i32 noundef %i.af)
          to label %.noexc9.i.i.i.i.i unwind label %bb.f, !noalias !4459

.noexc9.i.i.i.i.i:                                ; preds = %.noexc.i.i.i.i.i
  br i1 %i.ag, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armssg_0B7_.exit.i.i.i.i, label %bb.e

bb.f:                                             ; preds = %.noexc.i.i.i.i.i, %.lr.ph
  %lpad.thr_comm.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms15ExtendedVariantEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #28
          to label %.body.thread.i.i.i unwind label %bb.g, !noalias !4460

bb.g:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #26, !noalias !4460
  unreachable

_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armssg_0B7_.exit.i.i.i.i: ; preds = %bb.e, %.noexc9.i.i.i.i.i, %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armssf_0B7_.exit.i.i.i
  %.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.lcssa = phi i8 [ 0, %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armssf_0B7_.exit.i.i.i ], [ 0, %bb.e ], [ 1, %.noexc9.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4461
  %i.ai = load i64, ptr %i.b, align 8, !range !26, !alias.scope !4453, !noalias !4454, !noundef !6
  %i.aj = icmp ult i64 %i.r, 768614336404564651
  call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !4452, !noalias !4455, !nonnull !6, !align !9, !noundef !6 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !4452, !noalias !4455, !nonnull !6, !noundef !6
  store ptr %i.q, ptr %i.a, align 8, !noalias !4461
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4461
  store i64 %i.ai, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4461
  store ptr %i.s, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4461
  store ptr %i.t, ptr %i.m, align 8, !noalias !4461
  store ptr %i.al, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4461
  store ptr %i.v, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4461
  store ptr %i.an, ptr %.sroa.64.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4461
  %i.ao = call noundef nonnull ptr @_RINvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB5_13SyntaxFactory9slice_patINtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms15ExtendedVariantENCNCNvB3o_22add_missing_match_armssg_0s_0EEB3s_(ptr noundef nonnull align 8 %i.al, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.a), !noalias !4447 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4448
  store i64 14, ptr %i.c, align 8, !noalias !4448
  store ptr %i.ao, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !4448
  store i8 %.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.lcssa, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !4448
  %i.ap = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armssh_0INtB7_5FnMutTRTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatbEEE8call_mutBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %bb.i unwind label %bb.h, !noalias !4462

bb.h:                                             ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armssg_0B7_.exit.i.i.i.i
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 48 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !noalias !4462, !noundef !6
  %i.at = add i32 %i.as, -1                       ; 2 uses
  store i32 %i.at, ptr %i.ar, align 4, !noalias !4462
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i.i, label %.body.thread.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i.i: ; preds = %bb.h
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ao) #27
          to label %.body.thread.i.i.i unwind label %bb.k, !noalias !4462

bb.i:                                             ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armssg_0B7_.exit.i.i.i.i
  br i1 %i.ap, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 48 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !noalias !4462, !noundef !6
  %i.ax = add i32 %i.aw, -1                       ; 2 uses
  store i32 %i.ax, ptr %i.av, align 4, !noalias !4462
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i4.i.i.i.i.i, label %bb.o

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i4.i.i.i.i.i: ; preds = %bb.j
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ao) #27, !noalias !4463
  br label %bb.o

bb.k:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #26, !noalias !4462
  unreachable

bb.l:                                             ; preds = %bb.d, %.noexc3.i.i.i
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms15ExtendedVariantEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #28
          to label %.body.thread.i.i.i unwind label %bb.m, !noalias !4464

bb.m:                                             ; preds = %bb.l
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #26, !noalias !4464
  unreachable

.body.thread.i.i.i:                               ; preds = %bb.l, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i.i, %bb.h, %bb.f
  %eh.lpad-body8.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i, %bb.l ], [ %i.aq, %bb.h ], [ %lpad.thr_comm.i.i.i.i.i, %bb.f ], [ %i.aq, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i.i ]
  resume { ptr, i32 } %eh.lpad-body8.i.i.i

._crit_edge.i.i:                                  ; preds = %bb.o, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4443
  store i64 -1, ptr %0, align 8, !alias.scope !4465, !noalias !4466
  br label %_RINvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7inspectINtB6_7InspectINtNtNtCscFGNKo4Sl5v_9itertools8adaptors13multi_product12MultiProductINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms15ExtendedVariantEENCNvB32_22add_missing_match_armssf_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldINtB2h_3VecB30_ETNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatbEuINtNtNtBc_3ops12control_flow11ControlFlowB6o_ENCB4p_sg_0NCINvNvB4Y_4find5checkB6o_QNCB4p_sh_0E0E0B7j_EB36_.exit

bb.n:                                             ; preds = %bb.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i, i64 16, i1 false), !noalias !4466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4443
  store i64 14, ptr %0, align 8, !alias.scope !4467, !noalias !4466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4443
  br label %_RINvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7inspectINtB6_7InspectINtNtNtCscFGNKo4Sl5v_9itertools8adaptors13multi_product12MultiProductINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms15ExtendedVariantEENCNvB32_22add_missing_match_armssf_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldINtB2h_3VecB30_ETNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatbEuINtNtNtBc_3ops12control_flow11ControlFlowB6o_ENCB4p_sg_0NCINvNvB4Y_4find5checkB6o_QNCB4p_sh_0E0E0B7j_EB36_.exit

bb.o:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i4.i.i.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4443
  call void @_RNvXs1_NtNtCscFGNKo4Sl5v_9itertools8adaptors13multi_productINtB5_12MultiProductINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms15ExtendedVariantEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB29_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1), !noalias !4468
  %i.bb = load i64, ptr %i.e, align 8, !range !24, !noalias !4443, !noundef !6
  %.not.i.i = icmp eq i64 %i.bb, -1
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.b

_RINvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7inspectINtB6_7InspectINtNtNtCscFGNKo4Sl5v_9itertools8adaptors13multi_product12MultiProductINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms15ExtendedVariantEENCNvB32_22add_missing_match_armssf_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldINtB2h_3VecB30_ETNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatbEuINtNtNtBc_3ops12control_flow11ControlFlowB6o_ENCB4p_sg_0NCINvNvB4Y_4find5checkB6o_QNCB4p_sh_0E0E0B7j_EB36_.exit: ; preds = %._crit_edge.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4440
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableINtNtB8_6filter6FilterINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1M_9generated5nodes12GenericParamENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24generate_trait_from_impl11used_paramss1_0EENCINvNtNtB1M_14syntax_factory12constructors14iterator_inputB2q_BX_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5D_8for_each4callTB2q_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1O_11syntax_node12RustLanguageEENCINvNvNtB5H_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB2q_EIB8N_B6L_EEB6G_E0E0EB3d_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 16               ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [40 x i8], align 8                ; 5 uses
  %i.l = alloca [104 x i8], align 8               ; 4 uses
  %i.m = alloca [104 x i8], align 8               ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %i.o = alloca [88 x i8], align 8                ; 12 uses
  %i.p = alloca [20 x i8], align 4                ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [8 x i8], align 8                 ; 6 uses
  %.sroa.0.0.copyload = load i64, ptr %0, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 7 uses
  switch i64 %.sroa.0.0.copyload, label %bb.am [
    i64 -2, label %bb.b
    i64 -1, label %bb.aq
  ]

bb.b:                                             ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamTBU_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB12_11syntax_node12RustLanguageEEuNCINvNtNtB10_14syntax_factory12constructors14iterator_inputBU_INtNtB6_8peekable8PeekableINtNtB6_6filter6FilterINtB10_11AstChildrenBU_ENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24generate_trait_from_impl11used_paramss1_0EEE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1V_NCINvNvNtB74_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecBU_EIB8C_B1Z_EEB1V_E0E0E0B5y_.exit.i, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !4549
  store ptr %.sroa.7.0.copyload, ptr %i.r, align 8, !noalias !4550
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 320
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 324
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 64 ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.53.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter11filter_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamuNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24generate_trait_from_impl11used_paramss1_0NCINvNtB6_3map8map_foldB11_TB11_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB19_11syntax_node12RustLanguageEEuNCINvNtNtB17_14syntax_factory12constructors14iterator_inputB11_INtNtB6_8peekable8PeekableINtB4_6FilterINtB17_11AstChildrenB11_EB23_EEE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3T_NCINvNvNtB7B_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB11_EIB99_B3Y_EEB3T_E0E0E0E0B2b_.exit.i.i.i, %bb.b
  %i.ag = invoke { i64, ptr } @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes12GenericParamENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %bb.g unwind label %bb.d, !noalias !4551 ; 2 uses

bb.d:                                             ; preds = %_RNCINvNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructors14iterator_inputNtNtNtB8_9generated5nodes12GenericParamINtNtNtNtCshzWfHUSfYae_4core4iter8adapters8peekable8PeekableINtNtB21_6filter6FilterINtB8_11AstChildrenB1j_ENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24generate_trait_from_impl11used_paramss1_0EEE0B3N_.exit.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i, %bb.c
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i16.i.i.i.i, %.body.thread.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i.i, %bb.ae, %bb.d
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ah, %bb.d ], [ %i.cp, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i.i ], [ %eh.lpad-body22.i.i.i.i, %.body.thread.i.i.i.i ], [ %i.cp, %bb.ae ], [ %eh.lpad-body22.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i16.i.i.i.i ] ; 3 uses
  %.val.i.i.i = load ptr, ptr %i.r, align 8, !noalias !4550, !noundef !6 ; 3 uses
  %i.ai = icmp eq ptr %.val.i.i.i, null
  br i1 %i.ai, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1i_9generated5nodes12GenericParamENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24generate_trait_from_impl11used_paramss1_0EEB2J_.exit11.i, label %bb.e

bb.e:                                             ; preds = %.body.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 48 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !noalias !4551, !noundef !6
  %i.al = add i32 %i.ak, -1                       ; 2 uses
  store i32 %i.al, ptr %i.aj, align 4, !noalias !4551
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1i_9generated5nodes12GenericParamENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24generate_trait_from_impl11used_paramss1_0EEB2J_.exit11.i

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i.i.i) #27
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1i_9generated5nodes12GenericParamENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24generate_trait_from_impl11used_paramss1_0EEB2J_.exit11.i unwind label %bb.al, !noalias !4551

bb.g:                                             ; preds = %bb.c
  %i.an = extractvalue { i64, ptr } %i.ag, 0      ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.an, -1
  br i1 %.not.i.i.i, label %bb.ai, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = extractvalue { i64, ptr } %i.ag, 1      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !4550
  store i64 %i.an, ptr %i.q, align 8, !noalias !4552
  store ptr %i.ao, ptr %i.s, align 8, !noalias !4552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4553
  invoke void @_RINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB6_13SemanticsImpl6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.p, ptr noundef nonnull align 8 %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q)
          to label %.noexc.i.i.i.i unwind label %.body.thread26.i.i.i.i, !noalias !4554

.noexc.i.i.i.i:                                   ; preds = %bb.h
  %i.ap = load i32, ptr %i.p, align 4, !range !10, !noalias !4553, !noundef !6
  %.not.i.i.i.i.i = icmp eq i32 %i.ap, -1
  br i1 %.not.i.i.i.i.i, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24generate_trait_from_impl11used_paramss1_0B7_.exit.thread.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.noexc.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4553
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.u, ptr noundef nonnull align 4 dereferenceable(20) %i.p, i64 20, i1 false), !noalias !4553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4553
  store i8 13, ptr %i.k, align 8, !noalias !4553
  invoke void @_RNvMs3_NtCs6oosyzwIepl_6ide_db6searchNtNtB7_4defs10Definition6usages(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.k, ptr noundef nonnull align 8 %i.v)
          to label %.noexc9.i.i.i.i unwind label %.body.thread26.i.i.i.i, !noalias !4554

.noexc9.i.i.i.i:                                  ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4553
  %i.aq = load i32, ptr %i.w, align 8, !range !16, !noalias !4555, !noundef !6
  %i.ar = load i32, ptr %i.x, align 4, !noalias !4555, !noundef !6
  invoke void @_RNvMs1_NtCs6oosyzwIepl_6ide_db6searchNtB5_11SearchScope11single_file(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, i32 noundef %i.aq, i32 noundef %i.ar)
          to label %.noexc10.i.i.i.i unwind label %.body.thread26.i.i.i.i, !noalias !4554

.noexc10.i.i.i.i:                                 ; preds = %.noexc9.i.i.i.i
  invoke void @_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages8in_scope(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j)
          to label %bb.k unwind label %bb.j, !noalias !4554

_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24generate_trait_from_impl11used_paramss1_0B7_.exit.thread.i.i.i.i: ; preds = %.noexc.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4553
  br label %bb.ad

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search17UsageSearchResultECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i.i: ; preds = %.loopexit.split-lp.i.i.i.i.i, %bb.j
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.as, %bb.j ], [ %lpad.phi.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ]
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsuAhG64lL82_9text_size5range9TextRangeEEENtNtNtB1U_3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %.body.thread.i.i.i.i unwind label %bb.ab, !noalias !4554

bb.j:                                             ; preds = %bb.aa, %bb.k, %.noexc10.i.i.i.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search17UsageSearchResultECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i.i

bb.k:                                             ; preds = %.noexc10.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4553
  invoke void @_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages3all(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(104) %i.m)
          to label %bb.l unwind label %bb.j, !noalias !4554

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4553
  invoke void @_RNvMNtCs6oosyzwIepl_6ide_db6searchNtB2_17UsageSearchResult11file_ranges(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i, !noalias !4554

.loopexit.i.i.i.i.i:                              ; preds = %bb.x
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i.i

.loopexit.split-lp.loopexit.i.i.i.i.i:            ; preds = %.lr.ph
  %lpad.loopexit1.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i.i: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEEINtB4_3MapINtNtNtBa_5slice4iter4IterB2z_ENCNCNvMB2B_NtB2B_17UsageSearchResult11file_ranges00EuINtNtNtBa_3ops12control_flow11ControlFlowuENCB45_0NCINvNvMsg_NtB6_7flattenINtB5R_13FlattenCompatppE13iter_try_fold7flattenB3m_uB4S_NCINvNvXsi_B5R_B64_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB3m_uB4S_NCINvNvB7i_3any5checkINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB11_ENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24generate_trait_from_impl11used_paramss1_00E0E0E0E0B9J_.exit.i.i.i.i.i.i.i.i.i
  %lpad.loopexit4.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i.i: ; preds = %bb.p
  %lpad.loopexit6.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i: ; preds = %bb.r, %bb.l
  %lpad.loopexit.split-lp7.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i:                     ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i.i, %.loopexit.i.i.i.i.i
  %lpad.phi.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i, %.loopexit.i.i.i.i.i ], [ %lpad.loopexit1.i.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i.i ], [ %lpad.loopexit4.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i.i ], [ %lpad.loopexit6.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i.i ], [ %lpad.loopexit.split-lp7.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i ]
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search17UsageSearchResultECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i.i unwind label %bb.ab, !noalias !4554

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !4556)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4553
  store ptr %.sroa.6.0.copyload, ptr %i.i, align 8, !noalias !4557
  %i.at = load ptr, ptr %i.y, align 8, !alias.scope !4556, !noalias !4558, !noundef !6 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !4559)
  call void @llvm.experimental.noalias.scope.decl(metadata !4560)
  call void @llvm.experimental.noalias.scope.decl(metadata !4561)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4562
  store ptr %i.i, ptr %i.h, align 8, !noalias !4563
  store ptr %i.z, ptr %i.aa, align 8, !noalias !4563
  %i.au = load ptr, ptr %i.ab, align 8, !alias.scope !4564, !noalias !4565, !nonnull !6, !noundef !6
  br label %bb.o

bb.o:                                             ; preds = %.noexc.i.i.i.i.i, %bb.n
  %i.av = phi ptr [ %i.aw, %.noexc.i.i.i.i.i ], [ %i.at, %bb.n ] ; 3 uses
  %.not.not.not.i.not.not.not.i.not.not.not.i.not.i.i.i.i.i.i = icmp eq ptr %i.av, %i.au
  br i1 %.not.not.not.i.not.not.not.i.not.not.not.i.not.i.i.i.i.i.i, label %_RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtBc_3map3MapINtNtNtBg_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceENCNCNvMB2Q_NtB2Q_17UsageSearchResult11file_ranges00EuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvB1j_3any5checkINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24generate_trait_from_impl11used_paramss1_00E0E0B7x_.exit.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40 ; 2 uses
  store ptr %i.aw, ptr %i.y, align 8, !alias.scope !4564, !noalias !4565
  %i.ax = getelementptr i8, ptr %i.av, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !4566)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4567
  %i.ay = load ptr, ptr %i.aa, align 8, !alias.scope !4566, !noalias !4563, !nonnull !6, !align !21, !noundef !6
  %i.az = load <2 x i32>, ptr %i.ax, align 8, !noalias !4568
  %i.ba = load <2 x i32>, ptr %i.ay, align 4, !noalias !4569
  %i.bb = shufflevector <2 x i32> %i.ba, <2 x i32> %i.az, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.bb, ptr %i.g, align 16, !noalias !4567
  %i.bc = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24generate_trait_from_impl11used_paramss1_00E0INtB7_5FnMutTuB1K_EE8call_mutB3O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.g)
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i.i, !noalias !4554

.noexc.i.i.i.i.i:                                 ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4567
  br i1 %i.bc, label %bb.t, label %bb.o

_RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtBc_3map3MapINtNtNtBg_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceENCNCNvMB2Q_NtB2Q_17UsageSearchResult11file_ranges00EuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvB1j_3any5checkINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24generate_trait_from_impl11used_paramss1_00E0E0B7x_.exit.i.i.i.i.i.i: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4562
  br label %bb.q

bb.q:                                             ; preds = %_RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtBc_3map3MapINtNtNtBg_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceENCNCNvMB2Q_NtB2Q_17UsageSearchResult11file_ranges00EuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvB1j_3any5checkINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24generate_trait_from_impl11used_paramss1_00E0E0B7x_.exit.i.i.i.i.i.i, %bb.m
  store ptr null, ptr %i.y, align 8, !alias.scope !4556, !noalias !4558
  call void @llvm.experimental.noalias.scope.decl(metadata !4570)
  call void @llvm.experimental.noalias.scope.decl(metadata !4571)
  %i.bd = load ptr, ptr %i.o, align 8, !alias.scope !4572, !noalias !4573, !noundef !6
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !4574)
  %i.be = invoke { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.o)
          to label %.noexc3.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i, !noalias !4554 ; 2 uses

.noexc3.i.i.i.i.i:                                ; preds = %bb.r
  %i.bf = extractvalue { ptr, ptr } %i.be, 0      ; 2 uses
  %.not3.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not3.not.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.noexc3.i.i.i.i.i, %.noexc5.i.i.i.i.i
  %i.bg = phi ptr [ %i.bw, %.noexc5.i.i.i.i.i ], [ %i.bf, %.noexc3.i.i.i.i.i ]
  %i.bh = phi { ptr, ptr } [ %i.bv, %.noexc5.i.i.i.i.i ], [ %i.be, %.noexc3.i.i.i.i.i ]
  %i.bi = extractvalue { ptr, ptr } %i.bh, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bi) ]
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  %.val9.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bj, align 8, !noalias !4554, !nonnull !6, !noundef !6 ; 3 uses
  %i.bk = getelementptr i8, ptr %i.bi, i64 16
  %.val10.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bk, align 8, !noalias !4554, !noundef !6 ; 2 uses
  %.idx = mul nuw nsw i64 %.val10.i.i.i.i.i.i.i.i.i, 40
  %i.bl = getelementptr inbounds nuw i8, ptr %.val9.i.i.i.i.i.i.i.i.i, i64 %.idx ; 2 uses
  %i.bm = load <2 x i32>, ptr %i.bg, align 4, !noalias !4554
  store ptr %.val9.i.i.i.i.i.i.i.i.i, ptr %i.y, align 8, !alias.scope !4575, !noalias !4576
  store ptr %i.bl, ptr %i.ab, align 8, !alias.scope !4575, !noalias !4576
  store <2 x i32> %i.bm, ptr %i.z, align 8, !alias.scope !4575, !noalias !4576
  call void @llvm.experimental.noalias.scope.decl(metadata !4577)
  call void @llvm.experimental.noalias.scope.decl(metadata !4578)
  call void @llvm.experimental.noalias.scope.decl(metadata !4579)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4580
  store ptr %i.i, ptr %i.f, align 8, !noalias !4581
  store ptr %i.z, ptr %i.ac, align 8, !noalias !4581
  %.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.i.i.i.i.i.i.i.i.i42 = icmp eq i64 %.val10.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.i.i.i.i.i.i.i.i.i42, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEEINtB4_3MapINtNtNtBa_5slice4iter4IterB2z_ENCNCNvMB2B_NtB2B_17UsageSearchResult11file_ranges00EuINtNtNtBa_3ops12control_flow11ControlFlowuENCB45_0NCINvNvMsg_NtB6_7flattenINtB5R_13FlattenCompatppE13iter_try_fold7flattenB3m_uB4S_NCINvNvXsi_B5R_B64_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB3m_uB4S_NCINvNvB7i_3any5checkINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB11_ENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24generate_trait_from_impl11used_paramss1_00E0E0E0E0B9J_.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph

bb.s:                                             ; preds = %.noexc4.i.i.i.i.i
  %.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bo, %i.bl
  br i1 %.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEEINtB4_3MapINtNtNtBa_5slice4iter4IterB2z_ENCNCNvMB2B_NtB2B_17UsageSearchResult11file_ranges00EuINtNtNtBa_3ops12control_flow11ControlFlowuENCB45_0NCINvNvMsg_NtB6_7flattenINtB5R_13FlattenCompatppE13iter_try_fold7flattenB3m_uB4S_NCINvNvXsi_B5R_B64_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB3m_uB4S_NCINvNvB7i_3any5checkINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB11_ENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24generate_trait_from_impl11used_paramss1_00E0E0E0E0B9J_.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.s
  %i.bn = phi ptr [ %i.bo, %bb.s ], [ %.val9.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40 ; 3 uses
  store ptr %i.bo, ptr %i.y, align 8, !alias.scope !4582, !noalias !4583
  %i.bp = getelementptr i8, ptr %i.bn, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !4584)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4585
  %i.bq = load ptr, ptr %i.ac, align 8, !alias.scope !4584, !noalias !4581, !nonnull !6, !align !21, !noundef !6
  %i.br = load <2 x i32>, ptr %i.bp, align 8, !noalias !4586
  %i.bs = load <2 x i32>, ptr %i.bq, align 4, !noalias !4587
  %i.bt = shufflevector <2 x i32> %i.bs, <2 x i32> %i.br, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.bt, ptr %i.e, align 16, !noalias !4585
  %i.bu = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24generate_trait_from_impl11used_paramss1_00E0INtB7_5FnMutTuB1K_EE8call_mutB3O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.e)
          to label %.noexc4.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i, !noalias !4554

.noexc4.i.i.i.i.i:                                ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4585
  br i1 %i.bu, label %bb.u, label %bb.s

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEEINtB4_3MapINtNtNtBa_5slice4iter4IterB2z_ENCNCNvMB2B_NtB2B_17UsageSearchResult11file_ranges00EuINtNtNtBa_3ops12control_flow11ControlFlowuENCB45_0NCINvNvMsg_NtB6_7flattenINtB5R_13FlattenCompatppE13iter_try_fold7flattenB3m_uB4S_NCINvNvXsi_B5R_B64_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB3m_uB4S_NCINvNvB7i_3any5checkINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB11_ENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24generate_trait_from_impl11used_paramss1_00E0E0E0E0B9J_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.s, %.lr.ph.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4580
  %i.bv = invoke { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.o)
          to label %.noexc5.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i.i, !noalias !4554 ; 2 uses

.noexc5.i.i.i.i.i:                                ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEEINtB4_3MapINtNtNtBa_5slice4iter4IterB2z_ENCNCNvMB2B_NtB2B_17UsageSearchResult11file_ranges00EuINtNtNtBa_3ops12control_flow11ControlFlowuENCB45_0NCINvNvMsg_NtB6_7flattenINtB5R_13FlattenCompatppE13iter_try_fold7flattenB3m_uB4S_NCINvNvXsi_B5R_B64_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB3m_uB4S_NCINvNvB7i_3any5checkINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB11_ENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24generate_trait_from_impl11used_paramss1_00E0E0E0E0B9J_.exit.i.i.i.i.i.i.i.i.i
  %i.bw = extractvalue { ptr, ptr } %i.bv, 0      ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.not.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %.noexc.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4562
  br label %bb.aa

bb.u:                                             ; preds = %.noexc4.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4580
  br label %bb.aa

.loopexit.i.i.i.i.i.i:                            ; preds = %.noexc5.i.i.i.i.i, %.noexc3.i.i.i.i.i, %bb.q
  store ptr null, ptr %i.y, align 8, !alias.scope !4556, !noalias !4558
  %i.bx = load ptr, ptr %i.ad, align 8, !alias.scope !4556, !noalias !4558, !noundef !6 ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not10.i.i.i.i.i.i, label %bb.z, label %bb.v

bb.v:                                             ; preds = %.loopexit.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4588)
  call void @llvm.experimental.noalias.scope.decl(metadata !4589)
  call void @llvm.experimental.noalias.scope.decl(metadata !4590)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4591
  store ptr %i.i, ptr %i.d, align 8, !noalias !4592
  store ptr %2, ptr %i.ae, align 8, !noalias !4592
  %i.by = load ptr, ptr %i.af, align 8, !alias.scope !4593, !noalias !4594, !nonnull !6, !noundef !6
  br label %bb.w

bb.w:                                             ; preds = %.noexc6.i.i.i.i.i, %bb.v
  %i.bz = phi ptr [ %i.ca, %.noexc6.i.i.i.i.i ], [ %i.bx, %bb.v ] ; 3 uses
  %.not.not.not.i.not.not.not.i.not.not.not.i15.not.i.i.i.i.i.i = icmp eq ptr %i.bz, %i.by
  br i1 %.not.not.not.i.not.not.not.i.not.not.not.i15.not.i.i.i.i.i.i, label %_RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtBc_3map3MapINtNtNtBg_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceENCNCNvMB2Q_NtB2Q_17UsageSearchResult11file_ranges00EuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvB1j_3any5checkINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24generate_trait_from_impl11used_paramss1_00E0E0B7x_.exit20.i.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40 ; 2 uses
  store ptr %i.ca, ptr %i.ad, align 8, !alias.scope !4593, !noalias !4594
  %i.cb = getelementptr i8, ptr %i.bz, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !4595)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4596
  %i.cc = load ptr, ptr %i.ae, align 8, !alias.scope !4595, !noalias !4592, !nonnull !6, !align !21, !noundef !6
  %i.cd = load <2 x i32>, ptr %i.cb, align 8, !noalias !4597
  %i.ce = load <2 x i32>, ptr %i.cc, align 4, !noalias !4598
  %i.cf = shufflevector <2 x i32> %i.ce, <2 x i32> %i.cd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.cf, ptr %i.c, align 16, !noalias !4596
  %i.cg = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24generate_trait_from_impl11used_paramss1_00E0INtB7_5FnMutTuB1K_EE8call_mutB3O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.c)
          to label %.noexc6.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i, !noalias !4554

.noexc6.i.i.i.i.i:                                ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4596
  br i1 %i.cg, label %bb.y, label %bb.w

_RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtBc_3map3MapINtNtNtBg_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceENCNCNvMB2Q_NtB2Q_17UsageSearchResult11file_ranges00EuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvB1j_3any5checkINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24generate_trait_from_impl11used_paramss1_00E0E0B7x_.exit20.i.i.i.i.i.i: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4591
  br label %bb.z

bb.y:                                             ; preds = %.noexc6.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4591
  br label %bb.aa

bb.z:                                             ; preds = %_RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtBc_3map3MapINtNtNtBg_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceENCNCNvMB2Q_NtB2Q_17UsageSearchResult11file_ranges00EuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvB1j_3any5checkINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24generate_trait_from_impl11used_paramss1_00E0E0B7x_.exit20.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i
  store ptr null, ptr %i.ad, align 8, !alias.scope !4556, !noalias !4558
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.u, %bb.t
  %.sroa.0.0.i.i.i.i.i.i = phi i1 [ true, %bb.t ], [ true, %bb.u ], [ true, %bb.y ], [ false, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4553
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search17UsageSearchResultECsiU5vK8fN4ZC_11ide_assists.exit9.i.i.i.i.i unwind label %bb.j, !noalias !4554

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search17UsageSearchResultECsiU5vK8fN4ZC_11ide_assists.exit9.i.i.i.i.i: ; preds = %bb.aa
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsuAhG64lL82_9text_size5range9TextRangeEEENtNtNtB1U_3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24generate_trait_from_impl11used_paramss1_0B7_.exit.i.i.i.i unwind label %.body.thread26.i.i.i.i, !noalias !4554

bb.ab:                                            ; preds = %.loopexit.split-lp.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search17UsageSearchResultECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i.i
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #26, !noalias !4554
  unreachable

.body.thread26.i.i.i.i:                           ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search17UsageSearchResultECsiU5vK8fN4ZC_11ide_assists.exit9.i.i.i.i.i, %.noexc9.i.i.i.i, %bb.i, %bb.h
  %lpad.thr_comm.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i.i.i

_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24generate_trait_from_impl11used_paramss1_0B7_.exit.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search17UsageSearchResultECsiU5vK8fN4ZC_11ide_assists.exit9.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4553
  br i1 %.sroa.0.0.i.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24generate_trait_from_impl11used_paramss1_0B7_.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ao, i64 48 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !noalias !4554, !noundef !6
  %i.ck = add i32 %i.cj, -1                       ; 2 uses
  store i32 %i.ck, ptr %i.ci, align 4, !noalias !4554
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter11filter_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamuNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24generate_trait_from_impl11used_paramss1_0NCINvNtB6_3map8map_foldB11_TB11_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB19_11syntax_node12RustLanguageEEuNCINvNtNtB17_14syntax_factory12constructors14iterator_inputB11_INtNtB6_8peekable8PeekableINtB4_6FilterINtB17_11AstChildrenB11_EB23_EEE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3T_NCINvNvNtB7B_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB11_EIB99_B3Y_EEB3T_E0E0E0E0B2b_.exit.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i: ; preds = %bb.ac
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ao) #27
          to label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter11filter_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamuNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24generate_trait_from_impl11used_paramss1_0NCINvNtB6_3map8map_foldB11_TB11_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB19_11syntax_node12RustLanguageEEuNCINvNtNtB17_14syntax_factory12constructors14iterator_inputB11_INtNtB6_8peekable8PeekableINtB4_6FilterINtB17_11AstChildrenB11_EB23_EEE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3T_NCINvNvNtB7B_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB11_EIB99_B3Y_EEB3T_E0E0E0E0B2b_.exit.i.i.i unwind label %bb.d, !noalias !4551

bb.ad:                                            ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24generate_trait_from_impl11used_paramss1_0B7_.exit.i.i.i.i, %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24generate_trait_from_impl11used_paramss1_0B7_.exit.thread.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ao, i64 48 ; 4 uses
  %i.cn = load i32, ptr %i.cm, align 4, !noalias !4599, !noundef !6 ; 2 uses
  %i.co = icmp eq i32 %i.cn, -1
  br i1 %i.co, label %bb.af, label %_RNCINvNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructors14iterator_inputNtNtNtB8_9generated5nodes12GenericParamINtNtNtNtCshzWfHUSfYae_4core4iter8adapters8peekable8PeekableINtNtB21_6filter6FilterINtB8_11AstChildrenB1j_ENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24generate_trait_from_impl11used_paramss1_0EEE0B3N_.exit.i.i.i.i.i, !prof !4

bb.ae:                                            ; preds = %bb.af
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = load i32, ptr %i.cm, align 4, !noalias !4599, !noundef !6
  %i.cr = add i32 %i.cq, -1                       ; 2 uses
  store i32 %i.cr, ptr %i.cm, align 4, !noalias !4599
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i.i, label %.body.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i.i: ; preds = %bb.ae
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ao) #27
          to label %.body.i.i.i unwind label %bb.ag, !noalias !4599

bb.af:                                            ; preds = %bb.ad
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #29
          to label %.noexc3.i.i.i.i.i.i unwind label %bb.ae, !noalias !4599

.noexc3.i.i.i.i.i.i:                              ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i.i
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #26, !noalias !4599
  unreachable

_RNCINvNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructors14iterator_inputNtNtNtB8_9generated5nodes12GenericParamINtNtNtNtCshzWfHUSfYae_4core4iter8adapters8peekable8PeekableINtNtB21_6filter6FilterINtB8_11AstChildrenB1j_ENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24generate_trait_from_impl11used_paramss1_0EEE0B3N_.exit.i.i.i.i.i: ; preds = %bb.ad
  %i.cu = add nuw i32 %i.cn, 1
  store i32 %i.cu, ptr %i.cm, align 4, !noalias !4599
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4600
  store i64 %i.an, ptr %i.b, align 8, !noalias !4552
  store ptr %i.ao, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4552
  store ptr %i.ao, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4552
  invoke void @_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2s_EE10extend_oneCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc8.i.i.i unwind label %bb.d, !noalias !4551

.noexc8.i.i.i:                                    ; preds = %_RNCINvNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructors14iterator_inputNtNtNtB8_9generated5nodes12GenericParamINtNtNtNtCshzWfHUSfYae_4core4iter8adapters8peekable8PeekableINtNtB21_6filter6FilterINtB8_11AstChildrenB1j_ENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24generate_trait_from_impl11used_paramss1_0EEE0B3N_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4600
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter11filter_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamuNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24generate_trait_from_impl11used_paramss1_0NCINvNtB6_3map8map_foldB11_TB11_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB19_11syntax_node12RustLanguageEEuNCINvNtNtB17_14syntax_factory12constructors14iterator_inputB11_INtNtB6_8peekable8PeekableINtB4_6FilterINtB17_11AstChildrenB11_EB23_EEE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3T_NCINvNvNtB7B_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB11_EIB99_B3Y_EEB3T_E0E0E0E0B2b_.exit.i.i.i

.body.thread.i.i.i.i:                             ; preds = %.body.thread26.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search17UsageSearchResultECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i.i
  %eh.lpad-body22.i.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i.i, %.body.thread26.i.i.i.i ], [ %.pn.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search17UsageSearchResultECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ao, i64 48 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !noalias !4554, !noundef !6
  %i.cx = add i32 %i.cw, -1                       ; 2 uses
  store i32 %i.cx, ptr %i.cv, align 4, !noalias !4554
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i16.i.i.i.i, label %.body.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i16.i.i.i.i: ; preds = %.body.thread.i.i.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ao) #27
          to label %.body.i.i.i unwind label %bb.ah, !noalias !4554

bb.ah:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i16.i.i.i.i
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #26, !noalias !4554
  unreachable

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter11filter_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamuNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24generate_trait_from_impl11used_paramss1_0NCINvNtB6_3map8map_foldB11_TB11_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB19_11syntax_node12RustLanguageEEuNCINvNtNtB17_14syntax_factory12constructors14iterator_inputB11_INtNtB6_8peekable8PeekableINtB4_6FilterINtB17_11AstChildrenB11_EB23_EEE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3T_NCINvNvNtB7B_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB11_EIB99_B3Y_EEB3T_E0E0E0E0B2b_.exit.i.i.i: ; preds = %.noexc8.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4550
  br label %bb.c

bb.ai:                                            ; preds = %bb.g
  %.val6.i.i.i = load ptr, ptr %i.r, align 8, !noalias !4550, !noundef !6 ; 3 uses
  %i.da = icmp eq ptr %.val6.i.i.i, null
  br i1 %i.da, label %bb.at, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.db = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 48 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !noalias !4551, !noundef !6
  %i.dd = add i32 %i.dc, -1                       ; 2 uses
  store i32 %i.dd, ptr %i.db, align 4, !noalias !4551
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.ak, label %bb.at

bb.ak:                                            ; preds = %bb.aj
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val6.i.i.i) #27, !noalias !4601
  br label %bb.at

bb.al:                                            ; preds = %bb.f
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #26, !noalias !4551
  unreachable

bb.am:                                            ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 48 ; 4 uses
  %i.dh = load i32, ptr %i.dg, align 4, !noalias !4602, !noundef !6 ; 2 uses
  %i.di = icmp eq i32 %i.dh, -1
  br i1 %i.di, label %bb.ao, label %_RNCINvNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructors14iterator_inputNtNtNtB8_9generated5nodes12GenericParamINtNtNtNtCshzWfHUSfYae_4core4iter8adapters8peekable8PeekableINtNtB21_6filter6FilterINtB8_11AstChildrenB1j_ENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24generate_trait_from_impl11used_paramss1_0EEE0B3N_.exit.i.i, !prof !4

bb.an:                                            ; preds = %bb.ao
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load i32, ptr %i.dg, align 4, !noalias !4602, !noundef !6
  %i.dl = add i32 %i.dk, -1                       ; 2 uses
  store i32 %i.dl, ptr %i.dg, align 4, !noalias !4602
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i, label %.body.thread17.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i: ; preds = %bb.an
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.4.0.copyload) #27
          to label %.body.thread17.i unwind label %bb.ap, !noalias !4602

bb.ao:                                            ; preds = %bb.am
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #29
          to label %.noexc3.i.i.i unwind label %bb.an, !noalias !4602

.noexc3.i.i.i:                                    ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i
end_hunk_0
