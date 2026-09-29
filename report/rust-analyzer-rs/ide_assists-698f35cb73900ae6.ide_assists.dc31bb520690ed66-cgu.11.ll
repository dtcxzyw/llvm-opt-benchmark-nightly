Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_assists-698f35cb73900ae6.ide_assists.dc31bb520690ed66-cgu.11?download=true
inline.NumInlined: 4635
inline.NumDeleted: 1658
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable16extract_variable:bb.a
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit.i unwind label %bb.lb, !noalias !2123

bb.lb:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i
  %i.adq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.val3.i609 = load ptr, ptr %i.adr, align 8, !alias.scope !2123, !nonnull !4, !noundef !4 ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %.val3.i609, i64 48 ; 2 uses
  %i.adt = load i32, ptr %i.ads, align 4, !noalias !2123, !noundef !4
  %i.adu = add i32 %i.adt, -1                     ; 2 uses
  store i32 %i.adu, ptr %i.ads, align 4, !noalias !2123
  %i.adv = icmp eq i32 %i.adu, 0
  br i1 %i.adv, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i6.i, label %.body438

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i6.i: ; preds = %bb.lb
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3.i609) #32
          to label %.body438 unwind label %bb.lc, !noalias !2123

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit572
  %i.adw = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.val1.i608 = load ptr, ptr %i.adw, align 8, !alias.scope !2123, !nonnull !4, !noundef !4 ; 2 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %.val1.i608, i64 48 ; 2 uses
  %i.ady = load i32, ptr %i.adx, align 4, !noalias !2123, !noundef !4
  %i.adz = add i32 %i.ady, -1                     ; 2 uses
  store i32 %i.adz, ptr %i.adx, align 4, !noalias !2123
  %i.aea = icmp eq i32 %i.adz, 0
  br i1 %i.aea, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i9.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops5range14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1g_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB25_11SyntaxTokenB2r_EEEECsiU5vK8fN4ZC_11ide_assists.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i9.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val1.i608) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops5range14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1g_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB25_11SyntaxTokenB2r_EEEECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.dm

bb.lc:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i6.i
  %i.aeb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !2123
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops5range14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1g_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB25_11SyntaxTokenB2r_EEEECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit684

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit684: ; preds = %.invoke, %bb.eb, %bb.dy, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit55.i, %.noexc436, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit682, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtBG_3map3MapINtNtBG_10filter_map9FilterMapNtNtCs9GitHPCrz2Q_5rowan6cursor8PreorderNCNvMs4_B29_NtB29_10SyntaxNode11descendants0ENvYINtNtB2b_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB2X_E4fromENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable16extract_variables1_0EEB5r_.exit459, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops5range14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1g_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB25_11SyntaxTokenB2r_EEEECsiU5vK8fN4ZC_11ide_assists.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  %i.aec = getelementptr inbounds nuw i8, ptr %i.kq, i64 48 ; 2 uses
  %i.aed = load i32, ptr %i.aec, align 8, !noundef !4
  %i.aee = add i32 %i.aed, -1                     ; 2 uses
  store i32 %i.aee, ptr %i.aec, align 8
  %i.aef = icmp eq i32 %i.aee, 0
  br i1 %i.aef, label %bb.ld, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit614

bb.ld:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit684
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.kq) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit614 unwind label %bb.cu

bb.le:                                            ; preds = %bb.kx
  %i.aeg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8Xq8PKFYOms_3hir9semantics14SemanticsScopeECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(88) %i.ai) #34
          to label %.body615 unwind label %bb.y

bb.lf:                                            ; preds = %bb.kx
  %i.aeh = extractvalue { i32, i32 } %i.adg, 0
  %i.aei = extractvalue { i32, i32 } %i.adg, 1
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsileJQcQObtj_7hir_def8resolver5ScopeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ai)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def8resolver8ResolverECsiU5vK8fN4ZC_11ide_assists.exit.i unwind label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.aej = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsileJQcQObtj_7hir_def8resolver5ScopeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ai)
          to label %.body615 unwind label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.aek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def8resolver8ResolverECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.lf
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsileJQcQObtj_7hir_def8resolver5ScopeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ai)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8Xq8PKFYOms_3hir9semantics14SemanticsScopeECsiU5vK8fN4ZC_11ide_assists.exit unwind label %.loopexit.split-lp852

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8Xq8PKFYOms_3hir9semantics14SemanticsScopeECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def8resolver8ResolverECsiU5vK8fN4ZC_11ide_assists.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.ael = invoke { i32, i32 } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE10text_rangeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aw)
          to label %bb.li unwind label %.loopexit.split-lp852 ; 2 uses

bb.li:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8Xq8PKFYOms_3hir9semantics14SemanticsScopeECsiU5vK8fN4ZC_11ide_assists.exit
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.aen = invoke { i32, i32 } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE10text_rangeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aem)
          to label %bb.lj unwind label %.loopexit.split-lp852 ; 2 uses

bb.lj:                                            ; preds = %bb.li
  %i.aeo = extractvalue { i32, i32 } %i.ael, 1
  %i.aep = extractvalue { i32, i32 } %i.ael, 0
  %i.aeq = extractvalue { i32, i32 } %i.aen, 0
  %i.aer = extractvalue { i32, i32 } %i.aen, 1
  %..i.i618 = call noundef i32 @llvm.umin.i32(i32 %i.aeq, i32 %i.aep) ; 2 uses
  %..i2.i619 = call noundef i32 @llvm.umax.i32(i32 %i.aer, i32 %i.aeo) ; 2 uses
  %.not.i620 = icmp ugt i32 %..i.i618, %..i2.i619
  br i1 %.not.i620, label %bb.lk, label %bb.ll, !prof !16

