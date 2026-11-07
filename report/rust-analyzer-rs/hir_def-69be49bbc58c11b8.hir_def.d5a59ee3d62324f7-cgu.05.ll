Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.05?download=true
inline.NumInlined: 4400
inline.NumDeleted: 1749
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 18
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@_RINvMs3_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB6_13ExprCollector25with_lifetime_bound_scopeuNCNvMNtB6_8genericsNtB1F_22GenericParamsCollector22lower_where_predicates0EBa_:bb.a
.body.i:                                          ; preds = %bb.an, %bb.am, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TypeBoundListEECsileJQcQObtj_7hir_def.exit.i, %bb.bw, %bb.bv, %bb.ac, %bb.ab, %bb.w, %bb.v, %bb.l
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.ej, %bb.bv ], [ %i.bc, %bb.ab ], [ %i.ar, %bb.v ], [ %i.af, %bb.l ], [ %i.ar, %bb.w ], [ %i.bc, %bb.ac ], [ %i.ej, %bb.bw ], [ %.pn.pn.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TypeBoundListEECsileJQcQObtj_7hir_def.exit.i ], [ %.pn.pn.i, %bb.am ], [ %.pn.pn.i, %bb.an ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !noundef !16
  %i.ad = add i32 %i.ac, -1                       ; 2 uses
  store i32 %i.ad, ptr %i.ab, align 4
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.k, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9WherePredECsileJQcQObtj_7hir_def.exit.i

bb.k:                                             ; preds = %.body.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.o) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9WherePredECsileJQcQObtj_7hir_def.exit.i unwind label %bb.bz

bb.l:                                             ; preds = %bb.af, %bb.y, %bb.r, %bb.p, %bb.o, %bb.n, %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.m:                                             ; preds = %bb.g
  %i.ag = extractvalue { i64, ptr } %i.v, 0       ; 2 uses
  %.not25.i = icmp eq i64 %i.ag, -1
  br i1 %.not25.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = extractvalue { i64, ptr } %i.v, 1
  %i.ai = invoke noundef i32 @_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector14lower_type_ref(ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, i64 noundef %i.ag, ptr noundef %i.ah, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @28)
          to label %bb.p unwind label %bb.l

bb.o:                                             ; preds = %bb.m
  %i.aj = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes8LifetimeECsileJQcQObtj_7hir_def(ptr nonnull %i.o)
          to label %bb.q unwind label %bb.l       ; 2 uses

bb.p:                                             ; preds = %bb.r, %bb.n
  %.sroa.6.0.i = phi i32 [ %i.ai, %bb.n ], [ %i.al, %bb.r ]
  %.sroa.02.0.i = phi i32 [ 0, %bb.n ], [ 1, %bb.r ]
  %i.ak = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes9ForBinderECsileJQcQObtj_7hir_def(ptr nonnull %i.o)
          to label %bb.t unwind label %bb.l       ; 6 uses

bb.q:                                             ; preds = %bb.o
  %.not26.i = icmp eq ptr %i.aj, null
  br i1 %.not26.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.al = invoke fastcc noundef i32 @_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector18lower_lifetime_ref(ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, ptr noundef nonnull %i.aj)
          to label %bb.p unwind label %bb.l

bb.s:                                             ; preds = %bb.q
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !noundef !16
  %i.ao = add i32 %i.an, -1                       ; 2 uses
  store i32 %i.ao, ptr %i.am, align 4
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.invoke.i, label %.backedge.i.backedge

bb.t:                                             ; preds = %bb.p
  %.not27.i = icmp eq ptr %i.ak, null
  br i1 %.not27.i, label %bb.ah, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aq = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes16GenericParamListECsileJQcQObtj_7hir_def(ptr nonnull %i.ak)
          to label %bb.x unwind label %bb.v       ; 6 uses

bb.v:                                             ; preds = %bb.u
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !noundef !16
  %i.au = add i32 %i.at, -1                       ; 2 uses
  store i32 %i.au, ptr %i.as, align 4
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.w, label %.body.i

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ak) #37
          to label %.body.i unwind label %bb.z

bb.x:                                             ; preds = %bb.u
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !noundef !16
  %i.ay = add i32 %i.ax, -1                       ; 2 uses
  store i32 %i.ay, ptr %i.aw, align 4
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.y, label %_RNCNCNvMNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower8genericsNtB6_22GenericParamsCollector22lower_where_predicates00Bc_.exit.i

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ak) #37
          to label %_RNCNCNvMNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower8genericsNtB6_22GenericParamsCollector22lower_where_predicates00Bc_.exit.i unwind label %bb.l

