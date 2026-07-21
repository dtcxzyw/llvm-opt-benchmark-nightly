inline.NumInlined: 16782
inline.NumDeleted: 5498
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 114
loop-unroll.NumUnrolled: 144
begin_hunk_0_@_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE25_M_establish_failed_matchESA_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.cast = ptrtoint ptr %1 to i64                 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !392
  %i.c = load ptr, ptr %0, align 8, !tbaa !389    ; 15 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ult i64 %i.g, 3
  br i1 %i.h, label %.lr.ph.i.i.i.i.i.i.i, label %bb.c

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.a
  %i.i = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #44 ; 12 uses
  store i64 %.cast, ptr %i.i, align 8
  %.sroa.8.0..09.i.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %1, ptr %.sroa.8.0..09.i.i.i.i.i.i.i.sroa_idx, align 8
  %.sroa.11.0..09.i.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i8 0, ptr %.sroa.11.0..09.i.i.i.i.i.i.i.sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %.cast, ptr %i.j, align 8
  %.sroa.8.0..09.i.i.i.i.i.i.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %1, ptr %.sroa.8.0..09.i.i.i.i.i.i.i.sroa_idx.1, align 8
  %.sroa.11.0..09.i.i.i.i.i.i.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i8 0, ptr %.sroa.11.0..09.i.i.i.i.i.i.i.sroa_idx.1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i64 %.cast, ptr %i.k, align 8
  %.sroa.8.0..09.i.i.i.i.i.i.i.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store ptr %1, ptr %.sroa.8.0..09.i.i.i.i.i.i.i.sroa_idx.2, align 8
  %.sroa.11.0..09.i.i.i.i.i.i.i.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i8 0, ptr %.sroa.11.0..09.i.i.i.i.i.i.i.sroa_idx.2, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %0, align 8, !tbaa !389
  store ptr %i.l, ptr %i.n, align 8, !tbaa !2347
  store ptr %i.m, ptr %i.a, align 8, !tbaa !392
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE14_M_fill_assignEmRKSC_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #42
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE14_M_fill_assignEmRKSC_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2347 ; 5 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %i.e
  %i.s = sdiv exact i64 %i.r, 24                  ; 2 uses
  %i.t = icmp ult i64 %i.s, 3
  br i1 %i.t, label %bb.d, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit.i

bb.d:                                             ; preds = %bb.c
  %.not5.i.i.i.i.i = icmp eq ptr %i.c, %i.p
  br i1 %.not5.i.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i ], [ %i.c, %bb.d ] ; 4 uses
  store i64 %.cast, ptr %.06.i.i.i.i.i, align 8, !tbaa !119
  %i.u = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  store i64 %.cast, ptr %i.u, align 8, !tbaa !119
  %i.v = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  store i8 0, ptr %i.v, align 8, !tbaa !2338
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i11.i = icmp eq ptr %i.w, %i.p
  br i1 %.not.i.i.i.i11.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2348

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %i.x = sub nuw nsw i64 3, %i.s
  br label %.lr.ph.i.i.i.i12.i.prol

.lr.ph.i.i.i.i12.i.prol:                          ; preds = %.lr.ph.i.i.i.i12.i.prol, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit.i
  %.09.i.i.i.i.i.prol = phi ptr [ %i.y, %.lr.ph.i.i.i.i12.i.prol ], [ %i.p, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit.i ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i12.i.prol ], [ 0, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit.i ]
  store i64 %.cast, ptr %.09.i.i.i.i.i.prol, align 8
  %.sroa.8.0..09.i.i.i.i.i.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.prol, i64 8
  store ptr %1, ptr %.sroa.8.0..09.i.i.i.i.i.sroa_idx.prol, align 8
  %.sroa.11.0..09.i.i.i.i.i.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.prol, i64 16
  store i8 0, ptr %.sroa.11.0..09.i.i.i.i.i.sroa_idx.prol, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.prol, i64 24 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %i.x
  br i1 %prol.iter.cmp.not, label %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_SC_ET_SE_T0_RKT1_RSaIT2_E.exit.i, label %.lr.ph.i.i.i.i12.i.prol, !llvm.loop !2349

_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_SC_ET_SE_T0_RKT1_RSaIT2_E.exit.i: ; preds = %.lr.ph.i.i.i.i12.i.prol
  store ptr %i.y, ptr %i.o, align 8, !tbaa !2347
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE14_M_fill_assignEmRKSC_.exit