bb.lk:                                            ; preds = %bb.lj
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #36
          to label %.noexc621 unwind label %.loopexit.split-lp852

.noexc621:                                        ; preds = %bb.lk
  unreachable

bb.ll:                                            ; preds = %bb.lj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %cond = icmp eq i64 %i.abk, 29
  br i1 %cond, label %bb.ln, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.aes = load i8, ptr %i.aj, align 1, !range !6
  %i.aet = trunc nuw i8 %i.aes to i1
  %or.cond5 = select i1 %.not, i1 true, i1 %i.aet
  br i1 %or.cond5, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split, label %bb.lr

bb.ln:                                            ; preds = %bb.ll
  %i.aeu = invoke fastcc noundef ptr @_RNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token(ptr %.val309748835, i16 noundef 80)
          to label %bb.lo unwind label %.loopexit.split-lp852 ; 4 uses

bb.lo:                                            ; preds = %bb.ln
  %i.aev = icmp ne ptr %i.aeu, null
  %i.aew = zext i1 %i.aev to i8
  store i8 %i.aew, ptr %i.ag, align 1
  %i.aex = icmp eq ptr %i.aeu, null
  br i1 %i.aex, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aeu, i64 48 ; 2 uses
  %i.aez = load i32, ptr %i.aey, align 4, !noundef !4
  %i.afa = add i32 %i.aez, -1                     ; 2 uses
  store i32 %i.afa, ptr %i.aey, align 4
  %i.afb = icmp eq i32 %i.afa, 0
  br i1 %i.afb, label %bb.lq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit

bb.lq:                                            ; preds = %bb.lp
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.aeu) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit unwind label %.loopexit.split-lp852

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split: ; preds = %bb.lr, %bb.ls, %bb.lt, %bb.lm
  %.sink1290 = phi i8 [ 0, %bb.lm ], [ 0, %bb.lr ], [ %.sroa.497.0.copyload, %bb.lt ], [ 0, %bb.ls ]
  store i8 %.sink1290, ptr %i.ag, align 1
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split, %bb.lq, %bb.lo, %bb.lp
  %i.afc = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %i.afe = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aff = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.99.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.afg = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.afh = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.sroa.4100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.5101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.afi = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.afj = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.afk = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.afl = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.afm = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.afn = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.afo = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.afp = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.afq = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.afr = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.afs = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.aft = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.afu = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.afv = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.afw = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.afx = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  br label %bb.lu

bb.lr:                                            ; preds = %bb.lm
  %i.afy = load i32, ptr %i.aak, align 8, !range !32, !noundef !4
  %.not180 = icmp eq i32 %i.afy, -1
  br i1 %.not180, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.afz = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.095.0.copyload = load i32, ptr %i.afz, align 8 ; 2 uses
  %i.aga = icmp ne i32 %.sroa.095.0.copyload, 27
  call void @llvm.assume(i1 %i.aga)
  %i.agb = icmp eq i32 %.sroa.095.0.copyload, 14
  br i1 %i.agb, label %bb.lt, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split

bb.lt:                                            ; preds = %bb.ls
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afz, i64 24
  %.sroa.497.0.copyload = load i8, ptr %.sroa.497.0..sroa_idx, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split

bb.lu:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit, %.backedge
  %.sroa.075.0.idx1003 = phi i64 [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit ], [ %.sroa.075.0.add, %.backedge ] ; 3 uses
  %.sroa.075.0.ptr1004 = getelementptr inbounds nuw i8, ptr @79, i64 %.sroa.075.0.idx1003 ; 2 uses
  %.sroa.075.0.add = add nuw nsw i64 %.sroa.075.0.idx1003, 1 ; 2 uses
  %.sroa.075.0.ptr.val = load i8, ptr %.sroa.075.0.ptr1004, align 1 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2124)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.an, ptr %i.e, align 8, !noalias !2125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2125
  %.val8.i = load ptr, ptr %i.an, align 8, !alias.scope !2124, !noalias !2126, !nonnull !4, !noundef !4 ; 3 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %.val8.i, i64 48 ; 4 uses
  %i.agd = load i32, ptr %i.agc, align 4, !noalias !2126, !noundef !4 ; 2 uses
  %i.age = icmp eq i32 %i.agd, -1
  br i1 %i.age, label %bb.lv, label %bb.lw, !prof !16

bb.lv:                                            ; preds = %bb.lu
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #37
          to label %.noexc630 unwind label %.loopexit.split-lp852

.noexc630:                                        ; preds = %bb.lv
  unreachable