bb.z:                                             ; preds = %bb.w
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

_RNCNCNvMNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower8genericsNtB6_22GenericParamsCollector22lower_where_predicates00Bc_.exit.i: ; preds = %bb.y, %bb.x
  %.not28.i = icmp eq ptr %i.aq, null
  br i1 %.not28.i, label %bb.ah, label %bb.aa

bb.aa:                                            ; preds = %_RNCNCNvMNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower8genericsNtB6_22GenericParamsCollector22lower_where_predicates00Bc_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !883
  store ptr %i.aq, ptr %i.b, align 8, !noalias !883
  %i.bb = invoke noundef ptr @_RNvMsO_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtB7_9generated5nodes16GenericParamList15lifetime_params(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.ad unwind label %bb.ab

bb.ab:                                            ; preds = %bb.ad, %bb.aa
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 48 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !noundef !16
  %i.bf = add i32 %i.be, -1                       ; 2 uses
  store i32 %i.bf, ptr %i.bd, align 4
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.ac, label %.body.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.aq) #37
          to label %.body.i unwind label %bb.ag

bb.ad:                                            ; preds = %bb.aa
  %i.bh = invoke { ptr, i64 } @_RINvXsb_NtNtCsbSS6DM8SDEO_5alloc5boxed4iterINtB8_3BoxSNtNtCs33K2ylI4knu_10hir_expand4name4NameEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB1C_8adapters3map3MapINtNtB2O_10filter_map9FilterMapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB3J_9generated5nodes12GenericParamENCNvMsO_NtB3J_8node_extNtB4p_16GenericParamList15lifetime_params0ENCNCNCNvMNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower8genericsNtB6f_22GenericParamsCollector22lower_where_predicates0s_00EEB6l_(ptr noundef %i.bb)
          to label %bb.ae unwind label %bb.ab     ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aq, i64 48 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !noundef !16
  %i.bk = add i32 %i.bj, -1                       ; 2 uses
  store i32 %i.bk, ptr %i.bi, align 4
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.aq) #37
          to label %bb.ai unwind label %bb.l

bb.ag:                                            ; preds = %bb.ac
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.ah:                                            ; preds = %bb.ai, %_RNCNCNvMNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower8genericsNtB6_22GenericParamsCollector22lower_where_predicates00Bc_.exit.i, %bb.t
  %.sroa.7.0.i = phi i64 [ %i.bp, %bb.ai ], [ undef, %bb.t ], [ undef, %_RNCNCNvMNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower8genericsNtB6_22GenericParamsCollector22lower_where_predicates00Bc_.exit.i ] ; 11 uses
  %.sroa.01.0.i = phi ptr [ %i.bo, %bb.ai ], [ null, %bb.t ], [ null, %_RNCNCNvMNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower8genericsNtB6_22GenericParamsCollector22lower_where_predicates00Bc_.exit.i ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !883
  %i.bn = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes13TypeBoundListECsileJQcQObtj_7hir_def(ptr nonnull %i.o)
          to label %bb.ap unwind label %bb.ao     ; 2 uses

bb.ai:                                            ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !883
  %i.bo = extractvalue { ptr, i64 } %i.bh, 0
  %i.bp = extractvalue { ptr, i64 } %i.bh, 1
  br label %bb.ah

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TypeBoundListEECsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.ao
  %.pn.pn.i = phi { ptr, i32 } [ %i.bw, %bb.ao ], [ %.pn.i, %bb.bp ], [ %.pn.i, %bb.bn ], [ %.pn.i, %bb.bo ] ; 3 uses
  %i.bq = icmp eq ptr %.sroa.01.0.i, null
  br i1 %i.bq, label %.body.i, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TypeBoundListEECsileJQcQObtj_7hir_def.exit.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 %.sroa.01.0.i, i64 noundef %.sroa.7.0.i)
          to label %bb.am unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.bs = icmp eq i64 %.sroa.7.0.i, 0
  br i1 %i.bs, label %.body, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bt = shl nuw nsw i64 %.sroa.7.0.i, 3
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.01.0.i, i64 noundef range(i64 1, 0) %i.bt, i64 noundef 8) #31
  br label %.body

bb.am:                                            ; preds = %bb.aj
  %i.bu = icmp eq i64 %.sroa.7.0.i, 0
  br i1 %i.bu, label %.body.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bv = shl nuw nsw i64 %.sroa.7.0.i, 3
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.01.0.i, i64 noundef range(i64 1, 0) %i.bv, i64 noundef 8) #31
  br label %.body.i