_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit.i: ; preds = %bb.c
  store i64 %.cast, ptr %i.c, align 8, !tbaa !119
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.cast, ptr %i.z, align 8, !tbaa !119
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 0, ptr %i.aa, align 8, !tbaa !2338
  %.06.i.i.i.i16.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.cast, ptr %.06.i.i.i.i16.i.ptr.1, align 8, !tbaa !119
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.cast, ptr %i.ab, align 8, !tbaa !119
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i8 0, ptr %i.ac, align 8, !tbaa !2338
  %.06.i.i.i.i16.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 %.cast, ptr %.06.i.i.i.i16.i.ptr.2, align 8, !tbaa !119
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.cast, ptr %i.ad, align 8, !tbaa !119
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i8 0, ptr %i.ae, align 8, !tbaa !2338
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %i.af
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE14_M_fill_assignEmRKSC_.exit, label %_ZSt8_DestroyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESC_EvT_SE_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESC_EvT_SE_RSaIT0_E.exit.i.i: ; preds = %_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit.i
  store ptr %i.af, ptr %i.o, align 8, !tbaa !2347
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE14_M_fill_assignEmRKSC_.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE14_M_fill_assignEmRKSC_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.b, %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_SC_ET_SE_T0_RKT1_RSaIT2_E.exit.i, %_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit.i, %_ZSt8_DestroyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESC_EvT_SE_RSaIT0_E.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE14_M_fill_assignEmRKSC_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(17) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !392
  %i.c = load ptr, ptr %0, align 8, !tbaa !389    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %1, 384307168202282325
  br i1 %i.i, label %bb.c, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #43
  unreachable

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i: ; preds = %bb.b
  %i.j = mul nuw nsw i64 %1, 24
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #44 ; 4 uses
  %xtraiter33 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod34.not = icmp eq i64 %xtraiter33, 0
  br i1 %lcmp.mod34.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i, %.lr.ph.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.prol = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i ] ; 2 uses
  %.068.i.i.i.i.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ], [ %1, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i ]
  %prol.iter35 = phi i64 [ %prol.iter35.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.l = add i64 %.068.i.i.i.i.i.i.prol, -1       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter35.next = add i64 %prol.iter35, 1     ; 2 uses
  %prol.iter35.cmp.not = icmp eq i64 %prol.iter35.next, %xtraiter33
  br i1 %prol.iter35.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !2350

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i ], [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ]
  %.09.i.i.i.i.i.i.unr = phi ptr [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i ], [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.i.unr = phi i64 [ %1, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i ], [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.n = icmp ult i64 %1, 4
  br i1 %i.n, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSC_RKSD_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.068.i.i.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %.068.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.r = add i64 %.068.i.i.i.i.i.i, -4            ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.3, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSC_RKSD_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2351

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSC_RKSD_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.s, %.lr.ph.i.i.i.i.i.i ]
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %0, align 8, !tbaa !389
  store ptr %.lcssa, ptr %i.u, align 8, !tbaa !2347
  store ptr %i.t, ptr %i.a, align 8, !tbaa !392
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSC_RKSD_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #42
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !2347 ; 7 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.e
  %i.z = sdiv exact i64 %i.y, 24                  ; 3 uses
  %i.aa = icmp ugt i64 %1, %i.z
  br i1 %i.aa, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not5.i.i.i.i = icmp eq ptr %i.c, %i.w
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i.i.i.i = load i8, ptr %i.ac, align 8, !tbaa !2338, !range !142
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i ], [ %i.ah, %bb.g ] ; 4 uses
  %i.ad = load i64, ptr %2, align 8, !tbaa !119
  store i64 %i.ad, ptr %.06.i.i.i.i, align 8, !tbaa !119
  %i.ae = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.af = load i64, ptr %i.ab, align 8, !tbaa !119
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !119
  %i.ag = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 16
  store i8 %.pre.i.i.i.i, ptr %i.ag, align 8, !tbaa !2338
  %i.ah = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.ah, %i.w
  br i1 %.not.i.i.i.i11, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit, label %bb.g, !llvm.loop !2348

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit: ; preds = %bb.g, %bb.f
  %3 = sub i64 %1, %i.z                           ; 4 uses
  %.not7.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not7.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_SC_ET_SE_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12.preheader

.lr.ph.i.i.i.i12.preheader:                       ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit
  %xtraiter30 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod31.not = icmp eq i64 %xtraiter30, 0
  br i1 %lcmp.mod31.not, label %.lr.ph.i.i.i.i12.prol.loopexit, label %.lr.ph.i.i.i.i12.prol

