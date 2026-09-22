Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.08?download=true
inline.NumInlined: 5960
inline.NumDeleted: 2694
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB5_8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1r_8interner10DbInternerE24try_evaluate_added_goalsB1t_:bb.a
bb.da:                                            ; preds = %bb.cz
  switch i32 %narrow.i.i, label %bb.db [
    i32 0, label %.split.i
    i32 1, label %_RNvXs1J_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_13AliasTermKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1i_.exit.i
    i32 2, label %.split218.i
    i32 3, label %.split217.i
    i32 4, label %bb.dc
    i32 5, label %.split215.i
    i32 6, label %.split214.i
    i32 7, label %.split213.i
  ]

bb.db:                                            ; preds = %bb.da
  unreachable

.split.i:                                         ; preds = %bb.da
  %i.ia = icmp eq i32 %.sroa.17.0.copyload.i, %.sroa.16.0.copyload.i
  %i.ib = icmp eq i32 %.sroa.7161.0.copyload.i, %.sroa.6177.0.copyload.i
  %.sroa.0.0.i.i.i.i = select i1 %i.ia, i1 %i.ib, i1 false
  br i1 %.sroa.0.0.i.i.i.i, label %bb.de, label %_RNvXs1J_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_13AliasTermKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1i_.exit.thread.i

.split218.i:                                      ; preds = %bb.da
  %i.ic = icmp eq i32 %.sroa.17.0.copyload.i, %.sroa.16.0.copyload.i
  %i.id = icmp eq i32 %.sroa.7161.0.copyload.i, %.sroa.6177.0.copyload.i
  %.sroa.0.0.i.i31.i.i = select i1 %i.ic, i1 %i.id, i1 false
  br i1 %.sroa.0.0.i.i31.i.i, label %bb.de, label %_RNvXs1J_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_13AliasTermKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1i_.exit.thread.i

.split217.i:                                      ; preds = %bb.da
  %i.ie = icmp eq i32 %.sroa.17.0.copyload.i, %.sroa.16.0.copyload.i
  %i.if = icmp eq i32 %.sroa.7161.0.copyload.i, %.sroa.6177.0.copyload.i
  %.sroa.0.0.i.i32.i.i = select i1 %i.ie, i1 %i.if, i1 false
  br i1 %.sroa.0.0.i.i32.i.i, label %bb.de, label %_RNvXs1J_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_13AliasTermKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1i_.exit.thread.i

bb.dc:                                            ; preds = %bb.da
  %i.ig = icmp eq i32 %i.dy, %i.hr
  br i1 %i.ig, label %bb.dd, label %_RNvXs1J_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_13AliasTermKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1i_.exit.thread.i

bb.dd:                                            ; preds = %bb.dc
  %i.ih = icmp eq i32 %.sroa.17.0.copyload.i, %.sroa.16.0.copyload.i
  %i.ii = icmp eq i32 %.sroa.7161.0.copyload.i, %.sroa.6177.0.copyload.i
  %or.cond.i = select i1 %i.ih, i1 %i.ii, i1 false
  br i1 %or.cond.i, label %bb.de, label %_RNvXs1J_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_13AliasTermKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1i_.exit.thread.i

.split215.i:                                      ; preds = %bb.da
  %i.ij = icmp eq i32 %.sroa.17.0.copyload.i, %.sroa.16.0.copyload.i
  %i.ik = icmp eq i32 %.sroa.7161.0.copyload.i, %.sroa.6177.0.copyload.i
  %.sroa.0.0.i.i33.i.i = select i1 %i.ij, i1 %i.ik, i1 false
  br i1 %.sroa.0.0.i.i33.i.i, label %bb.de, label %_RNvXs1J_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_13AliasTermKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1i_.exit.thread.i

.split214.i:                                      ; preds = %bb.da
  %i.il = icmp eq i32 %.sroa.17.0.copyload.i, %.sroa.16.0.copyload.i
  %i.im = icmp eq i32 %.sroa.7161.0.copyload.i, %.sroa.6177.0.copyload.i
  %.sroa.0.0.i.i34.i.i = select i1 %i.il, i1 %i.im, i1 false
  br i1 %.sroa.0.0.i.i34.i.i, label %bb.de, label %_RNvXs1J_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_13AliasTermKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1i_.exit.thread.i