bb.ao:                                            ; preds = %bb.bt, %bb.ah
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TypeBoundListEECsileJQcQObtj_7hir_def.exit.i

bb.ap:                                            ; preds = %bb.ah
  store ptr %i.bn, ptr %i.d, align 8, !noalias !883
  %.not29.i = icmp eq ptr %i.bn, null
  %..i = select i1 %.not29.i, ptr null, ptr %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !883
  store i64 1, ptr %i.c, align 8, !noalias !883
  store ptr %..i, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !883
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !883
  store i64 0, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !883
  %.not31.i = icmp eq ptr %.sroa.01.0.i, null     ; 2 uses
  %.sroa.5.0.i = select i1 %.not31.i, i64 undef, i64 %.sroa.7.0.i
  br label %.peel.begin.i

.peel.beginthread-pre-split.i:                    ; preds = %_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtBb_6option4IterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TypeBoundListENCNCNvMNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower8genericsNtB2V_22GenericParamsCollector22lower_where_predicates0s0_0EINtB1R_11AstChildrenNtB1N_9TypeBoundEENtNtNtB9_6traits8iterator8Iterator4nextB31_.exit.i
  %.pre.i.pr.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !884, !noalias !883
  br label %.peel.begin.i

.peel.begin.i:                                    ; preds = %.peel.beginthread-pre-split.i, %bb.ap
  %.pre.i.i = phi i64 [ %.pre.i.pr.i, %.peel.beginthread-pre-split.i ], [ 0, %bb.ap ]
  %i.bx = trunc nuw i64 %.pre.i.i to i1
  br i1 %i.bx, label %bb.aq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundEECsileJQcQObtj_7hir_def.exit.i.peel.i

bb.aq:                                            ; preds = %.peel.begin.i
  %i.by = invoke noundef ptr @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes9TypeBoundENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %.noexc59.peel.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc59.peel.i:                                  ; preds = %bb.aq
  %.not.i.i.peel.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.peel.i, label %bb.ar, label %_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtBb_6option4IterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TypeBoundListENCNCNvMNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower8genericsNtB2V_22GenericParamsCollector22lower_where_predicates0s0_0EINtB1R_11AstChildrenNtB1N_9TypeBoundEENtNtNtB9_6traits8iterator8Iterator4nextB31_.exit.i

bb.ar:                                            ; preds = %.noexc59.peel.i
  %.val.i.i.peel.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !range !24, !alias.scope !884, !noalias !883, !noundef !16
  %.val4.i.i.peel.i = load ptr, ptr %i.m, align 8, !alias.scope !884, !noalias !883 ; 3 uses
  %i.bz = icmp eq i64 %.val.i.i.peel.i, 0
  %i.ca = icmp eq ptr %.val4.i.i.peel.i, null
  %or.cond.i.i.i.peel.i = select i1 %i.bz, i1 true, i1 %i.ca
  br i1 %or.cond.i.i.i.peel.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9TypeBoundEEECsileJQcQObtj_7hir_def.exit.i.i.peel.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cb = getelementptr inbounds nuw i8, ptr %.val4.i.i.peel.i, i64 48 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !noundef !16
  %i.cd = add i32 %i.cc, -1                       ; 2 uses
  store i32 %i.cd, ptr %i.cb, align 4
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.at, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9TypeBoundEEECsileJQcQObtj_7hir_def.exit.i.i.peel.i

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val4.i.i.peel.i) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9TypeBoundEEECsileJQcQObtj_7hir_def.exit.i.i.peel.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9TypeBoundEEECsileJQcQObtj_7hir_def.exit.i.i.peel.i: ; preds = %bb.at, %bb.as, %bb.ar
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !884, !noalias !883
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundEECsileJQcQObtj_7hir_def.exit.i.peel.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundEECsileJQcQObtj_7hir_def.exit.i.peel.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9TypeBoundEEECsileJQcQObtj_7hir_def.exit.i.i.peel.i, %.peel.begin.i
  call void @llvm.experimental.noalias.scope.decl(metadata !885)
  %i.cf = load i64, ptr %i.c, align 8, !range !24, !alias.scope !886, !noalias !883, !noundef !16
  %i.cg = trunc nuw i64 %i.cf to i1
  br i1 %i.cg, label %bb.au, label %.loopexit145.i

