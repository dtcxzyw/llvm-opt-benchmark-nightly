inline.NumInlined: 9136
inline.NumDeleted: 3144
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_RINvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB5_20TypeInferenceBuilder29infer_collection_literal_implKj1_EBb_:bb.a
  %i.nf = add i64 %.sroa.01.0.i.i.i, %i.ne
  %i.ng = and i64 %i.nf, %i.mw
  %i.nh = sub nsw i64 0, %i.ng
  %i.ni = getelementptr inbounds [44 x i8], ptr %i.mx, i64 %i.nh ; 5 uses
  %i.nj = getelementptr inbounds i8, ptr %i.ni, i64 -44
  %i.nk = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityINtB2_10EquivalentBq_E10equivalentBw_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(28) %i.bd, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(44) %i.nj)
          to label %.noexc303 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc303:                                        ; preds = %.lr.ph.i.i
  br i1 %i.nk, label %bb.dm, label %bb.dk, !prof !304

._crit_edge.i.i:                                  ; preds = %bb.dk, %bb.dj
  %i.nl = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.nm = bitcast <16 x i1> %i.nl to i16
  %i.nn = icmp eq i16 %i.nm, 0
  br i1 %i.nn, label %bb.dl, label %.thread624, !prof !282

bb.dk:                                            ; preds = %.noexc303
  %i.no = add i16 %.sroa.06.0.i33.i.i, -1
  %i.np = and i16 %i.no, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.np, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.dl:                                            ; preds = %._crit_edge.i.i
  %i.nq = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.nr = add i64 %.sroa.01.0.i.i.i, %i.nq
  br label %bb.dj

bb.dm:                                            ; preds = %.noexc303
  %i.ns = getelementptr inbounds i8, ptr %i.ni, i64 -16
  %.sroa.0148.0.copyload = load i32, ptr %i.ns, align 4 ; 7 uses
  %.sroa.4149.0..sroa.053.0.54.sroa_idx = getelementptr inbounds i8, ptr %i.ni, i64 -12
  %.sroa.4149.sroa.0.0.copyload = load i64, ptr %.sroa.4149.0..sroa.053.0.54.sroa_idx, align 4 ; 4 uses
  %.sroa.4149.sroa.4.0..sroa.4149.0..sroa.053.0.54.sroa_idx.sroa_idx = getelementptr inbounds i8, ptr %i.ni, i64 -4
  %.sroa.4149.sroa.4.0.copyload = load i8, ptr %.sroa.4149.sroa.4.0..sroa.4149.0..sroa.053.0.54.sroa_idx.sroa_idx, align 4 ; 4 uses
  %.sroa.4149.sroa.5.0..sroa.4149.0..sroa.053.0.54.sroa_idx.sroa_idx = getelementptr inbounds i8, ptr %i.ni, i64 -3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.8.sroa.7, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4149.sroa.5.0..sroa.4149.0..sroa.053.0.54.sroa_idx.sroa_idx, i64 3, i1 false)
  %.not167 = icmp eq i32 %.sroa.0148.0.copyload, -1
  br i1 %.not167, label %.thread624, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.nt = icmp ne i32 %.sroa.0148.0.copyload, 17
  call void @llvm.assume(i1 %i.nt)
  %i.nu = add nsw i32 %.sroa.0148.0.copyload, -4
  %i.nv = icmp samesign ugt i32 %.sroa.0148.0.copyload, 3
  %narrow.i = select i1 %i.nv, i32 %i.nu, i32 13
  switch i32 %narrow.i, label %_RNCINvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB7_20TypeInferenceBuilder29infer_collection_literal_implKj1_Esd_0Bd_.exit.thread [
    i32 0, label %.thread624
    i32 1, label %_RNCINvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB7_20TypeInferenceBuilder29infer_collection_literal_implKj1_Esd_0Bd_.exit
  ]

_RNCINvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB7_20TypeInferenceBuilder29infer_collection_literal_implKj1_Esd_0Bd_.exit: ; preds = %bb.dn
  %.not = icmp eq i8 %.sroa.4149.sroa.4.0.copyload, 2
  br i1 %.not, label %.thread624, label %_RNCINvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB7_20TypeInferenceBuilder29infer_collection_literal_implKj1_Esd_0Bd_.exit.thread

_RNCINvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB7_20TypeInferenceBuilder29infer_collection_literal_implKj1_Esd_0Bd_.exit.thread: ; preds = %bb.dn, %_RNCINvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB7_20TypeInferenceBuilder29infer_collection_literal_implKj1_Esd_0Bd_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.l, ptr noundef nonnull align 4 dereferenceable(28) %i.bd, i64 28, i1 false)
  invoke void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple9promotionNtB2_29TupleSizePromotionConstraints20record_declared_type(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.be, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(28) %i.l)
          to label %bb.ds unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.thread624:                                       ; preds = %._crit_edge.i.i, %_RNCINvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB7_20TypeInferenceBuilder29infer_collection_literal_implKj1_Esd_0Bd_.exit, %bb.dm, %bb.dh, %bb.dn, %bb.ds
  %.not167635 = phi i1 [ false, %bb.ds ], [ true, %bb.dh ], [ true, %bb.dm ], [ false, %_RNCINvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB7_20TypeInferenceBuilder29infer_collection_literal_implKj1_Esd_0Bd_.exit ], [ false, %bb.dn ], [ true, %._crit_edge.i.i ] ; 2 uses
  %.sroa.048.0633 = phi i32 [ %.sroa.0148.0.copyload, %bb.ds ], [ -1, %bb.dh ], [ -1, %bb.dm ], [ %.sroa.0148.0.copyload, %_RNCINvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB7_20TypeInferenceBuilder29infer_collection_literal_implKj1_Esd_0Bd_.exit ], [ %.sroa.0148.0.copyload, %bb.dn ], [ -1, %._crit_edge.i.i ]
  %.sroa.8.sroa.6.1631 = phi i8 [ %.sroa.4149.sroa.4.0.copyload, %bb.ds ], [ %.sroa.8.sroa.6.0838, %bb.dh ], [ %.sroa.4149.sroa.4.0.copyload, %bb.dm ], [ 2, %_RNCINvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB7_20TypeInferenceBuilder29infer_collection_literal_implKj1_Esd_0Bd_.exit ], [ %.sroa.4149.sroa.4.0.copyload, %bb.dn ], [ %.sroa.8.sroa.6.0838, %._crit_edge.i.i ] ; 2 uses
  %.sroa.8.sroa.0.1629 = phi i64 [ %.sroa.4149.sroa.0.0.copyload, %bb.ds ], [ %.sroa.8.sroa.0.0837, %bb.dh ], [ %.sroa.4149.sroa.0.0.copyload, %bb.dm ], [ %.sroa.4149.sroa.0.0.copyload, %_RNCINvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB7_20TypeInferenceBuilder29infer_collection_literal_implKj1_Esd_0Bd_.exit ], [ %.sroa.4149.sroa.0.0.copyload, %bb.dn ], [ %.sroa.8.sroa.0.0837, %._crit_edge.i.i ] ; 2 uses
  %i.nw = load i64, ptr %i.ja, align 8, !alias.scope !715, !noalias !718, !noundef !6
  %i.nx = icmp eq i64 %i.nw, 0
  br i1 %i.nx, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtNtBS_8variance15TypeVarVarianceNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBU_.exit.thread, label %bb.do

