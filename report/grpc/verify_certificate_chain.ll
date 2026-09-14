Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/verify_certificate_chain?download=true
inline.NumInlined: 1284
inline.NumDeleted: 610
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4bssl22VerifyCertificateChainERKSt6vectorISt10shared_ptrIKNS_17ParsedCertificateEESaIS4_EERKNS_16CertificateTrustEPNS_30VerifyCertificateChainDelegateERKNS_3der15GeneralizedTimeENS_10KeyPurposeENS_21InitialExplicitPolicyERKSt3setINSE_5InputESt4lessISL_ESaISL_EENS_27InitialPolicyMappingInhibitENS_23InitialAnyPolicyInhibitEPSP_PNS_14CertPathErrorsE:bb.a
  %exitcond.not.i.i.i.1 = icmp eq i64 %i.oz, 1
  br i1 %exitcond.not.i.i.i.1, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.i.i.2:                         ; preds = %bb.cs
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i, i64 2
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !150 ; 2 uses
  %i.ph = icmp ult i8 %i.pg, 32
  br i1 %i.ph, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread.i.i.i.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.2
  %.not289 = icmp eq i8 %i.pg, 32
  br i1 %.not289, label %bb.cu, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread11.i.i.i.i.i.i

bb.cu:                                            ; preds = %bb.ct
  %exitcond.not.i.i.i.2 = icmp eq i64 %i.oz, 2
  br i1 %exitcond.not.i.i.i.2, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.i.i.i.3:                         ; preds = %bb.cu
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i, i64 3
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !150
  %.not290 = icmp ne i8 %i.pj, 0
  %i.pk = icmp ugt i64 %i.oz, 2
  %or.cond = or i1 %.not290, %i.pk
  br i1 %or.cond, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread11.i.i.i.i.i.i, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread.i.i.i.i.i.i

_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i.i.i.i: ; preds = %bb.cu, %bb.cs, %bb.cq
  %.old = icmp ugt i64 %i.oz, 2
  br i1 %.old, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread11.i.i.i.i.i.i, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread.i.i.i.i.i.i

_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i.preheader.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.2, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i
  br label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread11.i.i.i.i.i.i

_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread11.i.i.i.i.i.i: ; preds = %bb.cp, %bb.cr, %bb.ct, %.lr.ph.i.i.i.i.i.i.i.i.3, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread.i.i.i.i.i.i, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread.i.i.i.i.i.i ], [ 16, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i.i.i.i ], [ 16, %.lr.ph.i.i.i.i.i.i.i.i.3 ], [ 16, %bb.ct ], [ 16, %bb.cr ], [ 16, %bb.cp ]
  %.19.i.i.i.i.i.i = phi ptr [ %.0814.i.i.i.i.i.i, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.3 ], [ %.015.i.i.i.i.i.i, %bb.ct ], [ %.015.i.i.i.i.i.i, %bb.cr ], [ %.015.i.i.i.i.i.i, %bb.cp ] ; 4 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i, i64 %.sink.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = load ptr, ptr %i.pl, align 8, !tbaa !163 ; 2 uses
  %.not.i.i.i.i.i88.i = icmp eq ptr %.1.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i88.i, label %_ZNKSt8_Rb_treeIN4bssl3der5InputES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i, !llvm.loop !196

_ZNKSt8_Rb_treeIN4bssl3der5InputES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i.i.i: ; preds = %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread11.i.i.i.i.i.i
  %i.pm = icmp eq ptr %.19.i.i.i.i.i.i, %i.cv
  br i1 %i.pm, label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.i.i.i, label %bb.cv

bb.cv:                                            ; preds = %_ZNKSt8_Rb_treeIN4bssl3der5InputES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i.i.i
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 40
  %.sroa.2.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8 ; 4 uses
  %.not159.i.i.i = icmp samesign eq i64 %.sroa.2.0.copyload.i.i.i.i.i.i, 0
  br i1 %.not159.i.i.i, label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %bb.cv
  %i.pn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.pn, align 8 ; 4 uses
  %i.po = add i64 %.sroa.2.0.copyload.i.i.i.i.i.i, -1 ; 4 uses
  %umin197.i.i.i = call i64 @llvm.umin.i64(i64 %i.po, i64 3)
  %i.pp = add nuw nsw i64 %umin197.i.i.i, 1       ; 2 uses
  %i.pq = load i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 1, !tbaa !150 ; 2 uses
  %i.pr = icmp ugt i8 %i.pq, 85
  br i1 %i.pr, label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.i.i.i, label %bb.cw

bb.cw:                                            ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i
  %.not291 = icmp eq i8 %i.pq, 85
  br i1 %.not291, label %bb.cx, label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.thread.i.i.i

bb.cx:                                            ; preds = %bb.cw
  %exitcond198.not.i.i.i = icmp eq i64 %i.po, 0
  br i1 %exitcond198.not.i.i.i, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.1:                           ; preds = %bb.cx
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 1
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !150 ; 2 uses
  %i.pu = icmp ugt i8 %i.pt, 29
  br i1 %i.pu, label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.1
  %.not292 = icmp eq i8 %i.pt, 29
  br i1 %.not292, label %bb.cz, label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.thread.i.i.i

bb.cz:                                            ; preds = %bb.cy
  %exitcond198.not.i.i.i.1 = icmp eq i64 %i.po, 1
  br i1 %exitcond198.not.i.i.i.1, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.i.2:                           ; preds = %bb.cz
  %i.pv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 2
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !150 ; 2 uses
  %i.px = icmp ugt i8 %i.pw, 32
  br i1 %i.px, label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.i.i.i, label %bb.da

bb.da:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.2
  %.not293 = icmp eq i8 %i.pw, 32
  br i1 %.not293, label %bb.db, label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.thread.i.i.i

bb.db:                                            ; preds = %bb.da
  %exitcond198.not.i.i.i.2 = icmp eq i64 %i.po, 2
  br i1 %exitcond198.not.i.i.i.2, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.i.i.3:                           ; preds = %bb.db
  %i.py = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 3
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !150
  %.not294 = icmp eq i8 %i.pz, 0
  %.not237.i.i.i = icmp eq i64 %i.pp, %.sroa.2.0.copyload.i.i.i.i.i.i
  %or.cond314 = select i1 %.not294, i1 %.not237.i.i.i, i1 false
  br i1 %or.cond314, label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.thread.i.i.i, label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.i.i.i

_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i.i.i: ; preds = %bb.db, %bb.cz, %bb.cx
  %.not237.i.i.i.old = icmp eq i64 %i.pp, %.sroa.2.0.copyload.i.i.i.i.i.i
  br i1 %.not237.i.i.i.old, label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.thread.i.i.i, label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.i.i.i

_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i, %.lr.ph.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.i.3, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i.i.i, %_ZNKSt8_Rb_treeIN4bssl3der5InputES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i.i.i
  %i.qa = load i8, ptr %i.f, align 8, !tbaa !76, !range !68, !noalias !228, !noundef !69
  %i.qb = trunc nuw i8 %i.qa to i1
  br i1 %i.qb, label %bb.dd, label %bb.dg

_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.thread242.i.i.i: ; preds = %bb.co
  %i.qc = load i8, ptr %i.f, align 8, !tbaa !76, !range !68, !noalias !228, !noundef !69
  %i.qd = trunc nuw i8 %i.qc to i1
  br i1 %i.qd, label %.thread243.i.i.i, label %bb.dg