.split213.i:                                      ; preds = %bb.da
  %i.in = icmp eq i32 %.sroa.17.0.copyload.i, %.sroa.16.0.copyload.i
  %i.io = icmp eq i32 %.sroa.7161.0.copyload.i, %.sroa.6177.0.copyload.i
  %.sroa.0.0.i.i35.i.i = select i1 %i.in, i1 %i.io, i1 false
  br i1 %.sroa.0.0.i.i35.i.i, label %bb.de, label %_RNvXs1J_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_13AliasTermKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1i_.exit.thread.i

_RNvXs1J_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_13AliasTermKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1i_.exit.i: ; preds = %bb.da
  %i.ip = icmp eq i32 %.sroa.17.0.copyload.i, %.sroa.16.0.copyload.i
  %i.iq = icmp eq i32 %.sroa.7161.0.copyload.i, %.sroa.6177.0.copyload.i
  %.sroa.0.0.i.i30.i.i = select i1 %i.ip, i1 %i.iq, i1 false
  br i1 %.sroa.0.0.i.i30.i.i, label %bb.de, label %_RNvXs1J_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_13AliasTermKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1i_.exit.thread.i

bb.de:                                            ; preds = %_RNvXs1J_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_13AliasTermKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1i_.exit.i, %.split213.i, %.split214.i, %.split215.i, %bb.dd, %.split217.i, %.split218.i, %.split.i
  br label %_RNvXs1J_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_13AliasTermKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1i_.exit.thread.i

_RNvXs1J_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_13AliasTermKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1i_.exit.thread.i: ; preds = %bb.de, %_RNvXs1J_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_13AliasTermKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1i_.exit.i, %.split213.i, %.split214.i, %.split215.i, %bb.dd, %bb.dc, %.split217.i, %.split218.i, %.split.i, %bb.cz, %bb.cy
  %.sroa.035.2.i = phi i8 [ %.sroa.035.0307.i, %bb.de ], [ -1, %bb.cy ], [ -1, %_RNvXs1J_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_13AliasTermKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1i_.exit.i ], [ -1, %bb.dd ], [ -1, %bb.dc ], [ -1, %bb.cz ], [ -1, %.split218.i ], [ -1, %.split217.i ], [ -1, %.split215.i ], [ -1, %.split214.i ], [ -1, %.split213.i ], [ -1, %.split.i ] ; 3 uses
  %i.ir = and i32 %.sroa.667.0.copyload.i, 255
  %.not125.i = icmp eq i32 %i.ir, 2
  br i1 %.not125.i, label %bb.dj, label %bb.df

bb.df:                                            ; preds = %_RNvXs1J_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_13AliasTermKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1i_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !5994
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cb, ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i64 64, i1 false), !noalias !5994
  store i8 %.sroa.8.0.copyload.i, ptr %i.bz, align 8, !noalias !5994
  store ptr %i.hn, ptr %i.v, align 8, !noalias !5994
  store ptr %i.ho, ptr %i.ca, align 8, !noalias !5994
  %i.is = load i64, ptr %i.ba, align 8, !alias.scope !6015, !noalias !6016, !noundef !18 ; 3 uses
  %i.it = load i64, ptr %0, align 8, !range !21, !alias.scope !6015, !noalias !6016, !noundef !18
  %i.iu = icmp eq i64 %i.is, %i.it
  br i1 %i.iu, label %bb.dg, label %bb.dl

bb.dg:                                            ; preds = %bb.df
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve10GoalSourceINtBP_4GoalNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB1X_9predicate9PredicateEINtNtCshzWfHUSfYae_4core6option6OptionINtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13GoalStalledOnB1T_EEEE8grow_oneB1Z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %0)
          to label %bb.dl unwind label %bb.dh, !noalias !6016