bb.do:                                            ; preds = %.thread624
  %i.ny = invoke noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityEB1F_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.jb, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(28) %i.bd)
          to label %.noexc317 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc317:                                        ; preds = %bb.do
  call void @llvm.experimental.noalias.scope.decl(metadata !720)
  call void @llvm.experimental.noalias.scope.decl(metadata !723)
  %i.nz = lshr i64 %i.ny, 57
  %i.oa = trunc nuw nsw i64 %i.nz to i8
  %i.ob = load i64, ptr %i.jc, align 8, !alias.scope !726, !noalias !727, !noundef !6 ; 2 uses
  %i.oc = load ptr, ptr %i.cp, align 8, !alias.scope !726, !noalias !727, !nonnull !6, !noundef !6 ; 2 uses
  %i.od = insertelement <16 x i8> poison, i8 %i.oa, i64 0
  %i.oe = shufflevector <16 x i8> %i.od, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.dp

bb.dp:                                            ; preds = %bb.dr, %.noexc317
  %.sroa.9.0.i.i.i305 = phi i64 [ 0, %.noexc317 ], [ %i.ov, %bb.dr ]
  %.pn.i.i.i306 = phi i64 [ %i.ny, %.noexc317 ], [ %i.ow, %bb.dr ]
  %.sroa.01.0.i.i.i307 = and i64 %.pn.i.i.i306, %i.ob ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 %.sroa.01.0.i.i.i307
  %.sroa.0.0.copyload.i26.i.i308 = load <16 x i8>, ptr %i.of, align 1, !noalias !730 ; 2 uses
  %i.og = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i308, %i.oe
  %i.oh = bitcast <16 x i1> %i.og to i16          ; 2 uses
  %.not.i.not32.i.i309 = icmp eq i16 %i.oh, 0
  br i1 %.not.i.not32.i.i309, label %._crit_edge.i.i313, label %.lr.ph.i.i310

.lr.ph.i.i310:                                    ; preds = %bb.dp, %bb.dq
  %.sroa.06.0.i33.i.i311 = phi i16 [ %i.ou, %bb.dq ], [ %i.oh, %bb.dp ] ; 3 uses
  %i.oi = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i311, i1 true)
  %i.oj = zext nneg i16 %i.oi to i64
  %i.ok = add i64 %.sroa.01.0.i.i.i307, %i.oj
  %i.ol = and i64 %i.ok, %i.ob
  %i.om = sub nsw i64 0, %i.ol
  %i.on = getelementptr inbounds [32 x i8], ptr %i.oc, i64 %i.om ; 2 uses
  %i.oo = getelementptr inbounds i8, ptr %i.on, i64 -32
  %i.op = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityINtB2_10EquivalentBq_E10equivalentBw_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(28) %i.bd, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.oo)
          to label %.noexc318 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc318:                                        ; preds = %.lr.ph.i.i310
  br i1 %i.op, label %bb.dt, label %bb.dq, !prof !304

._crit_edge.i.i313:                               ; preds = %bb.dq, %bb.dp
  %i.oq = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i308, splat (i8 -1)
  %i.or = bitcast <16 x i1> %i.oq to i16
  %i.os = icmp eq i16 %i.or, 0
  br i1 %i.os, label %bb.dr, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtNtBS_8variance15TypeVarVarianceNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBU_.exit.thread, !prof !282

bb.dq:                                            ; preds = %.noexc318
  %i.ot = add i16 %.sroa.06.0.i33.i.i311, -1
  %i.ou = and i16 %i.ot, %.sroa.06.0.i33.i.i311   ; 2 uses
  %.not.i.not.i.i312 = icmp eq i16 %i.ou, 0
  br i1 %.not.i.not.i.i312, label %._crit_edge.i.i313, label %.lr.ph.i.i310

bb.dr:                                            ; preds = %._crit_edge.i.i313
  %i.ov = add i64 %.sroa.9.0.i.i.i305, 16         ; 2 uses
  %i.ow = add i64 %.sroa.01.0.i.i.i307, %i.ov
  br label %bb.dp

bb.ds:                                            ; preds = %_RNCINvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB7_20TypeInferenceBuilder29infer_collection_literal_implKj1_Esd_0Bd_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.thread624

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtNtBS_8variance15TypeVarVarianceNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBU_.exit.thread: ; preds = %._crit_edge.i.i313, %.thread624
  br i1 %.not167635, label %.backedge736, label %bb.du

bb.dt:                                            ; preds = %.noexc318
  %i.ox = getelementptr inbounds i8, ptr %i.on, i64 -4
  %.val247 = load i8, ptr %i.ox, align 1, !range !733, !noundef !6
  %i.oy = trunc i8 %.val247 to i1
  %brmerge = or i1 %.not167635, %i.oy
  br i1 %brmerge, label %.backedge736, label %bb.du

.backedge736:                                     ; preds = %bb.dt, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtNtBS_8variance15TypeVarVarianceNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBU_.exit.thread, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %i.oz = icmp eq ptr %i.mn, %i.dv
  br i1 %i.oz, label %._crit_edge842, label %bb.dg

bb.du:                                            ; preds = %bb.dt, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtNtBS_8variance15TypeVarVarianceNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBU_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  store i32 %.sroa.048.0633, ptr %i.bc, align 4
  store i64 %.sroa.8.sroa.0.1629, ptr %.sroa.8.0..sroa_idx52, align 4
  store i8 %.sroa.8.sroa.6.1631, ptr %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx52.sroa_idx, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx52.sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.8.sroa.7, i64 3, i1 false)
  invoke void @_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB5_21SpecializationBuilder16add_type_mapping(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.ct, i32 noundef %i.mo, i32 noundef %i.mq, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.bc, i8 noundef 0)
          to label %bb.dv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br label %.backedge736

.sink.split989.sink.split:                        ; preds = %bb.en, %.split27.us.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i6.i, %bb.eg, %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %.sink.split989

.sink.split989:                                   ; preds = %.sink.split989.sink.split, %bb.eb, %bb.dx, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br label %bb.dw

bb.dw:                                            ; preds = %.sink.split989, %._crit_edge842
  %.idx859 = shl nuw nsw i64 %6, 3
  %i.pa = getelementptr inbounds nuw i8, ptr %5, i64 %.idx859
  %i.pb = icmp eq i64 %6, 0
  br i1 %i.pb, label %._crit_edge854, label %.lr.ph853

.lr.ph853:                                        ; preds = %bb.dw
  %i.pc = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.pd = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.pe = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.pf = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.pg = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %.sroa.5505.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %.sroa.5.0..sroa_idx.i366 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.10.0..sroa.5.0..sroa_idx.i366.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ph = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i367 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.pi = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.pj = load ptr, ptr %i.pi, align 8, !nonnull !6
  %i.pk = getelementptr inbounds nuw i8, ptr %i.cp, i64 24 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.cp, i64 32 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %.sroa.8515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %.sroa.10.0..sroa_idx578 = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.pn = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.pq = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.pr = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  br label %10

bb.dx:                                            ; preds = %._crit_edge842
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store i64 %3, ptr %i.bb, align 8
  %i.ps = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %4, ptr %i.ps, align 8
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.pu = load i32, ptr %i.pt, align 8, !range !734, !noundef !6
  %i.pv = icmp eq i32 %i.pu, 1
  br i1 %i.pv, label %bb.dy, label %.sink.split989