.thread243.i.i.i:                                 ; preds = %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.thread242.i.i.i
  store i32 0, ptr %i.cw, align 8, !tbaa !25, !alias.scope !228
  store ptr null, ptr %i.cx, align 8, !tbaa !26, !alias.scope !228
  store ptr %i.cw, ptr %i.cy, align 8, !tbaa !27, !alias.scope !228
  store ptr %i.cw, ptr %i.cz, align 8, !tbaa !28, !alias.scope !228
  store i64 0, ptr %i.da, align 8, !tbaa !29, !alias.scope !228
  br label %_ZN4bssl12_GLOBAL__N_116ValidPolicyGraph27GetUserConstrainedPolicySetERKSt3setINS_3der5InputESt4lessIS4_ESaIS4_EE.exit.i.i

_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.thread.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.3, %bb.cw, %bb.cy, %bb.da, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i.i.i, %bb.cv
  %i.qe = load i8, ptr %i.f, align 8, !tbaa !76, !range !68, !noalias !228, !noundef !69
  %i.qf = trunc nuw i8 %i.qe to i1
  br i1 %i.qf, label %bb.dc, label %bb.dg

bb.dc:                                            ; preds = %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22, !noalias !228
  store ptr @_ZN4bssl13kAnyPolicyOidE, ptr %12, align 8, !noalias !228
  store i64 4, ptr %.sroa.2.0..sroa_idx.i61.i.i.i, align 8, !noalias !228
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22, !noalias !228
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22, !noalias !228
  invoke void @_ZNSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EEC2ESt16initializer_listIS2_ERKS4_RKS5_(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr nonnull %12, i64 1, ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %.noexc85 unwind label %.loopexit.split-lp.loopexit

.noexc85:                                         ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22, !noalias !228
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22, !noalias !228
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22, !noalias !228
  br label %_ZN4bssl12_GLOBAL__N_116ValidPolicyGraph27GetUserConstrainedPolicySetERKSt3setINS_3der5InputESt4lessIS4_ESaIS4_EE.exit.i.i

bb.dd:                                            ; preds = %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.i.i.i
  store i32 0, ptr %i.cw, align 8, !tbaa !25, !alias.scope !228
  store ptr null, ptr %i.cx, align 8, !tbaa !26, !alias.scope !228
  store ptr %i.cw, ptr %i.cy, align 8, !tbaa !27, !alias.scope !228
  store ptr %i.cw, ptr %i.cz, align 8, !tbaa !28, !alias.scope !228
  store i64 0, ptr %i.da, align 8, !tbaa !29, !alias.scope !228
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22, !noalias !228
  store ptr %15, ptr %11, align 8, !tbaa !166, !noalias !228
  %i.qg = invoke noundef ptr @_ZNSt8_Rb_treeIN4bssl3der5InputES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_M_copyILb0ENS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull %i.ox, ptr noundef nonnull %i.cw, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit ; 3 uses

.noexc.i.i.i.i.i:                                 ; preds = %bb.dd, %.noexc.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.qi, %.noexc.i.i.i.i.i ], [ %i.qg, %bb.dd ] ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i, i64 16
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !167 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.qi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIN4bssl3der5InputES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i, label %.noexc.i.i.i.i.i, !llvm.loop !1

_ZNSt8_Rb_treeIN4bssl3der5InputES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i
  store ptr %.0.i.i.i.i.i.i.i.i.i, ptr %i.cy, align 8, !tbaa !163, !alias.scope !228
  br label %bb.de

bb.de:                                            ; preds = %bb.de, %_ZNSt8_Rb_treeIN4bssl3der5InputES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i
  %.0.i.i7.i.i.i.i.i.i.i = phi ptr [ %i.qg, %_ZNSt8_Rb_treeIN4bssl3der5InputES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i ], [ %i.qk, %bb.de ] ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i.i.i, i64 24
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !168 ; 2 uses
  %.not.i.i8.i.i.i.i.i.i.i = icmp eq ptr %i.qk, null
  br i1 %.not.i.i8.i.i.i.i.i.i.i, label %bb.df, label %bb.de, !llvm.loop !2

bb.df:                                            ; preds = %bb.de
  store ptr %.0.i.i7.i.i.i.i.i.i.i, ptr %i.cz, align 8, !tbaa !163, !alias.scope !228
  %i.ql = load i64, ptr %i.db, align 8, !tbaa !29, !noalias !228
  store i64 %i.ql, ptr %i.da, align 8, !tbaa !29, !alias.scope !228
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22, !noalias !228
  store ptr %i.qg, ptr %i.cx, align 8, !tbaa !163, !alias.scope !228
  br label %_ZN4bssl12_GLOBAL__N_116ValidPolicyGraph27GetUserConstrainedPolicySetERKSt3setINS_3der5InputESt4lessIS4_ESaIS4_EE.exit.i.i

bb.dg:                                            ; preds = %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.thread.i.i.i, %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.thread242.i.i.i, %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.i.i.i
  %.not239.i.i.i = phi i1 [ false, %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.thread.i.i.i ], [ true, %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.i.i.i ], [ true, %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.thread242.i.i.i ]
  %i.qm = getelementptr i8, ptr %.val39.i.i.i, i64 -24
  %.val42.i.i.i = load ptr, ptr %i.qm, align 8, !tbaa !27 ; 2 uses
  %i.qn = getelementptr inbounds i8, ptr %.val39.i.i.i, i64 -40 ; 2 uses
  %.not160171.i.i.i = icmp eq ptr %.val42.i.i.i, %i.qn
  br i1 %.not160171.i.i.i, label %.lr.ph188.preheader.i.i.i, label %.lr.ph.i.i.i

.lr.ph188.preheader.i.i.i:                        ; preds = %.lr.ph.i.i.i, %bb.dg
  store i32 0, ptr %i.cw, align 8, !tbaa !25, !alias.scope !228
  store ptr null, ptr %i.cx, align 8, !tbaa !26, !alias.scope !228
  store ptr %i.cw, ptr %i.cy, align 8, !tbaa !27, !alias.scope !228
  store ptr %i.cw, ptr %i.cz, align 8, !tbaa !28, !alias.scope !228
  store i64 0, ptr %i.da, align 8, !tbaa !29, !alias.scope !228
  %i.qo = ptrtoint ptr %.val39.i.i.i to i64
  %i.qp = ptrtoint ptr %.val.i.i.i to i64
  %i.qq = sub i64 %i.qo, %i.qp
  %i.qr = sdiv exact i64 %i.qq, 48
  %.031181.i.i.i = add nsw i64 %i.qr, -1
  br label %.lr.ph188.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.dg, %.lr.ph.i.i.i
  %.sroa.0150.0172.i.i.i = phi ptr [ %i.qt, %.lr.ph.i.i.i ], [ %.val42.i.i.i, %bb.dg ] ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %.sroa.0150.0172.i.i.i, i64 73
  store i8 1, ptr %i.qs, align 1, !tbaa !229
  %i.qt = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0150.0172.i.i.i) #26 ; 2 uses
  %.not160.i.i.i = icmp eq ptr %i.qt, %i.qn
  br i1 %.not160.i.i.i, label %.lr.ph188.preheader.i.i.i, label %.lr.ph.i.i.i