.lr.ph.i.i.i.i12.prol:                            ; preds = %.lr.ph.i.i.i.i12.preheader, %.lr.ph.i.i.i.i12.prol
  %.09.i.i.i.i.prol = phi ptr [ %i.aj, %.lr.ph.i.i.i.i12.prol ], [ %i.w, %.lr.ph.i.i.i.i12.preheader ] ; 2 uses
  %.068.i.i.i.i.prol = phi i64 [ %i.ai, %.lr.ph.i.i.i.i12.prol ], [ %3, %.lr.ph.i.i.i.i12.preheader ]
  %prol.iter32 = phi i64 [ %prol.iter32.next, %.lr.ph.i.i.i.i12.prol ], [ 0, %.lr.ph.i.i.i.i12.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ai = add i64 %.068.i.i.i.i.prol, -1          ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter32.next = add i64 %prol.iter32, 1     ; 2 uses
  %prol.iter32.cmp.not = icmp eq i64 %prol.iter32.next, %xtraiter30
  br i1 %prol.iter32.cmp.not, label %.lr.ph.i.i.i.i12.prol.loopexit, label %.lr.ph.i.i.i.i12.prol, !llvm.loop !2352

.lr.ph.i.i.i.i12.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i12.prol, %.lr.ph.i.i.i.i12.preheader
  %.lcssa29.unr = phi ptr [ poison, %.lr.ph.i.i.i.i12.preheader ], [ %i.aj, %.lr.ph.i.i.i.i12.prol ]
  %.09.i.i.i.i.unr = phi ptr [ %i.w, %.lr.ph.i.i.i.i12.preheader ], [ %i.aj, %.lr.ph.i.i.i.i12.prol ]
  %.068.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i12.preheader ], [ %i.ai, %.lr.ph.i.i.i.i12.prol ]
  %i.ak = sub i64 %i.z, %1
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_SC_ET_SE_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %.lr.ph.i.i.i.i12.prol.loopexit, %.lr.ph.i.i.i.i12
  %.09.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i12 ], [ %.09.i.i.i.i.unr, %.lr.ph.i.i.i.i12.prol.loopexit ] ; 5 uses
  %.068.i.i.i.i = phi i64 [ %i.ap, %.lr.ph.i.i.i.i12 ], [ %.068.i.i.i.i.unr, %.lr.ph.i.i.i.i12.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ap = add i64 %.068.i.i.i.i, -4               ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i13.3 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i.i13.3, label %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_SC_ET_SE_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12, !llvm.loop !2351

_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_SC_ET_SE_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i12.prol.loopexit, %.lr.ph.i.i.i.i12, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.w, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit ], [ %.lcssa29.unr, %.lr.ph.i.i.i.i12.prol.loopexit ], [ %i.aq, %.lr.ph.i.i.i.i12 ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.v, align 8, !tbaa !2347
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.ar = icmp eq i64 %1, 0
  br i1 %i.ar, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit, label %.lr.ph.i.i.i.i14

.lr.ph.i.i.i.i14:                                 ; preds = %bb.h
  %.idx.i.i = mul nuw nsw i64 %1, 24              ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i.i.i.i15 = load i8, ptr %i.au, align 8, !tbaa !2338, !range !142 ; 5 uses
  %i.av = add nsw i64 %.idx.i.i, -24              ; 2 uses
  %i.aw = udiv i64 %i.av, 24
  %i.ax = add nuw nsw i64 %i.aw, 1
  %xtraiter = and i64 %i.ax, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i.i14, %.prol.preheader
  %.06.i.i.i.i16.prol = phi ptr [ %i.bc, %.prol.preheader ], [ %i.c, %.lr.ph.i.i.i.i14 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i.i.i.i14 ]
  %i.ay = load i64, ptr %2, align 8, !tbaa !119
  store i64 %i.ay, ptr %.06.i.i.i.i16.prol, align 8, !tbaa !119
  %i.az = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16.prol, i64 8
  %i.ba = load i64, ptr %i.at, align 8, !tbaa !119
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !119
  %i.bb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16.prol, i64 16
  store i8 %.pre.i.i.i.i15, ptr %i.bb, align 8, !tbaa !2338
  %i.bc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16.prol, i64 24 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !2353

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i.i.i14
  %.06.i.i.i.i16.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i14 ], [ %i.bc, %.prol.preheader ]
  %i.bd = icmp ult i64 %i.av, 72
  br i1 %i.bd, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit, label %.lr.ph.i.i.i.i14.new