bb.dh:                                            ; preds = %bb.dg
  %i.iv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13GoalStalledOnNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEEB2c_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.cb)
          to label %.thread.i unwind label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.iw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.dj:                                            ; preds = %_RNvXs1J_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_13AliasTermKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1i_.exit.thread.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13GoalStalledOnNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEEB2c_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.ae)
          to label %bb.dk unwind label %.loopexit229.i

.body141.thread200.i:                             ; preds = %.body141.thread.i
  br i1 %.sroa.054.0.lpad-body198.i, label %bb.dr, label %.thread.i

.loopexit229.i:                                   ; preds = %bb.dj
  %lpad.loopexit231.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.loopexit.split-lp230.i:                          ; preds = %bb.ct
  %lpad.loopexit.split-lp232.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.dk:                                            ; preds = %bb.dn, %bb.dl, %bb.dj
  %.sroa.16.2.i = phi i24 [ %.sroa.4111.0.extract.trunc.i, %bb.dn ], [ %.sroa.16.0306.i, %bb.dj ], [ %.sroa.16.0306.i, %bb.dl ]
  %.sroa.035.3.i = phi i8 [ %.sroa.0110.0.extract.trunc.i, %bb.dn ], [ %.sroa.035.2.i, %bb.dj ], [ -1, %bb.dl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !5994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !5994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !5994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !5994
  br label %.backedge.i

bb.dl:                                            ; preds = %bb.dg, %bb.df
  %i.ix = load ptr, ptr %i.az, align 8, !alias.scope !6015, !noalias !6016, !nonnull !18, !noundef !18
  %i.iy = getelementptr inbounds nuw [88 x i8], ptr %i.ix, i64 %i.is
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.iy, ptr noundef nonnull align 8 dereferenceable(88) %i.v, i64 88, i1 false)
  %i.iz = add i64 %i.is, 1
  store i64 %i.iz, ptr %i.ba, align 8, !alias.scope !6015, !noalias !6016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !5994
  %.not126.i = icmp eq i8 %.sroa.035.2.i, -1
  br i1 %.not126.i, label %bb.dk, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %.sroa.4107.0.insert.ext.i = zext i24 %.sroa.16.0306.i to i32
  %.sroa.4107.0.insert.shift.i = shl nuw i32 %.sroa.4107.0.insert.ext.i, 8
  %.sroa.0106.0.insert.ext.i = zext i8 %.sroa.035.2.i to i32
  %.sroa.0106.0.insert.insert.i = or disjoint i32 %.sroa.4107.0.insert.shift.i, %.sroa.0106.0.insert.ext.i
  %i.ja = invoke i32 @_RNvMsj_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solveNtB5_9Certainty3and(i32 %.sroa.0106.0.insert.insert.i, i32 %.sroa.667.0.copyload.i)
          to label %bb.dn unwind label %.body141.i ; 2 uses

bb.dn:                                            ; preds = %bb.dm
  %.sroa.0110.0.extract.trunc.i = trunc i32 %i.ja to i8
  %.sroa.4111.0.extract.shift.i = lshr i32 %i.ja, 8
  %.sroa.4111.0.extract.trunc.i = trunc nuw i32 %.sroa.4111.0.extract.shift.i to i24
  br label %bb.dk

bb.do:                                            ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !5994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !5994
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !5994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !5994
  br label %bb.ds

.body141.thread.i:                                ; preds = %bb.cr, %bb.ck, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit47.i.i, %.body141.thread206.loopexit.split-lp.i, %.body141.thread206.loopexit.i
  %eh.lpad-body142199.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit47.i.i ], [ %i.hd, %bb.ck ], [ %.pn53.i.i, %bb.cr ], [ %lpad.loopexit223.i, %.body141.thread206.loopexit.i ], [ %lpad.loopexit.split-lp224.i, %.body141.thread206.loopexit.split-lp.i ] ; 2 uses
  %.sroa.054.0.lpad-body198.i = phi i1 [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit47.i.i ], [ false, %bb.ck ], [ false, %bb.cr ], [ %.sroa.054.0.ph.ph.i, %.body141.thread206.loopexit.i ], [ false, %.body141.thread206.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13GoalStalledOnNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEEB2c_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.ae) #48
          to label %.body141.thread200.i unwind label %bb.dq