bb.dy:                                            ; preds = %bb.dx
  %i.pw = getelementptr inbounds nuw i8, ptr %1, i64 580
  %i.px = load i32, ptr %i.pw, align 4, !range !9, !noundef !6 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %1, i64 584
  %i.pz = load i32, ptr %i.py, align 8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  %.val211 = load ptr, ptr %i.dc, align 8, !nonnull !6, !noundef !6
  %.val212 = load ptr, ptr %i.dd, align 8, !nonnull !6, !align !7, !noundef !6
  %i.qa = invoke noundef nonnull align 4 ptr @_RINvMs8_NvNtCs2O29vuvTAEJ_14ty_python_core10expression1__NtB8_10Expression8node_refDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EB1o_(i32 noundef %i.px, i32 noundef %i.pz, ptr noundef nonnull %.val211, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val212)
          to label %bb.dz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dz:                                            ; preds = %bb.dy
  %i.qb = load i32, ptr %i.qa, align 4, !range !9, !noundef !6
  store i32 %i.qb, ptr %i.ba, align 4
  %i.qc = invoke noundef nonnull align 4 ptr @_RNvXs5K_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtB8_10node_index12HasNodeIndex10node_index(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bb)
          to label %bb.ea unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ea:                                            ; preds = %bb.dz
  %i.qd = invoke noundef zeroext i1 @_RNvXsb_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_9NodeIndexINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqNtB5_15AtomicNodeIndexE2eq(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ba, ptr noundef nonnull align 4 %i.qc)
          to label %bb.eb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br i1 %i.qd, label %bb.ec, label %.sink.split989

bb.ec:                                            ; preds = %bb.eb
  %.val209 = load ptr, ptr %i.dc, align 8, !nonnull !6, !noundef !6
  %.val210 = load ptr, ptr %i.dd, align 8, !nonnull !6, !align !7, !noundef !6
  %i.qe = invoke noundef i32 @_RINvMs8_NvNtCs2O29vuvTAEJ_14ty_python_core10expression1__NtB8_10Expression11assigned_toDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EB1s_(i32 noundef %i.px, i32 noundef %i.pz, ptr noundef nonnull %.val209, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val210)
          to label %bb.ed unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ed:                                            ; preds = %bb.ec
  %.not171 = icmp eq i32 %i.qe, 0
  br i1 %.not171, label %.sink.split989, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store i32 %i.qe, ptr %i.az, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.qf = getelementptr inbounds nuw i8, ptr %1, i64 240
  %.val244 = load ptr, ptr %i.qf, align 8, !nonnull !6, !align !7, !noundef !6
  %i.qg = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core12ast_node_refINtB4_10AstNodeRefNtNtCskLngH8kgpZI_15ruff_python_ast9generated10StmtAssignE4nodeCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val244, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10)
          to label %bb.ef unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ef:                                            ; preds = %bb.ee
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  %i.qi = load ptr, ptr %i.qh, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qg, i64 16
  %i.qk = load i64, ptr %i.qj, align 8, !noundef !6
  %i.ql = getelementptr inbounds nuw [72 x i8], ptr %i.qi, i64 %i.qk
  invoke void @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENCNvMsL_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB2d_17DefinitionNodeKey15from_assignment0ENtCs6Wt4yPw39th_9itertools9Itertools11exactly_oneCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ay, ptr noundef nonnull %i.qi, ptr noundef nonnull %i.ql)
          to label %bb.eg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.eg:                                            ; preds = %bb.ef
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.qn = load i32, ptr %i.qm, align 8, !range !255, !noundef !6
  %.not172 = icmp eq i32 %i.qn, 2
  br i1 %.not172, label %bb.eh, label %.sink.split989.sink.split

bb.eh:                                            ; preds = %bb.eg
  %i.qo = load i32, ptr %i.ay, align 8, !range !9, !noundef !6
  %i.qp = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.qq = load ptr, ptr %i.qp, align 8, !nonnull !6, !align !7, !noundef !6
  %i.qr = invoke { i32, i32 } @_RINvMs0_Cs2O29vuvTAEJ_14ty_python_coreNtB6_13SemanticIndex14try_definitionNtNtB6_10definition17DefinitionNodeKeyECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(400) %i.qq, i32 noundef %i.qo)
          to label %bb.ei unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ei:                                            ; preds = %bb.eh
  %i.qs = extractvalue { i32, i32 } %i.qr, 0      ; 3 uses
  %i.qt = extractvalue { i32, i32 } %i.qr, 1      ; 2 uses
  %.not173 = icmp eq i32 %i.qs, 0
  br i1 %.not173, label %.sink.split989.sink.split, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.qu = load ptr, ptr %i.qp, align 8, !nonnull !6, !align !7, !noundef !6
  invoke void @_RNvMs0_Cs2O29vuvTAEJ_14ty_python_coreNtB5_13SemanticIndex28constraining_collection_uses(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(400) %i.qu, i32 noundef %i.qs, i32 noundef %i.qt)
          to label %bb.ek unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ek:                                            ; preds = %bb.ej
  %.sroa.0460.0.copyload = load i64, ptr %i.ax, align 8
  %.sroa.5461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.5461.0.copyload = load ptr, ptr %.sroa.5461.0..sroa_idx, align 8
  %.sroa.8462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.sroa.8462.0.copyload = load ptr, ptr %.sroa.8462.0..sroa_idx, align 8
  %.sroa.15463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %.sroa.15463.0.copyload = load ptr, ptr %.sroa.15463.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %.sroa.17.0.copyload = load ptr, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.20464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %.sroa.20464.0.copyload = load ptr, ptr %.sroa.20464.0..sroa_idx, align 8 ; 2 uses
  %.fr28.i = freeze i64 %.sroa.0460.0.copyload
  %i.qv = trunc i64 %.fr28.i to i1
  %.sroa.9466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.qw = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %.sroa.6472.0..sroa_idx473 = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %.sroa.8475.0..sroa_idx476 = getelementptr inbounds nuw i8, ptr %i.au, i64 13
  %.sroa.6472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.8475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 9
  br label %bb.el

bb.el:                                            ; preds = %.loopexit722, %bb.ek
  %.sroa.5461.0 = phi ptr [ %.sroa.5461.0.copyload, %bb.ek ], [ %.sroa.5461.3.ph, %.loopexit722 ] ; 7 uses
  %.sroa.8462.0 = phi ptr [ %.sroa.8462.0.copyload, %bb.ek ], [ %.sroa.8462.5.ph, %.loopexit722 ] ; 10 uses
  %.sroa.15463.0 = phi ptr [ %.sroa.15463.0.copyload, %bb.ek ], [ %.sroa.15463.3.ph, %.loopexit722 ] ; 6 uses
  %.sroa.17.0 = phi ptr [ %.sroa.17.0.copyload, %bb.ek ], [ %.sroa.17.3.ph, %.loopexit722 ] ; 9 uses
  %.not.i.us.peel.i = icmp eq ptr %.sroa.8462.0, null
  %i.qx = icmp eq ptr %.sroa.8462.0, %.sroa.15463.0
  %or.cond708 = select i1 %.not.i.us.peel.i, i1 true, i1 %i.qx ; 2 uses
  br i1 %i.qv, label %.split.us.preheader.i, label %.split.i