.lr.ph.i.i.i.i14.new:                             ; preds = %.prol.loopexit, %.lr.ph.i.i.i.i14.new
  %.06.i.i.i.i16 = phi ptr [ %i.bx, %.lr.ph.i.i.i.i14.new ], [ %.06.i.i.i.i16.unr, %.prol.loopexit ] ; 13 uses
  %i.be = load i64, ptr %2, align 8, !tbaa !119
  store i64 %i.be, ptr %.06.i.i.i.i16, align 8, !tbaa !119
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 8
  %i.bg = load i64, ptr %i.at, align 8, !tbaa !119
  store i64 %i.bg, ptr %i.bf, align 8, !tbaa !119
  %i.bh = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 16
  store i8 %.pre.i.i.i.i15, ptr %i.bh, align 8, !tbaa !2338
  %i.bi = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 24
  %i.bj = load i64, ptr %2, align 8, !tbaa !119
  store i64 %i.bj, ptr %i.bi, align 8, !tbaa !119
  %i.bk = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 32
  %i.bl = load i64, ptr %i.at, align 8, !tbaa !119
  store i64 %i.bl, ptr %i.bk, align 8, !tbaa !119
  %i.bm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 40
  store i8 %.pre.i.i.i.i15, ptr %i.bm, align 8, !tbaa !2338
  %i.bn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 48
  %i.bo = load i64, ptr %2, align 8, !tbaa !119
  store i64 %i.bo, ptr %i.bn, align 8, !tbaa !119
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 56
  %i.bq = load i64, ptr %i.at, align 8, !tbaa !119
  store i64 %i.bq, ptr %i.bp, align 8, !tbaa !119
  %i.br = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 64
  store i8 %.pre.i.i.i.i15, ptr %i.br, align 8, !tbaa !2338
  %i.bs = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 72
  %i.bt = load i64, ptr %2, align 8, !tbaa !119
  store i64 %i.bt, ptr %i.bs, align 8, !tbaa !119
  %i.bu = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 80
  %i.bv = load i64, ptr %i.at, align 8, !tbaa !119
  store i64 %i.bv, ptr %i.bu, align 8, !tbaa !119
  %i.bw = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 88
  store i8 %.pre.i.i.i.i15, ptr %i.bw, align 8, !tbaa !2338
  %i.bx = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 96 ; 2 uses
  %.not.i.i.i.i17.3 = icmp eq ptr %i.bx, %i.as
  br i1 %.not.i.i.i.i17.3, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit, label %.lr.ph.i.i.i.i14.new, !llvm.loop !2348

