inline.NumInlined: 17435
inline.NumDeleted: 4964
loop-unroll.NumCompletelyUnrolled: 145
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 177
begin_hunk_0_@_ZN8facebook5velox9functions7TDigestISaIdEE5mergeEdPKdS6_i:bb.a
  %i.p = zext nneg i32 %4 to i64
  %.not = icmp ult i64 %i.o, %i.p
  br i1 %.not, label %bb.f, label %bb.i, !prof !56

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33, !noalias !962
  store i64 %i.o, ptr %5, align 16, !tbaa !26, !alias.scope !965, !noalias !962
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %4, ptr %i.q, align 16, !tbaa !26, !alias.scope !965, !noalias !962
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.46, i64 11, i64 20, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33, !noalias !962
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions7TDigestISaIdEE5mergeEdPKdS6_iE18veloxCheckFailArgs_2, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.46) #38
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %8, align 8, !tbaa !7      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.h
  %i.v = load i64, ptr %i.t, align 8, !tbaa !26
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.m

bb.i:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !841, !range !83, !noundef !84
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN8facebook5velox9functions7TDigestISaIdEE9mergeImplILb1EEEvdPKdS7_i(ptr noundef nonnull align 8 dereferenceable(81) %0, double noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call void @_ZN8facebook5velox9functions7TDigestISaIdEE9mergeImplILb0EEEvdPKdS7_i(ptr noundef nonnull align 8 dereferenceable(81) %0, double noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aa = load i8, ptr %i.x, align 8, !tbaa !841, !range !83, !noundef !84
  %i.ab = xor i8 %i.aa, 1
  store i8 %i.ab, ptr %i.x, align 8, !tbaa !841
  ret void

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIsSaIsEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !949  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !844    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 1                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !847
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 1                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 4611686018427387904
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 4611686018427387903        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 0, ptr %i.b, align 2, !tbaa !951
  %i.p = getelementptr i8, ptr %i.b, i64 2        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPsmsET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPsmsET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPsmsET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 1       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !951
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPsmsET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPsmsET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPsmsET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPsmsET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !949
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #38
  unreachable

_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 4611686018427387903) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 1
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #36 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i16 0, ptr %i.y, align 2, !tbaa !951
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPsmsET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPsmsET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPsmsET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 2
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !951
  br label %_ZSt27__uninitialized_default_n_aIPsmsET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPsmsET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPsmsET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPsmsET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.x, ptr align 2 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit

_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPsmsET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #37
  br label %_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsm.exit36

_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsm.exit36: ; preds = %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !844
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !949
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !847
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPsmsET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEElNS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SH_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 1                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SG_SH_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %.lr.ph.i.i, label %.lr.ph44

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEESG_SG_SG_SH_.exit
  %i.i = icmp eq i64 %i.bi, 0
  br i1 %i.i, label %.lr.ph.i.i, label %.lr.ph44, !llvm.loop !968

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph
  %storemerge21.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %3, ptr %4, align 8
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_RSH_(ptr %0, ptr %storemerge21.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.c

bb.c:                                             ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SG_RSH_.exit.i.i, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi ptr [ %storemerge21.lcssa, %.lr.ph.i.i ], [ %i.j, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SG_RSH_.exit.i.i ]
  %i.j = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -2 ; 4 uses
  %i.k = load i16, ptr %i.j, align 2, !tbaa !951  ; 2 uses
  %i.l = load i16, ptr %0, align 2, !tbaa !951
  store i16 %i.l, ptr %i.j, align 2, !tbaa !951
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = sub i64 %i.m, %i.a                       ; 3 uses
  %i.o = ashr exact i64 %i.n, 1                   ; 3 uses
  %i.p = add nsw i64 %i.o, -1
  %5 = lshr i64 %i.p, 1
  %i.q = icmp sgt i64 %i.o, 2
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !826  ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.036.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.d ] ; 2 uses
  %i.s = shl i64 %.036.i.i.i.i, 1                 ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [2 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [2 x i8], ptr %0, i64 %i.v
  %i.x = load i16, ptr %i.u, align 2, !tbaa !951
  %i.y = load i16, ptr %i.w, align 2, !tbaa !951
  %i.z = sext i16 %i.x to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.z
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !621
  %i.ac = sext i16 %i.y to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !621
  %i.af = fcmp olt double %i.ab, %i.ae
  %spec.select.i.i.i.i = select i1 %i.af, i64 %i.v, i64 %i.t ; 4 uses
  %i.ag = getelementptr inbounds [2 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !951
  %i.ai = getelementptr inbounds [2 x i8], ptr %0, i64 %.036.i.i.i.i
  store i16 %i.ah, ptr %i.ai, align 2, !tbaa !951
  %i.aj = icmp slt i64 %spec.select.i.i.i.i, %5
  br i1 %i.aj, label %bb.d, label %._crit_edge.i.i.i.i, !llvm.loop !969

._crit_edge.i.i.i.i:                              ; preds = %bb.d, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.c ], [ %spec.select.i.i.i.i, %bb.d ] ; 5 uses
  %i.ak = and i64 %i.n, 2
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.am = add nsw i64 %i.o, -2
  %i.an = ashr exact i64 %i.am, 1
  %i.ao = icmp eq i64 %.0.lcssa.i.i.i.i, %i.an
  br i1 %i.ao, label %.thread.i.i.i, label %bb.f

.thread.i.i.i:                                    ; preds = %bb.e
  %i.ap = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aq = or disjoint i64 %i.ap, 1                ; 2 uses
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aq
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !951
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i16 %i.as, ptr %i.at, align 2, !tbaa !951
  br label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SG_RSH_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.thread.i.i.i
  %.1.i7.i.i.i = phi i64 [ %i.aq, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.f ]
  %i.au = load ptr, ptr %i.g, align 8, !tbaa !826 ; 2 uses
  %i.av = sext i16 %i.k to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !621
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i7.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i89.i.i.i, %bb.h ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.0920.i.i89.i.i.i
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !951 ; 2 uses
  %i.ba = sext i16 %i.az to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !621
  %i.bd = fcmp olt double %i.bc, %i.ax
  br i1 %i.bd, label %bb.h, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SG_RSH_.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds [2 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i16 %i.az, ptr %i.be, align 2, !tbaa !951
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SG_RSH_.exit.i.i, label %bb.g, !llvm.loop !970

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SG_RSH_.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.f ], [ %.019.i.i.i.i.i, %bb.g ], [ 0, %bb.h ]
  %i.bf = getelementptr inbounds [2 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i16 %i.k, ptr %i.bf, align 2, !tbaa !951
  %i.bg = icmp sgt i64 %i.n, 2
  br i1 %i.bg, label %bb.c, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SG_SH_.exit, !llvm.loop !971

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2143 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02242 = phi i64 [ %i.bi, %bb.b ], [ %2, %.lr.ph ]
  %i.bh = phi i64 [ %i.cz, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bi = add nsw i64 %.02242, -1                 ; 3 uses
  %i.bj = lshr i64 %i.bh, 1
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bj ; 3 uses
  %i.bl = getelementptr inbounds i8, ptr %storemerge2143, i64 -2 ; 3 uses
  %i.bm = load i16, ptr %i.f, align 2, !tbaa !951 ; 3 uses
  %i.bn = load i16, ptr %i.bk, align 2, !tbaa !951 ; 3 uses
  %i.bo = sext i16 %i.bm to i64
  %i.bp = load ptr, ptr %i.g, align 8, !tbaa !826 ; 6 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bo
  %i.br = load double, ptr %i.bq, align 8, !tbaa !621 ; 3 uses
  %i.bs = sext i16 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !621 ; 3 uses
  %i.bv = fcmp olt double %i.br, %i.bu
  %i.bw = load i16, ptr %i.bl, align 2, !tbaa !951 ; 3 uses
  %i.bx = sext i16 %i.bw to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bx
  %i.bz = load double, ptr %i.by, align 8, !tbaa !621 ; 4 uses
  br i1 %i.bv, label %bb.i, label %bb.n

bb.i:                                             ; preds = %.lr.ph44
  %i.ca = fcmp olt double %i.bu, %i.bz
  br i1 %i.ca, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cb = load i16, ptr %0, align 2, !tbaa !951
  store i16 %i.bn, ptr %0, align 2, !tbaa !951
  store i16 %i.cb, ptr %i.bk, align 2, !tbaa !951
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SG_SG_SH_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  %i.cc = fcmp olt double %i.br, %i.bz
  %i.cd = load i16, ptr %0, align 2, !tbaa !951   ; 2 uses
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i16 %i.bw, ptr %0, align 2, !tbaa !951
  store i16 %i.cd, ptr %i.bl, align 2, !tbaa !951
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SG_SG_SH_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  store i16 %i.bm, ptr %0, align 2, !tbaa !951
  store i16 %i.cd, ptr %i.f, align 2, !tbaa !951
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SG_SG_SH_.exit.i.preheader

bb.n:                                             ; preds = %.lr.ph44
  %i.ce = fcmp olt double %i.br, %i.bz
  br i1 %i.ce, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cf = load i16, ptr %0, align 2, !tbaa !951
  store i16 %i.bm, ptr %0, align 2, !tbaa !951
  store i16 %i.cf, ptr %i.f, align 2, !tbaa !951
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SG_SG_SH_.exit.i.preheader

bb.p:                                             ; preds = %bb.n
  %i.cg = fcmp olt double %i.bu, %i.bz
  %i.ch = load i16, ptr %0, align 2, !tbaa !951   ; 2 uses
  br i1 %i.cg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i16 %i.bw, ptr %0, align 2, !tbaa !951
  store i16 %i.ch, ptr %i.bl, align 2, !tbaa !951
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SG_SG_SH_.exit.i.preheader

bb.r:                                             ; preds = %bb.p
  store i16 %i.bn, ptr %0, align 2, !tbaa !951
  store i16 %i.ch, ptr %i.bk, align 2, !tbaa !951
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SG_SG_SH_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SG_SG_SH_.exit.i.preheader: ; preds = %bb.r, %bb.q, %bb.o, %bb.m, %bb.l, %bb.j
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SG_SG_SH_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SG_SG_SH_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SG_SG_SH_.exit.i.preheader, %bb.u
  %.sroa.011.0.i.i = phi ptr [ %.sroa.011.1.i.i, %bb.u ], [ %storemerge2143, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SG_SG_SH_.exit.i.preheader ]
  %.sroa.014.0.i.i = phi ptr [ %i.cr, %bb.u ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SG_SG_SH_.exit.i.preheader ]
  %i.ci = load i16, ptr %0, align 2, !tbaa !951
  %i.cj = sext i16 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.cj
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !621 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SG_SG_SH_.exit.i
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SG_SG_SH_.exit.i ], [ %i.cr, %bb.s ] ; 8 uses
  %i.cm = load i16, ptr %.sroa.014.1.i.i, align 2, !tbaa !951 ; 2 uses
  %i.cn = sext i16 %i.cm to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.cn
  %i.cp = load double, ptr %i.co, align 8, !tbaa !621
  %i.cq = fcmp olt double %i.cp, %i.cl
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 2 ; 2 uses
  br i1 %i.cq, label %bb.s, label %.preheader.i.i, !llvm.loop !972

.preheader.i.i:                                   ; preds = %bb.s, %.preheader.i.i
  %.sroa.011.0.pn.i.i = phi ptr [ %.sroa.011.1.i.i, %.preheader.i.i ], [ %.sroa.011.0.i.i, %bb.s ]
  %.sroa.011.1.i.i = getelementptr inbounds i8, ptr %.sroa.011.0.pn.i.i, i64 -2 ; 5 uses
  %i.cs = load i16, ptr %.sroa.011.1.i.i, align 2, !tbaa !951 ; 2 uses
  %i.ct = sext i16 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.ct
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !621
  %i.cw = fcmp olt double %i.cl, %i.cv
  br i1 %i.cw, label %.preheader.i.i, label %bb.t, !llvm.loop !973

bb.t:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.014.1.i.i, %.sroa.011.1.i.i
  br i1 %.not.i.i, label %bb.u, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEESG_SG_SG_SH_.exit

bb.u:                                             ; preds = %bb.t
  store i16 %i.cs, ptr %.sroa.014.1.i.i, align 2, !tbaa !951
  store i16 %i.cm, ptr %.sroa.011.1.i.i, align 2, !tbaa !951
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SG_SG_SH_.exit.i, !llvm.loop !974

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEESG_SG_SG_SH_.exit: ; preds = %bb.t
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEElNS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SH_T1_(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2143, i64 noundef %i.bi, ptr %3)
  %i.cx = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.cy = sub i64 %i.cx, %i.a
  %i.cz = ashr exact i64 %i.cy, 1                 ; 2 uses
  %i.da = icmp sgt i64 %i.cz, 16
  br i1 %i.da, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SG_SH_.exit, !llvm.loop !968

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SG_SH_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEESG_SG_SG_SH_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SG_RSH_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SH_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 32
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 2
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %.sroa.0.020.i.idx = phi i64 [ 2, %.lr.ph.i ], [ %.sroa.0.020.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn19.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.020.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.020.i.idx ; 4 uses
  %i.f = load i16, ptr %.sroa.0.020.i.ptr, align 2, !tbaa !951 ; 2 uses
  %i.g = load i16, ptr %0, align 2, !tbaa !951    ; 2 uses
  %i.h = sext i16 %i.f to i64
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !826  ; 4 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load double, ptr %i.j, align 8, !tbaa !621 ; 3 uses
  %i.l = sext i16 %i.g to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.l
  %i.n = load double, ptr %i.m, align 8, !tbaa !621
  %i.o = fcmp olt double %i.k, %i.n
  br i1 %i.o, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ugt i64 %.sroa.0.020.i.idx, 2
  br i1 %i.p, label %bb.d, label %bb.e, !prof !235
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23QuantileAtValueFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_14SimpleTDigestTIdEELb0EEEdEEEJSH_dEEEE7iterateIJNS3_20ConstantVectorReaderISH_EENSM_IdEEEEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISV_EEvRKS1_SU_EUlSU_E_EEvSY_SU_T0_EUlSU_E_EEvSU_:bb.a
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit30

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit30: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit30, %bb.aa
  %.pn.i = phi { ptr, i32 } [ %i.du, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit30 ], [ %i.ds, %bb.aa ]
  invoke void @__cxa_end_catch()
          to label %.loopexit38 unwind label %bb.ag

.loopexit38:                                      ; preds = %bb.u, %bb.af, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit26
  %.merged.i = phi { ptr, i32 } [ %i.dq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit26 ], [ %.pn.i, %bb.af ], [ %eh.lpad-body, %bb.u ]
  resume { ptr, i32 } %.merged.i

bb.ag:                                            ; preds = %bb.af, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit26
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #39
  unreachable

bb.ah:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23QuantileAtValueFunctionINS1_10VectorExecEEES9_dNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_14SimpleTDigestTIdEELb0EEEdEEEJSF_dEEEE7iterateIJNS1_20ConstantVectorReaderISF_EENSK_IdEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit23, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit28
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit37, label %bb.i, !llvm.loop !2739

bb.ai:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.dy = load ptr, ptr %0, align 8, !tbaa !572
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !809
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !810
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23QuantileAtValueFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_14SimpleTDigestTIdEELb0EEEdEEEJSH_dEEEE7iterateIJNS3_20ConstantVectorReaderISH_EENSM_IdEEEEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISV_EEvRKNS0_17SelectivityVectorESU_EUlSU_E_EEvSZ_SU_T0_EUlSU_E_EEvPKmiibSU_(ptr noundef %i.dy, i32 noundef %i.ea, i32 noundef %i.ec, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.1401) align 8 %1)
  br label %.loopexit37

.loopexit37:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23QuantileAtValueFunctionINS1_10VectorExecEEES9_dNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_14SimpleTDigestTIdEELb0EEEdEEEJSF_dEEEE7iterateIJNS1_20ConstantVectorReaderISF_EENSK_IdEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit, %bb.h, %bb.ai
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZN8facebook5velox9functions7TDigestISaIdEE6getCdfEd(ptr noundef nonnull align 8 dereferenceable(81) %0, double noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.519", align 16 ; 5 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.519", align 16 ; 5 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.1403", align 16 ; 6 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.1403", align 16 ; 6 uses
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.1402", align 16 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i32, ptr %i.a, align 4, !tbaa !836  ; 5 uses
  switch i32 %i.b, label %bb.f [
    i32 0, label %.thread
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load double, ptr %i.c, align 8, !tbaa !857 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load double, ptr %i.e, align 8, !tbaa !856 ; 3 uses
  %i.g = fsub double %i.d, %i.f                   ; 2 uses
  %i.h = fcmp olt double %1, %i.f
  br i1 %i.h, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = fcmp ogt double %1, %i.d
  br i1 %i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = fsub double %1, %i.f                     ; 2 uses
  %i.k = fcmp ugt double %i.j, %i.g
  br i1 %i.k, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.l = fdiv double %i.j, %i.g
  br label %.thread

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load double, ptr %i.m, align 8, !tbaa !856 ; 5 uses
  %i.o = fcmp olt double %1, %i.n
  br i1 %i.o, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load double, ptr %i.p, align 8, !tbaa !857 ; 5 uses
  %i.r = fcmp ogt double %1, %i.q
  br i1 %i.r, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !787    ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !787  ; 2 uses
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %_ZNK8facebook5velox9functions7TDigestISaIdEE11totalWeightEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.i
  %.06.i.i = phi double [ %i.x, %.lr.ph.i.i ], [ 0.000000e+00, %bb.h ]
  %.sroa.02.05.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %i.s, %bb.h ] ; 2 uses
  %i.w = load double, ptr %.sroa.02.05.i.i, align 8, !tbaa !621
  %i.x = fadd double %.06.i.i, %i.w               ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 8 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.u
  br i1 %i.z, label %_ZNK8facebook5velox9functions7TDigestISaIdEE11totalWeightEv.exit, label %.lr.ph.i.i, !llvm.loop !855

_ZNK8facebook5velox9functions7TDigestISaIdEE11totalWeightEv.exit: ; preds = %.lr.ph.i.i, %bb.h
  %.0.lcssa.i.i = phi double [ 0.000000e+00, %bb.h ], [ %i.x, %.lr.ph.i.i ] ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !826 ; 5 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !621 ; 6 uses
  %i.ad = fcmp olt double %1, %i.ac
  br i1 %i.ad, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZNK8facebook5velox9functions7TDigestISaIdEE11totalWeightEv.exit
  %i.ae = fcmp ogt double %i.ac, %i.n
  br i1 %i.ae, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.af = fcmp oeq double %1, %i.n
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = fdiv double 5.000000e-01, %.0.lcssa.i.i
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %i.ah = fsub double %1, %i.n
  %i.ai = fsub double %i.ac, %i.n
  %i.aj = fdiv double %i.ah, %i.ai
  %i.ak = load double, ptr %i.s, align 8, !tbaa !621
  %i.al = fmul double %i.ak, 5.000000e-01
  %i.am = fadd double %i.al, -1.000000e+00
  %i.an = fmul double %i.aj, %i.am
  %i.ao = fadd double %i.an, 1.000000e+00
  %i.ap = fdiv double %i.ao, %.0.lcssa.i.i
  br label %.thread

bb.m:                                             ; preds = %_ZNK8facebook5velox9functions7TDigestISaIdEE11totalWeightEv.exit
  %i.aq = fcmp ult double %1, %i.ac
  br i1 %i.aq, label %bb.n, label %bb.q, !prof !56

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33, !noalias !2740
  store double %1, ptr %6, align 16, !tbaa !26, !alias.scope !2743, !noalias !2740
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %i.ac, ptr %i.ar, align 16, !tbaa !26, !alias.scope !2743, !noalias !2740
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 32
  store double %1, ptr %i.as, align 16, !tbaa !26, !alias.scope !2743, !noalias !2740
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 48
  store double %i.ac, ptr %i.at, align 16, !tbaa !26, !alias.scope !2743, !noalias !2740
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull @.str.234, i64 84, i64 43690, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33, !noalias !2740
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions7TDigestISaIdEE6getCdfEdE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr nonnull @.str.234) #38
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !26
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %bb.ax

bb.q:                                             ; preds = %bb.m
  %i.ba = add nsw i32 %i.b, -1                    ; 2 uses
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.bb
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !621 ; 5 uses
  %i.be = fcmp ogt double %1, %i.bd
  br i1 %i.be, label %bb.r, label %.preheader150

.preheader150:                                    ; preds = %bb.q
  %.not160 = icmp sgt i32 %i.b, 1
  br i1 %.not160, label %.lr.ph.preheader, label %.thread148

.lr.ph.preheader:                                 ; preds = %.preheader150
  %wide.trip.count = zext i32 %i.ba to i64
  br label %.lr.ph

bb.r:                                             ; preds = %bb.q
  %i.bf = fcmp ogt double %i.q, %i.bd
  br i1 %i.bf, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.bg = fcmp oeq double %1, %i.q
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bh = fdiv double 5.000000e-01, %.0.lcssa.i.i
  %i.bi = fsub double 1.000000e+00, %i.bh
  br label %.thread

bb.u:                                             ; preds = %bb.s
  %i.bj = fsub double %i.q, %1
  %i.bk = fsub double %i.q, %i.bd
  %i.bl = fdiv double %i.bj, %i.bk
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bb
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !621
  %i.bo = fmul double %i.bn, 5.000000e-01
  %i.bp = fadd double %i.bo, -1.000000e+00
  %i.bq = fmul double %i.bl, %i.bp
  %i.br = fadd double %i.bq, 1.000000e+00
  %i.bs = fdiv double %i.br, %.0.lcssa.i.i
  %i.bt = fsub double 1.000000e+00, %i.bs
  br label %.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge188
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %.pre, %._crit_edge188 ] ; 6 uses
  %.079162 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.en, %._crit_edge188 ] ; 5 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !621 ; 5 uses
  %i.bw = fcmp oeq double %i.bv, %1
  br i1 %i.bw, label %.preheader, label %bb.w

.preheader:                                       ; preds = %.lr.ph
  %i.bx = trunc nuw nsw i64 %indvars.iv to i32
  %i.by = icmp sgt i32 %i.b, %i.bx
  br i1 %i.by, label %.lr.ph165.preheader, label %._crit_edge

.lr.ph165.preheader:                              ; preds = %.preheader
  %wide.trip.count186 = zext nneg i32 %i.b to i64
  br label %.lr.ph165

.lr.ph165:                                        ; preds = %.lr.ph165.preheader, %bb.v
  %indvars.iv183 = phi i64 [ %indvars.iv, %.lr.ph165.preheader ], [ %indvars.iv.next184, %bb.v ] ; 3 uses
  %.082164 = phi double [ 0.000000e+00, %.lr.ph165.preheader ], [ %i.ce, %bb.v ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv183
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !621
  %i.cb = fcmp oeq double %i.ca, %1
  br i1 %i.cb, label %bb.v, label %._crit_edge.loopexit

bb.v:                                             ; preds = %.lr.ph165
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv183
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !621
  %i.ce = fadd double %.082164, %i.cd             ; 2 uses
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 2 uses
  %exitcond187.not = icmp eq i64 %indvars.iv.next184, %wide.trip.count186
  br i1 %exitcond187.not, label %._crit_edge.loopexit, label %.lr.ph165, !llvm.loop !2746

bb.w:                                             ; preds = %.lr.ph
  %i.cf = fcmp ugt double %i.bv, %1
  %.pre = add nuw nsw i64 %indvars.iv, 1          ; 5 uses
  br i1 %i.cf, label %._crit_edge188, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.pre
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !621 ; 3 uses
  %i.ci = fcmp olt double %1, %i.ch
  br i1 %i.ci, label %bb.y, label %._crit_edge188

bb.y:                                             ; preds = %bb.x
  %i.cj = fcmp ogt double %i.ch, %i.bv
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !621 ; 4 uses
  br i1 %i.cj, label %bb.z, label %bb.as

bb.z:                                             ; preds = %bb.y
  %i.cm = fcmp oeq double %i.cl, 1.000000e+00
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.pre
  %i.co = load double, ptr %i.cn, align 8, !tbaa !621 ; 3 uses
  %i.cp = fcmp oeq double %i.co, 1.000000e+00     ; 2 uses
  br i1 %i.cm, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  br i1 %i.cp, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.cq = fadd double %.079162, 1.000000e+00
  br label %bb.ar

bb.ac:                                            ; preds = %bb.z
  br i1 %i.cp, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  br label %bb.ae

bb.ae:                                            ; preds = %bb.aa, %bb.ac, %bb.ad
  %i.cr = phi double [ %i.co, %bb.ac ], [ 1.000000e+00, %bb.ad ], [ %i.co, %bb.aa ]
  %.081 = phi double [ 0.000000e+00, %bb.ac ], [ 0.000000e+00, %bb.ad ], [ 5.000000e-01, %bb.aa ] ; 3 uses
  %.080 = phi double [ 0.000000e+00, %bb.ac ], [ 5.000000e-01, %bb.ad ], [ 0.000000e+00, %bb.aa ] ; 2 uses
  %i.cs = fadd double %i.cl, %i.cr
  %i.ct = fmul double %i.cs, 5.000000e-01         ; 4 uses
  %i.cu = fcmp ule double %i.ct, 1.000000e+00
  br i1 %i.cu, label %bb.af, label %bb.ai, !prof !56

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33, !noalias !2747
  store double %i.ct, ptr %5, align 16, !tbaa !26, !alias.scope !2750, !noalias !2747
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double 1.000000e+00, ptr %i.cv, align 16, !tbaa !26, !alias.scope !2750, !noalias !2747
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 32
  store double %i.ct, ptr %i.cw, align 16, !tbaa !26, !alias.scope !2750, !noalias !2747
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.236, i64 34, i64 2730, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33, !noalias !2747
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions7TDigestISaIdEE6getCdfEdE18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.236) #38
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.cx = landingpad { ptr, i32 }
          cleanup
  %i.cy = load ptr, ptr %8, align 8, !tbaa !7     ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %bb.ah
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !26
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.ax

bb.ai:                                            ; preds = %bb.ae
  %i.dd = fadd double %.081, %.080                ; 3 uses
  %i.de = fcmp ugt double %i.dd, 5.000000e-01
  br i1 %i.de, label %bb.aj, label %bb.am, !prof !56

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33, !noalias !2753
  store double %i.dd, ptr %4, align 16, !tbaa !26, !alias.scope !2756, !noalias !2753
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double 5.000000e-01, ptr %i.df, align 16, !tbaa !26, !alias.scope !2756, !noalias !2753
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 32
  store double %i.dd, ptr %i.dg, align 16, !tbaa !26, !alias.scope !2756, !noalias !2753
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr nonnull @.str.238, i64 50, i64 2730, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33, !noalias !2753
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions7TDigestISaIdEE6getCdfEdE18veloxCheckFailArgs_3, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr nonnull @.str.238) #38
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.dh = landingpad { ptr, i32 }
          cleanup
  %i.di = load ptr, ptr %9, align 8, !tbaa !7     ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %bb.al
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !26
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.ax

bb.am:                                            ; preds = %bb.ai
  %i.dn = fsub double %i.ch, %i.bv                ; 3 uses
  %i.do = fcmp ule double %i.dn, 0.000000e+00
  br i1 %i.do, label %bb.an, label %bb.aq, !prof !56

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33, !noalias !2759
  store double %i.dn, ptr %3, align 16, !tbaa !26, !alias.scope !2762, !noalias !2759
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double 0.000000e+00, ptr %i.dp, align 16, !tbaa !26, !alias.scope !2762, !noalias !2759
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.240, i64 109, i64 170, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33, !noalias !2759
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions7TDigestISaIdEE6getCdfEdE18veloxCheckFailArgs_5, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr nonnull @.str.240) #38
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an
  unreachable

end_hunk_1