bb.lw:                                            ; preds = %bb.lu
  %i.agf = add nuw i32 %i.agd, 1
  store i32 %i.agf, ptr %i.agc, align 4, !noalias !2126
  store ptr %.val8.i, ptr %i.d, align 8, !noalias !2125
  store i8 0, ptr %i.afc, align 8, !noalias !2125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2127
  store ptr %i.afd, ptr %i.b, align 8, !noalias !2127
  store ptr %i.e, ptr %i.afe, align 8, !noalias !2127
  store ptr %i.afc, ptr %i.aff, align 8, !noalias !2127
  invoke void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBa_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1F_B1D_6parentENvYINtNtB1H_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtBc_7convert4FromB1D_E4fromENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvXs0_NtB8_10take_whileINtB5o_9TakeWhileppEB4v_8try_fold5checkB2J_uINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable6AnchorENCNvMs_B74_B72_4from0NCINvNvB4v_8find_map5checkB2J_B72_NCB8a_s_0E0E0IB6o_B6n_EEB78_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
          to label %.noexc.i625 unwind label %bb.lx, !noalias !2126

.noexc.i625:                                      ; preds = %bb.lw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2127
  %i.agg = load i64, ptr %i.c, align 8, !range !2128, !noalias !2127, !noundef !4 ; 3 uses
  %.not.i.i626 = icmp eq i64 %i.agg, -2
  br i1 %.not.i.i626, label %.thread.i, label %bb.ma

.thread.i:                                        ; preds = %.noexc.i625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2127
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable6AnchorEEB1m_.exit.i

bb.lx:                                            ; preds = %bb.lw
  %i.agh = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.val12.i = load ptr, ptr %i.d, align 8, !noalias !2125, !noundef !4 ; 3 uses
  %i.agi = icmp eq ptr %.val12.i, null
  br i1 %i.agi, label %.body615, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  %i.agj = getelementptr inbounds nuw i8, ptr %.val12.i, i64 48 ; 2 uses
  %i.agk = load i32, ptr %i.agj, align 4, !noalias !2126, !noundef !4
  %i.agl = add i32 %i.agk, -1                     ; 2 uses
  store i32 %i.agl, ptr %i.agj, align 4, !noalias !2126
  %i.agm = icmp eq i32 %i.agl, 0
  br i1 %i.agm, label %bb.lz, label %.body615

bb.lz:                                            ; preds = %bb.ly
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val12.i) #32
          to label %.body615 unwind label %bb.ns, !noalias !2126

bb.ma:                                            ; preds = %.noexc.i625
  %.sroa.99.0.copyload11.i = load ptr, ptr %.sroa.99.0..sroa_idx10.i, align 8, !noalias !2129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2127
  %.not.i627 = icmp eq i64 %i.agg, -1
  %spec.select56.i = select i1 %.not.i627, ptr undef, ptr %.sroa.99.0.copyload11.i
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable6AnchorEEB1m_.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable6AnchorEEB1m_.exit.i: ; preds = %bb.ma, %.thread.i
  %.sroa.0.032.i = phi i64 [ %i.agg, %bb.ma ], [ -1, %.thread.i ] ; 5 uses
  %.sroa.9.030.i = phi ptr [ %spec.select56.i, %bb.ma ], [ undef, %.thread.i ] ; 7 uses
  %.val11.i = load ptr, ptr %i.d, align 8, !noalias !2125, !noundef !4 ; 3 uses
  %i.agn = icmp eq ptr %.val11.i, null
  br i1 %i.agn, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtBG_3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B2l_B2j_6parentENvYINtNtB2n_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB2j_E4fromENCNvMs_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variableNtB5i_6Anchor4from0EEB5m_.exit23.i, label %bb.mb

bb.mb:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable6AnchorEEB1m_.exit.i
  %i.ago = getelementptr inbounds nuw i8, ptr %.val11.i, i64 48 ; 2 uses
  %i.agp = load i32, ptr %i.ago, align 4, !noalias !2126, !noundef !4
  %i.agq = add i32 %i.agp, -1                     ; 2 uses
  store i32 %i.agq, ptr %i.ago, align 4, !noalias !2126
  %i.agr = icmp eq i32 %i.agq, 0
  br i1 %i.agr, label %bb.mc, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtBG_3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B2l_B2j_6parentENvYINtNtB2n_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB2j_E4fromENCNvMs_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variableNtB5i_6Anchor4from0EEB5m_.exit23.i

bb.mc:                                            ; preds = %bb.mb
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val11.i) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtBG_3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B2l_B2j_6parentENvYINtNtB2n_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB2j_E4fromENCNvMs_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variableNtB5i_6Anchor4from0EEB5m_.exit23.i unwind label %.loopexit, !noalias !2126

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %.loopexit, %bb.nn, %bb.nm, %.body.i, %bb.mo, %bb.mn
  %.pn.i628 = phi { ptr, i32 } [ %i.ahg, %bb.mn ], [ %eh.lpad-body.i, %bb.nn ], [ %eh.lpad-body.i, %bb.nm ], [ %eh.lpad-body.i, %.body.i ], [ %i.ahg, %bb.mo ], [ %lpad.loopexit, %.loopexit ] ; 3 uses
  %i.ags = icmp eq i64 %.sroa.0.032.i, -1
  br i1 %i.ags, label %.body615, label %bb.md

bb.md:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.030.i) ]
  %i.agt = getelementptr inbounds nuw i8, ptr %.sroa.9.030.i, i64 48 ; 2 uses
  %i.agu = load i32, ptr %i.agt, align 4, !noalias !2126, !noundef !4
  %i.agv = add i32 %i.agu, -1                     ; 2 uses
  store i32 %i.agv, ptr %i.agt, align 4, !noalias !2126
  %i.agw = icmp eq i32 %i.agv, 0
  br i1 %i.agw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i25.i, label %.body615

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i25.i: ; preds = %bb.md
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.9.030.i) #32
          to label %.body615 unwind label %bb.ns, !noalias !2126

