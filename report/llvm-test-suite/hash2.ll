inline.NumInlined: 271
inline.NumDeleted: 139
begin_hunk_0_@main:bb.a
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 48
  %i.ml = load ptr, ptr %i.mk, align 8
  %i.mm = invoke noundef signext i8 %i.ml(ptr noundef nonnull align 8 dereferenceable(570) %i.me, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.ak, !inline_history !69

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc197, %bb.ad
  %.0.i.i.i = phi i8 [ %i.mi, %bb.ad ], [ %i.mm, %.noexc197 ]
end_hunk_0
begin_hunk_1_@main:bb.a
  %i.my = load ptr, ptr %.0810.i.i.i, align 8, !tbaa !33 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.0810.i.i.i, i64 noundef 24) #16
  %.not.i.i.i = icmp eq ptr %i.my, null
  br i1 %.not.i.i.i, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !70

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !12
end_hunk_1
begin_hunk_2_@main:bb.a
  %i.nf = sub i64 %i.nd, %i.ne
  %i.ng = ashr exact i64 %i.nf, 3
  %i.nh = icmp ult i64 %i.nc, %i.ng
  br i1 %i.nh, label %.lr.ph12.i.i.i, label %._crit_edge13.i.i.i, !llvm.loop !71

_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE5clearEv.exit.i.i: ; preds = %._crit_edge13.i.i.i, %._ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE5clearEv.exit_crit_edge.i.i
  %i.ni = phi ptr [ %.pre.i.i, %._ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE5clearEv.exit_crit_edge.i.i ], [ %i.mt, %._crit_edge13.i.i.i ] ; 3 uses
end_hunk_2
begin_hunk_3_@main:bb.a
  %i.nx = load ptr, ptr %.0810.i.i.i144, align 8, !tbaa !33 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.0810.i.i.i144, i64 noundef 24) #16
  %.not.i.i.i145 = icmp eq ptr %i.nx, null
  br i1 %.not.i.i.i145, label %._crit_edge.loopexit.i.i.i146, label %.lr.ph.i.i.i143, !llvm.loop !70

._crit_edge.loopexit.i.i.i146:                    ; preds = %.lr.ph.i.i.i143
  %.pre.i.i.i147 = load ptr, ptr %i.h, align 8, !tbaa !12
end_hunk_3
begin_hunk_4_@main:bb.a
  %i.oe = sub i64 %i.oc, %i.od
  %i.of = ashr exact i64 %i.oe, 3
  %i.og = icmp ult i64 %i.ob, %i.of
  br i1 %i.og, label %.lr.ph12.i.i.i140, label %._crit_edge13.i.i.i150, !llvm.loop !71

_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE5clearEv.exit.i.i151: ; preds = %._crit_edge13.i.i.i150, %._ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE5clearEv.exit_crit_edge.i.i153
  %i.oh = phi ptr [ %.pre.i.i154, %._ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE5clearEv.exit_crit_edge.i.i153 ], [ %i.ns, %._crit_edge13.i.i.i150 ] ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEED2Ev:bb.a
  %i.l = load ptr, ptr %.0810.i.i, align 8, !tbaa !33 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.0810.i.i, i64 noundef 24) #16
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !70

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !12
end_hunk_5
begin_hunk_6_@_ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEED2Ev:bb.a
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = icmp ult i64 %i.p, %i.t
  br i1 %i.u, label %.lr.ph12.i.i, label %._crit_edge13.i.i, !llvm.loop !71

_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE5clearEv.exit.i: ; preds = %._crit_edge13.i.i, %._ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE5clearEv.exit_crit_edge.i
  %i.v = phi ptr [ %.pre.i, %._ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE5clearEv.exit_crit_edge.i ], [ %i.g, %._crit_edge13.i.i ] ; 3 uses
end_hunk_6
begin_hunk_7_@_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE21_M_initialize_bucketsEm:bb.a
  %i.t = ashr exact i64 %i.s, 3
  %i.u = icmp ult i64 %i.t, %i.k
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !72   ; 2 uses
  br i1 %i.u, label %_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE7reserveEm.exit

_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE11_M_allocateEm.exit.i: ; preds = %bb.c
end_hunk_7
begin_hunk_8_@_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE14_M_fill_insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_:bb.a
  %i.o = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !73

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 3
end_hunk_8
begin_hunk_9_@_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE14_M_fill_insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_:bb.a
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !73

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_SaIS8_EET0_T_SC_SB_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
end_hunk_9
begin_hunk_10_@_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE14_M_fill_insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_:bb.a
  store <2 x ptr> %broadcast.splat133, ptr %i.aj, align 8, !tbaa !31
  %index.next138 = add nuw i64 %index135, 4       ; 2 uses
  %i.ak = icmp eq i64 %index.next138, %n.vec131
  br i1 %i.ak, label %middle.block139, label %vector.body134, !llvm.loop !74