bb.au:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundEECsileJQcQObtj_7hir_def.exit.i.peel.i
  call void @llvm.experimental.noalias.scope.decl(metadata !887)
  %i.ch = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !888, !noalias !883, !align !17, !noundef !16 ; 2 uses
  store ptr null, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !888, !noalias !883
  %.not.i.i.i.peel.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.peel.i, label %.loopexit145.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.val.i.i.i.peel.i = load ptr, ptr %i.ch, align 8, !noalias !889, !nonnull !16, !noundef !16 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.val.i.i.i.peel.i, i64 48 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !noalias !889, !noundef !16 ; 2 uses
  %i.ck = icmp eq i32 %i.cj, -1
  br i1 %i.ck, label %.loopexit146.i, label %bb.aw, !prof !23

bb.aw:                                            ; preds = %bb.av
  %i.cl = add nuw i32 %i.cj, 1
  store i32 %i.cl, ptr %i.ci, align 4, !noalias !889
  %i.cm = invoke noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %.val.i.i.i.peel.i)
          to label %.noexc63.peel.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc63.peel.i:                                  ; preds = %bb.aw
  %.val.i.peel.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !range !24, !alias.scope !890, !noalias !883, !noundef !16
  %.val4.i.peel.i = load ptr, ptr %i.m, align 8, !alias.scope !890, !noalias !883 ; 3 uses
  %i.cn = icmp eq i64 %.val.i.peel.i, 0
  %i.co = icmp eq ptr %.val4.i.peel.i, null
  %or.cond.i.i.peel.i = select i1 %i.cn, i1 true, i1 %i.co
  br i1 %or.cond.i.i.peel.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9TypeBoundEEECsileJQcQObtj_7hir_def.exit.i.peel.i.preheader, label %bb.ax

bb.ax:                                            ; preds = %.noexc63.peel.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.val4.i.peel.i, i64 48 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !noundef !16
  %i.cr = add i32 %i.cq, -1                       ; 2 uses
  store i32 %i.cr, ptr %i.cp, align 4
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.ay, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9TypeBoundEEECsileJQcQObtj_7hir_def.exit.i.peel.i.preheader

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val4.i.peel.i) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9TypeBoundEEECsileJQcQObtj_7hir_def.exit.i.peel.i.preheader unwind label %.loopexit.split-lp148.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9TypeBoundEEECsileJQcQObtj_7hir_def.exit.i.peel.i.preheader: ; preds = %bb.ay, %bb.ax, %.noexc63.peel.i
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9TypeBoundEEECsileJQcQObtj_7hir_def.exit.i.peel.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9TypeBoundEEECsileJQcQObtj_7hir_def.exit.i.peel.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9TypeBoundEEECsileJQcQObtj_7hir_def.exit.i.peel.i.backedge, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9TypeBoundEEECsileJQcQObtj_7hir_def.exit.i.peel.i.preheader
  %storemerge.i = phi ptr [ %i.cm, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9TypeBoundEEECsileJQcQObtj_7hir_def.exit.i.peel.i.preheader ], [ %i.dh, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9TypeBoundEEECsileJQcQObtj_7hir_def.exit.i.peel.i.backedge ]
  store i64 1, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !890, !noalias !883
  store ptr %storemerge.i, ptr %i.m, align 8, !alias.scope !890, !noalias !883
  %i.ct = invoke noundef ptr @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes9TypeBoundENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %.noexc59.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc59.i:                                       ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9TypeBoundEEECsileJQcQObtj_7hir_def.exit.i.peel.i
  %.not.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i, label %bb.az, label %_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtBb_6option4IterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TypeBoundListENCNCNvMNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower8genericsNtB2V_22GenericParamsCollector22lower_where_predicates0s0_0EINtB1R_11AstChildrenNtB1N_9TypeBoundEENtNtNtB9_6traits8iterator8Iterator4nextB31_.exit.i

bb.az:                                            ; preds = %.noexc59.i
  %.val.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !range !24, !alias.scope !884, !noalias !883, !noundef !16
  %.val4.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !884, !noalias !883 ; 3 uses
  %i.cu = icmp eq i64 %.val.i.i.i, 0
  %i.cv = icmp eq ptr %.val4.i.i.i, null
  %or.cond.i.i.i.i = select i1 %i.cu, i1 true, i1 %i.cv
  br i1 %or.cond.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundEECsileJQcQObtj_7hir_def.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cw = getelementptr inbounds nuw i8, ptr %.val4.i.i.i, i64 48 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !noundef !16
  %i.cy = add i32 %i.cx, -1                       ; 2 uses
  store i32 %i.cy, ptr %i.cw, align 4
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.bb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundEECsileJQcQObtj_7hir_def.exit.i.i

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val4.i.i.i) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundEECsileJQcQObtj_7hir_def.exit.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bb, %bb.at
  %lpad.loopexit.split-lp328 = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !884, !noalias !883
  br label %.body60.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundEECsileJQcQObtj_7hir_def.exit.i.i: ; preds = %bb.bb, %bb.ba, %bb.az
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !884, !noalias !883
  call void @llvm.experimental.noalias.scope.decl(metadata !891)
  %i.da = load i64, ptr %i.c, align 8, !range !24, !alias.scope !892, !noalias !883, !noundef !16
  %i.db = trunc nuw i64 %i.da to i1
  br i1 %i.db, label %bb.bc, label %.loopexit145.i