.loopexit:                                        ; preds = %bb.mc, %bb.nq
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit.i.thread: ; preds = %bb.mi
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body615

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtBG_3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B2l_B2j_6parentENvYINtNtB2n_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB2j_E4fromENCNvMs_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variableNtB5i_6Anchor4from0EEB5m_.exit23.i: ; preds = %bb.mc, %bb.mb, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable6AnchorEEB1m_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2125
  switch i8 %.sroa.075.0.ptr.val, label %default.unreachable.i [
    i8 1, label %bb.me
    i8 2, label %bb.mf
    i8 0, label %bb.mg
  ]

default.unreachable.i:                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtBG_3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B2l_B2j_6parentENvYINtNtB2n_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB2j_E4fromENCNvMs_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variableNtB5i_6Anchor4from0EEB5m_.exit23.i
  unreachable

bb.me:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtBG_3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B2l_B2j_6parentENvYINtNtB2n_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB2j_E4fromENCNvMs_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variableNtB5i_6Anchor4from0EEB5m_.exit23.i
  %.not3.i = icmp eq i64 %.sroa.0.032.i, -1
  br i1 %.not3.i, label %bb.mh, label %bb.mg

bb.mf:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtBG_3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B2l_B2j_6parentENvYINtNtB2n_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB2j_E4fromENCNvMs_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variableNtB5i_6Anchor4from0EEB5m_.exit23.i
  %.not2.i = icmp eq i64 %.sroa.0.032.i, -1
  br i1 %.not2.i, label %bb.mh, label %bb.mg

bb.mg:                                            ; preds = %bb.mf, %bb.me, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtBG_3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B2l_B2j_6parentENvYINtNtB2n_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB2j_E4fromENCNvMs_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variableNtB5i_6Anchor4from0EEB5m_.exit23.i
  %i.agx = ptrtoint ptr %.sroa.9.030.i to i64
  br label %bb.nu

bb.mh:                                            ; preds = %bb.mf, %bb.me
  %i.agy = load i32, ptr %i.agc, align 4, !noalias !2126, !noundef !4 ; 2 uses
  %i.agz = icmp eq i32 %i.agy, -1
  br i1 %i.agz, label %bb.mi, label %bb.mj, !prof !16

bb.mi:                                            ; preds = %bb.mh
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #37
          to label %.noexc27.i unwind label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit.i.thread, !noalias !2126

.noexc27.i:                                       ; preds = %bb.mi
  unreachable

bb.mj:                                            ; preds = %bb.mh
  %i.aha = add nuw i32 %i.agy, 1
  store i32 %i.aha, ptr %i.agc, align 4, !noalias !2126
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeINtNtB13_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable6AnchorENvYB1G_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1G_B3C_NCNvMs_B3E_B3C_4froms0_0E0E0B3I_.exit.thread.i.i, %bb.mj
  %.val.i.i.i5254.i.i = phi ptr [ %.val.i.i.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeINtNtB13_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable6AnchorENvYB1G_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1G_B3C_NCNvMs_B3E_B3C_4froms0_0E0E0B3I_.exit.thread.i.i ], [ %.val8.i, %bb.mj ] ; 9 uses
  %i.ahb = getelementptr i8, ptr %.val.i.i.i5254.i.i, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.ahb, align 8, !noalias !2130, !noundef !4 ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, null ; 4 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.mq, label %bb.mk

bb.mk:                                            ; preds = %.lr.ph.i.i
  %i.ahc = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 48 ; 2 uses
  %i.ahd = load i32, ptr %i.ahc, align 4, !noalias !2130, !noundef !4 ; 2 uses
  %i.ahe = icmp eq i32 %i.ahd, -1
  br i1 %i.ahe, label %bb.mm, label %bb.ml, !prof !16

bb.ml:                                            ; preds = %bb.mk
  %i.ahf = add nuw i32 %i.ahd, 1
  store i32 %i.ahf, ptr %i.ahc, align 4, !noalias !2130
  br label %bb.mq

bb.mm:                                            ; preds = %bb.mk
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #37
          to label %.noexc.i.i.i unwind label %bb.mn, !noalias !2130

.noexc.i.i.i:                                     ; preds = %bb.mm
  unreachable

bb.mn:                                            ; preds = %bb.mm
  %i.ahg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %.val.i.i.i5254.i.i, i64 48 ; 2 uses
  %i.ahi = load i32, ptr %i.ahh, align 4, !noalias !2130, !noundef !4
  %i.ahj = add i32 %i.ahi, -1                     ; 2 uses
  store i32 %i.ahj, ptr %i.ahh, align 4, !noalias !2130
  %i.ahk = icmp eq i32 %i.ahj, 0
  br i1 %i.ahk, label %bb.mo, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit.i

bb.mo:                                            ; preds = %bb.mn
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i.i.i5254.i.i) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit.i unwind label %bb.mp, !noalias !2130

bb.mp:                                            ; preds = %bb.mo
  %i.ahl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !2130
  unreachable

bb.mq:                                            ; preds = %bb.ml, %.lr.ph.i.i
  %i.ahm = getelementptr inbounds nuw i8, ptr %.val.i.i.i5254.i.i, i64 48 ; 8 uses