middle.block139:                                  ; preds = %vector.body134
  %cmp.n140 = icmp eq i64 %i.ag, %n.vec131
end_hunk_10
begin_hunk_11_@_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE14_M_fill_insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_:bb.a
  store ptr %i.i, ptr %.07.i.i.i, align 8, !tbaa !31
  %i.al = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.al, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES8_EvT_SA_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !77

bb.l:                                             ; preds = %bb.c
  %i.am = icmp eq i64 %2, %i.l
end_hunk_11
begin_hunk_12_@_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE14_M_fill_insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_:bb.a
  store <2 x ptr> %broadcast.splat, ptr %i.aw, align 8, !tbaa !31
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
end_hunk_12
begin_hunk_13_@_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE14_M_fill_insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_:bb.a
  store ptr %i.i, ptr %.07.i.i.i.i.i.i.i, align 8, !tbaa !31
  %i.ay = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.ao
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEmS8_S8_ET_SA_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !79

_ZSt24__uninitialized_fill_n_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEmS8_S8_ET_SA_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ao, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !27
  %i.az = icmp sgt i64 %i.k, 8
  br i1 %i.az, label %bb.n, label %bb.o, !prof !73

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEmS8_S8_ET_SA_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.i.i.i.i.i, ptr align 8 %1, i64 %i.k, i1 false)
end_hunk_13
begin_hunk_14_@_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE14_M_fill_insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_:bb.a
  store <2 x ptr> %broadcast.splat118, ptr %i.bk, align 8, !tbaa !31
  %index.next123 = add nuw i64 %index120, 4       ; 2 uses
  %i.bl = icmp eq i64 %index.next123, %n.vec116
  br i1 %i.bl, label %middle.block124, label %vector.body119, !llvm.loop !80

middle.block124:                                  ; preds = %vector.body119
  %cmp.n125 = icmp eq i64 %i.bh, %n.vec116
end_hunk_14
begin_hunk_15_@_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE14_M_fill_insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_:bb.a
  store ptr %i.i, ptr %.07.i.i.i72, align 8, !tbaa !31
  %i.bm = getelementptr inbounds nuw i8, ptr %.07.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bm, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES8_EvT_SA_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !81

bb.q:                                             ; preds = %bb.b
  %i.bn = load ptr, ptr %0, align 8, !tbaa !12    ; 5 uses
end_hunk_15
begin_hunk_16_@_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE14_M_fill_insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_:bb.a
  store <2 x ptr> %broadcast.splat148, ptr %i.ck, align 8, !tbaa !31
  %index.next153 = add nuw i64 %index150, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next153, %n.vec146
  br i1 %i.cl, label %middle.block154, label %vector.body149, !llvm.loop !82

middle.block154:                                  ; preds = %vector.body149
  %cmp.n155 = icmp eq i64 %i.ch, %n.vec146
end_hunk_16
begin_hunk_17_@_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE14_M_fill_insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_:bb.a
  store ptr %i.ce, ptr %.07.i.i.i.i.i.i.i77, align 8, !tbaa !31
  %i.cm = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cm, %i.cd
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEmS8_S8_ET_SA_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !83

_ZSt24__uninitialized_fill_n_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEmS8_S8_ET_SA_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block154
  %i.cn = icmp sgt i64 %i.by, 8
  br i1 %i.cn, label %bb.u, label %bb.v, !prof !73

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEmS8_S8_ET_SA_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cb, ptr align 8 %i.bn, i64 %i.by, i1 false)
end_hunk_17
begin_hunk_18_@_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE14_M_fill_insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_:bb.a
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %2 ; 3 uses
  %i.cr = sub i64 %i.f, %i.bx                     ; 4 uses
  %i.cs = icmp sgt i64 %i.cr, 8
  br i1 %i.cs, label %bb.x, label %bb.y, !prof !73

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_SaIS8_EET0_T_SC_SB_RT1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cq, ptr align 8 %1, i64 %i.cr, i1 false)
end_hunk_18
begin_hunk_19_@llvm.umin.i64
!66 = !{!"p1 _ZTS15__locale_struct", !10, i64 0}
!67 = !{!"p1 int", !10, i64 0}
!68 = !{!"p1 short", !10, i64 0}
!69 = distinct !{null, null}
!70 = distinct !{!70, !30}
!71 = distinct !{!71, !30}
!72 = !{!14, !14, i64 0}
!73 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!74 = distinct !{!74, !30, !75, !76}
!75 = !{!"llvm.loop.isvectorized", i32 1}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = distinct !{!77, !30, !76, !75}
!78 = distinct !{!78, !30, !75, !76}
!79 = distinct !{!79, !30, !76, !75}
!80 = distinct !{!80, !30, !75, !76}
!81 = distinct !{!81, !30, !76, !75}
!82 = distinct !{!82, !30, !75, !76}
!83 = distinct !{!83, !30, !76, !75}
end_hunk_19