.split.us.preheader.i:                            ; preds = %bb.el
  br i1 %or.cond708, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1X_7ast_ids8node_key17ExpressionNodeKeyEEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.thread.us.peel.i, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i.us.peel.i

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i.us.peel.i: ; preds = %.split.us.preheader.i
  %i.qy = getelementptr inbounds nuw i8, ptr %.sroa.8462.0, i64 16
  %.sroa.0.0.copyload3.i.us.peel.i = load i32, ptr %.sroa.8462.0, align 4, !noalias !735 ; 2 uses
  %.sroa.7.0..sroa_idx4.i.us.peel.i = getelementptr inbounds nuw i8, ptr %.sroa.8462.0, i64 4
  %.sroa.7.i.i.sroa.11.0..sroa.7.0..sroa_idx4.i.us.peel.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8462.0, i64 12
  %.not2.i.us.peel.i = icmp eq i32 %.sroa.0.0.copyload3.i.us.peel.i, -1
  br i1 %.not2.i.us.peel.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1X_7ast_ids8node_key17ExpressionNodeKeyEEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.thread.us.peel.i, label %bb.eo

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1X_7ast_ids8node_key17ExpressionNodeKeyEEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.thread.us.peel.i: ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i.us.peel.i, %.split.us.preheader.i
  %.not.i.i.us.peel.i = icmp eq ptr %.sroa.5461.0, null
  br i1 %.not.i.i.us.peel.i, label %.split27.us.i, label %bb.em

bb.em:                                            ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1X_7ast_ids8node_key17ExpressionNodeKeyEEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.thread.us.peel.i
  %.val.i.i.us.peel.i = load ptr, ptr %.sroa.5461.0, align 8, !noalias !746, !nonnull !6, !noundef !6 ; 5 uses
  %i.qz = getelementptr i8, ptr %.sroa.5461.0, i64 8
  %.val3.i.i.us.peel.i = load i64, ptr %i.qz, align 8, !noalias !746, !noundef !6 ; 2 uses
  %.idx.i = shl nuw nsw i64 %.val3.i.i.us.peel.i, 4
  %i.ra = getelementptr inbounds nuw i8, ptr %.val.i.i.us.peel.i, i64 %.idx.i ; 3 uses
  %i.rb = icmp eq i64 %.val3.i.i.us.peel.i, 0
  br i1 %i.rb, label %.split27.us.i, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i.us.i

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i.us.i: ; preds = %bb.em
  %i.rc = getelementptr inbounds nuw i8, ptr %.val.i.i.us.peel.i, i64 16
  %.sroa.0.0.copyload3.i.us.i = load i32, ptr %.val.i.i.us.peel.i, align 4, !noalias !751 ; 2 uses
  %.sroa.7.0..sroa_idx4.i.us.i = getelementptr inbounds nuw i8, ptr %.val.i.i.us.peel.i, i64 4
  %.sroa.7.i.i.sroa.11.0..sroa.7.0..sroa_idx4.i.us.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.val.i.i.us.peel.i, i64 12
  %.not2.i.us.i = icmp eq i32 %.sroa.0.0.copyload3.i.us.i, -1
  br i1 %.not2.i.us.i, label %.split27.us.i, label %bb.eo

.split.i:                                         ; preds = %bb.el
  br i1 %or.cond708, label %.split27.us.i, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i.i

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %.split.i
  %i.rd = getelementptr inbounds nuw i8, ptr %.sroa.8462.0, i64 16
  %.sroa.0.0.copyload3.i.i = load i32, ptr %.sroa.8462.0, align 4, !noalias !751 ; 2 uses
  %.sroa.7.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %.sroa.8462.0, i64 4
  %.sroa.7.i.i.sroa.11.0..sroa.7.0..sroa_idx4.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8462.0, i64 12
  %.not2.i.i = icmp eq i32 %.sroa.0.0.copyload3.i.i, -1
  br i1 %.not2.i.i, label %.split27.us.i, label %bb.eo

.split27.us.i:                                    ; preds = %bb.em, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i.us.i, %.split.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i.i, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1X_7ast_ids8node_key17ExpressionNodeKeyEEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.thread.us.peel.i
  %.sroa.5461.2 = phi ptr [ null, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1X_7ast_ids8node_key17ExpressionNodeKeyEEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.thread.us.peel.i ], [ %.sroa.5461.0, %.split.i ], [ null, %bb.em ], [ %.sroa.5461.0, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i.i ], [ null, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i.us.i ]
  %.sroa.15463.2 = phi ptr [ %.sroa.15463.0, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1X_7ast_ids8node_key17ExpressionNodeKeyEEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsoTR8nlGN3X_18ty_python_semantic.exit.thread.us.peel.i ], [ %.sroa.15463.0, %.split.i ], [ %i.ra, %bb.em ], [ %.sroa.15463.0, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i.i ], [ %i.ra, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i.us.i ]
  %.not.i5.i = icmp eq ptr %.sroa.17.0, null
  br i1 %.not.i5.i, label %.sink.split989.sink.split, label %bb.en

bb.en:                                            ; preds = %.split27.us.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.20464.0.copyload) ]
  %i.re = icmp eq ptr %.sroa.17.0, %.sroa.20464.0.copyload
  br i1 %i.re, label %.sink.split989.sink.split, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i6.i

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i6.i: ; preds = %bb.en
  %i.rf = getelementptr inbounds nuw i8, ptr %.sroa.17.0, i64 16
  %.sroa.0.0.copyload3.i7.i = load i32, ptr %.sroa.17.0, align 4, !noalias !755 ; 2 uses
  %.sroa.7.0..sroa_idx4.i8.i = getelementptr inbounds nuw i8, ptr %.sroa.17.0, i64 4
  %.sroa.7.i4.i.sroa.4.0..sroa.7.0..sroa_idx4.i8.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.17.0, i64 12
  %.not2.i9.i = icmp eq i32 %.sroa.0.0.copyload3.i7.i, -1
  br i1 %.not2.i9.i, label %.sink.split989.sink.split, label %bb.eo

bb.eo:                                            ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i6.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i.us.peel.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i.us.i
  %.sroa.5461.3.ph = phi ptr [ %.sroa.5461.2, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i6.i ], [ %.sroa.5461.0, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i.us.peel.i ], [ null, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i.us.i ], [ %.sroa.5461.0, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i.i ]
  %.sroa.8462.5.ph = phi ptr [ null, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i6.i ], [ %i.qy, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i.us.peel.i ], [ %i.rc, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i.us.i ], [ %i.rd, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i.i ]
  %.sroa.15463.3.ph = phi ptr [ %.sroa.15463.2, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i6.i ], [ %.sroa.15463.0, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i.us.peel.i ], [ %i.ra, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i.us.i ], [ %.sroa.15463.0, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i.i ]
  %.sroa.17.3.ph = phi ptr [ %i.rf, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i6.i ], [ %.sroa.17.0, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i.us.peel.i ], [ %.sroa.17.0, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i.us.i ], [ %.sroa.17.0, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i.i ]
  %.sroa.0465.1.ph = phi i32 [ %.sroa.0.0.copyload3.i7.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i6.i ], [ %.sroa.0.0.copyload3.i.us.peel.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i.us.peel.i ], [ %.sroa.0.0.copyload3.i.us.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i.us.i ], [ %.sroa.0.0.copyload3.i.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i.i ]
  %.sroa.9466.2.ph.in = phi ptr [ %.sroa.7.0..sroa_idx4.i8.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i6.i ], [ %.sroa.7.0..sroa_idx4.i.us.peel.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i.us.peel.i ], [ %.sroa.7.0..sroa_idx4.i.us.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i.us.i ], [ %.sroa.7.0..sroa_idx4.i.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i.i ]
  %.sroa.11468.2.ph.in = phi ptr [ %.sroa.7.i4.i.sroa.4.0..sroa.7.0..sroa_idx4.i8.i.sroa_idx, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i6.i ], [ %.sroa.7.i.i.sroa.11.0..sroa.7.0..sroa_idx4.i.us.peel.i.sroa_idx, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i.us.peel.i ], [ %.sroa.7.i.i.sroa.11.0..sroa.7.0..sroa_idx4.i.us.i.sroa_idx, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i.us.i ], [ %.sroa.7.i.i.sroa.11.0..sroa.7.0..sroa_idx4.i.i.sroa_idx, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBe_5slice4iter4IterTNtNtCs2O29vuvTAEJ_14ty_python_core9statement9StatementNtNtNtB1u_7ast_ids8node_key17ExpressionNodeKeyEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsoTR8nlGN3X_18ty_python_semantic.exit.i.i ]
  %.sroa.11468.2.ph = load i32, ptr %.sroa.11468.2.ph.in, align 4, !noalias !763
  %.sroa.9466.2.ph = load i64, ptr %.sroa.9466.2.ph.in, align 4, !noalias !763
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  store i32 %.sroa.0465.1.ph, ptr %i.aw, align 4
  store i64 %.sroa.9466.2.ph, ptr %.sroa.9466.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %.val207 = load ptr, ptr %i.dc, align 8, !nonnull !6, !noundef !6
  %.val208 = load ptr, ptr %i.dd, align 8, !nonnull !6, !align !7, !noundef !6
  invoke void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer21infer_statement_types(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.av, ptr noundef nonnull %.val207, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val208, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.aw)
          to label %bb.ep unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8475)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  invoke void @_RINvMsb_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB6_18StatementInference15expression_typeNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyEBa_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.au, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.av, i32 noundef %.sroa.11468.2.ph)
          to label %bb.eq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.experimental.noalias.scope.decl(metadata !764)
  %i.rg = load i32, ptr %i.au, align 4, !range !569, !alias.scope !767, !noalias !764, !noundef !6 ; 2 uses
  %i.rh = icmp ne i32 %i.rg, 17
  call void @llvm.assume(i1 %i.rh)
  %i.ri = icmp eq i32 %i.rg, 5
  br i1 %i.ri, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type12as_divergent.exit, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type12as_divergent.exit.thread