end_hunk_0
begin_hunk_1_@_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable16extract_variable:bb.a
  %i.ajw = add i32 %i.ajv, -1                     ; 2 uses
  store i32 %i.ajw, ptr %i.aju, align 4
  %i.ajx = icmp eq i32 %i.ajw, 0
  br i1 %i.ajx, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i634, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit636

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i634: ; preds = %bb.nt
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val232) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit636 unwind label %bb.ke

bb.nu:                                            ; preds = %bb.nr, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit33.i, %bb.mg, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i37.i
  %.sroa.8.1 = phi i64 [ %.sroa.8.0778, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit33.i ], [ %i.agx, %bb.mg ], [ %.sroa.8.0778, %bb.nr ], [ %.sroa.8.0778, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i37.i ] ; 2 uses
  %.sroa.0765.1 = phi i64 [ %.sroa.0765.0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit33.i ], [ %.sroa.0.032.i, %bb.mg ], [ %.sroa.0765.0, %bb.nr ], [ %.sroa.0765.0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i37.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not183 = icmp eq i64 %.sroa.0765.1, -1
  br i1 %.not183, label %.backedge, label %bb.nv

bb.nv:                                            ; preds = %bb.nu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i64 %.sroa.0765.1, ptr %i.af, align 8
  store i64 %.sroa.8.1, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.ajy = icmp eq i64 %.sroa.075.0.idx1003, 0
  br i1 %i.ajy, label %bb.nx, label %bb.nw

bb.nw:                                            ; preds = %bb.nv
  %i.ajz = inttoptr i64 %.sroa.8.1 to ptr
  %i.aka = load i32, ptr %i.aak, align 8, !range !32, !noundef !4
  %.not184 = icmp eq i32 %i.aka, -1
  br i1 %.not184, label %bb.nz, label %bb.ny

bb.nx:                                            ; preds = %bb.nv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ok unwind label %.loopexit856

bb.ny:                                            ; preds = %bb.nw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5106.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.aak, i64 12, i1 false)
  %i.akb = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4 ; 3 uses
  store ptr %i.akb, ptr %i.ad, align 8
  %i.akc = load i8, ptr %i.ag, align 1, !range !6, !noundef !4
  %i.akd = trunc nuw i8 %i.akc to i1
  br i1 %i.akd, label %bb.oj, label %bb.oa

bb.nz:                                            ; preds = %bb.nw, %bb.oj
  %.val329 = phi ptr [ %.val329.pre, %bb.oj ], [ %i.ajz, %bb.nw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.ake = getelementptr inbounds nuw i8, ptr %.val329, i64 48 ; 2 uses
  %i.akf = load i32, ptr %i.ake, align 4, !noundef !4
  %i.akg = add i32 %i.akf, -1                     ; 2 uses
  store i32 %i.akg, ptr %i.ake, align 4
  %i.akh = icmp eq i32 %i.akg, 0
  br i1 %i.akh, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.invoke, label %.backedge.sink.split

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.invoke: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit, %bb.nz
  %i.aki = phi ptr [ %.val329, %bb.nz ], [ %.val325, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit ]
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.aki) #32
          to label %.backedge.sink.split unwind label %.loopexit851

bb.oa:                                            ; preds = %bb.ny
  %i.akj = invoke noundef zeroext i1 @_RNvNtCsiU5vK8fN4ZC_11ide_assists5utils13is_body_const(ptr noundef nonnull align 8 %i.zj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ak)
          to label %bb.ob unwind label %.loopexit856

.body646:                                         ; preds = %.loopexit856, %.loopexit.split-lp857, %bb.ot, %.body643
  %.pn185.pn = phi { ptr, i32 } [ %.pn185, %.body643 ], [ %i.all, %bb.ot ], [ %lpad.loopexit858, %.loopexit856 ], [ %lpad.loopexit.split-lp859, %.loopexit.split-lp857 ] ; 2 uses
  %.val327 = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %.val327, i64 48 ; 2 uses
  %i.akl = load i32, ptr %i.akk, align 4, !noundef !4
  %i.akm = add i32 %i.akl, -1                     ; 2 uses
  store i32 %i.akm, ptr %i.akk, align 4
  %i.akn = icmp eq i32 %i.akm, 0
  br i1 %i.akn, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i640, label %.body615

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i640: ; preds = %.body646
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val327) #32
          to label %.body615 unwind label %bb.y

.loopexit856:                                     ; preds = %bb.nx, %bb.oa, %bb.oe, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i
  %lpad.loopexit858 = landingpad { ptr, i32 }
          cleanup
  br label %.body646

.loopexit.split-lp857:                            ; preds = %bb.ol
  %lpad.loopexit.split-lp859 = landingpad { ptr, i32 }
          cleanup
  br label %.body646

bb.ob:                                            ; preds = %bb.oa
  br i1 %i.akj, label %bb.oc, label %bb.oj

bb.oc:                                            ; preds = %bb.ob
  %.sroa.0108.0.copyload = load i32, ptr %i.akb, align 8 ; 2 uses
  %i.ako = icmp ne i32 %.sroa.0108.0.copyload, 27
  call void @llvm.assume(i1 %i.ako)
  switch i32 %.sroa.0108.0.copyload, label %bb.oe [
    i32 30, label %bb.oj
    i32 14, label %bb.od
  ]