bb.bc:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundEECsileJQcQObtj_7hir_def.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !893)
  %i.dc = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !894, !noalias !883, !align !17, !noundef !16 ; 2 uses
  store ptr null, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !894, !noalias !883
  %.not.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i, label %.loopexit145.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.val.i.i.i.i = load ptr, ptr %i.dc, align 8, !noalias !895, !nonnull !16, !noundef !16 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 48 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !noalias !895, !noundef !16 ; 2 uses
  %i.df = icmp eq i32 %i.de, -1
  br i1 %i.df, label %.loopexit146.i, label %bb.be, !prof !23

.loopexit146.i:                                   ; preds = %bb.av, %bb.bd
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #40
          to label %.noexc62.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc62.i:                                       ; preds = %.loopexit146.i
  unreachable

bb.be:                                            ; preds = %bb.bd
  %i.dg = add nuw i32 %i.de, 1
  store i32 %i.dg, ptr %i.dd, align 4, !noalias !895
  %i.dh = invoke noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %.val.i.i.i.i)
          to label %.noexc63.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc63.i:                                       ; preds = %bb.be
  %.val.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !range !24, !alias.scope !890, !noalias !883, !noundef !16
  %.val4.i.i = load ptr, ptr %i.m, align 8, !alias.scope !890, !noalias !883 ; 3 uses
  %i.di = icmp eq i64 %.val.i.i, 0
  %i.dj = icmp eq ptr %.val4.i.i, null
  %or.cond.i.i.i = select i1 %i.di, i1 true, i1 %i.dj
  br i1 %or.cond.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9TypeBoundEEECsileJQcQObtj_7hir_def.exit.i.peel.i.backedge, label %bb.bf

bb.bf:                                            ; preds = %.noexc63.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 48 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !noundef !16
  %i.dm = add i32 %i.dl, -1                       ; 2 uses
  store i32 %i.dm, ptr %i.dk, align 4
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.bg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9TypeBoundEEECsileJQcQObtj_7hir_def.exit.i.peel.i.backedge

bb.bg:                                            ; preds = %bb.bf
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val4.i.i) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9TypeBoundEEECsileJQcQObtj_7hir_def.exit.i.peel.i.backedge unwind label %.loopexit147.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9TypeBoundEEECsileJQcQObtj_7hir_def.exit.i.peel.i.backedge: ; preds = %bb.bg, %bb.bf, %.noexc63.i
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9TypeBoundEEECsileJQcQObtj_7hir_def.exit.i.peel.i, !llvm.loop !879

.loopexit145.i:                                   ; preds = %bb.bc, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundEECsileJQcQObtj_7hir_def.exit.i.i, %bb.au, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundEECsileJQcQObtj_7hir_def.exit.i.peel.i
  %i.do = load i64, ptr %.sroa.522.0..sroa_idx.i, align 8, !range !24, !alias.scope !897, !noalias !883, !noundef !16
  %i.dp = trunc nuw i64 %i.do to i1
  br i1 %i.dp, label %bb.bh, label %.loopexit6.i

bb.bh:                                            ; preds = %.loopexit145.i
  %i.dq = invoke noundef ptr @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes9TypeBoundENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %.noexc64.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc64.i:                                       ; preds = %bb.bh
  %.not.i8.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i8.i.i, label %bb.bi, label %_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtBb_6option4IterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TypeBoundListENCNCNvMNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower8genericsNtB2V_22GenericParamsCollector22lower_where_predicates0s0_0EINtB1R_11AstChildrenNtB1N_9TypeBoundEENtNtNtB9_6traits8iterator8Iterator4nextB31_.exit.i

