inline.NumInlined: 3767
inline.NumDeleted: 1290
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN6google8protobuf8internal20RepeatedPtrFieldBase7DestroyINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvv:bb.a
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !20
  tail call void @llvm.prefetch.p0(ptr %i.s, i32 0, i32 0, i32 1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20   ; 4 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPvPNS0_5ArenaE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !126  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.z = load i64, ptr %i.x, align 8, !tbaa !13
  %i.aa = add i64 %i.z, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 32) #39
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPvPNS0_5ArenaE.exit

_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPvPNS0_5ArenaE.exit: ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !524

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit: ; preds = %._crit_edge
  %i.ab = add nsw i64 %.pre-phi17, -1
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !146
  %i.ae = sext i32 %i.ad to i64
  %i.af = shl nsw i64 %i.ae, 3
  %i.ag = add nsw i64 %i.af, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ag) #35
  br label %bb.g

bb.g:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit, %._crit_edge
  ret void
}

declare void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16internal_emplaceIJSD_EEENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESN_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #33 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::container_internal::btree_iterator", align 8 ; 7 uses
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.c = load i8, ptr %i.b, align 1, !tbaa !13    ; 2 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %.thread.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert11 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %.pre12 = load i8, ptr %.phi.trans.insert11, align 1, !tbaa !13
  br label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.e = and i32 %2, 255
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %.11723.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !95 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.11723.i.i.i, i64 11
  %i.i = load i8, ptr %i.h, align 1, !tbaa !13    ; 2 uses
  %.not.i24.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i24.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmmEv.exit