_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit: ; preds = %.prol.loopexit, %.lr.ph.i.i.i.i14.new, %bb.h
  %.0.i.i = phi ptr [ %i.c, %bb.h ], [ %i.as, %.lr.ph.i.i.i.i14.new ], [ %i.as, %.prol.loopexit ] ; 2 uses
  %.not.i = icmp eq ptr %i.w, %.0.i.i
  br i1 %.not.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %_ZSt8_DestroyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESC_EvT_SE_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESC_EvT_SE_RSaIT0_E.exit.i: ; preds = %_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit
  store ptr %.0.i.i, ptr %i.v, align 8, !tbaa !2347
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESC_EvT_SE_RSaIT0_E.exit.i, %_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit, %bb.d, %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSC_RKSD_.exit, %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_SC_ET_SE_T0_RKT1_RSaIT2_E.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2319   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2320 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.k, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !389  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !392
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #42
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2321

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !2319
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.l = phi ptr [ %.pr, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.l, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESaISH_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2322
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #42
  br label %_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESaISH_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESaISH_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSH_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::vector.351", align 8   ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load i64, ptr %i.c, align 8, !tbaa !2354 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2355, !nonnull !143, !align !1133 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.d, ptr %i.a, align 8, !tbaa !112
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2320 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2322
  %.not.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.h, align 8, !tbaa !2356
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2347 ; 2 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !389  ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = sdiv exact i64 %i.q, 24
  %i.s = icmp ugt i64 %i.r, 384307168202282325
  br i1 %i.s, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !111

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #43
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #44
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, %bb.b
  %i.u = phi ptr [ null, %bb.b ], [ %i.t, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.u, ptr %i.k, align 8, !tbaa !389
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !2347
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.q
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.w, ptr %i.x, align 8, !tbaa !392
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !2337 ; 2 uses
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !2337 ; 2 uses
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, %i.z
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEEC2IRlRKSF_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISM_SN_EEEbE4typeELb1EEEOSM_OSN_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EED2Ev:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1113match_resultsIPKcSaINS_9sub_matchIS2_EEEE25_M_establish_failed_matchES2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !404
  %i.c = load ptr, ptr %0, align 8, !tbaa !401    ; 15 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ult i64 %i.g, 3
  br i1 %i.h, label %.lr.ph.i.i.i.i.i.i.i, label %bb.c

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.a
  %i.i = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #44 ; 12 uses
  store ptr %1, ptr %i.i, align 8
  %.sroa.8.0..09.i.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %1, ptr %.sroa.8.0..09.i.i.i.i.i.i.i.sroa_idx, align 8
  %.sroa.11.0..09.i.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i8 0, ptr %.sroa.11.0..09.i.i.i.i.i.i.i.sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %1, ptr %i.j, align 8
  %.sroa.8.0..09.i.i.i.i.i.i.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %1, ptr %.sroa.8.0..09.i.i.i.i.i.i.i.sroa_idx.1, align 8
  %.sroa.11.0..09.i.i.i.i.i.i.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i8 0, ptr %.sroa.11.0..09.i.i.i.i.i.i.i.sroa_idx.1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr %1, ptr %i.k, align 8
  %.sroa.8.0..09.i.i.i.i.i.i.i.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store ptr %1, ptr %.sroa.8.0..09.i.i.i.i.i.i.i.sroa_idx.2, align 8
  %.sroa.11.0..09.i.i.i.i.i.i.i.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i8 0, ptr %.sroa.11.0..09.i.i.i.i.i.i.i.sroa_idx.2, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %0, align 8, !tbaa !401
  store ptr %i.l, ptr %i.n, align 8, !tbaa !2468
  store ptr %i.m, ptr %i.a, align 8, !tbaa !404
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE14_M_fill_assignEmRKS4_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #42
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE14_M_fill_assignEmRKS4_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2468 ; 5 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %i.e
  %i.s = sdiv exact i64 %i.r, 24                  ; 2 uses
  %i.t = icmp ult i64 %i.s, 3
  br i1 %i.t, label %bb.d, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIPKcEEmS4_ET_S6_T0_RKT1_.exit.i

bb.d:                                             ; preds = %bb.c
  %.not5.i.i.i.i.i = icmp eq ptr %i.c, %i.p
  br i1 %.not5.i.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i ], [ %i.c, %bb.d ] ; 4 uses
  store ptr %1, ptr %.06.i.i.i.i.i, align 8, !tbaa !2461
  %i.u = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  store ptr %1, ptr %i.u, align 8, !tbaa !2460
  %i.v = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  store i8 0, ptr %i.v, align 8, !tbaa !2457
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i11.i = icmp eq ptr %i.w, %i.p
  br i1 %.not.i.i.i.i11.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2469

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %i.x = sub nuw nsw i64 3, %i.s
  br label %.lr.ph.i.i.i.i12.i.prol

.lr.ph.i.i.i.i12.i.prol:                          ; preds = %.lr.ph.i.i.i.i12.i.prol, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit.i
  %.09.i.i.i.i.i.prol = phi ptr [ %i.y, %.lr.ph.i.i.i.i12.i.prol ], [ %i.p, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit.i ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i12.i.prol ], [ 0, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit.i ]
  store ptr %1, ptr %.09.i.i.i.i.i.prol, align 8
  %.sroa.8.0..09.i.i.i.i.i.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.prol, i64 8
  store ptr %1, ptr %.sroa.8.0..09.i.i.i.i.i.sroa_idx.prol, align 8
  %.sroa.11.0..09.i.i.i.i.i.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.prol, i64 16
  store i8 0, ptr %.sroa.11.0..09.i.i.i.i.i.sroa_idx.prol, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.prol, i64 24 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %i.x
  br i1 %prol.iter.cmp.not, label %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit.i, label %.lr.ph.i.i.i.i12.i.prol, !llvm.loop !2470

_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit.i: ; preds = %.lr.ph.i.i.i.i12.i.prol
  store ptr %i.y, ptr %i.o, align 8, !tbaa !2468
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE14_M_fill_assignEmRKS4_.exit

_ZSt6fill_nIPNSt7__cxx119sub_matchIPKcEEmS4_ET_S6_T0_RKT1_.exit.i: ; preds = %bb.c
  store ptr %1, ptr %i.c, align 8, !tbaa !2461
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %1, ptr %i.z, align 8, !tbaa !2460
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 0, ptr %i.aa, align 8, !tbaa !2457
  %.06.i.i.i.i18.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %1, ptr %.06.i.i.i.i18.i.ptr.1, align 8, !tbaa !2461
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %1, ptr %i.ab, align 8, !tbaa !2460
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i8 0, ptr %i.ac, align 8, !tbaa !2457
  %.06.i.i.i.i18.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %1, ptr %.06.i.i.i.i18.i.ptr.2, align 8, !tbaa !2461
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %1, ptr %i.ad, align 8, !tbaa !2460
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i8 0, ptr %i.ae, align 8, !tbaa !2457
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %i.af
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE14_M_fill_assignEmRKS4_.exit, label %_ZSt8_DestroyIPNSt7__cxx119sub_matchIPKcEES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx119sub_matchIPKcEES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt6fill_nIPNSt7__cxx119sub_matchIPKcEEmS4_ET_S6_T0_RKT1_.exit.i
  store ptr %i.af, ptr %i.o, align 8, !tbaa !2468
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE14_M_fill_assignEmRKS4_.exit

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE14_M_fill_assignEmRKS4_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.b, %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit.i, %_ZSt6fill_nIPNSt7__cxx119sub_matchIPKcEEmS4_ET_S6_T0_RKT1_.exit.i, %_ZSt8_DestroyIPNSt7__cxx119sub_matchIPKcEES4_EvT_S6_RSaIT0_E.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE14_M_fill_assignEmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(17) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !404
  %i.c = load ptr, ptr %0, align 8, !tbaa !401    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %1, 384307168202282325
  br i1 %i.i, label %bb.c, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #43
  unreachable

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i: ; preds = %bb.b
  %i.j = mul nuw nsw i64 %1, 24
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #44 ; 4 uses
  %xtraiter35 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod36.not = icmp eq i64 %xtraiter35, 0
  br i1 %lcmp.mod36.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i, %.lr.ph.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.prol = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i ] ; 2 uses
  %.068.i.i.i.i.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ], [ %1, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i ]
  %prol.iter37 = phi i64 [ %prol.iter37.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.l = add i64 %.068.i.i.i.i.i.i.prol, -1       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter37.next = add i64 %prol.iter37, 1     ; 2 uses
  %prol.iter37.cmp.not = icmp eq i64 %prol.iter37.next, %xtraiter35
  br i1 %prol.iter37.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !2471

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i ], [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ]
  %.09.i.i.i.i.i.i.unr = phi ptr [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i ], [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.i.unr = phi i64 [ %1, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS5_.exit.i ], [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.n = icmp ult i64 %1, 4
  br i1 %i.n, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS4_RKS5_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.068.i.i.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %.068.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.r = add i64 %.068.i.i.i.i.i.i, -4            ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.3, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS4_RKS5_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2472

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS4_RKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.s, %.lr.ph.i.i.i.i.i.i ]
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %0, align 8, !tbaa !401
  store ptr %.lcssa, ptr %i.u, align 8, !tbaa !2468
  store ptr %i.t, ptr %i.a, align 8, !tbaa !404
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS4_RKS5_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #42
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !2468 ; 7 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.e
  %i.z = sdiv exact i64 %i.y, 24                  ; 3 uses
  %i.aa = icmp ugt i64 %1, %i.z
  br i1 %i.aa, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not5.i.i.i.i = icmp eq ptr %i.c, %i.w
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load <2 x ptr>, ptr %2, align 8, !tbaa !119
  %.pre8.i.i.i.i = load i8, ptr %i.ab, align 8, !tbaa !2457, !range !142
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i ], [ %i.ae, %bb.g ] ; 3 uses
  store <2 x ptr> %i.ac, ptr %.06.i.i.i.i, align 8, !tbaa !119
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 16
  store i8 %.pre8.i.i.i.i, ptr %i.ad, align 8, !tbaa !2457
  %i.ae = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.ae, %i.w
  br i1 %.not.i.i.i.i11, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit, label %bb.g, !llvm.loop !2469

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit: ; preds = %bb.g, %bb.f
  %3 = sub i64 %1, %i.z                           ; 4 uses
  %.not7.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not7.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12.preheader