bb.od:                                            ; preds = %bb.oc
  %.sroa.5112.0..sroa.0105.0.copyload.sroa_idx = getelementptr inbounds nuw i8, ptr %i.akb, i64 24
  %.sroa.5112.0.copyload = load i8, ptr %.sroa.5112.0..sroa.0105.0.copyload.sroa_idx, align 8
  %i.akp = trunc nuw i8 %.sroa.5112.0.copyload to i1
  br i1 %i.akp, label %bb.oj, label %bb.oe

bb.oe:                                            ; preds = %bb.oc, %bb.od
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.akq = load ptr, ptr %i.zj, align 8, !nonnull !4, !align !10, !noundef !4
  invoke void @_RNvYNtCs8Xq8PKFYOms_3hir4TypeNtNtCs8K4cjrcxBsw_6hir_ty7display10HirDisplay19display_source_codeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad, ptr noundef nonnull %i.akq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @7, i32 noundef %i.aeh, i32 noundef %i.aei, i1 noundef zeroext false)
          to label %bb.of unwind label %.loopexit856

bb.of:                                            ; preds = %bb.oe
  %i.akr = load i64, ptr %i.ac, align 8, !range !8, !noundef !4
  %i.aks = icmp eq i64 %i.akr, -1
  br i1 %i.aks, label %bb.og, label %bb.oh

bb.og:                                            ; preds = %bb.of
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.oj

bb.oh:                                            ; preds = %bb.of
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.oi

bb.oi:                                            ; preds = %bb.om, %bb.oh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef 15, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.on unwind label %.loopexit861

bb.oj:                                            ; preds = %bb.oc, %bb.ob, %bb.ny, %bb.od, %bb.og
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %.val329.pre = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.nz

.backedge.sink.split:                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.invoke, %bb.nz, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %.backedge

.backedge:                                        ; preds = %.backedge.sink.split, %bb.nu
  %i.akt = icmp eq i64 %.sroa.075.0.add, 3
  br i1 %i.akt, label %bb.nt, label %bb.lu

bb.ok:                                            ; preds = %bb.nx
  %i.aku = load i64, ptr %i.v, align 8, !range !5, !noundef !4
  %i.akv = trunc nuw i64 %i.aku to i1
  %i.akw = load i64, ptr %i.afg, align 8, !range !29, !noundef !4 ; 2 uses
  br i1 %i.akv, label %bb.ol, label %bb.om, !prof !16

bb.ol:                                            ; preds = %bb.ok
  %i.akx = load i64, ptr %i.afh, align 8
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.akw, i64 %i.akx) #37
          to label %bb.ov unwind label %.loopexit.split-lp857

bb.om:                                            ; preds = %bb.ok
  %i.aky = load ptr, ptr %i.afh, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store i64 %i.akw, ptr %i.ae, align 8
  store ptr %i.aky, ptr %.sroa.4100.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.5101.0..sroa_idx, align 8
  br label %bb.oi

.body643:                                         ; preds = %.loopexit861, %.loopexit.split-lp862, %bb.or, %bb.op
  %.pn185 = phi { ptr, i32 } [ %i.ali, %bb.op ], [ %i.alj, %bb.or ], [ %lpad.loopexit863, %.loopexit861 ], [ %lpad.loopexit.split-lp864, %.loopexit.split-lp862 ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae) #34
          to label %.body646 unwind label %bb.y

.loopexit861:                                     ; preds = %bb.oi, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit.i
  %lpad.loopexit863 = landingpad { ptr, i32 }
          cleanup
  br label %.body643

.loopexit.split-lp862:                            ; preds = %bb.oo
  %lpad.loopexit.split-lp864 = landingpad { ptr, i32 }
          cleanup
  br label %.body643

bb.on:                                            ; preds = %bb.oi
  %i.akz = load i64, ptr %i.u, align 8, !range !5, !noundef !4
  %i.ala = trunc nuw i64 %i.akz to i1
  %i.alb = load i64, ptr %i.afi, align 8, !range !29, !noundef !4 ; 3 uses
  br i1 %i.ala, label %bb.oo, label %switch.lookup, !prof !16

bb.oo:                                            ; preds = %bb.on
  %i.alc = load i64, ptr %i.afj, align 8
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.alb, i64 %i.alc) #37
          to label %bb.ov unwind label %.loopexit.split-lp862