bb.dq:                                            ; preds = %.thread187.i, %bb.dr, %.body141.thread.i, %.thread.i
  %i.jb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.dr:                                            ; preds = %.body141.thread200.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve10GoalSourceINtB1b_4GoalNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB2k_9predicate9PredicateEEEEB2m_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.af) #48
          to label %.thread.i unwind label %bb.dq

bb.ds:                                            ; preds = %bb.du, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !5994
  br label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve10GoalSourceINtBZ_4GoalNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB27_9predicate9PredicateEINtNtCshzWfHUSfYae_4core6option6OptionINtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13GoalStalledOnB23_EEEENtNtNtNtB3A_4iter6traits8iterator8Iterator4nextB29_.exit.thread.i

bb.dt:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !5994
  %i.jc = load i64, ptr %i.t, align 8, !range !25, !noalias !5994, !noundef !18
  %i.jd = icmp eq i64 %i.jc, -2
  br i1 %i.jd, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !5994
  br label %bb.ds

bb.dv:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !5994
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.u, ptr noundef nonnull align 8 dereferenceable(64) %i.t, i64 64, i1 false), !noalias !5994
  %i.je = load <2 x ptr>, ptr %.sroa.481.0..sroa_idx.i, align 8, !noalias !5994
  %.sroa.683.0.copyload.i = load i32, ptr %.sroa.683.0..sroa_idx.i, align 8, !noalias !5994 ; 2 uses
  %.sroa.784.0.copyload.i = load i8, ptr %.sroa.784.0..sroa_idx.i, align 4, !noalias !5994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !5994
  %1 = and i8 %.sroa.784.0.copyload.i, 1
  %i.jf = icmp eq i8 %1, 0
  %spec.select.i = select i1 %i.jf, i8 -1, i8 %.sroa.035.0307.i ; 3 uses
  %i.jg = and i32 %.sroa.683.0.copyload.i, 255
  %.not120.i = icmp eq i32 %i.jg, 2
  br i1 %.not120.i, label %bb.ea, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !5994
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cd, ptr noundef nonnull align 8 dereferenceable(64) %i.u, i64 64, i1 false), !noalias !5994
  store i8 %.sroa.8.0.copyload.i, ptr %i.cc, align 16, !noalias !5994
  store <2 x ptr> %i.je, ptr %i.r, align 16, !noalias !5994
  %i.jh = load i64, ptr %i.ba, align 8, !alias.scope !6017, !noalias !6018, !noundef !18 ; 3 uses
  %i.ji = load i64, ptr %0, align 8, !range !21, !alias.scope !6017, !noalias !6018, !noundef !18
  %i.jj = icmp eq i64 %i.jh, %i.ji
  br i1 %i.jj, label %bb.dx, label %bb.ed

bb.dx:                                            ; preds = %bb.dw
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve10GoalSourceINtBP_4GoalNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB1X_9predicate9PredicateEINtNtCshzWfHUSfYae_4core6option6OptionINtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13GoalStalledOnB1T_EEEE8grow_oneB1Z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %0)
          to label %bb.ed unwind label %bb.dy, !noalias !6018

bb.dy:                                            ; preds = %bb.dx
  %i.jk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13GoalStalledOnNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEEB2c_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.cd)
          to label %.thread.i unwind label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.jl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.ea:                                            ; preds = %bb.dv
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13GoalStalledOnNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEEB2c_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.u)
          to label %bb.eb unwind label %bb.q

