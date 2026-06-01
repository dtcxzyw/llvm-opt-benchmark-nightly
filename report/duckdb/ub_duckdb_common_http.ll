inline.NumInlined: 5859
inline.NumDeleted: 2214
begin_hunk_0_@_ZN6duckdb13HTTPLibClient17TransformResponseERKN14duckdb_httplib8ResponseE:bb.a
bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ai = load i8, ptr %i.ab, align 1, !tbaa !83
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !83
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %i.ab, i64 %i.ad, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !10  ; 2 uses
  store i64 %i.aj, ptr %i.p, align 8, !tbaa !94
  %i.ak = load ptr, ptr %4, align 8, !tbaa !23
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aj
  store i8 0, ptr %i.al, align 1, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.030.041, i64 40
  store ptr %i.q, ptr %5, align 8, !tbaa !93
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !23 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.030.041, i64 48
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !94 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.ap, ptr %i.a, align 8, !tbaa !10
  %i.aq = icmp ugt i64 %i.ap, 15
  br i1 %i.aq, label %.noexc.i18, label %._crit_edge.i.i17

.noexc.i18:                                       ; preds = %bb.j
  %i.ar = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc19 unwind label %bb.q   ; 2 uses

.noexc19:                                         ; preds = %.noexc.i18
  store ptr %i.ar, ptr %5, align 8, !tbaa !23
  %i.as = load i64, ptr %i.a, align 8, !tbaa !10
  store i64 %i.as, ptr %i.q, align 8, !tbaa !83
  br label %._crit_edge.i.i17

._crit_edge.i.i17:                                ; preds = %.noexc19, %bb.j
  %i.at = phi ptr [ %i.ar, %.noexc19 ], [ %i.q, %bb.j ] ; 2 uses
  switch i64 %i.ap, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %._crit_edge.i.i17
  %i.au = load i8, ptr %i.an, align 1, !tbaa !83
  store i8 %i.au, ptr %i.at, align 1, !tbaa !83
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i17
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr align 1 %i.an, i64 %i.ap, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge.i.i17
  %i.av = load i64, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  store i64 %i.av, ptr %i.r, align 8, !tbaa !94
  %i.aw = load ptr, ptr %5, align 8, !tbaa !23
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av
  store i8 0, ptr %i.ax, align 1, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !648)
  store ptr %i.s, ptr %3, align 8, !tbaa !93, !alias.scope !648
  %i.ay = load ptr, ptr %4, align 8, !tbaa !23, !noalias !648 ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.o
  br i1 %i.az, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.ba = load i64, ptr %i.p, align 8, !tbaa !94, !noalias !648 ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 16
  call void @llvm.assume(i1 %i.bb)
  %i.bc = add nuw nsw i64 %i.ba, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.o, i64 %i.bc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.m
  store ptr %i.ay, ptr %3, align 8, !tbaa !23, !alias.scope !648
  %i.bd = load i64, ptr %i.o, align 8, !tbaa !83, !noalias !648
  store i64 %i.bd, ptr %i.s, align 8, !tbaa !83, !alias.scope !648
  %.pre.i.i = load i64, ptr %i.p, align 8, !tbaa !94, !noalias !648
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.n
  %i.be = phi i64 [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ba, %bb.n ]
  store i64 %i.be, ptr %i.t, align 8, !tbaa !94, !alias.scope !648
  store ptr %i.o, ptr %4, align 8, !tbaa !23, !noalias !648
  store i64 0, ptr %i.p, align 8, !tbaa !94, !noalias !648
  store i8 0, ptr %i.o, align 8, !tbaa !83, !noalias !648
  store ptr %i.v, ptr %i.u, align 8, !tbaa !93, !alias.scope !648
  %i.bf = load ptr, ptr %5, align 8, !tbaa !23, !noalias !648 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.q
  br i1 %i.bg, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.bh = load i64, ptr %i.r, align 8, !tbaa !94, !noalias !648 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bi)
  %i.bj = add nuw nsw i64 %i.bh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.bj, i1 false)
  br label %_ZSt9make_pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.bf, ptr %i.u, align 8, !tbaa !23, !alias.scope !648
  %i.bk = load i64, ptr %i.q, align 8, !tbaa !83, !noalias !648
  store i64 %i.bk, ptr %i.v, align 8, !tbaa !83, !alias.scope !648
  %.pre3.i.i = load i64, ptr %i.r, align 8, !tbaa !94, !noalias !648
  br label %_ZSt9make_pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit.i

_ZSt9make_pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i, %bb.o
  %i.bl = phi i64 [ %i.bh, %bb.o ], [ %.pre3.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i ]
  store i64 %i.bl, ptr %i.w, align 8, !tbaa !94, !alias.scope !648
  store ptr %i.q, ptr %5, align 8, !tbaa !23, !noalias !648
  store i64 0, ptr %i.r, align 8, !tbaa !94, !noalias !648
  store i8 0, ptr %i.q, align 8, !tbaa !83, !noalias !648
  %i.bm = invoke { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS6_IS5_S5_EEEES6_INSA_14_Node_iteratorIS8_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S5_EEE6insertIS9_IS5_S5_EEENSt9enable_ifIXsr16is_constructibleISB_OT_EE5valueES9_INSt8__detail14_Node_iteratorISB_Lb0ELb1EEEbEE4typeESI_.exit.i unwind label %.body ; 0 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S5_EEE6insertIS9_IS5_S5_EEENSt9enable_ifIXsr16is_constructibleISB_OT_EE5valueES9_INSt8__detail14_Node_iteratorISB_Lb0ELb1EEEbEE4typeESI_.exit.i: ; preds = %_ZSt9make_pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit.i
  %i.bn = load ptr, ptr %i.u, align 8, !tbaa !23  ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.v
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S5_EEE6insertIS9_IS5_S5_EEENSt9enable_ifIXsr16is_constructibleISB_OT_EE5valueES9_INSt8__detail14_Node_iteratorISB_Lb0ELb1EEEbEE4typeESI_.exit.i
  call void @_ZdlPv(ptr noundef %i.bn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S5_EEE6insertIS9_IS5_S5_EEENSt9enable_ifIXsr16is_constructibleISB_OT_EE5valueES9_INSt8__detail14_Node_iteratorISB_Lb0ELb1EEEbEE4typeESI_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i
  %i.bp = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.s
  br i1 %i.bq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  call void @_ZdlPv(ptr noundef %i.bp) #33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i.i

.body:                                            ; preds = %_ZSt9make_pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_.exit.i
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.bs = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.q
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.bu = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.q
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i.i
  call void @_ZdlPv(ptr noundef %i.bu) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bw = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.o
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.bw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  %.sroa.030.0 = load ptr, ptr %.sroa.030.041, align 8, !tbaa !36 ; 2 uses
  %.not = icmp eq ptr %.sroa.030.0, null
  br i1 %.not, label %._crit_edge, label %bb.f

bb.p:                                             ; preds = %.noexc.i, %bb.f
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.q:                                             ; preds = %.noexc.i18
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.bs) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.q ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %i.br, %.body ] ; 2 uses
  %i.ca = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.o
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  call void @_ZdlPv(ptr noundef %i.ca) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.by, %bb.p ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ]
  call void @_ZNSt10unique_ptrIN6duckdb12HTTPResponseESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapIS6_S6_NS_6detail11case_ignore4hashENSB_8equal_toESaISt4pairIS7_S6_EEESt8functionIFbmmEE(ptr dead_on_unwind noalias writable sret(%"class.duckdb_httplib::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(872) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::function.50", align 16 ; 9 uses
  %6 = alloca %"struct.duckdb_httplib::Request", align 8 ; 75 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !93
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !94
  store i8 0, ptr %i.a, align 8, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !93
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !94
  store i8 0, ptr %i.d, align 8, !tbaa !83
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !93
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 0, ptr %i.h, align 8, !tbaa !94
  store i8 0, ptr %i.g, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 3 uses
  store i32 0, ptr %i.i, align 8, !tbaa !363
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 112
  store ptr null, ptr %i.j, align 8, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 120
  store ptr %i.i, ptr %i.k, align 8, !tbaa !364
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 128
  store ptr %i.i, ptr %i.l, align 8, !tbaa !365
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 136
  store i64 0, ptr %i.m, align 8, !tbaa !366
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 192
  store ptr %i.o, ptr %i.n, align 8, !tbaa !38
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 152
  store i64 1, ptr %i.p, align 8, !tbaa !39
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 160
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.r, align 8, !tbaa !92
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 200
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 248
  store ptr %i.u, ptr %i.t, align 8, !tbaa !38
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 208
  store i64 1, ptr %i.v, align 8, !tbaa !39
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 216
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.x, align 8, !tbaa !92
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 256
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 272 ; 2 uses
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !93
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 264
  store i64 0, ptr %i.ab, align 8, !tbaa !94
  store i8 0, ptr %i.aa, align 8, !tbaa !83
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 288
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 304 ; 2 uses
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !93
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 296
  store i64 0, ptr %i.ae, align 8, !tbaa !94
  store i8 0, ptr %i.ad, align 8, !tbaa !83
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 320
  store i32 -1, ptr %i.af, align 8, !tbaa !651
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 328
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 344 ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !93
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 336
  store i64 0, ptr %i.ai, align 8, !tbaa !94
  store i8 0, ptr %i.ah, align 8, !tbaa !83
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 360
  store i32 -1, ptr %i.aj, align 8, !tbaa !674
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 368
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 384 ; 2 uses
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !93
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 376
  store i64 0, ptr %i.am, align 8, !tbaa !94
  store i8 0, ptr %i.al, align 8, !tbaa !83
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 400
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 416 ; 2 uses
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !93
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 408
  store i64 0, ptr %i.ap, align 8, !tbaa !94
  store i8 0, ptr %i.ao, align 8, !tbaa !83
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 440 ; 3 uses
  store i32 0, ptr %i.aq, align 8, !tbaa !363
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 448
  store ptr null, ptr %i.ar, align 8, !tbaa !40
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 456
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !364
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 464
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !365
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 472
  store i64 0, ptr %i.au, align 8, !tbaa !366
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 488 ; 3 uses
  store i32 0, ptr %i.av, align 8, !tbaa !363
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 496
  store ptr null, ptr %i.aw, align 8, !tbaa !40
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 504
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !364
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 512
  store ptr %i.av, ptr %i.ay, align 8, !tbaa !365
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 520
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 576
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 624
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.az, i8 0, i64 56, i1 false)
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !87
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 584
  store i64 1, ptr %i.bc, align 8, !tbaa !88
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 592
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 608
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.be, align 8, !tbaa !92
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 616
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 648
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 656
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i8 0, i64 32, i1 false)
  store ptr @_ZNSt17_Function_handlerIFbvEN14duckdb_httplib7Request20is_connection_closedMUlvE_EE9_M_invokeERKSt9_Any_data, ptr %i.bh, align 8, !tbaa !675
  store ptr @_ZNSt17_Function_handlerIFbvEN14duckdb_httplib7Request20is_connection_closedMUlvE_EE10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, ptr %i.bg, align 8, !tbaa !12
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 664
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 816
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.bi, i8 0, i64 152, i1 false)
  store i64 20, ptr %i.bj, align 8, !tbaa !676
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 824
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 872
  store i64 0, ptr %i.bl, align 8, !tbaa !677
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 880 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.bk, i8 0, i64 41, i1 false)
  store i64 -9223372036854775808, ptr %i.bm, align 8
  %i.bn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.g ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.bo = icmp eq ptr %3, %i.n
  br i1 %i.bo, label %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEEaSERKSF_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE18_M_assign_elementsIRKSM_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEEaSERKSF_.exit unwind label %bb.g

_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEEaSERKSF_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.b
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 752 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 24, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.br = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !204
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !12
  %.not.i.i.not.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFbmmEEC2EOS1_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEEaSERKSF_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 16, i1 false), !tbaa.struct !320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFbmmEEC2EOS1_.exit.i

_ZNSt8functionIFbmmEEC2EOS1_.exit.i:              ; preds = %bb.c, %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEEaSERKSF_.exit
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %5, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.bp, align 8, !tbaa !83
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 768 ; 3 uses
  %i.bv = load <2 x ptr>, ptr %i.bu, align 8, !tbaa !204
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !204 ; 2 uses
  store <2 x ptr> %i.bv, ptr %i.bt, align 16, !tbaa !204
  store <2 x ptr> %i.br, ptr %i.bu, align 8, !tbaa !204
  %.not.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i, label %_ZNSt8functionIFbmmEEaSEOS1_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt8functionIFbmmEEC2EOS1_.exit.i
  %i.bx = invoke noundef zeroext i1 %i.bw(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt8functionIFbmmEEaSEOS1_.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #34
  unreachable

_ZNSt8functionIFbmmEEaSEOS1_.exit:                ; preds = %_ZNSt8functionIFbmmEEC2EOS1_.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !317
  %i.cc = icmp sgt i64 %i.cb, 0
  br i1 %i.cc, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNSt8functionIFbmmEEaSEOS1_.exit
  %i.cd = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #24
  store i64 %i.cd, ptr %i.bm, align 8, !tbaa !10
  br label %bb.h

bb.g:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.a, %bb.h
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14duckdb_httplib7RequestD2Ev(ptr noundef nonnull align 8 dead_on_return(888) dereferenceable(888) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  resume { ptr, i32 } %i.ce

bb.h:                                             ; preds = %bb.f, %_ZNSt8functionIFbmmEEaSEOS1_.exit
  invoke void @_ZN14duckdb_httplib10ClientImpl5send_EONS_7RequestE(ptr dead_on_unwind writable sret(%"class.duckdb_httplib::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(872) %1, ptr noundef nonnull align 8 dereferenceable(888) %6)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  call void @_ZN14duckdb_httplib7RequestD2Ev(ptr noundef nonnull align 8 dead_on_return(888) dereferenceable(888) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN14duckdb_httplib10ClientImpl5send_EONS_7RequestE(ptr dead_on_unwind noalias writable sret(%"class.duckdb_httplib::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(872) %1, ptr noundef nonnull align 8 dereferenceable(888) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr.422", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678)
  %i.b = tail call noalias noundef nonnull dereferenceable(392) ptr @_Znwm(i64 noundef 392) #36, !noalias !678 ; 28 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(376) %i.c, i8 0, i64 376, i1 false), !noalias !678
  store ptr %i.c, ptr %i.b, align 8, !tbaa !93, !noalias !678
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !94, !noalias !678
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 -1, ptr %i.e, align 8, !tbaa !118, !noalias !678
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.g, ptr %i.f, align 8, !tbaa !93, !noalias !678
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store ptr %i.i, ptr %i.h, align 8, !tbaa !38, !noalias !678
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 1, ptr %i.j, align 8, !tbaa !39, !noalias !678
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false), !noalias !678
  store float 1.000000e+00, ptr %i.l, align 8, !tbaa !92, !noalias !678
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !678
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store ptr %i.o, ptr %i.n, align 8, !tbaa !38, !noalias !678
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store i64 1, ptr %i.p, align 8, !tbaa !39, !noalias !678
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false), !noalias !678
  store float 1.000000e+00, ptr %i.r, align 8, !tbaa !92, !noalias !678
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false), !noalias !678
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store ptr %i.u, ptr %i.t, align 8, !tbaa !93, !noalias !678
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  store ptr %i.w, ptr %i.v, align 8, !tbaa !93, !noalias !678
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(74) %i.x, i8 0, i64 74, i1 false), !noalias !678
  store ptr %i.z, ptr %i.y, align 8, !tbaa !93, !noalias !678
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !93, !noalias !678
  store ptr %i.b, ptr %3, align 8, !tbaa !116, !alias.scope !678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !504
  %i.ac = invoke noundef nonnull align 8 dereferenceable(392) ptr @_ZNK6duckdb10unique_ptrIN14duckdb_httplib8ResponseESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.m       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %i.ae = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ad) #24, !inline_history !681 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ae) #32
          to label %.noexc unwind label %bb.m, !inline_history !681

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i: ; preds = %bb.b
  %i.af = invoke noundef zeroext i1 @_ZN14duckdb_httplib10ClientImpl5send_ERNS_7RequestERNS_8ResponseERNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(872) %1, ptr noundef nonnull align 8 dereferenceable(888) %2, ptr noundef nonnull align 8 dereferenceable(392) %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.d unwind label %bb.f, !inline_history !681

bb.d:                                             ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i
  %i.ag = load i32, ptr %i.a, align 4, !tbaa !504
  %i.ah = icmp eq i32 %i.ag, 32
  br i1 %i.ah, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ai = invoke noundef zeroext i1 @_ZN14duckdb_httplib10ClientImpl5send_ERNS_7RequestERNS_8ResponseERNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(872) %1, ptr noundef nonnull align 8 dereferenceable(888) %2, ptr noundef nonnull align 8 dereferenceable(392) %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.g unwind label %bb.f, !inline_history !681

bb.f:                                             ; preds = %bb.e, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ad) #24, !inline_history !681 ; 0 uses
  br label %.body