.loopexit.loopexit.i.i.i:                         ; preds = %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit102.thread.i.i.i
  %.val51.pre.i.i.i = load ptr, ptr %25, align 8, !tbaa !170, !noalias !228
  %.val52.pre.i.i.i = load ptr, ptr %i.ct, align 8, !tbaa !171, !noalias !228
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph188.i.i.i, %.loopexit.loopexit.i.i.i
  %.val52.i.i.i = phi ptr [ %.val52.pre.i.i.i, %.loopexit.loopexit.i.i.i ], [ %.val52201.i.i.i, %.lr.ph188.i.i.i ] ; 2 uses
  %.val51.i.i.i = phi ptr [ %.val51.pre.i.i.i, %.loopexit.loopexit.i.i.i ], [ %.val51199.i.i.i, %.lr.ph188.i.i.i ] ; 2 uses
  %.031.i.i.i = add i64 %.031185.i.i.i, -1        ; 2 uses
  %i.qu = ptrtoint ptr %.val52.i.i.i to i64
  %i.qv = ptrtoint ptr %.val51.i.i.i to i64
  %i.qw = sub i64 %i.qu, %i.qv
  %i.qx = sdiv exact i64 %i.qw, 48
  %i.qy = icmp ult i64 %.031.i.i.i, %i.qx
  br i1 %i.qy, label %.lr.ph188.i.i.i, label %_ZN4bssl12_GLOBAL__N_116ValidPolicyGraph27GetUserConstrainedPolicySetERKSt3setINS_3der5InputESt4lessIS4_ESaIS4_EE.exit.i.i, !llvm.loop !197

.lr.ph188.i.i.i:                                  ; preds = %.loopexit.i.i.i, %.lr.ph188.preheader.i.i.i
  %.val52201.i.i.i = phi ptr [ %.val52.i.i.i, %.loopexit.i.i.i ], [ %.val39.i.i.i, %.lr.ph188.preheader.i.i.i ]
  %.val51199.i.i.i = phi ptr [ %.val51.i.i.i, %.loopexit.i.i.i ], [ %.val.i.i.i, %.lr.ph188.preheader.i.i.i ] ; 2 uses
  %.031185.i.i.i = phi i64 [ %.031.i.i.i, %.loopexit.i.i.i ], [ %.031181.i.i.i, %.lr.ph188.preheader.i.i.i ] ; 4 uses
  %i.qz = getelementptr inbounds nuw [48 x i8], ptr %.val51199.i.i.i, i64 %.031185.i.i.i ; 2 uses
  %i.ra = getelementptr i8, ptr %i.qz, i64 24
  %.val41.i.i.i = load ptr, ptr %i.ra, align 8, !tbaa !27 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qz, i64 8 ; 2 uses
  %.not161176.i.i.i = icmp eq ptr %.val41.i.i.i, %i.rb
  br i1 %.not161176.i.i.i, label %.loopexit.i.i.i, label %.lr.ph180.i.i.i

.lr.ph180.i.i.i:                                  ; preds = %.lr.ph188.i.i.i
  %.not34.i.i.i = icmp eq i64 %.031185.i.i.i, 0
  br label %bb.dh

bb.dh:                                            ; preds = %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit102.thread.i.i.i, %.lr.ph180.i.i.i
  %.sroa.0148.0177.i.i.i = phi ptr [ %.val41.i.i.i, %.lr.ph180.i.i.i ], [ %i.uw, %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit102.thread.i.i.i ] ; 7 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.sroa.0148.0177.i.i.i, i64 32 ; 4 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.sroa.0148.0177.i.i.i, i64 73
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !229, !range !68, !noundef !69
  %i.rf = trunc nuw i8 %i.re to i1
  br i1 %i.rf, label %bb.di, label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit102.thread.i.i.i

bb.di:                                            ; preds = %bb.dh
  %i.rg = getelementptr inbounds nuw i8, ptr %.sroa.0148.0177.i.i.i, i64 48
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !172 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.sroa.0148.0177.i.i.i, i64 56
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !172 ; 2 uses
  %i.rk = icmp eq ptr %i.rh, %i.rj
  br i1 %i.rk, label %bb.dj, label %bb.dv

bb.dj:                                            ; preds = %bb.di
  br i1 %.not239.i.i.i, label %bb.dk, label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit102.i.i.i

bb.dk:                                            ; preds = %bb.dj
  %i.rl = load ptr, ptr %i.cu, align 8, !tbaa !26, !noalias !228 ; 3 uses
  %.not13.i.i.i62.i.i.i = icmp eq ptr %i.rl, null
  br i1 %.not13.i.i.i62.i.i.i, label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit102.thread.i.i.i, label %.lr.ph.i.i.i63.i.i.i

.lr.ph.i.i.i63.i.i.i:                             ; preds = %bb.dk
  %.sroa.0.0.copyload.i.i.i.i64.i.i.i = load ptr, ptr %i.rc, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i65.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0148.0177.i.i.i, i64 40
  %.sroa.2.0.copyload.i.i.i.i66.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i65.i.i.i, align 8
  %.sroa.2.0.copyload.i.fr.i.i.i67.i.i.i = freeze i64 %.sroa.2.0.copyload.i.i.i.i66.i.i.i ; 3 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i64.i.i.i, i64 %.sroa.2.0.copyload.i.fr.i.i.i67.i.i.i ; 2 uses
  %.not16.i.i.i68.i.i.i = icmp eq i64 %.sroa.2.0.copyload.i.fr.i.i.i67.i.i.i, 0
  br i1 %.not16.i.i.i68.i.i.i, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.us.i.i.i98.i.i.i, label %.lr.ph.split.i.i.i69.i.i.i

_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.us.i.i.i98.i.i.i: ; preds = %.lr.ph.i.i.i63.i.i.i, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.us.i.i.i98.i.i.i
  %.015.us.i.i.i99.i.i.i = phi ptr [ %.1.us.i.i.i100.i.i.i, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.us.i.i.i98.i.i.i ], [ %i.rl, %.lr.ph.i.i.i63.i.i.i ] ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %.015.us.i.i.i99.i.i.i, i64 16
  %.1.us.i.i.i100.i.i.i = load ptr, ptr %i.rn, align 8, !tbaa !163 ; 2 uses
  %.not.us.i.i.i101.i.i.i = icmp eq ptr %.1.us.i.i.i100.i.i.i, null
  br i1 %.not.us.i.i.i101.i.i.i, label %_ZNKSt8_Rb_treeIN4bssl3der5InputES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i85.i.i.i, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.us.i.i.i98.i.i.i, !llvm.loop !196