.lr.ph26.i.i.i:                                   ; preds = %.thread.i.i, %.lr.ph26.i.i.i
  %.11725.i.i.i = phi ptr [ %.117.i.i.i, %.lr.ph26.i.i.i ], [ %.11723.i.i.i, %.thread.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 10
  %i.k = load i8, ptr %i.j, align 1, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 240
  %i.m = zext i8 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %.117.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !95 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.117.i.i.i, i64 11
  %i.p = load i8, ptr %i.o, align 1, !tbaa !13    ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmmEv.exit, !llvm.loop !525

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmmEv.exit: ; preds = %.lr.ph26.i.i.i, %.thread.i.i
  %.pre = phi i8 [ %i.i, %.thread.i.i ], [ %i.p, %.lr.ph26.i.i.i ]
  %.117.lcssa.i.i.i = phi ptr [ %.11723.i.i.i, %.thread.i.i ], [ %.117.i.i.i, %.lr.ph26.i.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i, i64 10
  %i.r = load i8, ptr %i.q, align 1, !tbaa !13    ; 2 uses
  %i.s = zext i8 %i.r to i32
  store ptr %.117.lcssa.i.i.i, ptr %4, align 8
  store i32 %i.s, ptr %i.a, align 8, !tbaa !321
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmmEv.exit
  %i.t = phi i8 [ %i.r, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmmEv.exit ], [ %.pre12, %._crit_edge ] ; 3 uses
  %i.u = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmmEv.exit ], [ %i.c, %._crit_edge ]
  %i.v = phi ptr [ %.117.lcssa.i.i.i, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmmEv.exit ], [ %1, %._crit_edge ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 10 ; 2 uses
  %i.y = icmp eq i8 %i.t, %i.u
  br i1 %i.y, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.z = icmp ult i8 %i.t, 7
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = shl nuw nsw i8 %i.t, 1
  %i.ab = tail call i8 @llvm.umin.i8(i8 %i.aa, i8 7) ; 2 uses
  %i.ac = shl nuw i8 %i.ab, 5
  %i.ad = or disjoint i8 %i.ac, 16
  %i.ae = zext i8 %i.ad to i64
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #38 ; 11 uses
  store ptr %i.af, ptr %i.af, align 8, !tbaa !95
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i8 0, ptr %i.ag, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 9
  store i8 0, ptr %i.ah, align 1, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 11
  store i8 %i.ab, ptr %i.ai, align 1, !tbaa !13
  store ptr %i.af, ptr %4, align 8, !tbaa !317
  %i.aj = load i8, ptr %i.x, align 1, !tbaa !13   ; 3 uses
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.ak, 5          ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i.i.i
  %.not13.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not13.i.i.i, label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16internal_emplaceIJSD_EEENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESN_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ao = add nsw i64 %.idx.i.i.i, -32            ; 2 uses
  %i.ap = lshr exact i64 %i.ao, 5
  %i.aq = add nuw nsw i64 %i.ap, 1
  %xtraiter = and i64 %i.aq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i4.prol.loopexit, label %.lr.ph.i.i.i4.prol

.lr.ph.i.i.i4.prol:                               ; preds = %.lr.ph.preheader.i.i.i, %.lr.ph.i.i.i4.prol
  %.015.i.i.i.prol = phi ptr [ %i.as, %.lr.ph.i.i.i4.prol ], [ %i.an, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.01214.i.i.i.prol = phi ptr [ %i.ar, %.lr.ph.i.i.i4.prol ], [ %i.al, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i4.prol ], [ 0, %.lr.ph.preheader.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.015.i.i.i.prol, ptr noundef nonnull align 1 dereferenceable(32) %.01214.i.i.i.prol, i64 32, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.prol, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.015.i.i.i.prol, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i4.prol.loopexit, label %.lr.ph.i.i.i4.prol, !llvm.loop !526

.lr.ph.i.i.i4.prol.loopexit:                      ; preds = %.lr.ph.i.i.i4.prol, %.lr.ph.preheader.i.i.i
  %.015.i.i.i.unr = phi ptr [ %i.an, %.lr.ph.preheader.i.i.i ], [ %i.as, %.lr.ph.i.i.i4.prol ]
  %.01214.i.i.i.unr = phi ptr [ %i.al, %.lr.ph.preheader.i.i.i ], [ %i.ar, %.lr.ph.i.i.i4.prol ]
  %i.at = icmp ult i64 %i.ao, 96
  br i1 %i.at, label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16internal_emplaceIJSD_EEENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESN_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i4

.lr.ph.i.i.i4:                                    ; preds = %.lr.ph.i.i.i4.prol.loopexit, %.lr.ph.i.i.i4
  %.015.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i4 ], [ %.015.i.i.i.unr, %.lr.ph.i.i.i4.prol.loopexit ] ; 5 uses
  %.01214.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i4 ], [ %.01214.i.i.i.unr, %.lr.ph.i.i.i4.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.015.i.i.i, ptr noundef nonnull align 1 dereferenceable(32) %.01214.i.i.i, i64 32, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.av, ptr noundef nonnull align 1 dereferenceable(32) %i.au, i64 32, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ax, ptr noundef nonnull align 1 dereferenceable(32) %i.aw, i64 32, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 96
  %i.az = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.az, ptr noundef nonnull align 1 dereferenceable(32) %i.ay, i64 32, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 128 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 128
  %.not.i.i.i5.3 = icmp eq ptr %i.ba, %i.am
  br i1 %.not.i.i.i5.3, label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16internal_emplaceIJSD_EEENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESN_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i4, !llvm.loop !527

_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16internal_emplaceIJSD_EEENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESN_DpOT_ENKUlhE_clEh.exit: ; preds = %.lr.ph.i.i.i4.prol.loopexit, %.lr.ph.i.i.i4, %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %i.af, i64 10
  store i8 %i.aj, ptr %i.bc, align 2, !tbaa !13
  store i8 0, ptr %i.x, align 1, !tbaa !13
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16clear_and_deleteEPSG_PSE_(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w)
  store ptr %i.af, ptr %i.w, align 8, !tbaa !95
  store ptr %i.af, ptr %0, align 8, !tbaa !95
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %4)
  %.pre13 = load ptr, ptr %4, align 8, !tbaa !317
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16internal_emplaceIJSD_EEENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESN_DpOT_ENKUlhE_clEh.exit, %bb.e, %bb.b
  %i.bd = phi ptr [ %i.af, %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16internal_emplaceIJSD_EEENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESN_DpOT_ENKUlhE_clEh.exit ], [ %.pre13, %bb.e ], [ %i.v, %bb.b ] ; 5 uses
  %i.be = load i32, ptr %i.a, align 8, !tbaa !321 ; 2 uses
  %i.bf = trunc i32 %i.be to i8                   ; 2 uses
  %i.bg = and i32 %i.be, 255                      ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 10 ; 3 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !13  ; 3 uses
  %i.bj = icmp ugt i8 %i.bi, %i.bf
  %i.bk = zext nneg i32 %i.bg to i64              ; 4 uses
  br i1 %i.bj, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bm = getelementptr [32 x i8], ptr %i.bl, i64 %i.bk ; 2 uses
  %narrow.i = sub nuw i8 %i.bi, %i.bf
  %i.bn = zext i8 %narrow.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.bn, 5
  %i.bo = getelementptr i8, ptr %i.bm, i64 32
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bo, ptr align 1 %i.bm, i64 %.idx.i.i, i1 false)
  %.pre.i = load i8, ptr %i.bh, align 1, !tbaa !13
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.f
  %i.bp = phi i8 [ %.pre.i, %.lr.ph.preheader.i.i ], [ %i.bi, %bb.f ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %i.bq, i64 %i.bk ; 2 uses
  %i.bs = load i32, ptr %3, align 8, !tbaa !3
  store i32 %i.bs, ptr %i.br, align 8, !tbaa !528
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i64 24, i1 false), !tbaa.struct !174
  %i.bv = add i8 %i.bp, 1                         ; 3 uses
  store i8 %i.bv, ptr %i.bh, align 1, !tbaa !13
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bd, i64 11
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !13
  %.not.i18.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i18.i, label %bb.g, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13emplace_valueIJSD_EEEvhPSE_DpOT_.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit.i
  %i.by = zext i8 %i.bv to i32
  %i.bz = add nuw nsw i32 %i.bg, 1                ; 2 uses
  %i.ca = icmp samesign ult i32 %i.bz, %i.by
  br i1 %i.ca, label %.lr.ph.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13emplace_valueIJSD_EEEvhPSE_DpOT_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %5 = getelementptr inbounds nuw i8, ptr %i.bd, i64 240 ; 10 uses
  %6 = zext i8 %i.bv to i64                       ; 4 uses
  %7 = zext nneg i32 %i.bz to i64
  %8 = xor i64 %i.bk, -1
  %9 = add nsw i64 %8, %6
  %10 = add nsw i64 %6, -2
  %11 = sub nsw i64 %10, %i.bk
  %xtraiter22 = and i64 %9, 3                     ; 2 uses
  %lcmp.mod23.not = icmp eq i64 %xtraiter22, 0
  br i1 %lcmp.mod23.not, label %.prol.loopexit, label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %.lr.ph.i, %.lr.ph.i.a
  %indvars.iv.prol = phi i64 [ %12, %.lr.ph.i.a ], [ %6, %.lr.ph.i ] ; 3 uses
  %prol.iter24 = phi i64 [ %prol.iter24.next, %.lr.ph.i.a ], [ 0, %.lr.ph.i ]
  %12 = add nsw i64 %indvars.iv.prol, -1          ; 3 uses
  %13 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !95     ; 2 uses
  %15 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.prol
  store ptr %14, ptr %15, align 8, !tbaa !95
  %i.cb = getelementptr inbounds nuw i8, ptr %14, i64 8
  %16 = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %16, ptr %i.cb, align 1, !tbaa !13
  %prol.iter24.next = add i64 %prol.iter24, 1     ; 2 uses
  %prol.iter24.cmp.not = icmp eq i64 %prol.iter24.next, %xtraiter22
  br i1 %prol.iter24.cmp.not, label %.prol.loopexit, label %.lr.ph.i.a, !llvm.loop !530

.prol.loopexit:                                   ; preds = %.lr.ph.i.a, %.lr.ph.i
  %indvars.iv.unr = phi i64 [ %6, %.lr.ph.i ], [ %12, %.lr.ph.i.a ]
  %17 = icmp ult i64 %11, 3
  br i1 %17, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13emplace_valueIJSD_EEEvhPSE_DpOT_.exit, label %bb.h

bb.h:                                             ; preds = %.prol.loopexit, %bb.h
  %indvars.iv = phi i64 [ %32, %bb.h ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %18 = add nsw i64 %indvars.iv, -1               ; 3 uses
  %19 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !95     ; 2 uses
  %21 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  store ptr %20, ptr %21, align 8, !tbaa !95
  %22 = getelementptr inbounds nuw i8, ptr %20, i64 8
  %23 = trunc nuw i64 %indvars.iv to i8
  store i8 %23, ptr %22, align 1, !tbaa !13
  %24 = add nsw i64 %indvars.iv, -2               ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !95 ; 2 uses
  %25 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %18
  store ptr %i.cd, ptr %25, align 8, !tbaa !95
  %26 = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %27 = trunc nuw i64 %18 to i8
  store i8 %27, ptr %26, align 1, !tbaa !13
  %28 = add nsw i64 %indvars.iv, -3               ; 3 uses
  %29 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !95     ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %24
  store ptr %30, ptr %i.ce, align 8, !tbaa !95
  %i.cf = getelementptr inbounds nuw i8, ptr %30, i64 8
  %31 = trunc nuw i64 %24 to i8
  store i8 %31, ptr %i.cf, align 1, !tbaa !13
  %32 = add nsw i64 %indvars.iv, -4               ; 3 uses
  %33 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !95     ; 2 uses
  %35 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %28
  store ptr %34, ptr %35, align 8, !tbaa !95
  %36 = getelementptr inbounds nuw i8, ptr %34, i64 8
  %37 = trunc nuw i64 %28 to i8
  store i8 %37, ptr %36, align 1, !tbaa !13
  %.wide.3 = icmp ugt i64 %32, %7
  br i1 %.wide.3, label %bb.h, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13emplace_valueIJSD_EEEvhPSE_DpOT_.exit, !llvm.loop !531

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13emplace_valueIJSD_EEEvhPSE_DpOT_.exit: ; preds = %.prol.loopexit, %bb.h, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit.i, %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !100
  %i.ci = add i64 %i.ch, 1
  store i64 %i.ci, ptr %i.cg, align 8, !tbaa !100
  %.sroa.0.0.copyload = load ptr, ptr %4, align 8
  %.sroa.2.0.copyload = load i32, ptr %i.a, align 8
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.2.0.copyload, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::container_internal::btree_iterator", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !95     ; 10 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !95   ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !89
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !13    ; 5 uses
  %.not112 = icmp eq i8 %i.f, 0
  br i1 %.not112, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add i8 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.i = zext i8 %i.g to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !95   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 10 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13    ; 3 uses
  %i.n = icmp ult i8 %i.m, 7
  br i1 %i.n, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw nsw i8 7, %i.m
  %i.o = load i32, ptr %i.a, align 8, !tbaa !3
  %i.p = and i32 %i.o, 255                        ; 2 uses
  %i.q = icmp samesign ult i32 %i.p, 7
  %i.r = zext i1 %i.q to i8
  %i.s = lshr i8 %narrow, %i.r
  %.sroa.speculated99 = tail call i8 @llvm.umax.i8(i8 %i.s, i8 1) ; 3 uses
  %i.t = zext nneg i8 %.sroa.speculated99 to i32  ; 2 uses
  %.not84 = icmp samesign uge i32 %i.p, %i.t
  %narrow113 = add nuw nsw i8 %.sroa.speculated99, %i.m
  %i.u = icmp samesign ult i8 %narrow113, 7
  %or.cond = select i1 %.not84, i1 true, i1 %i.u
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE23rebalance_right_to_leftEhPSG_PSE_(ptr noundef nonnull align 1 dereferenceable(1) %i.k, i8 noundef zeroext %.sroa.speculated99, ptr noundef nonnull %i.b, ptr noundef nonnull %i.v)
  %i.w = load i32, ptr %i.a, align 8, !tbaa !3
  %i.x = and i32 %i.w, 255
  %i.y = sub nsw i32 %i.x, %i.t                   ; 3 uses
  store i32 %i.y, ptr %i.a, align 8, !tbaa !3
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.aa = load i8, ptr %i.l, align 1, !tbaa !13
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.y, 1
  %i.ad = add nsw i32 %i.ac, %i.ab
  br label %.critedge.sink.split

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !13  ; 2 uses
  %i.ag = icmp ult i8 %i.f, %i.af
  br i1 %i.ag, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ah = add nuw i8 %i.f, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.aj = zext i8 %i.ah to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !95 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 10
  %i.an = load i8, ptr %i.am, align 1, !tbaa !13  ; 3 uses
  %i.ao = icmp ult i8 %i.an, 7
  br i1 %i.ao, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %narrow114 = sub nuw nsw i8 7, %i.an
  %i.ap = load i32, ptr %i.a, align 8, !tbaa !3   ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  %i.ar = zext i1 %i.aq to i8
  %i.as = lshr i8 %narrow114, %i.ar
  %.sroa.speculated = tail call i8 @llvm.umax.i8(i8 %i.as, i8 1) ; 3 uses
  %i.at = and i32 %i.ap, 255
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.av = load i8, ptr %i.au, align 2, !tbaa !13
  %i.aw = zext i8 %i.av to i32
  %i.ax = zext nneg i8 %.sroa.speculated to i32
  %i.ay = sub nsw i32 %i.aw, %i.ax
  %.not85 = icmp sle i32 %i.at, %i.ay
  %narrow115 = add nuw nsw i8 %.sroa.speculated, %i.an
  %i.az = icmp samesign ult i8 %narrow115, 7
  %or.cond111 = select i1 %.not85, i1 true, i1 %i.az
  br i1 %or.cond111, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE23rebalance_left_to_rightEhPSG_PSE_(ptr noundef nonnull align 1 dereferenceable(1) %i.b, i8 noundef zeroext %.sroa.speculated, ptr noundef nonnull %i.al, ptr noundef nonnull %i.ba)
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !3   ; 2 uses
  %i.bc = load ptr, ptr %1, align 8, !tbaa !95
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 10
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !13
  %i.bf = zext i8 %i.be to i32                    ; 2 uses
  %i.bg = icmp sgt i32 %i.bb, %i.bf
  br i1 %i.bg, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.bh = xor i32 %i.bf, -1
  %i.bi = add nsw i32 %i.bb, %i.bh
  br label %.critedge.sink.split

bb.l:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.bj = icmp eq i8 %i.af, 7
  br i1 %i.bj, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.bk = zext i8 %i.f to i32
  store ptr %i.c, ptr %2, align 8, !tbaa !317
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !321
  call void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %2)
  %i.bm = load ptr, ptr %1, align 8, !tbaa !95    ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.bo = tail call noalias noundef nonnull dereferenceable(304) ptr @_Znwm(i64 noundef 304) #38 ; 6 uses
  store ptr %i.c, ptr %i.bo, align 8, !tbaa !95
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 240
  store i32 0, ptr %i.bp, align 8
  store ptr %i.b, ptr %i.bq, align 8, !tbaa !95
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 0, ptr %i.br, align 8, !tbaa !13
  store ptr %i.bo, ptr %i.b, align 8, !tbaa !95
  store ptr %i.bo, ptr %0, align 8, !tbaa !95
  %.pre = load ptr, ptr %1, align 8, !tbaa !95
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %i.bs = phi ptr [ %i.bm, %bb.m ], [ %i.b, %bb.l ], [ %.pre, %bb.n ] ; 4 uses
  %.082 = phi ptr [ %i.bn, %bb.m ], [ %i.c, %bb.l ], [ %i.bo, %bb.n ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 11
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !13
  %.not116 = icmp eq i8 %i.bu, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !13
  %i.bx = add i8 %i.bw, 1                         ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %.not116, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = call noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #38 ; 9 uses
  store ptr %.082, ptr %i.bz, align 8, !tbaa !95
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i8 %i.bx, ptr %i.ca, align 8, !tbaa !13
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 9
  store i8 0, ptr %i.cb, align 1, !tbaa !13
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 10
  store i8 0, ptr %i.cc, align 2, !tbaa !13
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 11
  store i8 7, ptr %i.cd, align 1, !tbaa !13
  %i.ce = load i32, ptr %i.a, align 8, !tbaa !3
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5splitEiPSG_PSE_(ptr noundef nonnull align 1 dereferenceable(1) %i.bs, i32 noundef %i.ce, ptr noundef nonnull %i.bz, ptr noundef nonnull %i.by)
  %i.cf = load ptr, ptr %i.by, align 8, !tbaa !95
  %i.cg = load ptr, ptr %1, align 8, !tbaa !95
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !95
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.ci = call noalias noundef nonnull dereferenceable(304) ptr @_Znwm(i64 noundef 304) #38 ; 7 uses
  store ptr %.082, ptr %i.ci, align 8, !tbaa !95
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i8 %i.bx, ptr %i.cj, align 8, !tbaa !13
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 9
  store i8 0, ptr %i.ck, align 1, !tbaa !13
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 10
  store i8 0, ptr %i.cl, align 2, !tbaa !13
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 11
  store i8 0, ptr %i.cm, align 1, !tbaa !13
  %i.cn = load i32, ptr %i.a, align 8, !tbaa !3
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5splitEiPSG_PSE_(ptr noundef nonnull align 1 dereferenceable(1) %i.bs, i32 noundef %i.cn, ptr noundef nonnull %i.ci, ptr noundef nonnull %i.by)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.0 = phi ptr [ %i.bz, %bb.q ], [ %i.bz, %bb.p ], [ %i.ci, %bb.r ]
  %i.co = load i32, ptr %i.a, align 8, !tbaa !3   ; 2 uses
  %i.cp = load ptr, ptr %1, align 8, !tbaa !95
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 10
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !13
  %i.cs = zext i8 %i.cr to i32                    ; 2 uses
  %i.ct = icmp sgt i32 %i.co, %i.cs
  br i1 %i.ct, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.cu = xor i32 %i.cs, -1
  %i.cv = add nsw i32 %i.co, %i.cu
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.t, %bb.f, %bb.k
  %.sink127 = phi i32 [ %i.bi, %bb.k ], [ %i.ad, %bb.f ], [ %i.cv, %bb.t ]
  %.sink = phi ptr [ %i.al, %bb.k ], [ %i.k, %bb.f ], [ %.0, %bb.t ]
  store i32 %.sink127, ptr %i.a, align 8, !tbaa !3
  store ptr %.sink, ptr %1, align 8, !tbaa !95
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.j, %bb.e, %bb.s
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE23rebalance_right_to_leftEhPSG_PSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 6 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !13
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !13
  %i.f = zext i8 %i.e to i64                      ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !95     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.c ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.i, ptr noundef nonnull align 1 dereferenceable(32) %i.k, i64 32, i1 false)
  %i.l = zext i8 %1 to i32                        ; 3 uses
  %i.m = add nsw i32 %i.l, -1                     ; 3 uses
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.idx.i = shl nuw nsw i64 %i.n, 5
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i
  %.not13.i = icmp eq i32 %i.m, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.015.i.pn = phi ptr [ %.015.i, %.lr.ph.i ], [ %i.i, %bb.a ]
  %.01214.i = phi ptr [ %i.q, %.lr.ph.i ], [ %i.o, %bb.a ] ; 2 uses
  %.015.i = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.015.i, ptr noundef nonnull align 1 dereferenceable(32) %.01214.i, i64 32, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.01214.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.q, %i.p
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit, label %.lr.ph.i, !llvm.loop !527

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit: ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !95
  %.pre60 = load i8, ptr %i.d, align 8, !tbaa !13
  %.pre61 = zext i8 %.pre60 to i64
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit, %bb.a
  %.pre-phi = phi i64 [ %.pre61, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit ], [ %i.f, %bb.a ]
  %i.r = phi ptr [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit ], [ %i.g, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %.pre-phi
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.t, ptr noundef nonnull align 1 dereferenceable(32) %i.u, i64 32, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 5 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !13    ; 2 uses
  %i.x = zext i8 %i.w to i32
  %i.y = sub nsw i32 %i.x, %i.l
  %i.z = sext i32 %i.y to i64
  %i.aa = zext i8 %1 to i64                       ; 3 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.aa ; 2 uses
  %.idx.i44 = shl nuw nsw i64 %i.z, 5
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i44
  %.not13.i45 = icmp eq i8 %i.w, %1
  br i1 %.not13.i45, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit51, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit, %.lr.ph.i47
  %.015.i48 = phi ptr [ %i.ae, %.lr.ph.i47 ], [ %i.o, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit ] ; 2 uses
  %.01214.i49 = phi ptr [ %i.ad, %.lr.ph.i47 ], [ %i.ab, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.015.i48, ptr noundef nonnull align 1 dereferenceable(32) %.01214.i49, i64 32, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.01214.i49, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.015.i48, i64 32
  %.not.i50 = icmp eq ptr %i.ad, %i.ac
  br i1 %.not.i50, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit51, label %.lr.ph.i47, !llvm.loop !527

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit51: ; preds = %.lr.ph.i47, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !13
  %.not.i52 = icmp eq i8 %i.ag, 0
  br i1 %.not.i52, label %.preheader53, label %.loopexit

.preheader53:                                     ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit51
  %.not58 = icmp eq i8 %1, 0
  br i1 %.not58, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader53
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %xtraiter = and i64 %i.aa, 1
  %i.aj = icmp eq i32 %i.m, 0
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.aa, 254
  br label %bb.b

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod62 = trunc i8 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.ak = load i8, ptr %i.a, align 2, !tbaa !13
  %i.al = trunc i64 %indvars.iv.epil.init to i8
  %i.am = add i8 %i.al, 1
  %i.an = add i8 %i.ak, %i.am                     ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.epil.init
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !95 ; 3 uses
  %i.aq = zext i8 %i.an to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aq
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !95
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i8 %i.an, ptr %i.as, align 1, !tbaa !13
  store ptr %0, ptr %i.ap, align 8, !tbaa !95
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader53
  %i.at = load i8, ptr %i.v, align 1, !tbaa !13
  %.not55 = icmp ult i8 %i.at, %1
  br i1 %.not55, label %.loopexit, label %.lr.ph57

.lr.ph57:                                         ; preds = %.preheader
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.av = load i8, ptr %i.a, align 2, !tbaa !13
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aw = trunc nuw i64 %indvars.iv.next to i8
  %i.ax = add i8 %i.av, %i.aw                     ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !95 ; 3 uses
  %i.ba = zext i8 %i.ax to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ba
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !95
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i8 %i.ax, ptr %i.bc, align 1, !tbaa !13
  store ptr %0, ptr %i.az, align 8, !tbaa !95
  %i.bd = load i8, ptr %i.a, align 2, !tbaa !13
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.be = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.bf = add i8 %i.bd, %i.be                     ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !95 ; 3 uses
  %i.bi = zext i8 %i.bf to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.bi
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !95
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i8 %i.bf, ptr %i.bk, align 1, !tbaa !13
  store ptr %0, ptr %i.bh, align 8, !tbaa !95
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !532

bb.c:                                             ; preds = %.lr.ph57, %bb.c
  %.056 = phi i8 [ 0, %.lr.ph57 ], [ %i.bs, %bb.c ] ; 4 uses
  %i.bl = add i8 %.056, %1
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !95 ; 3 uses
  %i.bp = zext i8 %.056 to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bp
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !95
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i8 %.056, ptr %i.br, align 1, !tbaa !13
  store ptr %2, ptr %i.bo, align 8, !tbaa !95
  %i.bs = add i8 %.056, 1                         ; 2 uses
  %i.bt = zext i8 %i.bs to i32
  %i.bu = load i8, ptr %i.v, align 1, !tbaa !13
  %i.bv = zext i8 %i.bu to i32
  %i.bw = sub nsw i32 %i.bv, %i.l
  %.not = icmp slt i32 %i.bw, %i.bt
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !533

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit51
  %i.bx = load i8, ptr %i.a, align 2, !tbaa !13
  %i.by = add i8 %i.bx, %1
  store i8 %i.by, ptr %i.a, align 2, !tbaa !13
  %i.bz = load i8, ptr %i.v, align 1, !tbaa !13
  %i.ca = sub i8 %i.bz, %1
  store i8 %i.ca, ptr %i.v, align 1, !tbaa !13
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE23rebalance_left_to_rightEhPSG_PSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !13    ; 2 uses
  %i.c = zext i8 %1 to i32                        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.not15.i = icmp eq i8 %i.b, 0
  br i1 %.not15.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.e = zext i8 %i.b to i64                      ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.e, 5               ; 2 uses
  %i.f = zext i8 %1 to i64
  %i.g = getelementptr [32 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr [32 x i8], ptr %i.g, i64 %i.e ; 2 uses
  %i.i = getelementptr i8, ptr %i.d, i64 %.idx.i  ; 2 uses
  %i.j = add nsw i64 %.idx.i, -32                 ; 2 uses
  %i.k = lshr exact i64 %i.j, 5
  %i.l = add nuw nsw i64 %i.k, 1
  %xtraiter = and i64 %i.l, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %.017.i.prol = phi ptr [ %i.m, %.lr.ph.i.prol ], [ %i.h, %.lr.ph.preheader.i ]
  %.01416.i.prol = phi ptr [ %i.n, %.lr.ph.i.prol ], [ %i.i, %.lr.ph.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.m = getelementptr inbounds i8, ptr %.017.i.prol, i64 -32 ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %.01416.i.prol, i64 -32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.m, ptr noundef nonnull align 1 dereferenceable(32) %i.n, i64 32, i1 false)
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !534

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.017.i.unr = phi ptr [ %i.h, %.lr.ph.preheader.i ], [ %i.m, %.lr.ph.i.prol ]
  %.01416.i.unr = phi ptr [ %i.i, %.lr.ph.preheader.i ], [ %i.n, %.lr.ph.i.prol ]
  %i.o = icmp ult i64 %i.j, 96
  br i1 %i.o, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.017.i = phi ptr [ %i.v, %.lr.ph.i ], [ %.017.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.01416.i = phi ptr [ %i.w, %.lr.ph.i ], [ %.01416.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.p = getelementptr inbounds i8, ptr %.017.i, i64 -32
  %i.q = getelementptr inbounds i8, ptr %.01416.i, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.p, ptr noundef nonnull align 1 dereferenceable(32) %i.q, i64 32, i1 false)
  %i.r = getelementptr inbounds i8, ptr %.017.i, i64 -64
  %i.s = getelementptr inbounds i8, ptr %.01416.i, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.r, ptr noundef nonnull align 1 dereferenceable(32) %i.s, i64 32, i1 false)
  %i.t = getelementptr inbounds i8, ptr %.017.i, i64 -96
  %i.u = getelementptr inbounds i8, ptr %.01416.i, i64 -96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.t, ptr noundef nonnull align 1 dereferenceable(32) %i.u, i64 32, i1 false)
  %i.v = getelementptr inbounds i8, ptr %.017.i, i64 -128 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.01416.i, i64 -128 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.v, ptr noundef nonnull align 1 dereferenceable(32) %i.w, i64 32, i1 false)
  %.not.i.3 = icmp eq ptr %i.w, %i.d
  br i1 %.not.i.3, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit, label %.lr.ph.i, !llvm.loop !535

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %i.x = add nsw i32 %i.c, -1                     ; 3 uses
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !13
  %i.ab = zext i8 %i.aa to i64
  %i.ac = load ptr, ptr %0, align 8, !tbaa !95
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.y
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ad, ptr noundef nonnull align 1 dereferenceable(32) %i.af, i64 32, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %i.ah = load i8, ptr %i.ag, align 2, !tbaa !13
  %i.ai = zext i8 %i.ah to i32                    ; 2 uses
  %i.aj = sub nsw i32 %i.ai, %i.x
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.ak ; 2 uses
  %.idx.i46 = shl nuw nsw i64 %i.y, 5
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i46
  %.not13.i = icmp eq i32 %i.x, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit, label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit, %.lr.ph.i48
  %.015.i = phi ptr [ %i.ap, %.lr.ph.i48 ], [ %i.d, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit ] ; 2 uses
  %.01214.i = phi ptr [ %i.ao, %.lr.ph.i48 ], [ %i.am, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.015.i, ptr noundef nonnull align 1 dereferenceable(32) %.01214.i, i64 32, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.01214.i, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.015.i, i64 32
  %.not.i49 = icmp eq ptr %i.ao, %i.an
  br i1 %.not.i49, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit, label %.lr.ph.i48, !llvm.loop !527

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit: ; preds = %.lr.ph.i48
  %.pre = load i8, ptr %i.ag, align 2, !tbaa !13
  %.pre62 = zext i8 %.pre to i32
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit
  %.pre-phi = phi i32 [ %.pre62, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit ], [ %i.ai, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit ]
  %i.aq = load ptr, ptr %0, align 8, !tbaa !95
  %i.ar = load i8, ptr %i.z, align 8, !tbaa !13
  %i.as = zext i8 %i.ar to i64
  %i.at = sub nsw i32 %.pre-phi, %i.c
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %i.as
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.aw, ptr noundef nonnull align 1 dereferenceable(32) %i.ax, i64 32, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !13
  %.not.i50 = icmp eq i8 %i.az, 0
  br i1 %.not.i50, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit
  %i.ba = load i8, ptr %i.a, align 1, !tbaa !13   ; 5 uses
  %i.bb = add i8 %i.ba, 1                         ; 2 uses
  %.not5152 = icmp eq i8 %i.bb, 0
  br i1 %.not5152, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 6 uses
  %i.bd = zext i8 %i.bb to i64                    ; 2 uses
  %i.be = and i8 %i.ba, 1
  %lcmp.mod66.not.not = icmp eq i8 %i.be, 0
  br i1 %lcmp.mod66.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.bf = add i8 %i.ba, %1                        ; 2 uses
  %i.bg = zext i8 %i.ba to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !95 ; 3 uses
  %i.bj = zext i8 %i.bf to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bj
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !95
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i8 %i.bf, ptr %i.bl, align 1, !tbaa !13
  store ptr %2, ptr %i.bi, align 8, !tbaa !95
  %indvars.iv.next.prol = add nsw i64 %i.bd, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.bd, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.bm = icmp eq i8 %i.ba, 0
  br i1 %i.bm, label %.preheader, label %.lr.ph.new

.preheader:                                       ; preds = %.prol.loopexit, %.lr.ph.new, %bb.b
  %.not54 = icmp eq i8 %1, 0
  br i1 %.not54, label %.loopexit, label %.lr.ph56

.lr.ph56:                                         ; preds = %.preheader
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 3 uses
  %i.bp = add i8 %1, 1                            ; 2 uses
  %umax = tail call i8 @llvm.umax.i8(i8 %i.bp, i8 2)
  %wide.trip.count = zext i8 %umax to i64
  %i.bq = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter68 = and i64 %i.bq, 1
  %i.br = icmp ult i8 %i.bp, 3
  br i1 %i.br, label %.epil.preheader, label %.lr.ph56.new

.lr.ph56.new:                                     ; preds = %.lr.ph56
  %unroll_iter = and i64 %i.bq, -2
  %invariant.op = sub i8 1, %1
  br label %bb.c

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.bs = trunc nuw i64 %indvars.iv to i8
  %i.bt = add i8 %i.bs, -1                        ; 2 uses
  %i.bu = add i8 %i.bt, %1                        ; 2 uses
  %i.bv = zext i8 %i.bt to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !95 ; 3 uses
  %i.by = zext i8 %i.bu to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.by
  store ptr %i.bx, ptr %i.bz, align 8, !tbaa !95
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i8 %i.bu, ptr %i.ca, align 1, !tbaa !13
  store ptr %2, ptr %i.bx, align 8, !tbaa !95
  %i.cb = trunc i64 %indvars.iv to i8
  %i.cc = add i8 %i.cb, -2                        ; 2 uses
  %i.cd = add i8 %i.cc, %1                        ; 2 uses
  %i.ce = zext i8 %i.cc to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !95 ; 3 uses
  %i.ch = zext i8 %i.cd to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ch
  store ptr %i.cg, ptr %i.ci, align 8, !tbaa !95
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i8 %i.cd, ptr %i.cj, align 1, !tbaa !13
  store ptr %2, ptr %i.cg, align 8, !tbaa !95
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.ck = and i64 %indvars.iv.next.1, 255
  %.not51.1 = icmp eq i64 %i.ck, 0
  br i1 %.not51.1, label %.preheader, label %.lr.ph.new, !llvm.loop !536

bb.c:                                             ; preds = %bb.c, %.lr.ph56.new
  %indvars.iv58 = phi i64 [ 1, %.lr.ph56.new ], [ %indvars.iv.next59.1, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph56.new ], [ %niter.next.1, %bb.c ]
  %i.cl = add nsw i64 %indvars.iv58, -1           ; 2 uses
  %i.cm = load i8, ptr %i.ag, align 2, !tbaa !13
  %i.cn = trunc nuw i64 %indvars.iv58 to i8
  %i.co = sub i8 %i.cn, %1
  %i.cp = add i8 %i.co, %i.cm
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !95 ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.cl
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !95
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cv = trunc nuw i64 %i.cl to i8
  store i8 %i.cv, ptr %i.cu, align 1, !tbaa !13
  store ptr %2, ptr %i.cs, align 8, !tbaa !95
  %i.cw = load i8, ptr %i.ag, align 2, !tbaa !13
  %i.cx = trunc i64 %indvars.iv58 to i8
  %.reass = add i8 %i.cx, %invariant.op
  %i.cy = add i8 %.reass, %i.cw
  %i.cz = zext i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !95 ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv58
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !95
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.de = trunc nuw i64 %indvars.iv58 to i8
  store i8 %i.de, ptr %i.dd, align 1, !tbaa !13
  store ptr %2, ptr %i.db, align 8, !tbaa !95
  %indvars.iv.next59.1 = add nuw nsw i64 %indvars.iv58, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !537

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod69.not = icmp eq i64 %xtraiter68, 0
  br i1 %lcmp.mod69.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph56
  %indvars.iv58.epil.init = phi i64 [ 1, %.lr.ph56 ], [ %indvars.iv.next59.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod70 = trunc i64 %i.bq to i1
  tail call void @llvm.assume(i1 %lcmp.mod70)
  %i.df = add nsw i64 %indvars.iv58.epil.init, -1 ; 2 uses
  %i.dg = load i8, ptr %i.ag, align 2, !tbaa !13
  %i.dh = trunc nuw i64 %indvars.iv58.epil.init to i8
  %i.di = sub i8 %i.dh, %1
  %i.dj = add i8 %i.di, %i.dg
  %i.dk = zext i8 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !95 ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.df
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !95
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dp = trunc nuw i64 %i.df to i8
  store i8 %i.dp, ptr %i.do, align 1, !tbaa !13
  store ptr %2, ptr %i.dm, align 8, !tbaa !95
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit
  %i.dq = load i8, ptr %i.ag, align 2, !tbaa !13
  %i.dr = sub i8 %i.dq, %1
  store i8 %i.dr, ptr %i.ag, align 2, !tbaa !13
  %i.ds = load i8, ptr %i.a, align 1, !tbaa !13
  %i.dt = add i8 %i.ds, %1
  store i8 %i.dt, ptr %i.a, align 1, !tbaa !13
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5splitEiPSG_PSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 0, label %bb.b
    i32 7, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.b = load i8, ptr %i.a, align 1, !tbaa !13
  %i.c = add i8 %i.b, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = load i8, ptr %i.d, align 1, !tbaa !13
  %i.f = lshr i8 %i.e, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i8 [ %i.c, %bb.b ], [ %i.f, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %.sink, ptr %i.g, align 1, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.k = sub i8 %i.i, %.sink                      ; 3 uses
  store i8 %i.k, ptr %i.h, align 1, !tbaa !13
  %i.l = load i8, ptr %i.j, align 1, !tbaa !13    ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = zext i8 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.n ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.m, 5               ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i
  %.not13.i = icmp eq i8 %i.l, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.s = add nsw i64 %.idx.i, -32                 ; 2 uses
  %i.t = lshr exact i64 %i.s, 5
  %i.u = add nuw nsw i64 %i.t, 1
  %xtraiter = and i64 %i.u, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %.015.i.prol = phi ptr [ %i.w, %.lr.ph.i.prol ], [ %i.r, %.lr.ph.preheader.i ] ; 2 uses
  %.01214.i.prol = phi ptr [ %i.v, %.lr.ph.i.prol ], [ %i.p, %.lr.ph.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.015.i.prol, ptr noundef nonnull align 1 dereferenceable(32) %.01214.i.prol, i64 32, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.01214.i.prol, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.015.i.prol, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !538

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.015.i.unr = phi ptr [ %i.r, %.lr.ph.preheader.i ], [ %i.w, %.lr.ph.i.prol ]
  %.01214.i.unr = phi ptr [ %i.p, %.lr.ph.preheader.i ], [ %i.v, %.lr.ph.i.prol ]
  %i.x = icmp ult i64 %i.s, 96
  br i1 %i.x, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.015.i = phi ptr [ %i.af, %.lr.ph.i ], [ %.015.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.01214.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.01214.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.015.i, ptr noundef nonnull align 1 dereferenceable(32) %.01214.i, i64 32, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.01214.i, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %.015.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.z, ptr noundef nonnull align 1 dereferenceable(32) %i.y, i64 32, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.01214.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.015.i, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ab, ptr noundef nonnull align 1 dereferenceable(32) %i.aa, i64 32, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.01214.i, i64 96
  %i.ad = getelementptr inbounds nuw i8, ptr %.015.i, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ad, ptr noundef nonnull align 1 dereferenceable(32) %i.ac, i64 32, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.01214.i, i64 128 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.015.i, i64 128
  %.not.i.3 = icmp eq ptr %i.ae, %i.q
  br i1 %.not.i.3, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit, label %.lr.ph.i, !llvm.loop !527

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit: ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.pre = load i8, ptr %i.h, align 1, !tbaa !13
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit, %bb.d
  %i.ag = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit ], [ %i.k, %bb.d ]
  %i.ah = add i8 %i.ag, -1                        ; 2 uses
  store i8 %i.ah, ptr %i.h, align 1, !tbaa !13
  %i.ai = load ptr, ptr %0, align 8, !tbaa !95    ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !13  ; 5 uses
  %i.al = zext i8 %i.ah to i64
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.al
  %i.an = zext i8 %i.ak to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 10 ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !13  ; 3 uses
  %i.aq = icmp ult i8 %i.ak, %i.ap
  %i.ar = zext i8 %i.ak to i64                    ; 2 uses
  br i1 %i.aq, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.at = getelementptr [32 x i8], ptr %i.as, i64 %i.ar ; 2 uses
  %narrow.i = sub nuw i8 %i.ap, %i.ak
  %i.au = zext i8 %narrow.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.au, 5
  %i.av = getelementptr i8, ptr %i.at, i64 32
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %i.at, i64 %.idx.i.i, i1 false)
  %.pre.i = load i8, ptr %i.ao, align 1, !tbaa !13
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit.i: ; preds = %.lr.ph.preheader.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit
  %i.aw = phi i8 [ %.pre.i, %.lr.ph.preheader.i.i ], [ %i.ap, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %i.ar
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i64 32, i1 false)
  %i.az = add i8 %i.aw, 1                         ; 3 uses
  store i8 %i.az, ptr %i.ao, align 1, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ai, i64 11
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !13
  %.not.i18.i = icmp eq i8 %i.bb, 0
  br i1 %.not.i18.i, label %bb.e, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIiS8_EEEEEvhPSE_DpOT_.exit

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit.i
  %i.bc = zext i8 %i.az to i32
  %i.bd = add nuw nsw i32 %i.an, 1                ; 2 uses
  %i.be = icmp samesign ult i32 %i.bd, %i.bc
  br i1 %i.be, label %.lr.ph.i27, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIiS8_EEEEEvhPSE_DpOT_.exit

.lr.ph.i27:                                       ; preds = %bb.e
  %4 = getelementptr inbounds nuw i8, ptr %i.ai, i64 240 ; 10 uses
  %5 = zext i8 %i.az to i64                       ; 4 uses
  %6 = zext nneg i32 %i.bd to i64
  %7 = zext i8 %i.ak to i64                       ; 2 uses
  %8 = xor i64 %7, -1
  %9 = add nsw i64 %8, %5
  %10 = add nsw i64 %5, -2
  %11 = sub nsw i64 %10, %7
  %xtraiter36 = and i64 %9, 3                     ; 2 uses
  %lcmp.mod37.not = icmp eq i64 %xtraiter36, 0
  br i1 %lcmp.mod37.not, label %.prol.loopexit, label %.lr.ph.i27.a

.lr.ph.i27.a:                                     ; preds = %.lr.ph.i27, %.lr.ph.i27.a
  %indvars.iv.prol = phi i64 [ %12, %.lr.ph.i27.a ], [ %5, %.lr.ph.i27 ] ; 3 uses
  %prol.iter38 = phi i64 [ %prol.iter38.next, %.lr.ph.i27.a ], [ 0, %.lr.ph.i27 ]
  %12 = add nsw i64 %indvars.iv.prol, -1          ; 3 uses
  %13 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !95     ; 2 uses
  %15 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.prol
  store ptr %14, ptr %15, align 8, !tbaa !95
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 8
  %16 = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %16, ptr %i.bf, align 1, !tbaa !13
  %prol.iter38.next = add i64 %prol.iter38, 1     ; 2 uses
  %prol.iter38.cmp.not = icmp eq i64 %prol.iter38.next, %xtraiter36
  br i1 %prol.iter38.cmp.not, label %.prol.loopexit, label %.lr.ph.i27.a, !llvm.loop !539

.prol.loopexit:                                   ; preds = %.lr.ph.i27.a, %.lr.ph.i27
  %indvars.iv.unr = phi i64 [ %5, %.lr.ph.i27 ], [ %12, %.lr.ph.i27.a ]
  %17 = icmp ult i64 %11, 3
  br i1 %17, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIiS8_EEEEEvhPSE_DpOT_.exit, label %bb.f

bb.f:                                             ; preds = %.prol.loopexit, %bb.f
  %indvars.iv = phi i64 [ %32, %bb.f ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %18 = add nsw i64 %indvars.iv, -1               ; 3 uses
  %19 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !95     ; 2 uses
  %21 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  store ptr %20, ptr %21, align 8, !tbaa !95
  %22 = getelementptr inbounds nuw i8, ptr %20, i64 8
  %23 = trunc nuw i64 %indvars.iv to i8
  store i8 %23, ptr %22, align 1, !tbaa !13
  %24 = add nsw i64 %indvars.iv, -2               ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !95 ; 2 uses
  %25 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %18
  store ptr %i.bh, ptr %25, align 8, !tbaa !95
  %26 = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %27 = trunc nuw i64 %18 to i8
  store i8 %27, ptr %26, align 1, !tbaa !13
  %28 = add nsw i64 %indvars.iv, -3               ; 3 uses
  %29 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !95     ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %24
  store ptr %30, ptr %i.bi, align 8, !tbaa !95
  %i.bj = getelementptr inbounds nuw i8, ptr %30, i64 8
  %31 = trunc nuw i64 %24 to i8
  store i8 %31, ptr %i.bj, align 1, !tbaa !13
  %32 = add nsw i64 %indvars.iv, -4               ; 3 uses
  %33 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !95     ; 2 uses
  %35 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %28
  store ptr %34, ptr %35, align 8, !tbaa !95
  %36 = getelementptr inbounds nuw i8, ptr %34, i64 8
  %37 = trunc nuw i64 %28 to i8
  store i8 %37, ptr %36, align 1, !tbaa !13
  %.wide.3 = icmp ugt i64 %32, %6
  br i1 %.wide.3, label %bb.f, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIiS8_EEEEEvhPSE_DpOT_.exit, !llvm.loop !540

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIiS8_EEEEEvhPSE_DpOT_.exit: ; preds = %.prol.loopexit, %bb.f, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit.i, %bb.e
  %i.bk = load ptr, ptr %0, align 8, !tbaa !95
  %i.bl = load i8, ptr %i.aj, align 8, !tbaa !13
  %i.bm = add i8 %i.bl, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 240
  %i.bo = zext i8 %i.bm to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bo
  store ptr %2, ptr %i.bp, align 8, !tbaa !95
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !13
  %.not.i28 = icmp eq i8 %i.br, 0
  br i1 %.not.i28, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIiS8_EEEEEvhPSE_DpOT_.exit
  %i.bs = load i8, ptr %i.h, align 2, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 240
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.h
  %.0.in30 = phi i8 [ %i.bs, %bb.g ], [ %.0, %bb.h ]
  %.02529 = phi i8 [ 0, %bb.g ], [ %i.cb, %bb.h ] ; 3 uses
  %.0 = add i8 %.0.in30, 1                        ; 2 uses
  %i.bv = zext i8 %.0 to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !95 ; 3 uses
  %i.by = zext i8 %.02529 to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.by
  store ptr %i.bx, ptr %i.bz, align 8, !tbaa !95
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i8 %.02529, ptr %i.ca, align 1, !tbaa !13
  store ptr %2, ptr %i.bx, align 8, !tbaa !95
  %i.cb = add i8 %.02529, 1                       ; 2 uses
  %i.cc = load i8, ptr %i.j, align 1, !tbaa !13
  %.not = icmp ugt i8 %i.cb, %i.cc
  br i1 %.not, label %.loopexit, label %bb.h, !llvm.loop !541

.loopexit:                                        ; preds = %bb.h, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIiS8_EEEEEvhPSE_DpOT_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal7cleanup21arena_destruct_objectIN4absl12lts_202505129btree_mapIiNS1_12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EEEEEEvPv(ptr noundef %0) #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !100
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !89
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16clear_and_deleteEPSG_PSE_(ptr noundef %i.d, ptr noundef nonnull %i.e)
          to label %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #37
  unreachable

_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE18insert_hint_uniqueIiJSD_EEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbESN_RKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.53") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %2, i32 %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #33 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !100
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !95   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.g = load i8, ptr %i.f, align 1, !tbaa !13
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = icmp eq ptr %2, %i.e
  %i.j = icmp eq i32 %3, %i.h
  %i.k = select i1 %i.i, i1 %i.j, i1 false
  br i1 %i.k, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sext i32 %3 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.l
  %i.o = load i32, ptr %4, align 4, !tbaa !3      ; 4 uses
  %i.p = load i32, ptr %i.n, align 4, !tbaa !3    ; 2 uses
  %i.q = icmp slt i32 %i.o, %i.p
  br i1 %i.q, label %.critedge, label %bb.f

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.r = load ptr, ptr %1, align 8, !tbaa !89
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !95
  %i.t = icmp eq ptr %2, %i.s
  %i.u = icmp eq i32 %3, 0
  %i.v = select i1 %i.t, i1 %i.u, i1 false
  br i1 %i.v, label %.critedge2, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.critedge
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.x = load i8, ptr %i.w, align 1, !tbaa !13
  %.not.i.i7.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i7.i, label %.thread.i.i13.i, label %bb.d

bb.d:                                             ; preds = %.preheader.preheader
  %.not.not.i.i.i = icmp sgt i32 %3, 0
  br i1 %.not.not.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmmEv.exit.i, label %.lr.ph.i.i.i10.i

.lr.ph.i.i.i10.i:                                 ; preds = %bb.d, %bb.e
  %.01621.i.i.i.i = phi ptr [ %i.y, %bb.e ], [ %2, %bb.d ] ; 2 uses
  %i.y = load ptr, ptr %.01621.i.i.i.i, align 8, !tbaa !95 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 11
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !13
  %.not18.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not18.i.i.i.i, label %bb.e, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmmEv.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i10.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.01621.i.i.i.i, i64 8
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !13  ; 2 uses
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i.i.i10.i, label %.critedge.i.i.i11.i, !llvm.loop !542

.thread.i.i13.i:                                  ; preds = %.preheader.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.af = and i32 %3, 255
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ag
  %.11723.i.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !95 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.11723.i.i.i.i, i64 11
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !13
  %.not.i24.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i24.i.i.i.i, label %.lr.ph26.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph26.i.i.i.i:                                 ; preds = %.thread.i.i13.i, %.lr.ph26.i.i.i.i
  %.11725.i.i.i.i = phi ptr [ %.117.i.i.i.i, %.lr.ph26.i.i.i.i ], [ %.11723.i.i.i.i, %.thread.i.i13.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.11725.i.i.i.i, i64 10
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %.11725.i.i.i.i, i64 240
  %i.an = zext i8 %i.al to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an
  %.117.i.i.i.i = load ptr, ptr %i.ao, align 8, !tbaa !95 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.117.i.i.i.i, i64 11
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !13
  %.not.i.i.i.i14.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i14.i, label %.lr.ph26.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !525

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph26.i.i.i.i, %.thread.i.i13.i
  %.117.lcssa.i.i.i.i = phi ptr [ %.11723.i.i.i.i, %.thread.i.i13.i ], [ %.117.i.i.i.i, %.lr.ph26.i.i.i.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i.i, i64 10
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !13
  br label %.critedge.i.i.i11.i

.critedge.i.i.i11.i:                              ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.lcssa8.sink.i.i.i = phi i8 [ %i.as, %._crit_edge.i.i.i.i ], [ %i.ac, %bb.e ]
  %.2.i.i.i12.i = phi ptr [ %.117.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.y, %bb.e ]
  %i.at = zext i8 %.lcssa8.sink.i.i.i to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmmEv.exit.i

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmmEv.exit.i: ; preds = %.lr.ph.i.i.i10.i, %.critedge.i.i.i11.i, %bb.d
  %.sroa.087.1 = phi ptr [ %.2.i.i.i12.i, %.critedge.i.i.i11.i ], [ %2, %bb.d ], [ %2, %.lr.ph.i.i.i10.i ]
  %.sroa.6.0.in = phi i32 [ %i.at, %.critedge.i.i.i11.i ], [ %3, %bb.d ], [ %3, %.lr.ph.i.i.i10.i ]
  %i.au = sext i32 %.sroa.6.0.in to i64
  %i.av = getelementptr [32 x i8], ptr %.sroa.087.1, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 -16
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.ay = load i32, ptr %4, align 4, !tbaa !3     ; 2 uses
  %i.az = icmp slt i32 %i.ax, %i.ay
  br i1 %i.az, label %.critedge2, label %bb.l

.critedge2:                                       ; preds = %.critedge, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmmEv.exit.i
  %i.ba = tail call { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16internal_emplaceIJSD_EEENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESN_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %2, i32 %3, ptr noundef nonnull align 8 dereferenceable(32) %5) ; 2 uses
  %.fca.0.extract11 = extractvalue { ptr, i32 } %i.ba, 0
  %.fca.1.extract12 = extractvalue { ptr, i32 } %i.ba, 1
  br label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13insert_uniqueIiJSD_EEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbERKT_DpOT0_.exit

bb.f:                                             ; preds = %bb.c
  %i.bb = icmp slt i32 %i.p, %i.o
  br i1 %i.bb, label %bb.g, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13insert_uniqueIiJSD_EEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbERKT_DpOT0_.exit

bb.g:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !13
  %.not.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = add nsw i32 %3, 1                       ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !13
  %i.bh = zext i8 %i.bg to i32
  %i.bi = icmp eq i32 %i.be, %i.bh
  br i1 %i.bi, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.h, %bb.i
  %.01521.i.i.i = phi ptr [ %i.bj, %bb.i ], [ %2, %bb.h ] ; 2 uses
  %i.bj = load ptr, ptr %.01521.i.i.i, align 8, !tbaa !95 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 11
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !13
  %.not17.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not17.i.i.i, label %bb.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.01521.i.i.i, i64 8
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !13  ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 10
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !13
  %i.bq = icmp eq i8 %i.bn, %i.bp
  br i1 %i.bq, label %.lr.ph.i.i.i, label %.critedge.loopexit23.i.i.i, !llvm.loop !214

.thread.i.i:                                      ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.bs = add i32 %3, 1
  %i.bt = and i32 %i.bs, 255
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bu
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.thread.i.i
  %.116.in.i.i.i = phi ptr [ %i.bv, %.thread.i.i ], [ %i.by, %bb.j ]
  %.116.i.i.i = load ptr, ptr %.116.in.i.i.i, align 8, !tbaa !95 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 11
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !13
  %.not.i.i.i.i = icmp eq i8 %i.bx, 0
  %i.by = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 240
  br i1 %.not.i.i.i.i, label %bb.j, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit, !llvm.loop !215

.critedge.loopexit23.i.i.i:                       ; preds = %bb.i
  %i.bz = zext i8 %i.bn to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.j, %.critedge.loopexit23.i.i.i, %bb.h
  %.sroa.073.0 = phi ptr [ %.116.i.i.i, %bb.j ], [ %2, %bb.h ], [ %i.bj, %.critedge.loopexit23.i.i.i ], [ %2, %.lr.ph.i.i.i ] ; 3 uses
  %.sroa.13.0 = phi i32 [ 0, %bb.j ], [ %i.be, %bb.h ], [ %i.bz, %.critedge.loopexit23.i.i.i ], [ %i.be, %.lr.ph.i.i.i ] ; 3 uses
  %i.ca = icmp eq ptr %.sroa.073.0, %i.e
  %i.cb = icmp eq i32 %.sroa.13.0, %i.h
  %i.cc = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %i.cc, label %.critedge4, label %bb.k

bb.k:                                             ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit
  %i.cd = sext i32 %.sroa.13.0 to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.073.0, i64 16
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %i.cd
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3
  %i.ch = icmp slt i32 %i.o, %i.cg
  br i1 %i.ch, label %.critedge4, label %bb.l

.critedge4:                                       ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit, %bb.k
  %i.ci = tail call { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16internal_emplaceIJSD_EEENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESN_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %.sroa.073.0, i32 %.sroa.13.0, ptr noundef nonnull align 8 dereferenceable(32) %5) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ci, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ci, 1
  br label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13insert_uniqueIiJSD_EEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbERKT_DpOT0_.exit

.thread:                                          ; preds = %bb.a
  %i.cj = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #38, !noalias !543 ; 5 uses
  store ptr %i.cj, ptr %i.cj, align 8, !tbaa !95, !noalias !543
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.ck, align 8, !tbaa !13, !noalias !543
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !95, !noalias !543
  store ptr %i.cj, ptr %1, align 8, !tbaa !95, !noalias !543
  %.pre = load i32, ptr %4, align 4, !noalias !543
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmmEv.exit.i, %.thread
  %i.cm = phi i32 [ %.pre, %.thread ], [ %i.ay, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmmEv.exit.i ], [ %i.o, %bb.k ] ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %bb.l
  %.sroa.0.0.in.i.i = phi ptr [ %1, %bb.l ], [ %i.cz, %bb.o ]
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !tbaa !95, !noalias !543 ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 10
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !13, !noalias !543 ; 2 uses
  %i.cp = zext i8 %i.co to i64                    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 16
  %.not.i.i.i.i55 = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i.i55, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISA_iE15checked_compareE.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.m, %bb.n
  %.07.i.i.i.i.i = phi i64 [ %i.cu, %bb.n ], [ 0, %bb.m ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.cq, i64 %.07.i.i.i.i.i
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3, !noalias !543
  %i.ct = icmp slt i32 %i.cs, %i.cm
  br i1 %i.ct, label %bb.n, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISA_iE15checked_compareE.exit.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cu = add nuw nsw i64 %.07.i.i.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.cu, %i.cp
  br i1 %exitcond.not.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISA_iE15checked_compareE.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !354

_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISA_iE15checked_compareE.exit.i.i: ; preds = %bb.n, %.lr.ph.i.i.i.i.i, %bb.m
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.m ], [ %i.cp, %bb.n ], [ %.07.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 11
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !13, !noalias !543
  %.not.i.i56 = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i56, label %bb.o, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EELb0EEERKT_.exit.i

bb.o:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISA_iE15checked_compareE.exit.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 240
  %i.cy = and i64 %.0.lcssa.i.i.i.i.i, 255
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cy
  br label %bb.m

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EELb0EEERKT_.exit.i: ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISA_iE15checked_compareE.exit.i.i
  %i.da = trunc i64 %.0.lcssa.i.i.i.i.i to i32    ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EELb0EEERKT_.exit.i
  %.sroa.7.0.i.i = phi i32 [ %i.da, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EELb0EEERKT_.exit.i ], [ %i.dh, %bb.q ] ; 3 uses
  %.sroa.0.0.i16.i = phi ptr [ %.sroa.0.0.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EELb0EEERKT_.exit.i ], [ %i.di, %bb.q ] ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16.i, i64 10
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !13, !noalias !543
  %i.dd = zext i8 %i.dc to i32
  %i.de = icmp eq i32 %.sroa.7.0.i.i, %i.dd
  br i1 %i.de, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16.i, i64 8
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !13, !noalias !543
  %i.dh = zext i8 %i.dg to i32
  %i.di = load ptr, ptr %.sroa.0.0.i16.i, align 8, !tbaa !95, !noalias !543 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 11
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !13, !noalias !543
  %.not.i19.i = icmp eq i8 %i.dk, 0
  br i1 %.not.i19.i, label %bb.p, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEEET_SO_.exit.thread.i, !llvm.loop !355

bb.r:                                             ; preds = %bb.p
  %i.dl = sext i32 %.sroa.7.0.i.i to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16.i, i64 16
  %i.dn = getelementptr inbounds nuw [32 x i8], ptr %i.dm, i64 %i.dl
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !3, !noalias !543
  %i.dp = icmp slt i32 %i.cm, %i.do
  br i1 %i.dp, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEEET_SO_.exit.thread.i, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13insert_uniqueIiJSD_EEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbERKT_DpOT0_.exit

_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEEET_SO_.exit.thread.i: ; preds = %bb.q, %bb.r
  %i.dq = tail call { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16internal_emplaceIJSD_EEENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESN_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %.sroa.0.0.i.i, i32 %i.da, ptr noundef nonnull align 8 dereferenceable(32) %5), !noalias !543 ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.dq, 0
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.dq, 1
  br label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13insert_uniqueIiJSD_EEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbERKT_DpOT0_.exit

_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13insert_uniqueIiJSD_EEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbERKT_DpOT0_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEEET_SO_.exit.thread.i, %bb.r, %bb.f, %.critedge4, %.critedge2
  %.sroa.0.0.i16.lcssa.sink.i.sink = phi ptr [ %2, %bb.f ], [ %.fca.0.extract11, %.critedge2 ], [ %.fca.0.extract, %.critedge4 ], [ %.fca.0.extract.i, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEEET_SO_.exit.thread.i ], [ %.sroa.0.0.i16.i, %bb.r ]
  %.sroa.7.0.i.lcssa.sink.i.sink = phi i32 [ %3, %bb.f ], [ %.fca.1.extract12, %.critedge2 ], [ %.fca.1.extract, %.critedge4 ], [ %.fca.1.extract.i, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEEET_SO_.exit.thread.i ], [ %.sroa.7.0.i.i, %bb.r ]
  %.sink.i.sink = phi i8 [ 0, %bb.f ], [ 1, %.critedge2 ], [ 1, %.critedge4 ], [ 1, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEEET_SO_.exit.thread.i ], [ 0, %bb.r ]
  store ptr %.sroa.0.0.i16.lcssa.sink.i.sink, ptr %0, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.7.0.i.lcssa.sink.i.sink, ptr %.sroa.6.0..sroa_idx.i, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink.i.sink, ptr %i.dr, align 8, !tbaa !546
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11erase_rangeENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESM_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.150") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %2, i32 %3, ptr %4, i32 %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.absl::lts_20250512::container_internal::btree_iterator", align 8 ; 4 uses
  store ptr %4, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 %5, ptr %i.a, align 8
  %i.b = call noundef i64 @_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmiENS2_IKSH_RKSE_PSM_EE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr %2, i32 %3) ; 9 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !100  ; 4 uses
  %i.f = icmp eq i64 %i.b, %i.e
  br i1 %i.f, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5clearEv.exit, label %bb.c

_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5clearEv.exit: ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !89
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16clear_and_deleteEPSG_PSE_(ptr noundef %i.g, ptr noundef nonnull %i.h)
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE9EmptyNodeEvE10empty_node, ptr %i.h, align 8, !tbaa !95
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE9EmptyNodeEvE10empty_node, ptr %1, align 8, !tbaa !95
  store i64 0, ptr %i.d, align 8, !tbaa !100
  br label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %6, align 8, !tbaa !317
  %i.j = icmp eq ptr %2, %i.i
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = zext i32 %3 to i64
  %i.l = load i32, ptr %i.a, align 8, !tbaa !321
  %i.m = sub nsw i32 %i.l, %3                     ; 2 uses
  %i.n = trunc i32 %i.m to i8                     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !13    ; 4 uses
  %i.r = and i32 %3, 255                          ; 2 uses
  %i.s = and i32 %i.m, 255                        ; 2 uses
  %i.t = add nuw nsw i32 %i.s, %i.r               ; 2 uses
  %i.u = zext i8 %i.q to i32                      ; 2 uses
  %i.v = and i32 %i.t, 255                        ; 3 uses
  %i.w = sub nsw i32 %i.u, %i.v
  %i.x = sext i32 %i.w to i64
  %i.y = zext nneg i32 %i.v to i64
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.y ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.x, 5
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx.i.i
  %.not13.i.i = icmp eq i32 %i.v, %i.u
  br i1 %.not13.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.d
  %i.ac = zext nneg i32 %i.r to i64
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ac
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.015.i.i = phi ptr [ %i.af, %.lr.ph.i.i ], [ %i.ad, %.lr.ph.preheader.i.i ] ; 2 uses
  %.01214.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %i.aa, %.lr.ph.preheader.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.015.i.i, ptr noundef nonnull align 1 dereferenceable(32) %.01214.i.i, i64 32, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 32
  %.not.i.i = icmp eq ptr %i.ae, %i.ab
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.i, label %.lr.ph.i.i, !llvm.loop !527

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.i: ; preds = %.lr.ph.i.i, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !13
  %.not.i31.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i31.i, label %.preheader.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit

.preheader.i:                                     ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.i
  %.not38.i = icmp eq i8 %i.n, 0
  br i1 %.not38.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ai = add nuw nsw i64 %i.k, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 240
  %wide.trip.count.i = zext nneg i32 %i.s to i64
  br label %bb.e

._crit_edge.i:                                    ; preds = %bb.e, %.preheader.i
  %i.ak = trunc i32 %i.t to i8
  %.033.i = add i8 %i.ak, 1                       ; 2 uses
  %.not34.i = icmp ugt i8 %.033.i, %i.q
  br i1 %.not34.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit, label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %._crit_edge.i
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %i.am = add nuw nsw i64 %i.ai, %indvars.iv.i
  %i.an = and i64 %i.am, 255
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !95
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16clear_and_deleteEPSG_PSE_(ptr noundef %i.ap, ptr noundef nonnull %i.o)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !548

bb.f:                                             ; preds = %bb.f, %.lr.ph37.i
  %.035.i = phi i8 [ %.033.i, %.lr.ph37.i ], [ %.0.i, %bb.f ] ; 3 uses
  %i.aq = sub i8 %.035.i, %i.n                    ; 2 uses
  %i.ar = zext i8 %.035.i to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !95 ; 2 uses
  %i.au = zext i8 %i.aq to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.au
  store ptr %i.at, ptr %i.av, align 8, !tbaa !95
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i8 %i.aq, ptr %i.aw, align 1, !tbaa !13
  %.0.i = add i8 %.035.i, 1                       ; 2 uses
  %.not.i = icmp ugt i8 %.0.i, %i.q
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit, label %bb.f, !llvm.loop !549

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit: ; preds = %bb.f, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.i, %._crit_edge.i
  %i.ax = sub i8 %i.q, %i.n
  store i8 %i.ax, ptr %i.p, align 1, !tbaa !13
  %i.ay = load i64, ptr %i.d, align 8, !tbaa !100
  %i.az = sub i64 %i.ay, %i.b
  store i64 %i.az, ptr %i.d, align 8, !tbaa !100
  %i.ba = call { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %2, i32 %3) ; 2 uses
  %.fca.0.extract17 = extractvalue { ptr, i32 } %i.ba, 0
  %.fca.1.extract18 = extractvalue { ptr, i32 } %i.ba, 1
  br label %._crit_edge

bb.g:                                             ; preds = %bb.c
  %i.bb = sub i64 %i.e, %i.b                      ; 2 uses
  %.not95 = icmp ult i64 %i.e, %i.b
  br i1 %.not95, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.m
  %i.bd = phi i64 [ %i.e, %.lr.ph ], [ %i.cy, %bb.m ]
  %.sroa.13.086 = phi i32 [ %3, %.lr.ph ], [ %.sroa.13.1, %bb.m ] ; 5 uses
  %.sroa.070.085 = phi ptr [ %2, %.lr.ph ], [ %.sroa.070.1, %bb.m ] ; 7 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.070.085, i64 11 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !13
  %.not = icmp eq i8 %i.bf, 0
  br i1 %.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = sub i64 %i.bd, %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.070.085, i64 10 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !13  ; 4 uses
  %i.bj = zext i8 %i.bi to i32                    ; 3 uses
  %i.bk = sub nsw i32 %i.bj, %.sroa.13.086
  %i.bl = sext i32 %i.bk to i64
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.bg, i64 %i.bl) ; 4 uses
  %i.bm = trunc i64 %.sroa.speculated to i8       ; 3 uses
  %i.bn = zext i32 %.sroa.13.086 to i64
  %i.bo = and i32 %.sroa.13.086, 255              ; 2 uses
  %i.bp = trunc i64 %.sroa.speculated to i32
  %i.bq = add i32 %i.bo, %i.bp                    ; 2 uses
  %i.br = and i32 %i.bq, 255                      ; 3 uses
  %i.bs = sub nsw i32 %i.bj, %i.br
  %i.bt = sext i32 %i.bs to i64
  %i.bu = zext nneg i32 %i.br to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.070.085, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %i.bu ; 2 uses
  %.idx.i.i34 = shl nuw nsw i64 %i.bt, 5
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.idx.i.i34
  %.not13.i.i35 = icmp eq i32 %i.br, %i.bj
  br i1 %.not13.i.i35, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit57, label %.lr.ph.preheader.i.i36

.lr.ph.preheader.i.i36:                           ; preds = %bb.i
  %i.by = zext nneg i32 %i.bo to i64
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %i.by
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %.lr.ph.i.i37, %.lr.ph.preheader.i.i36
  %.015.i.i38 = phi ptr [ %i.cb, %.lr.ph.i.i37 ], [ %i.bz, %.lr.ph.preheader.i.i36 ] ; 2 uses
  %.01214.i.i39 = phi ptr [ %i.ca, %.lr.ph.i.i37 ], [ %i.bw, %.lr.ph.preheader.i.i36 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.015.i.i38, ptr noundef nonnull align 1 dereferenceable(32) %.01214.i.i39, i64 32, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %.01214.i.i39, i64 32 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.015.i.i38, i64 32
  %.not.i.i40 = icmp eq ptr %i.ca, %i.bx
  br i1 %.not.i.i40, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.i41, label %.lr.ph.i.i37, !llvm.loop !527

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.i41: ; preds = %.lr.ph.i.i37
  %.pre = load i8, ptr %i.be, align 1, !tbaa !13
  %i.cc = icmp eq i8 %.pre, 0
  br i1 %i.cc, label %.preheader.i43, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit57

.preheader.i43:                                   ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.i41
  %.not38.i44 = icmp eq i8 %i.bm, 0
  br i1 %.not38.i44, label %._crit_edge.i50, label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %.preheader.i43
  %i.cd = add nuw nsw i64 %i.bn, 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.070.085, i64 240
  %wide.trip.count.i46 = and i64 %.sroa.speculated, 255
  br label %bb.j

._crit_edge.i50:                                  ; preds = %bb.j, %.preheader.i43
  %i.cf = trunc i32 %i.bq to i8
  %.033.i51 = add i8 %i.cf, 1                     ; 2 uses
  %.not34.i52 = icmp ugt i8 %.033.i51, %i.bi
  br i1 %.not34.i52, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit57, label %.lr.ph37.i53

.lr.ph37.i53:                                     ; preds = %._crit_edge.i50
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.070.085, i64 240 ; 2 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.j, %.lr.ph.i45
  %indvars.iv.i47 = phi i64 [ 0, %.lr.ph.i45 ], [ %indvars.iv.next.i48, %bb.j ] ; 2 uses
  %i.ch = add nuw nsw i64 %i.cd, %indvars.iv.i47
  %i.ci = and i64 %i.ch, 255
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !95
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16clear_and_deleteEPSG_PSE_(ptr noundef %i.ck, ptr noundef nonnull %i.bc)
  %indvars.iv.next.i48 = add nuw nsw i64 %indvars.iv.i47, 1 ; 2 uses
  %exitcond.not.i49 = icmp eq i64 %indvars.iv.next.i48, %wide.trip.count.i46
  br i1 %exitcond.not.i49, label %._crit_edge.i50, label %bb.j, !llvm.loop !548

bb.k:                                             ; preds = %bb.k, %.lr.ph37.i53
  %.035.i54 = phi i8 [ %.033.i51, %.lr.ph37.i53 ], [ %.0.i55, %bb.k ] ; 3 uses
  %i.cl = sub i8 %.035.i54, %i.bm                 ; 2 uses
  %i.cm = zext i8 %.035.i54 to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !95 ; 2 uses
  %i.cp = zext i8 %i.cl to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cp
  store ptr %i.co, ptr %i.cq, align 8, !tbaa !95
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i8 %i.cl, ptr %i.cr, align 1, !tbaa !13
  %.0.i55 = add i8 %.035.i54, 1                   ; 2 uses
  %.not.i56 = icmp ugt i8 %.0.i55, %i.bi
  br i1 %.not.i56, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit57, label %bb.k, !llvm.loop !549

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit57: ; preds = %bb.k, %bb.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.i41, %._crit_edge.i50
  %i.cs = sub i8 %i.bi, %i.bm
  store i8 %i.cs, ptr %i.bh, align 1, !tbaa !13
  %i.ct = and i64 %.sroa.speculated, 255
  %i.cu = load i64, ptr %i.d, align 8, !tbaa !100
  %i.cv = sub i64 %i.cu, %i.ct
  store i64 %i.cv, ptr %i.d, align 8, !tbaa !100
  %i.cw = call { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %.sroa.070.085, i32 %.sroa.13.086)
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.cx = call { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %.sroa.070.085, i32 %.sroa.13.086)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit57
  %.pn = phi { ptr, i32 } [ %i.cw, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit57 ], [ %i.cx, %bb.l ] ; 2 uses
  %.sroa.13.1 = extractvalue { ptr, i32 } %.pn, 1 ; 2 uses
  %.sroa.070.1 = extractvalue { ptr, i32 } %.pn, 0 ; 2 uses
  %i.cy = load i64, ptr %i.d, align 8, !tbaa !100 ; 2 uses
  %i.cz = icmp ugt i64 %i.cy, %i.bb
  br i1 %i.cz, label %bb.h, label %._crit_edge, !llvm.loop !550

._crit_edge:                                      ; preds = %bb.m, %bb.g, %bb.a, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5clearEv.exit
  %.sink = phi i64 [ 0, %bb.a ], [ %i.b, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit ], [ %i.b, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5clearEv.exit ], [ %i.b, %bb.g ], [ %i.b, %bb.m ]
  %.sroa.070.0.lcssa.sink = phi ptr [ %2, %bb.a ], [ %.fca.0.extract17, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit ], [ @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE9EmptyNodeEvE10empty_node, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5clearEv.exit ], [ %2, %bb.g ], [ %.sroa.070.1, %bb.m ]
  %.sroa.13.0.lcssa.sink = phi i32 [ %3, %bb.a ], [ %.fca.1.extract18, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit ], [ 0, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5clearEv.exit ], [ %3, %bb.g ], [ %.sroa.13.1, %bb.m ]
  store i64 %.sink, ptr %0, align 8, !tbaa !437
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.070.0.lcssa.sink, ptr %i.da, align 8
  %.sroa.13.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.13.0.lcssa.sink, ptr %.sroa.13.0..sroa_idx75, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmiENS2_IKSH_RKSE_PSM_EE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, i32 %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !317    ; 5 uses
  %i.b = icmp eq ptr %i.a, %1
  br i1 %i.b, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i.pre = load i32, ptr %.sroa.2.0..sroa_idx.i.phi.trans.insert, align 8
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.d = load i8, ptr %i.c, align 1, !tbaa !13
  %.not = icmp eq i8 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !321  ; 3 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = sub nsw i32 %i.f, %2
  %i.h = sext i32 %i.g to i64
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %i.f, %2
  br i1 %i.i, label %bb.l, label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %.sroa.2.0.copyload.i = phi i32 [ %.sroa.2.0.copyload.i.pre, %._crit_edge ], [ %i.f, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.k = load i8, ptr %i.j, align 1, !tbaa !13
  %.not68.i = icmp eq i8 %i.k, 0
  %i.l = sub nsw i32 0, %2
  %i.m = sext i32 %i.l to i64
  br i1 %.not68.i, label %bb.f, label %._crit_edge.i

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.o = add i32 %2, 1
  %i.p = and i32 %i.o, 255
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !95   ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.s, i64 11
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !13
  %i.t = icmp eq i8 %.pre.i, 0
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.14884.i = phi ptr [ %i.v, %.lr.ph.i ], [ %i.s, %bb.f ]
  %i.u = getelementptr inbounds nuw i8, ptr %.14884.i, i64 240
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !95   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 11
  %i.x = load i8, ptr %i.w, align 1, !tbaa !13
  %.not.i62.i = icmp eq i8 %i.x, 0
  br i1 %.not.i62.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !551

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f, %bb.e
  %.044108.i = phi i64 [ 1, %bb.f ], [ %i.m, %bb.e ], [ 1, %.lr.ph.i ]
  %.148.lcssa.i = phi ptr [ %i.s, %bb.f ], [ %1, %bb.e ], [ %i.v, %.lr.ph.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.148.lcssa.i, i64 8
  %i.z = load i8, ptr %i.y, align 1, !tbaa !13
  %i.aa = zext i8 %i.z to i64
  %i.ab = load ptr, ptr %.148.lcssa.i, align 8, !tbaa !95
  %i.ac = sext i32 %.sroa.2.0.copyload.i to i64   ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.backedge, %._crit_edge.i
  %.246.i = phi i64 [ %.044108.i, %._crit_edge.i ], [ %i.ax, %.backedge ] ; 2 uses
  %.142.i = phi i64 [ %i.aa, %._crit_edge.i ], [ %.142.i.be, %.backedge ] ; 2 uses
  %.1.i = phi ptr [ %i.ab, %._crit_edge.i ], [ %.1.i.be, %.backedge ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.i, i64 240
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.142.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !95 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !13
  %.not.i63.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i63.i, label %.lr.ph87.i, label %bb.h

.lr.ph87.i:                                       ; preds = %bb.g, %.lr.ph87.i
  %.24986.i = phi ptr [ %i.aj, %.lr.ph87.i ], [ %i.af, %bb.g ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.24986.i, i64 240
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !95 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 11
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !13
  %.not.i64.i = icmp eq i8 %i.al, 0
  br i1 %.not.i64.i, label %.lr.ph87.i, label %._crit_edge88.i, !llvm.loop !552

._crit_edge88.i:                                  ; preds = %.lr.ph87.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load i8, ptr %i.am, align 1, !tbaa !13
  %i.ao = zext i8 %i.an to i64
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !95
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge88.i, %bb.g
  %.350.i = phi ptr [ %i.aj, %._crit_edge88.i ], [ %i.af, %bb.g ] ; 2 uses
  %.243.i = phi i64 [ %i.ao, %._crit_edge88.i ], [ %.142.i, %bb.g ] ; 3 uses
  %.2.i = phi ptr [ %i.ap, %._crit_edge88.i ], [ %.1.i, %bb.g ] ; 4 uses
  %i.aq = icmp eq ptr %.350.i, %i.a
  br i1 %i.aq, label %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_E13distance_slowENS2_IKSH_RKSE_PSM_EE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = icmp eq ptr %.2.i, %i.a
  %i.as = icmp eq i64 %.243.i, %i.ac
  %or.cond.i = select i1 %i.ar, i1 %i.as, i1 false
  %i.at = getelementptr inbounds nuw i8, ptr %.350.i, i64 10
  %i.au = load i8, ptr %i.at, align 1, !tbaa !13
  %i.av = zext i8 %i.au to i64                    ; 3 uses
  br i1 %or.cond.i, label %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_E13distance_slowENS2_IKSH_RKSE_PSM_EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = add i64 %.246.i, 1
  %i.ax = add i64 %i.aw, %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %.2.i, i64 10
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !13
  %i.ba = zext i8 %i.az to i64
  %.not.not.i = icmp samesign ult i64 %.243.i, %i.ba
  br i1 %.not.not.i, label %.backedge, label %.preheader69.i

.backedge:                                        ; preds = %bb.k, %bb.j
  %.142.i.be.in = phi i64 [ %.243.i, %bb.j ], [ %i.bd, %bb.k ]
  %.1.i.be = phi ptr [ %.2.i, %bb.j ], [ %i.be, %bb.k ]
  %.142.i.be = add nuw nsw i64 %.142.i.be.in, 1
  br label %bb.g, !llvm.loop !553

.preheader69.i:                                   ; preds = %bb.j, %bb.k
  %.3.i = phi ptr [ %i.be, %bb.k ], [ %.2.i, %bb.j ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.3.i, i64 8
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !13  ; 2 uses
  %i.bd = zext i8 %i.bc to i64                    ; 2 uses
  %i.be = load ptr, ptr %.3.i, align 8, !tbaa !95 ; 4 uses
  %i.bf = icmp eq ptr %i.be, %i.a
  %i.bg = icmp eq i64 %i.bd, %i.ac
  %or.cond61.i = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %or.cond61.i, label %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_E13distance_slowENS2_IKSH_RKSE_PSM_EE.exit, label %bb.k

bb.k:                                             ; preds = %.preheader69.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 10
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !13
  %.not.i = icmp ult i8 %i.bc, %i.bi
  br i1 %.not.i, label %.backedge, label %.preheader69.i, !llvm.loop !554

_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_E13distance_slowENS2_IKSH_RKSE_PSM_EE.exit: ; preds = %bb.h, %bb.i, %.preheader69.i
  %.pn.i = phi i64 [ %i.av, %.preheader69.i ], [ %i.ac, %bb.h ], [ %i.av, %bb.i ]
  %.051.i = add i64 %.pn.i, %.246.i
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_E13distance_slowENS2_IKSH_RKSE_PSM_EE.exit, %bb.c
  %.0 = phi i64 [ %i.h, %bb.c ], [ %.051.i, %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_E13distance_slowENS2_IKSH_RKSE_PSM_EE.exit ], [ 0, %bb.d ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::container_internal::btree_iterator", align 8 ; 8 uses
  store ptr %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = load ptr, ptr %0, align 8, !tbaa !89     ; 2 uses
  %i.c = icmp eq ptr %1, %i.b
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.e = load i8, ptr %i.d, align 1, !tbaa !13
  %i.f = icmp ugt i8 %i.e, 2
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader
  %i.g = call noundef zeroext i1 @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %3)
  %.sroa.0.0.copyload7.peel = load ptr, ptr %3, align 8 ; 7 uses
  %.sroa.9.0.copyload9.peel = load i32, ptr %i.a, align 8 ; 5 uses
  br i1 %i.g, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload7.peel, i64 8
  %i.i = load i8, ptr %i.h, align 1, !tbaa !13
  %i.j = zext i8 %i.i to i32
  store i32 %i.j, ptr %i.a, align 8, !tbaa !321
  %i.k = load ptr, ptr %.sroa.0.0.copyload7.peel, align 8, !tbaa !95 ; 3 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !317
  %i.l = load ptr, ptr %0, align 8, !tbaa !89     ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.c, %bb.a
  %.sroa.9.0.lcssa = phi i32 [ %2, %bb.a ], [ %.sroa.9.0.copyload9.peel, %bb.c ], [ %.sroa.9.0.copyload9.peel, %bb.j ]
  %.sroa.0.0.lcssa = phi ptr [ %1, %bb.a ], [ %.sroa.0.0.copyload7.peel, %bb.c ], [ %.sroa.0.0.copyload7.peel, %bb.j ]
  %.lcssa = phi ptr [ %i.b, %bb.a ], [ %i.l, %bb.c ], [ %i.ap, %bb.j ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.lcssa, i64 10
  %i.o = load i8, ptr %i.n, align 1, !tbaa !13
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %bb.d, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10try_shrinkEv.exit

bb.d:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %.lcssa, i64 11
  %i.q = load i8, ptr %i.p, align 1, !tbaa !13
  %.not7.i = icmp eq i8 %i.q, 0
  br i1 %.not7.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE9EmptyNodeEvE10empty_node, ptr %i.r, align 8, !tbaa !95
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.lcssa, i64 240
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !95   ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !95
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !95
  store ptr %i.v, ptr %i.t, align 8, !tbaa !95
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %storemerge.i = phi ptr [ %i.t, %bb.f ], [ @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE9EmptyNodeEvE10empty_node, %bb.e ]
  store ptr %storemerge.i, ptr %0, align 8, !tbaa !95
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16clear_and_deleteEPSG_PSE_(ptr noundef nonnull %.lcssa, ptr noundef nonnull %i.w)
  br label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10try_shrinkEv.exit

_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10try_shrinkEv.exit: ; preds = %._crit_edge, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !100
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.h, label %.thread

bb.h:                                             ; preds = %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10try_shrinkEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !95 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 10
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !13
  %i.ae = zext i8 %i.ad to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

.lr.ph:                                           ; preds = %bb.c, %bb.j
  %i.af = phi ptr [ %i.ao, %bb.j ], [ %i.k, %bb.c ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 10
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !13
  %i.ai = icmp ugt i8 %i.ah, 2
  br i1 %i.ai, label %.thread, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.aj = call noundef zeroext i1 @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %3)
  br i1 %i.aj, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %3, align 8, !tbaa !317   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i8, ptr %i.al, align 1, !tbaa !13
  %i.an = zext i8 %i.am to i32
  store i32 %i.an, ptr %i.a, align 8, !tbaa !321
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !95 ; 3 uses
  store ptr %i.ao, ptr %3, align 8, !tbaa !317
  %i.ap = load ptr, ptr %0, align 8, !tbaa !89    ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %._crit_edge, label %.lr.ph, !llvm.loop !555

.thread:                                          ; preds = %bb.i, %.lr.ph, %.lr.ph.preheader, %bb.b, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10try_shrinkEv.exit
  %.sroa.9.2 = phi i32 [ %.sroa.9.0.lcssa, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10try_shrinkEv.exit ], [ %2, %.lr.ph.preheader ], [ %.sroa.9.0.copyload9.peel, %bb.b ], [ %.sroa.9.0.copyload9.peel, %.lr.ph ], [ %.sroa.9.0.copyload9.peel, %bb.i ] ; 3 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.0.lcssa, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10try_shrinkEv.exit ], [ %1, %.lr.ph.preheader ], [ %.sroa.0.0.copyload7.peel, %bb.b ], [ %.sroa.0.0.copyload7.peel, %.lr.ph ], [ %.sroa.0.0.copyload7.peel, %bb.i ] ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 10
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !13  ; 2 uses
  %i.at = zext i8 %i.as to i32
  %i.au = icmp eq i32 %.sroa.9.2, %i.at
  br i1 %i.au, label %bb.k, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

bb.k:                                             ; preds = %.thread
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 11
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !13
  %.not.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i, label %.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k, %bb.l
  %.01521.i.i.i = phi ptr [ %i.ax, %bb.l ], [ %.sroa.0.2, %bb.k ] ; 2 uses
  %i.ax = load ptr, ptr %.01521.i.i.i, align 8, !tbaa !95 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 11
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !13
  %.not17.i.i.i = icmp eq i8 %i.az, 0
  br i1 %.not17.i.i.i, label %bb.l, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.01521.i.i.i, i64 8
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !13  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 10
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !13
  %i.be = icmp eq i8 %i.bb, %i.bd
  br i1 %i.be, label %.lr.ph.i.i.i, label %.critedge.loopexit23.i.i.i, !llvm.loop !214

.thread.i.i:                                      ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 240
  %i.bg = zext i8 %i.as to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bg
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.thread.i.i
  %.116.in.i.i.i = phi ptr [ %i.bh, %.thread.i.i ], [ %i.bk, %bb.m ]
  %.116.i.i.i = load ptr, ptr %.116.in.i.i.i, align 8, !tbaa !95 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 11
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !13
  %.not.i.i.i.i = icmp eq i8 %i.bj, 0
  %i.bk = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 240
  br i1 %.not.i.i.i.i, label %bb.m, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit, !llvm.loop !215

.critedge.loopexit23.i.i.i:                       ; preds = %bb.l
  %i.bl = zext i8 %i.bb to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.m, %.thread, %.critedge.loopexit23.i.i.i, %bb.h
  %.pn13 = phi ptr [ %i.ab, %bb.h ], [ %.sroa.0.2, %.thread ], [ %.116.i.i.i, %bb.m ], [ %i.ax, %.critedge.loopexit23.i.i.i ], [ %.sroa.0.2, %.lr.ph.i.i.i ]
  %.pn = phi i32 [ %i.ae, %bb.h ], [ %.sroa.9.2, %.thread ], [ 0, %bb.m ], [ %i.bl, %.critedge.loopexit23.i.i.i ], [ %.sroa.9.2, %.lr.ph.i.i.i ]
  %.fca.0.insert.i.pn = insertvalue { ptr, i32 } poison, ptr %.pn13, 0
  %.fca.1.insert.merged = insertvalue { ptr, i32 } %.fca.0.insert.i.pn, i32 %.pn, 1
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.b = load i8, ptr %i.a, align 1, !tbaa !13
  %.not.i = icmp eq i8 %i.b, 0                    ; 2 uses
  br i1 %.not.i, label %.thread.i.i, label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.d = and i32 %2, 255
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.e
  %.11723.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !95 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.11723.i.i.i, i64 11
  %i.h = load i8, ptr %i.g, align 1, !tbaa !13
  %.not.i24.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i24.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmmEv.exit

.lr.ph26.i.i.i:                                   ; preds = %.thread.i.i, %.lr.ph26.i.i.i
  %.11725.i.i.i = phi ptr [ %.117.i.i.i, %.lr.ph26.i.i.i ], [ %.11723.i.i.i, %.thread.i.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 10
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 240
  %i.l = zext i8 %i.j to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %.117.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !95 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.117.i.i.i, i64 11
  %i.o = load i8, ptr %i.n, align 1, !tbaa !13
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmmEv.exit, !llvm.loop !525

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmmEv.exit: ; preds = %.lr.ph26.i.i.i, %.thread.i.i
  %.117.lcssa.i.i.i = phi ptr [ %.11723.i.i.i, %.thread.i.i ], [ %.117.i.i.i, %.lr.ph26.i.i.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i, i64 10
  %i.q = load i8, ptr %i.p, align 1, !tbaa !13
  %i.r = zext i8 %i.q to i32
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  %i.t = sext i32 %2 to i64
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %i.t
  %i.x = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i, i64 16
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.w, ptr noundef nonnull align 1 dereferenceable(32) %i.y, i64 32, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit

bb.b:                                             ; preds = %bb.a
  %i.z = trunc i32 %2 to i8
  %i.aa = add i8 %i.z, 1                          ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !13  ; 2 uses
  %i.ad = sub i8 %i.ac, %i.aa
  %i.ae = zext i8 %i.ad to i64
  %i.af = zext i8 %i.aa to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %i.af ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.ae, 5              ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i
  %.not13.i = icmp eq i8 %i.ac, %i.aa
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.aj = sext i32 %2 to i64
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %i.aj ; 2 uses
  %i.al = add nsw i64 %.idx.i, -32                ; 2 uses
  %i.am = lshr exact i64 %i.al, 5
  %i.an = add nuw nsw i64 %i.am, 1
  %xtraiter = and i64 %i.an, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %.015.i.prol = phi ptr [ %i.ap, %.lr.ph.i.prol ], [ %i.ak, %.lr.ph.preheader.i ] ; 2 uses
  %.01214.i.prol = phi ptr [ %i.ao, %.lr.ph.i.prol ], [ %i.ah, %.lr.ph.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.015.i.prol, ptr noundef nonnull align 1 dereferenceable(32) %.01214.i.prol, i64 32, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.01214.i.prol, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.015.i.prol, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !557

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.015.i.unr = phi ptr [ %i.ak, %.lr.ph.preheader.i ], [ %i.ap, %.lr.ph.i.prol ]
  %.01214.i.unr = phi ptr [ %i.ah, %.lr.ph.preheader.i ], [ %i.ao, %.lr.ph.i.prol ]
  %i.aq = icmp ult i64 %i.al, 96
  br i1 %i.aq, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.015.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %.015.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.01214.i = phi ptr [ %i.ax, %.lr.ph.i ], [ %.01214.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.015.i, ptr noundef nonnull align 1 dereferenceable(32) %.01214.i, i64 32, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %.01214.i, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %.015.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.as, ptr noundef nonnull align 1 dereferenceable(32) %i.ar, i64 32, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %.01214.i, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %.015.i, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.au, ptr noundef nonnull align 1 dereferenceable(32) %i.at, i64 32, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %.01214.i, i64 96
  %i.aw = getelementptr inbounds nuw i8, ptr %.015.i, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.aw, ptr noundef nonnull align 1 dereferenceable(32) %i.av, i64 32, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %.01214.i, i64 128 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.015.i, i64 128
  %.not.i8.3 = icmp eq ptr %i.ax, %i.ai
  br i1 %.not.i8.3, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit, label %.lr.ph.i, !llvm.loop !527

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.b, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmmEv.exit
  %.sroa.10.0 = phi i32 [ %i.s, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmmEv.exit ], [ %2, %bb.b ], [ %2, %.lr.ph.i ], [ %2, %.lr.ph.i.prol.loopexit ]
  %.sroa.0.0 = phi ptr [ %.117.lcssa.i.i.i, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmmEv.exit ], [ %1, %bb.b ], [ %1, %.lr.ph.i ], [ %1, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 10 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !13
  %i.bb = add i8 %i.ba, -1
  store i8 %i.bb, ptr %i.az, align 1, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !100
  %i.be = add i64 %i.bd, -1
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !100
  %i.bf = tail call { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %.sroa.0.0, i32 %.sroa.10.0) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.bf, 0 ; 7 uses
  %.fca.1.extract = extractvalue { ptr, i32 } %i.bf, 1 ; 3 uses
  br i1 %.not.i, label %bb.c, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

bb.c:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 11
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !13
  %.not.i.i9 = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i9, label %.thread.i.i15, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bi = add nsw i32 %.fca.1.extract, 1          ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 10
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !13
  %i.bl = zext i8 %i.bk to i32
  %i.bm = icmp eq i32 %i.bi, %i.bl
  br i1 %i.bm, label %.lr.ph.i.i.i14, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

.lr.ph.i.i.i14:                                   ; preds = %bb.d, %bb.e
  %.01521.i.i.i = phi ptr [ %i.bn, %bb.e ], [ %.fca.0.extract, %bb.d ] ; 2 uses
  %i.bn = load ptr, ptr %.01521.i.i.i, align 8, !tbaa !95 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 11
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !13
  %.not17.i.i.i = icmp eq i8 %i.bp, 0
  br i1 %.not17.i.i.i, label %bb.e, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i14
  %i.bq = getelementptr inbounds nuw i8, ptr %.01521.i.i.i, i64 8
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !13  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 10
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !13
  %i.bu = icmp eq i8 %i.br, %i.bt
  br i1 %i.bu, label %.lr.ph.i.i.i14, label %.critedge.loopexit23.i.i.i, !llvm.loop !214

.thread.i.i15:                                    ; preds = %bb.c
  %i.bv = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 240
  %i.bw = add i32 %.fca.1.extract, 1
  %i.bx = and i32 %i.bw, 255
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.by
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.thread.i.i15
  %.116.in.i.i.i = phi ptr [ %i.bz, %.thread.i.i15 ], [ %i.cc, %bb.f ]
  %.116.i.i.i = load ptr, ptr %.116.in.i.i.i, align 8, !tbaa !95 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 11
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !13
  %.not.i.i.i.i16 = icmp eq i8 %i.cb, 0
  %i.cc = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 240
  br i1 %.not.i.i.i.i16, label %bb.f, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit, !llvm.loop !215

.critedge.loopexit23.i.i.i:                       ; preds = %bb.e
  %i.cd = zext i8 %i.br to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit: ; preds = %.lr.ph.i.i.i14, %bb.f, %bb.d, %.critedge.loopexit23.i.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit
  %.sroa.4.0 = phi i32 [ %.fca.1.extract, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit ], [ 0, %bb.f ], [ %i.bi, %bb.d ], [ %i.cd, %.critedge.loopexit23.i.i.i ], [ %i.bi, %.lr.ph.i.i.i14 ]
  %.sroa.027.0 = phi ptr [ %.fca.0.extract, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit ], [ %.116.i.i.i, %bb.f ], [ %.fca.0.extract, %bb.d ], [ %i.bn, %.critedge.loopexit23.i.i.i ], [ %.fca.0.extract, %.lr.ph.i.i.i14 ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.4.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !317    ; 11 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !13    ; 5 uses
  %.not = icmp eq i8 %i.d, 0                      ; 2 uses
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i8 %i.d, -1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.g = zext i8 %i.e to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !95   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 10
  %i.k = load i8, ptr %i.j, align 1, !tbaa !13
  %i.l = zext i8 %i.k to i32
  %i.m = add nuw nsw i32 %i.l, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.o = load i8, ptr %i.n, align 2, !tbaa !13
  %i.p = zext i8 %i.o to i32
  %i.q = add nuw nsw i32 %i.m, %i.p
  %i.r = icmp samesign ugt i32 %i.q, 7
  br i1 %i.r, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !321
  %i.u = add nsw i32 %i.t, %i.m
  store i32 %i.u, ptr %i.s, align 8, !tbaa !321
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5mergeEPSG_PSE_(ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.v)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !95
  %i.x = icmp eq ptr %i.w, %i.a
  br i1 %i.x, label %bb.d, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISF_EESJ_.exit

bb.d:                                             ; preds = %bb.c
  store ptr %i.i, ptr %i.v, align 8, !tbaa !95
  br label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISF_EESJ_.exit

_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISF_EESJ_.exit: ; preds = %bb.c, %bb.d
  store ptr %i.i, ptr %1, align 8, !tbaa !317
  br label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISF_EESJ_.exit53.thread

.critedge:                                        ; preds = %bb.b, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.z = load i8, ptr %i.y, align 1, !tbaa !13
  %i.aa = icmp ult i8 %i.d, %i.z
  br i1 %i.aa, label %bb.e, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISF_EESJ_.exit53

bb.e:                                             ; preds = %.critedge
  %i.ab = add nuw i8 %i.d, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.ad = zext i8 %i.ab to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !95 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.ah = load i8, ptr %i.ag, align 2, !tbaa !13  ; 2 uses
  %i.ai = zext i8 %i.ah to i32                    ; 2 uses
  %i.aj = add nuw nsw i32 %i.ai, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 10
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !13  ; 3 uses
  %i.am = zext i8 %i.al to i32                    ; 2 uses
  %i.an = add nuw nsw i32 %i.aj, %i.am
  %i.ao = icmp samesign ult i32 %i.an, 8
  br i1 %i.ao, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5mergeEPSG_PSE_(ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ap)
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !95
  %i.ar = icmp eq ptr %i.aq, %i.af
  br i1 %i.ar, label %bb.g, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISF_EESJ_.exit53.thread

bb.g:                                             ; preds = %bb.f
  store ptr %i.a, ptr %i.ap, align 8, !tbaa !95
  br label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISF_EESJ_.exit53.thread

bb.h:                                             ; preds = %bb.e
  %i.as = icmp ugt i8 %i.al, 3
  br i1 %i.as, label %bb.i, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISF_EESJ_.exit53

bb.i:                                             ; preds = %bb.h
  %i.at = icmp eq i8 %i.ah, 0
  br i1 %i.at, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !321
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %bb.k, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISF_EESJ_.exit53

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ax = sub nsw i32 %i.am, %i.ai
  %.lhs.trunc = trunc nsw i32 %i.ax to i16
  %i.ay = sdiv i16 %.lhs.trunc, 2
  %i.az = trunc nsw i16 %i.ay to i8
  %i.ba = add i8 %i.al, -1
  %.sroa.speculated59 = tail call i8 @llvm.umin.i8(i8 %i.ba, i8 %i.az)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE23rebalance_right_to_leftEhPSG_PSE_(ptr noundef nonnull align 1 dereferenceable(1) %i.a, i8 noundef zeroext %.sroa.speculated59, ptr noundef nonnull %i.af, ptr noundef nonnull %i.bb)
  br label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISF_EESJ_.exit53.thread

_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISF_EESJ_.exit53: ; preds = %bb.j, %bb.h, %.critedge
  br i1 %.not, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISF_EESJ_.exit53.thread, label %bb.l

bb.l:                                             ; preds = %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISF_EESJ_.exit53
  %i.bc = add i8 %i.d, -1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.be = zext i8 %i.bc to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !95 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 10
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !13  ; 3 uses
  %i.bj = icmp ugt i8 %i.bi, 3
  br i1 %i.bj, label %bb.m, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISF_EESJ_.exit53.thread

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !13  ; 3 uses
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !321
  %i.bp = zext i8 %i.bl to i32
  %i.bq = icmp slt i32 %i.bo, %i.bp
  br i1 %i.bq, label %bb.o, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISF_EESJ_.exit53.thread

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.br = zext i8 %i.bi to i16
  %i.bs = zext i8 %i.bl to i16
  %.lhs.trunc68 = sub nsw i16 %i.br, %i.bs
  %i.bt = sdiv i16 %.lhs.trunc68, 2
  %i.bu = trunc nsw i16 %i.bt to i8
  %i.bv = add i8 %i.bi, -1
  %.sroa.speculated = tail call i8 @llvm.umin.i8(i8 %i.bv, i8 %i.bu) ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE23rebalance_left_to_rightEhPSG_PSE_(ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i8 noundef zeroext %.sroa.speculated, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bw)
  %i.bx = zext i8 %.sroa.speculated to i32
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !321
  %i.ca = add nsw i32 %i.bz, %i.bx
  store i32 %i.ca, ptr %i.by, align 8, !tbaa !321
  br label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISF_EESJ_.exit53.thread

_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISF_EESJ_.exit53.thread: ; preds = %bb.l, %bb.n, %bb.g, %bb.f, %bb.k, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISF_EESJ_.exit53, %bb.o, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISF_EESJ_.exit
  %.5 = phi i1 [ true, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISF_EESJ_.exit ], [ false, %bb.o ], [ false, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISF_EESJ_.exit53 ], [ false, %bb.k ], [ true, %bb.g ], [ true, %bb.f ], [ false, %bb.n ], [ false, %bb.l ]
  ret i1 %.5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5mergeEPSG_PSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !13    ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !95
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !13
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.f
  %i.i = zext i8 %i.b to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.i ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 4 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13    ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.n, 5               ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i
  %.not13.i = icmp eq i8 %i.m, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.q = add nsw i64 %.idx.i, -32                 ; 2 uses
  %i.r = lshr exact i64 %i.q, 5
  %i.s = add nuw nsw i64 %i.r, 1
  %xtraiter = and i64 %i.s, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.015.i.pn.prol = phi ptr [ %.015.i.prol, %.lr.ph.i.prol ], [ %i.k, %.lr.ph.i.preheader ]
  %.01214.i.prol = phi ptr [ %i.t, %.lr.ph.i.prol ], [ %i.o, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %.015.i.prol = getelementptr inbounds nuw i8, ptr %.015.i.pn.prol, i64 32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.015.i.prol, ptr noundef nonnull align 1 dereferenceable(32) %.01214.i.prol, i64 32, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.01214.i.prol, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !558

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.015.i.pn.unr = phi ptr [ %i.k, %.lr.ph.i.preheader ], [ %.015.i.prol, %.lr.ph.i.prol ]
  %.01214.i.unr = phi ptr [ %i.o, %.lr.ph.i.preheader ], [ %i.t, %.lr.ph.i.prol ]
  %i.u = icmp ult i64 %i.q, 96
  br i1 %i.u, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.015.i.pn = phi ptr [ %.015.i.3, %.lr.ph.i ], [ %.015.i.pn.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.01214.i = phi ptr [ %i.y, %.lr.ph.i ], [ %.01214.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.015.i = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.015.i, ptr noundef nonnull align 1 dereferenceable(32) %.01214.i, i64 32, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.01214.i, i64 32
  %.015.i.1 = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.015.i.1, ptr noundef nonnull align 1 dereferenceable(32) %i.v, i64 32, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.01214.i, i64 64
  %.015.i.2 = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.015.i.2, ptr noundef nonnull align 1 dereferenceable(32) %i.w, i64 32, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.01214.i, i64 96
  %.015.i.3 = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 128 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.015.i.3, ptr noundef nonnull align 1 dereferenceable(32) %i.x, i64 32, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.01214.i, i64 128 ; 2 uses
  %.not.i.3 = icmp eq ptr %i.y, %i.p
  br i1 %.not.i.3, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit, label %.lr.ph.i, !llvm.loop !527

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit: ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.pre25.pre = load i8, ptr %i.a, align 2, !tbaa !13
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit, %bb.a
  %.pre25 = phi i8 [ %.pre25.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit ], [ %i.b, %bb.a ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !13
  %.not.i20 = icmp eq i8 %i.aa, 0
  br i1 %.not.i20, label %bb.b, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit..loopexit_crit_edge

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit..loopexit_crit_edge: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit
  %.pre26 = load i8, ptr %i.l, align 1, !tbaa !13
  br label %.loopexit

bb.b:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 240
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %.0.in24 = phi i8 [ %.pre25, %bb.b ], [ %.0, %bb.c ]
  %.01923 = phi i8 [ 0, %bb.b ], [ %i.aj, %bb.c ] ; 2 uses
  %.0 = add i8 %.0.in24, 1                        ; 3 uses
  %i.ad = zext i8 %.01923 to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !95 ; 3 uses
  %i.ag = zext i8 %.0 to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ag
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !95
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i8 %.0, ptr %i.ai, align 1, !tbaa !13
  store ptr %0, ptr %i.af, align 8, !tbaa !95
  %i.aj = add i8 %.01923, 1                       ; 2 uses
  %i.ak = load i8, ptr %i.l, align 1, !tbaa !13   ; 2 uses
  %.not = icmp ugt i8 %i.aj, %i.ak
  br i1 %.not, label %.loopexit.loopexit, label %bb.c, !llvm.loop !559

.loopexit.loopexit:                               ; preds = %bb.c
  %.pre = load i8, ptr %i.a, align 2, !tbaa !13
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit..loopexit_crit_edge, %.loopexit.loopexit
  %i.al = phi i8 [ %i.ak, %.loopexit.loopexit ], [ %.pre26, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit..loopexit_crit_edge ]
  %i.am = phi i8 [ %.pre, %.loopexit.loopexit ], [ %.pre25, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit..loopexit_crit_edge ]
  %i.an = add i8 %i.am, 1
  %i.ao = add i8 %i.an, %i.al
  store i8 %i.ao, ptr %i.a, align 2, !tbaa !13
  store i8 0, ptr %i.l, align 1, !tbaa !13
  %i.ap = load ptr, ptr %0, align 8, !tbaa !95    ; 4 uses
  %i.aq = load i8, ptr %i.d, align 8, !tbaa !13   ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 10 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !13  ; 4 uses
  %i.at = zext i8 %i.aq to i32
  %i.au = add nuw nsw i32 %i.at, 1                ; 2 uses
  %i.av = zext i8 %i.as to i32                    ; 2 uses
  %i.aw = and i32 %i.au, 255                      ; 3 uses
  %i.ax = sub nsw i32 %i.av, %i.aw
  %i.ay = sext i32 %i.ax to i64
  %i.az = zext nneg i32 %i.aw to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.ba, i64 %i.az ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.ay, 5
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i.i
  %.not13.i.i = icmp eq i32 %i.aw, %i.av
  br i1 %.not13.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.loopexit
  %i.bd = zext i8 %i.aq to i64
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %i.ba, i64 %i.bd
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.015.i.i = phi ptr [ %i.bg, %.lr.ph.i.i ], [ %i.be, %.lr.ph.preheader.i.i ] ; 2 uses
  %.01214.i.i = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %i.bb, %.lr.ph.preheader.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.015.i.i, ptr noundef nonnull align 1 dereferenceable(32) %.01214.i.i, i64 32, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 32
  %.not.i.i = icmp eq ptr %i.bf, %i.bc
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.i, label %.lr.ph.i.i, !llvm.loop !527

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.i: ; preds = %.lr.ph.i.i, %.loopexit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ap, i64 11
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !13
  %.not.i31.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i31.i, label %.preheader.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit

.preheader.i:                                     ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.i
  %i.bj = add i8 %i.aq, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ap, i64 240 ; 3 uses
  %i.bl = zext i8 %i.bj to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !95
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16clear_and_deleteEPSG_PSE_(ptr noundef %i.bn, ptr noundef %2)
  %i.bo = trunc i32 %i.au to i8
  %.033.i = add i8 %i.bo, 1                       ; 2 uses
  %.not34.i = icmp ugt i8 %.033.i, %i.as
  br i1 %.not34.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit, label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %.preheader.i, %.lr.ph37.i
  %.035.i = phi i8 [ %.0.i, %.lr.ph37.i ], [ %.033.i, %.preheader.i ] ; 3 uses
  %i.bp = add i8 %.035.i, -1                      ; 2 uses
  %i.bq = zext i8 %.035.i to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !95 ; 2 uses
  %i.bt = zext i8 %i.bp to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bt
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !95
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i8 %i.bp, ptr %i.bv, align 1, !tbaa !13
  %.0.i = add i8 %.035.i, 1                       ; 2 uses
  %.not.i22 = icmp ugt i8 %.0.i, %i.as
  br i1 %.not.i22, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit, label %.lr.ph37.i, !llvm.loop !549

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13remove_valuesEhhPSE_.exit: ; preds = %.lr.ph37.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.i, %.preheader.i
  %i.bw = add i8 %i.as, -1
  store i8 %i.bw, ptr %i.ar, align 1, !tbaa !13
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6google8protobuf8internal16OnShutdownDeleteINS1_25RepeatedPrimitiveDefaultsEEEPT_S5_ENUlPKvE_8__invokeES7_(ptr noundef %0) #33 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZZN6google8protobuf8internal16OnShutdownDeleteINS1_25RepeatedPrimitiveDefaultsEEEPT_S5_ENKUlPKvE_clES7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf8internal25RepeatedPrimitiveDefaultsD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #39
  br label %_ZZN6google8protobuf8internal16OnShutdownDeleteINS1_25RepeatedPrimitiveDefaultsEEEPT_S5_ENKUlPKvE_clES7_.exit

_ZZN6google8protobuf8internal16OnShutdownDeleteINS1_25RepeatedPrimitiveDefaultsEEEPT_S5_ENKUlPKvE_clES7_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal25RepeatedPrimitiveDefaultsD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8, !tbaa !129
  %i.c = and i32 %i.b, 1
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN6google8protobuf13RepeatedFieldIbED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !13
  %i.h = sext i32 %i.g to i64
  %i.i = add nsw i64 %i.h, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.i) #35
  br label %_ZN6google8protobuf13RepeatedFieldIbED2Ev.exit

_ZN6google8protobuf13RepeatedFieldIbED2Ev.exit:   ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i32, ptr %i.j, align 8, !tbaa !129
  %i.l = and i32 %i.k, 1
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZN6google8protobuf13RepeatedFieldIfED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIbED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !13   ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !13
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 2
  %i.s = add nsw i64 %i.r, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.s) #35
  br label %_ZN6google8protobuf13RepeatedFieldIfED2Ev.exit

_ZN6google8protobuf13RepeatedFieldIfED2Ev.exit:   ; preds = %_ZN6google8protobuf13RepeatedFieldIbED2Ev.exit, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = load i32, ptr %i.t, align 8, !tbaa !129
  %i.v = and i32 %i.u, 1
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_ZN6google8protobuf13RepeatedFieldIdED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIfED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !13   ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !13
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 3
  %i.ac = add nsw i64 %i.ab, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #35
  br label %_ZN6google8protobuf13RepeatedFieldIdED2Ev.exit

_ZN6google8protobuf13RepeatedFieldIdED2Ev.exit:   ; preds = %_ZN6google8protobuf13RepeatedFieldIfED2Ev.exit, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !129
  %i.af = and i32 %i.ae, 1
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_ZN6google8protobuf13RepeatedFieldImED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIdED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !13 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !13
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ak, 3
  %i.am = add nsw i64 %i.al, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.am) #35
  br label %_ZN6google8protobuf13RepeatedFieldImED2Ev.exit

_ZN6google8protobuf13RepeatedFieldImED2Ev.exit:   ; preds = %_ZN6google8protobuf13RepeatedFieldIdED2Ev.exit, %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !129
  %i.ap = and i32 %i.ao, 1
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_ZN6google8protobuf13RepeatedFieldIjED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldImED2Ev.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !13 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !13
  %i.au = sext i32 %i.at to i64
  %i.av = shl nsw i64 %i.au, 2
  %i.aw = add nsw i64 %i.av, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.aw) #35
  br label %_ZN6google8protobuf13RepeatedFieldIjED2Ev.exit

_ZN6google8protobuf13RepeatedFieldIjED2Ev.exit:   ; preds = %_ZN6google8protobuf13RepeatedFieldImED2Ev.exit, %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !129
  %i.az = and i32 %i.ay, 1
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %_ZN6google8protobuf13RepeatedFieldIlED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIjED2Ev.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !13 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !13
  %i.be = sext i32 %i.bd to i64
  %i.bf = shl nsw i64 %i.be, 3
  %i.bg = add nsw i64 %i.bf, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bg) #35
  br label %_ZN6google8protobuf13RepeatedFieldIlED2Ev.exit

_ZN6google8protobuf13RepeatedFieldIlED2Ev.exit:   ; preds = %_ZN6google8protobuf13RepeatedFieldIjED2Ev.exit, %bb.g
  %i.bh = load i32, ptr %0, align 8, !tbaa !129
  %i.bi = and i32 %i.bh, 1
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZN6google8protobuf13RepeatedFieldIiED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIlED2Ev.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !13 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !13
  %i.bn = sext i32 %i.bm to i64
  %i.bo = shl nsw i64 %i.bn, 2
  %i.bp = add nsw i64 %i.bo, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bp) #35
  br label %_ZN6google8protobuf13RepeatedFieldIiED2Ev.exit

_ZN6google8protobuf13RepeatedFieldIiED2Ev.exit:   ; preds = %_ZN6google8protobuf13RepeatedFieldIlED2Ev.exit, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6google8protobuf8internal16OnShutdownDeleteINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPT_SC_ENUlPKvE_8__invokeESE_(ptr noundef %0) #33 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZZN6google8protobuf8internal16OnShutdownDeleteINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPT_SC_ENKUlPKvE_clESE_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !132
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase7DestroyINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #37
  unreachable

_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i: ; preds = %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #39
  br label %_ZZN6google8protobuf8internal16OnShutdownDeleteINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPT_SC_ENKUlPKvE_clESE_.exit

_ZZN6google8protobuf8internal16OnShutdownDeleteINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPT_SC_ENKUlPKvE_clESE_.exit: ; preds = %bb.a, %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i
  ret void
}

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream18WriteStringOutlineEjSt17basic_string_viewIcSt11char_traitsIcEEPh(ptr noundef nonnull align 8 dereferenceable(60), i32 noundef, i64, ptr, ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN6google8protobuf8internal12ExtensionSet19ForEachPrefetchImplIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNKS2_18MessageSetByteSizeEvE3$_0NS2_8PrefetchEEEvT_SO_T0_T1_"(ptr nofree %0, i32 %1, ptr nofree readnone captures(address) %2, i32 %3, ptr nofree nonnull captures(none) %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %0, %2
  %i.b = icmp ne i32 %1, %3
  %.not3.i113 = select i1 %i.a, i1 true, i1 %i.b
  br i1 %.not3.i113, label %.lr.ph, label %.preheader103

.preheader103:                                    ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit, %bb.a
  %.sroa.11.0.lcssa = phi i32 [ %1, %bb.a ], [ %.sroa.11.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ] ; 2 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ] ; 2 uses
  %i.c = icmp ne ptr %.sroa.0.0.lcssa, %2
  %i.d = icmp ne i32 %.sroa.11.0.lcssa, %3
  %.not3.i6118 = select i1 %i.c, i1 true, i1 %i.d
  br i1 %.not3.i6118, label %.lr.ph123, label %.preheader

.lr.ph123:                                        ; preds = %.preheader103
  %i.e = load i64, ptr @_ZN6google8protobuf8internal14WireFormatLite23kMessageSetItemTagsSizeE, align 8
  br label %bb.e

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit
  %.0116 = phi i32 [ %i.al, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0.0115 = phi ptr [ %.sroa.0.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ %0, %bb.a ] ; 7 uses
  %.sroa.11.0114 = phi i32 [ %.sroa.11.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ %1, %bb.a ] ; 3 uses
  %i.f = and i32 %.sroa.11.0114, 255
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0115, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 34
  %i.k = load i8, ptr %i.j, align 2
  %i.l = trunc i8 %i.k to i1
  %i.m = load ptr, ptr %i.i, align 8
  %spec.select.i = select i1 %i.l, ptr %i.m, ptr %i.i
  tail call void @llvm.prefetch.p0(ptr %spec.select.i, i32 0, i32 3, i32 1)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0115, i64 11
  %i.o = load i8, ptr %i.n, align 1, !tbaa !13
  %.not.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.p = add nsw i32 %.sroa.11.0114, 1            ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0115, i64 10
  %i.r = load i8, ptr %i.q, align 1, !tbaa !13
  %i.s = zext i8 %i.r to i32
  %i.t = icmp eq i32 %i.p, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %.01521.i.i.i = phi ptr [ %i.u, %bb.c ], [ %.sroa.0.0115, %bb.b ] ; 2 uses
  %i.u = load ptr, ptr %.01521.i.i.i, align 8, !tbaa !95 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 11
  %i.w = load i8, ptr %i.v, align 1, !tbaa !13
  %.not17.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not17.i.i.i, label %bb.c, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.01521.i.i.i, i64 8
  %i.y = load i8, ptr %i.x, align 8, !tbaa !13    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 10
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !13
  %i.ab = icmp eq i8 %i.y, %i.aa
  br i1 %i.ab, label %.lr.ph.i.i.i, label %.critedge.loopexit23.i.i.i, !llvm.loop !214

.thread.i.i:                                      ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0115, i64 240
  %i.ad = add i32 %.sroa.11.0114, 1
  %i.ae = and i32 %i.ad, 255
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.af
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.thread.i.i
  %.116.in.i.i.i = phi ptr [ %i.ag, %.thread.i.i ], [ %i.aj, %bb.d ]
  %.116.i.i.i = load ptr, ptr %.116.in.i.i.i, align 8, !tbaa !95 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 11
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !13
  %.not.i.i.i.i = icmp eq i8 %i.ai, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 240
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit, !llvm.loop !215

.critedge.loopexit23.i.i.i:                       ; preds = %bb.c
  %i.ak = zext i8 %i.y to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %.critedge.loopexit23.i.i.i, %bb.b
  %.sroa.11.2 = phi i32 [ 0, %bb.d ], [ %i.p, %bb.b ], [ %i.ak, %.critedge.loopexit23.i.i.i ], [ %i.p, %.lr.ph.i.i.i ] ; 3 uses
  %.sroa.0.2 = phi ptr [ %.116.i.i.i, %bb.d ], [ %.sroa.0.0115, %bb.b ], [ %i.u, %.critedge.loopexit23.i.i.i ], [ %.sroa.0.0115, %.lr.ph.i.i.i ] ; 3 uses
  %i.al = add nuw nsw i32 %.0116, 1
  %i.am = icmp ne ptr %.sroa.0.2, %2
  %i.an = icmp ne i32 %.sroa.11.2, %3
  %.not3.i = select i1 %i.am, i1 true, i1 %i.an
  %i.ao = icmp samesign ult i32 %.0116, 15
  %i.ap = select i1 %.not3.i, i1 %i.ao, i1 false
  br i1 %i.ap, label %.lr.ph, label %.preheader103, !llvm.loop !560

.preheader:                                       ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit40, %.preheader103
  %.sroa.082.0.lcssa = phi ptr [ %0, %.preheader103 ], [ %.sroa.082.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit40 ] ; 2 uses
  %.sroa.1189.0.lcssa = phi i32 [ %1, %.preheader103 ], [ %.sroa.1189.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit40 ] ; 2 uses
  %i.aq = icmp ne ptr %.sroa.082.0.lcssa, %2
  %i.ar = icmp ne i32 %.sroa.1189.0.lcssa, %3
  %.not3.i44126 = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %.not3.i44126, label %.lr.ph129, label %._crit_edge

.lr.ph129:                                        ; preds = %.preheader
  %i.as = load i64, ptr @_ZN6google8protobuf8internal14WireFormatLite23kMessageSetItemTagsSizeE, align 8
  br label %bb.o

bb.e:                                             ; preds = %.lr.ph123, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit40
  %.sroa.0.1122 = phi ptr [ %.sroa.0.0.lcssa, %.lr.ph123 ], [ %.sroa.0.3, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit40 ] ; 7 uses
  %.sroa.11.1121 = phi i32 [ %.sroa.11.0.lcssa, %.lr.ph123 ], [ %.sroa.11.3, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit40 ] ; 3 uses
  %.sroa.1189.0120 = phi i32 [ %1, %.lr.ph123 ], [ %.sroa.1189.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit40 ] ; 3 uses
  %.sroa.082.0119 = phi ptr [ %0, %.lr.ph123 ], [ %.sroa.082.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit40 ] ; 7 uses
  %i.at = and i32 %.sroa.1189.0120, 255
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.082.0119, i64 16
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %i.au ; 5 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !172 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !105
  %.not.i.i7 = icmp ne i8 %i.ba, 11
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 17
  %i.bc = load i8, ptr %i.bb, align 1, !range !104
  %i.bd = trunc nuw i8 %i.bc to i1
  %or.cond.i.i = select i1 %.not.i.i7, i1 true, i1 %i.bd
  br i1 %or.cond.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = tail call noundef i64 @_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i32 noundef %i.ax)
  br label %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit"

bb.g:                                             ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 18
  %i.bg = load i8, ptr %i.bf, align 2             ; 2 uses
  %i.bh = and i8 %i.bg, 2
  %.not6.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not6.i.i, label %bb.h, label %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit"

bb.h:                                             ; preds = %bb.g
  %i.bi = or i32 %i.ax, 1
  %i.bj = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bi, i1 true)
  %i.bk = xor i32 %i.bj, 31
  %i.bl = mul nuw nsw i32 %i.bk, 9
  %i.bm = add nuw nsw i32 %i.bl, 73
  %i.bn = lshr i32 %i.bm, 6
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = and i8 %i.bg, 4
  %.not7.i.i = icmp eq i8 %i.bp, 0
  %i.bq = load ptr, ptr %i.ay, align 8, !tbaa !13 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !69
  %..i.i = select i1 %.not7.i.i, i64 24, i64 104
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %..i.i
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = tail call noundef i64 %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bq), !inline_history !561 ; 2 uses
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = or i32 %i.bv, 1
  %i.bx = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bw, i1 true)
  %i.by = xor i32 %i.bx, 31
  %i.bz = mul nuw nsw i32 %i.by, 9
  %i.ca = add nuw nsw i32 %i.bz, 73
  %i.cb = lshr i32 %i.ca, 6
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = add i64 %i.e, %i.bo
  %i.ce = add i64 %i.cd, %i.bu
  %i.cf = add i64 %i.ce, %i.cc
  br label %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit"

"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit": ; preds = %bb.f, %bb.g, %bb.h
  %.0.i.i = phi i64 [ %i.be, %bb.f ], [ %i.cf, %bb.h ], [ 0, %bb.g ]
  %i.cg = load i64, ptr %4, align 8, !tbaa !148
  %i.ch = add i64 %i.cg, %.0.i.i
  store i64 %i.ch, ptr %4, align 8, !tbaa !148
  %i.ci = and i32 %.sroa.11.1121, 255
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.1122, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 34
  %i.cn = load i8, ptr %i.cm, align 2
  %i.co = trunc i8 %i.cn to i1
  %i.cp = load ptr, ptr %i.cl, align 8
  %spec.select.i8 = select i1 %i.co, ptr %i.cp, ptr %i.cl
  tail call void @llvm.prefetch.p0(ptr %spec.select.i8, i32 0, i32 3, i32 1)
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.082.0119, i64 11
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !13
  %.not.i.i9 = icmp eq i8 %i.cr, 0
  br i1 %.not.i.i9, label %.thread.i.i20, label %bb.i

bb.i:                                             ; preds = %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit"
  %i.cs = add nsw i32 %.sroa.1189.0120, 1         ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.082.0119, i64 10
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !13
  %i.cv = zext i8 %i.cu to i32
  %i.cw = icmp eq i32 %i.cs, %i.cv
  br i1 %i.cw, label %.lr.ph.i.i.i16, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit24

.lr.ph.i.i.i16:                                   ; preds = %bb.i, %bb.j
  %.01521.i.i.i17 = phi ptr [ %i.cx, %bb.j ], [ %.sroa.082.0119, %bb.i ] ; 2 uses
  %i.cx = load ptr, ptr %.01521.i.i.i17, align 8, !tbaa !95 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 11
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !13
  %.not17.i.i.i18 = icmp eq i8 %i.cz, 0
  br i1 %.not17.i.i.i18, label %bb.j, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit24

bb.j:                                             ; preds = %.lr.ph.i.i.i16
  %i.da = getelementptr inbounds nuw i8, ptr %.01521.i.i.i17, i64 8
  %i.db = load i8, ptr %i.da, align 8, !tbaa !13  ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 10
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !13
  %i.de = icmp eq i8 %i.db, %i.dd
  br i1 %i.de, label %.lr.ph.i.i.i16, label %.critedge.loopexit23.i.i.i19, !llvm.loop !214

.thread.i.i20:                                    ; preds = %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit"
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.082.0119, i64 240
  %i.dg = add i32 %.sroa.1189.0120, 1
  %i.dh = and i32 %i.dg, 255
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.di
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.thread.i.i20
  %.116.in.i.i.i21 = phi ptr [ %i.dj, %.thread.i.i20 ], [ %i.dm, %bb.k ]
  %.116.i.i.i22 = load ptr, ptr %.116.in.i.i.i21, align 8, !tbaa !95 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.116.i.i.i22, i64 11
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !13
  %.not.i.i.i.i23 = icmp eq i8 %i.dl, 0
  %i.dm = getelementptr inbounds nuw i8, ptr %.116.i.i.i22, i64 240
  br i1 %.not.i.i.i.i23, label %bb.k, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit24, !llvm.loop !215

.critedge.loopexit23.i.i.i19:                     ; preds = %bb.j
  %i.dn = zext i8 %i.db to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit24

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit24: ; preds = %.lr.ph.i.i.i16, %bb.k, %.critedge.loopexit23.i.i.i19, %bb.i
  %.sroa.082.2 = phi ptr [ %.116.i.i.i22, %bb.k ], [ %.sroa.082.0119, %bb.i ], [ %i.cx, %.critedge.loopexit23.i.i.i19 ], [ %.sroa.082.0119, %.lr.ph.i.i.i16 ] ; 2 uses
  %.sroa.1189.2 = phi i32 [ 0, %bb.k ], [ %i.cs, %bb.i ], [ %i.dn, %.critedge.loopexit23.i.i.i19 ], [ %i.cs, %.lr.ph.i.i.i16 ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.1122, i64 11
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !13
  %.not.i.i25 = icmp eq i8 %i.dp, 0
  br i1 %.not.i.i25, label %.thread.i.i36, label %bb.l

bb.l:                                             ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit24
  %i.dq = add nsw i32 %.sroa.11.1121, 1           ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.1122, i64 10
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !13
  %i.dt = zext i8 %i.ds to i32
  %i.du = icmp eq i32 %i.dq, %i.dt
  br i1 %i.du, label %.lr.ph.i.i.i32, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit40

.lr.ph.i.i.i32:                                   ; preds = %bb.l, %bb.m
  %.01521.i.i.i33 = phi ptr [ %i.dv, %bb.m ], [ %.sroa.0.1122, %bb.l ] ; 2 uses
  %i.dv = load ptr, ptr %.01521.i.i.i33, align 8, !tbaa !95 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 11
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !13
  %.not17.i.i.i34 = icmp eq i8 %i.dx, 0
  br i1 %.not17.i.i.i34, label %bb.m, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit40

bb.m:                                             ; preds = %.lr.ph.i.i.i32
  %i.dy = getelementptr inbounds nuw i8, ptr %.01521.i.i.i33, i64 8
  %i.dz = load i8, ptr %i.dy, align 8, !tbaa !13  ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 10
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !13
  %i.ec = icmp eq i8 %i.dz, %i.eb
  br i1 %i.ec, label %.lr.ph.i.i.i32, label %.critedge.loopexit23.i.i.i35, !llvm.loop !214

.thread.i.i36:                                    ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit24
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.1122, i64 240
  %i.ee = add i32 %.sroa.11.1121, 1
  %i.ef = and i32 %i.ee, 255
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.eg
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.thread.i.i36
  %.116.in.i.i.i37 = phi ptr [ %i.eh, %.thread.i.i36 ], [ %i.ek, %bb.n ]
  %.116.i.i.i38 = load ptr, ptr %.116.in.i.i.i37, align 8, !tbaa !95 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.116.i.i.i38, i64 11
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !13
  %.not.i.i.i.i39 = icmp eq i8 %i.ej, 0
  %i.ek = getelementptr inbounds nuw i8, ptr %.116.i.i.i38, i64 240
  br i1 %.not.i.i.i.i39, label %bb.n, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit40, !llvm.loop !215

.critedge.loopexit23.i.i.i35:                     ; preds = %bb.m
  %i.el = zext i8 %i.dz to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit40

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit40: ; preds = %.lr.ph.i.i.i32, %bb.n, %.critedge.loopexit23.i.i.i35, %bb.l
  %.sroa.11.3 = phi i32 [ 0, %bb.n ], [ %i.dq, %bb.l ], [ %i.el, %.critedge.loopexit23.i.i.i35 ], [ %i.dq, %.lr.ph.i.i.i32 ] ; 2 uses
  %.sroa.0.3 = phi ptr [ %.116.i.i.i38, %bb.n ], [ %.sroa.0.1122, %bb.l ], [ %i.dv, %.critedge.loopexit23.i.i.i35 ], [ %.sroa.0.1122, %.lr.ph.i.i.i32 ] ; 2 uses
  %i.em = icmp ne ptr %.sroa.0.3, %2
  %i.en = icmp ne i32 %.sroa.11.3, %3
  %.not3.i6 = select i1 %i.em, i1 true, i1 %i.en
  br i1 %.not3.i6, label %bb.e, label %.preheader, !llvm.loop !562

bb.o:                                             ; preds = %.lr.ph129, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit67
  %.sroa.1189.1128 = phi i32 [ %.sroa.1189.0.lcssa, %.lr.ph129 ], [ %.sroa.1189.3, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit67 ] ; 3 uses
  %.sroa.082.1127 = phi ptr [ %.sroa.082.0.lcssa, %.lr.ph129 ], [ %.sroa.082.3, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit67 ] ; 7 uses
  %i.eo = and i32 %.sroa.1189.1128, 255
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.082.1127, i64 16
  %i.er = getelementptr inbounds nuw [32 x i8], ptr %i.eq, i64 %i.ep ; 5 uses
  %i.es = load i32, ptr %i.er, align 8, !tbaa !172 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.ev = load i8, ptr %i.eu, align 8, !tbaa !105
  %.not.i.i45 = icmp ne i8 %i.ev, 11
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 17
  %i.ex = load i8, ptr %i.ew, align 1, !range !104
  %i.ey = trunc nuw i8 %i.ex to i1
  %or.cond.i.i46 = select i1 %.not.i.i45, i1 true, i1 %i.ey
  br i1 %or.cond.i.i46, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ez = tail call noundef i64 @_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi(ptr noundef nonnull align 8 dereferenceable(24) %i.et, i32 noundef %i.es)
  br label %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit51"

bb.q:                                             ; preds = %bb.o
  %i.fa = getelementptr inbounds nuw i8, ptr %i.er, i64 18
  %i.fb = load i8, ptr %i.fa, align 2             ; 2 uses
  %i.fc = and i8 %i.fb, 2
  %.not6.i.i47 = icmp eq i8 %i.fc, 0
  br i1 %.not6.i.i47, label %bb.r, label %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit51"

bb.r:                                             ; preds = %bb.q
  %i.fd = or i32 %i.es, 1
  %i.fe = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.fd, i1 true)
  %i.ff = xor i32 %i.fe, 31
  %i.fg = mul nuw nsw i32 %i.ff, 9
  %i.fh = add nuw nsw i32 %i.fg, 73
  %i.fi = lshr i32 %i.fh, 6
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = and i8 %i.fb, 4
  %.not7.i.i49 = icmp eq i8 %i.fk, 0
  %i.fl = load ptr, ptr %i.et, align 8, !tbaa !13 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !69
  %..i.i50 = select i1 %.not7.i.i49, i64 24, i64 104
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %..i.i50
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = tail call noundef i64 %i.fo(ptr noundef nonnull align 8 dereferenceable(8) %i.fl), !inline_history !561 ; 2 uses
  %i.fq = trunc i64 %i.fp to i32
  %i.fr = or i32 %i.fq, 1
  %i.fs = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.fr, i1 true)
  %i.ft = xor i32 %i.fs, 31
  %i.fu = mul nuw nsw i32 %i.ft, 9
  %i.fv = add nuw nsw i32 %i.fu, 73
  %i.fw = lshr i32 %i.fv, 6
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = add i64 %i.as, %i.fj
  %i.fz = add i64 %i.fy, %i.fp
  %i.ga = add i64 %i.fz, %i.fx
  br label %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit51"

"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit51": ; preds = %bb.p, %bb.q, %bb.r
  %.0.i.i48 = phi i64 [ %i.ez, %bb.p ], [ %i.ga, %bb.r ], [ 0, %bb.q ]
  %i.gb = load i64, ptr %4, align 8, !tbaa !148
  %i.gc = add i64 %i.gb, %.0.i.i48
  store i64 %i.gc, ptr %4, align 8, !tbaa !148
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.082.1127, i64 11
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !13
  %.not.i.i52 = icmp eq i8 %i.ge, 0
  br i1 %.not.i.i52, label %.thread.i.i63, label %bb.s

bb.s:                                             ; preds = %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit51"
  %i.gf = add nsw i32 %.sroa.1189.1128, 1         ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.082.1127, i64 10
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !13
  %i.gi = zext i8 %i.gh to i32
  %i.gj = icmp eq i32 %i.gf, %i.gi
  br i1 %i.gj, label %.lr.ph.i.i.i59, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit67

.lr.ph.i.i.i59:                                   ; preds = %bb.s, %bb.t
  %.01521.i.i.i60 = phi ptr [ %i.gk, %bb.t ], [ %.sroa.082.1127, %bb.s ] ; 2 uses
  %i.gk = load ptr, ptr %.01521.i.i.i60, align 8, !tbaa !95 ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 11
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !13
  %.not17.i.i.i61 = icmp eq i8 %i.gm, 0
  br i1 %.not17.i.i.i61, label %bb.t, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit67

bb.t:                                             ; preds = %.lr.ph.i.i.i59
  %i.gn = getelementptr inbounds nuw i8, ptr %.01521.i.i.i60, i64 8
  %i.go = load i8, ptr %i.gn, align 8, !tbaa !13  ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gk, i64 10
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !13
  %i.gr = icmp eq i8 %i.go, %i.gq
  br i1 %i.gr, label %.lr.ph.i.i.i59, label %.critedge.loopexit23.i.i.i62, !llvm.loop !214

.thread.i.i63:                                    ; preds = %"_ZZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEvENK3$_0clEiRKNS2_9ExtensionE.exit51"
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.082.1127, i64 240
  %i.gt = add i32 %.sroa.1189.1128, 1
  %i.gu = and i32 %i.gt, 255
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.gv
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.thread.i.i63
  %.116.in.i.i.i64 = phi ptr [ %i.gw, %.thread.i.i63 ], [ %i.gz, %bb.u ]
  %.116.i.i.i65 = load ptr, ptr %.116.in.i.i.i64, align 8, !tbaa !95 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.116.i.i.i65, i64 11
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !13
  %.not.i.i.i.i66 = icmp eq i8 %i.gy, 0
  %i.gz = getelementptr inbounds nuw i8, ptr %.116.i.i.i65, i64 240
  br i1 %.not.i.i.i.i66, label %bb.u, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit67, !llvm.loop !215

.critedge.loopexit23.i.i.i62:                     ; preds = %bb.t
  %i.ha = zext i8 %i.go to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit67

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit67: ; preds = %.lr.ph.i.i.i59, %bb.u, %.critedge.loopexit23.i.i.i62, %bb.s
  %.sroa.082.3 = phi ptr [ %.116.i.i.i65, %bb.u ], [ %.sroa.082.1127, %bb.s ], [ %i.gk, %.critedge.loopexit23.i.i.i62 ], [ %.sroa.082.1127, %.lr.ph.i.i.i59 ] ; 2 uses
  %.sroa.1189.3 = phi i32 [ 0, %bb.u ], [ %i.gf, %bb.s ], [ %i.ha, %.critedge.loopexit23.i.i.i62 ], [ %i.gf, %.lr.ph.i.i.i59 ] ; 2 uses
  %i.hb = icmp ne ptr %.sroa.082.3, %2
  %i.hc = icmp ne i32 %.sroa.1189.3, %3
  %.not3.i44 = select i1 %i.hb, i1 true, i1 %i.hc
  br i1 %.not3.i44, label %bb.o, label %._crit_edge, !llvm.loop !563

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit67, %.preheader
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #26

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { nofree nounwind }
attributes #22 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { cold nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #32 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #35 = { nounwind }
attributes #36 = { cold }
attributes #37 = { noreturn nounwind }
attributes #38 = { builtin allocsize(0) }
attributes #39 = { builtin nounwind }
attributes #40 = { cold nounwind }
attributes #41 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN6google8protobuf8internal24GeneratedExtensionFinderE", !9, i64 0}
!9 = !{!"p1 _ZTSN6google8protobuf11MessageLiteE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{i64 0, i64 8, !12, i64 8, i64 4, !3, i64 12, i64 1, !13, i64 13, i64 1, !14, i64 14, i64 1, !13, i64 15, i64 1, !16, i64 16, i64 16, !13, i64 32, i64 8, !18, i64 40, i64 8, !20}
!12 = !{!9, !9, i64 0}
!13 = !{!5, !5, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"bool", !5, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"_ZTSN6google8protobuf8internal14LazyAnnotationE", !5, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 _ZTSN6google8protobuf15FieldDescriptorE", !10, i64 0}
!20 = !{!10, !10, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 _ZTSN4absl12lts_2025051213flat_hash_setIN6google8protobuf8internal13ExtensionInfoENS4_12_GLOBAL__N_115ExtensionHasherENS6_11ExtensionEqESaIS5_EEE", !10, i64 0}
!23 = !{!24, !25, i64 0}
!24 = !{!"_ZTSN4absl12lts_2025051218container_internal12CommonFieldsE", !25, i64 0, !26, i64 8, !5, i64 16}
!25 = !{!"long", !5, i64 0}
!26 = !{!"_ZTSN4absl12lts_2025051218container_internal13HashtableSizeE", !25, i64 0}
!27 = !{!26, !25, i64 0}
!28 = !{!29, !9, i64 0}
!29 = !{!"_ZTSN6google8protobuf8internal13ExtensionInfoE", !9, i64 0, !4, i64 8, !5, i64 12, !15, i64 13, !15, i64 14, !15, i64 14, !17, i64 15, !5, i64 16, !19, i64 32, !10, i64 40}
!30 = !{}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm: argument 0"}
!33 = distinct !{!33, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm"}
!34 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!35 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!"branch_weights", i32 -294967296, i32 2002000, i32 2001000, i32 2000000}
!39 = !{!29, !4, i64 8}
!40 = !{!29, !5, i64 12}
!41 = !{!29, !15, i64 13}
!42 = !{!"branch_weights", i32 1, i32 1048575}
!43 = !{!44, !46, !48, !50, !52, !54}
!44 = distinct !{!44, !45, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS6_12_GLOBAL__N_115ExtensionHasherENS9_11ExtensionEqESaIS7_EE30find_or_prepare_insert_non_sooIS7_EESt4pairINSD_8iteratorEbERKT_: argument 0"}
!45 = distinct !{!45, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS6_12_GLOBAL__N_115ExtensionHasherENS9_11ExtensionEqESaIS7_EE30find_or_prepare_insert_non_sooIS7_EESt4pairINSD_8iteratorEbERKT_"}
!46 = distinct !{!46, !47, !"_ZN4absl12lts_2025051218container_internal14DecomposeValueINS1_12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS7_12_GLOBAL__N_115ExtensionHasherENSA_11ExtensionEqESaIS8_EE19EmplaceDecomposableERKS8_EEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalISJ_EEEEOSI_OSJ_: argument 0"}
!47 = distinct !{!47, !"_ZN4absl12lts_2025051218container_internal14DecomposeValueINS1_12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS7_12_GLOBAL__N_115ExtensionHasherENSA_11ExtensionEqESaIS8_EE19EmplaceDecomposableERKS8_EEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalISJ_EEEEOSI_OSJ_"}
!48 = distinct !{!48, !49, !"_ZN4absl12lts_2025051218container_internal17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEE5applyINS1_12raw_hash_setIS7_NS5_12_GLOBAL__N_115ExtensionHasherENSA_11ExtensionEqESaIS6_EE19EmplaceDecomposableEJRKS6_EEEDTclsr4absl18container_internalE14DecomposeValueclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSI_DpOSJ_: argument 0"}
!49 = distinct !{!49, !"_ZN4absl12lts_2025051218container_internal17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEE5applyINS1_12raw_hash_setIS7_NS5_12_GLOBAL__N_115ExtensionHasherENSA_11ExtensionEqESaIS6_EE19EmplaceDecomposableEJRKS6_EEEDTclsr4absl18container_internalE14DecomposeValueclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSI_DpOSJ_"}
!50 = distinct !{!50, !51, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEEvE5applyINS1_12raw_hash_setIS8_NS6_12_GLOBAL__N_115ExtensionHasherENSC_11ExtensionEqESaIS7_EE19EmplaceDecomposableEJRKS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_: argument 0"}
!51 = distinct !{!51, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEEvE5applyINS1_12raw_hash_setIS8_NS6_12_GLOBAL__N_115ExtensionHasherENSC_11ExtensionEqESaIS7_EE19EmplaceDecomposableEJRKS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_"}
!52 = distinct !{!52, !53, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS6_12_GLOBAL__N_115ExtensionHasherENS9_11ExtensionEqESaIS7_EE7emplaceIJRKS7_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSD_8iteratorEbEDpOSI_: argument 0"}
!53 = distinct !{!53, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS6_12_GLOBAL__N_115ExtensionHasherENS9_11ExtensionEqESaIS7_EE7emplaceIJRKS7_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSD_8iteratorEbEDpOSI_"}
!54 = distinct !{!54, !55, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS6_12_GLOBAL__N_115ExtensionHasherENS9_11ExtensionEqESaIS7_EE6insertIS7_Li0EEESt4pairINSD_8iteratorEbERKT_: argument 0"}
!55 = distinct !{!55, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS6_12_GLOBAL__N_115ExtensionHasherENS9_11ExtensionEqESaIS7_EE6insertIS7_Li0EEESt4pairINSD_8iteratorEbERKT_"}
!56 = !{!57, !59, !61, !46, !48, !50, !52, !54}
!57 = distinct !{!57, !58, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS6_12_GLOBAL__N_115ExtensionHasherENS9_11ExtensionEqESaIS7_EE30find_or_prepare_insert_non_sooIS7_EESt4pairINSD_8iteratorEbERKT_: argument 0"}
!58 = distinct !{!58, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS6_12_GLOBAL__N_115ExtensionHasherENS9_11ExtensionEqESaIS7_EE30find_or_prepare_insert_non_sooIS7_EESt4pairINSD_8iteratorEbERKT_"}
!59 = distinct !{!59, !60, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS6_12_GLOBAL__N_115ExtensionHasherENS9_11ExtensionEqESaIS7_EE22find_or_prepare_insertIS7_EESt4pairINSD_8iteratorEbERKT_: argument 0"}
!60 = distinct !{!60, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS6_12_GLOBAL__N_115ExtensionHasherENS9_11ExtensionEqESaIS7_EE22find_or_prepare_insertIS7_EESt4pairINSD_8iteratorEbERKT_"}
!61 = distinct !{!61, !62, !"_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS6_12_GLOBAL__N_115ExtensionHasherENS9_11ExtensionEqESaIS7_EE19EmplaceDecomposableclIS7_JRKS7_EEESt4pairINSD_8iteratorEbERKT_DpOT0_: argument 0"}
!62 = distinct !{!62, !"_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf8internal13ExtensionInfoEEENS6_12_GLOBAL__N_115ExtensionHasherENS9_11ExtensionEqESaIS7_EE19EmplaceDecomposableclIS7_JRKS7_EEESt4pairINSD_8iteratorEbERKT_DpOT0_"}
!63 = !{!64, !57, !59, !61, !46, !48, !50, !52, !54}
!64 = distinct !{!64, !65, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm: argument 0"}
!65 = distinct !{!65, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm"}
!66 = !{!61, !46, !48, !50, !52, !54}
!67 = !{!29, !17, i64 15}
!68 = !{!29, !10, i64 40}
!69 = !{!70, !70, i64 0}
!70 = !{!"vtable pointer", !6, i64 0}
!71 = distinct !{null}
!72 = !{!73, !74, i64 8}
!73 = !{!"_ZTSN6google8protobuf8internal9ClassDataE", !9, i64 0, !74, i64 8, !10, i64 16, !10, i64 24, !75, i64 32, !4, i64 48, !15, i64 52, !15, i64 53}
!74 = !{!"p1 _ZTSN6google8protobuf8internal16TcParseTableBaseE", !10, i64 0}
!75 = !{!"_ZTSN6google8protobuf8internal14MessageCreatorE", !4, i64 0, !76, i64 4, !5, i64 5, !5, i64 8}
!76 = !{!"_ZTSN6google8protobuf8internal14MessageCreator3TagE", !5, i64 0}
!77 = !{!78, !82, i64 80}
!78 = !{!"_ZTSN6google8protobuf8internal13ClassDataFullE", !73, i64 0, !79, i64 56, !80, i64 64, !81, i64 72, !82, i64 80, !10, i64 88}
!79 = !{!"p1 _ZTSN6google8protobuf10ReflectionE", !10, i64 0}
!80 = !{!"p1 _ZTSN6google8protobuf10DescriptorE", !10, i64 0}
!81 = !{!"p1 _ZTSN6google8protobuf8internal15DescriptorTableE", !10, i64 0}
!82 = !{!"p1 _ZTSN6google8protobuf8internal17DescriptorMethodsE", !10, i64 0}
!83 = !{!84, !10, i64 16}
!84 = !{!"_ZTSN6google8protobuf8internal17DescriptorMethodsE", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!85 = !{!74, !74, i64 0}
!86 = !{!87, !88, i64 2}
!87 = !{!"_ZTSN6google8protobuf8internal12ExtensionSetE", !88, i64 0, !88, i64 2, !5, i64 8}
!88 = !{!"short", !5, i64 0}
!89 = !{!90, !91, i64 0}
!90 = !{!"_ZTSN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEEE", !91, i64 0, !92, i64 8, !25, i64 16}
!91 = !{!"p1 _ZTSN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEEE", !10, i64 0}
!92 = !{!"_ZTSN4absl12lts_2025051218container_internal15CompressedTupleIJNS1_19key_compare_adapterISt4lessIiEiE15checked_compareESaISt4pairIKiN6google8protobuf8internal12ExtensionSet9ExtensionEEEPNS1_10btree_nodeINS1_10map_paramsIiSE_S5_SG_Li256ELb0EEEEEEEE", !93, i64 0}
!93 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJNS1_19key_compare_adapterISt4lessIiEiE15checked_compareESaISt4pairIKiN6google8protobuf8internal12ExtensionSet9ExtensionEEEPNS1_10btree_nodeINS1_10map_paramsIiSG_S7_SI_Li256ELb0EEEEEEEESt16integer_sequenceImJLm0ELm1ELm2EEELb1EEE", !94, i64 0}
!94 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple7StorageIPNS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEELm2ELb0EEE", !91, i64 0}
!95 = !{!91, !91, i64 0}
!96 = distinct !{!96, !37}
!97 = distinct !{!97, !37}
!98 = distinct !{!98, !37}
!99 = !{!87, !88, i64 0}
!100 = !{!90, !25, i64 16}
!101 = !{!102, !15, i64 9}
!102 = !{!"_ZTSN6google8protobuf8internal12ExtensionSet9ExtensionE", !5, i64 0, !5, i64 8, !15, i64 9, !15, i64 10, !15, i64 10, !15, i64 10, !15, i64 11, !103, i64 12, !19, i64 16}
!103 = !{!"_ZTSN6google8protobuf8internal12ExtensionSet16TrivialAtomicIntE", !5, i64 0}
!104 = !{i8 0, i8 2}
!105 = !{!102, !5, i64 8}
!106 = !{!107, !107, i64 0}
!107 = !{!"_ZTSN6google8protobuf8internal14WireFormatLite7CppTypeE", !5, i64 0}
!108 = distinct !{!108, !37}
!109 = !{!110, !4, i64 0}
!110 = !{!"_ZTSN6google8protobuf8internal12ExtensionSet8KeyValueE", !4, i64 0, !102, i64 8}
!111 = distinct !{!111, !37}
!112 = distinct !{!112, !37, !113, !114}
!113 = !{!"llvm.loop.isvectorized", i32 1}
!114 = !{!"llvm.loop.unroll.runtime.disable"}
!115 = distinct !{!115, !37, !114, !113}
!116 = !{!117, !4, i64 4}
!117 = !{!"_ZTSN6google8protobuf8internal6SooRepILm8EEE", !118, i64 0, !4, i64 4, !5, i64 8}
!118 = !{!"_ZTSN6google8protobuf8internal30TaggedInternalMetadataResolverILj1EEE", !4, i64 0}
!119 = !{!120, !4, i64 8}
!120 = !{!"_ZTSN6google8protobuf8internal20RepeatedPtrFieldBaseE", !10, i64 0, !4, i64 8, !121, i64 12}
!121 = !{!"_ZTSN6google8protobuf8internal30TaggedInternalMetadataResolverILj0EEE", !4, i64 0}
!122 = !{!123, !25, i64 8}
!123 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !124, i64 0, !25, i64 8, !5, i64 16}
!124 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !125, i64 0}
!125 = !{!"p1 omnipotent char", !10, i64 0}
!126 = !{!123, !125, i64 0}
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v4i32
!330 = !{!"_ZTSN6google8protobuf8internal16TcParseTableBaseE", !88, i64 0, !88, i64 2, !4, i64 4, !5, i64 8, !5, i64 9, !88, i64 10, !4, i64 12, !4, i64 16, !88, i64 20, !88, i64 22, !4, i64 24, !331, i64 32, !10, i64 40, !10, i64 48}
!331 = !{!"p1 _ZTSN6google8protobuf8internal9ClassDataE", !10, i64 0}
!332 = !{!333, !4, i64 88}
!333 = !{!"_ZTSN6google8protobuf8internal12ParseContextE", !334, i64 0, !4, i64 88, !4, i64 92, !336, i64 96}
!334 = !{!"_ZTSN6google8protobuf8internal18EpsCopyInputStreamE", !125, i64 0, !125, i64 8, !125, i64 16, !4, i64 24, !4, i64 28, !335, i64 32, !5, i64 40, !25, i64 72, !4, i64 80, !4, i64 84}
!335 = !{!"p1 _ZTSN6google8protobuf2io19ZeroCopyInputStreamE", !10, i64 0}
!336 = !{!"_ZTSN6google8protobuf8internal12ParseContext4DataE", !337, i64 0, !338, i64 8}
!337 = !{!"p1 _ZTSN6google8protobuf14DescriptorPoolE", !10, i64 0}
!338 = !{!"p1 _ZTSN6google8protobuf14MessageFactoryE", !10, i64 0}
!339 = !{!333, !4, i64 92}
!340 = !{!334, !4, i64 80}
!341 = !{!334, !125, i64 0}
!342 = !{!334, !125, i64 8}
!343 = !{!334, !4, i64 28}
!344 = distinct !{!344, !37}
!345 = !{ptr @_ZN6google8protobuf8internal12ExtensionSet14MutableMessageEPNS0_5ArenaEihRKNS0_11MessageLiteEPKNS0_15FieldDescriptorE}
!346 = !{i64 0, i64 8, !347, i64 8, i64 8, !348}
!347 = !{!337, !337, i64 0}
!348 = !{!338, !338, i64 0}
!349 = !{!334, !4, i64 84}
!350 = !{!334, !125, i64 16}
!351 = !{!334, !25, i64 72}
!352 = distinct !{!352, !37}
!353 = distinct !{!353, !37}
!354 = distinct !{!354, !37}
!355 = distinct !{!355, !37}
!356 = distinct !{!356, !37}
!357 = !{!358, !125, i64 0}
!358 = !{!"_ZTSN6google8protobuf2io19EpsCopyOutputStreamE", !125, i64 0, !125, i64 8, !5, i64 16, !359, i64 48, !15, i64 56, !15, i64 57, !15, i64 58, !15, i64 59}
!359 = !{!"p1 _ZTSN6google8protobuf2io20ZeroCopyOutputStreamE", !10, i64 0}
!360 = !{!"branch_weights", i32 1, i32 1999}
!361 = !{!"branch_weights", i32 0, i32 1}
!362 = distinct !{!362, !37}
!363 = distinct !{!363, !37}
!364 = distinct !{!364, !37}
!365 = distinct !{!365, !37}
!366 = distinct !{!366, !37}
!367 = distinct !{!367, !37}
!368 = distinct !{!368, !37}
!369 = distinct !{!369, !37}
!370 = distinct !{!370, !37}
!371 = distinct !{!371, !37}
!372 = distinct !{!372, !37}
!373 = distinct !{!373, !37}
!374 = distinct !{!374, !37}
!375 = distinct !{!375, !37}
!376 = distinct !{!376, !37}
!377 = distinct !{!377, !37}
!378 = distinct !{!378, !37}
!379 = distinct !{!379, !37}
!380 = distinct !{!380, !37}
!381 = distinct !{!381, !37}
!382 = distinct !{!382, !37}
!383 = distinct !{!383, !37}
!384 = distinct !{!384, !37}
!385 = distinct !{!385, !37}
!386 = distinct !{!386, !37}
!387 = distinct !{!387, !37}
!388 = distinct !{!388, !37}
!389 = distinct !{!389, !37}
!390 = distinct !{!390, !37}
!391 = distinct !{!391, !37}
!392 = distinct !{!392, !37}
!393 = distinct !{!393, !37}
!394 = distinct !{!394, !37}
!395 = distinct !{!395, !37}
!396 = !{!125, !125, i64 0}
!397 = distinct !{!397, !37}
!398 = distinct !{!398, !37}
!399 = distinct !{!399, !37}
!400 = distinct !{!400, !37}
!401 = distinct !{!401, !37}
!402 = distinct !{!402, !37}
!403 = distinct !{!403, !37}
!404 = distinct !{!404, !37}
!405 = distinct !{!405, !37}
!406 = distinct !{!406, !37}
!407 = distinct !{!407, !37}
!408 = distinct !{!408, !37}
!409 = distinct !{!409, !37}
!410 = distinct !{!410, !37}
!411 = distinct !{!411, !37}
!412 = distinct !{!412, !37}
!413 = distinct !{!413, !37}
!414 = distinct !{!414, !37}
!415 = distinct !{!415, !37}
!416 = distinct !{!416, !37}
!417 = distinct !{!417, !37}
!418 = distinct !{!418, !37}
!419 = distinct !{!419, !37}
!420 = distinct !{!420, !37}
!421 = distinct !{!421, !37}
!422 = distinct !{null}
!423 = distinct !{!423, !37}
!424 = distinct !{null}
!425 = distinct !{!425, !37}
!426 = !{!427, !429}
!427 = distinct !{!427, !428, !"_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13insert_uniqueIiJSD_EEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbERKT_DpOT0_: argument 0"}
!428 = distinct !{!428, !"_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13insert_uniqueIiJSD_EEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbERKT_DpOT0_"}
!429 = distinct !{!429, !430, !"_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEE6insertEOSE_: argument 0"}
!430 = distinct !{!430, !"_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEE6insertEOSE_"}
!431 = !{!432, !434}
!432 = distinct !{!432, !433, !"_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE17lower_bound_equalIiEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbERKT_: argument 0"}
!433 = distinct !{!433, !"_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE17lower_bound_equalIiEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbERKT_"}
!434 = distinct !{!434, !435, !"_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11equal_rangeIiEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESN_ERKT_: argument 0"}
!435 = distinct !{!435, !"_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11equal_rangeIiEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESN_ERKT_"}
!436 = !{!434}
!437 = !{!438, !25, i64 0}
!438 = !{!"_ZTSSt4pairImN4absl12lts_2025051218container_internal14btree_iteratorINS2_10btree_nodeINS2_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaIS_IKiSA_EELi256ELb0EEEEERSE_PSE_EEE", !25, i64 0, !318, i64 8}
!439 = !{!440, !440, i64 0}
!440 = !{!"p1 _ZTSN6google8protobuf8internal25RepeatedPrimitiveDefaultsE", !10, i64 0}
!441 = !{!442, !442, i64 0}
!442 = !{!"p1 _ZTSN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !10, i64 0}
!443 = distinct !{!443, !37}
!444 = distinct !{null, null, null, ptr @_ZNK6google8protobuf8internal12ExtensionSet9Extension22MessageSetItemByteSizeEi}
!445 = distinct !{!445, !37}
!446 = distinct !{!446, !37}
!447 = distinct !{!447, !37}
!448 = !{!449, !449, i64 0}
!449 = !{!"_ZTSN4absl12lts_2025051218container_internal6ctrl_tE", !5, i64 0}
!450 = distinct !{!450, !37}
!451 = distinct !{!451, !37}
!452 = distinct !{!452, !37}
!453 = distinct !{!453, !37}
!454 = distinct !{!454, !37}
!455 = distinct !{!455, !37}
!456 = distinct !{!456, !37}
!457 = distinct !{!457, !37}
!458 = distinct !{!458, !37}
!459 = !{!75, !4, i64 0}
!460 = !{!75, !76, i64 4}
!461 = distinct !{null}
!462 = !{i64 6102534}
!463 = distinct !{!463, !37}
!464 = distinct !{!464, !37}
!465 = distinct !{!465, !37}
!466 = distinct !{!466, !37}
!467 = distinct !{!467, !37}
!468 = !{i64 8}
!469 = distinct !{!469, !37}
!470 = distinct !{!470, !37}
!471 = distinct !{!471, !37}
!472 = !{!473, !474, i64 8}
!473 = !{!"_ZTSZN6google8protobuf8internal12ExtensionSet21InternalMergeFromSlowEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S4_E3$_0", !9, i64 0, !474, i64 8, !140, i64 16, !474, i64 24, !140, i64 32}
!474 = !{!"p1 _ZTSN6google8protobuf8internal12ExtensionSetE", !10, i64 0}
!475 = !{!473, !140, i64 16}
!476 = !{!473, !9, i64 0}
!477 = !{!473, !140, i64 32}
!478 = distinct !{!478, !37}
!479 = distinct !{!479, !37}
!480 = distinct !{!480, !37}
!481 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
!482 = !{!483, !483, i64 0}
!483 = !{!"p1 _ZTSN6google8protobuf13RepeatedFieldIiEE", !10, i64 0}
!484 = !{!485, !485, i64 0}
!485 = !{!"p1 _ZTSN6google8protobuf13RepeatedFieldIlEE", !10, i64 0}
!486 = !{!487, !487, i64 0}
!487 = !{!"p1 _ZTSN6google8protobuf13RepeatedFieldIjEE", !10, i64 0}
!488 = !{!489, !489, i64 0}
!489 = !{!"p1 _ZTSN6google8protobuf13RepeatedFieldImEE", !10, i64 0}
!490 = !{!491, !491, i64 0}
!491 = !{!"p1 _ZTSN6google8protobuf13RepeatedFieldIbEE", !10, i64 0}
!492 = !{!493, !493, i64 0}
!493 = !{!"p1 _ZTSN6google8protobuf13RepeatedFieldIfEE", !10, i64 0}
!494 = !{!495, !495, i64 0}
!495 = !{!"p1 _ZTSN6google8protobuf13RepeatedFieldIdEE", !10, i64 0}
!496 = !{!497, !497, i64 0}
!497 = !{!"p1 _ZTSN6google8protobuf8internal16InternalMetadataE", !10, i64 0}
!498 = distinct !{null, null}
!499 = distinct !{!499, !37}
!500 = !{!501, !502, i64 0}
!501 = !{!"_ZTSZNK6google8protobuf8internal12ExtensionSet25_InternalSerializeAllImplEPKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamEE3$_0", !502, i64 0, !9, i64 8, !503, i64 16, !474, i64 24}
!502 = !{!"p2 omnipotent char", !198, i64 0}
!503 = !{!"p1 _ZTSN6google8protobuf2io19EpsCopyOutputStreamE", !10, i64 0}
!504 = distinct !{!504, !37}
!505 = !{!501, !9, i64 8}
!506 = !{!501, !503, i64 16}
!507 = distinct !{!507, !37}
!508 = distinct !{!508, !37}
!509 = !{!510, !502, i64 0}
!510 = !{!"_ZTSZNK6google8protobuf8internal12ExtensionSet49InternalSerializeMessageSetWithCachedSizesToArrayEPKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamEE3$_0", !502, i64 0, !9, i64 8, !503, i64 16, !474, i64 24}
!511 = distinct !{!511, !37}
!512 = !{!510, !9, i64 8}
!513 = !{!510, !503, i64 16}
!514 = distinct !{!514, !37}
!515 = distinct !{!515, !37}
!516 = distinct !{!516, !37}
!517 = distinct !{!517, !37}
!518 = distinct !{!518, !37}
!519 = distinct !{!519, !37}
!520 = distinct !{!520, !521}
!521 = !{!"llvm.loop.unroll.disable"}
!522 = distinct !{null}
!523 = distinct !{!523, !37}
!524 = distinct !{!524, !37}
!525 = distinct !{!525, !37}
!526 = distinct !{!526, !521}
!527 = distinct !{!527, !37}
!528 = !{!529, !4, i64 0}
!529 = !{!"_ZTSSt4pairIiN6google8protobuf8internal12ExtensionSet9ExtensionEE", !4, i64 0, !102, i64 8}
!530 = distinct !{!530, !521}
!531 = distinct !{!531, !37}
!532 = distinct !{!532, !37}
!533 = distinct !{!533, !37}
!534 = distinct !{!534, !521}
!535 = distinct !{!535, !37}
!536 = distinct !{!536, !37}
!537 = distinct !{!537, !37}
!538 = distinct !{!538, !521}
!539 = distinct !{!539, !521}
!540 = distinct !{!540, !37}
!541 = distinct !{!541, !37}
!542 = distinct !{!542, !37}
!543 = !{!544}
!544 = distinct !{!544, !545, !"_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13insert_uniqueIiJSD_EEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbERKT_DpOT0_: argument 0"}
!545 = distinct !{!545, !"_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13insert_uniqueIiJSD_EEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbERKT_DpOT0_"}
!546 = !{!547, !15, i64 16}
!547 = !{!"_ZTSSt4pairIN4absl12lts_2025051218container_internal14btree_iteratorINS2_10btree_nodeINS2_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaIS_IKiSA_EELi256ELb0EEEEERSE_PSE_EEbE", !318, i64 0, !15, i64 16}
!548 = distinct !{!548, !37}
!549 = distinct !{!549, !37}
!550 = distinct !{!550, !37}
!551 = distinct !{!551, !37}
!552 = distinct !{!552, !37}
!553 = distinct !{!553, !37}
!554 = distinct !{!554, !37}
!555 = distinct !{!555, !556}
!556 = !{!"llvm.loop.peeled.count", i32 1}
!557 = distinct !{!557, !521}
!558 = distinct !{!558, !521}
!559 = distinct !{!559, !37}
!560 = distinct !{!560, !37}
!561 = distinct !{null, ptr @_ZNK6google8protobuf8internal12ExtensionSet9Extension22MessageSetItemByteSizeEi}
!562 = distinct !{!562, !37}
!563 = distinct !{!563, !37}
end_hunk_1