bb.eb:                                            ; preds = %bb.ef, %bb.ed, %bb.ea
  %.sroa.16.4.i = phi i24 [ %.sroa.4117.0.extract.trunc.i, %bb.ef ], [ %.sroa.16.0306.i, %bb.ea ], [ %.sroa.16.0306.i, %bb.ed ]
  %.sroa.035.6.i = phi i8 [ %.sroa.0116.0.extract.trunc.i, %bb.ef ], [ %spec.select.i, %bb.ea ], [ -1, %bb.ed ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !5994
  br label %.backedge.i

bb.ec:                                            ; preds = %bb.ee
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.ed:                                            ; preds = %bb.dx, %bb.dw
  %i.jn = load ptr, ptr %i.az, align 8, !alias.scope !6017, !noalias !6018, !nonnull !18, !noundef !18
  %i.jo = getelementptr inbounds nuw [88 x i8], ptr %i.jn, i64 %i.jh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.jo, ptr noundef nonnull align 16 dereferenceable(88) %i.r, i64 88, i1 false)
  %i.jp = add i64 %i.jh, 1
  store i64 %i.jp, ptr %i.ba, align 8, !alias.scope !6017, !noalias !6018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5994
  %.not121.i = icmp eq i8 %spec.select.i, -1
  br i1 %.not121.i, label %bb.eb, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %.sroa.4113.0.insert.ext.i = zext i24 %.sroa.16.0306.i to i32
  %.sroa.4113.0.insert.shift.i = shl nuw i32 %.sroa.4113.0.insert.ext.i, 8
  %.sroa.0112.0.insert.ext.i = zext i8 %spec.select.i to i32
  %.sroa.0112.0.insert.insert.i = or disjoint i32 %.sroa.4113.0.insert.shift.i, %.sroa.0112.0.insert.ext.i
  %i.jq = invoke i32 @_RNvMsj_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solveNtB5_9Certainty3and(i32 %.sroa.0112.0.insert.insert.i, i32 %.sroa.683.0.copyload.i)
          to label %bb.ef unwind label %bb.ec     ; 2 uses

bb.ef:                                            ; preds = %bb.ee
  %.sroa.0116.0.extract.trunc.i = trunc i32 %i.jq to i8
  %.sroa.4117.0.extract.shift.i = lshr i32 %i.jq, 8
  %.sroa.4117.0.extract.trunc.i = trunc nuw i32 %.sroa.4117.0.extract.shift.i to i24
  br label %bb.eb

.thread187.i:                                     ; preds = %bb.v, %.thread192.loopexit.split-lp.i, %.thread192.loopexit.i
  %eh.lpad-body190.i = phi { ptr, i32 } [ %i.dq, %bb.v ], [ %lpad.loopexit.i, %.thread192.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.thread192.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13GoalStalledOnNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEEB2c_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.al) #48
          to label %.thread.i unwind label %bb.dq

bb.eg:                                            ; preds = %bb.n
  %i.jr = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.js = icmp ult i64 %i.jr, 2
  br i1 %i.js, label %bb.eh, label %bb.em

bb.eh:                                            ; preds = %bb.eg
  %i.jt = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB7_8EvalCtxtppE24try_evaluate_added_goalss_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.jt, label %bb.ei [
    i8 0, label %bb.em
    i8 1, label %bb.ej
    i8 2, label %bb.ej
  ], !prof !27

bb.ei:                                            ; preds = %bb.eh
  %i.ju = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB7_8EvalCtxtppE24try_evaluate_added_goalss_10___CALLSITE)
          to label %bb.ek unwind label %.loopexit.split-lp ; 2 uses

bb.ej:                                            ; preds = %bb.eh, %bb.eh, %bb.ek
  %.sroa.027.0 = phi i8 [ %i.ju, %bb.ek ], [ %i.jt, %bb.eh ], [ %i.jt, %bb.eh ]
  %i.jv = load ptr, ptr @_RNvNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB7_8EvalCtxtppE24try_evaluate_added_goalss_10___CALLSITE, align 8, !nonnull !18, !align !26, !noundef !18
  %i.jw = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jv, i8 noundef %.sroa.027.0)
          to label %bb.el unwind label %.loopexit.split-lp

bb.ek:                                            ; preds = %bb.ei
  %i.jx = icmp eq i8 %i.ju, 0
  br i1 %i.jx, label %bb.em, label %bb.ej