bb.g:                                             ; preds = %bb.e, %bb.d
  %.0.in.i = phi i1 [ %i.af, %bb.d ], [ %i.ai, %bb.e ]
  %i.al = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ad) #24, !inline_history !681 ; 0 uses
  br i1 %.0.in.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = load i64, ptr %3, align 8, !tbaa !116
  store ptr null, ptr %3, align 8, !tbaa !116
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sroa.0.0 = phi i64 [ %i.am, %bb.h ], [ 0, %bb.g ]
  %i.an = load i32, ptr %i.a, align 4, !tbaa !504
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  store i64 %.sroa.0.0, ptr %0, align 8, !tbaa !116
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.an, ptr %i.ap, align 8, !tbaa !127
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !38 ; 3 uses
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !38
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !39 ; 2 uses
  store i64 %i.au, ptr %i.as, align 8, !tbaa !39
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !28 ; 3 uses
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !36
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !351
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !351
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !tbaa.struct !162
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  store ptr null, ptr %i.bd, align 8, !tbaa !350
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 4 uses
  %i.bf = icmp eq ptr %i.ar, %i.be
  br i1 %i.bf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr %i.bd, ptr %i.aq, align 8, !tbaa !38
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !350
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !350
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bh = phi ptr [ %i.bd, %bb.j ], [ %i.ar, %bb.i ]
  %.not.i.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN14duckdb_httplib8ResponseESt14default_deleteIS1_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !113
  %i.bk = urem i64 %i.bj, %i.au
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bk
  store ptr %i.av, ptr %i.bl, align 8, !tbaa !112
  br label %_ZNSt10unique_ptrIN14duckdb_httplib8ResponseESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN14duckdb_httplib8ResponseESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.l, %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 184
  store i64 0, ptr %i.bm, align 8, !tbaa !349
  store i64 1, ptr %i.at, align 8, !tbaa !39
end_hunk_0
begin_hunk_1_@_ZN14duckdb_httplib10ClientImpl15process_requestERNS_6StreamERNS_7RequestERNS_8ResponseEbRNS_5ErrorE:bb.a
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !591, !range !146, !noundef !147
  %i.dm = trunc nuw i8 %i.dl to i1
  %i.dn = invoke noundef zeroext i1 @_ZN14duckdb_httplib6detail12read_contentINS_8ResponseEEEbRNS_6StreamERT_mRiSt8functionIFbmmEES8_IFbPKcmmmEEb(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(392) %3, i64 noundef -1, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull %12, ptr noundef nonnull %13, i1 noundef zeroext %i.dm)
          to label %bb.ap unwind label %bb.ax     ; 2 uses

bb.ap:                                            ; preds = %_ZNSt8functionIFbPKcmmmEEC2EOS3_.exit
  %i.do = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !12 ; 2 uses
  %.not.i = icmp eq ptr %i.dp, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dq = invoke noundef zeroext i1 %i.dp(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.ar ; 0 uses

bb.ar:                                            ; preds = %bb.aq
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.ap, %bb.aq
  %i.dt = load ptr, ptr %i.dd, align 8, !tbaa !12 ; 2 uses
  %.not.i102 = icmp eq ptr %i.dt, null
  br i1 %.not.i102, label %_ZNSt14_Function_baseD2Ev.exit103, label %bb.as

bb.as:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.du = invoke noundef zeroext i1 %i.dt(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit103 unwind label %bb.at ; 0 uses

bb.at:                                            ; preds = %bb.as
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit103:                ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.as
  br i1 %i.dn, label %.thread.sink.split, label %bb.au

bb.au:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit103
  %i.dx = load i32, ptr %5, align 4, !tbaa !504
  %.not81 = icmp eq i32 %i.dx, 7
  br i1 %.not81, label %bb.bc, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i32 4, ptr %5, align 4, !tbaa !504
  br label %bb.bc

bb.aw:                                            ; preds = %bb.am, %bb.bc
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit107

bb.ax:                                            ; preds = %_ZNSt8functionIFbPKcmmmEEC2EOS3_.exit
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !12 ; 2 uses
  %.not.i104 = icmp eq ptr %i.eb, null
  br i1 %.not.i104, label %_ZNSt14_Function_baseD2Ev.exit105, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ec = invoke noundef zeroext i1 %i.eb(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit105 unwind label %bb.az ; 0 uses

bb.az:                                            ; preds = %bb.ay
  %i.ed = landingpad { ptr, i32 }
          catch ptr null
  %i.ee = extractvalue { ptr, i32 } %i.ed, 0
  call void @__clang_call_terminate(ptr %i.ee) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit105:                ; preds = %bb.ax, %bb.ay
  %i.ef = load ptr, ptr %i.dd, align 8, !tbaa !12 ; 2 uses
  %.not.i106 = icmp eq ptr %i.ef, null
  br i1 %.not.i106, label %_ZNSt14_Function_baseD2Ev.exit107, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit105
  %i.eg = invoke noundef zeroext i1 %i.ef(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit107 unwind label %bb.bb ; 0 uses

bb.bb:                                            ; preds = %bb.ba
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  %i.ei = extractvalue { ptr, i32 } %i.eh, 0
  call void @__clang_call_terminate(ptr %i.ei) #34
  unreachable

bb.bc:                                            ; preds = %bb.av, %bb.au
  invoke void @_ZNK14duckdb_httplib10ClientImpl16output_error_logERKNS_5ErrorEPKNS_7RequestE(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull %2)
          to label %.thread.sink.split unwind label %bb.aw

_ZNSt14_Function_baseD2Ev.exit107:                ; preds = %bb.ba, %_ZNSt14_Function_baseD2Ev.exit105, %bb.aw
  %.pn82 = phi { ptr, i32 } [ %i.dy, %bb.aw ], [ %i.dz, %_ZNSt14_Function_baseD2Ev.exit105 ], [ %i.dz, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %bb.bg

.thread.sink.split:                               ; preds = %_ZNSt14_Function_baseD2Ev.exit103, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.ae, %bb.al
  %i.ej = phi i1 [ true, %bb.al ], [ false, %bb.ae ], [ %i.dn, %.thread.sink.split ]
  %i.ek = load ptr, ptr %i.cf, align 8, !tbaa !12 ; 2 uses
  %.not.i108 = icmp eq ptr %i.ek, null
  br i1 %.not.i108, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %.thread
  %i.el = invoke noundef zeroext i1 %i.ek(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %bb.bf unwind label %bb.be     ; 0 uses

bb.be:                                            ; preds = %bb.bd
  %i.em = landingpad { ptr, i32 }
          catch ptr null
  %i.en = extractvalue { ptr, i32 } %i.em, 0
  call void @__clang_call_terminate(ptr %i.en) #34
  unreachable

bb.bf:                                            ; preds = %bb.bd, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br i1 %i.ej, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread121, label %_ZNK14duckdb_httplib10ClientImpl16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %bb.aj, %_ZNSt14_Function_baseD2Ev.exit107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %.pn82.pn = phi { ptr, i32 } [ %.pn82, %_ZNSt14_Function_baseD2Ev.exit107 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ], [ %i.da, %bb.aj ], [ %.pn75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ]
  %i.eo = load ptr, ptr %i.cf, align 8, !tbaa !12 ; 2 uses
  %.not.i110 = icmp eq ptr %i.eo, null
  br i1 %.not.i110, label %_ZNSt14_Function_baseD2Ev.exit111, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ep = invoke noundef zeroext i1 %i.eo(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit111 unwind label %bb.bi ; 0 uses

bb.bi:                                            ; preds = %bb.bh
  %i.eq = landingpad { ptr, i32 }
          catch ptr null
  %i.er = extractvalue { ptr, i32 } %i.eq, 0
  call void @__clang_call_terminate(ptr %i.er) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit111:                ; preds = %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %common.resume

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread121: ; preds = %bb.bf, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.u
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !12
  %.not.i.i.not.i112 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.not.i112, label %_ZNK14duckdb_httplib10ClientImpl16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread121
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 3 uses
  %i.ew = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ev) #24 ; 2 uses
  %.not.i.i4.i113 = icmp eq i32 %i.ew, 0
  br i1 %.not.i.i4.i113, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i114, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @_ZSt20__throw_system_errori(i32 noundef %i.ew) #32
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i114:     ; preds = %bb.bj
  %i.ex = load ptr, ptr %i.et, align 8, !tbaa !12
  %.not.i.i5.i115 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i5.i115, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i114
  invoke void @_ZSt25__throw_bad_function_callv() #32
          to label %.noexc.i116 unwind label %bb.bn

.noexc.i116:                                      ; preds = %bb.bl
  unreachable

bb.bm:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i114
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !734
  invoke void %i.ez(ptr noundef nonnull align 8 dereferenceable(32) %i.es, ptr noundef nonnull align 8 dereferenceable(888) %2, ptr noundef nonnull align 8 dereferenceable(392) %3)
          to label %_ZNKSt8functionIFvRKN14duckdb_httplib7RequestERKNS0_8ResponseEEEclES3_S6_.exit.i unwind label %bb.bn, !inline_history !735

_ZNKSt8functionIFvRKN14duckdb_httplib7RequestERKNS0_8ResponseEEEclES3_S6_.exit.i: ; preds = %bb.bm
  %i.fa = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ev) #24 ; 0 uses
  br label %_ZNK14duckdb_httplib10ClientImpl16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.fb = landingpad { ptr, i32 }
          cleanup
  %i.fc = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ev) #24 ; 0 uses
  br label %common.resume

_ZNK14duckdb_httplib10ClientImpl16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit: ; preds = %_ZNKSt8functionIFvRKN14duckdb_httplib7RequestERKNS0_8ResponseEEEclES3_S6_.exit.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread121, %.thread123, %bb.s, %bb.n, %bb.bf, %bb.a
  %.6 = phi i1 [ false, %.thread123 ], [ false, %bb.bf ], [ false, %bb.a ], [ false, %bb.n ], [ false, %bb.s ], [ true, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread121 ], [ true, %_ZNKSt8functionIFvRKN14duckdb_httplib7RequestERKNS0_8ResponseEEEclES3_S6_.exit.i ]
  ret i1 %.6
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(888) ptr @_ZN14duckdb_httplib7RequestaSERKS0_(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(888) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.53", align 16 ; 11 uses
  %3 = alloca %"class.std::function.50", align 16 ; 11 uses
  %4 = alloca %"class.std::function.50", align 16 ; 11 uses
  %5 = alloca %"class.std::function.48", align 16 ; 11 uses
  %6 = alloca %"class.std::function.46", align 16 ; 11 uses
  %7 = alloca %"class.std::function.39", align 16 ; 11 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.g = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.f) ; 0 uses
  %i.h = icmp eq ptr %1, %0                       ; 2 uses
  br i1 %i.h, label %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEEaSERKSF_.exit27, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 144
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE18_M_assign_elementsIRKSM_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 200
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE18_M_assign_elementsIRKSM_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %i.l)
  br label %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEEaSERKSF_.exit27

_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEEaSERKSF_.exit27: ; preds = %bb.a, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 288
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.r = load i32, ptr %i.q, align 8, !tbaa !651
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i32 %i.r, ptr %i.s, align 8, !tbaa !651
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 328
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.w = load i32, ptr %i.v, align 8, !tbaa !674
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i32 %i.w, ptr %i.x, align 8, !tbaa !674
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 368
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 400
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.ae = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N14duckdb_httplib9FormFieldEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEaSERKSG_(ptr noundef nonnull align 8 dereferenceable(96) %i.ac, ptr noundef nonnull align 8 dereferenceable(96) %i.ad) ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.ah = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N14duckdb_httplib8FormDataEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEaSERKSG_(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(48) %i.ag) ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.ak = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairIllESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.aj) ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.an = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN10duckdb_re210GroupMatchESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.am) ; 0 uses
  br i1 %i.h, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEaSERKSE_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEEaSERKSF_.exit27
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 576
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE18_M_assign_elementsIRKSL_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.ao, ptr noundef nonnull align 8 dereferenceable(56) %i.ap)
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEaSERKSE_.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEaSERKSE_.exit: ; preds = %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEEaSERKSF_.exit27, %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFbvEEC2ERKS1_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEaSERKSE_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.av = invoke noundef zeroext i1 %i.at(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i32 noundef 2)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.aw = load <2 x ptr>, ptr %i.as, align 8, !tbaa !204
  br label %_ZNSt8functionIFbvEEC2ERKS1_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %i.ar, align 16, !tbaa !12 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = invoke noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %common.resume unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #34
  unreachable