.lr.ph.i.i.i.i12.preheader:                       ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit
  %xtraiter32 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod33.not = icmp eq i64 %xtraiter32, 0
  br i1 %lcmp.mod33.not, label %.lr.ph.i.i.i.i12.prol.loopexit, label %.lr.ph.i.i.i.i12.prol

.lr.ph.i.i.i.i12.prol:                            ; preds = %.lr.ph.i.i.i.i12.preheader, %.lr.ph.i.i.i.i12.prol
  %.09.i.i.i.i.prol = phi ptr [ %i.ag, %.lr.ph.i.i.i.i12.prol ], [ %i.w, %.lr.ph.i.i.i.i12.preheader ] ; 2 uses
  %.068.i.i.i.i.prol = phi i64 [ %i.af, %.lr.ph.i.i.i.i12.prol ], [ %3, %.lr.ph.i.i.i.i12.preheader ]
  %prol.iter34 = phi i64 [ %prol.iter34.next, %.lr.ph.i.i.i.i12.prol ], [ 0, %.lr.ph.i.i.i.i12.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.af = add i64 %.068.i.i.i.i.prol, -1          ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter34.next = add i64 %prol.iter34, 1     ; 2 uses
  %prol.iter34.cmp.not = icmp eq i64 %prol.iter34.next, %xtraiter32
  br i1 %prol.iter34.cmp.not, label %.lr.ph.i.i.i.i12.prol.loopexit, label %.lr.ph.i.i.i.i12.prol, !llvm.loop !2473

.lr.ph.i.i.i.i12.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i12.prol, %.lr.ph.i.i.i.i12.preheader
  %.lcssa31.unr = phi ptr [ poison, %.lr.ph.i.i.i.i12.preheader ], [ %i.ag, %.lr.ph.i.i.i.i12.prol ]
  %.09.i.i.i.i.unr = phi ptr [ %i.w, %.lr.ph.i.i.i.i12.preheader ], [ %i.ag, %.lr.ph.i.i.i.i12.prol ]
  %.068.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i12.preheader ], [ %i.af, %.lr.ph.i.i.i.i12.prol ]
  %i.ah = sub i64 %i.z, %1
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %.lr.ph.i.i.i.i12.prol.loopexit, %.lr.ph.i.i.i.i12
  %.09.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i12 ], [ %.09.i.i.i.i.unr, %.lr.ph.i.i.i.i12.prol.loopexit ] ; 5 uses
  %.068.i.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i.i12 ], [ %.068.i.i.i.i.unr, %.lr.ph.i.i.i.i12.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.am = add i64 %.068.i.i.i.i, -4               ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i13.3 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i13.3, label %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12, !llvm.loop !2472

_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i12.prol.loopexit, %.lr.ph.i.i.i.i12, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.w, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit ], [ %.lcssa31.unr, %.lr.ph.i.i.i.i12.prol.loopexit ], [ %i.an, %.lr.ph.i.i.i.i12 ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.v, align 8, !tbaa !2468
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.ao = icmp eq i64 %1, 0
  br i1 %i.ao, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIPKcEEmS4_ET_S6_T0_RKT1_.exit, label %.lr.ph.i.i.i.i14

.lr.ph.i.i.i.i14:                                 ; preds = %bb.h
  %.idx.i.i = mul nuw nsw i64 %1, 24              ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ar = load <2 x ptr>, ptr %2, align 8, !tbaa !119 ; 9 uses
  %.pre8.i.i.i.i17 = load i8, ptr %i.aq, align 8, !tbaa !2457, !range !142 ; 9 uses
  %i.as = add nsw i64 %.idx.i.i, -24              ; 2 uses
  %i.at = udiv i64 %i.as, 24
  %i.au = add nuw nsw i64 %i.at, 1
  %xtraiter = and i64 %i.au, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i.i14, %.prol.preheader
  %.06.i.i.i.i18.prol = phi ptr [ %i.aw, %.prol.preheader ], [ %i.c, %.lr.ph.i.i.i.i14 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i.i.i.i14 ]
  store <2 x ptr> %i.ar, ptr %.06.i.i.i.i18.prol, align 8, !tbaa !119
  %i.av = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18.prol, i64 16
  store i8 %.pre8.i.i.i.i17, ptr %i.av, align 8, !tbaa !2457
  %i.aw = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18.prol, i64 24 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !2474

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i.i.i14
  %.06.i.i.i.i18.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i14 ], [ %i.aw, %.prol.preheader ]
  %i.ax = icmp ult i64 %i.as, 168
  br i1 %i.ax, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIPKcEEmS4_ET_S6_T0_RKT1_.exit, label %.lr.ph.i.i.i.i14.new