.lr.ph.split.i.i.i69.i.i.i:                       ; preds = %.lr.ph.i.i.i63.i.i.i, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread11.i.i.i80.i.i.i
  %.015.i.i.i70.i.i.i = phi ptr [ %.1.i.i.i83.i.i.i, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread11.i.i.i80.i.i.i ], [ %i.rl, %.lr.ph.i.i.i63.i.i.i ] ; 5 uses
  %.0814.i.i.i71.i.i.i = phi ptr [ %.19.i.i.i82.i.i.i, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread11.i.i.i80.i.i.i ], [ %i.cv, %.lr.ph.i.i.i63.i.i.i ]
  %i.ro = getelementptr inbounds nuw i8, ptr %.015.i.i.i70.i.i.i, i64 32
  %.sroa.01.0.copyload.i.i.i.i72.i.i.i = load ptr, ptr %i.ro, align 8 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i73.i.i.i = getelementptr inbounds nuw i8, ptr %.015.i.i.i70.i.i.i, i64 40
  %.sroa.22.0.copyload.i.i.i.i74.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i73.i.i.i, align 8 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i.i.i.i72.i.i.i, i64 %.sroa.22.0.copyload.i.i.i.i74.i.i.i
  %.not17.i.i.i75.i.i.i = icmp samesign eq i64 %.sroa.22.0.copyload.i.i.i.i74.i.i.i, 0
  br i1 %.not17.i.i.i75.i.i.i, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread.i.i.i97.i.i.i, label %.lr.ph.i.i.i.i.i76.i.i.i

.lr.ph.i.i.i.i.i76.i.i.i:                         ; preds = %.lr.ph.split.i.i.i69.i.i.i, %bb.dm
  %.022.i.i.i.i.i77.i.i.i = phi ptr [ %i.rv, %bb.dm ], [ %.sroa.0.0.copyload.i.i.i.i64.i.i.i, %.lr.ph.split.i.i.i69.i.i.i ] ; 2 uses
  %.01321.i.i.i.i.i78.i.i.i = phi ptr [ %i.ru, %bb.dm ], [ %.sroa.01.0.copyload.i.i.i.i72.i.i.i, %.lr.ph.split.i.i.i69.i.i.i ] ; 2 uses
  %i.rq = load i8, ptr %.01321.i.i.i.i.i78.i.i.i, align 1, !tbaa !150 ; 2 uses
  %i.rr = load i8, ptr %.022.i.i.i.i.i77.i.i.i, align 1, !tbaa !150 ; 2 uses
  %i.rs = icmp ult i8 %i.rq, %i.rr
  br i1 %i.rs, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread.i.i.i97.i.i.i, label %bb.dl

bb.dl:                                            ; preds = %.lr.ph.i.i.i.i.i76.i.i.i
  %i.rt = icmp ult i8 %i.rr, %i.rq
  br i1 %i.rt, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread11.i.i.i80.i.i.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ru = getelementptr inbounds nuw i8, ptr %.01321.i.i.i.i.i78.i.i.i, i64 1 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %.022.i.i.i.i.i77.i.i.i, i64 1 ; 2 uses
  %i.rw = icmp ne ptr %i.ru, %i.rp
  %i.rx = icmp ne ptr %i.rv, %i.rm                ; 2 uses
  %i.ry = select i1 %i.rw, i1 %i.rx, i1 false
  br i1 %i.ry, label %.lr.ph.i.i.i.i.i76.i.i.i, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i79.i.i.i, !llvm.loop !3

_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i79.i.i.i: ; preds = %bb.dm
  br i1 %i.rx, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread.i.i.i97.i.i.i, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread11.i.i.i80.i.i.i

_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread.i.i.i97.i.i.i: ; preds = %.lr.ph.i.i.i.i.i76.i.i.i, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i79.i.i.i, %.lr.ph.split.i.i.i69.i.i.i
  br label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread11.i.i.i80.i.i.i

_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread11.i.i.i80.i.i.i: ; preds = %bb.dl, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread.i.i.i97.i.i.i, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i79.i.i.i
  %.sink.i.i.i81.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread.i.i.i97.i.i.i ], [ 16, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i79.i.i.i ], [ 16, %bb.dl ]
  %.19.i.i.i82.i.i.i = phi ptr [ %.0814.i.i.i71.i.i.i, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread.i.i.i97.i.i.i ], [ %.015.i.i.i70.i.i.i, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i79.i.i.i ], [ %.015.i.i.i70.i.i.i, %bb.dl ] ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %.015.i.i.i70.i.i.i, i64 %.sink.i.i.i81.i.i.i
  %.1.i.i.i83.i.i.i = load ptr, ptr %i.rz, align 8, !tbaa !163 ; 2 uses
  %.not.i.i.i84.i.i.i = icmp eq ptr %.1.i.i.i83.i.i.i, null
  br i1 %.not.i.i.i84.i.i.i, label %_ZNKSt8_Rb_treeIN4bssl3der5InputES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i85.i.i.i, label %.lr.ph.split.i.i.i69.i.i.i, !llvm.loop !196

_ZNKSt8_Rb_treeIN4bssl3der5InputES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i85.i.i.i: ; preds = %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread11.i.i.i80.i.i.i, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.us.i.i.i98.i.i.i
  %.08.lcssa.i.i.i86.i.i.i = phi ptr [ %.015.us.i.i.i99.i.i.i, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.us.i.i.i98.i.i.i ], [ %.19.i.i.i82.i.i.i, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread11.i.i.i80.i.i.i ] ; 3 uses
  %i.sa = icmp eq ptr %.08.lcssa.i.i.i86.i.i.i, %i.cv
  br i1 %i.sa, label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit102.thread.i.i.i, label %bb.dn

bb.dn:                                            ; preds = %_ZNKSt8_Rb_treeIN4bssl3der5InputES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i85.i.i.i
  %i.sb = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i86.i.i.i, i64 32
  %.sroa.0.0.copyload.i.i.i87.i.i.i = load ptr, ptr %i.sb, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i88.i.i.i = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i86.i.i.i, i64 40
  %.sroa.2.0.copyload.i.i.i89.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i88.i.i.i, align 8 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i87.i.i.i, i64 %.sroa.2.0.copyload.i.i.i89.i.i.i
  %i.sd = icmp samesign ne i64 %.sroa.2.0.copyload.i.fr.i.i.i67.i.i.i, 0
  %i.se = icmp samesign ne i64 %.sroa.2.0.copyload.i.i.i89.i.i.i, 0 ; 2 uses
  %i.sf = select i1 %i.sd, i1 %i.se, i1 false
  br i1 %i.sf, label %.lr.ph.i.i.i.i94.i.i.i, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i90.i.i.i

.lr.ph.i.i.i.i94.i.i.i:                           ; preds = %bb.dn, %bb.dp
  %.022.i.i.i.i95.i.i.i = phi ptr [ %i.sl, %bb.dp ], [ %.sroa.0.0.copyload.i.i.i87.i.i.i, %bb.dn ] ; 2 uses
  %.01321.i.i.i.i96.i.i.i = phi ptr [ %i.sk, %bb.dp ], [ %.sroa.0.0.copyload.i.i.i.i64.i.i.i, %bb.dn ] ; 2 uses
  %i.sg = load i8, ptr %.01321.i.i.i.i96.i.i.i, align 1, !tbaa !150 ; 2 uses
  %i.sh = load i8, ptr %.022.i.i.i.i95.i.i.i, align 1, !tbaa !150 ; 2 uses
  %i.si = icmp ult i8 %i.sg, %i.sh
  br i1 %i.si, label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit102.thread.i.i.i, label %bb.do