bb.el:                                            ; preds = %bb.ej
  br i1 %i.jw, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.ek, %bb.eh, %bb.eg, %bb.eo, %bb.el
  %i.jy = trunc nuw i8 %.sroa.033.1 to i1
  %i.jz = load i64, ptr %i.at, align 8, !range !28
  %.not.i.i64 = icmp ne i64 %i.jz, 2
  %or.cond85.not = select i1 %i.jy, i1 %.not.i.i64, i1 false
  br i1 %or.cond85.not, label %bb.ep, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit70

bb.en:                                            ; preds = %bb.el
  %i.ka = load ptr, ptr @_RNvNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB7_8EvalCtxtppE24try_evaluate_added_goalss_10___CALLSITE, align 8, !nonnull !18, !align !26, !noundef !18 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store ptr @258, ptr %i.ap, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr inttoptr (i64 93 to ptr), ptr %i.kc, align 8
  store ptr %i.ap, ptr %i.aq, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @35, ptr %i.kd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store i64 1, ptr %i.ao, align 8
  %.sroa.029.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.aq, ptr %.sroa.029.sroa.4.0..sroa_idx, align 8
  %.sroa.029.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 1, ptr %.sroa.029.sroa.5.0..sroa_idx, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %i.kb, ptr %.sroa.430.0..sroa_idx, align 8
  invoke void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ka, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ao)
          to label %bb.eo unwind label %.loopexit.split-lp

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.em

bb.ep:                                            ; preds = %bb.em
  %i.ke = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ke)
          to label %.thread unwind label %.thread74

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit73: ; preds = %bb.fd, %.body
  %i.kf = trunc nuw i8 %.sroa.036.0.lpad-body to i1
  br i1 %i.kf, label %bb.ff, label %common.resume

.thread74:                                        ; preds = %bb.ep, %bb.ex
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

.thread:                                          ; preds = %bb.ep
  %.pr = load i64, ptr %i.at, align 8, !alias.scope !6019 ; 2 uses
  %.not.i.i65 = icmp eq i64 %.pr, 2
  br i1 %.not.i.i65, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit70, label %bb.eq

bb.eq:                                            ; preds = %.thread
  %i.kh = load i64, ptr %i.ke, align 8, !range !30, !alias.scope !6020, !noundef !18
  %i.ki = invoke noundef zeroext i1 @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.at, i64 noundef %i.kh)
          to label %bb.es unwind label %bb.er     ; 0 uses

bb.er:                                            ; preds = %bb.eq
  %i.kj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbDqbwph1Irx_7tracing4span5InnerEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.at) #48
          to label %common.resume unwind label %bb.eu

bb.es:                                            ; preds = %bb.eq
  call void @llvm.experimental.noalias.scope.decl(metadata !6021)
  call void @llvm.experimental.noalias.scope.decl(metadata !6022)
  call void @llvm.experimental.noalias.scope.decl(metadata !6023)
  call void @llvm.experimental.noalias.scope.decl(metadata !6024)
  %i.kk = icmp eq i64 %.pr, 0
  br i1 %i.kk, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit70, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.kl = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6025)
  call void @llvm.experimental.noalias.scope.decl(metadata !6026)
  %i.km = load ptr, ptr %i.kl, align 8, !alias.scope !6027, !nonnull !18, !noundef !18
  %i.kn = atomicrmw sub ptr %i.km, i64 1 release, align 8, !noalias !6028
  %i.ko = icmp eq i64 %i.kn, 1
  br i1 %i.ko, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit70.sink.split, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit70

bb.eu:                                            ; preds = %bb.er
  %i.kp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47
  unreachable

common.resume:                                    ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit73, %bb.ff, %bb.ez, %bb.er
  %common.resume.op = phi { ptr, i32 } [ %i.kw, %bb.ez ], [ %i.kj, %bb.er ], [ %.pn78, %bb.ff ], [ %eh.lpad-body, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit73 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit70.sink.split: ; preds = %bb.et, %bb.fb
  %.sink = phi ptr [ %i.ky, %bb.fb ], [ %i.kl, %bb.et ]
  %.sroa.0.0.insert.insert.ph = phi i32 [ %.sroa.4.sroa.0.1, %bb.fb ], [ 256, %bb.et ]
end_hunk_0