.lr.ph.i.i.i.i14.new:                             ; preds = %.prol.loopexit, %.lr.ph.i.i.i.i14.new
  %.06.i.i.i.i18 = phi ptr [ %i.bn, %.lr.ph.i.i.i.i14.new ], [ %.06.i.i.i.i18.unr, %.prol.loopexit ] ; 17 uses
  store <2 x ptr> %i.ar, ptr %.06.i.i.i.i18, align 8, !tbaa !119
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 16
  store i8 %.pre8.i.i.i.i17, ptr %i.ay, align 8, !tbaa !2457
  %i.az = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 24
  store <2 x ptr> %i.ar, ptr %i.az, align 8, !tbaa !119
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 40
  store i8 %.pre8.i.i.i.i17, ptr %i.ba, align 8, !tbaa !2457
  %i.bb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 48
  store <2 x ptr> %i.ar, ptr %i.bb, align 8, !tbaa !119
  %i.bc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 64
  store i8 %.pre8.i.i.i.i17, ptr %i.bc, align 8, !tbaa !2457
  %i.bd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 72
  store <2 x ptr> %i.ar, ptr %i.bd, align 8, !tbaa !119
  %i.be = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 88
  store i8 %.pre8.i.i.i.i17, ptr %i.be, align 8, !tbaa !2457
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 96
  store <2 x ptr> %i.ar, ptr %i.bf, align 8, !tbaa !119
  %i.bg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 112
  store i8 %.pre8.i.i.i.i17, ptr %i.bg, align 8, !tbaa !2457
  %i.bh = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 120
  store <2 x ptr> %i.ar, ptr %i.bh, align 8, !tbaa !119
  %i.bi = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 136
  store i8 %.pre8.i.i.i.i17, ptr %i.bi, align 8, !tbaa !2457
  %i.bj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 144
  store <2 x ptr> %i.ar, ptr %i.bj, align 8, !tbaa !119
  %i.bk = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 160
  store i8 %.pre8.i.i.i.i17, ptr %i.bk, align 8, !tbaa !2457
  %i.bl = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 168
  store <2 x ptr> %i.ar, ptr %i.bl, align 8, !tbaa !119
  %i.bm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 184
  store i8 %.pre8.i.i.i.i17, ptr %i.bm, align 8, !tbaa !2457
  %i.bn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 192 ; 2 uses
  %.not.i.i.i.i19.7 = icmp eq ptr %i.bn, %i.ap
  br i1 %.not.i.i.i.i19.7, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIPKcEEmS4_ET_S6_T0_RKT1_.exit, label %.lr.ph.i.i.i.i14.new, !llvm.loop !2469