switch.lookup:                                    ; preds = %bb.on
  %i.ald = load ptr, ptr %i.afj, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ale = icmp samesign ugt i64 %i.alb, 14
  call void @llvm.assume(i1 %i.ale)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.ald, ptr noundef nonnull align 1 dereferenceable(15) @63, i64 15, i1 false)
  store i64 %i.alb, ptr %i.ab, align 8
  store ptr %i.ald, ptr %.sroa.4118.0..sroa_idx, align 8
  store i64 15, ptr %.sroa.5119.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %2 = zext nneg i8 %.sroa.075.0.ptr.val to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable16extract_variable, i64 %2
  %switch.load = load ptr, ptr %switch.gep, align 8
  %3 = zext nneg i8 %.sroa.075.0.ptr.val to i64
  %switch.gep1414 = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable16extract_variable.784, i64 %3
  %switch.load1415 = load i8, ptr %switch.gep1414, align 1
  %switch.ext = zext i8 %switch.load1415 to i64
  %i.alf = zext nneg i8 %.sroa.075.0.ptr.val to i64
  %switch.gep1416 = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable16extract_variable.785, i64 %i.alf
  %switch.load1417 = load i8, ptr %switch.gep1416, align 1
  %switch.ext1418 = zext i8 %switch.load1417 to i64
  %i.alg = zext nneg i8 %.sroa.075.0.ptr.val to i64
  %switch.gep1419 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_variable16extract_variable.786, i64 %i.alg
  %switch.load1420 = load ptr, ptr %switch.gep1419, align 8
  store ptr %switch.load, ptr %i.afk, align 8
  store i64 %switch.ext, ptr %i.afl, align 8
  store i8 3, ptr %i.afm, align 8
  store i64 0, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %.sroa.075.0.ptr1004, ptr %i.z, align 8
  store ptr %1, ptr %i.afn, align 8
  store ptr %i.av, ptr %i.afo, align 8
  store ptr %i.aw, ptr %i.afp, align 8
  store ptr %i.an, ptr %i.afq, align 8
  store ptr %i.au, ptr %i.afr, align 8
  store ptr %i.ak, ptr %i.afs, align 8
  store ptr %i.am, ptr %i.aft, align 8
  store ptr %i.aj, ptr %i.afu, align 8
  store ptr %i.ag, ptr %i.afv, align 8
  store ptr %i.ae, ptr %i.afw, align 8
  store ptr %i.af, ptr %i.afx, align 8
  %i.alh = invoke noundef zeroext i1 @_RINvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB5_7Assists9add_groupReNCNvNtNtB7_8handlers16extract_variable16extract_variables4_0EB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load1420, i64 noundef %switch.ext1418, i32 noundef %..i.i618, i32 noundef %..i2.i619, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %i.z)
          to label %bb.oq unwind label %bb.op     ; 0 uses

bb.op:                                            ; preds = %switch.lookup
  %i.ali = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db7assists10GroupLabelECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ab) #34
          to label %.body643 unwind label %bb.y

bb.oq:                                            ; preds = %switch.lookup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit.i unwind label %bb.or

bb.or:                                            ; preds = %bb.oq
  %i.alj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.body643 unwind label %bb.os

bb.os:                                            ; preds = %bb.or
  %i.alk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.oq
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db7assists10GroupLabelECsiU5vK8fN4ZC_11ide_assists.exit unwind label %.loopexit861

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db7assists10GroupLabelECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i unwind label %bb.ot

bb.ot:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db7assists10GroupLabelECsiU5vK8fN4ZC_11ide_assists.exit
  %i.all = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.body646 unwind label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  %i.alm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db7assists10GroupLabelECsiU5vK8fN4ZC_11ide_assists.exit
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit unwind label %.loopexit856

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %.val325 = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %.val325, i64 48 ; 2 uses
  %i.alo = load i32, ptr %i.aln, align 4, !noundef !4
  %i.alp = add i32 %i.alo, -1                     ; 2 uses
  store i32 %i.alp, ptr %i.aln, align 4
  %i.alq = icmp eq i32 %i.alp, 0
  br i1 %i.alq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.invoke, label %.backedge.sink.split

bb.ov:                                            ; preds = %bb.oo, %bb.ol
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit636: ; preds = %bb.nt, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br i1 %.not176843, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsiU5vK8fN4ZC_11ide_assists.exit656, label %bb.ow

bb.ow:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit636
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val309748835) ]
  %i.alr = getelementptr inbounds nuw i8, ptr %.val309748835, i64 48 ; 2 uses
  %i.als = load i32, ptr %i.alr, align 4, !noundef !4
  %i.alt = add i32 %i.als, -1                     ; 2 uses
  store i32 %i.alt, ptr %i.alr, align 4
  %i.alu = icmp eq i32 %i.alt, 0
  br i1 %i.alu, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i654, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsiU5vK8fN4ZC_11ide_assists.exit656

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i654: ; preds = %bb.ow
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val309748835) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsiU5vK8fN4ZC_11ide_assists.exit656 unwind label %bb.jj

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsiU5vK8fN4ZC_11ide_assists.exit656: ; preds = %bb.ow, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit636, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %.val217 = load ptr, ptr %i.an, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %.val217, i64 48 ; 2 uses
  %i.alw = load i32, ptr %i.alv, align 4, !noundef !4
  %i.alx = add i32 %i.alw, -1                     ; 2 uses
  store i32 %i.alx, ptr %i.alv, align 4
  %i.aly = icmp eq i32 %i.alx, 0
  br i1 %i.aly, label %bb.ox, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit658

bb.ox:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsiU5vK8fN4ZC_11ide_assists.exit656
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val217) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit658 unwind label %bb.jg

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit658: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsiU5vK8fN4ZC_11ide_assists.exit656, %bb.ox
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %.val230 = load ptr, ptr %i.rq, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.alz = getelementptr inbounds nuw i8, ptr %.val230, i64 48 ; 2 uses
  %i.ama = load i32, ptr %i.alz, align 4, !noundef !4
  %i.amb = add i32 %i.ama, -1                     ; 2 uses
  store i32 %i.amb, ptr %i.alz, align 4
  %i.amc = icmp eq i32 %i.amb, 0
  br i1 %i.amc, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i659, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit661

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i659: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit658
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val230) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit661 unwind label %bb.la

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit661: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit658, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.experimental.noalias.scope.decl(metadata !2133)
  %.val5.i662 = load ptr, ptr %i.rs, align 8, !alias.scope !2133, !nonnull !4, !noundef !4 ; 2 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %.val5.i662, i64 48 ; 2 uses
  %i.ame = load i32, ptr %i.amd, align 4, !noalias !2133, !noundef !4
  %i.amf = add i32 %i.ame, -1                     ; 2 uses
  store i32 %i.amf, ptr %i.amd, align 4, !noalias !2133
  %i.amg = icmp eq i32 %i.amf, 0
  br i1 %i.amg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i666, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit.i663

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i666: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit661
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val5.i662) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit.i663 unwind label %bb.oy, !noalias !2133