_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type12as_divergent.exit.thread: ; preds = %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.er

_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type12as_divergent.exit: ; preds = %bb.eq
  %.sroa.0470.0.copyload471 = load i64, ptr %i.qw, align 4, !alias.scope !769
  %.sroa.6472.0.copyload474 = load i8, ptr %.sroa.6472.0..sroa_idx473, align 4, !alias.scope !769 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.8475, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.8475.0..sroa_idx476, i64 3, i1 false), !alias.scope !769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %.not175 = icmp eq i8 %.sroa.6472.0.copyload474, -1
  br i1 %.not175, label %bb.er, label %bb.es

bb.er:                                            ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type12as_divergent.exit.thread, %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type12as_divergent.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8475)
  %i.rj = invoke noundef align 8 ptr @_RNvMsb_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB5_18StatementInference26collection_use_constraints(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.av, i32 noundef %i.qs, i32 noundef %i.qt)
          to label %bb.fa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

bb.es:                                            ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type12as_divergent.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store i64 %.sroa.0470.0.copyload471, ptr %i.at, align 8
  store i8 %.sroa.6472.0.copyload474, ptr %.sroa.6472.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.8475.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.8475, i64 3, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %.val205 = load ptr, ptr %i.dc, align 8, !nonnull !6, !noundef !6
  %.val206 = load ptr, ptr %i.dd, align 8, !nonnull !6, !align !7, !noundef !6
  %i.rk = invoke { i32, i32 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5classs0_1__NtB8_12GenericAlias6originDNtNtBc_2db2DbEL_EBc_(i32 noundef %i.dk, i32 noundef %i.dm, ptr noundef nonnull %.val205, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val206)
          to label %bb.et unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.et:                                            ; preds = %bb.es
  %i.rl = extractvalue { i32, i32 } %i.rk, 0
  %i.rm = extractvalue { i32, i32 } %i.rk, 1
  invoke void @_RINvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB6_18StaticClassLiteral20apply_specializationNCINvMs_NtNtBa_5infer7builderNtB24_20TypeInferenceBuilder29infer_collection_literal_implKj1_Esf_0EBc_(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.as, i32 noundef %i.rl, i32 noundef %i.rm, ptr noundef nonnull %.val231, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val232, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.at)
          to label %bb.eu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.eu:                                            ; preds = %bb.et
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  invoke void @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_4Type8instance(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.aq, ptr noundef nonnull %.val231, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val232, ptr noundef nonnull align 4 %.val233, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.as)
          to label %bb.ev unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %i.cv, i64 16, i1 false)
  invoke void @_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB5_21SpecializationBuilder5infer(ptr noalias noundef nonnull sret([28 x i8]) align 4 captures(address) dereferenceable(28) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(120) %i.ct, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.aq)
          to label %bb.ew unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %i.rn = load i32, ptr %i.ar, align 4, !range !255, !noundef !6
  %.not178 = icmp eq i32 %i.rn, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br i1 %.not178, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  store i32 -1, ptr %0, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8475)
  br label %bb.ez

bb.ey:                                            ; preds = %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8475)
  br label %.loopexit722

.loopexit722:                                     ; preds = %.backedge725, %bb.fb, %bb.fa, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.el

bb.ez:                                            ; preds = %bb.ff, %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br label %bb.fg

bb.fa:                                            ; preds = %bb.er
  %.not176 = icmp eq ptr %i.rj, null
  br i1 %.not176, label %.loopexit722, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rj, i64 8
  %i.rp = load ptr, ptr %i.ro, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rj, i64 16
  %i.rr = load i64, ptr %i.rq, align 8, !noundef !6 ; 2 uses
  %.idx858 = mul nuw nsw i64 %i.rr, 24
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rp, i64 %.idx858
  %i.rt = icmp eq i64 %i.rr, 0
  br i1 %i.rt, label %.loopexit722, label %.lr.ph845

.lr.ph845:                                        ; preds = %bb.fb, %.backedge725
  %.sroa.067.0843 = phi ptr [ %i.ru, %.backedge725 ], [ %i.rp, %bb.fb ] ; 3 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %.sroa.067.0843, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ap, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.067.0843, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.067.0843, i64 16, i1 false)
  %i.rv = invoke noundef zeroext i1 @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB4_4Type26has_unspecialized_type_var(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.j, ptr noundef nonnull %.val231, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val232, ptr noundef nonnull align 4 %.val233)
          to label %bb.fc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.fc:                                            ; preds = %.lr.ph845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %i.rv, label %.backedge725, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.cv, i64 16, i1 false)
  invoke void @_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB5_21SpecializationBuilder5infer(ptr noalias noundef nonnull sret([28 x i8]) align 4 captures(address) dereferenceable(28) %i.ao, ptr noalias noundef nonnull align 8 dereferenceable(120) %i.ct, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.i, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.ap)
          to label %bb.fe unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.rw = load i32, ptr %i.ao, align 4, !range !255, !noundef !6
  %.not177 = icmp eq i32 %i.rw, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br i1 %.not177, label %.backedge725, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  store i32 -1, ptr %0, align 4
  br label %bb.ez

.backedge725:                                     ; preds = %bb.fe, %bb.fc
  %i.rx = icmp eq ptr %i.ru, %i.rs
  br i1 %i.rx, label %.loopexit722, label %.lr.ph845

bb.fg:                                            ; preds = %bb.hp, %bb.ez
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.be)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple9promotion29TupleSizePromotionConstraintsEBJ_.exit321 unwind label %bb.bk

