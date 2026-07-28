inline.NumInlined: 1797
inline.NumDeleted: 852
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13insert_uniqueIS9_JS9_EEESt4pairINS1_14btree_iteratorINS1_10btree_nodeISD_EERKS9_PSK_EEbERKT_DpOT0_:bb.a
bb.h:                                             ; preds = %bb.g, %bb.f
  %.222.i.i.i.i = phi i64 [ %.02031.i.i.i.i, %bb.f ], [ %i.o, %bb.g ] ; 3 uses
  %.2.i.i.i.i = phi i64 [ %i.y, %bb.f ], [ %.01932.i.i.i.i, %bb.g ] ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.2.i.i.i.i, %.222.i.i.i.i
  br i1 %.not.i.i.i.i, label %.loopexit.i, label %bb.e

.loopexit.i:                                      ; preds = %bb.h, %bb.d
  %.sroa.018.2.i.i.i.ph.i = phi i64 [ 0, %bb.d ], [ %.222.i.i.i.i, %bb.h ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 11
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !21, !noalias !242
  %.not.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.loopexit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 240
  %i.ac = and i64 %.sroa.018.2.i.i.i.ph.i, 255
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ac
  br label %bb.d

bb.j:                                             ; preds = %bb.g
  %i.ae = trunc i64 %i.o to i32
  br label %bb.l

bb.k:                                             ; preds = %.loopexit.i
  %i.af = trunc i64 %.sroa.018.2.i.i.i.ph.i to i32
  %i.ag = tail call { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE16internal_emplaceIJS9_EEENS1_14btree_iteratorINS1_10btree_nodeISD_EERKS9_PSJ_EESM_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %.sroa.02.0.i, i32 %i.af, ptr noundef nonnull align 8 dereferenceable(32) %3) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ag, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ag, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.fca.0.extract.sink = phi ptr [ %.fca.0.extract, %bb.k ], [ %.sroa.02.0.i, %bb.j ]
  %.fca.1.extract.sink = phi i32 [ %.fca.1.extract, %bb.k ], [ %i.ae, %bb.j ]
  %.sink = phi i8 [ 1, %bb.k ], [ 0, %bb.j ]
  store ptr %.fca.0.extract.sink, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.fca.1.extract.sink, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ah, align 8, !tbaa !245
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE16internal_emplaceIJS9_EEENS1_14btree_iteratorINS1_10btree_nodeISD_EERKS9_PSJ_EESM_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::container_internal::btree_iterator", align 8 ; 7 uses
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.c = load i8, ptr %i.b, align 1, !tbaa !21    ; 2 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %.thread.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert11 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %.pre12 = load i8, ptr %.phi.trans.insert11, align 1, !tbaa !21
  br label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.e = and i32 %2, 255
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %.11723.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !241 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.11723.i.i.i, i64 11
  %i.i = load i8, ptr %i.h, align 1, !tbaa !21    ; 2 uses
  %.not.i24.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i24.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_ELi256ELb0EEEEERKSA_PSG_EmmEv.exit

.lr.ph26.i.i.i:                                   ; preds = %.thread.i.i, %.lr.ph26.i.i.i
  %.11725.i.i.i = phi ptr [ %.117.i.i.i, %.lr.ph26.i.i.i ], [ %.11723.i.i.i, %.thread.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 10
  %i.k = load i8, ptr %i.j, align 1, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 240
  %i.m = zext i8 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %.117.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !241 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.117.i.i.i, i64 11
  %i.p = load i8, ptr %i.o, align 1, !tbaa !21    ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_ELi256ELb0EEEEERKSA_PSG_EmmEv.exit, !llvm.loop !248

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_ELi256ELb0EEEEERKSA_PSG_EmmEv.exit: ; preds = %.lr.ph26.i.i.i, %.thread.i.i
  %.pre = phi i8 [ %i.i, %.thread.i.i ], [ %i.p, %.lr.ph26.i.i.i ]
  %.117.lcssa.i.i.i = phi ptr [ %.11723.i.i.i, %.thread.i.i ], [ %.117.i.i.i, %.lr.ph26.i.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i, i64 10
  %i.r = load i8, ptr %i.q, align 1, !tbaa !21    ; 2 uses
  %i.s = zext i8 %i.r to i32
  store ptr %.117.lcssa.i.i.i, ptr %4, align 8
  store i32 %i.s, ptr %i.a, align 8, !tbaa !249
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_ELi256ELb0EEEEERKSA_PSG_EmmEv.exit
  %i.t = phi i8 [ %i.r, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_ELi256ELb0EEEEERKSA_PSG_EmmEv.exit ], [ %.pre12, %._crit_edge ] ; 3 uses
  %i.u = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_ELi256ELb0EEEEERKSA_PSG_EmmEv.exit ], [ %i.c, %._crit_edge ]
  %i.v = phi ptr [ %.117.lcssa.i.i.i, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_ELi256ELb0EEEEERKSA_PSG_EmmEv.exit ], [ %1, %._crit_edge ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 10 ; 3 uses
  %i.y = icmp eq i8 %i.t, %i.u
  br i1 %i.y, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.z = icmp ult i8 %i.t, 7
  br i1 %i.z, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.aa = shl nuw nsw i8 %i.t, 1
  %i.ab = tail call i8 @llvm.umin.i8(i8 %i.aa, i8 7) ; 2 uses
  %i.ac = shl nuw i8 %i.ab, 5
  %i.ad = or disjoint i8 %i.ac, 16
  %i.ae = zext i8 %i.ad to i64
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #29 ; 11 uses
  store ptr %i.af, ptr %i.af, align 8, !tbaa !241
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i8 0, ptr %i.ag, align 8, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 9
  store i8 0, ptr %i.ah, align 1, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 11
  store i8 %i.ab, ptr %i.ai, align 1, !tbaa !21
  store ptr %i.af, ptr %4, align 8, !tbaa !250
  %i.aj = load i8, ptr %i.x, align 1, !tbaa !21   ; 2 uses
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.ak, 5
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i.i.i
  %.not13.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not13.i.i.i, label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE16internal_emplaceIJS9_EEENS1_14btree_iteratorINS1_10btree_nodeISD_EERKS9_PSJ_EESM_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %.lr.ph.i.i.i4

.lr.ph.i.i.i4:                                    ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.015.i.i.i = phi ptr [ %i.bb, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i.i.i ], [ %i.an, %.lr.ph.preheader.i.i.i ] ; 5 uses
  %.01214.i.i.i = phi ptr [ %i.ba, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i.i.i ], [ %i.al, %.lr.ph.preheader.i.i.i ] ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 16 ; 3 uses
  store ptr %i.ao, ptr %.015.i.i.i, align 8, !tbaa !15
  %i.ap = load ptr, ptr %.01214.i.i.i, align 8, !tbaa !22 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 16 ; 5 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i4
  %i.as = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !18 ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  tail call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i64 %i.at, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.av, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i4
  store ptr %i.ap, ptr %.015.i.i.i, align 8, !tbaa !22
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !21
  store i64 %i.aw, ptr %i.ao, align 8, !tbaa !21
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !18
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.e
  %i.ax = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.at, %bb.e ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 8
  store i64 %i.ax, ptr %i.az, align 8, !tbaa !18
  store ptr %i.aq, ptr %.01214.i.i.i, align 8, !tbaa !22
  store i64 0, ptr %i.ay, align 8, !tbaa !18
  store i8 0, ptr %i.aq, align 8, !tbaa !21
  %i.ba = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 32
  %.not.i.i.i5 = icmp eq ptr %i.ba, %i.am
  br i1 %.not.i.i.i5, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit.loopexit.i.i, label %.lr.ph.i.i.i4, !llvm.loop !251

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit.loopexit.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i.i.i
  %.pre.i.i = load i8, ptr %i.x, align 1, !tbaa !21
  br label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE16internal_emplaceIJS9_EEENS1_14btree_iteratorINS1_10btree_nodeISD_EERKS9_PSJ_EESM_DpOT_ENKUlhE_clEh.exit

_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE16internal_emplaceIJS9_EEENS1_14btree_iteratorINS1_10btree_nodeISD_EERKS9_PSJ_EESM_DpOT_ENKUlhE_clEh.exit: ; preds = %bb.d, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit.loopexit.i.i
  %i.bc = phi i8 [ %.pre.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit.loopexit.i.i ], [ 0, %bb.d ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.af, i64 10
  store i8 %i.bc, ptr %i.bd, align 2, !tbaa !21
  store i8 0, ptr %i.x, align 1, !tbaa !21
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE16clear_and_deleteEPSE_PSC_(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w)
  store ptr %i.af, ptr %i.w, align 8, !tbaa !241
  store ptr %i.af, ptr %0, align 8, !tbaa !241
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISD_EERKS9_PSI_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %4)
  %.pre13 = load ptr, ptr %4, align 8, !tbaa !250
  br label %bb.g

bb.g:                                             ; preds = %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE16internal_emplaceIJS9_EEENS1_14btree_iteratorINS1_10btree_nodeISD_EERKS9_PSJ_EESM_DpOT_ENKUlhE_clEh.exit, %bb.f, %bb.b
  %i.be = phi ptr [ %i.af, %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE16internal_emplaceIJS9_EEENS1_14btree_iteratorINS1_10btree_nodeISD_EERKS9_PSJ_EESM_DpOT_ENKUlhE_clEh.exit ], [ %.pre13, %bb.f ], [ %i.v, %bb.b ] ; 5 uses
  %i.bf = load i32, ptr %i.a, align 8, !tbaa !249 ; 2 uses
  %i.bg = trunc i32 %i.bf to i8                   ; 2 uses
  %i.bh = and i32 %i.bf, 255                      ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 10 ; 3 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !21  ; 2 uses
  %i.bk = icmp ugt i8 %i.bj, %i.bg
  %i.bl = zext nneg i32 %i.bh to i64              ; 2 uses
  br i1 %i.bk, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE19transfer_n_backwardEmmmPSE_PSC_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bn = getelementptr [32 x i8], ptr %i.bm, i64 %i.bl ; 3 uses
  %narrow.i = sub nuw i8 %i.bj, %i.bg
  %i.bo = zext i8 %narrow.i to i64                ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.bo, 5
  %i.bp = getelementptr i8, ptr %i.bn, i64 32
  %i.bq = getelementptr [32 x i8], ptr %i.bp, i64 %i.bo
  %i.br = getelementptr i8, ptr %i.bn, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i.i, %.lr.ph.preheader.i.i
  %.017.i.i = phi ptr [ %i.bs, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i.i ], [ %i.bq, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01416.i.i = phi ptr [ %i.bt, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i.i ], [ %i.br, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.bs = getelementptr inbounds i8, ptr %.017.i.i, i64 -32 ; 3 uses
  %i.bt = getelementptr inbounds i8, ptr %.01416.i.i, i64 -32 ; 4 uses
  %i.bu = getelementptr inbounds i8, ptr %.017.i.i, i64 -16 ; 3 uses
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !15
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !22 ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %.01416.i.i, i64 -16 ; 5 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.by = getelementptr inbounds i8, ptr %.01416.i.i, i64 -24
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !18 ; 2 uses
  %i.ca = icmp ult i64 %i.bz, 16
  call void @llvm.assume(i1 %i.ca)
  %i.cb = add nuw nsw i64 %i.bz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bu, ptr noundef nonnull align 8 dereferenceable(1) %i.bw, i64 %i.cb, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  store ptr %i.bv, ptr %i.bs, align 8, !tbaa !22
  %i.cc = load i64, ptr %i.bw, align 8, !tbaa !21
  store i64 %i.cc, ptr %i.bu, align 8, !tbaa !21
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.h
  %i.cd = getelementptr inbounds i8, ptr %.01416.i.i, i64 -24 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !18
  %i.cf = getelementptr inbounds i8, ptr %.017.i.i, i64 -24
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !18
  store ptr %i.bw, ptr %i.bt, align 8, !tbaa !22
  store i64 0, ptr %i.cd, align 8, !tbaa !18
  store i8 0, ptr %i.bw, align 8, !tbaa !21
  %.not.i.i6 = icmp eq ptr %i.bt, %i.bn
  br i1 %.not.i.i6, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE19transfer_n_backwardEmmmPSE_PSC_.exit.i, label %.lr.ph.i.i, !llvm.loop !252

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE19transfer_n_backwardEmmmPSE_PSC_.exit.i: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i.i, %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %i.bl ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 3 uses
  store ptr %i.ci, ptr %i.ch, align 8, !tbaa !15
  %i.cj = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE19transfer_n_backwardEmmmPSE_PSC_.exit.i
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !18 ; 2 uses
  %i.co = icmp ult i64 %i.cn, 16
  call void @llvm.assume(i1 %i.co)
  %i.cp = add nuw nsw i64 %i.cn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ci, ptr noundef nonnull align 8 dereferenceable(1) %i.ck, i64 %i.cp, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10value_initIJS9_EEEvhPSC_DpOT_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE19transfer_n_backwardEmmmPSE_PSC_.exit.i
  store ptr %i.cj, ptr %i.ch, align 8, !tbaa !22
  %i.cq = load i64, ptr %i.ck, align 8, !tbaa !21
  store i64 %i.cq, ptr %i.ci, align 8, !tbaa !21
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10value_initIJS9_EEEvhPSC_DpOT_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10value_initIJS9_EEEvhPSC_DpOT_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.i
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !18
  store ptr %i.ck, ptr %3, align 8, !tbaa !22
  store i64 0, ptr %i.cr, align 8, !tbaa !18
  store i8 0, ptr %i.ck, align 8, !tbaa !21
  %i.cu = load i8, ptr %i.bi, align 1, !tbaa !21
  %i.cv = add i8 %i.cu, 1                         ; 3 uses
  store i8 %i.cv, ptr %i.bi, align 1, !tbaa !21
  %i.cw = getelementptr inbounds nuw i8, ptr %i.be, i64 11
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !21
  %.not.i18.i = icmp eq i8 %i.cx, 0
  br i1 %.not.i18.i, label %bb.j, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13emplace_valueIJS9_EEEvhPSC_DpOT_.exit

bb.j:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10value_initIJS9_EEEvhPSC_DpOT_.exit.i
  %i.cy = zext i8 %i.cv to i32
  %i.cz = add nuw nsw i32 %i.bh, 1                ; 2 uses
  %i.da = icmp samesign ult i32 %i.cz, %i.cy
  br i1 %i.da, label %.lr.ph.i.a, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13emplace_valueIJS9_EEEvhPSC_DpOT_.exit

.lr.ph.i.a:                                       ; preds = %bb.j
  %i.db = getelementptr inbounds nuw i8, ptr %i.be, i64 240 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.a
  %.019.i = phi i8 [ %i.cv, %.lr.ph.i.a ], [ %5, %bb.k ] ; 3 uses
  %5 = add i8 %.019.i, -1                         ; 3 uses
  %6 = zext i8 %5 to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %6
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !241 ; 2 uses
  %7 = zext i8 %.019.i to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %7
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !241
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i8 %.019.i, ptr %i.df, align 1, !tbaa !21
  %8 = zext i8 %5 to i32
  %9 = icmp samesign ult i32 %i.cz, %8
  br i1 %9, label %bb.k, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13emplace_valueIJS9_EEEvhPSC_DpOT_.exit, !llvm.loop !253

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13emplace_valueIJS9_EEEvhPSC_DpOT_.exit: ; preds = %bb.k, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10value_initIJS9_EEEvhPSC_DpOT_.exit.i, %bb.j
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !235
  %i.di = add i64 %i.dh, 1
  store i64 %i.di, ptr %i.dg, align 8, !tbaa !235
  %.sroa.0.0.copyload = load ptr, ptr %4, align 8
  %.sroa.2.0.copyload = load i32, ptr %i.a, align 8
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.2.0.copyload, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISD_EERKS9_PSI_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::container_internal::btree_iterator", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !241    ; 10 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !241  ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !254
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !21    ; 5 uses
  %.not112 = icmp eq i8 %i.f, 0
  br i1 %.not112, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add i8 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.i = zext i8 %i.g to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !241  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 10 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !21    ; 3 uses
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
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE23rebalance_right_to_leftEhPSE_PSC_(ptr noundef nonnull align 1 dereferenceable(1) %i.k, i8 noundef zeroext %.sroa.speculated99, ptr noundef nonnull %i.b, ptr noundef nonnull %i.v)
  %i.w = load i32, ptr %i.a, align 8, !tbaa !3
  %i.x = and i32 %i.w, 255
  %i.y = sub nsw i32 %i.x, %i.t                   ; 3 uses
  store i32 %i.y, ptr %i.a, align 8, !tbaa !3
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.aa = load i8, ptr %i.l, align 1, !tbaa !21
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.y, 1
  %i.ad = add nsw i32 %i.ac, %i.ab
  br label %.critedge.sink.split

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !21  ; 2 uses
  %i.ag = icmp ult i8 %i.f, %i.af
  br i1 %i.ag, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ah = add nuw i8 %i.f, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.aj = zext i8 %i.ah to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !241 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 10
  %i.an = load i8, ptr %i.am, align 1, !tbaa !21  ; 3 uses
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
  %i.av = load i8, ptr %i.au, align 2, !tbaa !21
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
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE23rebalance_left_to_rightEhPSE_PSC_(ptr noundef nonnull align 1 dereferenceable(1) %i.b, i8 noundef zeroext %.sroa.speculated, ptr noundef nonnull %i.al, ptr noundef nonnull %i.ba)
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !3   ; 2 uses
  %i.bc = load ptr, ptr %1, align 8, !tbaa !241
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 10
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !21
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.bk = zext i8 %i.f to i32
  store ptr %i.c, ptr %2, align 8, !tbaa !250
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !249
  call void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISD_EERKS9_PSI_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %2)
  %i.bm = load ptr, ptr %1, align 8, !tbaa !241   ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !241
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.bo = tail call noalias noundef nonnull dereferenceable(304) ptr @_Znwm(i64 noundef 304) #29 ; 6 uses
  store ptr %i.c, ptr %i.bo, align 8, !tbaa !241
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 240
  store i32 0, ptr %i.bp, align 8
  store ptr %i.b, ptr %i.bq, align 8, !tbaa !241
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 0, ptr %i.br, align 8, !tbaa !21
  store ptr %i.bo, ptr %i.b, align 8, !tbaa !241
  store ptr %i.bo, ptr %0, align 8, !tbaa !241
  %.pre = load ptr, ptr %1, align 8, !tbaa !241
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %i.bs = phi ptr [ %i.bm, %bb.m ], [ %i.b, %bb.l ], [ %.pre, %bb.n ] ; 4 uses
  %.082 = phi ptr [ %i.bn, %bb.m ], [ %i.c, %bb.l ], [ %i.bo, %bb.n ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 11
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !21
  %.not116 = icmp eq i8 %i.bu, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !21
  %i.bx = add i8 %i.bw, 1                         ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %.not116, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = call noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #29 ; 9 uses
  store ptr %.082, ptr %i.bz, align 8, !tbaa !241
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i8 %i.bx, ptr %i.ca, align 8, !tbaa !21
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 9
  store i8 0, ptr %i.cb, align 1, !tbaa !21
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 10
  store i8 0, ptr %i.cc, align 2, !tbaa !21
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 11
  store i8 7, ptr %i.cd, align 1, !tbaa !21
  %i.ce = load i32, ptr %i.a, align 8, !tbaa !3
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE5splitEiPSE_PSC_(ptr noundef nonnull align 1 dereferenceable(1) %i.bs, i32 noundef %i.ce, ptr noundef nonnull %i.bz, ptr noundef nonnull %i.by)
  %i.cf = load ptr, ptr %i.by, align 8, !tbaa !241
  %i.cg = load ptr, ptr %1, align 8, !tbaa !241
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !241
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.ci = call noalias noundef nonnull dereferenceable(304) ptr @_Znwm(i64 noundef 304) #29 ; 7 uses
  store ptr %.082, ptr %i.ci, align 8, !tbaa !241
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i8 %i.bx, ptr %i.cj, align 8, !tbaa !21
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 9
  store i8 0, ptr %i.ck, align 1, !tbaa !21
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 10
  store i8 0, ptr %i.cl, align 2, !tbaa !21
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 11
  store i8 0, ptr %i.cm, align 1, !tbaa !21
  %i.cn = load i32, ptr %i.a, align 8, !tbaa !3
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE5splitEiPSE_PSC_(ptr noundef nonnull align 1 dereferenceable(1) %i.bs, i32 noundef %i.cn, ptr noundef nonnull %i.ci, ptr noundef nonnull %i.by)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.0 = phi ptr [ %i.bz, %bb.q ], [ %i.bz, %bb.p ], [ %i.ci, %bb.r ]
  %i.co = load i32, ptr %i.a, align 8, !tbaa !3   ; 2 uses
  %i.cp = load ptr, ptr %1, align 8, !tbaa !241
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 10
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !21
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
  store ptr %.sink, ptr %1, align 8, !tbaa !241
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.j, %bb.e, %bb.s
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE16clear_and_deleteEPSE_PSC_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !21    ; 2 uses
  %.not76 = icmp eq i8 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.d = load i8, ptr %i.c, align 1, !tbaa !21    ; 3 uses
  br i1 %.not76, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = zext i8 %i.d to i64
  %i.g = shl nuw nsw i64 %i.f, 5
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %.not9.i = icmp eq i8 %i.d, 0
  br i1 %.not9.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i
  %.010.i = phi ptr [ %i.n, %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.i = load ptr, ptr %.010.i, align 8, !tbaa !22 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.010.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !21
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #25
  br label %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i

_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.010.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit.loopexit, label %.lr.ph.i, !llvm.loop !255

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit.loopexit: ; preds = %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i
  %.pre = load i8, ptr %i.a, align 1, !tbaa !21
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit.loopexit, %bb.b
  %i.o = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit.loopexit ], [ %i.b, %bb.b ] ; 2 uses
  %i.p = icmp eq i8 %i.o, 0
  %i.q = select i1 %i.p, i8 7, i8 %i.o
  %i.r = zext i8 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 5
  %i.t = or disjoint i64 %i.s, 16
  br label %.loopexit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.u = icmp eq i8 %i.d, 0
  br i1 %i.u, label %.loopexit.sink.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.v = load ptr, ptr %0, align 8, !tbaa !241
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04982 = phi ptr [ %i.x, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %i.w = getelementptr inbounds nuw i8, ptr %.04982, i64 240
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !241  ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 11
  %i.z = load i8, ptr %i.y, align 1, !tbaa !21
  %.not.i55 = icmp eq i8 %i.z, 0
  br i1 %.not.i55, label %.lr.ph, label %._crit_edge, !llvm.loop !256

._crit_edge:                                      ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !21
  %i.ac = zext i8 %i.ab to i64
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !241
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %._crit_edge
  %.147 = phi i64 [ %i.ac, %._crit_edge ], [ %.147.be, %.backedge ] ; 2 uses
  %.1 = phi ptr [ %i.ad, %._crit_edge ], [ %.1.be, %.backedge ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.1, i64 240
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.147
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !241 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 11
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !21
  %.not.i56 = icmp eq i8 %i.ai, 0
  br i1 %.not.i56, label %.lr.ph85, label %bb.e

.lr.ph85:                                         ; preds = %bb.d, %.lr.ph85
  %.15084 = phi ptr [ %i.ak, %.lr.ph85 ], [ %i.ag, %bb.d ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.15084, i64 240
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !241 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 11
  %i.am = load i8, ptr %i.al, align 1, !tbaa !21
  %.not.i57 = icmp eq i8 %i.am, 0
  br i1 %.not.i57, label %.lr.ph85, label %._crit_edge86, !llvm.loop !257

._crit_edge86:                                    ; preds = %.lr.ph85
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !21
  %i.ap = zext i8 %i.ao to i64
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !241
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge86, %bb.d
  %.251 = phi ptr [ %i.ak, %._crit_edge86 ], [ %i.ag, %bb.d ] ; 4 uses
  %.248 = phi i64 [ %i.ap, %._crit_edge86 ], [ %.147, %bb.d ] ; 2 uses
  %.2 = phi ptr [ %i.aq, %._crit_edge86 ], [ %.1, %bb.d ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.251, i64 10
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !21  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.251, i64 16 ; 2 uses
  %i.au = zext i8 %i.as to i64
  %i.av = shl nuw nsw i64 %i.au, 5
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  %.not9.i58 = icmp eq i8 %i.as, 0
  br i1 %.not9.i58, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit66, label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %bb.e, %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i63
  %.010.i61 = phi ptr [ %i.bc, %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i63 ], [ %i.at, %bb.e ] ; 3 uses
  %i.ax = load ptr, ptr %.010.i61, align 8, !tbaa !22 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.010.i61, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i62: ; preds = %.lr.ph.i60
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !21
  %i.bb = add i64 %i.ba, 1
  tail call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #25
  br label %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i63

_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i63: ; preds = %.lr.ph.i60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i62
  %i.bc = getelementptr inbounds nuw i8, ptr %.010.i61, i64 32 ; 2 uses
  %.not.i64 = icmp eq ptr %i.bc, %i.aw
  br i1 %.not.i64, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit66, label %.lr.ph.i60, !llvm.loop !255

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit66: ; preds = %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i63, %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %.251, i64 11
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !21  ; 2 uses
  %i.bf = icmp eq i8 %i.be, 0
  %i.bg = select i1 %i.bf, i8 7, i8 %i.be
  %i.bh = zext i8 %i.bg to i64
  %i.bi = shl nuw nsw i64 %i.bh, 5
  %i.bj = or disjoint i64 %i.bi, 16
  tail call void @_ZdlPvm(ptr noundef nonnull %.251, i64 noundef %i.bj) #25
  %i.bk = getelementptr inbounds nuw i8, ptr %.2, i64 10
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !21  ; 2 uses
  %i.bm = zext i8 %i.bl to i64
  %.not.not = icmp ult i64 %.248, %i.bm
  br i1 %.not.not, label %.backedge, label %.preheader77

.backedge:                                        ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit66, %bb.g
  %.147.be.in = phi i64 [ %.248, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit66 ], [ %i.ce, %bb.g ]
  %.1.be = phi ptr [ %.2, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit66 ], [ %i.bq, %bb.g ]
  %.147.be = add nuw nsw i64 %.147.be.in, 1
  br label %bb.d, !llvm.loop !258

.preheader77:                                     ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit66, %bb.f
  %i.bn = phi i8 [ %i.cd, %bb.f ], [ %i.bl, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit66 ] ; 2 uses
  %.3 = phi ptr [ %i.bq, %bb.f ], [ %.2, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit66 ] ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !21  ; 2 uses
  %i.bq = load ptr, ptr %.3, align 8, !tbaa !241  ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.3, i64 16 ; 2 uses
  %i.bs = zext i8 %i.bn to i64
  %i.bt = shl nuw nsw i64 %i.bs, 5
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bt
  %.not9.i67 = icmp eq i8 %i.bn, 0
  br i1 %.not9.i67, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit75, label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %.preheader77, %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i72
  %.010.i70 = phi ptr [ %i.ca, %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i72 ], [ %i.br, %.preheader77 ] ; 3 uses
  %i.bv = load ptr, ptr %.010.i70, align 8, !tbaa !22 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.010.i70, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i71: ; preds = %.lr.ph.i69
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !21
  %i.bz = add i64 %i.by, 1
  tail call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #25
  br label %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i72

_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i72: ; preds = %.lr.ph.i69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i71
  %i.ca = getelementptr inbounds nuw i8, ptr %.010.i70, i64 32 ; 2 uses
  %.not.i73 = icmp eq ptr %i.ca, %i.bu
  br i1 %.not.i73, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit75, label %.lr.ph.i69, !llvm.loop !255

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit75: ; preds = %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15set_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEDaPT_PS9_.exit.i72, %.preheader77
  tail call void @_ZdlPvm(ptr noundef nonnull %.3, i64 noundef 304) #25
  %i.cb = icmp eq ptr %i.bq, %i.v
  br i1 %i.cb, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit75
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 10
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !21  ; 2 uses
  %.not = icmp ult i8 %i.bp, %i.cd
  br i1 %.not, label %bb.g, label %.preheader77, !llvm.loop !259

bb.g:                                             ; preds = %bb.f
  %i.ce = zext i8 %i.bp to i64
  br label %.backedge

.loopexit.sink.split:                             ; preds = %bb.c, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit
  %.sink = phi i64 [ %i.t, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit ], [ 304, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef %.sink) #25
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15value_destroy_nEhhPSC_.exit75, %.loopexit.sink.split
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE23rebalance_right_to_leftEhPSE_PSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !21
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !21
  %i.f = zext i8 %i.e to i64
  %i.g = load ptr, ptr %0, align 8, !tbaa !241
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.c ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.f ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.l, ptr %i.i, align 8, !tbaa !15
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !22   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 5 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !18   ; 2 uses
  %i.r = icmp ult i64 %i.q, 16
  tail call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.q, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.s, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.m, ptr %i.i, align 8, !tbaa !22
  %i.t = load i64, ptr %i.n, align 8, !tbaa !21
  store i64 %i.t, ptr %i.l, align 8, !tbaa !21
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !18
  store ptr %i.n, ptr %i.k, align 8, !tbaa !22
  store i64 0, ptr %i.u, align 8, !tbaa !18
  store i8 0, ptr %i.n, align 8, !tbaa !21
  %i.x = zext i8 %1 to i32                        ; 3 uses
  %i.y = add nsw i32 %i.x, -1                     ; 3 uses
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.idx.i = shl nuw nsw i64 %i.z, 5
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx.i
  %.not13.i = icmp eq i32 %i.y, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit
  %i.ac = load i8, ptr %i.a, align 2, !tbaa !21
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.ad
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i, %.lr.ph.preheader.i
  %.015.i.pn = phi ptr [ %.015.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i ], [ %i.ae, %.lr.ph.preheader.i ] ; 3 uses
  %.01214.i = phi ptr [ %i.ar, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i ], [ %i.aa, %.lr.ph.preheader.i ] ; 6 uses
  %.015.i = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 32 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 48 ; 3 uses
  store ptr %i.af, ptr %.015.i, align 8, !tbaa !15
  %i.ag = load ptr, ptr %.01214.i, align 8, !tbaa !22 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i44

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !18 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i44: ; preds = %.lr.ph.i
  store ptr %i.ag, ptr %.015.i, align 8, !tbaa !22
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !21
  store i64 %i.an, ptr %i.af, align 8, !tbaa !21
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i44, %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 40
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !18
  store ptr %i.ah, ptr %.01214.i, align 8, !tbaa !22
  store i64 0, ptr %i.ao, align 8, !tbaa !18
  store i8 0, ptr %i.ah, align 8, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %.01214.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.ar, %i.ab
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit, label %.lr.ph.i, !llvm.loop !251

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit
  %i.as = load ptr, ptr %0, align 8, !tbaa !241
  %i.at = load i8, ptr %i.d, align 8, !tbaa !21
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %i.au ; 4 uses
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.z ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 3 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !15
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !22 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 5 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i45

bb.d:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !18 ; 2 uses
  %i.be = icmp ult i64 %i.bd, 16
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.bd, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bf, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i45: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !22
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !21
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !21
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit47

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit47: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i45
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !18
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !22
  store i64 0, ptr %i.bh, align 8, !tbaa !18
  store i8 0, ptr %i.ba, align 8, !tbaa !21
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 5 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !21  ; 2 uses
  %i.bm = zext i8 %i.bl to i32
  %i.bn = sub nsw i32 %i.bm, %i.x
  %i.bo = sext i32 %i.bn to i64
  %i.bp = zext i8 %1 to i64                       ; 3 uses
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.bp ; 2 uses
  %.idx.i48 = shl nuw nsw i64 %i.bo, 5
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.i48
  %.not13.i49 = icmp eq i8 %i.bl, %1
  br i1 %.not13.i49, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit57, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit47, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i55
  %.015.i52 = phi ptr [ %i.cf, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i55 ], [ %i.aa, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit47 ] ; 5 uses
  %.01214.i53 = phi ptr [ %i.ce, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i55 ], [ %i.bq, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit47 ] ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.015.i52, i64 16 ; 3 uses
  store ptr %i.bs, ptr %.015.i52, align 8, !tbaa !15
  %i.bt = load ptr, ptr %.01214.i53, align 8, !tbaa !22 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 16 ; 5 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i54

bb.e:                                             ; preds = %.lr.ph.i51
  %i.bw = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !18 ; 2 uses
  %i.by = icmp ult i64 %i.bx, 16
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw nsw i64 %i.bx, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bs, ptr noundef nonnull align 8 dereferenceable(1) %i.bu, i64 %i.bz, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i54: ; preds = %.lr.ph.i51
  store ptr %i.bt, ptr %.015.i52, align 8, !tbaa !22
  %i.ca = load i64, ptr %i.bu, align 8, !tbaa !21
  store i64 %i.ca, ptr %i.bs, align 8, !tbaa !21
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i55

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i55: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i54, %bb.e
  %i.cb = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 8 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !18
  %i.cd = getelementptr inbounds nuw i8, ptr %.015.i52, i64 8
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !18
  store ptr %i.bu, ptr %.01214.i53, align 8, !tbaa !22
  store i64 0, ptr %i.cb, align 8, !tbaa !18
  store i8 0, ptr %i.bu, align 8, !tbaa !21
  %i.ce = getelementptr inbounds nuw i8, ptr %.01214.i53, i64 32 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.015.i52, i64 32
  %.not.i56 = icmp eq ptr %i.ce, %i.br
  br i1 %.not.i56, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit57, label %.lr.ph.i51, !llvm.loop !251

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit57: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i55, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit47
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !21
  %.not.i58 = icmp eq i8 %i.ch, 0
  br i1 %.not.i58, label %.preheader59, label %.loopexit

.preheader59:                                     ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit57
  %.not64 = icmp eq i8 %1, 0
  br i1 %.not64, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader59
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %xtraiter = and i64 %i.bp, 1
  %i.ck = icmp eq i32 %i.y, 0
  br i1 %i.ck, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.bp, 254
  br label %bb.f

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod79 = trunc i8 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod79)
  %i.cl = load i8, ptr %i.a, align 2, !tbaa !21
  %i.cm = trunc i64 %indvars.iv.epil.init to i8
  %i.cn = add i8 %i.cm, 1
  %i.co = add i8 %i.cl, %i.cn                     ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.epil.init
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !241 ; 3 uses
  %i.cr = zext i8 %i.co to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.cr
  store ptr %i.cq, ptr %i.cs, align 8, !tbaa !241
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i8 %i.co, ptr %i.ct, align 1, !tbaa !21
  store ptr %0, ptr %i.cq, align 8, !tbaa !241
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader59
  %i.cu = load i8, ptr %i.bk, align 1, !tbaa !21
  %.not61 = icmp ult i8 %i.cu, %1
  br i1 %.not61, label %.loopexit, label %.lr.ph63

.lr.ph63:                                         ; preds = %.preheader
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.cw = load i8, ptr %i.a, align 2, !tbaa !21
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cx = trunc nuw i64 %indvars.iv.next to i8
  %i.cy = add i8 %i.cw, %i.cx                     ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !241 ; 3 uses
  %i.db = zext i8 %i.cy to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.db
  store ptr %i.da, ptr %i.dc, align 8, !tbaa !241
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i8 %i.cy, ptr %i.dd, align 1, !tbaa !21
  store ptr %0, ptr %i.da, align 8, !tbaa !241
  %i.de = load i8, ptr %i.a, align 2, !tbaa !21
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.df = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.dg = add i8 %i.de, %i.df                     ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !241 ; 3 uses
  %i.dj = zext i8 %i.dg to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.dj
  store ptr %i.di, ptr %i.dk, align 8, !tbaa !241
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i8 %i.dg, ptr %i.dl, align 1, !tbaa !21
  store ptr %0, ptr %i.di, align 8, !tbaa !241
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.f, !llvm.loop !260

bb.g:                                             ; preds = %.lr.ph63, %bb.g
  %.062 = phi i8 [ 0, %.lr.ph63 ], [ %i.dt, %bb.g ] ; 4 uses
  %i.dm = add i8 %.062, %1
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !241 ; 3 uses
  %i.dq = zext i8 %.062 to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dq
  store ptr %i.dp, ptr %i.dr, align 8, !tbaa !241
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store i8 %.062, ptr %i.ds, align 1, !tbaa !21
  store ptr %2, ptr %i.dp, align 8, !tbaa !241
  %i.dt = add i8 %.062, 1                         ; 2 uses
  %i.du = zext i8 %i.dt to i32
  %i.dv = load i8, ptr %i.bk, align 1, !tbaa !21
  %i.dw = zext i8 %i.dv to i32
  %i.dx = sub nsw i32 %i.dw, %i.x
  %.not = icmp slt i32 %i.dx, %i.du
  br i1 %.not, label %.loopexit, label %bb.g, !llvm.loop !261

.loopexit:                                        ; preds = %bb.g, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit57
  %i.dy = load i8, ptr %i.a, align 2, !tbaa !21
  %i.dz = add i8 %i.dy, %1
  store i8 %i.dz, ptr %i.a, align 2, !tbaa !21
  %i.ea = load i8, ptr %i.bk, align 1, !tbaa !21
  %i.eb = sub i8 %i.ea, %1
  store i8 %i.eb, ptr %i.bk, align 1, !tbaa !21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE23rebalance_left_to_rightEhPSE_PSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !21    ; 2 uses
  %i.c = zext i8 %1 to i32                        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.not15.i = icmp eq i8 %i.b, 0
  br i1 %.not15.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE19transfer_n_backwardEmmmPSE_PSC_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.e = zext i8 %i.b to i64                      ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.e, 5
  %i.f = zext i8 %1 to i64
  %i.g = getelementptr [32 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr [32 x i8], ptr %i.g, i64 %i.e
  %i.i = getelementptr i8, ptr %i.d, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i, %.lr.ph.preheader.i
  %.017.i = phi ptr [ %i.j, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i ], [ %i.h, %.lr.ph.preheader.i ] ; 3 uses
  %.01416.i = phi ptr [ %i.k, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i ], [ %i.i, %.lr.ph.preheader.i ] ; 4 uses
  %i.j = getelementptr inbounds i8, ptr %.017.i, i64 -32 ; 3 uses
  %i.k = getelementptr inbounds i8, ptr %.01416.i, i64 -32 ; 4 uses
  %i.l = getelementptr inbounds i8, ptr %.017.i, i64 -16 ; 3 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !15
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !22   ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.01416.i, i64 -16 ; 5 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds i8, ptr %.01416.i, i64 -24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !18   ; 2 uses
  %i.r = icmp ult i64 %i.q, 16
  tail call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.q, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.s, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  store ptr %i.m, ptr %i.j, align 8, !tbaa !22
  %i.t = load i64, ptr %i.n, align 8, !tbaa !21
  store i64 %i.t, ptr %i.l, align 8, !tbaa !21
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.b
  %i.u = getelementptr inbounds i8, ptr %.01416.i, i64 -24 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !18
  %i.w = getelementptr inbounds i8, ptr %.017.i, i64 -24
  store i64 %i.v, ptr %i.w, align 8, !tbaa !18
  store ptr %i.n, ptr %i.k, align 8, !tbaa !22
  store i64 0, ptr %i.u, align 8, !tbaa !18
  store i8 0, ptr %i.n, align 8, !tbaa !21
  %.not.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE19transfer_n_backwardEmmmPSE_PSC_.exit, label %.lr.ph.i, !llvm.loop !252

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE19transfer_n_backwardEmmmPSE_PSC_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i, %bb.a
  %i.x = add nsw i32 %i.c, -1                     ; 3 uses
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !21
  %i.ab = zext i8 %i.aa to i64
  %i.ac = load ptr, ptr %0, align 8, !tbaa !241
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.y ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.ab ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 3 uses
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !15
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !22 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 5 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i46

bb.c:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE19transfer_n_backwardEmmmPSE_PSC_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !18 ; 2 uses
  %i.am = icmp ult i64 %i.al, 16
  tail call void @llvm.assume(i1 %i.am)
  %i.an = add nuw nsw i64 %i.al, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.ai, i64 %i.an, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i46: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE19transfer_n_backwardEmmmPSE_PSC_.exit
  store ptr %i.ah, ptr %i.ad, align 8, !tbaa !22
  %i.ao = load i64, ptr %i.ai, align 8, !tbaa !21
  store i64 %i.ao, ptr %i.ag, align 8, !tbaa !21
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i46
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !18
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !22
  store i64 0, ptr %i.ap, align 8, !tbaa !18
  store i8 0, ptr %i.ai, align 8, !tbaa !21
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %i.at = load i8, ptr %i.as, align 2, !tbaa !21
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  %i.av = sub nsw i32 %i.au, %i.x
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %i.aw ; 2 uses
  %.idx.i48 = shl nuw nsw i64 %i.y, 5
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx.i48
  %.not13.i = icmp eq i32 %i.x, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i52
  %.015.i = phi ptr [ %i.bn, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i52 ], [ %i.d, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit ] ; 5 uses
  %.01214.i = phi ptr [ %i.bm, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i52 ], [ %i.ay, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit ] ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.015.i, i64 16 ; 3 uses
  store ptr %i.ba, ptr %.015.i, align 8, !tbaa !15
  %i.bb = load ptr, ptr %.01214.i, align 8, !tbaa !22 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16 ; 5 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i51

bb.d:                                             ; preds = %.lr.ph.i50
  %i.be = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !18 ; 2 uses
  %i.bg = icmp ult i64 %i.bf, 16
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.bf, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %i.bc, i64 %i.bh, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i51: ; preds = %.lr.ph.i50
  store ptr %i.bb, ptr %.015.i, align 8, !tbaa !22
  %i.bi = load i64, ptr %i.bc, align 8, !tbaa !21
  store i64 %i.bi, ptr %i.ba, align 8, !tbaa !21
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i52

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i52: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i51, %bb.d
  %i.bj = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !18
  store ptr %i.bc, ptr %.01214.i, align 8, !tbaa !22
  store i64 0, ptr %i.bj, align 8, !tbaa !18
  store i8 0, ptr %i.bc, align 8, !tbaa !21
  %i.bm = getelementptr inbounds nuw i8, ptr %.01214.i, i64 32 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.015.i, i64 32
  %.not.i53 = icmp eq ptr %i.bm, %i.az
  br i1 %.not.i53, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit.loopexit, label %.lr.ph.i50, !llvm.loop !251

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit.loopexit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i52
  %.pre = load i8, ptr %i.as, align 2, !tbaa !21
  %.pre69 = zext i8 %.pre to i32
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit.loopexit, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit
  %.pre-phi = phi i32 [ %.pre69, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit.loopexit ], [ %i.au, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit ]
  %i.bo = load ptr, ptr %0, align 8, !tbaa !241
  %i.bp = load i8, ptr %i.z, align 8, !tbaa !21
  %i.bq = zext i8 %i.bp to i64
  %i.br = sub nsw i32 %.pre-phi, %i.c
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %i.bq ; 4 uses
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %i.bs ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 3 uses
  store ptr %i.bw, ptr %i.bu, align 8, !tbaa !15
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !22 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 5 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i54

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !18 ; 2 uses
  %i.cc = icmp ult i64 %i.cb, 16
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = add nuw nsw i64 %i.cb, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bw, ptr noundef nonnull align 8 dereferenceable(1) %i.by, i64 %i.cd, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i54: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit
  store ptr %i.bx, ptr %i.bu, align 8, !tbaa !22
  %i.ce = load i64, ptr %i.by, align 8, !tbaa !21
  store i64 %i.ce, ptr %i.bw, align 8, !tbaa !21
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit56

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit56: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i54
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !18
  store ptr %i.by, ptr %i.bv, align 8, !tbaa !22
  store i64 0, ptr %i.cf, align 8, !tbaa !18
  store i8 0, ptr %i.by, align 8, !tbaa !21
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !21
  %.not.i57 = icmp eq i8 %i.cj, 0
  br i1 %.not.i57, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit56
  %i.ck = load i8, ptr %i.a, align 1, !tbaa !21   ; 5 uses
  %i.cl = add i8 %i.ck, 1                         ; 2 uses
  %.not5859 = icmp eq i8 %i.cl, 0
  br i1 %.not5859, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 6 uses
  %i.cn = zext i8 %i.cl to i64                    ; 2 uses
  %i.co = and i8 %i.ck, 1
  %lcmp.mod.not.not = icmp eq i8 %i.co, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.cp = add i8 %i.ck, %1                        ; 2 uses
  %i.cq = zext i8 %i.ck to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !241 ; 3 uses
  %i.ct = zext i8 %i.cp to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ct
  store ptr %i.cs, ptr %i.cu, align 8, !tbaa !241
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i8 %i.cp, ptr %i.cv, align 1, !tbaa !21
  store ptr %2, ptr %i.cs, align 8, !tbaa !241
  %indvars.iv.next.prol = add nsw i64 %i.cn, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.cn, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.cw = icmp eq i8 %i.ck, 0
  br i1 %i.cw, label %.preheader, label %.lr.ph.new

.preheader:                                       ; preds = %.prol.loopexit, %.lr.ph.new, %bb.f
  %.not61 = icmp eq i8 %1, 0
  br i1 %.not61, label %.loopexit, label %.lr.ph63

.lr.ph63:                                         ; preds = %.preheader
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 3 uses
  %i.cz = add i8 %1, 1                            ; 2 uses
  %umax = tail call i8 @llvm.umax.i8(i8 %i.cz, i8 2)
  %wide.trip.count = zext i8 %umax to i64
  %i.da = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter85 = and i64 %i.da, 1
  %i.db = icmp ult i8 %i.cz, 3
  br i1 %i.db, label %.epil.preheader, label %.lr.ph63.new

.lr.ph63.new:                                     ; preds = %.lr.ph63
  %unroll_iter = and i64 %i.da, -2
  %invariant.op = sub i8 1, %1
  br label %bb.g

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.dc = trunc nuw i64 %indvars.iv to i8
  %i.dd = add i8 %i.dc, -1                        ; 2 uses
  %i.de = add i8 %i.dd, %1                        ; 2 uses
  %i.df = zext i8 %i.dd to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.df
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !241 ; 3 uses
  %i.di = zext i8 %i.de to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.di
  store ptr %i.dh, ptr %i.dj, align 8, !tbaa !241
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i8 %i.de, ptr %i.dk, align 1, !tbaa !21
  store ptr %2, ptr %i.dh, align 8, !tbaa !241
  %i.dl = trunc i64 %indvars.iv to i8
  %i.dm = add i8 %i.dl, -2                        ; 2 uses
  %i.dn = add i8 %i.dm, %1                        ; 2 uses
  %i.do = zext i8 %i.dm to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.do
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !241 ; 3 uses
  %i.dr = zext i8 %i.dn to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.dr
  store ptr %i.dq, ptr %i.ds, align 8, !tbaa !241
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store i8 %i.dn, ptr %i.dt, align 1, !tbaa !21
  store ptr %2, ptr %i.dq, align 8, !tbaa !241
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.du = and i64 %indvars.iv.next.1, 255
  %.not58.1 = icmp eq i64 %i.du, 0
  br i1 %.not58.1, label %.preheader, label %.lr.ph.new, !llvm.loop !262

bb.g:                                             ; preds = %bb.g, %.lr.ph63.new
  %indvars.iv65 = phi i64 [ 1, %.lr.ph63.new ], [ %indvars.iv.next66.1, %bb.g ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph63.new ], [ %niter.next.1, %bb.g ]
  %i.dv = add nsw i64 %indvars.iv65, -1           ; 2 uses
  %i.dw = load i8, ptr %i.as, align 2, !tbaa !21
  %i.dx = trunc nuw i64 %indvars.iv65 to i8
  %i.dy = sub i8 %i.dx, %1
  %i.dz = add i8 %i.dy, %i.dw
  %i.ea = zext i8 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !241 ; 3 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dv
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !241
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ef = trunc nuw i64 %i.dv to i8
  store i8 %i.ef, ptr %i.ee, align 1, !tbaa !21
  store ptr %2, ptr %i.ec, align 8, !tbaa !241
  %i.eg = load i8, ptr %i.as, align 2, !tbaa !21
  %i.eh = trunc i64 %indvars.iv65 to i8
  %.reass = add i8 %i.eh, %invariant.op
  %i.ei = add i8 %.reass, %i.eg
  %i.ej = zext i8 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.ej
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !241 ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv65
  store ptr %i.el, ptr %i.em, align 8, !tbaa !241
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.eo = trunc nuw i64 %indvars.iv65 to i8
  store i8 %i.eo, ptr %i.en, align 1, !tbaa !21
  store ptr %2, ptr %i.el, align 8, !tbaa !241
  %indvars.iv.next66.1 = add nuw nsw i64 %indvars.iv65, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.g, !llvm.loop !263

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.g
  %lcmp.mod86.not = icmp eq i64 %xtraiter85, 0
  br i1 %lcmp.mod86.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph63
  %indvars.iv65.epil.init = phi i64 [ 1, %.lr.ph63 ], [ %indvars.iv.next66.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod87 = trunc i64 %i.da to i1
  tail call void @llvm.assume(i1 %lcmp.mod87)
  %i.ep = add nsw i64 %indvars.iv65.epil.init, -1 ; 2 uses
  %i.eq = load i8, ptr %i.as, align 2, !tbaa !21
  %i.er = trunc nuw i64 %indvars.iv65.epil.init to i8
  %i.es = sub i8 %i.er, %1
  %i.et = add i8 %i.es, %i.eq
  %i.eu = zext i8 %i.et to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.eu
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !241 ; 3 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.ep
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !241
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ez = trunc nuw i64 %i.ep to i8
  store i8 %i.ez, ptr %i.ey, align 1, !tbaa !21
  store ptr %2, ptr %i.ew, align 8, !tbaa !241
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEmmPSE_PSC_.exit56
  %i.fa = load i8, ptr %i.as, align 2, !tbaa !21
  %i.fb = sub i8 %i.fa, %1
  store i8 %i.fb, ptr %i.as, align 2, !tbaa !21
  %i.fc = load i8, ptr %i.a, align 1, !tbaa !21
  %i.fd = add i8 %i.fc, %1
  store i8 %i.fd, ptr %i.a, align 1, !tbaa !21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE5splitEiPSE_PSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 0, label %bb.b
    i32 7, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.b = load i8, ptr %i.a, align 1, !tbaa !21
  %i.c = add i8 %i.b, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = load i8, ptr %i.d, align 1, !tbaa !21
  %i.f = lshr i8 %i.e, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i8 [ %i.c, %bb.b ], [ %i.f, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %.sink, ptr %i.g, align 1, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 6 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.k = sub i8 %i.i, %.sink                      ; 3 uses
  store i8 %i.k, ptr %i.h, align 1, !tbaa !21
  %i.l = load i8, ptr %i.j, align 1, !tbaa !21    ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = zext i8 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.n ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.m, 5
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i
  %.not13.i = icmp eq i8 %i.l, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i, %.lr.ph.preheader.i
  %.015.i = phi ptr [ %i.af, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i ], [ %i.r, %.lr.ph.preheader.i ] ; 5 uses
  %.01214.i = phi ptr [ %i.ae, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i ], [ %i.p, %.lr.ph.preheader.i ] ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.015.i, i64 16 ; 3 uses
  store ptr %i.s, ptr %.015.i, align 8, !tbaa !15
  %i.t = load ptr, ptr %.01214.i, align 8, !tbaa !22 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !18   ; 2 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  store ptr %i.t, ptr %.015.i, align 8, !tbaa !22
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !21
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !21
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !18
  store ptr %i.u, ptr %.01214.i, align 8, !tbaa !22
  store i64 0, ptr %i.ab, align 8, !tbaa !18
  store i8 0, ptr %i.u, align 8, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %.01214.i, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.015.i, i64 32
  %.not.i = icmp eq ptr %i.ae, %i.q
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit.loopexit, label %.lr.ph.i, !llvm.loop !251

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit.loopexit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i
  %.pre = load i8, ptr %i.h, align 1, !tbaa !21
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit.loopexit, %bb.d
  %i.ag = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit.loopexit ], [ %i.k, %bb.d ]
  %i.ah = add i8 %i.ag, -1                        ; 2 uses
  store i8 %i.ah, ptr %i.h, align 1, !tbaa !21
  %i.ai = load ptr, ptr %0, align 8, !tbaa !241   ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !21  ; 4 uses
  %i.al = zext i8 %i.ah to i64
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.al ; 5 uses
  %i.an = zext i8 %i.ak to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 10 ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !21  ; 2 uses
  %i.aq = icmp ult i8 %i.ak, %i.ap
  %i.ar = zext i8 %i.ak to i64                    ; 2 uses
  br i1 %i.aq, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE19transfer_n_backwardEmmmPSE_PSC_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.at = getelementptr [32 x i8], ptr %i.as, i64 %i.ar ; 3 uses
  %narrow.i = sub nuw i8 %i.ap, %i.ak
  %i.au = zext i8 %narrow.i to i64                ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.au, 5
  %i.av = getelementptr i8, ptr %i.at, i64 32
  %i.aw = getelementptr [32 x i8], ptr %i.av, i64 %i.au
  %i.ax = getelementptr i8, ptr %i.at, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i.i, %.lr.ph.preheader.i.i
  %.017.i.i = phi ptr [ %i.ay, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i.i ], [ %i.aw, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01416.i.i = phi ptr [ %i.az, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i.i ], [ %i.ax, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.ay = getelementptr inbounds i8, ptr %.017.i.i, i64 -32 ; 3 uses
  %i.az = getelementptr inbounds i8, ptr %.01416.i.i, i64 -32 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %.017.i.i, i64 -16 ; 3 uses
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !15
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !22 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %.01416.i.i, i64 -16 ; 5 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.be = getelementptr inbounds i8, ptr %.01416.i.i, i64 -24
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !18 ; 2 uses
  %i.bg = icmp ult i64 %i.bf, 16
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.bf, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %i.bc, i64 %i.bh, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !22
  %i.bi = load i64, ptr %i.bc, align 8, !tbaa !21
  store i64 %i.bi, ptr %i.ba, align 8, !tbaa !21
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.f
  %i.bj = getelementptr inbounds i8, ptr %.01416.i.i, i64 -24 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !18
  %i.bl = getelementptr inbounds i8, ptr %.017.i.i, i64 -24
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !18
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !22
  store i64 0, ptr %i.bj, align 8, !tbaa !18
  store i8 0, ptr %i.bc, align 8, !tbaa !21
  %.not.i.i = icmp eq ptr %i.az, %i.at
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE19transfer_n_backwardEmmmPSE_PSC_.exit.i, label %.lr.ph.i.i, !llvm.loop !252

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE19transfer_n_backwardEmmmPSE_PSC_.exit.i: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE8transferEPS9_SF_PSC_.exit.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10transfer_nEmmmPSE_PSC_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.bm, i64 %i.ar ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 3 uses
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !15
  %i.bp = load ptr, ptr %i.am, align 8, !tbaa !22 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 5 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.g:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE19transfer_n_backwardEmmmPSE_PSC_.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !18 ; 2 uses
  %i.bu = icmp ult i64 %i.bt, 16
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = add nuw nsw i64 %i.bt, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bo, ptr noundef nonnull align 8 dereferenceable(1) %i.bq, i64 %i.bv, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10value_initIJPS9_EEEvhPSC_DpOT_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE19transfer_n_backwardEmmmPSE_PSC_.exit.i
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !22
  %i.bw = load i64, ptr %i.bq, align 8, !tbaa !21
  store i64 %i.bw, ptr %i.bo, align 8, !tbaa !21
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10value_initIJPS9_EEEvhPSC_DpOT_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10value_initIJPS9_EEEvhPSC_DpOT_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !18
  store ptr %i.bq, ptr %i.am, align 8, !tbaa !22
  store i64 0, ptr %i.bx, align 8, !tbaa !18
  store i8 0, ptr %i.bq, align 8, !tbaa !21
  %i.ca = load i8, ptr %i.ao, align 1, !tbaa !21
  %i.cb = add i8 %i.ca, 1                         ; 3 uses
  store i8 %i.cb, ptr %i.ao, align 1, !tbaa !21
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ai, i64 11
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !21
  %.not.i18.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i18.i, label %bb.h, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13emplace_valueIJPS9_EEEvhPSC_DpOT_.exit

bb.h:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10value_initIJPS9_EEEvhPSC_DpOT_.exit.i
  %i.ce = zext i8 %i.cb to i32
  %i.cf = add nuw nsw i32 %i.an, 1                ; 2 uses
  %i.cg = icmp samesign ult i32 %i.cf, %i.ce
  br i1 %i.cg, label %.lr.ph.i27.a, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13emplace_valueIJPS9_EEEvhPSC_DpOT_.exit

.lr.ph.i27.a:                                     ; preds = %bb.h
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ai, i64 240 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i27.a
  %.019.i = phi i8 [ %i.cb, %.lr.ph.i27.a ], [ %4, %bb.i ] ; 3 uses
  %4 = add i8 %.019.i, -1                         ; 3 uses
  %5 = zext i8 %4 to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %5
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !241 ; 2 uses
  %6 = zext i8 %.019.i to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %6
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !241
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i8 %.019.i, ptr %i.cl, align 1, !tbaa !21
  %7 = zext i8 %4 to i32
  %8 = icmp samesign ult i32 %i.cf, %7
  br i1 %8, label %bb.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13emplace_valueIJPS9_EEEvhPSC_DpOT_.exit, !llvm.loop !264

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13emplace_valueIJPS9_EEEvhPSC_DpOT_.exit: ; preds = %bb.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE10value_initIJPS9_EEEvhPSC_DpOT_.exit.i, %bb.h
  %i.cm = load i8, ptr %i.h, align 2, !tbaa !21
  %i.cn = zext i8 %i.cm to i64
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.cn ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !22 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13value_destroyEhPSC_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i28: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13emplace_valueIJPS9_EEEvhPSC_DpOT_.exit
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !21
  %i.ct = add i64 %i.cs, 1
  tail call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #25
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13value_destroyEhPSC_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13value_destroyEhPSC_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13emplace_valueIJPS9_EEEvhPSC_DpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i28
  %i.cu = load ptr, ptr %0, align 8, !tbaa !241
  %i.cv = load i8, ptr %i.aj, align 8, !tbaa !21
  %i.cw = add i8 %i.cv, 1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 240
  %i.cy = zext i8 %i.cw to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cy
  store ptr %2, ptr %i.cz, align 8, !tbaa !241
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.db = load i8, ptr %i.da, align 1, !tbaa !21
  %.not.i29 = icmp eq i8 %i.db, 0
  br i1 %.not.i29, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13value_destroyEhPSC_.exit
  %i.dc = load i8, ptr %i.h, align 2, !tbaa !21
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 240
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.k
  %.0.in31 = phi i8 [ %i.dc, %bb.j ], [ %.0, %bb.k ]
  %.02530 = phi i8 [ 0, %bb.j ], [ %i.dl, %bb.k ] ; 3 uses
  %.0 = add i8 %.0.in31, 1                        ; 2 uses
  %i.df = zext i8 %.0 to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.df
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !241 ; 3 uses
  %i.di = zext i8 %.02530 to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.di
  store ptr %i.dh, ptr %i.dj, align 8, !tbaa !241
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i8 %.02530, ptr %i.dk, align 1, !tbaa !21
  store ptr %2, ptr %i.dh, align 8, !tbaa !241
  %i.dl = add i8 %.02530, 1                       ; 2 uses
  %i.dm = load i8, ptr %i.j, align 1, !tbaa !21
  %.not = icmp ugt i8 %i.dl, %i.dm
  br i1 %.not, label %.loopexit, label %bb.k, !llvm.loop !265

.loopexit:                                        ; preds = %bb.k, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE13value_destroyEhPSC_.exit
  ret void
}

declare noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i8 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnINS1_6HashEqIPKN6google8protobuf14FileDescriptorEvE4HashES8_EEmPKvPv(ptr noundef %0, ptr noundef %1) #0 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !150
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = xor i64 %i.b, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.d = mul i64 %i.c, -2543921745674291987
  %i.e = tail call noundef i64 @llvm.bswap.i64(i64 %i.d)
  %i.f = xor i64 %i.e, %i.b
  %i.g = mul i64 %i.f, -2543921745674291987
  %i.h = tail call noundef i64 @llvm.bswap.i64(i64 %i.g)
  ret i64 %i.h
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal20TransferNRelocatableILm8EEEvPvS3_S3_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #21 comdat {
bb.a:
  %i.a = shl i64 %3, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.a, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSL_PFvSL_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !73     ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !79
  %i.j = and i64 %i.i, 65535
  %i.k = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.062 = phi i64 [ 0, %bb.a ], [ %i.s, %._crit_edge ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.062
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %.062 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.p, i8 -128, i64 16, i1 false)
  %i.q = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not60 = icmp eq i16 %i.r, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.c
  %i.s = add nuw i64 %.062, 16                    ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.b
  br i1 %i.t, label %bb.c, label %bb.b, !llvm.loop !266

.lr.ph:                                           ; preds = %bb.c, %bb.i
  %.sroa.054.061 = phi i16 [ %i.bd, %bb.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.054.061, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = or disjoint i64 %.062, %i.v              ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !150
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = xor i64 %i.z, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ab = mul i64 %i.aa, -2543921745674291987
  %i.ac = tail call noundef i64 @llvm.bswap.i64(i64 %i.ab)
  %i.ad = xor i64 %i.ac, %i.z
  %i.ae = mul i64 %i.ad, -2543921745674291987
  %i.af = tail call noundef i64 @llvm.bswap.i64(i64 %i.ae) ; 2 uses
  %i.ag = lshr i64 %i.af, 7
  %i.ah = xor i64 %i.ag, %i.j                     ; 5 uses
  %i.ai = trunc i64 %i.af to i8
  %i.aj = and i8 %i.ai, 127                       ; 2 uses
  %i.ak = sub i64 %i.w, %i.ah                     ; 2 uses
  %i.al = and i64 %i.k, %i.ak
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.d, label %bb.e, !prof !157

bb.d:                                             ; preds = %.lr.ph
  %i.an = and i64 %i.ak, 15
  %i.ao = add nuw nsw i64 %i.an, %i.ah
  %i.ap = and i64 %i.ao, %i.a
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.e:                                             ; preds = %.lr.ph
  %i.aq = and i64 %i.ah, %i.b
  %.not.i = icmp ult i64 %i.aq, %i.w
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !157

bb.f:                                             ; preds = %bb.e
  %i.ar = and i64 %i.ah, %i.a                     ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ar
  %i.at = load <16 x i8>, ptr %i.as, align 1, !tbaa !21
  %i.au = icmp slt <16 x i8> %i.at, zeroinitializer
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.av, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !72

bb.g:                                             ; preds = %bb.f
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.av, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add nuw nsw i64 %i.ar, %i.ax
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.aj, i64 noundef %i.w, i64 noundef %i.ah)
  br label %bb.i

_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit: ; preds = %bb.g, %bb.d
  %.2.i = phi i64 [ %i.ay, %bb.g ], [ %i.ap, %bb.d ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 %.2.i
  store i8 %i.aj, ptr %i.az, align 1, !tbaa !206
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.2.i
  %i.bb = load i64, ptr %i.x, align 8
  store i64 %i.bb, ptr %i.ba, align 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit, %bb.h
  %i.bc = add i16 %.sroa.054.061, -1
  %i.bd = and i16 %i.bc, %.sroa.054.061           ; 2 uses
  %.not = icmp eq i16 %i.bd, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { noreturn }
attributes #28 = { cold }
attributes #29 = { builtin allocsize(0) }

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
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSSt10_Head_baseILm0EPN6google8protobuf8compiler10objectivec14FieldGeneratorELb0EE", !11, i64 0}
!11 = !{!"p1 _ZTSN6google8protobuf8compiler10objectivec14FieldGeneratorE", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!11, !11, i64 0}
!14 = distinct !{null, null, null}
!15 = !{!16, !17, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !17, i64 0}
!17 = !{!"p1 omnipotent char", !12, i64 0}
!18 = !{!19, !20, i64 8}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !16, i64 0, !20, i64 8, !5, i64 16}
!20 = !{!"long", !5, i64 0}
!21 = !{!5, !5, i64 0}
!22 = !{!19, !17, i64 0}
!23 = !{!24, !25, i64 8}
!24 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!25 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!26 = !{!24, !25, i64 16}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!20, !20, i64 0}
!30 = !{!24, !25, i64 0}
!31 = distinct !{!31, !28}
!32 = distinct !{null, null}
!33 = !{!34, !35, i64 8}
!34 = !{!"_ZTSNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!35 = !{!"p1 _ZTSN6google8protobuf2io7Printer3SubE", !12, i64 0}
!36 = !{!34, !35, i64 0}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE11try_emplaceIS9_Li0EJmETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISA_SB_SC_SG_E14const_iteratorEEE5valueEiE4typeELi0EEESD_INSM_8iteratorEbERKSK_DpOT1_: argument 0"}
!39 = distinct !{!39, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE11try_emplaceIS9_Li0EJmETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISA_SB_SC_SG_E14const_iteratorEEE5valueEiE4typeELi0EEESD_INSM_8iteratorEbERKSK_DpOT1_"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE16try_emplace_implIRSE_JmEEESD_INS1_12raw_hash_setISA_SB_SC_SG_E8iteratorEbEOT_DpOT0_: argument 0"}
!42 = distinct !{!42, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE16try_emplace_implIRSE_JmEEESD_INS1_12raw_hash_setISA_SB_SC_SG_E8iteratorEbEOT_DpOT0_"}
!43 = !{!44, !46, i64 16}
!44 = !{!"_ZTSSt4pairIN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS2_10StringHashENS2_8StringEqESaIS_IKSA_mEEE8iteratorEbE", !45, i64 0, !46, i64 16}
!45 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE8iteratorE", !12, i64 0, !5, i64 8}
!46 = !{!"bool", !5, i64 0}
!47 = !{i8 0, i8 2}
!48 = !{!41, !38}
!49 = !{}
!50 = !{!51, !20, i64 32}
!51 = !{!"_ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmE", !19, i64 0, !20, i64 32}
!52 = !{!46, !46, i64 0}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_ZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_5Rank1E: argument 0"}
!55 = distinct !{!55, !"_ZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_5Rank1E"}
!56 = !{!57, !54}
!57 = distinct !{!57, !55, !"_ZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_5Rank1E: argument 0:thread"}
!58 = !{!59, !5, i64 32}
!59 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEE", !5, i64 0, !5, i64 32}
!60 = !{!61, !46, i64 72}
!61 = !{!"_ZTSN6google8protobuf2io7Printer9ValueImplILb1EEE", !62, i64 0, !19, i64 40, !46, i64 72}
!62 = !{!"_ZTSSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEE", !63, i64 0}
!63 = !{!"_ZTSNSt8__detail9__variant13_Variant_baseIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEE", !64, i64 0}
!64 = !{!"_ZTSNSt8__detail9__variant17_Move_assign_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEE", !65, i64 0}
!65 = !{!"_ZTSNSt8__detail9__variant17_Copy_assign_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEE", !66, i64 0}
!66 = !{!"_ZTSNSt8__detail9__variant15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEE", !67, i64 0}
!67 = !{!"_ZTSNSt8__detail9__variant15_Copy_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEE", !59, i64 0}
!68 = !{!69, !46, i64 64}
!69 = !{!"_ZTSSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE", !5, i64 0, !46, i64 64}
!70 = !{!71, !20, i64 32}
!71 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmE", !19, i64 0, !20, i64 32}
!72 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!73 = !{!74, !20, i64 0}
!74 = !{!"_ZTSN4absl12lts_2025051218container_internal12CommonFieldsE", !20, i64 0, !75, i64 8, !5, i64 16}
!75 = !{!"_ZTSN4absl12lts_2025051218container_internal13HashtableSizeE", !20, i64 0}
!76 = !{!77, !78, i64 0}
!77 = !{!"_ZTSZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE13destroy_slotsEvEUlPKNS1_6ctrl_tEPvE_", !78, i64 0}
!78 = !{!"p1 _ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEEE", !12, i64 0}
!79 = !{!75, !20, i64 0}
!80 = distinct !{!80, !28}
!81 = !{!34, !35, i64 16}
!82 = !{!83, !84, i64 8}
!83 = !{!"_ZTSN6google8protobuf8compiler10objectivec14FieldGeneratorE", !84, i64 8, !85, i64 16, !86, i64 24}
!84 = !{!"p1 _ZTSN6google8protobuf15FieldDescriptorE", !12, i64 0}
!85 = !{!"p1 _ZTSN6google8protobuf8compiler10objectivec17GenerationOptionsE", !12, i64 0}
!86 = !{!"_ZTSN6google8protobuf8compiler10objectivec15SubstitutionMapE", !87, i64 0, !90, i64 24}
!87 = !{!"_ZTSSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE", !88, i64 0}
!88 = !{!"_ZTSSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE", !89, i64 0}
!89 = !{!"_ZTSNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE12_Vector_implE", !34, i64 0}
!90 = !{!"_ZTSN4absl12lts_2025051213flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmNS0_18container_internal10StringHashENS8_8StringEqESaISt4pairIKS7_mEEEE", !91, i64 0}
!91 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEEE", !92, i64 0}
!92 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEEE", !93, i64 0}
!93 = !{!"_ZTSN4absl12lts_2025051218container_internal15CompressedTupleIJNS1_12CommonFieldsENS1_10StringHashENS1_8StringEqESaIcEEEE", !94, i64 0}
!94 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJNS1_12CommonFieldsENS1_10StringHashENS1_8StringEqESaIcEEEESt16integer_sequenceImJLm0ELm1ELm2ELm3EEELb1EEE", !95, i64 0}
!95 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple7StorageINS1_12CommonFieldsELm0ELb0EEE", !74, i64 0}
!96 = !{!97, !5, i64 2}
!97 = !{!"_ZTSN6google8protobuf15FieldDescriptorE", !98, i64 0, !46, i64 1, !46, i64 1, !46, i64 1, !46, i64 1, !46, i64 1, !46, i64 1, !5, i64 1, !5, i64 2, !5, i64 3, !46, i64 3, !46, i64 3, !5, i64 3, !4, i64 4, !99, i64 8, !100, i64 16, !101, i64 24, !102, i64 32, !5, i64 40, !5, i64 48, !103, i64 56, !104, i64 64, !104, i64 72, !5, i64 80}
!98 = !{!"_ZTSN6google8protobuf8internal10SymbolBaseE", !5, i64 0}
!99 = !{!"_ZTSN6google8protobuf8internal15DescriptorNamesE", !17, i64 0}
!100 = !{!"p1 _ZTSN6google8protobuf14FileDescriptorE", !12, i64 0}
!101 = !{!"p1 _ZTSN4absl12lts_202505129once_flagE", !12, i64 0}
!102 = !{!"p1 _ZTSN6google8protobuf10DescriptorE", !12, i64 0}
!103 = !{!"p1 _ZTSN6google8protobuf12FieldOptionsE", !12, i64 0}
!104 = !{!"p1 _ZTSN6google8protobuf10FeatureSetE", !12, i64 0}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_5Rank1E: argument 0"}
!107 = distinct !{!107, !"_ZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_5Rank1E"}
!108 = !{!109, !106}
!109 = distinct !{!109, !107, !"_ZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_5Rank1E: argument 0:thread"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_5Rank1E: argument 0"}
!112 = distinct !{!112, !"_ZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_5Rank1E"}
!113 = !{!114, !111}
!114 = distinct !{!114, !112, !"_ZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_5Rank1E: argument 0:thread"}
!115 = !{!116, !117, i64 0}
!116 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !117, i64 0, !117, i64 8, !117, i64 16}
!117 = !{!"p1 int", !12, i64 0}
!118 = !{!116, !117, i64 16}
!119 = !{!120, !12, i64 16}
!120 = !{!"_ZTSSt14_Function_base", !5, i64 0, !12, i64 16}
!121 = !{!122, !100, i64 24}
!122 = !{!"_ZTSN6google8protobuf10DescriptorE", !98, i64 0, !46, i64 1, !46, i64 1, !5, i64 1, !5, i64 2, !123, i64 4, !4, i64 8, !99, i64 16, !100, i64 24, !102, i64 32, !124, i64 40, !104, i64 48, !104, i64 56, !84, i64 64, !125, i64 72, !102, i64 80, !126, i64 88, !127, i64 96, !84, i64 104, !128, i64 112, !129, i64 120, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156}
!123 = !{!"short", !5, i64 0}
!124 = !{!"p1 _ZTSN6google8protobuf14MessageOptionsE", !12, i64 0}
!125 = !{!"p1 _ZTSN6google8protobuf15OneofDescriptorE", !12, i64 0}
!126 = !{!"p1 _ZTSN6google8protobuf14EnumDescriptorE", !12, i64 0}
!127 = !{!"p1 _ZTSN6google8protobuf10Descriptor14ExtensionRangeE", !12, i64 0}
!128 = !{!"p1 _ZTSN6google8protobuf10Descriptor13ReservedRangeE", !12, i64 0}
!129 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !130, i64 0}
!130 = !{!"any p2 pointer", !12, i64 0}
!131 = !{!97, !100, i64 16}
!132 = !{!133, !135, !137, !139, !141, !143, !145}
!133 = distinct !{!133, !134, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_: argument 0"}
!134 = distinct !{!134, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_"}
!135 = distinct !{!135, !136, !"_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE19EmplaceDecomposableclIS8_JS8_EEESt4pairINSF_8iteratorEbERKT_DpOT0_: argument 0"}
!136 = distinct !{!136, !"_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE19EmplaceDecomposableclIS8_JS8_EEESt4pairINSF_8iteratorEbERKT_DpOT0_"}
!137 = distinct !{!137, !138, !"_ZN4absl12lts_2025051218container_internal14DecomposeValueINS1_12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE19EmplaceDecomposableES9_EEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalISJ_EEEEOSI_OSJ_: argument 0"}
!138 = distinct !{!138, !"_ZN4absl12lts_2025051218container_internal14DecomposeValueINS1_12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE19EmplaceDecomposableES9_EEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalISJ_EEEEOSI_OSJ_"}
!139 = distinct !{!139, !140, !"_ZN4absl12lts_2025051218container_internal17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEE5applyINS1_12raw_hash_setIS8_NS1_6HashEqIS7_vE4HashENSC_2EqESaIS7_EE19EmplaceDecomposableEJS7_EEEDTclsr4absl18container_internalE14DecomposeValueclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSI_DpOSJ_: argument 0"}
!140 = distinct !{!140, !"_ZN4absl12lts_2025051218container_internal17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEE5applyINS1_12raw_hash_setIS8_NS1_6HashEqIS7_vE4HashENSC_2EqESaIS7_EE19EmplaceDecomposableEJS7_EEEDTclsr4absl18container_internalE14DecomposeValueclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSI_DpOSJ_"}
!141 = distinct !{!141, !142, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEEvE5applyINS1_12raw_hash_setIS9_NS1_6HashEqIS8_vE4HashENSE_2EqESaIS8_EE19EmplaceDecomposableEJS8_ES9_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_: argument 0"}
!142 = distinct !{!142, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEEvE5applyINS1_12raw_hash_setIS9_NS1_6HashEqIS8_vE4HashENSE_2EqESaIS8_EE19EmplaceDecomposableEJS8_ES9_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_"}
!143 = distinct !{!143, !144, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE7emplaceIJS8_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSF_8iteratorEbEDpOSI_: argument 0"}
!144 = distinct !{!144, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE7emplaceIJS8_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSF_8iteratorEbEDpOSI_"}
!145 = distinct !{!145, !146, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertEOS8_: argument 0"}
!146 = distinct !{!146, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertEOS8_"}
!147 = !{!148, !133, !135, !137, !139, !141, !143, !145}
!148 = distinct !{!148, !149, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE26find_or_prepare_insert_sooIS8_EESt4pairINSF_8iteratorEbERKT_: argument 0"}
!149 = distinct !{!149, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE26find_or_prepare_insert_sooIS8_EESt4pairINSF_8iteratorEbERKT_"}
!150 = !{!100, !100, i64 0}
!151 = !{!152}
!152 = distinct !{!152, !153, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE30find_or_prepare_insert_non_sooIS8_EESt4pairINSF_8iteratorEbERKT_: argument 0"}
!153 = distinct !{!153, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE30find_or_prepare_insert_non_sooIS8_EESt4pairINSF_8iteratorEbERKT_"}
!154 = !{!155, !152}
!155 = distinct !{!155, !156, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm: argument 0"}
!156 = distinct !{!156, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm"}
!157 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!158 = !{!159, !100, i64 16}
!159 = !{!"_ZTSN6google8protobuf14EnumDescriptorE", !98, i64 0, !46, i64 1, !46, i64 1, !5, i64 1, !123, i64 2, !4, i64 4, !99, i64 8, !100, i64 16, !102, i64 24, !160, i64 32, !104, i64 40, !104, i64 48, !161, i64 56, !4, i64 64, !4, i64 68, !162, i64 72, !129, i64 80}
!160 = !{!"p1 _ZTSN6google8protobuf11EnumOptionsE", !12, i64 0}
!161 = !{!"p1 _ZTSN6google8protobuf19EnumValueDescriptorE", !12, i64 0}
!162 = !{!"p1 _ZTSN6google8protobuf14EnumDescriptor13ReservedRangeE", !12, i64 0}
!163 = !{!164, !166, !168, !170, !172, !174, !176}
!164 = distinct !{!164, !165, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_: argument 0"}
!165 = distinct !{!165, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_"}
!166 = distinct !{!166, !167, !"_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE19EmplaceDecomposableclIS8_JS8_EEESt4pairINSF_8iteratorEbERKT_DpOT0_: argument 0"}
!167 = distinct !{!167, !"_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE19EmplaceDecomposableclIS8_JS8_EEESt4pairINSF_8iteratorEbERKT_DpOT0_"}
!168 = distinct !{!168, !169, !"_ZN4absl12lts_2025051218container_internal14DecomposeValueINS1_12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE19EmplaceDecomposableES9_EEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalISJ_EEEEOSI_OSJ_: argument 0"}
!169 = distinct !{!169, !"_ZN4absl12lts_2025051218container_internal14DecomposeValueINS1_12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE19EmplaceDecomposableES9_EEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalISJ_EEEEOSI_OSJ_"}
!170 = distinct !{!170, !171, !"_ZN4absl12lts_2025051218container_internal17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEE5applyINS1_12raw_hash_setIS8_NS1_6HashEqIS7_vE4HashENSC_2EqESaIS7_EE19EmplaceDecomposableEJS7_EEEDTclsr4absl18container_internalE14DecomposeValueclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSI_DpOSJ_: argument 0"}
!171 = distinct !{!171, !"_ZN4absl12lts_2025051218container_internal17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEE5applyINS1_12raw_hash_setIS8_NS1_6HashEqIS7_vE4HashENSC_2EqESaIS7_EE19EmplaceDecomposableEJS7_EEEDTclsr4absl18container_internalE14DecomposeValueclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSI_DpOSJ_"}
!172 = distinct !{!172, !173, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEEvE5applyINS1_12raw_hash_setIS9_NS1_6HashEqIS8_vE4HashENSE_2EqESaIS8_EE19EmplaceDecomposableEJS8_ES9_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_: argument 0"}
!173 = distinct !{!173, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEEvE5applyINS1_12raw_hash_setIS9_NS1_6HashEqIS8_vE4HashENSE_2EqESaIS8_EE19EmplaceDecomposableEJS8_ES9_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_"}
!174 = distinct !{!174, !175, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE7emplaceIJS8_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSF_8iteratorEbEDpOSI_: argument 0"}
!175 = distinct !{!175, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE7emplaceIJS8_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSF_8iteratorEbEDpOSI_"}
!176 = distinct !{!176, !177, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertEOS8_: argument 0"}
!177 = distinct !{!177, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertEOS8_"}
!178 = !{!179, !164, !166, !168, !170, !172, !174, !176}
!179 = distinct !{!179, !180, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE26find_or_prepare_insert_sooIS8_EESt4pairINSF_8iteratorEbERKT_: argument 0"}
!180 = distinct !{!180, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE26find_or_prepare_insert_sooIS8_EESt4pairINSF_8iteratorEbERKT_"}
!181 = !{!182}
!182 = distinct !{!182, !183, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE30find_or_prepare_insert_non_sooIS8_EESt4pairINSF_8iteratorEbERKT_: argument 0"}
!183 = distinct !{!183, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE30find_or_prepare_insert_non_sooIS8_EESt4pairINSF_8iteratorEbERKT_"}
!184 = !{!185, !182}
!185 = distinct !{!185, !186, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm: argument 0"}
!186 = distinct !{!186, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm"}
!187 = distinct !{ptr @_ZN6google8protobuf8compiler10objectivec17MapFieldGeneratorD2Ev, null, null}
!188 = !{ptr @_ZN6google8protobuf8compiler10objectivec17MapFieldGeneratorD2Ev}
!189 = !{!17, !17, i64 0}
!190 = !{!191}
!191 = distinct !{!191, !192, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm: argument 0"}
!192 = distinct !{!192, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm"}
!193 = distinct !{!193, !28}
!194 = !{!"branch_weights", i32 2146410443, i32 1073205}
!195 = !{!196}
!196 = distinct !{!196, !197, !"_ZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_5Rank1E: argument 0"}
!197 = distinct !{!197, !"_ZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_5Rank1E"}
!198 = !{!199, !196}
!199 = distinct !{!199, !197, !"_ZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_5Rank1E: argument 0:thread"}
!200 = !{!35, !35, i64 0}
!201 = !{!202}
!202 = distinct !{!202, !203, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm: argument 0"}
!203 = distinct !{!203, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm"}
!204 = distinct !{!204, !28}
!205 = distinct !{!205, !28}
!206 = !{!207, !207, i64 0}
!207 = !{!"_ZTSN4absl12lts_2025051218container_internal6ctrl_tE", !5, i64 0}
!208 = !{!209, !210, i64 0}
!209 = !{!"_ZTSZNSt8__detail9__variant17_Move_assign_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEaSEOSB_EUlOT_T0_E_", !210, i64 0}
!210 = !{!"p1 _ZTSNSt8__detail9__variant17_Move_assign_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEE", !12, i64 0}
!211 = !{!212, !12, i64 24}
!212 = !{!"_ZTSSt8functionIFbvEE", !120, i64 0, !12, i64 24}
!213 = !{i64 0, i64 16, !21}
!214 = !{!12, !12, i64 0}
!215 = !{!117, !117, i64 0}
!216 = !{!217}
!217 = distinct !{!217, !218, !"_ZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_5Rank1E: argument 0"}
!218 = distinct !{!218, !"_ZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_5Rank1E"}
!219 = !{!220, !217}
!220 = distinct !{!220, !218, !"_ZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_5Rank1E: argument 0:thread"}
!221 = distinct !{!221, !28}
!222 = !{!223}
!223 = distinct !{!223, !224, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!224 = distinct !{!224, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!225 = !{!226}
!226 = distinct !{!226, !224, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!227 = !{!223, !226}
!228 = distinct !{!228, !28}
!229 = !{!230}
!230 = distinct !{!230, !231, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!231 = distinct !{!231, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!232 = !{!233}
!233 = distinct !{!233, !231, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!234 = !{!230, !233}
!235 = !{!236, !20, i64 16}
!236 = !{!"_ZTSN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEEE", !237, i64 0, !238, i64 8, !20, i64 16}
!237 = !{!"p1 _ZTSN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEEE", !12, i64 0}
!238 = !{!"_ZTSN4absl12lts_2025051218container_internal15CompressedTupleIJNS1_22StringBtreeDefaultLessESaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPNS1_10btree_nodeINS1_10set_paramsIS9_St4lessIS9_ESA_Li256ELb0EEEEEEEE", !239, i64 0}
!239 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJNS1_22StringBtreeDefaultLessESaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPNS1_10btree_nodeINS1_10set_paramsISB_St4lessISB_ESC_Li256ELb0EEEEEEEESt16integer_sequenceImJLm0ELm1ELm2EEELb1EEE", !240, i64 0}
!240 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple7StorageIPNS1_10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISB_ESaISB_ELi256ELb0EEEEELm2ELb0EEE", !237, i64 0}
!241 = !{!237, !237, i64 0}
!242 = !{!243}
!243 = distinct !{!243, !244, !"_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15internal_locateIS9_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISD_EERKS9_PSK_EELb1EEERKT_: argument 0"}
!244 = distinct !{!244, !"_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE15internal_locateIS9_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISD_EERKS9_PSK_EELb1EEERKT_"}
!245 = !{!246, !46, i64 16}
!246 = !{!"_ZTSSt4pairIN4absl12lts_2025051218container_internal14btree_iteratorINS2_10btree_nodeINS2_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISB_ESaISB_ELi256ELb0EEEEERKSB_PSH_EEbE", !247, i64 0, !46, i64 16}
!247 = !{!"_ZTSN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_ELi256ELb0EEEEERKSA_PSG_EE", !237, i64 0, !4, i64 8}
!248 = distinct !{!248, !28}
!249 = !{!247, !4, i64 8}
!250 = !{!247, !237, i64 0}
!251 = distinct !{!251, !28}
!252 = distinct !{!252, !28}
!253 = distinct !{!253, !28}
!254 = !{!236, !237, i64 0}
!255 = distinct !{!255, !28}
!256 = distinct !{!256, !28}
!257 = distinct !{!257, !28}
!258 = distinct !{!258, !28}
!259 = distinct !{!259, !28}
!260 = distinct !{!260, !28}
!261 = distinct !{!261, !28}
!262 = distinct !{!262, !28}
!263 = distinct !{!263, !28}
!264 = distinct !{!264, !28}
!265 = distinct !{!265, !28}
!266 = distinct !{!266, !28}
end_hunk_0