bb.do:                                            ; preds = %.lr.ph.i.i.i.i94.i.i.i
  %i.sj = icmp ult i8 %i.sh, %i.sg
  br i1 %i.sj, label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit102.i.i.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.sk = getelementptr inbounds nuw i8, ptr %.01321.i.i.i.i96.i.i.i, i64 1 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %.022.i.i.i.i95.i.i.i, i64 1 ; 2 uses
  %i.sm = icmp ne ptr %i.sk, %i.rm
  %i.sn = icmp ne ptr %i.sl, %i.sc                ; 2 uses
  %i.so = select i1 %i.sm, i1 %i.sn, i1 false
  br i1 %i.so, label %.lr.ph.i.i.i.i94.i.i.i, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i90.i.i.i, !llvm.loop !3

_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i90.i.i.i: ; preds = %bb.dp, %bb.dn
  %.014.i.i.i.i91.i.i.i = phi i1 [ %i.se, %bb.dn ], [ %i.sn, %bb.dp ]
  br i1 %.014.i.i.i.i91.i.i.i, label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit102.thread.i.i.i, label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit102.i.i.i

_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit102.i.i.i: ; preds = %bb.do, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i90.i.i.i, %bb.dj
  %i.sp = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN4bssl3der5InputES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE24_M_get_insert_unique_posERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull align 8 dereferenceable(16) %i.rc)
          to label %.noexc.i.i.i unwind label %bb.du ; 2 uses

.noexc.i.i.i:                                     ; preds = %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit102.i.i.i
  %i.sq = extractvalue { ptr, ptr } %i.sp, 1      ; 5 uses
  %.not.i.i103.i.i.i = icmp eq ptr %i.sq, null
  br i1 %.not.i.i103.i.i.i, label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit102.thread.i.i.i, label %bb.dq

bb.dq:                                            ; preds = %.noexc.i.i.i
  %i.sr = extractvalue { ptr, ptr } %i.sp, 0
  %.not.i.i.i104.i.i.i = icmp ne ptr %i.sr, null
  %i.ss = icmp eq ptr %i.sq, %i.cw
  %or.cond.i.i.i.i.i.i = or i1 %.not.i.i.i104.i.i.i, %i.ss
  br i1 %or.cond.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIN4bssl3der5InputES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.st = getelementptr inbounds nuw i8, ptr %i.sq, i64 32
  %.sroa.01.0.copyload.i.i.i.i105.i.i.i = load ptr, ptr %i.rc, align 8 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i106.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0148.0177.i.i.i, i64 40
  %.sroa.22.0.copyload.i.i.i.i107.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i106.i.i.i, align 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i108.i.i.i = load ptr, ptr %i.st, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i109.i.i.i = getelementptr inbounds nuw i8, ptr %i.sq, i64 40
  %.sroa.2.0.copyload.i.i.i.i110.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i109.i.i.i, align 8 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i.i.i.i105.i.i.i, i64 %.sroa.22.0.copyload.i.i.i.i107.i.i.i
  %i.sv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i108.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i110.i.i.i
  %i.sw = icmp samesign ne i64 %.sroa.22.0.copyload.i.i.i.i107.i.i.i, 0
  %i.sx = icmp samesign ne i64 %.sroa.2.0.copyload.i.i.i.i110.i.i.i, 0 ; 2 uses
  %i.sy = select i1 %i.sw, i1 %i.sx, i1 false
  br i1 %i.sy, label %.lr.ph.i.i.i.i.i111.i.i.i, label %_ZNSt8_Rb_treeIN4bssl3der5InputES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i111.i.i.i:                        ; preds = %bb.dr, %bb.dt
  %.022.i.i.i.i.i112.i.i.i = phi ptr [ %i.te, %bb.dt ], [ %.sroa.0.0.copyload.i.i.i.i108.i.i.i, %bb.dr ] ; 2 uses
  %.01321.i.i.i.i.i113.i.i.i = phi ptr [ %i.td, %bb.dt ], [ %.sroa.01.0.copyload.i.i.i.i105.i.i.i, %bb.dr ] ; 2 uses
  %i.sz = load i8, ptr %.01321.i.i.i.i.i113.i.i.i, align 1, !tbaa !150 ; 2 uses
  %i.ta = load i8, ptr %.022.i.i.i.i.i112.i.i.i, align 1, !tbaa !150 ; 2 uses
  %i.tb = icmp ult i8 %i.sz, %i.ta
  br i1 %i.tb, label %_ZNSt8_Rb_treeIN4bssl3der5InputES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i.i.i.i, label %bb.ds

bb.ds:                                            ; preds = %.lr.ph.i.i.i.i.i111.i.i.i
  %i.tc = icmp ult i8 %i.ta, %i.sz
  br i1 %i.tc, label %_ZNSt8_Rb_treeIN4bssl3der5InputES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i.i.i.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.td = getelementptr inbounds nuw i8, ptr %.01321.i.i.i.i.i113.i.i.i, i64 1 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %.022.i.i.i.i.i112.i.i.i, i64 1 ; 2 uses
  %i.tf = icmp ne ptr %i.td, %i.su
  %i.tg = icmp ne ptr %i.te, %i.sv                ; 2 uses
  %i.th = select i1 %i.tf, i1 %i.tg, i1 false
  br i1 %i.th, label %.lr.ph.i.i.i.i.i111.i.i.i, label %_ZNSt8_Rb_treeIN4bssl3der5InputES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i.i.i.i, !llvm.loop !3

_ZNSt8_Rb_treeIN4bssl3der5InputES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i.i.i.i: ; preds = %bb.dt, %bb.ds, %.lr.ph.i.i.i.i.i111.i.i.i, %bb.dr, %bb.dq
  %i.ti = phi i1 [ %i.sx, %bb.dr ], [ true, %bb.dq ], [ false, %bb.ds ], [ true, %.lr.ph.i.i.i.i.i111.i.i.i ], [ %i.tg, %bb.dt ]
  %i.tj = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23
          to label %.noexc114.i.i.i unwind label %bb.du ; 2 uses

.noexc114.i.i.i:                                  ; preds = %_ZNSt8_Rb_treeIN4bssl3der5InputES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i.i.i.i
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tk, ptr noundef nonnull align 8 dereferenceable(16) %i.rc, i64 16, i1 false)
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ti, ptr noundef nonnull %i.tj, ptr noundef nonnull %i.sq, ptr noundef nonnull align 8 dereferenceable(32) %i.cw) #22
  %i.tl = load i64, ptr %i.da, align 8, !tbaa !29, !alias.scope !228
  %i.tm = add i64 %i.tl, 1
  store i64 %i.tm, ptr %i.da, align 8, !tbaa !29, !alias.scope !228
  br label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit102.thread.i.i.i

bb.du:                                            ; preds = %_ZNSt8_Rb_treeIN4bssl3der5InputES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i.i.i.i, %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit102.i.i.i
  %i.tn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %15) #22
  br label %.body

bb.dv:                                            ; preds = %bb.di
  br i1 %.not34.i.i.i, label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit102.thread.i.i.i, label %.lr.ph175.i.i.i

.lr.ph175.i.i.i:                                  ; preds = %bb.dv
  %.val59.i.i.i = load ptr, ptr %25, align 8, !tbaa !170, !noalias !228
  %i.to = getelementptr [48 x i8], ptr %.val59.i.i.i, i64 %.031185.i.i.i ; 2 uses
  %i.tp = getelementptr i8, ptr %i.to, i64 -32
  %.val.i.i.i.i.i = load ptr, ptr %i.tp, align 8, !tbaa !26 ; 3 uses
  %i.tq = getelementptr i8, ptr %i.to, i64 -40    ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %.not5.i.i.i.i.i.i, label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit102.thread.i.i.i, label %.lr.ph.i.i.i115.i.i.i