common.resume:                                    ; preds = %bb.ao, %bb.ap, %bb.ah, %bb.ai, %bb.aa, %bb.ab, %bb.t, %bb.u, %bb.m, %bb.n, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.dy, %bb.ah ], [ %i.ax, %bb.f ], [ %i.bt, %bb.m ], [ %i.cm, %bb.t ], [ %i.df, %bb.aa ], [ %i.ax, %bb.g ], [ %i.bt, %bb.n ], [ %i.cm, %bb.u ], [ %i.df, %bb.ab ], [ %i.dy, %bb.ai ], [ %i.et, %bb.ap ], [ %i.et, %bb.ao ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8functionIFbvEEC2ERKS1_.exit.i:              ; preds = %bb.e, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEaSERKSE_.exit
  %i.bc = phi <2 x ptr> [ splat (ptr null), %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEaSERKSE_.exit ], [ %i.aw, %bb.e ]
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %7, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.aq, align 8, !tbaa !83
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 3 uses
  %i.be = load <2 x ptr>, ptr %i.bd, align 8, !tbaa !204
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !204 ; 2 uses
  store <2 x ptr> %i.be, ptr %i.ar, align 16, !tbaa !204
  store <2 x ptr> %i.bc, ptr %i.bd, align 8, !tbaa !204
  %.not.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i, label %_ZNSt8functionIFbvEEaSERKS1_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt8functionIFbvEEC2ERKS1_.exit.i
  %i.bg = invoke noundef zeroext i1 %i.bf(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt8functionIFbvEEaSERKS1_.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #34
  unreachable

_ZNSt8functionIFbvEEaSERKS1_.exit:                ; preds = %_ZNSt8functionIFbvEEC2ERKS1_.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.bl = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.bk) ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.not.i.i29 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.not.i.i29, label %_ZNSt8functionIFbRKN14duckdb_httplib8ResponseEEEC2ERKS5_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt8functionIFbvEEaSERKS1_.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.br = invoke noundef zeroext i1 %i.bp(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.bq, i32 noundef 2)
          to label %bb.l unwind label %bb.m       ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.bs = load <2 x ptr>, ptr %i.bo, align 8, !tbaa !204
  br label %_ZNSt8functionIFbRKN14duckdb_httplib8ResponseEEEC2ERKS5_.exit.i

bb.m:                                             ; preds = %bb.k
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = load ptr, ptr %i.bn, align 16, !tbaa !12 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i30, label %common.resume, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = invoke noundef zeroext i1 %i.bu(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %common.resume unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #34
  unreachable

_ZNSt8functionIFbRKN14duckdb_httplib8ResponseEEEC2ERKS5_.exit.i: ; preds = %bb.l, %_ZNSt8functionIFbvEEaSERKS1_.exit
  %i.by = phi <2 x ptr> [ splat (ptr null), %_ZNSt8functionIFbvEEaSERKS1_.exit ], [ %i.bs, %bb.l ]
  %.sroa.0.i.i.i28.sroa.0.0.copyload = load <2 x i64>, ptr %6, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i28.sroa.0.0.copyload, ptr %i.bm, align 8, !tbaa !83
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 3 uses
  %i.ca = load <2 x ptr>, ptr %i.bz, align 8, !tbaa !204
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !204 ; 2 uses
  store <2 x ptr> %i.ca, ptr %i.bn, align 16, !tbaa !204
  store <2 x ptr> %i.by, ptr %i.bz, align 8, !tbaa !204
  %.not.i.i32 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i32, label %_ZNSt8functionIFbRKN14duckdb_httplib8ResponseEEEaSERKS5_.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt8functionIFbRKN14duckdb_httplib8ResponseEEEC2ERKS5_.exit.i
  %i.cc = invoke noundef zeroext i1 %i.cb(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt8functionIFbRKN14duckdb_httplib8ResponseEEEaSERKS5_.exit unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #34
  unreachable

_ZNSt8functionIFbRKN14duckdb_httplib8ResponseEEEaSERKS5_.exit: ; preds = %_ZNSt8functionIFbRKN14duckdb_httplib8ResponseEEEC2ERKS5_.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 736 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.not.i.i34 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.not.i.i34, label %_ZNSt8functionIFbPKcmmmEEC2ERKS3_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt8functionIFbRKN14duckdb_httplib8ResponseEEEaSERKS5_.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.ck = invoke noundef zeroext i1 %i.ci(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.cj, i32 noundef 2)
          to label %bb.s unwind label %bb.t       ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.cl = load <2 x ptr>, ptr %i.ch, align 8, !tbaa !204
  br label %_ZNSt8functionIFbPKcmmmEEC2ERKS3_.exit.i

bb.t:                                             ; preds = %bb.r
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = load ptr, ptr %i.cg, align 16, !tbaa !12 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i35, label %common.resume, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = invoke noundef zeroext i1 %i.cn(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %common.resume unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #34
  unreachable

_ZNSt8functionIFbPKcmmmEEC2ERKS3_.exit.i:         ; preds = %bb.s, %_ZNSt8functionIFbRKN14duckdb_httplib8ResponseEEEaSERKS5_.exit
  %i.cr = phi <2 x ptr> [ splat (ptr null), %_ZNSt8functionIFbRKN14duckdb_httplib8ResponseEEEaSERKS5_.exit ], [ %i.cl, %bb.s ]
  %.sroa.0.i.i.i33.sroa.0.0.copyload = load <2 x i64>, ptr %5, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i33.sroa.0.0.copyload, ptr %i.cf, align 8, !tbaa !83
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 3 uses
  %i.ct = load <2 x ptr>, ptr %i.cs, align 8, !tbaa !204
  %i.cu = load ptr, ptr %i.cs, align 8, !tbaa !204 ; 2 uses
  store <2 x ptr> %i.ct, ptr %i.cg, align 16, !tbaa !204
  store <2 x ptr> %i.cr, ptr %i.cs, align 8, !tbaa !204
  %.not.i.i37 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i37, label %_ZNSt8functionIFbPKcmmmEEaSERKS3_.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt8functionIFbPKcmmmEEC2ERKS3_.exit.i
  %i.cv = invoke noundef zeroext i1 %i.cu(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt8functionIFbPKcmmmEEaSERKS3_.exit unwind label %bb.x ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #34
  unreachable

_ZNSt8functionIFbPKcmmmEEaSERKS3_.exit:           ; preds = %_ZNSt8functionIFbPKcmmmEEC2ERKS3_.exit.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.not.i.i39 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.not.i.i39, label %_ZNSt8functionIFbmmEEC2ERKS1_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt8functionIFbPKcmmmEEaSERKS3_.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 752
  %i.dd = invoke noundef zeroext i1 %i.db(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.dc, i32 noundef 2)
          to label %bb.z unwind label %bb.aa      ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.de = load <2 x ptr>, ptr %i.da, align 8, !tbaa !204
  br label %_ZNSt8functionIFbmmEEC2ERKS1_.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dg = load ptr, ptr %i.cz, align 16, !tbaa !12 ; 2 uses
  %.not.i.i.i40 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i40, label %common.resume, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dh = invoke noundef zeroext i1 %i.dg(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %common.resume unwind label %bb.ac ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.di = landingpad { ptr, i32 }
          catch ptr null
  %i.dj = extractvalue { ptr, i32 } %i.di, 0
  call void @__clang_call_terminate(ptr %i.dj) #34
  unreachable

_ZNSt8functionIFbmmEEC2ERKS1_.exit.i:             ; preds = %bb.z, %_ZNSt8functionIFbPKcmmmEEaSERKS3_.exit
  %i.dk = phi <2 x ptr> [ splat (ptr null), %_ZNSt8functionIFbPKcmmmEEaSERKS3_.exit ], [ %i.de, %bb.z ]
  %.sroa.0.i.i.i38.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.cy, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i38.sroa.0.0.copyload, ptr %i.cy, align 8, !tbaa !83
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 3 uses
  %i.dm = load <2 x ptr>, ptr %i.dl, align 8, !tbaa !204
  %i.dn = load ptr, ptr %i.dl, align 8, !tbaa !204 ; 2 uses
  store <2 x ptr> %i.dm, ptr %i.cz, align 16, !tbaa !204
  store <2 x ptr> %i.dk, ptr %i.dl, align 8, !tbaa !204
  %.not.i.i42 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i42, label %_ZNSt8functionIFbmmEEaSERKS1_.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt8functionIFbmmEEC2ERKS1_.exit.i
  %i.do = invoke noundef zeroext i1 %i.dn(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt8functionIFbmmEEaSERKS1_.exit unwind label %bb.ae ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  %i.dq = extractvalue { ptr, i32 } %i.dp, 0
  call void @__clang_call_terminate(ptr %i.dq) #34
  unreachable

_ZNSt8functionIFbmmEEaSERKS1_.exit:               ; preds = %_ZNSt8functionIFbmmEEC2ERKS1_.exit.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 800 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.not.i.i44 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.not.i.i44, label %_ZNSt8functionIFbmmEEC2ERKS1_.exit.i47, label %bb.af

bb.af:                                            ; preds = %_ZNSt8functionIFbmmEEaSERKS1_.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 784
  %i.dw = invoke noundef zeroext i1 %i.du(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.dv, i32 noundef 2)
          to label %bb.ag unwind label %bb.ah     ; 0 uses

bb.ag:                                            ; preds = %bb.af
  %i.dx = load <2 x ptr>, ptr %i.dt, align 8, !tbaa !204
  br label %_ZNSt8functionIFbmmEEC2ERKS1_.exit.i47

bb.ah:                                            ; preds = %bb.af
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dz = load ptr, ptr %i.ds, align 16, !tbaa !12 ; 2 uses
  %.not.i.i.i45 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i45, label %common.resume, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ea = invoke noundef zeroext i1 %i.dz(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %common.resume unwind label %bb.aj ; 0 uses

bb.aj:                                            ; preds = %bb.ai
  %i.eb = landingpad { ptr, i32 }
          catch ptr null
  %i.ec = extractvalue { ptr, i32 } %i.eb, 0
  call void @__clang_call_terminate(ptr %i.ec) #34
  unreachable

_ZNSt8functionIFbmmEEC2ERKS1_.exit.i47:           ; preds = %bb.ag, %_ZNSt8functionIFbmmEEaSERKS1_.exit
  %i.ed = phi <2 x ptr> [ splat (ptr null), %_ZNSt8functionIFbmmEEaSERKS1_.exit ], [ %i.dx, %bb.ag ]
  %.sroa.0.i.i.i43.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.dr, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i43.sroa.0.0.copyload, ptr %i.dr, align 8, !tbaa !83
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 3 uses
  %i.ef = load <2 x ptr>, ptr %i.ee, align 8, !tbaa !204
  %i.eg = load ptr, ptr %i.ee, align 8, !tbaa !204 ; 2 uses
  store <2 x ptr> %i.ef, ptr %i.ds, align 16, !tbaa !204
  store <2 x ptr> %i.ed, ptr %i.ee, align 8, !tbaa !204
  %.not.i.i48 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i48, label %_ZNSt8functionIFbmmEEaSERKS1_.exit49, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt8functionIFbmmEEC2ERKS1_.exit.i47
  %i.eh = invoke noundef zeroext i1 %i.eg(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt8functionIFbmmEEaSERKS1_.exit49 unwind label %bb.al ; 0 uses

bb.al:                                            ; preds = %bb.ak
  %i.ei = landingpad { ptr, i32 }
          catch ptr null
  %i.ej = extractvalue { ptr, i32 } %i.ei, 0
  call void @__clang_call_terminate(ptr %i.ej) #34
  unreachable

_ZNSt8functionIFbmmEEaSERKS1_.exit49:             ; preds = %_ZNSt8functionIFbmmEEC2ERKS1_.exit.i47, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull align 8 dereferenceable(16) %i.el, i64 16, i1 false)
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 848 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.not.i.i51 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.not.i.i51, label %_ZNSt8functionIFbmmRN14duckdb_httplib8DataSinkEEEC2ERKS4_.exit.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt8functionIFbmmEEaSERKS1_.exit49
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 832
  %i.er = invoke noundef zeroext i1 %i.ep(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.eq, i32 noundef 2)
          to label %bb.an unwind label %bb.ao     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.es = load <2 x ptr>, ptr %i.eo, align 8, !tbaa !204
  br label %_ZNSt8functionIFbmmRN14duckdb_httplib8DataSinkEEEC2ERKS4_.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eu = load ptr, ptr %i.en, align 16, !tbaa !12 ; 2 uses
  %.not.i.i.i52 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i52, label %common.resume, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ev = invoke noundef zeroext i1 %i.eu(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %common.resume unwind label %bb.aq ; 0 uses

bb.aq:                                            ; preds = %bb.ap
  %i.ew = landingpad { ptr, i32 }
          catch ptr null
  %i.ex = extractvalue { ptr, i32 } %i.ew, 0
  call void @__clang_call_terminate(ptr %i.ex) #34
  unreachable

_ZNSt8functionIFbmmRN14duckdb_httplib8DataSinkEEEC2ERKS4_.exit.i: ; preds = %bb.an, %_ZNSt8functionIFbmmEEaSERKS1_.exit49
  %i.ey = phi <2 x ptr> [ splat (ptr null), %_ZNSt8functionIFbmmEEaSERKS1_.exit49 ], [ %i.es, %bb.an ]
  %.sroa.0.i.i.i50.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.em, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i50.sroa.0.0.copyload, ptr %i.em, align 8, !tbaa !83
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 3 uses
  %i.fa = load <2 x ptr>, ptr %i.ez, align 8, !tbaa !204
  %i.fb = load ptr, ptr %i.ez, align 8, !tbaa !204 ; 2 uses
  store <2 x ptr> %i.fa, ptr %i.en, align 16, !tbaa !204
  store <2 x ptr> %i.ey, ptr %i.ez, align 8, !tbaa !204
  %.not.i.i54 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i54, label %_ZNSt8functionIFbmmRN14duckdb_httplib8DataSinkEEEaSERKS4_.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt8functionIFbmmRN14duckdb_httplib8DataSinkEEEC2ERKS4_.exit.i
  %i.fc = invoke noundef zeroext i1 %i.fb(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt8functionIFbmmRN14duckdb_httplib8DataSinkEEEaSERKS4_.exit unwind label %bb.as ; 0 uses

bb.as:                                            ; preds = %bb.ar
  %i.fd = landingpad { ptr, i32 }
          catch ptr null
  %i.fe = extractvalue { ptr, i32 } %i.fd, 0
  call void @__clang_call_terminate(ptr %i.fe) #34
  unreachable

_ZNSt8functionIFbmmRN14duckdb_httplib8DataSinkEEEaSERKS4_.exit: ; preds = %_ZNSt8functionIFbmmRN14duckdb_httplib8DataSinkEEEC2ERKS4_.exit.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 864
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ff, ptr noundef nonnull align 8 dereferenceable(24) %i.fg, i64 24, i1 false)
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN14duckdb_httplib10ClientImpl8redirectERNS_7RequestERNS_8ResponseERNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(888) %1, ptr noundef nonnull align 8 dereferenceable(392) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"struct.duckdb_re2::Match", align 8 ; 22 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 816
  %i.j = load i64, ptr %i.i, align 8, !tbaa !676
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  store i32 6, ptr %3, align 4, !tbaa !504
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12
  %.not.i.i.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.not.i, label %_ZNK14duckdb_httplib10ClientImpl16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 3 uses
  %i.p = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #24 ; 2 uses
  %.not.i.i4.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i4.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.p) #32
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %1, ptr %i.h, align 8, !tbaa !683
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !12
  %.not.i.i5.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i5.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  invoke void @_ZSt25__throw_bad_function_callv() #32
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !685
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.g unwind label %bb.h, !inline_history !686

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.t = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #24 ; 0 uses
  br label %_ZNK14duckdb_httplib10ClientImpl16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.h ], [ %.pn40.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179 ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #24 ; 0 uses
  br label %common.resume

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.w, ptr %5, align 8, !tbaa !93
  store i64 7957695015157985132, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 8, ptr %i.x, align 8, !tbaa !94
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 0, ptr %i.y, align 8, !tbaa !83
  call void @llvm.experimental.noalias.scope.decl(metadata !736)
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.aa = invoke noundef ptr @_ZN14duckdb_httplib6detail16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS0_11case_ignore4hashENS8_8equal_toESaISt4pairIKS7_S7_EEERSC_PKcm(ptr noundef nonnull align 8 dereferenceable(56) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.60, i64 noundef 0)
          to label %.noexc56 unwind label %bb.m   ; 4 uses

.noexc56:                                         ; preds = %._crit_edge.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.ab, ptr %4, align 8, !tbaa !93, !alias.scope !736
  %i.ac = icmp eq ptr %i.aa, null
  br i1 %i.ac, label %.noexc.i55, label %bb.i

.noexc.i55:                                       ; preds = %.noexc56
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.82) #32
          to label %.noexc57 unwind label %bb.m

.noexc57:                                         ; preds = %.noexc.i55
  unreachable

bb.i:                                             ; preds = %.noexc56
  %i.ad = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aa) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24, !noalias !736
  store i64 %i.ad, ptr %i.g, align 8, !tbaa !10, !noalias !736
  %i.ae = icmp ugt i64 %i.ad, 15
  br i1 %i.ae, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.i
  %i.af = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc58 unwind label %bb.m   ; 2 uses

.noexc58:                                         ; preds = %.noexc.i.i
  store ptr %i.af, ptr %4, align 8, !tbaa !23, !alias.scope !736
  %i.ag = load i64, ptr %i.g, align 8, !tbaa !10, !noalias !736
  store i64 %i.ag, ptr %i.ab, align 8, !tbaa !83, !alias.scope !736
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc58, %bb.i
  %i.ah = phi ptr [ %i.af, %.noexc58 ], [ %i.ab, %bb.i ] ; 2 uses
  switch i64 %i.ad, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.ai = load i8, ptr %i.aa, align 1, !tbaa !83
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !83
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr nonnull align 1 %i.aa, i64 %i.ad, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i
  %i.aj = load i64, ptr %i.g, align 8, !tbaa !10, !noalias !736 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !94, !alias.scope !736
  %i.al = load ptr, ptr %4, align 8, !tbaa !23, !alias.scope !736
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24, !noalias !736
  %i.an = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.w
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.an) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.ap = load i64, ptr %i.ak, align 8, !tbaa !94
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.cm, label %bb.n

bb.m:                                             ; preds = %.noexc.i.i, %.noexc.i55, %._crit_edge.i.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.w
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.m
  call void @_ZdlPv(ptr noundef %i.as) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

end_hunk_1
begin_hunk_2_@_ZN14duckdb_httplib22encode_query_componentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i95: ; preds = %bb.t, %bb.s
  %i.bu = load i64, ptr %i.b, align 8
  %i.bv = select i1 %i.bs, i64 15, i64 %i.bu
  %i.bw = icmp ugt i64 %i.bq, %i.bv
  br i1 %i.bw, label %bb.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit98

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i95
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bp, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc97 unwind label %.loopexit

.noexc97:                                         ; preds = %bb.u
  %.pre.i.i96 = load ptr, ptr %0, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit98: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i95, %.noexc97
  %i.bx = phi ptr [ %.pre.i.i96, %.noexc97 ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i95 ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  store i8 %i.k, ptr %i.by, align 1, !tbaa !83
  store i64 %i.bq, ptr %i.c, align 8, !tbaa !94
  %i.bz = load ptr, ptr %0, align 8, !tbaa !23
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bq
  store i8 0, ptr %i.ca, align 1, !tbaa !83
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.v:                                             ; preds = %switch.early.test
  %i.cb = load i64, ptr %i.c, align 8, !tbaa !94  ; 4 uses
  %i.cc = add i64 %i.cb, 1                        ; 3 uses
  %i.cd = load ptr, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.b                 ; 2 uses
  br i1 %i.ce, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i99

bb.w:                                             ; preds = %bb.v
  %i.cf = icmp ult i64 %i.cb, 16
  call void @llvm.assume(i1 %i.cf)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i99: ; preds = %bb.w, %bb.v
  %i.cg = load i64, ptr %i.b, align 8
  %i.ch = select i1 %i.ce, i64 15, i64 %i.cg
  %i.ci = icmp ugt i64 %i.cc, %i.ch
  br i1 %i.ci, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit102

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i99
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cb, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc101 unwind label %.loopexit

.noexc101:                                        ; preds = %bb.x
  %.pre.i.i100 = load ptr, ptr %0, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit102: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i99, %.noexc101
  %i.cj = phi ptr [ %.pre.i.i100, %.noexc101 ], [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i99 ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cb
  store i8 47, ptr %i.ck, align 1, !tbaa !83
  store i64 %i.cc, ptr %i.c, align 8, !tbaa !94
  %i.cl = load ptr, ptr %0, align 8, !tbaa !23
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cc
  store i8 0, ptr %i.cm, align 1, !tbaa !83
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.y:                                             ; preds = %switch.early.test
  %i.cn = load i64, ptr %i.c, align 8, !tbaa !94  ; 4 uses
  %i.co = add i64 %i.cn, 1                        ; 3 uses
  %i.cp = load ptr, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.b                 ; 2 uses
  br i1 %i.cq, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i103

bb.z:                                             ; preds = %bb.y
  %i.cr = icmp ult i64 %i.cn, 16
  call void @llvm.assume(i1 %i.cr)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i103: ; preds = %bb.z, %bb.y
  %i.cs = load i64, ptr %i.b, align 8
  %i.ct = select i1 %i.cq, i64 15, i64 %i.cs
  %i.cu = icmp ugt i64 %i.co, %i.ct
  br i1 %i.cu, label %bb.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit106

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i103
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cn, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc105 unwind label %.loopexit

.noexc105:                                        ; preds = %bb.aa
  %.pre.i.i104 = load ptr, ptr %0, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit106: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i103, %.noexc105
  %i.cv = phi ptr [ %.pre.i.i104, %.noexc105 ], [ %i.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i103 ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cn
  store i8 63, ptr %i.cw, align 1, !tbaa !83
  store i64 %i.co, ptr %i.c, align 8, !tbaa !94
  %i.cx = load ptr, ptr %0, align 8, !tbaa !23
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.co
  store i8 0, ptr %i.cy, align 1, !tbaa !83
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.ab:                                            ; preds = %switch.early.test
  %i.cz = load i64, ptr %i.c, align 8, !tbaa !94  ; 4 uses
  %i.da = add i64 %i.cz, 1                        ; 3 uses
  %i.db = load ptr, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.b                 ; 2 uses
  br i1 %i.dc, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i107

bb.ac:                                            ; preds = %bb.ab
  %i.dd = icmp ult i64 %i.cz, 16
  call void @llvm.assume(i1 %i.dd)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i107: ; preds = %bb.ac, %bb.ab
  %i.de = load i64, ptr %i.b, align 8
  %i.df = select i1 %i.dc, i64 15, i64 %i.de
  %i.dg = icmp ugt i64 %i.da, %i.df
  br i1 %i.dg, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i107
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cz, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc109 unwind label %.loopexit

.noexc109:                                        ; preds = %bb.ad
  %.pre.i.i108 = load ptr, ptr %0, align 8, !tbaa !23
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i107
  %i.dh = phi ptr [ %.pre.i.i108, %.noexc109 ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i107 ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.cz
  store i8 37, ptr %i.di, align 1, !tbaa !83
  store i64 %i.da, ptr %i.c, align 8, !tbaa !94
  %i.dj = load ptr, ptr %0, align 8, !tbaa !23
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.da
  store i8 0, ptr %i.dk, align 1, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.dl = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 3, ptr noundef nonnull @.str.297, i32 noundef %i.l) #24 ; 0 uses
  %i.dm = load i64, ptr %i.c, align 8, !tbaa !94
  %i.dn = and i64 %i.dm, -2
  %i.do = icmp eq i64 %i.dn, 4611686018427387902
  br i1 %i.do, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #32
          to label %.noexc111 unwind label %.loopexit.split-lp114

.noexc111:                                        ; preds = %bb.af
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.ae
  %i.dp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.a, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit unwind label %.loopexit113 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

.loopexit113:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %lpad.loopexit115 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp114:                            ; preds = %bb.af
  %lpad.loopexit.split-lp116 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.split-lp114, %.loopexit113
  %lpad.phi117 = phi { ptr, i32 } [ %lpad.loopexit115, %.loopexit113 ], [ %lpad.loopexit.split-lp116, %.loopexit.split-lp114 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.ah

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit106, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit98, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  %i.dq = add nuw i64 %.0118, 1                   ; 2 uses
  %i.dr = load i64, ptr %i.d, align 8, !tbaa !94
  %i.ds = icmp ult i64 %i.dq, %i.dr
  br i1 %i.ds, label %.lr.ph, label %._crit_edge, !llvm.loop !840

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %.preheader
  ret void

bb.ah:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ag, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %i.h, %bb.b ], [ %lpad.phi117, %bb.ag ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.dt = load ptr, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.b
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ah
  call void @_ZdlPv(ptr noundef %i.dt) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #21

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN14duckdb_httplib6detail21write_content_chunkedIZNKS_10ClientImpl27write_content_with_providerERNS_6StreamERKNS_7RequestERNS_5ErrorEEUlvE_NS0_10compressorEEEbS4_RKSt8functionIFbmmRNS_8DataSinkEEERKT_RT0_S9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.std::function.655", align 16 ; 9 uses
  %6 = alloca %"class.std::function.454", align 16 ; 9 uses
  %7 = alloca %"class.std::function.39", align 16 ; 9 uses
  %8 = alloca %"class.std::function", align 16    ; 9 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i8, align 1                       ; 7 uses
  %i.e = alloca i8, align 1                       ; 7 uses
  %9 = alloca %"class.duckdb_httplib::DataSink", align 16 ; 20 uses
  %10 = alloca %class.anon.850, align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 0, ptr %i.c, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i8 1, ptr %i.d, align 1, !tbaa !280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  store i8 1, ptr %i.e, align 1, !tbaa !280
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @_ZN14duckdb_httplib8DataSinkC2Ev(ptr noundef nonnull align 8 dereferenceable(472) %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.f, align 8
  %i.g = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #36
          to label %.noexc unwind label %bb.n     ; 6 uses

.noexc:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.e, ptr %i.g, align 16, !tbaa !687
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !687
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.c, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !502
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %3, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !401
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %0, ptr %.sroa.8.0..sroa_idx, align 16, !tbaa !730
  store ptr %i.g, ptr %8, align 16, !tbaa !204
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %8, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %8, ptr noundef nonnull align 16 dereferenceable(32) %9, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %9, align 16, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.k = load <2 x ptr>, ptr %i.i, align 16, !tbaa !204
  %i.l = load ptr, ptr %i.i, align 16, !tbaa !204 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFbPKcmEZN14duckdb_httplib6detail21write_content_chunkedIZNKS3_10ClientImpl27write_content_with_providerERNS3_6StreamERKNS3_7RequestERNS3_5ErrorEEUlvE_NS4_10compressorEEEbS8_RKSt8functionIFbmmRNS3_8DataSinkEEERKT_RT0_SD_EUlS1_mE_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation, ptr %i.i, align 16, !tbaa !204
  store <2 x ptr> %i.k, ptr %i.h, align 16, !tbaa !204
  store ptr @_ZNSt17_Function_handlerIFbPKcmEZN14duckdb_httplib6detail21write_content_chunkedIZNKS3_10ClientImpl27write_content_with_providerERNS3_6StreamERKNS3_7RequestERNS3_5ErrorEEUlvE_NS4_10compressorEEEbS8_RKSt8functionIFbmmRNS3_8DataSinkEEERKT_RT0_SD_EUlS1_mE_E9_M_invokeERKSt9_Any_dataOS1_Om, ptr %i.j, align 8, !tbaa !204
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %bb.d unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #34
  unreachable

bb.d:                                             ; preds = %bb.b, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.r, align 8
  %i.s = ptrtoint ptr %0 to i64
  store i64 %i.s, ptr %7, align 16, !tbaa !730
  %.sroa.0.i.i.i17.sroa.0.0.copyload = load <2 x i64>, ptr %7, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, ptr noundef nonnull align 16 dereferenceable(32) %i.p, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i17.sroa.0.0.copyload, ptr %i.p, align 16, !tbaa !83
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.v = load <2 x ptr>, ptr %i.t, align 16, !tbaa !204
  %i.w = load ptr, ptr %i.t, align 16, !tbaa !204 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFbvEZN14duckdb_httplib6detail21write_content_chunkedIZNKS1_10ClientImpl27write_content_with_providerERNS1_6StreamERKNS1_7RequestERNS1_5ErrorEEUlvE_NS2_10compressorEEEbS6_RKSt8functionIFbmmRNS1_8DataSinkEEERKT_RT0_SB_EUlvE_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation, ptr %i.t, align 16, !tbaa !204
  store <2 x ptr> %i.v, ptr %i.q, align 16, !tbaa !204
  store ptr @_ZNSt17_Function_handlerIFbvEZN14duckdb_httplib6detail21write_content_chunkedIZNKS1_10ClientImpl27write_content_with_providerERNS1_6StreamERKNS1_7RequestERNS1_5ErrorEEUlvE_NS2_10compressorEEEbS6_RKSt8functionIFbmmRNS1_8DataSinkEEERKT_RT0_SB_EUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.u, align 8, !tbaa !204
  %.not.i.i18 = icmp eq ptr %i.w, null
  br i1 %.not.i.i18, label %_ZNSt8functionIFbvEEaSIZN14duckdb_httplib6detail21write_content_chunkedIZNKS3_10ClientImpl27write_content_with_providerERNS3_6StreamERKNS3_7RequestERNS3_5ErrorEEUlvE_NS4_10compressorEEEbS8_RKS_IFbmmRNS3_8DataSinkEEERKT_RT0_SD_EUlvE_EENSt9enable_ifIXsr9_CallableISM_EE5valueERS1_E4typeEOSM_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt8functionIFbvEEaSIZN14duckdb_httplib6detail21write_content_chunkedIZNKS3_10ClientImpl27write_content_with_providerERNS3_6StreamERKNS3_7RequestERNS3_5ErrorEEUlvE_NS4_10compressorEEEbS8_RKS_IFbmmRNS3_8DataSinkEEERKT_RT0_SD_EUlvE_EENSt9enable_ifIXsr9_CallableISM_EE5valueERS1_E4typeEOSM_.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #34
  unreachable

_ZNSt8functionIFbvEEaSIZN14duckdb_httplib6detail21write_content_chunkedIZNKS3_10ClientImpl27write_content_with_providerERNS3_6StreamERKNS3_7RequestERNS3_5ErrorEEUlvE_NS4_10compressorEEEbS8_RKS_IFbmmRNS3_8DataSinkEEERKT_RT0_SD_EUlvE_EENSt9enable_ifIXsr9_CallableISM_EE5valueERS1_E4typeEOSM_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store ptr %i.e, ptr %10, align 8, !tbaa !687
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.d, ptr %i.aa, align 8, !tbaa !687
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %3, ptr %i.ab, align 8, !tbaa !401
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %0, ptr %i.ac, align 8, !tbaa !730
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.af, align 8
  %i.ag = ptrtoint ptr %10 to i64                 ; 2 uses
  store i64 %i.ag, ptr %6, align 16, !tbaa !204
  %.sroa.0.i.i.i19.sroa.0.0.copyload = load <2 x i64>, ptr %6, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 16 dereferenceable(32) %i.ad, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i19.sroa.0.0.copyload, ptr %i.ad, align 16, !tbaa !83
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.aj = load <2 x ptr>, ptr %i.ah, align 16, !tbaa !204
  %i.ak = load ptr, ptr %i.ah, align 16, !tbaa !204 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvvEZN14duckdb_httplib6detail21write_content_chunkedIZNKS1_10ClientImpl27write_content_with_providerERNS1_6StreamERKNS1_7RequestERNS1_5ErrorEEUlvE_NS2_10compressorEEEbS6_RKSt8functionIFbmmRNS1_8DataSinkEEERKT_RT0_SB_EUlvE0_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation, ptr %i.ah, align 16, !tbaa !204
  store <2 x ptr> %i.aj, ptr %i.ae, align 16, !tbaa !204
  store ptr @_ZNSt17_Function_handlerIFvvEZN14duckdb_httplib6detail21write_content_chunkedIZNKS1_10ClientImpl27write_content_with_providerERNS1_6StreamERKNS1_7RequestERNS1_5ErrorEEUlvE_NS2_10compressorEEEbS6_RKSt8functionIFbmmRNS1_8DataSinkEEERKT_RT0_SB_EUlvE0_E9_M_invokeERKSt9_Any_data, ptr %i.ai, align 8, !tbaa !204
  %.not.i.i20 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i20, label %_ZNSt8functionIFvvEEaSIZN14duckdb_httplib6detail21write_content_chunkedIZNKS3_10ClientImpl27write_content_with_providerERNS3_6StreamERKNS3_7RequestERNS3_5ErrorEEUlvE_NS4_10compressorEEEbS8_RKS_IFbmmRNS3_8DataSinkEEERKT_RT0_SD_EUlvE0_EENSt9enable_ifIXsr9_CallableISM_EE5valueERS1_E4typeEOSM_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFbvEEaSIZN14duckdb_httplib6detail21write_content_chunkedIZNKS3_10ClientImpl27write_content_with_providerERNS3_6StreamERKNS3_7RequestERNS3_5ErrorEEUlvE_NS4_10compressorEEEbS8_RKS_IFbmmRNS3_8DataSinkEEERKT_RT0_SD_EUlvE_EENSt9enable_ifIXsr9_CallableISM_EE5valueERS1_E4typeEOSM_.exit
  %i.al = invoke noundef zeroext i1 %i.ak(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt8functionIFvvEEaSIZN14duckdb_httplib6detail21write_content_chunkedIZNKS3_10ClientImpl27write_content_with_providerERNS3_6StreamERKNS3_7RequestERNS3_5ErrorEEUlvE_NS4_10compressorEEEbS8_RKS_IFbmmRNS3_8DataSinkEEERKT_RT0_SD_EUlvE0_EENSt9enable_ifIXsr9_CallableISM_EE5valueERS1_E4typeEOSM_.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #34
  unreachable

_ZNSt8functionIFvvEEaSIZN14duckdb_httplib6detail21write_content_chunkedIZNKS3_10ClientImpl27write_content_with_providerERNS3_6StreamERKNS3_7RequestERNS3_5ErrorEEUlvE_NS4_10compressorEEEbS8_RKS_IFbmmRNS3_8DataSinkEEERKT_RT0_SD_EUlvE0_EENSt9enable_ifIXsr9_CallableISM_EE5valueERS1_E4typeEOSM_.exit: ; preds = %_ZNSt8functionIFbvEEaSIZN14duckdb_httplib6detail21write_content_chunkedIZNKS3_10ClientImpl27write_content_with_providerERNS3_6StreamERKNS3_7RequestERNS3_5ErrorEEUlvE_NS4_10compressorEEEbS8_RKS_IFbmmRNS3_8DataSinkEEERKT_RT0_SD_EUlvE_EENSt9enable_ifIXsr9_CallableISM_EE5valueERS1_E4typeEOSM_.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.aq, align 8
  store i64 %i.ag, ptr %5, align 16, !tbaa !204
  %.sroa.0.i.i.i21.sroa.0.0.copyload = load <2 x i64>, ptr %5, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 16 dereferenceable(32) %i.ao, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i21.sroa.0.0.copyload, ptr %i.ao, align 16, !tbaa !83
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 120
  %i.at = load <2 x ptr>, ptr %i.ar, align 16, !tbaa !204
  %i.au = load ptr, ptr %i.ar, align 16, !tbaa !204 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_N14duckdb_httplib6detail11case_ignore4hashENS9_8equal_toESaISt4pairIKS6_S6_EEEEZNS8_21write_content_chunkedIZNKS7_10ClientImpl27write_content_with_providerERNS7_6StreamERKNS7_7RequestERNS7_5ErrorEEUlvE_NS8_10compressorEEEbSN_RKSt8functionIFbmmRNS7_8DataSinkEEERKT_RT0_SS_EUlSI_E_E10_M_managerERSt9_Any_dataRKS19_St18_Manager_operation, ptr %i.ar, align 16, !tbaa !204
  store <2 x ptr> %i.at, ptr %i.ap, align 16, !tbaa !204
  store ptr @_ZNSt17_Function_handlerIFvRKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_N14duckdb_httplib6detail11case_ignore4hashENS9_8equal_toESaISt4pairIKS6_S6_EEEEZNS8_21write_content_chunkedIZNKS7_10ClientImpl27write_content_with_providerERNS7_6StreamERKNS7_7RequestERNS7_5ErrorEEUlvE_NS8_10compressorEEEbSN_RKSt8functionIFbmmRNS7_8DataSinkEEERKT_RT0_SS_EUlSI_E_E9_M_invokeERKSt9_Any_dataSI_, ptr %i.as, align 8, !tbaa !204
  %.not.i.i22 = icmp eq ptr %i.au, null
  br i1 %.not.i.i22, label %_ZNSt8functionIFvRKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_N14duckdb_httplib6detail11case_ignore4hashENS9_8equal_toESaISt4pairIKS6_S6_EEEEEaSIZNS8_21write_content_chunkedIZNKS7_10ClientImpl27write_content_with_providerERNS7_6StreamERKNS7_7RequestERNS7_5ErrorEEUlvE_NS8_10compressorEEEbSP_RKS_IFbmmRNS7_8DataSinkEEERKT_RT0_SU_EUlSI_E_EENSt9enable_ifIXsr9_CallableIS13_EE5valueERSK_E4typeEOS13_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt8functionIFvvEEaSIZN14duckdb_httplib6detail21write_content_chunkedIZNKS3_10ClientImpl27write_content_with_providerERNS3_6StreamERKNS3_7RequestERNS3_5ErrorEEUlvE_NS4_10compressorEEEbS8_RKS_IFbmmRNS3_8DataSinkEEERKT_RT0_SD_EUlvE0_EENSt9enable_ifIXsr9_CallableISM_EE5valueERS1_E4typeEOSM_.exit
  %i.av = invoke noundef zeroext i1 %i.au(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt8functionIFvRKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_N14duckdb_httplib6detail11case_ignore4hashENS9_8equal_toESaISt4pairIKS6_S6_EEEEEaSIZNS8_21write_content_chunkedIZNKS7_10ClientImpl27write_content_with_providerERNS7_6StreamERKNS7_7RequestERNS7_5ErrorEEUlvE_NS8_10compressorEEEbSP_RKS_IFbmmRNS7_8DataSinkEEERKT_RT0_SU_EUlSI_E_EENSt9enable_ifIXsr9_CallableIS13_EE5valueERSK_E4typeEOS13_.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #34
  unreachable

_ZNSt8functionIFvRKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_N14duckdb_httplib6detail11case_ignore4hashENS9_8equal_toESaISt4pairIKS6_S6_EEEEEaSIZNS8_21write_content_chunkedIZNKS7_10ClientImpl27write_content_with_providerERNS7_6StreamERKNS7_7RequestERNS7_5ErrorEEUlvE_NS8_10compressorEEEbSP_RKS_IFbmmRNS7_8DataSinkEEERKT_RT0_SU_EUlSI_E_EENSt9enable_ifIXsr9_CallableIS13_EE5valueERSK_E4typeEOS13_.exit: ; preds = %_ZNSt8functionIFvvEEaSIZN14duckdb_httplib6detail21write_content_chunkedIZNKS3_10ClientImpl27write_content_with_providerERNS3_6StreamERKNS3_7RequestERNS3_5ErrorEEUlvE_NS4_10compressorEEEbS8_RKS_IFbmmRNS3_8DataSinkEEERKT_RT0_SD_EUlvE0_EENSt9enable_ifIXsr9_CallableISM_EE5valueERS1_E4typeEOSM_.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.k

bb.k:                                             ; preds = %bb.t, %_ZNSt8functionIFvRKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_N14duckdb_httplib6detail11case_ignore4hashENS9_8equal_toESaISt4pairIKS6_S6_EEEEEaSIZNS8_21write_content_chunkedIZNKS7_10ClientImpl27write_content_with_providerERNS7_6StreamERKNS7_7RequestERNS7_5ErrorEEUlvE_NS8_10compressorEEEbSP_RKS_IFbmmRNS7_8DataSinkEEERKT_RT0_SU_EUlSI_E_EENSt9enable_ifIXsr9_CallableIS13_EE5valueERSK_E4typeEOS13_.exit
  %i.ba = load i8, ptr %i.d, align 1, !tbaa !280, !range !146, !noundef !147
  %i.bb = trunc nuw i8 %i.ba to i1                ; 2 uses
  br i1 %i.bb, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.bc = load ptr, ptr %0, align 8, !tbaa !50
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = invoke noundef zeroext i1 %i.be(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.m unwind label %.loopexit

bb.m:                                             ; preds = %bb.l
  br i1 %i.bf, label %bb.p, label %.critedge

bb.n:                                             ; preds = %bb.a
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit:                                        ; preds = %bb.l, %bb.r
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.u

bb.p:                                             ; preds = %bb.m
  %i.bh = load i64, ptr %i.c, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.bh, ptr %i.a, align 8, !tbaa !10
  store i64 0, ptr %i.b, align 8, !tbaa !10
  %i.bi = load ptr, ptr %i.ay, align 8, !tbaa !12
  %.not.i.i23 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i23, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt25__throw_bad_function_callv() #32
          to label %.noexc24 unwind label %.loopexit.split-lp

.noexc24:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %i.az, align 8, !tbaa !841
  %i.bk = invoke noundef zeroext i1 %i.bj(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(472) %9)
          to label %bb.s unwind label %.loopexit, !inline_history !842

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.bk, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.bl = load i8, ptr %i.e, align 1, !tbaa !280, !range !146, !noundef !147
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.k, label %.critedge, !llvm.loop !843

.critedge:                                        ; preds = %bb.k, %bb.t, %bb.s, %bb.m
  %.sink = phi i32 [ 0, %bb.k ], [ 5, %bb.t ], [ 7, %bb.s ], [ 5, %bb.m ]
  store i32 %.sink, ptr %4, align 4, !tbaa !504
  %.015 = xor i1 %i.bb, true
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @_ZN14duckdb_httplib8DataSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(472) dereferenceable(472) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  ret i1 %.015

bb.u:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.o ], [ %i.bg, %bb.n ]
  call void @_ZN14duckdb_httplib8DataSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(472) dereferenceable(472) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN14duckdb_httplib6detail27write_content_with_progressIZNKS_10ClientImpl27write_content_with_providerERNS_6StreamERKNS_7RequestERNS_5ErrorEEUlvE_EEbS4_RKSt8functionIFbmmRNS_8DataSinkEEEmmT_RKSB_IFbmmEES9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.std::function.39", align 16 ; 9 uses
  %7 = alloca %"class.std::function", align 16    ; 9 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 2 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i8, align 1                       ; 6 uses
  %8 = alloca %"class.duckdb_httplib::DataSink", align 16 ; 14 uses
  store i64 %2, ptr %i.c, align 8, !tbaa !10
  store i64 %3, ptr %i.d, align 8, !tbaa !10
  %i.g = add i64 %3, %2                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  store i64 %2, ptr %i.e, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  store i8 1, ptr %i.f, align 1, !tbaa !280
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZN14duckdb_httplib8DataSinkC2Ev(ptr noundef nonnull align 8 dereferenceable(472) %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #36
          to label %.noexc unwind label %bb.j     ; 7 uses

.noexc:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.f, ptr %i.i, align 16, !tbaa !687
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !730
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.c, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !502
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %4, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !806
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.d, ptr %.sroa.8.0..sroa_idx, align 16, !tbaa !502
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr %i.e, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !502
  store ptr %i.i, ptr %7, align 16, !tbaa !204
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %7, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, ptr noundef nonnull align 16 dereferenceable(32) %8, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %8, align 16, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.m = load <2 x ptr>, ptr %i.k, align 16, !tbaa !204
  %i.n = load ptr, ptr %i.k, align 16, !tbaa !204 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFbPKcmEZN14duckdb_httplib6detail27write_content_with_progressIZNKS3_10ClientImpl27write_content_with_providerERNS3_6StreamERKNS3_7RequestERNS3_5ErrorEEUlvE_EEbS8_RKSt8functionIFbmmRNS3_8DataSinkEEEmmT_RKSF_IFbmmEESD_EUlS1_mE_E10_M_managerERSt9_Any_dataRKST_St18_Manager_operation, ptr %i.k, align 16, !tbaa !204
  store <2 x ptr> %i.m, ptr %i.j, align 16, !tbaa !204
  store ptr @_ZNSt17_Function_handlerIFbPKcmEZN14duckdb_httplib6detail27write_content_with_progressIZNKS3_10ClientImpl27write_content_with_providerERNS3_6StreamERKNS3_7RequestERNS3_5ErrorEEUlvE_EEbS8_RKSt8functionIFbmmRNS3_8DataSinkEEEmmT_RKSF_IFbmmEESD_EUlS1_mE_E9_M_invokeERKSt9_Any_dataOS1_Om, ptr %i.l, align 8, !tbaa !204
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %bb.d unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #34
  unreachable

bb.d:                                             ; preds = %bb.b, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.t, align 8
  %i.u = ptrtoint ptr %0 to i64
  store i64 %i.u, ptr %6, align 16, !tbaa !730
  %.sroa.0.i.i.i17.sroa.0.0.copyload = load <2 x i64>, ptr %6, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 16 dereferenceable(32) %i.r, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i17.sroa.0.0.copyload, ptr %i.r, align 16, !tbaa !83
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.x = load <2 x ptr>, ptr %i.v, align 16, !tbaa !204
  %i.y = load ptr, ptr %i.v, align 16, !tbaa !204 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFbvEZN14duckdb_httplib6detail27write_content_with_progressIZNKS1_10ClientImpl27write_content_with_providerERNS1_6StreamERKNS1_7RequestERNS1_5ErrorEEUlvE_EEbS6_RKSt8functionIFbmmRNS1_8DataSinkEEEmmT_RKSD_IFbmmEESB_EUlvE_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation, ptr %i.v, align 16, !tbaa !204
  store <2 x ptr> %i.x, ptr %i.s, align 16, !tbaa !204
  store ptr @_ZNSt17_Function_handlerIFbvEZN14duckdb_httplib6detail27write_content_with_progressIZNKS1_10ClientImpl27write_content_with_providerERNS1_6StreamERKNS1_7RequestERNS1_5ErrorEEUlvE_EEbS6_RKSt8functionIFbmmRNS1_8DataSinkEEEmmT_RKSD_IFbmmEESB_EUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.w, align 8, !tbaa !204
  %.not.i.i18 = icmp eq ptr %i.y, null
  br i1 %.not.i.i18, label %_ZNSt8functionIFbvEEaSIZN14duckdb_httplib6detail27write_content_with_progressIZNKS3_10ClientImpl27write_content_with_providerERNS3_6StreamERKNS3_7RequestERNS3_5ErrorEEUlvE_EEbS8_RKS_IFbmmRNS3_8DataSinkEEEmmT_RKS_IFbmmEESD_EUlvE_EENSt9enable_ifIXsr9_CallableISL_EE5valueERS1_E4typeEOSL_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = invoke noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt8functionIFbvEEaSIZN14duckdb_httplib6detail27write_content_with_progressIZNKS3_10ClientImpl27write_content_with_providerERNS3_6StreamERKNS3_7RequestERNS3_5ErrorEEUlvE_EEbS8_RKS_IFbmmRNS3_8DataSinkEEEmmT_RKS_IFbmmEESD_EUlvE_EENSt9enable_ifIXsr9_CallableISL_EE5valueERS1_E4typeEOSL_.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #34
  unreachable

_ZNSt8functionIFbvEEaSIZN14duckdb_httplib6detail27write_content_with_progressIZNKS3_10ClientImpl27write_content_with_providerERNS3_6StreamERKNS3_7RequestERNS3_5ErrorEEUlvE_EEbS8_RKS_IFbmmRNS3_8DataSinkEEEmmT_RKS_IFbmmEESD_EUlvE_EENSt9enable_ifIXsr9_CallableISL_EE5valueERS1_E4typeEOSL_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.g

bb.g:                                             ; preds = %bb.o, %_ZNSt8functionIFbvEEaSIZN14duckdb_httplib6detail27write_content_with_progressIZNKS3_10ClientImpl27write_content_with_providerERNS3_6StreamERKNS3_7RequestERNS3_5ErrorEEUlvE_EEbS8_RKS_IFbmmRNS3_8DataSinkEEEmmT_RKS_IFbmmEESD_EUlvE_EENSt9enable_ifIXsr9_CallableISL_EE5valueERS1_E4typeEOSL_.exit
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !10
  %.not.not.not.not.not = icmp uge i64 %i.ae, %i.g ; 2 uses
  br i1 %.not.not.not.not.not, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %0, align 8, !tbaa !50
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = invoke noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.i unwind label %.loopexit

bb.i:                                             ; preds = %bb.h
  br i1 %i.ai, label %bb.k, label %.critedge

bb.j:                                             ; preds = %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit:                                        ; preds = %bb.h, %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !10  ; 2 uses
  %i.al = sub i64 %i.g, %i.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !10
  store i64 %i.al, ptr %i.b, align 8, !tbaa !10
  %i.am = load ptr, ptr %i.ac, align 8, !tbaa !12
  %.not.i.i19 = icmp eq ptr %i.am, null
  br i1 %.not.i.i19, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt25__throw_bad_function_callv() #32
          to label %.noexc20 unwind label %.loopexit.split-lp

.noexc20:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %i.ad, align 8, !tbaa !841
  %i.ao = invoke noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(472) %8)
          to label %bb.n unwind label %.loopexit, !inline_history !842

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.ao, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.ap = load i8, ptr %i.f, align 1, !tbaa !280, !range !146, !noundef !147
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.g, label %.critedge, !llvm.loop !844

.critedge:                                        ; preds = %bb.g, %bb.o, %bb.n, %bb.i
  %.sink = phi i32 [ 0, %bb.g ], [ 5, %bb.o ], [ 7, %bb.n ], [ 5, %bb.i ]
  store i32 %.sink, ptr %5, align 4, !tbaa !504
  call void @_ZN14duckdb_httplib8DataSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(472) dereferenceable(472) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  ret i1 %.not.not.not.not.not

bb.p:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.j
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN14duckdb_httplib8DataSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(472) dereferenceable(472) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFbPKcmEZN14duckdb_httplib6detail21write_content_chunkedIZNKS3_10ClientImpl27write_content_with_providerERNS3_6StreamERKNS3_7RequestERNS3_5ErrorEEUlvE_NS4_10compressorEEEbS8_RKSt8functionIFbmmRNS3_8DataSinkEEERKT_RT0_SD_EUlS1_mE_E9_M_invokeERKSt9_Any_dataOS1_Om(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !204
  %i.b = load ptr, ptr %1, align 8, !tbaa !7
  %i.c = load i64, ptr %2, align 8, !tbaa !10
  %i.d = tail call noundef zeroext i1 @_ZZN14duckdb_httplib6detail21write_content_chunkedIZNKS_10ClientImpl27write_content_with_providerERNS_6StreamERKNS_7RequestERNS_5ErrorEEUlvE_NS0_10compressorEEEbS4_RKSt8functionIFbmmRNS_8DataSinkEEERKT_RT0_S9_ENKUlPKcmE_clESP_m(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.b, i64 noundef %i.c)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFbPKcmEZN14duckdb_httplib6detail21write_content_chunkedIZNKS3_10ClientImpl27write_content_with_providerERNS3_6StreamERKNS3_7RequestERNS3_5ErrorEEUlvE_NS4_10compressorEEEbS8_RKSt8functionIFbmmRNS3_8DataSinkEEERKT_RT0_SD_EUlS1_mE_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #8 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN14duckdb_httplib6detail21write_content_chunkedIZNKS1_10ClientImpl27write_content_with_providerERNS1_6StreamERKNS1_7RequestERNS1_5ErrorEEUlvE_NS2_10compressorEEEbS6_RKSt8functionIFbmmRNS1_8DataSinkEEERKT_RT0_SB_EUlPKcmE_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN14duckdb_httplib6detail21write_content_chunkedIZNKS_10ClientImpl27write_content_with_providerERNS_6StreamERKNS_7RequestERNS_5ErrorEEUlvE_NS0_10compressorEEEbS4_RKSt8functionIFbmmRNS_8DataSinkEEERKT_RT0_S9_EUlPKcmE_, ptr %0, align 8, !tbaa !372
  br label %_ZNSt14_Function_base13_Base_managerIZN14duckdb_httplib6detail21write_content_chunkedIZNKS1_10ClientImpl27write_content_with_providerERNS1_6StreamERKNS1_7RequestERNS1_5ErrorEEUlvE_NS2_10compressorEEEbS6_RKSt8functionIFbmmRNS1_8DataSinkEEERKT_RT0_SB_EUlPKcmE_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !204
  store ptr %i.a, ptr %0, align 8, !tbaa !204
  br label %_ZNSt14_Function_base13_Base_managerIZN14duckdb_httplib6detail21write_content_chunkedIZNKS1_10ClientImpl27write_content_with_providerERNS1_6StreamERKNS1_7RequestERNS1_5ErrorEEUlvE_NS2_10compressorEEEbS6_RKSt8functionIFbmmRNS1_8DataSinkEEERKT_RT0_SB_EUlPKcmE_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !204
  %i.c = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #36 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !tbaa.struct !845
  store ptr %i.c, ptr %0, align 8, !tbaa !204
  br label %_ZNSt14_Function_base13_Base_managerIZN14duckdb_httplib6detail21write_content_chunkedIZNKS1_10ClientImpl27write_content_with_providerERNS1_6StreamERKNS1_7RequestERNS1_5ErrorEEUlvE_NS2_10compressorEEEbS6_RKSt8functionIFbmmRNS1_8DataSinkEEERKT_RT0_SB_EUlPKcmE_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !204    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN14duckdb_httplib6detail21write_content_chunkedIZNKS1_10ClientImpl27write_content_with_providerERNS1_6StreamERKNS1_7RequestERNS1_5ErrorEEUlvE_NS2_10compressorEEEbS6_RKSt8functionIFbmmRNS1_8DataSinkEEERKT_RT0_SB_EUlPKcmE_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #33
  br label %_ZNSt14_Function_base13_Base_managerIZN14duckdb_httplib6detail21write_content_chunkedIZNKS1_10ClientImpl27write_content_with_providerERNS1_6StreamERKNS1_7RequestERNS1_5ErrorEEUlvE_NS2_10compressorEEEbS6_RKSt8functionIFbmmRNS1_8DataSinkEEERKT_RT0_SB_EUlPKcmE_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN14duckdb_httplib6detail21write_content_chunkedIZNKS1_10ClientImpl27write_content_with_providerERNS1_6StreamERKNS1_7RequestERNS1_5ErrorEEUlvE_NS2_10compressorEEEbS6_RKSt8functionIFbmmRNS1_8DataSinkEEERKT_RT0_SB_EUlPKcmE_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN14duckdb_httplib6detail21write_content_chunkedIZNKS_10ClientImpl27write_content_with_providerERNS_6StreamERKNS_7RequestERNS_5ErrorEEUlvE_NS0_10compressorEEEbS4_RKSt8functionIFbmmRNS_8DataSinkEEERKT_RT0_S9_ENKUlPKcmE_clESP_m(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::function", align 8     ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !846, !nonnull !147
  %i.b = load i8, ptr %i.a, align 1, !tbaa !280, !range !146, !noundef !147
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.ad

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ne i64 %2, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !848, !nonnull !147
  %i.g = zext i1 %i.d to i8
  store i8 %i.g, ptr %i.f, align 1, !tbaa !280
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !849, !nonnull !147, !align !196 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !10
  %i.k = add i64 %i.j, %2
  store i64 %i.k, ptr %i.i, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !93
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %i.m, align 8, !tbaa !94
  store i8 0, ptr %i.l, align 8, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !850, !nonnull !147, !align !196 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.r, align 8
  %i.s = ptrtoint ptr %3 to i64
  store i64 %i.s, ptr %4, align 8, !tbaa !158
  store ptr @_ZNSt17_Function_handlerIFbPKcmEZZN14duckdb_httplib6detail21write_content_chunkedIZNKS3_10ClientImpl27write_content_with_providerERNS3_6StreamERKNS3_7RequestERNS3_5ErrorEEUlvE_NS4_10compressorEEEbS8_RKSt8functionIFbmmRNS3_8DataSinkEEERKT_RT0_SD_ENKUlS1_mE_clES1_mEUlS1_mE_E9_M_invokeERKSt9_Any_dataOS1_Om, ptr %i.q, align 8, !tbaa !14
  store ptr @_ZNSt17_Function_handlerIFbPKcmEZZN14duckdb_httplib6detail21write_content_chunkedIZNKS3_10ClientImpl27write_content_with_providerERNS3_6StreamERKNS3_7RequestERNS3_5ErrorEEUlvE_NS4_10compressorEEEbS8_RKSt8functionIFbmmRNS3_8DataSinkEEERKT_RT0_SD_ENKUlS1_mE_clES1_mEUlS1_mE_E10_M_managerERSt9_Any_dataRKSV_St18_Manager_operation, ptr %i.p, align 8, !tbaa !12
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !50
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = invoke noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef %1, i64 noundef %2, i1 noundef zeroext false, ptr noundef nonnull %4)
          to label %bb.c unwind label %bb.t

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !12   ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN14duckdb_httplib10ClientImpl22create_redirect_clientERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iRNS_7RequestERNS_8ResponseES8_S8_RNS_5ErrorE:bb.a
          cleanup
  br label %.body72

_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEE4findERSC_.exit._crit_edge: ; preds = %bb.q, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i, %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEE4findERSC_.exit68, %bb.z, %.loopexit.i.i.i, %bb.v, %bb.w, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us.i, %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEE4findERSC_.exit.preheader
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.082.0107, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.gl, %i.ak
  br i1 %.not, label %._crit_edge, label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  store i32 8, ptr %8, align 4, !tbaa !504
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !12
  %.not.i.i.not.i = icmp eq ptr %i.go, null
  br i1 %.not.i.i.not.i, label %_ZNK14duckdb_httplib10ClientImpl16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 3 uses
  %i.gq = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.gp) #24 ; 2 uses
  %.not.i.i4.i = icmp eq i32 %i.gq, 0
  br i1 %.not.i.i4.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.gq) #32
          to label %.noexc71 unwind label %bb.ai

.noexc71:                                         ; preds = %bb.ad
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %4, ptr %i.a, align 8, !tbaa !683
  %i.gr = load ptr, ptr %i.gn, align 8, !tbaa !12
  %.not.i.i5.i69 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i5.i69, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  invoke void @_ZSt25__throw_bad_function_callv() #32
          to label %.noexc.i70 unwind label %bb.ah

.noexc.i70:                                       ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !685
  invoke void %i.gt(ptr noundef nonnull align 8 dereferenceable(32) %i.gm, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.ag unwind label %bb.ah, !inline_history !686

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.gu = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.gp) #24 ; 0 uses
  br label %_ZNK14duckdb_httplib10ClientImpl16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %i.gv = landingpad { ptr, i32 }
          cleanup
  %i.gw = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.gp) #24 ; 0 uses
  br label %.body72

bb.ai:                                            ; preds = %bb.ad
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %.body72

bb.aj:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.gy = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.gy, ptr %9, align 8, !tbaa !93
  %i.gz = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.gz, align 8, !tbaa !94
  store i8 0, ptr %i.gy, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.ha = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.ha, ptr %10, align 8, !tbaa !93
  %i.hb = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.hb, align 8, !tbaa !94
  store i8 0, ptr %i.ha, align 8, !tbaa !83
  invoke void @_ZN14duckdb_httplib10ClientImplC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS8_S8_(ptr noundef nonnull align 8 dereferenceable(872) %13, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.hc = load ptr, ptr %10, align 8, !tbaa !23   ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.ha
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ak
  call void @_ZdlPv(ptr noundef %i.hc) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.he = load ptr, ptr %9, align 8, !tbaa !23    ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.gy
  br i1 %i.hf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.he) #33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i5.i

bb.al:                                            ; preds = %bb.aj
  %i.hg = landingpad { ptr, i32 }
          cleanup
  %i.hh = load ptr, ptr %10, align 8, !tbaa !23   ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.ha
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.al
  call void @_ZdlPv(ptr noundef %i.hh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.hj = load ptr, ptr %9, align 8, !tbaa !23    ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.gy
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i
  call void @_ZdlPv(ptr noundef %i.hj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %.body74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i5.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  invoke void @_ZN14duckdb_httplib10ClientImpl21setup_redirect_clientIS0_EEvRT_(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(872) %13)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i5.i
  %i.hl = invoke noundef zeroext i1 @_ZN14duckdb_httplib6detail8redirectINS_10ClientImplEEEbRT_RNS_7RequestERNS_8ResponseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESG_RNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(872) %13, ptr noundef nonnull align 8 dereferenceable(888) %4, ptr noundef nonnull align 8 dereferenceable(392) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 4 dereferenceable(4) %8)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @_ZN14duckdb_httplib10ClientImplD2Ev(ptr noundef nonnull align 8 dead_on_return(872) dereferenceable(872) %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %_ZNK14duckdb_httplib10ClientImpl16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit

bb.ao:                                            ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i5.i
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14duckdb_httplib10ClientImplD2Ev(ptr noundef nonnull align 8 dead_on_return(872) dereferenceable(872) %13) #24
  br label %.body74

.body74:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i, %bb.ao
  %.pn45 = phi { ptr, i32 } [ %i.hm, %bb.ao ], [ %i.hg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %.body72

_ZNK14duckdb_httplib10ClientImpl16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit: ; preds = %bb.ag, %bb.ab, %bb.an
  %.0 = phi i1 [ %i.hl, %bb.an ], [ false, %bb.ab ], [ false, %bb.ag ]
  %i.hn = load ptr, ptr %11, align 8, !tbaa !45   ; 4 uses
  %i.ho = load ptr, ptr %i.am, align 8, !tbaa !48 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.hn, %i.ho
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK14duckdb_httplib10ClientImpl16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.hs, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.hn, %_ZNK14duckdb_httplib10ClientImpl16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit ] ; 3 uses
  %i.hp = load ptr, ptr %.05.i.i.i, align 8, !tbaa !23 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.hr = icmp eq ptr %i.hp, %i.hq
  br i1 %i.hr, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.hp) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hs, %i.ho
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !49

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %_ZNK14duckdb_httplib10ClientImpl16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit
  %.not.i.i1.i = icmp eq ptr %i.hn, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.hn) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  ret i1 %.0

.body72:                                          ; preds = %bb.ai, %bb.ah, %bb.aa, %.body74
  %.pn47.pn = phi { ptr, i32 } [ %.pn45, %.body74 ], [ %i.gk, %bb.aa ], [ %i.gx, %bb.ai ], [ %i.gv, %bb.ah ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #24
  br label %bb.aq

bb.aq:                                            ; preds = %.body72, %.thread
  %.pn47.pn.pn = phi { ptr, i32 } [ %.pn47.pn, %.body72 ], [ %.pn.pn.pn93, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  resume { ptr, i32 } %.pn47.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(392) ptr @_ZN14duckdb_httplib8ResponseaSERKS0_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(392) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.431", align 16 ; 11 uses
  %3 = alloca %"class.std::function.53", align 16 ; 11 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !118
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.b, ptr %i.c, align 8, !tbaa !118
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.f = icmp eq ptr %1, %0
  br i1 %i.f, label %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEEaSERKSF_.exit14, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE18_M_assign_elementsIRKSM_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE18_M_assign_elementsIRKSM_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.j)
  br label %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEEaSERKSF_.exit14

_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEEaSERKSF_.exit14: ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 184
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 216
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.p = load i64, ptr %i.o, align 8, !tbaa !1007
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 %i.p, ptr %i.q, align 8, !tbaa !1007
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !12   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFbmmRN14duckdb_httplib8DataSinkEEEC2ERKS4_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEEaSERKSF_.exit14
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.w = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i32 noundef 2)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.x = load <2 x ptr>, ptr %i.t, align 8, !tbaa !204
  br label %_ZNSt8functionIFbmmRN14duckdb_httplib8DataSinkEEEC2ERKS4_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %i.s, align 16, !tbaa !12  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = invoke noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %common.resume unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #34
  unreachable

common.resume:                                    ; preds = %bb.l, %bb.m, %bb.e, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.e ], [ %i.y, %bb.f ], [ %i.ar, %bb.m ], [ %i.ar, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8functionIFbmmRN14duckdb_httplib8DataSinkEEEC2ERKS4_.exit.i: ; preds = %bb.d, %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEEaSERKSF_.exit14
  %i.ad = phi <2 x ptr> [ splat (ptr null), %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEEaSERKSF_.exit14 ], [ %i.x, %bb.d ]
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.r, align 8, !tbaa !83
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.af = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !204
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !204 ; 2 uses
  store <2 x ptr> %i.af, ptr %i.s, align 16, !tbaa !204
  store <2 x ptr> %i.ad, ptr %i.ae, align 8, !tbaa !204
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %_ZNSt8functionIFbmmRN14duckdb_httplib8DataSinkEEEaSERKS4_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt8functionIFbmmRN14duckdb_httplib8DataSinkEEEC2ERKS4_.exit.i
  %i.ah = invoke noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt8functionIFbmmRN14duckdb_httplib8DataSinkEEEaSERKS4_.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #34
  unreachable

_ZNSt8functionIFbmmRN14duckdb_httplib8DataSinkEEEaSERKS4_.exit: ; preds = %_ZNSt8functionIFbmmRN14duckdb_httplib8DataSinkEEEC2ERKS4_.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.not.i.i16 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.not.i.i16, label %_ZNSt8functionIFvbEEC2ERKS1_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt8functionIFbmmRN14duckdb_httplib8DataSinkEEEaSERKS4_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.ap = invoke noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i32 noundef 2)
          to label %bb.k unwind label %bb.l       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.aq = load <2 x ptr>, ptr %i.am, align 8, !tbaa !204
  br label %_ZNSt8functionIFvbEEC2ERKS1_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %i.al, align 16, !tbaa !12 ; 2 uses
  %.not.i.i.i17 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i17, label %common.resume, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = invoke noundef zeroext i1 %i.as(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %common.resume unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #34
  unreachable

_ZNSt8functionIFvbEEC2ERKS1_.exit.i:              ; preds = %bb.k, %_ZNSt8functionIFbmmRN14duckdb_httplib8DataSinkEEEaSERKS4_.exit
  %i.aw = phi <2 x ptr> [ splat (ptr null), %_ZNSt8functionIFbmmRN14duckdb_httplib8DataSinkEEEaSERKS4_.exit ], [ %i.aq, %bb.k ]
  %.sroa.0.i.i.i15.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i15.sroa.0.0.copyload, ptr %i.ak, align 8, !tbaa !83
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.ay = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !204
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !204 ; 2 uses
  store <2 x ptr> %i.ay, ptr %i.al, align 16, !tbaa !204
  store <2 x ptr> %i.aw, ptr %i.ax, align 8, !tbaa !204
  %.not.i.i19 = icmp eq ptr %i.az, null
  br i1 %.not.i.i19, label %_ZNSt8functionIFvbEEaSERKS1_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt8functionIFvbEEC2ERKS1_.exit.i
  %i.ba = invoke noundef zeroext i1 %i.az(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt8functionIFvbEEaSERKS1_.exit unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #34
  unreachable

_ZNSt8functionIFvbEEaSERKS1_.exit:                ; preds = %_ZNSt8functionIFvbEEC2ERKS1_.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.bf = load i16, ptr %i.be, align 8
  store i16 %i.bf, ptr %i.bd, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 328
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %i.bh)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 360
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %i.bj)
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN14duckdb_httplib10ClientImpl21setup_redirect_clientIS0_EEvRT_(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(872) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.88", align 16 ; 10 uses
  %3 = alloca %"class.std::function.85", align 16 ; 10 uses
  %4 = alloca %"class.std::function.91", align 16 ; 10 uses
  %5 = alloca %"class.std::function.91", align 8  ; 9 uses
  %6 = alloca %"class.std::function.85", align 8  ; 9 uses
  %7 = alloca %"class.std::function.88", align 8  ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.b = load i64, ptr %i.a, align 8, !tbaa !491
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 392
  store i64 %i.b, ptr %i.c, align 8, !tbaa !491
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 400
  store i64 0, ptr %i.d, align 8, !tbaa !492
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.g = load <2 x i64>, ptr %i.e, align 8, !tbaa !10
  store <2 x i64> %i.g, ptr %i.f, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.j = load <2 x i64>, ptr %i.h, align 8, !tbaa !10
  store <2 x i64> %i.j, ptr %i.i, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.l = load i8, ptr %i.k, align 8, !tbaa !590, !range !146, !noundef !147
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 544
  store i8 %i.l, ptr %i.m, align 8, !tbaa !590
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 545
  store i8 1, ptr %i.n, align 1, !tbaa !588
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 546
  %i.p = load i8, ptr %i.o, align 2, !tbaa !625, !range !146, !noundef !147
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 546
  store i8 %i.p, ptr %i.q, align 2, !tbaa !625
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.s = load i8, ptr %i.r, align 8, !tbaa !1008, !range !146, !noundef !147
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 592
  store i8 %i.s, ptr %i.t, align 8, !tbaa !1008
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 593
  %i.v = load i8, ptr %i.u, align 1, !tbaa !591, !range !146, !noundef !147
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 593
  store i8 %i.v, ptr %i.w, align 1, !tbaa !591
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.y = load i64, ptr %i.x, align 8, !tbaa !94
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 448
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 480
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !94
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 512
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.ah)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !94
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !487 ; 2 uses
  %.not = icmp eq i32 %i.ao, -1
  br i1 %.not, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 632
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.aj)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 664
  store i32 %i.ao, ptr %i.aq, align 8, !tbaa !487
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !94
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 672
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 704
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %i.av)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !94
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 736
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %i.bb)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.f, %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 548
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !488
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 548
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !488
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !489, !range !146, !noundef !147
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 552
  store i8 %i.bh, ptr %i.bi, align 8, !tbaa !489
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 553
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !490, !range !146, !noundef !147
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 553
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !490
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.not = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.not, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.bq = invoke noundef zeroext i1 %i.bn(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i32 noundef 2)
          to label %_ZNSt8functionIFviEEC2ERKS1_.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !12 ; 2 uses
  %.not.i.i21 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i21, label %common.resume, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = invoke noundef zeroext i1 %i.bs(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %common.resume unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #34
  unreachable

common.resume:                                    ; preds = %bb.ag, %bb.ah, %bb.x, %bb.y, %bb.m, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.cw, %bb.x ], [ %i.br, %bb.m ], [ %i.br, %bb.n ], [ %i.cw, %bb.y ], [ %i.dw, %bb.ah ], [ %i.dw, %bb.ag ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8functionIFviEEC2ERKS1_.exit:                ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !499 ; 2 uses
  store ptr %i.by, ptr %i.bw, align 8, !tbaa !499
  %i.bz = load ptr, ptr %i.bm, align 8, !tbaa !12 ; 3 uses
  store ptr %i.bz, ptr %i.bp, align 8, !tbaa !12
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  %.not.i.i.not.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFviEEC2EOS1_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt8functionIFviEEC2ERKS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 16, i1 false), !tbaa.struct !320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFviEEC2EOS1_.exit.i.i

_ZNSt8functionIFviEEC2EOS1_.exit.i.i:             ; preds = %bb.p, %_ZNSt8functionIFviEEC2ERKS1_.exit
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %i.ca, align 8, !tbaa !83
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 584
  %i.ce = load <2 x ptr>, ptr %i.cc, align 8, !tbaa !204
  %i.cf = load ptr, ptr %i.cc, align 8, !tbaa !204 ; 2 uses
  store ptr %i.bz, ptr %i.cc, align 8, !tbaa !204
  store <2 x ptr> %i.ce, ptr %i.cb, align 16, !tbaa !204
  store ptr %i.by, ptr %i.cd, align 8, !tbaa !204
  %.not.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i, label %_ZN14duckdb_httplib10ClientImpl18set_socket_optionsESt8functionIFviEE.exit.thread, label %bb.q

_ZN14duckdb_httplib10ClientImpl18set_socket_optionsESt8functionIFviEE.exit.thread: ; preds = %_ZNSt8functionIFviEEC2EOS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZNSt14_Function_baseD2Ev.exit

bb.q:                                             ; preds = %_ZNSt8functionIFviEEC2EOS1_.exit.i.i
  %i.cg = invoke noundef zeroext i1 %i.cf(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZN14duckdb_httplib10ClientImpl18set_socket_optionsESt8functionIFviEE.exit unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #34
  unreachable

_ZN14duckdb_httplib10ClientImpl18set_socket_optionsESt8functionIFviEE.exit: ; preds = %bb.q
  %.pre = load ptr, ptr %i.bp, align 8, !tbaa !12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN14duckdb_httplib10ClientImpl18set_socket_optionsESt8functionIFviEE.exit
  %i.cj = invoke noundef zeroext i1 %.pre(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.t ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  call void @__clang_call_terminate(ptr %i.cl) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN14duckdb_httplib10ClientImpl18set_socket_optionsESt8functionIFviEE.exit.thread, %bb.s, %_ZN14duckdb_httplib10ClientImpl18set_socket_optionsESt8functionIFviEE.exit, %bb.k
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !94
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 600
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %i.cp)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZNSt14_Function_baseD2Ev.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !12 ; 2 uses
  %.not.i.i22.not = icmp eq ptr %i.cs, null
  br i1 %.not.i.i22.not, label %_ZNSt14_Function_baseD2Ev.exit30, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %i.cv = invoke noundef zeroext i1 %i.cs(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.ct, i32 noundef 2)
          to label %_ZNSt8functionIFvRKN14duckdb_httplib7RequestERKNS0_8ResponseEEEC2ERKS8_.exit unwind label %bb.x ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = load ptr, ptr %i.cu, align 8, !tbaa !12 ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i24, label %common.resume, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cy = invoke noundef zeroext i1 %i.cx(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %common.resume unwind label %bb.z ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #34
  unreachable

_ZNSt8functionIFvRKN14duckdb_httplib7RequestERKNS0_8ResponseEEEC2ERKS8_.exit: ; preds = %bb.w
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !734 ; 2 uses
  store ptr %i.dd, ptr %i.db, align 8, !tbaa !734
  %i.de = load ptr, ptr %i.cr, align 8, !tbaa !12 ; 3 uses
  store ptr %i.de, ptr %i.cu, align 8, !tbaa !12
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 808 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  %.not.i.i.not.i.i.i27 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.not.i.i.i27, label %_ZNSt8functionIFvRKN14duckdb_httplib7RequestERKNS0_8ResponseEEEC2EOS8_.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt8functionIFvRKN14duckdb_httplib7RequestERKNS0_8ResponseEEEC2ERKS8_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 16, i1 false), !tbaa.struct !320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRKN14duckdb_httplib7RequestERKNS0_8ResponseEEEC2EOS8_.exit.i.i

_ZNSt8functionIFvRKN14duckdb_httplib7RequestERKNS0_8ResponseEEEC2EOS8_.exit.i.i: ; preds = %bb.aa, %_ZNSt8functionIFvRKN14duckdb_httplib7RequestERKNS0_8ResponseEEEC2ERKS8_.exit
  %.sroa.0.i.i.i.i26.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.df, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i.i26.sroa.0.0.copyload, ptr %i.df, align 8, !tbaa !83
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 824 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 832
  %i.dj = load <2 x ptr>, ptr %i.dh, align 8, !tbaa !204
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !204 ; 2 uses
  store ptr %i.de, ptr %i.dh, align 8, !tbaa !204
  store <2 x ptr> %i.dj, ptr %i.dg, align 16, !tbaa !204
  store ptr %i.dd, ptr %i.di, align 8, !tbaa !204
  %.not.i.i.i28 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i28, label %_ZN14duckdb_httplib10ClientImpl10set_loggerESt8functionIFvRKNS_7RequestERKNS_8ResponseEEE.exit.thread, label %bb.ab

_ZN14duckdb_httplib10ClientImpl10set_loggerESt8functionIFvRKNS_7RequestERKNS_8ResponseEEE.exit.thread: ; preds = %_ZNSt8functionIFvRKN14duckdb_httplib7RequestERKNS0_8ResponseEEEC2EOS8_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZNSt14_Function_baseD2Ev.exit30

bb.ab:                                            ; preds = %_ZNSt8functionIFvRKN14duckdb_httplib7RequestERKNS0_8ResponseEEEC2EOS8_.exit.i.i
  %i.dl = invoke noundef zeroext i1 %i.dk(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZN14duckdb_httplib10ClientImpl10set_loggerESt8functionIFvRKNS_7RequestERKNS_8ResponseEEE.exit unwind label %bb.ac ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #34
  unreachable

_ZN14duckdb_httplib10ClientImpl10set_loggerESt8functionIFvRKNS_7RequestERKNS_8ResponseEEE.exit: ; preds = %bb.ab
  %.pre40 = load ptr, ptr %i.cu, align 8, !tbaa !12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %.not.i29 = icmp eq ptr %.pre40, null
  br i1 %.not.i29, label %_ZNSt14_Function_baseD2Ev.exit30, label %bb.ad

bb.ad:                                            ; preds = %_ZN14duckdb_httplib10ClientImpl10set_loggerESt8functionIFvRKNS_7RequestERKNS_8ResponseEEE.exit
  %i.do = invoke noundef zeroext i1 %.pre40(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit30 unwind label %bb.ae ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  %i.dq = extractvalue { ptr, i32 } %i.dp, 0
  call void @__clang_call_terminate(ptr %i.dq) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit30:                 ; preds = %_ZN14duckdb_httplib10ClientImpl10set_loggerESt8functionIFvRKNS_7RequestERKNS_8ResponseEEE.exit.thread, %bb.ad, %_ZN14duckdb_httplib10ClientImpl10set_loggerESt8functionIFvRKNS_7RequestERKNS_8ResponseEEE.exit, %bb.v
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !12 ; 2 uses
  %.not.i.i31.not = icmp eq ptr %i.ds, null
  br i1 %.not.i.i31.not, label %_ZNSt14_Function_baseD2Ev.exit39, label %bb.af

bb.af:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit30
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.dv = invoke noundef zeroext i1 %i.ds(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.dt, i32 noundef 2)
          to label %_ZNSt8functionIFvRKN14duckdb_httplib5ErrorEPKNS0_7RequestEEEC2ERKS8_.exit unwind label %bb.ag ; 0 uses

bb.ag:                                            ; preds = %bb.af
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dx = load ptr, ptr %i.du, align 8, !tbaa !12 ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i33, label %common.resume, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dy = invoke noundef zeroext i1 %i.dx(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %common.resume unwind label %bb.ai ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  %i.dz = landingpad { ptr, i32 }
          catch ptr null
  %i.ea = extractvalue { ptr, i32 } %i.dz, 0
  call void @__clang_call_terminate(ptr %i.ea) #34
  unreachable

_ZNSt8functionIFvRKN14duckdb_httplib5ErrorEPKNS0_7RequestEEEC2ERKS8_.exit: ; preds = %bb.af
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !685 ; 2 uses
  store ptr %i.ed, ptr %i.eb, align 8, !tbaa !685
  %i.ee = load ptr, ptr %i.dr, align 8, !tbaa !12 ; 3 uses
  store ptr %i.ee, ptr %i.du, align 8, !tbaa !12
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 840 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %.not.i.i.not.i.i.i36 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.not.i.i.i36, label %_ZNSt8functionIFvRKN14duckdb_httplib5ErrorEPKNS0_7RequestEEEC2EOS8_.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt8functionIFvRKN14duckdb_httplib5ErrorEPKNS0_7RequestEEEC2ERKS8_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 16, i1 false), !tbaa.struct !320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRKN14duckdb_httplib5ErrorEPKNS0_7RequestEEEC2EOS8_.exit.i.i

_ZNSt8functionIFvRKN14duckdb_httplib5ErrorEPKNS0_7RequestEEEC2EOS8_.exit.i.i: ; preds = %bb.aj, %_ZNSt8functionIFvRKN14duckdb_httplib5ErrorEPKNS0_7RequestEEEC2ERKS8_.exit
  %.sroa.0.i.i.i.i35.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ef, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i.i35.sroa.0.0.copyload, ptr %i.ef, align 8, !tbaa !83
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 856 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 864
  %i.ej = load <2 x ptr>, ptr %i.eh, align 8, !tbaa !204
  %i.ek = load ptr, ptr %i.eh, align 8, !tbaa !204 ; 2 uses
  store ptr %i.ee, ptr %i.eh, align 8, !tbaa !204
  store <2 x ptr> %i.ej, ptr %i.eg, align 16, !tbaa !204
  store ptr %i.ed, ptr %i.ei, align 8, !tbaa !204
  %.not.i.i.i37 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i37, label %_ZN14duckdb_httplib10ClientImpl16set_error_loggerESt8functionIFvRKNS_5ErrorEPKNS_7RequestEEE.exit.thread, label %bb.ak

_ZN14duckdb_httplib10ClientImpl16set_error_loggerESt8functionIFvRKNS_5ErrorEPKNS_7RequestEEE.exit.thread: ; preds = %_ZNSt8functionIFvRKN14duckdb_httplib5ErrorEPKNS0_7RequestEEEC2EOS8_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %_ZNSt14_Function_baseD2Ev.exit39

bb.ak:                                            ; preds = %_ZNSt8functionIFvRKN14duckdb_httplib5ErrorEPKNS0_7RequestEEEC2EOS8_.exit.i.i
  %i.el = invoke noundef zeroext i1 %i.ek(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZN14duckdb_httplib10ClientImpl16set_error_loggerESt8functionIFvRKNS_5ErrorEPKNS_7RequestEEE.exit unwind label %bb.al ; 0 uses

bb.al:                                            ; preds = %bb.ak
  %i.em = landingpad { ptr, i32 }
          catch ptr null
  %i.en = extractvalue { ptr, i32 } %i.em, 0
  call void @__clang_call_terminate(ptr %i.en) #34
  unreachable

_ZN14duckdb_httplib10ClientImpl16set_error_loggerESt8functionIFvRKNS_5ErrorEPKNS_7RequestEEE.exit: ; preds = %bb.ak
  %.pre41 = load ptr, ptr %i.du, align 8, !tbaa !12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.not.i38 = icmp eq ptr %.pre41, null
  br i1 %.not.i38, label %_ZNSt14_Function_baseD2Ev.exit39, label %bb.am

bb.am:                                            ; preds = %_ZN14duckdb_httplib10ClientImpl16set_error_loggerESt8functionIFvRKNS_5ErrorEPKNS_7RequestEEE.exit
  %i.eo = invoke noundef zeroext i1 %.pre41(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit39 unwind label %bb.an ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit39:                 ; preds = %_ZN14duckdb_httplib10ClientImpl16set_error_loggerESt8functionIFvRKNS_5ErrorEPKNS_7RequestEEE.exit.thread, %bb.am, %_ZN14duckdb_httplib10ClientImpl16set_error_loggerESt8functionIFvRKNS_5ErrorEPKNS_7RequestEEE.exit, %_ZNSt14_Function_baseD2Ev.exit30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.016 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 9 uses
  %.01215 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.016, i64 16 ; 3 uses
  store ptr %i.b, ptr %.016, align 8, !tbaa !93
  %i.c = load ptr, ptr %.01215, align 8, !tbaa !23 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01215, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !94   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.e, ptr %i.a, align 8, !tbaa !10
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.016, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.016, align 8, !tbaa !23
  %i.h = load i64, ptr %i.a, align 8, !tbaa !10
  store i64 %i.h, ptr %i.b, align 8, !tbaa !83
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !83
  store i8 %i.j, ptr %i.i, align 1, !tbaa !83
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.016, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !94
  %i.m = load ptr, ptr %.016, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.o = getelementptr inbounds nuw i8, ptr %.01215, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.016, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1009

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #24 ; 0 uses
  %.not4.i.i = icmp eq ptr %2, %.016
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.w, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %2, %bb.e ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i, align 8, !tbaa !23 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  call void @_ZdlPv(ptr noundef %i.t) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, %.016
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, label %.lr.ph.i.i, !llvm.loop !49

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, %bb.e
  invoke void @__cxa_rethrow() #32
          to label %bb.i unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.f:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.x

bb.h:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #34
  unreachable

bb.i:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapIS6_S6_NS_6detail11case_ignore4hashENSB_8equal_toESaISt4pairIS7_S6_EEESt8functionIFbRKNS_8ResponseEEESK_IFbPKcmEESK_IFbmmEE(ptr dead_on_unwind noalias writable sret(%"class.duckdb_httplib::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(872) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::function.50", align 16 ; 9 uses
  %8 = alloca %"class.std::function.48", align 16 ; 10 uses
  %9 = alloca %"class.std::function.46", align 16 ; 9 uses
  %10 = alloca %"struct.duckdb_httplib::Request", align 8 ; 80 uses
  %11 = alloca %class.anon.864, align 8           ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.a, ptr %10, align 8, !tbaa !93
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !94
  store i8 0, ptr %i.a, align 8, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !93
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !94
  store i8 0, ptr %i.d, align 8, !tbaa !83
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !93
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 72
  store i64 0, ptr %i.h, align 8, !tbaa !94
  store i8 0, ptr %i.g, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 104 ; 3 uses
  store i32 0, ptr %i.i, align 8, !tbaa !363
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 112
  store ptr null, ptr %i.j, align 8, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 120
  store ptr %i.i, ptr %i.k, align 8, !tbaa !364
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 128
  store ptr %i.i, ptr %i.l, align 8, !tbaa !365
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 136
  store i64 0, ptr %i.m, align 8, !tbaa !366
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 144 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 192
  store ptr %i.o, ptr %i.n, align 8, !tbaa !38
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 152
  store i64 1, ptr %i.p, align 8, !tbaa !39
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 160
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.r, align 8, !tbaa !92
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 200
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 248
  store ptr %i.u, ptr %i.t, align 8, !tbaa !38
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 208
  store i64 1, ptr %i.v, align 8, !tbaa !39
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 216
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.x, align 8, !tbaa !92
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 256
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 272 ; 2 uses
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !93
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 264
  store i64 0, ptr %i.ab, align 8, !tbaa !94
  store i8 0, ptr %i.aa, align 8, !tbaa !83
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 288
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 304 ; 2 uses
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !93
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 296
  store i64 0, ptr %i.ae, align 8, !tbaa !94
  store i8 0, ptr %i.ad, align 8, !tbaa !83
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 320
  store i32 -1, ptr %i.af, align 8, !tbaa !651
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 328
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 344 ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !93
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 336
  store i64 0, ptr %i.ai, align 8, !tbaa !94
  store i8 0, ptr %i.ah, align 8, !tbaa !83
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 360
  store i32 -1, ptr %i.aj, align 8, !tbaa !674
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 368
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 384 ; 2 uses
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !93
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 376
  store i64 0, ptr %i.am, align 8, !tbaa !94
  store i8 0, ptr %i.al, align 8, !tbaa !83
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 400
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 416 ; 2 uses
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !93
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 408
  store i64 0, ptr %i.ap, align 8, !tbaa !94
  store i8 0, ptr %i.ao, align 8, !tbaa !83
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 440 ; 3 uses
  store i32 0, ptr %i.aq, align 8, !tbaa !363
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 448
  store ptr null, ptr %i.ar, align 8, !tbaa !40
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 456
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !364
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 464
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !365
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 472
  store i64 0, ptr %i.au, align 8, !tbaa !366
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 488 ; 3 uses
  store i32 0, ptr %i.av, align 8, !tbaa !363
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 496
  store ptr null, ptr %i.aw, align 8, !tbaa !40
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 504
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !364
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 512
  store ptr %i.av, ptr %i.ay, align 8, !tbaa !365
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 520
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 576
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 624
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.az, i8 0, i64 56, i1 false)
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !87
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 584
  store i64 1, ptr %i.bc, align 8, !tbaa !88
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 592
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 608
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.be, align 8, !tbaa !92
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 616
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 648
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 656
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i8 0, i64 32, i1 false)
  store ptr @_ZNSt17_Function_handlerIFbvEN14duckdb_httplib7Request20is_connection_closedMUlvE_EE9_M_invokeERKSt9_Any_data, ptr %i.bh, align 8, !tbaa !675
  store ptr @_ZNSt17_Function_handlerIFbvEN14duckdb_httplib7Request20is_connection_closedMUlvE_EE10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, ptr %i.bg, align 8, !tbaa !12
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 664
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 816
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.bi, i8 0, i64 152, i1 false)
  store i64 20, ptr %i.bj, align 8, !tbaa !676
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 824
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 872
  store i64 0, ptr %i.bl, align 8, !tbaa !677
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 880 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.bk, i8 0, i64 41, i1 false)
  store i64 -9223372036854775808, ptr %i.bm, align 8
  %i.bn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.u ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.bo = icmp eq ptr %3, %i.n
  br i1 %i.bo, label %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEEaSERKSF_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE18_M_assign_elementsIRKSM_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEEaSERKSF_.exit unwind label %bb.u

_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEEaSERKSF_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.b
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 688 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %9, i8 0, i64 24, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.br = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !204
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !12
  %.not.i.i.not.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFbRKN14duckdb_httplib8ResponseEEEC2EOS5_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEEaSERKSF_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 16, i1 false), !tbaa.struct !320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFbRKN14duckdb_httplib8ResponseEEEC2EOS5_.exit.i

_ZNSt8functionIFbRKN14duckdb_httplib8ResponseEEEC2EOS5_.exit.i: ; preds = %bb.c, %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEEaSERKSF_.exit
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %9, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.bp, align 8, !tbaa !83
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 704 ; 3 uses
  %i.bv = load <2 x ptr>, ptr %i.bu, align 8, !tbaa !204
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !204 ; 2 uses
  store <2 x ptr> %i.bv, ptr %i.bt, align 16, !tbaa !204
  store <2 x ptr> %i.br, ptr %i.bu, align 8, !tbaa !204
  %.not.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i, label %_ZNSt8functionIFbRKN14duckdb_httplib8ResponseEEEaSEOS5_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt8functionIFbRKN14duckdb_httplib8ResponseEEEC2EOS5_.exit.i
  %i.bx = invoke noundef zeroext i1 %i.bw(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
          to label %_ZNSt8functionIFbRKN14duckdb_httplib8ResponseEEEaSEOS5_.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #34
  unreachable

_ZNSt8functionIFbRKN14duckdb_httplib8ResponseEEEaSEOS5_.exit: ; preds = %_ZNSt8functionIFbRKN14duckdb_httplib8ResponseEEEC2EOS5_.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFbPKcmEEC2ERKS3_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt8functionIFbRKN14duckdb_httplib8ResponseEEEaSEOS5_.exit
  %i.ce = invoke noundef zeroext i1 %i.cd(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !14 ; 2 uses
  store ptr %i.cg, ptr %i.cb, align 8, !tbaa !14
  %i.ch = load ptr, ptr %i.cc, align 8, !tbaa !12 ; 2 uses
  store ptr %i.ch, ptr %i.ca, align 8, !tbaa !12
  br label %_ZNSt8functionIFbPKcmEEC2ERKS3_.exit

bb.h:                                             ; preds = %bb.f
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cj = load ptr, ptr %i.ca, align 8, !tbaa !12 ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i9, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ck = invoke noundef zeroext i1 %i.cj(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body unwind label %bb.j      ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #34
  unreachable

_ZNSt8functionIFbPKcmEEC2ERKS3_.exit:             ; preds = %bb.g, %_ZNSt8functionIFbRKN14duckdb_httplib8ResponseEEEaSEOS5_.exit
  %i.cn = phi ptr [ %i.cg, %bb.g ], [ null, %_ZNSt8functionIFbRKN14duckdb_httplib8ResponseEEEaSEOS5_.exit ]
  %i.co = phi ptr [ %i.ch, %bb.g ], [ null, %_ZNSt8functionIFbRKN14duckdb_httplib8ResponseEEEaSEOS5_.exit ] ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %10, i64 720 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.cq, align 8
  %i.cr = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #36
          to label %.noexc13 unwind label %bb.v   ; 5 uses

.noexc13:                                         ; preds = %_ZNSt8functionIFbPKcmEEC2ERKS3_.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cr, i8 0, i64 24, i1 false)
  store ptr %i.cn, ptr %i.cs, align 8, !tbaa !14
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZNSt8functionIFbPKcmmmEEC2IZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapISC_SC_NS5_6detail11case_ignore4hashENSH_8equal_toESaISt4pairISD_SC_EEES_IFbRKNS5_8ResponseEEES_IFbS1_mEES_IFbmmEEEUlS1_mmmE_vEEOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %.noexc13
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 16, i1 false), !tbaa.struct !320
  store ptr %i.co, ptr %i.ct, align 8, !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFbPKcmmmEEC2IZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapISC_SC_NS5_6detail11case_ignore4hashENSH_8equal_toESaISt4pairISD_SC_EEES_IFbRKNS5_8ResponseEEES_IFbS1_mEES_IFbmmEEEUlS1_mmmE_vEEOT_.exit.i

_ZNSt8functionIFbPKcmmmEEC2IZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapISC_SC_NS5_6detail11case_ignore4hashENSH_8equal_toESaISt4pairISD_SC_EEES_IFbRKNS5_8ResponseEEES_IFbS1_mEES_IFbmmEEEUlS1_mmmE_vEEOT_.exit.i: ; preds = %bb.k, %.noexc13
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.cr, ptr %8, align 16, !tbaa !204
  %.sroa.0.i.i.i10.sroa.0.0.copyload = load <2 x i64>, ptr %8, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.cp, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i10.sroa.0.0.copyload, ptr %i.cp, align 8, !tbaa !83
  %i.cv = getelementptr inbounds nuw i8, ptr %10, i64 736 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %10, i64 744
  %i.cx = load <2 x ptr>, ptr %i.cv, align 8, !tbaa !204
  %i.cy = load ptr, ptr %i.cv, align 8, !tbaa !204 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFbPKcmmmEZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapISA_SA_NS3_6detail11case_ignore4hashENSF_8equal_toESaISt4pairISB_SA_EEESt8functionIFbRKNS3_8ResponseEEESO_IFbS1_mEESO_IFbmmEEEUlS1_mmmE_E10_M_managerERSt9_Any_dataRKS10_St18_Manager_operation, ptr %i.cv, align 8, !tbaa !204
  store <2 x ptr> %i.cx, ptr %i.cu, align 16, !tbaa !204
  store ptr @_ZNSt17_Function_handlerIFbPKcmmmEZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapISA_SA_NS3_6detail11case_ignore4hashENSF_8equal_toESaISt4pairISB_SA_EEESt8functionIFbRKNS3_8ResponseEEESO_IFbS1_mEESO_IFbmmEEEUlS1_mmmE_E9_M_invokeERKSt9_Any_dataOS1_OmS14_S14_, ptr %i.cw, align 8, !tbaa !204
  %.not.i.i11 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i11, label %.thread, label %bb.l

.thread:                                          ; preds = %_ZNSt8functionIFbPKcmmmEEC2IZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapISC_SC_NS5_6detail11case_ignore4hashENSH_8equal_toESaISt4pairISD_SC_EEES_IFbRKNS5_8ResponseEEES_IFbS1_mEES_IFbmmEEEUlS1_mmmE_vEEOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %_ZZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapIS6_S6_NS_6detail11case_ignore4hashENSB_8equal_toESaISt4pairIS7_S6_EEESt8functionIFbRKNS_8ResponseEEESK_IFbPKcmEESK_IFbmmEEENUlSR_mmmE_D2Ev.exit

bb.l:                                             ; preds = %_ZNSt8functionIFbPKcmmmEEC2IZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapISC_SC_NS5_6detail11case_ignore4hashENSH_8equal_toESaISt4pairISD_SC_EEES_IFbRKNS5_8ResponseEEES_IFbS1_mEES_IFbmmEEEUlS1_mmmE_vEEOT_.exit.i
  %i.cz = invoke noundef zeroext i1 %i.cy(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %bb.n unwind label %bb.m       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #34
  unreachable

bb.n:                                             ; preds = %bb.l
  %.pre = load ptr, ptr %i.ca, align 8, !tbaa !12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %.not.i.i14 = icmp eq ptr %.pre, null
  br i1 %.not.i.i14, label %_ZZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapIS6_S6_NS_6detail11case_ignore4hashENSB_8equal_toESaISt4pairIS7_S6_EEESt8functionIFbRKNS_8ResponseEEESK_IFbPKcmEESK_IFbmmEEENUlSR_mmmE_D2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dc = invoke noundef zeroext i1 %.pre(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapIS6_S6_NS_6detail11case_ignore4hashENSB_8equal_toESaISt4pairIS7_S6_EEESt8functionIFbRKNS_8ResponseEEESK_IFbPKcmEESK_IFbmmEEENUlSR_mmmE_D2Ev.exit unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #34
  unreachable

_ZZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapIS6_S6_NS_6detail11case_ignore4hashENSB_8equal_toESaISt4pairIS7_S6_EEESt8functionIFbRKNS_8ResponseEEESK_IFbPKcmEESK_IFbmmEEENUlSR_mmmE_D2Ev.exit: ; preds = %.thread, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 752 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, i8 0, i64 24, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.dh = load <2 x ptr>, ptr %i.dg, align 8, !tbaa !204
  %i.di = load ptr, ptr %i.dg, align 8, !tbaa !12
  %.not.i.i.not.i.i17 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.not.i.i17, label %_ZNSt8functionIFbmmEEC2EOS1_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapIS6_S6_NS_6detail11case_ignore4hashENSB_8equal_toESaISt4pairIS7_S6_EEESt8functionIFbRKNS_8ResponseEEESK_IFbPKcmEESK_IFbmmEEENUlSR_mmmE_D2Ev.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 16, i1 false), !tbaa.struct !320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFbmmEEC2EOS1_.exit.i

_ZNSt8functionIFbmmEEC2EOS1_.exit.i:              ; preds = %bb.q, %_ZZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapIS6_S6_NS_6detail11case_ignore4hashENSB_8equal_toESaISt4pairIS7_S6_EEESt8functionIFbRKNS_8ResponseEEESK_IFbPKcmEESK_IFbmmEEENUlSR_mmmE_D2Ev.exit
  %.sroa.0.i.i.i16.sroa.0.0.copyload = load <2 x i64>, ptr %7, align 16, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.df, i64 16, i1 false), !tbaa.struct !320
  store <2 x i64> %.sroa.0.i.i.i16.sroa.0.0.copyload, ptr %i.df, align 8, !tbaa !83
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 768 ; 3 uses
  %i.dl = load <2 x ptr>, ptr %i.dk, align 8, !tbaa !204
  %i.dm = load ptr, ptr %i.dk, align 8, !tbaa !204 ; 2 uses
  store <2 x ptr> %i.dl, ptr %i.dj, align 16, !tbaa !204
  store <2 x ptr> %i.dh, ptr %i.dk, align 8, !tbaa !204
  %.not.i.i18 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i18, label %_ZNSt8functionIFbmmEEaSEOS1_.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt8functionIFbmmEEC2EOS1_.exit.i
  %i.dn = invoke noundef zeroext i1 %i.dm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt8functionIFbmmEEaSEOS1_.exit unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  call void @__clang_call_terminate(ptr %i.dp) #34
  unreachable

_ZNSt8functionIFbmmEEaSEOS1_.exit:                ; preds = %_ZNSt8functionIFbmmEEC2EOS1_.exit.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !317
  %i.ds = icmp sgt i64 %i.dr, 0
  br i1 %i.ds, label %bb.t, label %bb.y

bb.t:                                             ; preds = %_ZNSt8functionIFbmmEEaSEOS1_.exit
  %i.dt = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #24
  store i64 %i.dt, ptr %i.bm, align 8, !tbaa !10
  br label %bb.y

bb.u:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.a, %bb.y
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.v:                                             ; preds = %_ZNSt8functionIFbPKcmEEC2ERKS3_.exit
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.co, null
  br i1 %.not.i.i20, label %.body, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dw = invoke noundef zeroext i1 %i.co(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body unwind label %bb.x      ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #34
  unreachable

.body:                                            ; preds = %bb.w, %bb.v, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ci, %bb.h ], [ %i.dv, %bb.w ], [ %i.ci, %bb.i ], [ %i.dv, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.aa

bb.y:                                             ; preds = %bb.t, %_ZNSt8functionIFbmmEEaSEOS1_.exit
  invoke void @_ZN14duckdb_httplib10ClientImpl5send_EONS_7RequestE(ptr dead_on_unwind writable sret(%"class.duckdb_httplib::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(872) %1, ptr noundef nonnull align 8 dereferenceable(888) %10)
          to label %bb.z unwind label %bb.u

bb.z:                                             ; preds = %bb.y
  call void @_ZN14duckdb_httplib7RequestD2Ev(ptr noundef nonnull align 8 dead_on_return(888) dereferenceable(888) %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  ret void

bb.aa:                                            ; preds = %.body, %bb.u
  %.pn7 = phi { ptr, i32 } [ %i.du, %bb.u ], [ %.pn, %.body ]
  call void @_ZN14duckdb_httplib7RequestD2Ev(ptr noundef nonnull align 8 dead_on_return(888) dereferenceable(888) %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  resume { ptr, i32 } %.pn7
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFbPKcmmmEZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapISA_SA_NS3_6detail11case_ignore4hashENSF_8equal_toESaISt4pairISB_SA_EEESt8functionIFbRKNS3_8ResponseEEESO_IFbS1_mEESO_IFbmmEEEUlS1_mmmE_E9_M_invokeERKSt9_Any_dataOS1_OmS14_S14_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #8 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !204    ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !7
  %i.e = load i64, ptr %2, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.a, align 8, !tbaa !7
  store i64 %i.e, ptr %i.b, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %bb.b, label %_ZSt10__invoke_rIbRZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapIS7_S7_NS0_6detail11case_ignore4hashENSC_8equal_toESaISt4pairIS8_S7_EEESt8functionIFbRKNS0_8ResponseEEESL_IFbPKcmEESL_IFbmmEEEUlSS_mmmE_JSS_mmmEENSt9enable_ifIXntsr7is_voidIT_EE5valueES10_E4typeEOT0_DpOT1_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #32
  unreachable

_ZSt10__invoke_rIbRZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapIS7_S7_NS0_6detail11case_ignore4hashENSC_8equal_toESaISt4pairIS8_S7_EEESt8functionIFbRKNS0_8ResponseEEESL_IFbPKcmEESL_IFbmmEEEUlSS_mmmE_JSS_mmmEENSt9enable_ifIXntsr7is_voidIT_EE5valueES10_E4typeEOT0_DpOT1_.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.j = call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !1010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFbPKcmmmEZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapISA_SA_NS3_6detail11case_ignore4hashENSF_8equal_toESaISt4pairISB_SA_EEESt8functionIFbRKNS3_8ResponseEEESO_IFbS1_mEESO_IFbmmEEEUlS1_mmmE_E10_M_managerERSt9_Any_dataRKS10_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #8 comdat align 2 {
bb.a:
  switch i32 %2, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapIS6_S6_NS_6detail11case_ignore4hashENSB_8equal_toESaISt4pairIS7_S6_EEESt8functionIFbRKNS_8ResponseEEESK_IFbPKcmEESK_IFbmmEEEUlSR_mmmE_, ptr %0, align 8, !tbaa !372
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !204
  store ptr %i.a, ptr %0, align 8, !tbaa !204
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNSt14_Function_base13_Base_managerIZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapIS8_S8_NS1_6detail11case_ignore4hashENSD_8equal_toESaISt4pairIS9_S8_EEESt8functionIFbRKNS1_8ResponseEEESM_IFbPKcmEESM_IFbmmEEEUlST_mmmE_E10_M_managerERSt9_Any_dataRKS10_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt14_Function_base13_Base_managerIZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapIS8_S8_NS1_6detail11case_ignore4hashENSD_8equal_toESaISt4pairIS9_S8_EEESt8functionIFbRKNS1_8ResponseEEESM_IFbPKcmEESM_IFbmmEEEUlST_mmmE_E10_M_managerERSt9_Any_dataRKS10_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapIS8_S8_NS1_6detail11case_ignore4hashENSD_8equal_toESaISt4pairIS9_S8_EEESt8functionIFbRKNS1_8ResponseEEESM_IFbPKcmEESM_IFbmmEEEUlST_mmmE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapIS6_S6_NS_6detail11case_ignore4hashENSB_8equal_toESaISt4pairIS7_S6_EEESt8functionIFbRKNS_8ResponseEEESK_IFbPKcmEESK_IFbmmEEEUlSR_mmmE_, ptr %0, align 8, !tbaa !372
  br label %_ZNSt14_Function_base13_Base_managerIZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapIS8_S8_NS1_6detail11case_ignore4hashENSD_8equal_toESaISt4pairIS9_S8_EEESt8functionIFbRKNS1_8ResponseEEESM_IFbPKcmEESM_IFbmmEEEUlST_mmmE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !204
  store ptr %i.a, ptr %0, align 8, !tbaa !204
  br label %_ZNSt14_Function_base13_Base_managerIZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapIS8_S8_NS1_6detail11case_ignore4hashENSD_8equal_toESaISt4pairIS9_S8_EEESt8functionIFbRKNS1_8ResponseEEESM_IFbPKcmEESM_IFbmmEEEUlST_mmmE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !204    ; 2 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #36 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12   ; 2 uses
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZNSt14_Function_base13_Base_managerIZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapIS8_S8_NS1_6detail11case_ignore4hashENSD_8equal_toESaISt4pairIS9_S8_EEESt8functionIFbRKNS1_8ResponseEEESM_IFbPKcmEESM_IFbmmEEEUlST_mmmE_E15_M_init_functorIRKSY_EEvRSt9_Any_dataOT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef 2)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.h = load <2 x ptr>, ptr %i.e, align 8, !tbaa !204
  store <2 x ptr> %i.h, ptr %i.d, align 8, !tbaa !204
  br label %_ZNSt14_Function_base13_Base_managerIZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapIS8_S8_NS1_6detail11case_ignore4hashENSD_8equal_toESaISt4pairIS9_S8_EEESt8functionIFbRKNS1_8ResponseEEESM_IFbPKcmEESM_IFbmmEEEUlST_mmmE_E15_M_init_functorIRKSY_EEvRSt9_Any_dataOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !12   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %.body.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %.body.i.i unwind label %bb.i  ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #34
  unreachable

.body.i.i:                                        ; preds = %bb.h, %bb.g
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #33
  resume { ptr, i32 } %i.i

_ZNSt14_Function_base13_Base_managerIZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapIS8_S8_NS1_6detail11case_ignore4hashENSD_8equal_toESaISt4pairIS9_S8_EEESt8functionIFbRKNS1_8ResponseEEESM_IFbPKcmEESM_IFbmmEEEUlST_mmmE_E15_M_init_functorIRKSY_EEvRSt9_Any_dataOT_.exit: ; preds = %bb.d, %bb.f
  store ptr %i.c, ptr %0, align 8, !tbaa !204
  br label %_ZNSt14_Function_base13_Base_managerIZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapIS8_S8_NS1_6detail11case_ignore4hashENSD_8equal_toESaISt4pairIS9_S8_EEESt8functionIFbRKNS1_8ResponseEEESM_IFbPKcmEESM_IFbmmEEEUlST_mmmE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

bb.j:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %0, align 8, !tbaa !204    ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZNSt14_Function_base13_Base_managerIZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapIS8_S8_NS1_6detail11case_ignore4hashENSD_8equal_toESaISt4pairIS9_S8_EEESt8functionIFbRKNS1_8ResponseEEESM_IFbPKcmEESM_IFbmmEEEUlST_mmmE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !12   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZZN14duckdb_httplib10ClientImpl3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt18unordered_multimapIS6_S6_NS_6detail11case_ignore4hashENSB_8equal_toESaISt4pairIS7_S6_EEESt8functionIFbRKNS_8ResponseEEESK_IFbPKcmEESK_IFbmmEEENUlSR_mmmE_D2Ev.exit.i, label %bb.l

end_hunk_3