bb.bi:                                            ; preds = %.noexc64.i
  %.val.i9.i.i = load i64, ptr %.sroa.522.0..sroa_idx.i, align 8, !range !24, !alias.scope !897, !noalias !883, !noundef !16
  %.val4.i10.i.i = load ptr, ptr %i.n, align 8, !alias.scope !897, !noalias !883 ; 3 uses
  %i.dr = icmp eq i64 %.val.i9.i.i, 0
  %i.ds = icmp eq ptr %.val4.i10.i.i, null
  %or.cond.i.i11.i.i = select i1 %i.dr, i1 true, i1 %i.ds
  br i1 %or.cond.i.i11.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9TypeBoundEEECsileJQcQObtj_7hir_def.exit.i12.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.dt = getelementptr inbounds nuw i8, ptr %.val4.i10.i.i, i64 48 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !noundef !16
  %i.dv = add i32 %i.du, -1                       ; 2 uses
  store i32 %i.dv, ptr %i.dt, align 4
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.bk, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9TypeBoundEEECsileJQcQObtj_7hir_def.exit.i12.i.i

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val4.i10.i.i) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9TypeBoundEEECsileJQcQObtj_7hir_def.exit.i12.i.i unwind label %bb.bl

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9TypeBoundEEECsileJQcQObtj_7hir_def.exit.i12.i.i: ; preds = %bb.bk, %bb.bj, %bb.bi
  store i64 0, ptr %.sroa.522.0..sroa_idx.i, align 8, !alias.scope !897, !noalias !883
  br label %.loopexit6.i

bb.bl:                                            ; preds = %bb.bk
  %i.dx = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %.sroa.522.0..sroa_idx.i, align 8, !alias.scope !897, !noalias !883
  br label %.body60.i

.loopexit147.i:                                   ; preds = %bb.bg
  %lpad.loopexit153.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.loopexit.split-lp148.i:                          ; preds = %bb.ay
  %lpad.loopexit.split-lp154.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bm:                                            ; preds = %.loopexit.split-lp148.i, %.loopexit147.i
  %.lcssa86.i = phi ptr [ %i.dh, %.loopexit147.i ], [ %i.cm, %.loopexit.split-lp148.i ]
  %lpad.phi155.i = phi { ptr, i32 } [ %lpad.loopexit153.i, %.loopexit147.i ], [ %lpad.loopexit.split-lp154.i, %.loopexit.split-lp148.i ]
  store i64 1, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !890, !noalias !883
  store ptr %.lcssa86.i, ptr %i.m, align 8, !alias.scope !890, !noalias !883
  br label %.body60.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9TypeBoundEEECsileJQcQObtj_7hir_def.exit.i.peel.i, %bb.be, %bb.bh, %_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtBb_6option4IterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TypeBoundListENCNCNvMNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower8genericsNtB2V_22GenericParamsCollector22lower_where_predicates0s0_0EINtB1R_11AstChildrenNtB1N_9TypeBoundEENtNtNtB9_6traits8iterator8Iterator4nextB31_.exit.i, %bb.aq, %bb.aw, %.loopexit146.i
  %lpad.loopexit.split-lp331 = landingpad { ptr, i32 }
          cleanup
  br label %.body60.i

.body60.i:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bm, %bb.bl, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %eh.lpad-body61.i = phi { ptr, i32 } [ %lpad.phi155.i, %bb.bm ], [ %lpad.loopexit.split-lp328, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ], [ %i.dx, %bb.bl ], [ %lpad.loopexit.split-lp331, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtB4_6option4IterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TypeBoundListEINtB1H_11AstChildrenNtB1D_9TypeBoundENCNCNvMNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower8genericsNtB3m_22GenericParamsCollector22lower_where_predicates0s0_0EEB3s_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.c) #39
          to label %bb.bn unwind label %bb.bz

_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtBb_6option4IterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TypeBoundListENCNCNvMNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower8genericsNtB2V_22GenericParamsCollector22lower_where_predicates0s0_0EINtB1R_11AstChildrenNtB1N_9TypeBoundEENtNtNtB9_6traits8iterator8Iterator4nextB31_.exit.i: ; preds = %.noexc59.i, %.noexc64.i, %.noexc59.peel.i
  %.sroa.0.0.i.i = phi ptr [ %i.dq, %.noexc64.i ], [ %i.by, %.noexc59.peel.i ], [ %i.ct, %.noexc59.i ]
  invoke void @_RNvMNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower8genericsNtB2_22GenericParamsCollector29lower_type_bound_as_predicate(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, ptr noundef nonnull %.sroa.0.0.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) %.sroa.01.0.i, i64 %.sroa.5.0.i, i32 noundef %.sroa.02.0.i, i32 noundef %.sroa.6.0.i)
          to label %.peel.beginthread-pre-split.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit6.i:                                     ; preds = %.loopexit145.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9TypeBoundEEECsileJQcQObtj_7hir_def.exit.i12.i.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtB4_6option4IterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TypeBoundListEINtB1H_11AstChildrenNtB1D_9TypeBoundENCNCNvMNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower8genericsNtB3m_22GenericParamsCollector22lower_where_predicates0s0_0EEB3s_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.c)
          to label %bb.br unwind label %bb.bq