.lr.ph.i.i.i115.i.i.i:                            ; preds = %.lr.ph175.i.i.i, %_ZNSt3mapIN4bssl3der5InputENS0_12_GLOBAL__N_116ValidPolicyGraph4NodeESt4lessIS2_ESaISt4pairIKS2_S5_EEE4findERS9_.exit.thread.i.i.i
  %.sroa.0144.0174.i.i.i = phi ptr [ %i.uv, %_ZNSt3mapIN4bssl3der5InputENS0_12_GLOBAL__N_116ValidPolicyGraph4NodeESt4lessIS2_ESaISt4pairIKS2_S5_EEE4findERS9_.exit.thread.i.i.i ], [ %i.rh, %.lr.ph175.i.i.i ] ; 3 uses
  %.sroa.0142.0.copyload.i.i.i = load ptr, ptr %.sroa.0144.0174.i.i.i, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0144.0174.i.i.i, i64 8
  %.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8
  %.8.val.fr.i.i.i.i.i.i = freeze i64 %.sroa.5.0.copyload.i.i.i ; 3 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.sroa.0142.0.copyload.i.i.i, i64 %.8.val.fr.i.i.i.i.i.i ; 2 uses
  %.not8.i.i.i.i.i.i = icmp eq i64 %.8.val.fr.i.i.i.i.i.i, 0
  br i1 %.not8.i.i.i.i.i.i, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.us.i.i.i138.i.i.i, label %.lr.ph.split.i.i.i116.i.i.i

_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.us.i.i.i138.i.i.i: ; preds = %.lr.ph.i.i.i115.i.i.i, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.us.i.i.i138.i.i.i
  %.07.us.i.i.i.i.i.i = phi ptr [ %.1.us.i.i.i139.i.i.i, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.us.i.i.i138.i.i.i ], [ %.val.i.i.i.i.i, %.lr.ph.i.i.i115.i.i.i ] ; 2 uses
  %i.ts = getelementptr i8, ptr %.07.us.i.i.i.i.i.i, i64 16
  %.1.us.i.i.i139.i.i.i = load ptr, ptr %i.ts, align 8, !tbaa !163 ; 2 uses
  %.not.us.i.i.i140.i.i.i = icmp eq ptr %.1.us.i.i.i139.i.i.i, null
  br i1 %.not.us.i.i.i140.i.i.i, label %_ZNSt8_Rb_treeIN4bssl3der5InputESt4pairIKS2_NS0_12_GLOBAL__N_116ValidPolicyGraph4NodeEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.i, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.us.i.i.i138.i.i.i, !llvm.loop !4

.lr.ph.split.i.i.i116.i.i.i:                      ; preds = %.lr.ph.i.i.i115.i.i.i, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread3.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi ptr [ %.1.i.i.i126.i.i.i, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread3.i.i.i.i.i.i ], [ %.val.i.i.i.i.i, %.lr.ph.i.i.i115.i.i.i ] ; 5 uses
  %.086.i.i.i.i.i.i = phi ptr [ %.19.i.i.i125.i.i.i, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread3.i.i.i.i.i.i ], [ %i.tq, %.lr.ph.i.i.i115.i.i.i ]
  %i.tt = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i, i64 32
  %.sroa.01.0.copyload.i.i.i.i117.i.i.i = load ptr, ptr %i.tt, align 8 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i118.i.i.i = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i, i64 40
  %.sroa.22.0.copyload.i.i.i.i119.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i118.i.i.i, align 8 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i.i.i.i117.i.i.i, i64 %.sroa.22.0.copyload.i.i.i.i119.i.i.i
  %.not9.i.i.i.i.i.i = icmp samesign eq i64 %.sroa.22.0.copyload.i.i.i.i119.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread.i.i.i137.i.i.i, label %.lr.ph.i.i.i.i.i120.i.i.i

.lr.ph.i.i.i.i.i120.i.i.i:                        ; preds = %.lr.ph.split.i.i.i116.i.i.i, %bb.dx
  %.022.i.i.i.i.i121.i.i.i = phi ptr [ %i.ua, %bb.dx ], [ %.sroa.0142.0.copyload.i.i.i, %.lr.ph.split.i.i.i116.i.i.i ] ; 2 uses
  %.01321.i.i.i.i.i122.i.i.i = phi ptr [ %i.tz, %bb.dx ], [ %.sroa.01.0.copyload.i.i.i.i117.i.i.i, %.lr.ph.split.i.i.i116.i.i.i ] ; 2 uses
  %i.tv = load i8, ptr %.01321.i.i.i.i.i122.i.i.i, align 1, !tbaa !150 ; 2 uses
  %i.tw = load i8, ptr %.022.i.i.i.i.i121.i.i.i, align 1, !tbaa !150 ; 2 uses
  %i.tx = icmp ult i8 %i.tv, %i.tw
  br i1 %i.tx, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread.i.i.i137.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph.i.i.i.i.i120.i.i.i
  %i.ty = icmp ult i8 %i.tw, %i.tv
  br i1 %i.ty, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread3.i.i.i.i.i.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.tz = getelementptr inbounds nuw i8, ptr %.01321.i.i.i.i.i122.i.i.i, i64 1 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %.022.i.i.i.i.i121.i.i.i, i64 1 ; 2 uses
  %i.ub = icmp ne ptr %i.tz, %i.tu
  %i.uc = icmp ne ptr %i.ua, %i.tr                ; 2 uses
  %i.ud = select i1 %i.ub, i1 %i.uc, i1 false
  br i1 %i.ud, label %.lr.ph.i.i.i.i.i120.i.i.i, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i123.i.i.i, !llvm.loop !3

_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i123.i.i.i: ; preds = %bb.dx
  br i1 %i.uc, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread.i.i.i137.i.i.i, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread3.i.i.i.i.i.i

_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread.i.i.i137.i.i.i: ; preds = %.lr.ph.i.i.i.i.i120.i.i.i, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i123.i.i.i, %.lr.ph.split.i.i.i116.i.i.i
  br label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread3.i.i.i.i.i.i

_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread3.i.i.i.i.i.i: ; preds = %bb.dw, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread.i.i.i137.i.i.i, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i123.i.i.i
  %.sink.i.i.i124.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread.i.i.i137.i.i.i ], [ 16, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i123.i.i.i ], [ 16, %bb.dw ]
  %.19.i.i.i125.i.i.i = phi ptr [ %.086.i.i.i.i.i.i, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread.i.i.i137.i.i.i ], [ %.07.i.i.i.i.i.i, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i123.i.i.i ], [ %.07.i.i.i.i.i.i, %bb.dw ] ; 2 uses
  %i.ue = getelementptr i8, ptr %.07.i.i.i.i.i.i, i64 %.sink.i.i.i124.i.i.i
  %.1.i.i.i126.i.i.i = load ptr, ptr %i.ue, align 8, !tbaa !163 ; 2 uses
  %.not.i.i.i127.i.i.i = icmp eq ptr %.1.i.i.i126.i.i.i, null
  br i1 %.not.i.i.i127.i.i.i, label %_ZNSt8_Rb_treeIN4bssl3der5InputESt4pairIKS2_NS0_12_GLOBAL__N_116ValidPolicyGraph4NodeEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.i, label %.lr.ph.split.i.i.i116.i.i.i, !llvm.loop !4