bb.oy:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i666
  %i.amh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.val3.i667 = load ptr, ptr %i.ami, align 8, !alias.scope !2133, !nonnull !4, !noundef !4 ; 2 uses
  %i.amj = getelementptr inbounds nuw i8, ptr %.val3.i667, i64 48 ; 2 uses
  %i.amk = load i32, ptr %i.amj, align 4, !noalias !2133, !noundef !4
  %i.aml = add i32 %i.amk, -1                     ; 2 uses
  store i32 %i.aml, ptr %i.amj, align 4, !noalias !2133
  %i.amm = icmp eq i32 %i.aml, 0
  br i1 %i.amm, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i6.i669, label %.body438

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i6.i669: ; preds = %bb.oy
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3.i667) #32
          to label %.body438 unwind label %bb.oz, !noalias !2133

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit.i663: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i666, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit661
  %i.amn = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.val1.i664 = load ptr, ptr %i.amn, align 8, !alias.scope !2133, !nonnull !4, !noundef !4 ; 2 uses
  %i.amo = getelementptr inbounds nuw i8, ptr %.val1.i664, i64 48 ; 2 uses
  %i.amp = load i32, ptr %i.amo, align 4, !noalias !2133, !noundef !4
  %i.amq = add i32 %i.amp, -1                     ; 2 uses
  store i32 %i.amq, ptr %i.amo, align 4, !noalias !2133
  %i.amr = icmp eq i32 %i.amq, 0
  br i1 %i.amr, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i9.i665, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops5range14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1g_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB25_11SyntaxTokenB2r_EEEECsiU5vK8fN4ZC_11ide_assists.exit673

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i9.i665: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit.i663
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val1.i664) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops5range14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1g_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB25_11SyntaxTokenB2r_EEEECsiU5vK8fN4ZC_11ide_assists.exit673 unwind label %bb.dm

bb.oz:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i6.i669
  %i.ams = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !2133
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops5range14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1g_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB25_11SyntaxTokenB2r_EEEECsiU5vK8fN4ZC_11ide_assists.exit673: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECsiU5vK8fN4ZC_11ide_assists.exit.i663, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i9.i665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  %i.amt = getelementptr inbounds nuw i8, ptr %i.kq, i64 48 ; 2 uses
  %i.amu = load i32, ptr %i.amt, align 8, !noundef !4
  %i.amv = add i32 %i.amu, -1                     ; 2 uses
  store i32 %i.amv, ptr %i.amt, align 8
  %i.amw = icmp eq i32 %i.amv, 0
  br i1 %i.amw, label %bb.pa, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit675

bb.pa:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops5range14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1g_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB25_11SyntaxTokenB2r_EEEECsiU5vK8fN4ZC_11ide_assists.exit673
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.kq) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit675 unwind label %bb.cu

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit675: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops5range14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1g_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB25_11SyntaxTokenB2r_EEEECsiU5vK8fN4ZC_11ide_assists.exit673, %bb.pa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %.val215 = load ptr, ptr %i.be, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.amx = getelementptr inbounds nuw i8, ptr %.val215, i64 48 ; 2 uses
  %i.amy = load i32, ptr %i.amx, align 4, !noundef !4
  %i.amz = add i32 %i.amy, -1                     ; 2 uses
  store i32 %i.amz, ptr %i.amx, align 4
  %i.ana = icmp eq i32 %i.amz, 0
  br i1 %i.ana, label %bb.pb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit402

bb.pb:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit675
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val215) #32
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit402

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit402: ; preds = %bb.pb, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit675, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types13TokenAtOffsetINtNtBG_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit368, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit340, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools11kmerge_impl8KMergeByINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB1x_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B2H_B2F_6parentENvYINtNtB2J_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB2F_E4fromENCNvNtB4e_4algo19ancestors_at_offsets_0EECsiU5vK8fN4ZC_11ide_assists.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit400, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i401, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit614, %bb.dk
  %.sroa.0.11 = phi i1 [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types13TokenAtOffsetINtNtBG_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit368 ], [ false, %bb.dk ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit614 ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i401 ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit400 ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools11kmerge_impl8KMergeByINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB1x_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B2H_B2F_6parentENvYINtNtB2J_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB2F_E4fromENCNvNtB4e_4algo19ancestors_at_offsets_0EECsiU5vK8fN4ZC_11ide_assists.exit ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit340 ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit675 ], [ true, %bb.pb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  ret i1 %.sroa.0.11

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit513: ; preds = %bb.hq, %bb.hr
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ue, i64 48 ; 2 uses
  %i.anc = load i32, ptr %i.anb, align 8, !noundef !4
  %i.and = add i32 %i.anc, -1                     ; 2 uses
  store i32 %i.and, ptr %i.anb, align 8
end_hunk_1