_ZSt6fill_nIPNSt7__cxx119sub_matchIPKcEEmS4_ET_S6_T0_RKT1_.exit: ; preds = %.prol.loopexit, %.lr.ph.i.i.i.i14.new, %bb.h
  %.0.i.i = phi ptr [ %i.c, %bb.h ], [ %i.ap, %.lr.ph.i.i.i.i14.new ], [ %i.ap, %.prol.loopexit ] ; 2 uses
  %.not.i = icmp eq ptr %i.w, %.0.i.i
  br i1 %.not.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit, label %_ZSt8_DestroyIPNSt7__cxx119sub_matchIPKcEES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx119sub_matchIPKcEES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt6fill_nIPNSt7__cxx119sub_matchIPKcEEmS4_ET_S6_T0_RKT1_.exit
  store ptr %.0.i.i, ptr %i.v, align 8, !tbaa !2468
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx119sub_matchIPKcEES4_EvT_S6_RSaIT0_E.exit.i, %_ZSt6fill_nIPNSt7__cxx119sub_matchIPKcEEmS4_ET_S6_T0_RKT1_.exit, %bb.d, %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2EmRKS4_RKS5_.exit, %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIPKcEESaIS5_EEESaIS8_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2435   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2436 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.k, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !401  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !404
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #42
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2437

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !2435
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.l = phi ptr [ %.pr, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.l, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEESaIS9_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2438
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #42
  br label %_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEESaIS9_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE16_M_main_dispatchENS9_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::vector.382", align 8   ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load i64, ptr %i.c, align 8, !tbaa !2475 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2476, !nonnull !143, !align !1133 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.d, ptr %i.a, align 8, !tbaa !112
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2436 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2438
  %.not.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.h, align 8, !tbaa !2477
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2468 ; 2 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !401  ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = sdiv exact i64 %i.q, 24
  %i.s = icmp ugt i64 %i.r, 384307168202282325
  br i1 %i.s, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !111

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #43
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #44
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, %bb.b
  %i.u = phi ptr [ null, %bb.b ], [ %i.t, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.u, ptr %i.k, align 8, !tbaa !401
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !2468
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.q
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.w, ptr %i.x, align 8, !tbaa !404
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !2456 ; 2 uses
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !2456 ; 2 uses
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, %i.z
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS5_EEEC2IRlRKS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.u, %bb.d ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.y, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i.i.i, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
end_hunk_1