_ZNSt8_Rb_treeIN4bssl3der5InputESt4pairIKS2_NS0_12_GLOBAL__N_116ValidPolicyGraph4NodeEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread3.i.i.i.i.i.i, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.us.i.i.i138.i.i.i
  %.08.lcssa.i.i.i128.i.i.i = phi ptr [ %.07.us.i.i.i.i.i.i, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.us.i.i.i138.i.i.i ], [ %.19.i.i.i125.i.i.i, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread3.i.i.i.i.i.i ] ; 4 uses
  %i.uf = icmp eq ptr %.08.lcssa.i.i.i128.i.i.i, %i.tq
  br i1 %i.uf, label %_ZNSt3mapIN4bssl3der5InputENS0_12_GLOBAL__N_116ValidPolicyGraph4NodeESt4lessIS2_ESaISt4pairIKS2_S5_EEE4findERS9_.exit.thread.i.i.i, label %bb.dy

bb.dy:                                            ; preds = %_ZNSt8_Rb_treeIN4bssl3der5InputESt4pairIKS2_NS0_12_GLOBAL__N_116ValidPolicyGraph4NodeEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.i
  %i.ug = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i128.i.i.i, i64 32
  %.sroa.0.0.copyload.i.i.i129.i.i.i = load ptr, ptr %i.ug, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i130.i.i.i = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i128.i.i.i, i64 40
  %.sroa.2.0.copyload.i.i.i131.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i130.i.i.i, align 8 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i129.i.i.i, i64 %.sroa.2.0.copyload.i.i.i131.i.i.i
  %i.ui = icmp samesign ne i64 %.8.val.fr.i.i.i.i.i.i, 0
  %i.uj = icmp samesign ne i64 %.sroa.2.0.copyload.i.i.i131.i.i.i, 0 ; 2 uses
  %i.uk = select i1 %i.ui, i1 %i.uj, i1 false
  br i1 %i.uk, label %.lr.ph.i.i.i.i134.i.i.i, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i132.i.i.i

.lr.ph.i.i.i.i134.i.i.i:                          ; preds = %bb.dy, %bb.ea
  %.022.i.i.i.i135.i.i.i = phi ptr [ %i.uq, %bb.ea ], [ %.sroa.0.0.copyload.i.i.i129.i.i.i, %bb.dy ] ; 2 uses
  %.01321.i.i.i.i136.i.i.i = phi ptr [ %i.up, %bb.ea ], [ %.sroa.0142.0.copyload.i.i.i, %bb.dy ] ; 2 uses
  %i.ul = load i8, ptr %.01321.i.i.i.i136.i.i.i, align 1, !tbaa !150 ; 2 uses
  %i.um = load i8, ptr %.022.i.i.i.i135.i.i.i, align 1, !tbaa !150 ; 2 uses
  %i.un = icmp ult i8 %i.ul, %i.um
  br i1 %i.un, label %_ZNSt3mapIN4bssl3der5InputENS0_12_GLOBAL__N_116ValidPolicyGraph4NodeESt4lessIS2_ESaISt4pairIKS2_S5_EEE4findERS9_.exit.thread.i.i.i, label %bb.dz

bb.dz:                                            ; preds = %.lr.ph.i.i.i.i134.i.i.i
  %i.uo = icmp ult i8 %i.um, %i.ul
  br i1 %i.uo, label %_ZNSt3mapIN4bssl3der5InputENS0_12_GLOBAL__N_116ValidPolicyGraph4NodeESt4lessIS2_ESaISt4pairIKS2_S5_EEE4findERS9_.exit.i.i.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.up = getelementptr inbounds nuw i8, ptr %.01321.i.i.i.i136.i.i.i, i64 1 ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %.022.i.i.i.i135.i.i.i, i64 1 ; 2 uses
  %i.ur = icmp ne ptr %i.up, %i.tr
  %i.us = icmp ne ptr %i.uq, %i.uh                ; 2 uses
  %i.ut = select i1 %i.ur, i1 %i.us, i1 false
  br i1 %i.ut, label %.lr.ph.i.i.i.i134.i.i.i, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i132.i.i.i, !llvm.loop !3

_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i132.i.i.i: ; preds = %bb.ea, %bb.dy
  %.014.i.i.i.i133.i.i.i = phi i1 [ %i.uj, %bb.dy ], [ %i.us, %bb.ea ]
  br i1 %.014.i.i.i.i133.i.i.i, label %_ZNSt3mapIN4bssl3der5InputENS0_12_GLOBAL__N_116ValidPolicyGraph4NodeESt4lessIS2_ESaISt4pairIKS2_S5_EEE4findERS9_.exit.thread.i.i.i, label %_ZNSt3mapIN4bssl3der5InputENS0_12_GLOBAL__N_116ValidPolicyGraph4NodeESt4lessIS2_ESaISt4pairIKS2_S5_EEE4findERS9_.exit.i.i.i

_ZNSt3mapIN4bssl3der5InputENS0_12_GLOBAL__N_116ValidPolicyGraph4NodeESt4lessIS2_ESaISt4pairIKS2_S5_EEE4findERS9_.exit.i.i.i: ; preds = %bb.dz, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i132.i.i.i
  %i.uu = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i128.i.i.i, i64 73
  store i8 1, ptr %i.uu, align 1, !tbaa !230
  br label %_ZNSt3mapIN4bssl3der5InputENS0_12_GLOBAL__N_116ValidPolicyGraph4NodeESt4lessIS2_ESaISt4pairIKS2_S5_EEE4findERS9_.exit.thread.i.i.i

_ZNSt3mapIN4bssl3der5InputENS0_12_GLOBAL__N_116ValidPolicyGraph4NodeESt4lessIS2_ESaISt4pairIKS2_S5_EEE4findERS9_.exit.thread.i.i.i: ; preds = %.lr.ph.i.i.i.i134.i.i.i, %_ZNSt3mapIN4bssl3der5InputENS0_12_GLOBAL__N_116ValidPolicyGraph4NodeESt4lessIS2_ESaISt4pairIKS2_S5_EEE4findERS9_.exit.i.i.i, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i132.i.i.i, %_ZNSt8_Rb_treeIN4bssl3der5InputESt4pairIKS2_NS0_12_GLOBAL__N_116ValidPolicyGraph4NodeEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.i
  %i.uv = getelementptr inbounds nuw i8, ptr %.sroa.0144.0174.i.i.i, i64 16 ; 2 uses
  %.not162.i.i.i = icmp eq ptr %i.uv, %i.rj
  br i1 %.not162.i.i.i, label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit102.thread.i.i.i, label %.lr.ph.i.i.i115.i.i.i