._crit_edge854:                                   ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEIBN_INtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB4h_20BoundTypeVarInstanceEEEEINtB5_7ZipImplBW_B1s_E4nextB4l_.exit.thread, %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %.val203 = load ptr, ptr %i.dc, align 8, !nonnull !6, !noundef !6
  %.val204 = load ptr, ptr %i.dd, align 8, !nonnull !6, !align !7, !noundef !6
  %i.ry = invoke { i32, i32 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5classs0_1__NtB8_12GenericAlias6originDNtNtBc_2db2DbEL_EBc_(i32 noundef %i.dk, i32 noundef %i.dm, ptr noundef nonnull %.val203, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val204)
          to label %bb.fh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.fh:                                            ; preds = %._crit_edge854
  %i.rz = extractvalue { i32, i32 } %i.ry, 0
  %i.sa = extractvalue { i32, i32 } %i.ry, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %i.ct, ptr %i.z, align 8
  %i.sb = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.cy, ptr %i.sb, align 8
  %i.sc = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.cs, ptr %i.sc, align 8
  %i.sd = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr %.val231, ptr %i.sd, align 8
  %i.se = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr %.val232, ptr %i.se, align 8
  %i.sf = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store ptr %.val233, ptr %i.sf, align 8
  %i.sg = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store ptr %i.be, ptr %i.sg, align 8
  %i.sh = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  store ptr %1, ptr %i.sh, align 8
  invoke void @_RINvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB6_18StaticClassLiteral20apply_specializationNCINvMs_NtNtBa_5infer7builderNtB24_20TypeInferenceBuilder29infer_collection_literal_implKj1_Esk_0EBc_(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.aa, i32 noundef %i.rz, i32 noundef %i.sa, ptr noundef nonnull %.val231, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val232, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.z)
          to label %bb.fi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.experimental.noalias.scope.decl(metadata !770)
  call void @llvm.experimental.noalias.scope.decl(metadata !773)
  %i.si = load i32, ptr %i.aa, align 4, !range !560, !alias.scope !773, !noalias !770, !noundef !6
  %i.sj = icmp eq i32 %i.si, -1
  br i1 %i.sj, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.sk = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.sl = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.sm = load <2 x i32>, ptr %i.sk, align 4, !alias.scope !773, !noalias !770
  store <2 x i32> %i.sm, ptr %i.sl, align 4, !alias.scope !770, !noalias !773
  br label %bb.fl

bb.fk:                                            ; preds = %bb.fi
  %i.sn = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.sn, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.aa, i64 12, i1 false), !alias.scope !775
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %storemerge.i323 = phi i32 [ 15, %bb.fk ], [ 16, %bb.fj ]
  store i32 %storemerge.i323, ptr %i.y, align 4, !alias.scope !770, !noalias !773
  invoke void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type25to_instance_approximation(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.y, ptr noundef nonnull %.val231, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val232, ptr noundef nonnull align 4 %.val233)
          to label %bb.fm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.be)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple9promotion29TupleSizePromotionConstraintsEBJ_.exit326 unwind label %bb.bk

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple9promotion29TupleSizePromotionConstraintsEBJ_.exit326: ; preds = %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  %i.so = load i64, ptr %i.bs, align 8, !range !637, !alias.scope !776, !noundef !6
  %i.sp = icmp eq i64 %i.so, -1
  br i1 %i.sp, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecAIBC_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEj1_EEEB1C_.exit334, label %bb.fn

bb.fn:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple9promotion29TupleSizePromotionConstraintsEBJ_.exit326
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecAINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEj1_ENtNtNtBK_3ops4drop4Drop4dropB1l_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %bb.fp unwind label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.sq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i327 = load i64, ptr %i.bs, align 8, !alias.scope !779 ; 2 uses
  %i.sr = icmp eq i64 %.val2.i.i327, 0
  br i1 %i.sr, label %.body296, label %.body296.sink.split

bb.fp:                                            ; preds = %bb.fn
  %.val.i.i330 = load i64, ptr %i.bs, align 8, !alias.scope !779 ; 2 uses
  %i.ss = icmp eq i64 %.val.i.i330, 0
  br i1 %i.ss, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecAIBC_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEj1_EEEB1C_.exit334, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.st = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.val1.i.i331 = load ptr, ptr %i.st, align 8, !alias.scope !779, !nonnull !6, !noundef !6
  %i.su = shl nuw i64 %.val.i.i330, 4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i331, i64 noundef %i.su, i64 noundef range(i64 1, -9223372036854775807) 4) #52
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecAIBC_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEj1_EEEB1C_.exit334

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecAIBC_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEj1_EEEB1C_.exit334: ; preds = %bb.fq, %bb.fp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple9promotion29TupleSizePromotionConstraintsEBJ_.exit326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtNtBT_8variance15TypeVarVarianceEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cp)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtNtB1A_8variance15TypeVarVarianceNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1C_.exit336 unwind label %bb.fr

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtNtB1A_8variance15TypeVarVarianceNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1C_.exit270: ; preds = %.body296, %bb.fr
  %.pn193.pn.pn.pn = phi { ptr, i32 } [ %i.sv, %bb.fr ], [ %.pn193.pn.pn, %.body296 ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBT_4TypeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1A_4TypeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1C_.exit unwind label %bb.bg

bb.fr:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecAIBC_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEj1_EEEB1C_.exit298, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecAIBC_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEj1_EEEB1C_.exit334
  %i.sv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtNtB1A_8variance15TypeVarVarianceNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1C_.exit270

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtNtB1A_8variance15TypeVarVarianceNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1C_.exit336: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecAIBC_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEj1_EEEB1C_.exit334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBT_4TypeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1A_4TypeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1C_.exit339 unwind label %bb.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1A_4TypeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1C_.exit339: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtNtB1A_8variance15TypeVarVarianceNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1C_.exit336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtNtNtBT_13set_theoretic7builder16UnionAccumulatorEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.eq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtNtNtB1A_13set_theoretic7builder16UnionAccumulatorNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1C_.exit.i unwind label %bb.fs

bb.fs:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1A_4TypeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1C_.exit339
  %i.sw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.er)
          to label %.body341 unwind label %bb.ft

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtNtNtB1A_13set_theoretic7builder16UnionAccumulatorNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1C_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB1A_4TypeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1C_.exit339
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.er)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics21SpecializationBuilderEBH_.exit unwind label %bb.f