bb.bn:                                            ; preds = %bb.bq, %.body60.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body61.i, %.body60.i ], [ %i.ed, %bb.bq ] ; 3 uses
  %.val50.i = load ptr, ptr %i.d, align 8, !noalias !883, !noundef !16 ; 3 uses
  %i.dy = icmp eq ptr %.val50.i, null
  br i1 %i.dy, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TypeBoundListEECsileJQcQObtj_7hir_def.exit.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.dz = getelementptr inbounds nuw i8, ptr %.val50.i, i64 48 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !noundef !16
  %i.eb = add i32 %i.ea, -1                       ; 2 uses
  store i32 %i.eb, ptr %i.dz, align 4
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.bp, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TypeBoundListEECsileJQcQObtj_7hir_def.exit.i

bb.bp:                                            ; preds = %bb.bo
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val50.i) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TypeBoundListEECsileJQcQObtj_7hir_def.exit.i unwind label %bb.bz

bb.bq:                                            ; preds = %.loopexit6.i
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.br:                                            ; preds = %.loopexit6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !883
  %.val49.i = load ptr, ptr %i.d, align 8, !noalias !883, !noundef !16 ; 3 uses
  %i.ee = icmp eq ptr %.val49.i, null
  br i1 %i.ee, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TypeBoundListEECsileJQcQObtj_7hir_def.exit67.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ef = getelementptr inbounds nuw i8, ptr %.val49.i, i64 48 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !noundef !16
  %i.eh = add i32 %i.eg, -1                       ; 2 uses
  store i32 %i.eh, ptr %i.ef, align 4
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.bt, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TypeBoundListEECsileJQcQObtj_7hir_def.exit67.i

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val49.i) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TypeBoundListEECsileJQcQObtj_7hir_def.exit67.i unwind label %bb.ao

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TypeBoundListEECsileJQcQObtj_7hir_def.exit67.i: ; preds = %bb.bt, %bb.bs, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !883
  br i1 %.not31.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs33K2ylI4knu_10hir_expand4name4NameEEECsileJQcQObtj_7hir_def.exit.i, label %bb.bu

bb.bu:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TypeBoundListEECsileJQcQObtj_7hir_def.exit67.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 %.sroa.01.0.i, i64 noundef %.sroa.7.0.i)
          to label %bb.bx unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ek = icmp eq i64 %.sroa.7.0.i, 0
  br i1 %i.ek, label %.body.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.el = shl nuw nsw i64 %.sroa.7.0.i, 3
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.01.0.i, i64 noundef range(i64 1, 0) %i.el, i64 noundef 8) #31
  br label %.body.i

bb.bx:                                            ; preds = %bb.bu
  %i.em = icmp eq i64 %.sroa.7.0.i, 0
  br i1 %i.em, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs33K2ylI4knu_10hir_expand4name4NameEEECsileJQcQObtj_7hir_def.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.en = shl nuw nsw i64 %.sroa.7.0.i, 3
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.01.0.i, i64 noundef range(i64 1, 0) %i.en, i64 noundef 8) #31
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs33K2ylI4knu_10hir_expand4name4NameEEECsileJQcQObtj_7hir_def.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs33K2ylI4knu_10hir_expand4name4NameEEECsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.by, %bb.bx, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TypeBoundListEECsileJQcQObtj_7hir_def.exit67.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !noundef !16
  %i.eq = add i32 %i.ep, -1                       ; 2 uses
  store i32 %i.eq, ptr %i.eo, align 4
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %.invoke.i, label %.backedge.i.backedge

.invoke.i:                                        ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs33K2ylI4knu_10hir_expand4name4NameEEECsileJQcQObtj_7hir_def.exit.i, %bb.s
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.o) #37
          to label %.backedge.i.backedge unwind label %bb.e

.backedge.i.backedge:                             ; preds = %.invoke.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs33K2ylI4knu_10hir_expand4name4NameEEECsileJQcQObtj_7hir_def.exit.i, %bb.s
  br label %.backedge.i

