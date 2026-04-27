inline.NumInlined: 3272
inline.NumDeleted: 768
begin_hunk_0_@_ZN2kc15hashtable_levelD2Ev:bb.a
  %i.ai = phi ptr [ %i.an, %._crit_edge.i.i.i ], [ %i.af, %.preheader.i.i.i ]
  %i.aj = phi ptr [ %i.ao, %._crit_edge.i.i.i ], [ %i.ag, %.preheader.i.i.i ] ; 2 uses
  %.011.i.i.i = phi i64 [ %i.aq, %._crit_edge.i.i.i ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.011.i.i.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1351 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not9.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i
end_hunk_0
begin_hunk_1_@_ZN2kc15hashtable_levelD2Ev:bb.a
._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %.lr.ph12.i.i.i
  %i.an = phi ptr [ %.pre15.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.ai, %.lr.ph12.i.i.i ] ; 2 uses
  %i.ao = phi ptr [ %.pre.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.aj, %.lr.ph12.i.i.i ] ; 4 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.011.i.i.i
  store ptr null, ptr %i.ap, align 8, !tbaa !1351
  %i.aq = add nuw i64 %.011.i.i.i, 1              ; 2 uses
  %i.ar = ptrtoint ptr %i.an to i64
end_hunk_1
begin_hunk_2_@_ZN2kc15hashtable_level5clearEb:bb.a
  %i.h = phi ptr [ %i.m, %._crit_edge.i.i ], [ %i.f, %.preheader.i.i ]
  %i.i = phi ptr [ %i.n, %._crit_edge.i.i ], [ %i.g, %.preheader.i.i ] ; 2 uses
  %.011.i.i = phi i64 [ %i.p, %._crit_edge.i.i ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.011.i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1351 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.k, null
  br i1 %.not9.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i
end_hunk_2
begin_hunk_3_@_ZN2kc15hashtable_level5clearEb:bb.a
._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %.lr.ph12.i.i
  %i.m = phi ptr [ %.pre15.i.i, %._crit_edge.loopexit.i.i ], [ %i.h, %.lr.ph12.i.i ] ; 2 uses
  %i.n = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.i, %.lr.ph12.i.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.011.i.i
  store ptr null, ptr %i.o, align 8, !tbaa !1351
  %i.p = add nuw i64 %.011.i.i, 1                 ; 2 uses
  %i.q = ptrtoint ptr %i.m to i64
end_hunk_3
begin_hunk_4_@_ZN2kc15hashtable_level13clear_entriesEv:bb.a

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.preheader.i.i
  %.058.i.i = phi i64 [ %i.i, %bb.b ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.058.i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1351 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.b, label %.lr.ph.i
end_hunk_4
begin_hunk_5_@_ZN2kc15hashtable_level12check_insertEPNS_20impl_casestring__StrE:bb.a
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3
  %i.v = urem i64 %.07.lcssa.i, %i.u
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.v ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1351, !noalias !1400 ; 3 uses
  %.not23.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not23.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.i.i
end_hunk_5
begin_hunk_6_@_ZN9__gnu_cxx9hashtableIN2kc8hashitemES2_NS1_13hash_hashitemESt9_IdentityIS2_ENS1_11eq_hashitemESaIS2_EE6resizeEm:bb.a

.lr.ph61:                                         ; preds = %_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i, %_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EEC2EmRKS5_RKS6_.exit
  %.03460 = phi i64 [ %i.ak, %_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EEC2EmRKS5_RKS6_.exit ], [ 0, %_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.03460 ; 3 uses
  %.03357 = load ptr, ptr %i.ae, align 8, !tbaa !1351 ; 2 uses
  %.not58 = icmp eq ptr %.03357, null
  br i1 %.not58, label %_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EEC2EmRKS5_RKS6_.exit, label %.lr.ph
end_hunk_6