bb.ft:                                            ; preds = %bb.fs
  %i.sx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #53
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics21SpecializationBuilderEBH_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtNtNtB1A_13set_theoretic7builder16UnionAccumulatorNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1C_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintSetBuilderEBH_(ptr noalias noundef align 8 dereferenceable(696) %i.cx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  br label %bb.fu

bb.fu:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics21SpecializationBuilderEBH_.exit401, %bb.hw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics21SpecializationBuilderEBH_.exit
  ret void

10:                                               ; preds = %.lr.ph853, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEIBN_INtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB4h_20BoundTypeVarInstanceEEEEINtB5_7ZipImplBW_B1s_E4nextB4l_.exit.thread
  %.sroa.8479.0851 = phi i64 [ 0, %.lr.ph853 ], [ %12, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEIBN_INtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB4h_20BoundTypeVarInstanceEEEEINtB5_7ZipImplBW_B1s_E4nextB4l_.exit.thread ] ; 4 uses
  %.sroa.0477.0850 = phi ptr [ %5, %.lr.ph853 ], [ %11, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEIBN_INtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB4h_20BoundTypeVarInstanceEEEEINtB5_7ZipImplBW_B1s_E4nextB4l_.exit.thread ] ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %.sroa.0477.0850, i64 8 ; 2 uses
  %12 = add nuw nsw i64 %.sroa.8479.0851, 1
  br i1 %i.iw, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEIBN_INtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB4h_20BoundTypeVarInstanceEEEEINtB5_7ZipImplBW_B1s_E4nextB4l_.exit.thread, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEIBN_INtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB4h_20BoundTypeVarInstanceEEEEINtB5_7ZipImplBW_B1s_E4nextB4l_.exit

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEIBN_INtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB4h_20BoundTypeVarInstanceEEEEINtB5_7ZipImplBW_B1s_E4nextB4l_.exit: ; preds = %10
  %i.sy = load i32, ptr %i.du, align 4, !range !9, !noalias !782, !noundef !6 ; 2 uses
  %i.sz = load i32, ptr %i.pr, align 4, !noalias !782, !noundef !6 ; 2 uses
  %i.ta = load ptr, ptr %.sroa.0477.0850, align 8, !align !7, !noundef !6 ; 5 uses
  %.not181 = icmp eq ptr %i.ta, null
  br i1 %.not181, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEIBN_INtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB4h_20BoundTypeVarInstanceEEEEINtB5_7ZipImplBW_B1s_E4nextB4l_.exit.thread, label %bb.fv

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEIBN_INtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB4h_20BoundTypeVarInstanceEEEEINtB5_7ZipImplBW_B1s_E4nextB4l_.exit.thread.sink.split: ; preds = %bb.go, %bb.hq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEIBN_INtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB4h_20BoundTypeVarInstanceEEEEINtB5_7ZipImplBW_B1s_E4nextB4l_.exit.thread

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEIBN_INtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB4h_20BoundTypeVarInstanceEEEEINtB5_7ZipImplBW_B1s_E4nextB4l_.exit.thread: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEIBN_INtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB4h_20BoundTypeVarInstanceEEEEINtB5_7ZipImplBW_B1s_E4nextB4l_.exit.thread.sink.split, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEIBN_INtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB4h_20BoundTypeVarInstanceEEEEINtB5_7ZipImplBW_B1s_E4nextB4l_.exit, %10
  %i.tb = icmp eq ptr %11, %i.pa
  br i1 %i.tb, label %._crit_edge854, label %10

bb.fv:                                            ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEIBN_INtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEINtNtB7_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter6ValuesNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtB4h_20BoundTypeVarInstanceEEEEINtB5_7ZipImplBW_B1s_E4nextB4l_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %.val = load ptr, ptr %i.dc, align 8, !nonnull !6, !noundef !6
  %.val202 = load ptr, ptr %i.dd, align 8, !nonnull !6, !align !7, !noundef !6
  invoke void @_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_20BoundTypeVarInstance8identity(ptr noalias noundef nonnull sret([28 x i8]) align 4 captures(address) dereferenceable(28) %i.an, i32 noundef %i.sy, i32 noundef %i.sz, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val202)
          to label %bb.fw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.fw:                                            ; preds = %bb.fv
  %i.tc = load i64, ptr %i.pc, align 8, !alias.scope !794, !noalias !797, !noundef !6
  %i.td = icmp eq i64 %i.tc, 0
  br i1 %i.td, label %select.unfold683, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.te = invoke noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityEB1F_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.pd, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(28) %i.an)
          to label %.noexc359 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc359:                                        ; preds = %bb.fx
  call void @llvm.experimental.noalias.scope.decl(metadata !799)
  call void @llvm.experimental.noalias.scope.decl(metadata !802)
  %i.tf = lshr i64 %i.te, 57
  %i.tg = trunc nuw nsw i64 %i.tf to i8
  %i.th = load i64, ptr %i.pe, align 8, !alias.scope !805, !noalias !806, !noundef !6 ; 2 uses
  %i.ti = load ptr, ptr %i.cq, align 8, !alias.scope !805, !noalias !806, !nonnull !6, !noundef !6 ; 2 uses
  %i.tj = insertelement <16 x i8> poison, i8 %i.tg, i64 0
  %i.tk = shufflevector <16 x i8> %i.tj, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.fy

bb.fy:                                            ; preds = %bb.ga, %.noexc359
  %.sroa.9.0.i.i.i346 = phi i64 [ 0, %.noexc359 ], [ %i.ub, %bb.ga ]
  %.pn.i.i.i347 = phi i64 [ %i.te, %.noexc359 ], [ %i.uc, %bb.ga ]
  %.sroa.01.0.i.i.i348 = and i64 %.pn.i.i.i347, %i.th ; 3 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.ti, i64 %.sroa.01.0.i.i.i348
  %.sroa.0.0.copyload.i26.i.i349 = load <16 x i8>, ptr %i.tl, align 1, !noalias !809 ; 2 uses
  %i.tm = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i349, %i.tk
  %i.tn = bitcast <16 x i1> %i.tm to i16          ; 2 uses
  %.not.i.not32.i.i350 = icmp eq i16 %i.tn, 0
  br i1 %.not.i.not32.i.i350, label %._crit_edge.i.i354, label %.lr.ph.i.i351

.lr.ph.i.i351:                                    ; preds = %bb.fy, %bb.fz
  %.sroa.06.0.i33.i.i352 = phi i16 [ %i.ua, %bb.fz ], [ %i.tn, %bb.fy ] ; 3 uses
  %i.to = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i352, i1 true)
  %i.tp = zext nneg i16 %i.to to i64
  %i.tq = add i64 %.sroa.01.0.i.i.i348, %i.tp
  %i.tr = and i64 %i.tq, %i.th
  %i.ts = sub nsw i64 0, %i.tr
  %i.tt = getelementptr inbounds [44 x i8], ptr %i.ti, i64 %i.ts ; 2 uses
  %i.tu = getelementptr inbounds i8, ptr %i.tt, i64 -44
  %i.tv = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityINtB2_10EquivalentBq_E10equivalentBw_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(28) %i.an, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(44) %i.tu)
          to label %.noexc360 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc360:                                        ; preds = %.lr.ph.i.i351
  br i1 %i.tv, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBS_4TypeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBU_.exit361, label %bb.fz, !prof !304

._crit_edge.i.i354:                               ; preds = %bb.fz, %bb.fy
  %i.tw = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i349, splat (i8 -1)
  %i.tx = bitcast <16 x i1> %i.tw to i16
  %i.ty = icmp eq i16 %i.tx, 0
  br i1 %i.ty, label %bb.ga, label %select.unfold683, !prof !282

bb.fz:                                            ; preds = %.noexc360
  %i.tz = add i16 %.sroa.06.0.i33.i.i352, -1
  %i.ua = and i16 %i.tz, %.sroa.06.0.i33.i.i352   ; 2 uses
  %.not.i.not.i.i353 = icmp eq i16 %i.ua, 0
  br i1 %.not.i.not.i.i353, label %._crit_edge.i.i354, label %.lr.ph.i.i351

bb.ga:                                            ; preds = %._crit_edge.i.i354
  %i.ub = add i64 %.sroa.9.0.i.i.i346, 16         ; 2 uses
  %i.uc = add i64 %.sroa.01.0.i.i.i348, %i.ub
  br label %bb.fy

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBS_4TypeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBU_.exit361: ; preds = %.noexc360
  %i.ud = getelementptr inbounds i8, ptr %i.tt, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(16) %i.ud, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.ue = load i32, ptr %i.ta, align 8, !range !663, !noalias !812, !noundef !6
  %i.uf = icmp ne i32 %i.ue, 27
  %i.ug = load i8, ptr %i.db, align 1, !range !570
  %.not.i362 = icmp eq i8 %i.ug, 15
  %or.cond707 = select i1 %i.uf, i1 true, i1 %.not.i362
  br i1 %or.cond707, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBS_4TypeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBU_.exit361
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, ptr noundef nonnull align 4 dereferenceable(16) %i.ud, i64 16, i1 false)
  br label %_RNCINvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB7_20TypeInferenceBuilder29infer_collection_literal_implKj1_Esg_0Bd_.exit