bb.bz:                                            ; preds = %bb.bp, %.body60.i, %bb.k, %bb.d
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.ak, %bb.al, %bb.bz
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes9WherePredEECsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.d, %bb.c, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9WherePredECsileJQcQObtj_7hir_def.exit.i
  resume { ptr, i32 } %.pn.pn.pn.pn.i

_RNCNvMNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower8genericsNtB4_22GenericParamsCollector22lower_where_predicates0Ba_.exit: ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !883
  store i8 %i.g, ptr %i.f, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs3_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB6_13ExprCollector26extend_type_alias_lifetimeINtNtNtCs3gqD4ldeioo_8indexmap3set4iter8IntoIterNtNtCs33K2ylI4knu_10hir_expand4name4NameEEBa_(ptr noalias nofree noundef align 8 dereferenceable(1120) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 !guid !898 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 824
  tail call void @_RINvXs8_NtCs3gqD4ldeioo_8indexmap3setINtB6_8IndexSetNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBO_E6extendINtNtB6_4iter8IntoIterBO_EECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i32 @_RINvMs3_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB6_13ExprCollector28with_fresh_binding_expr_rootNCNvMs2_B6_BO_15lower_const_arg0EBa_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !924 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !925)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !926
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !927
  store i64 0, ptr %i.d, align 8, !alias.scope !925
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !929)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !930
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !931, !noundef !16 ; 2 uses
  %i.h = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.h)
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !932, !nonnull !16, !noundef !16
  %i.i = invoke fastcc { i64, ptr } @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4ExprECsileJQcQObtj_7hir_def(ptr nonnull %.val.i.i) #42
          to label %.noexc11 unwind label %.thread20, !inline_history !911 ; 2 uses

.noexc11:                                         ; preds = %bb.a
  %i.j = extractvalue { i64, ptr } %i.i, 0
  %i.k = extractvalue { i64, ptr } %i.i, 1
  %i.l = invoke fastcc noundef i32 @_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector16collect_expr_opt(ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, i64 noundef %i.j, ptr %i.k)
          to label %.noexc5 unwind label %.thread20, !inline_history !911 ; 3 uses

.noexc5:                                          ; preds = %.noexc11
  invoke void @_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEE5drainINtNtNtCshzWfHUSfYae_4core3ops5range9RangeFromjEEB1d_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.g)
          to label %.noexc6 unwind label %.thread20, !inline_history !912

.noexc6:                                          ; preds = %.noexc5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !933
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 416
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.noexc6
  %i.o = load ptr, ptr %i.a, align 8, !noalias !933, !nonnull !16, !noundef !16 ; 3 uses
  %i.p = load ptr, ptr %i.m, align 8, !noalias !933, !nonnull !16, !noundef !16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_RINvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB6_13ExprCollector29with_binding_owner_and_returnNCINvB2_18with_binding_ownerNCNvB2_15lower_const_arg0E0EBa_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store ptr %i.r, ptr %i.a, align 8, !noalias !933
  %i.s = load i32, ptr %i.o, align 4, !noundef !16
  %i.t = invoke { i32, i32 } @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEIBO_NtB1j_4ExprENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertB1l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n, i32 noundef %i.s, i32 noundef %i.l)
          to label %bb.b unwind label %bb.d, !inline_history !914 ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtCsbSS6DM8SDEO_5alloc3vec5drainINtB5_5DrainINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %.thread16 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !inline_history !914
  unreachable

_RINvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB6_13ExprCollector29with_binding_owner_and_returnNCINvB2_18with_binding_ownerNCNvB2_15lower_const_arg0E0EBa_.exit.i: ; preds = %bb.b
  invoke void @_RNvXs5_NtNtCsbSS6DM8SDEO_5alloc3vec5drainINtB5_5DrainINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %bb.f unwind label %.thread20

.thread20:                                        ; preds = %_RINvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB6_13ExprCollector29with_binding_owner_and_returnNCINvB2_18with_binding_ownerNCNvB2_15lower_const_arg0E0EBa_.exit.i, %.noexc11, %.noexc5, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread16

bb.f:                                             ; preds = %_RINvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB6_13ExprCollector29with_binding_owner_and_returnNCINvB2_18with_binding_ownerNCNvB2_15lower_const_arg0E0EBa_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !930
  %i.w = load i64, ptr %i.d, align 8, !range !24, !alias.scope !934, !noundef !16
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootj1_EEEB1B_.exit4, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootj1_EEEB1B_.exit4 unwind label %.thread
end_hunk_0