_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit102.thread.i.i.i: ; preds = %_ZNSt3mapIN4bssl3der5InputENS0_12_GLOBAL__N_116ValidPolicyGraph4NodeESt4lessIS2_ESaISt4pairIKS2_S5_EEE4findERS9_.exit.thread.i.i.i, %.lr.ph.i.i.i.i94.i.i.i, %.lr.ph175.i.i.i, %bb.dv, %.noexc114.i.i.i, %.noexc.i.i.i, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i90.i.i.i, %_ZNKSt8_Rb_treeIN4bssl3der5InputES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i85.i.i.i, %bb.dk, %bb.dh
  %i.uw = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0148.0177.i.i.i) #26 ; 2 uses
  %.not161.i.i.i = icmp eq ptr %i.uw, %i.rb
  br i1 %.not161.i.i.i, label %.loopexit.loopexit.i.i.i, label %bb.dh

_ZN4bssl12_GLOBAL__N_116ValidPolicyGraph27GetUserConstrainedPolicySetERKSt3setINS_3der5InputESt4lessIS4_ESaIS4_EE.exit.i.i: ; preds = %.loopexit.i.i.i, %bb.df, %.noexc85, %.thread243.i.i.i, %bb.cn
  %i.ux = load ptr, ptr %i.h, align 8, !tbaa !26
  invoke void @_ZNSt8_Rb_treeIN4bssl3der5InputES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.dc, ptr noundef %i.ux)
          to label %_ZNSt8_Rb_treeIN4bssl3der5InputES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE5clearEv.exit.i.i.i.i.i unwind label %bb.eb

bb.eb:                                            ; preds = %_ZN4bssl12_GLOBAL__N_116ValidPolicyGraph27GetUserConstrainedPolicySetERKSt3setINS_3der5InputESt4lessIS4_ESaIS4_EE.exit.i.i
  %i.uy = landingpad { ptr, i32 }
          catch ptr null
  %i.uz = extractvalue { ptr, i32 } %i.uy, 0
  call void @__clang_call_terminate(ptr %i.uz) #21
  unreachable

_ZNSt8_Rb_treeIN4bssl3der5InputES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE5clearEv.exit.i.i.i.i.i: ; preds = %_ZN4bssl12_GLOBAL__N_116ValidPolicyGraph27GetUserConstrainedPolicySetERKSt3setINS_3der5InputESt4lessIS4_ESaIS4_EE.exit.i.i
  store ptr null, ptr %i.h, align 8, !tbaa !26
  store ptr %i.g, ptr %i.i, align 8, !tbaa !27
  store ptr %i.g, ptr %i.j, align 8, !tbaa !28
  store i64 0, ptr %i.k, align 8, !tbaa !29
  %i.va = load ptr, ptr %i.cx, align 8, !tbaa !163 ; 3 uses
  %.not.i.i.i.i89.i = icmp eq ptr %i.va, null
  br i1 %.not.i.i.i.i89.i, label %_ZNSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EED2Ev.exit.i.thread.i, label %_ZNSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EED2Ev.exit.i.i

_ZNSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EED2Ev.exit.i.i: ; preds = %_ZNSt8_Rb_treeIN4bssl3der5InputES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE5clearEv.exit.i.i.i.i.i
  %i.vb = load i32, ptr %i.cw, align 8, !tbaa !25
  store i32 %i.vb, ptr %i.g, align 8, !tbaa !25
  store ptr %i.va, ptr %i.h, align 8, !tbaa !26
  %i.vc = load <2 x ptr>, ptr %i.cy, align 8, !tbaa !163
  store <2 x ptr> %i.vc, ptr %i.i, align 8, !tbaa !163
  %i.vd = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  store ptr %i.g, ptr %i.vd, align 8, !tbaa !174
  %i.ve = load i64, ptr %i.da, align 8, !tbaa !29 ; 2 uses
  store i64 %i.ve, ptr %i.k, align 8, !tbaa !29
  %i.vf = icmp ne i64 %i.ve, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.vg = load i64, ptr %i.bt, align 8, !tbaa !77
  %i.vh = icmp ne i64 %i.vg, 0
  %brmerge.i = select i1 %i.vh, i1 true, i1 %i.vf
  br i1 %brmerge.i, label %.noexc87, label %.thread228.i

_ZNSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EED2Ev.exit.i.thread.i: ; preds = %_ZNSt8_Rb_treeIN4bssl3der5InputES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE5clearEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.vi = load i64, ptr %i.bt, align 8, !tbaa !77
  %i.vj = icmp eq i64 %i.vi, 0
  br i1 %i.vj, label %.thread228.i, label %.noexc87

.thread228.i:                                     ; preds = %_ZNSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EED2Ev.exit.i.thread.i, %_ZNSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EED2Ev.exit.i.i
  invoke void @_ZN4bssl10CertErrors8AddErrorEPKv(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef %i.dd)
          to label %.noexc87 unwind label %.loopexit.split-lp.loopexit

.noexc87:                                         ; preds = %.thread228.i, %_ZNSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EED2Ev.exit.i.thread.i, %_ZNSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EED2Ev.exit.i.i
  %i.vk = getelementptr inbounds nuw i8, ptr %i.dq, i64 344
  %.val.i.i = load i8, ptr %i.vk, align 8, !tbaa !217, !range !68, !noundef !69
  %i.vl = getelementptr inbounds nuw i8, ptr %i.dq, i64 345
  %.val14.i.i = load i8, ptr %i.vl, align 1
  %i.vm = trunc nuw i8 %.val.i.i to i1
  %i.vn = trunc nuw i8 %.val14.i.i to i1
  %or.cond.i.i.i = select i1 %i.vm, i1 %i.vn, i1 false
  br i1 %or.cond.i.i.i, label %bb.ec, label %_ZN4bssl12_GLOBAL__N_123VerifyTargetCertIsNotCAERKNS_17ParsedCertificateENS_10KeyPurposeEPNS_10CertErrorsE.exit.i.i

bb.ec:                                            ; preds = %.noexc87
  switch i32 %4, label %_ZN4bssl12_GLOBAL__N_123VerifyTargetCertIsNotCAERKNS_17ParsedCertificateENS_10KeyPurposeEPNS_10CertErrorsE.exit.i.i [
    i32 9, label %bb.ee
    i32 1, label %bb.ed
    i32 2, label %bb.ed
    i32 3, label %bb.ee
    i32 5, label %bb.ee
    i32 6, label %bb.ee
    i32 4, label %bb.ee
    i32 7, label %bb.ee
    i32 8, label %bb.ee
  ]

bb.ed:                                            ; preds = %bb.ec, %bb.ec
  invoke void @_ZN4bssl10CertErrors10AddWarningEPKv(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef %i.de)
          to label %_ZN4bssl12_GLOBAL__N_123VerifyTargetCertIsNotCAERKNS_17ParsedCertificateENS_10KeyPurposeEPNS_10CertErrorsE.exit.i.i unwind label %.loopexit.split-lp.loopexit

bb.ee:                                            ; preds = %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec
  invoke void @_ZN4bssl10CertErrors8AddErrorEPKv(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef %i.de)
          to label %_ZN4bssl12_GLOBAL__N_123VerifyTargetCertIsNotCAERKNS_17ParsedCertificateENS_10KeyPurposeEPNS_10CertErrorsE.exit.i.i unwind label %.loopexit.split-lp.loopexit

_ZN4bssl12_GLOBAL__N_123VerifyTargetCertIsNotCAERKNS_17ParsedCertificateENS_10KeyPurposeEPNS_10CertErrorsE.exit.i.i: ; preds = %bb.ee, %bb.ed, %bb.ec, %.noexc87
end_hunk_0