bb.gc:                                            ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtBS_4TypeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBU_.exit361
  invoke void @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_4Type17homogeneous_tuple(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.t, ptr noundef nonnull %.val231, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val232, ptr noundef nonnull align 4 %.val233, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.s)
          to label %_RNCINvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB7_20TypeInferenceBuilder29infer_collection_literal_implKj1_Esg_0Bd_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

select.unfold683:                                 ; preds = %._crit_edge.i.i354, %bb.fw, %_RNCINvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB7_20TypeInferenceBuilder29infer_collection_literal_implKj1_Esg_0Bd_.exit
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.copyload, %_RNCINvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB7_20TypeInferenceBuilder29infer_collection_literal_implKj1_Esg_0Bd_.exit ], [ -1, %bb.fw ], [ -1, %._crit_edge.i.i354 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5505)
  %i.uh = load i64, ptr %i.bs, align 8, !range !637, !noundef !6
  %.not183 = icmp eq i64 %i.uh, -1
  br i1 %.not183, label %bb.gf, label %bb.gd

_RNCINvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB7_20TypeInferenceBuilder29infer_collection_literal_implKj1_Esg_0Bd_.exit: ; preds = %bb.gb, %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.sroa.0.0.copyload = load i32, ptr %i.t, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %select.unfold683

bb.gd:                                            ; preds = %select.unfold683
  %.val251 = load i64, ptr %i.pg, align 8, !noundef !6 ; 2 uses
  %i.ui = icmp ult i64 %.sroa.8479.0851, %.val251
  br i1 %i.ui, label %bb.gg, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8479.0851, i64 noundef %.val251, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #51
          to label %.noexc364 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc364:                                        ; preds = %bb.ge
  unreachable

bb.gf:                                            ; preds = %select.unfold683, %bb.gg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !817
  store i32 %.sroa.0.0, ptr %.sroa.5.0..sroa_idx.i366, align 8, !noalias !817
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.0..sroa.5.0..sroa_idx.i366.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10, i64 12, i1 false)
  store ptr %1, ptr %i.a, align 8, !noalias !817
  store ptr %i.ta, ptr %i.ph, align 8, !noalias !817
  store i64 0, ptr %.sroa.4.0..sroa_idx.i367, align 8, !noalias !817
  invoke void %i.pj(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.am, ptr noundef nonnull %7, ptr noalias noundef nonnull align 8 dereferenceable(608) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ph)
          to label %_RNCINvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB7_20TypeInferenceBuilder29infer_collection_literal_implKj1_Esi_0Bd_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !821

_RNCINvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB7_20TypeInferenceBuilder29infer_collection_literal_implKj1_Esi_0Bd_.exit: ; preds = %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !817
  br label %bb.gi

bb.gg:                                            ; preds = %bb.gd
  %.val250 = load ptr, ptr %i.pf, align 8, !nonnull !6, !noundef !6
  %i.uj = getelementptr inbounds nuw [16 x i8], ptr %.val250, i64 %.sroa.8479.0851 ; 2 uses
  %.sroa.0503.0.copyload504 = load i32, ptr %i.uj, align 4 ; 2 uses
  %.sroa.5505.0..sroa_idx506 = getelementptr inbounds nuw i8, ptr %i.uj, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5505, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5505.0..sroa_idx506, i64 12, i1 false)
  %.not184 = icmp eq i32 %.sroa.0503.0.copyload504, -1
  br i1 %.not184, label %bb.gf, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  store i32 %.sroa.0503.0.copyload504, ptr %i.am, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5505.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5505, i64 12, i1 false)
  br label %bb.gi

bb.gi:                                            ; preds = %_RNCINvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB7_20TypeInferenceBuilder29infer_collection_literal_implKj1_Esi_0Bd_.exit, %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5505)
  %.not.i369 = icmp eq i32 %.sroa.0.0, -1         ; 2 uses
  br i1 %.not.i369, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE6filterNCINvMs_NtNtBK_5infer7builderNtB1K_20TypeInferenceBuilder29infer_collection_literal_implKj1_Esj_0EBM_.exit.thread, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.uk = load i64, ptr %i.pk, align 8, !alias.scope !822, !noalias !829, !noundef !6
  %i.ul = icmp eq i64 %i.uk, 0
  br i1 %i.ul, label %select.unfold688.invoke, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.um = invoke noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityEB1F_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.pl, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(28) %i.an)
          to label %.noexc370 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc370:                                        ; preds = %bb.gk
  call void @llvm.experimental.noalias.scope.decl(metadata !835)
  call void @llvm.experimental.noalias.scope.decl(metadata !838)
  %i.un = lshr i64 %i.um, 57
  %i.uo = trunc nuw nsw i64 %i.un to i8
  %i.up = load i64, ptr %i.pm, align 8, !alias.scope !841, !noalias !842, !noundef !6 ; 2 uses
  %i.uq = load ptr, ptr %i.cp, align 8, !alias.scope !841, !noalias !842, !nonnull !6, !noundef !6 ; 2 uses
  %i.ur = insertelement <16 x i8> poison, i8 %i.uo, i64 0
  %i.us = shufflevector <16 x i8> %i.ur, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gn, %.noexc370
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %.noexc370 ], [ %i.vj, %bb.gn ]
  %.pn.i.i.i.i.i = phi i64 [ %i.um, %.noexc370 ], [ %i.vk, %bb.gn ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.up ; 3 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uq, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i = load <16 x i8>, ptr %i.ut, align 1, !noalias !845 ; 2 uses
  %i.uu = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, %i.us
  %i.uv = bitcast <16 x i1> %i.uu to i16          ; 2 uses
  %.not.i.not32.i.i.i.i = icmp eq i16 %i.uv, 0
  br i1 %.not.i.not32.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.gl, %bb.gm
  %.sroa.06.0.i33.i.i.i.i = phi i16 [ %i.vi, %bb.gm ], [ %i.uv, %bb.gl ] ; 3 uses
  %i.uw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i, i1 true)
  %i.ux = zext nneg i16 %i.uw to i64
  %i.uy = add i64 %.sroa.01.0.i.i.i.i.i, %i.ux
  %i.uz = and i64 %i.uy, %i.up
  %i.va = sub nsw i64 0, %i.uz
  %i.vb = getelementptr inbounds [32 x i8], ptr %i.uq, i64 %i.va ; 2 uses
  %i.vc = getelementptr inbounds i8, ptr %i.vb, i64 -32
  %i.vd = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityINtB2_10EquivalentBq_E10equivalentBw_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(28) %i.an, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.vc)
          to label %.noexc371 unwind label %.loopexit.split-lp.loopexit

.noexc371:                                        ; preds = %.lr.ph.i.i.i.i
  br i1 %i.vd, label %_RNCINvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB7_20TypeInferenceBuilder29infer_collection_literal_implKj1_Esj_0Bd_.exit.i, label %bb.gm, !prof !304

._crit_edge.i.i.i.i:                              ; preds = %bb.gm, %bb.gl
  %i.ve = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, splat (i8 -1)
  %i.vf = bitcast <16 x i1> %i.ve to i16
end_hunk_0
