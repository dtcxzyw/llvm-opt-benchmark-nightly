inline.NumInlined: 2498
inline.NumDeleted: 992
begin_hunk_0_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN14arrow_vendored4date9time_zoneESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_:bb.a

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i54: ; preds = %bb.e
  %i.af = load ptr, ptr %3, align 8, !tbaa !30
  %i.ag = load ptr, ptr %2, align 8, !tbaa !30
  %i.ah = tail call i32 @memcmp(ptr noundef %i.ag, ptr noundef %i.af, i64 noundef %.sroa.speculated.i.i.i.i53) #30 ; 2 uses
  %.not.i.i.i.i55 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i.i55, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i57, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN14arrow_vendored4date9time_zoneESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit61

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i57: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i54, %bb.e
  %i.ai = sub i64 %i.d, %i.l
  %spec.select7.i.i.i.i.i58 = tail call i64 @llvm.smax.i64(i64 %i.ai, i64 -2147483648)
  %.08.i.i.i.i.i59 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i58, i64 2147483647)
  %.0.i6.i.i.i.i60 = trunc nsw i64 %.08.i.i.i.i.i59 to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN14arrow_vendored4date9time_zoneESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit61

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN14arrow_vendored4date9time_zoneESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit61: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i54, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i57
  %.0.i.i.i.i56 = phi i32 [ %i.ah, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i54 ], [ %.0.i6.i.i.i.i60, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i57 ]
  %i.aj = icmp slt i32 %.0.i.i.i.i56, 0
  %.66 = select i1 %i.aj, ptr %3, ptr %2
  br label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN14arrow_vendored4date9time_zoneESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit61, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN14arrow_vendored4date9time_zoneESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit52, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN14arrow_vendored4date9time_zoneESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit43, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN14arrow_vendored4date9time_zoneESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit34
  %.sink = phi ptr [ %2, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN14arrow_vendored4date9time_zoneESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit34 ], [ %1, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN14arrow_vendored4date9time_zoneESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit52 ], [ %.66, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN14arrow_vendored4date9time_zoneESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit61 ], [ %., %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN14arrow_vendored4date9time_zoneESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit43 ]
  tail call void @_ZSt4swapIN14arrow_vendored4date9time_zoneEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %.sink) #30
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt4swapIN14arrow_vendored4date9time_zoneEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow_vendored::date::time_zone", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !38
  %i.b = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !39   ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZN14arrow_vendored4date9time_zoneC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %2, align 8, !tbaa !30
  %i.i = load i64, ptr %i.c, align 8, !tbaa !31
  store i64 %i.i, ptr %i.a, align 8, !tbaa !31
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !39
  br label %_ZN14arrow_vendored4date9time_zoneC2EOS1_.exit

_ZN14arrow_vendored4date9time_zoneC2EOS1_.exit:   ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = phi i64 [ %i.f, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.l, align 8, !tbaa !39
  store ptr %i.c, ptr %0, align 8, !tbaa !30
  store i64 0, ptr %i.k, align 8, !tbaa !39
  store i8 0, ptr %i.c, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = load <2 x ptr>, ptr %i.n, align 8, !tbaa !73
  store <2 x ptr> %i.o, ptr %i.m, align 8, !tbaa !73
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !48
  store ptr %i.r, ptr %i.p, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.v = load <2 x ptr>, ptr %i.t, align 8, !tbaa !91
  store <2 x ptr> %i.v, ptr %i.s, align 8, !tbaa !91
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !54
  store ptr %i.y, ptr %i.w, align 8, !tbaa !54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !43
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !43
  store ptr null, ptr %i.aa, align 8, !tbaa !43
  %i.ac = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN14arrow_vendored4date9time_zoneaSEOS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) #30 ; 0 uses
  %i.ad = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN14arrow_vendored4date9time_zoneaSEOS1_(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) #30 ; 0 uses
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !43  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit.i, label %_ZNKSt14default_deleteISt9once_flagEclEPS0_.exit.i.i

_ZNKSt14default_deleteISt9once_flagEclEPS0_.exit.i.i: ; preds = %_ZN14arrow_vendored4date9time_zoneC2EOS1_.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 4) #28
  br label %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit.i

_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteISt9once_flagEclEPS0_.exit.i.i, %_ZN14arrow_vendored4date9time_zoneC2EOS1_.exit
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !49  ; 3 uses
  %i.ag = load ptr, ptr %i.u, align 8, !tbaa !52  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit.i, %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.an, %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i.i ], [ %i.af, %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !30 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !31
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #28
  br label %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.an, %i.ag
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !53

_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.s, align 8, !tbaa !49
  br label %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit.i
  %i.ao = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.af, %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.ap = load ptr, ptr %i.w, align 8, !tbaa !54
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.as) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i: ; preds = %bb.c, %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.at = load ptr, ptr %i.m, align 8, !tbaa !45  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i
  %i.au = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i: ; preds = %bb.d, %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i
  %i.ay = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.a
  br i1 %i.az, label %_ZN14arrow_vendored4date9time_zoneD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !31
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #28
  br label %_ZN14arrow_vendored4date9time_zoneD2Ev.exit

_ZN14arrow_vendored4date9time_zoneD2Ev.exit:      ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN14arrow_vendored4date9time_zoneESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %0, ptr %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow_vendored::date::time_zone", align 8 ; 14 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit16, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.017 = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = icmp eq ptr %.sroa.0.017, %1
  br i1 %i.b, label %.loopexit16, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.l = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.0.019 = phi ptr [ %.sroa.0.017, %.lr.ph ], [ %.sroa.0.0, %bb.h ] ; 8 uses
  %.pn18 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.019, %bb.h ] ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.pn18, i64 96 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !39   ; 5 uses
  %i.o = load i64, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.o, i64 %i.n) ; 2 uses
  %i.p = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.p, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.b
  %i.q = load ptr, ptr %0, align 8, !tbaa !30
  %i.r = load ptr, ptr %.sroa.0.019, align 8, !tbaa !30
  %i.s = call i32 @memcmp(ptr noundef %i.r, ptr noundef %i.q, i64 noundef %.sroa.speculated.i.i.i.i) #30 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN14arrow_vendored4date9time_zoneESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.b
  %i.t = sub i64 %i.n, %i.o
  %spec.select7.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.t, i64 -2147483648)
  %.08.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN14arrow_vendored4date9time_zoneESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN14arrow_vendored4date9time_zoneESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.s, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.u = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN14arrow_vendored4date9time_zoneESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store ptr %i.d, ptr %2, align 8, !tbaa !38
  %i.v = load ptr, ptr %.sroa.0.019, align 8, !tbaa !30 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.pn18, i64 104 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.y = icmp ult i64 %i.n, 16
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.n, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.z, i1 false)
  %.pre = load i64, ptr %i.m, align 8, !tbaa !39
  br label %_ZN14arrow_vendored4date9time_zoneC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  store ptr %i.v, ptr %2, align 8, !tbaa !30
  %i.aa = load i64, ptr %i.w, align 8, !tbaa !31
  store i64 %i.aa, ptr %i.d, align 8, !tbaa !31
  br label %_ZN14arrow_vendored4date9time_zoneC2EOS1_.exit

_ZN14arrow_vendored4date9time_zoneC2EOS1_.exit:   ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %3 = phi i64 [ %.pre, %bb.d ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  store i64 %3, ptr %i.e, align 8, !tbaa !39
  store ptr %i.w, ptr %.sroa.0.019, align 8, !tbaa !30
  store i64 0, ptr %i.m, align 8, !tbaa !39
  store i8 0, ptr %i.w, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn18, i64 120 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !73
  store <2 x ptr> %i.ac, ptr %i.f, align 8, !tbaa !73
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn18, i64 136
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !48
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.pn18, i64 144 ; 2 uses
  %i.ag = load <2 x ptr>, ptr %i.af, align 8, !tbaa !91
  store <2 x ptr> %i.ag, ptr %i.h, align 8, !tbaa !91
  %i.ah = getelementptr inbounds nuw i8, ptr %.pn18, i64 160
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !54
  store ptr %i.ai, ptr %i.j, align 8, !tbaa !54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %.pn18, i64 168 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !43
  store i64 %i.ak, ptr %i.k, align 8, !tbaa !43
  store ptr null, ptr %i.aj, align 8, !tbaa !43
  %i.al = ptrtoint ptr %.sroa.0.019 to i64
  %i.am = sub i64 %i.al, %i.l                     ; 2 uses
  %i.an = icmp sgt i64 %i.am, 0
  br i1 %i.an, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN14arrow_vendored4date9time_zoneC2EOS1_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn18, i64 176
  %i.ap = udiv exact i64 %i.am, 88
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i ], [ %i.ap, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %i.ao, %.lr.ph.preheader.i.i.i.i.i ]
  %.078.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.019, %.lr.ph.preheader.i.i.i.i.i ]
  %i.aq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -88 ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -88 ; 2 uses
  %i.as = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN14arrow_vendored4date9time_zoneaSEOS1_(ptr noundef nonnull align 8 dereferenceable(88) %i.ar, ptr noundef nonnull align 8 dereferenceable(88) %i.aq) #30 ; 0 uses
  %i.at = add nsw i64 %.010.i.i.i.i.i, -1
  %i.au = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.au, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !357

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %_ZN14arrow_vendored4date9time_zoneC2EOS1_.exit
  %i.av = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN14arrow_vendored4date9time_zoneaSEOS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %2) #30 ; 0 uses
  %i.aw = load ptr, ptr %i.k, align 8, !tbaa !43  ; 2 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit.i, label %_ZNKSt14default_deleteISt9once_flagEclEPS0_.exit.i.i

_ZNKSt14default_deleteISt9once_flagEclEPS0_.exit.i.i: ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef 4) #28
  br label %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit.i

_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteISt9once_flagEclEPS0_.exit.i.i, %.loopexit
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !49  ; 3 uses
  %i.ay = load ptr, ptr %i.i, align 8, !tbaa !52  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ax, %i.ay
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit.i, %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bf, %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i.i ], [ %i.ax, %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit.i ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !30 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !31
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #28
  br label %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.bf, %i.ay
  br i1 %.not.i.i.i.i7, label %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !53

_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.h, align 8, !tbaa !49
  br label %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit.i
  %i.bg = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ax, %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !54
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bg to i64
  %i.bk = sub i64 %i.bi, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bk) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i: ; preds = %bb.e, %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.bl = load ptr, ptr %i.f, align 8, !tbaa !45  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i
  %i.bm = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bl to i64
  %i.bp = sub i64 %i.bn, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bp) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i
  %i.bq = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.d
  br i1 %i.br, label %_ZN14arrow_vendored4date9time_zoneD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i
  %i.bs = load i64, ptr %i.d, align 8, !tbaa !31
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #28
  br label %_ZN14arrow_vendored4date9time_zoneD2Ev.exit

_ZN14arrow_vendored4date9time_zoneD2Ev.exit:      ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.h

bb.g:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN14arrow_vendored4date9time_zoneESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN14arrow_vendored4date9time_zoneESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %.sroa.0.019)
  br label %bb.h

bb.h:                                             ; preds = %_ZN14arrow_vendored4date9time_zoneD2Ev.exit, %bb.g
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.019, i64 88 ; 2 uses
  %i.bu = icmp eq ptr %.sroa.0.0, %1
  br i1 %i.bu, label %.loopexit16, label %bb.b, !llvm.loop !358

.loopexit16:                                      ; preds = %bb.h, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN14arrow_vendored4date9time_zoneESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr %0) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.arrow_vendored::date::time_zone", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !38
  %i.b = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !39   ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZN14arrow_vendored4date9time_zoneC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %1, align 8, !tbaa !30
  %i.i = load i64, ptr %i.c, align 8, !tbaa !31
  store i64 %i.i, ptr %i.a, align 8, !tbaa !31
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !39
  br label %_ZN14arrow_vendored4date9time_zoneC2EOS1_.exit

_ZN14arrow_vendored4date9time_zoneC2EOS1_.exit:   ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = phi i64 [ %i.f, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.j, ptr %i.l, align 8, !tbaa !39
  store ptr %i.c, ptr %0, align 8, !tbaa !30
  store i64 0, ptr %i.k, align 8, !tbaa !39
  store i8 0, ptr %i.c, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = load <2 x ptr>, ptr %i.n, align 8, !tbaa !73
  store <2 x ptr> %i.o, ptr %i.m, align 8, !tbaa !73
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !48
  store ptr %i.r, ptr %i.p, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.v = load <2 x ptr>, ptr %i.t, align 8, !tbaa !91
  store <2 x ptr> %i.v, ptr %i.s, align 8, !tbaa !91
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !54
  store ptr %i.y, ptr %i.w, align 8, !tbaa !54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !43
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !43
  store ptr null, ptr %i.aa, align 8, !tbaa !43
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_ZN14arrow_vendored4date9time_zoneC2EOS1_.exit
  %i.ac = phi i64 [ %i.j, %_ZN14arrow_vendored4date9time_zoneC2EOS1_.exit ], [ %.pre7, %bb.d ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !49     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #31
  unreachable

_ZNKSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 192153584101141162)
  %i.l = select i1 %i.j, i64 192153584101141162, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 48
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !75
  store i64 %i.r, ptr %i.q, align 8, !tbaa !75
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !38
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !30   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !39   ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  br label %_ZSt12construct_atIN14arrow_vendored4date6detail15expanded_ttinfoEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE12_M_check_lenEmPKc.exit
  store ptr %i.v, ptr %i.s, align 8, !tbaa !30
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !31
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !31
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !39
  br label %_ZSt12construct_atIN14arrow_vendored4date6detail15expanded_ttinfoEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit

_ZSt12construct_atIN14arrow_vendored4date6detail15expanded_ttinfoEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ad = phi i64 [ %i.z, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !39
  store ptr %i.w, ptr %i.t, align 8, !tbaa !30
  store i64 0, ptr %i.ae, align 8, !tbaa !39
  store i8 0, ptr %i.w, align 8, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !84, !range !87, !noundef !88
  store i8 %i.ai, ptr %i.ag, align 8, !tbaa !84
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atIN14arrow_vendored4date6detail15expanded_ttinfoEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit, %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bc, %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZSt12construct_atIN14arrow_vendored4date6detail15expanded_ttinfoEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.bb, %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atIN14arrow_vendored4date6detail15expanded_ttinfoEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %i.aj = load i64, ptr %.0911.i.i.i, align 8, !tbaa !75, !alias.scope !435, !noalias !432
  store i64 %i.aj, ptr %.012.i.i.i, align 8, !tbaa !75, !alias.scope !432, !noalias !435
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !38, !alias.scope !432, !noalias !435
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !30, !alias.scope !435, !noalias !432 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !39, !alias.scope !435, !noalias !432 ; 3 uses
  %i.as = icmp ult i64 %i.ar, 16
  tail call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.ar, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.at, i1 false), !alias.scope !437
  br label %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !30, !alias.scope !432, !noalias !435
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !31, !alias.scope !435, !noalias !432
  store i64 %i.au, ptr %i.am, align 8, !tbaa !31, !alias.scope !432, !noalias !435
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !39, !alias.scope !435, !noalias !432
  br label %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.d
  %i.av = phi i64 [ %i.ar, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.av, ptr %i.ax, align 8, !tbaa !39, !alias.scope !432, !noalias !435
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !30, !alias.scope !435, !noalias !432
  store i64 0, ptr %i.aw, align 8, !tbaa !39, !alias.scope !435, !noalias !432
  store i8 0, ptr %i.ao, align 8, !tbaa !31, !alias.scope !435, !noalias !432
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !84, !range !87, !alias.scope !435, !noalias !432, !noundef !88
  store i8 %i.ba, ptr %i.ay, align 8, !tbaa !84, !alias.scope !432, !noalias !435
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bb, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !431

_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atIN14arrow_vendored4date6detail15expanded_ttinfoEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atIN14arrow_vendored4date6detail15expanded_ttinfoEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit ], [ %i.bc, %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bx, %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.bd, %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 6 uses
  %.0911.i.i.i19 = phi ptr [ %i.bw, %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  %i.be = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !75, !alias.scope !441, !noalias !438
  store i64 %i.be, ptr %.012.i.i.i18, align 8, !tbaa !75, !alias.scope !438, !noalias !441
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 3 uses
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !38, !alias.scope !438, !noalias !441
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !30, !alias.scope !441, !noalias !438 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 5 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !39, !alias.scope !441, !noalias !438 ; 3 uses
  %i.bn = icmp ult i64 %i.bm, 16
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = add nuw nsw i64 %i.bm, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bh, ptr noundef nonnull align 8 dereferenceable(1) %i.bj, i64 %i.bo, i1 false), !alias.scope !443
  br label %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.bi, ptr %i.bf, align 8, !tbaa !30, !alias.scope !438, !noalias !441
  %i.bp = load i64, ptr %i.bj, align 8, !tbaa !31, !alias.scope !441, !noalias !438
  store i64 %i.bp, ptr %i.bh, align 8, !tbaa !31, !alias.scope !438, !noalias !441
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !39, !alias.scope !441, !noalias !438
  br label %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20, %bb.e
  %i.bq = phi i64 [ %i.bm, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20 ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  store i64 %i.bq, ptr %i.bs, align 8, !tbaa !39, !alias.scope !438, !noalias !441
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !30, !alias.scope !441, !noalias !438
  store i64 0, ptr %i.br, align 8, !tbaa !39, !alias.scope !441, !noalias !438
  store i8 0, ptr %i.bj, align 8, !tbaa !31, !alias.scope !441, !noalias !438
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !84, !range !87, !alias.scope !441, !noalias !438, !noundef !88
  store i8 %i.bv, ptr %i.bt, align 8, !tbaa !84, !alias.scope !438, !noalias !441
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bw, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !431

_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26: ; preds = %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.bd, %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.bx, %_ZSt19__relocate_object_aIN14arrow_vendored4date6detail15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !54
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = sub i64 %i.ca, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cb) #28
  br label %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !49
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !52
  %i.cc = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %i.l
  store ptr %i.cc, ptr %i.by, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE14_M_emplace_auxIJRKNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEN9__gnu_cxx17__normal_iteratorIPS3_S5_EENSJ_IPKS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !73     ; 8 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !92   ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %1, %i.f
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !75 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 %.sroa.0.0.copyload.i, ptr %i.f, align 8, !tbaa !75
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr null, ptr %i.j, align 8, !tbaa !81
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.k, ptr %i.e, align 8, !tbaa !92
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 4 uses
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !90
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !92   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.o, ptr %i.e, align 8, !tbaa !92
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -16 ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %i.b                       ; 3 uses
  %i.s = ashr exact i64 %i.r, 4                   ; 2 uses
  %i.t = icmp sgt i64 %i.s, 1
  br i1 %i.t, label %bb.e, label %bb.f, !prof !89

bb.e:                                             ; preds = %bb.d
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr inbounds [16 x i8], ptr %i.n, i64 %i.u
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr align 8 %i.l, i64 %i.r, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.w = icmp eq i64 %i.r, 16
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !90
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  store i64 %.sroa.0.0.copyload.i, ptr %i.l, align 8, !tbaa !75
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr null, ptr %.sroa.7.8..sroa_idx, align 8, !tbaa !91
  %.pre = load ptr, ptr %0, align 8, !tbaa !45
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.y = ptrtoint ptr %i.f to i64
  %i.z = sub i64 %i.y, %i.c                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775792
  br i1 %i.aa, label %bb.j, label %_ZNKSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #31
  unreachable

_ZNKSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.ab = ashr exact i64 %i.z, 4                  ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 576460752303423487)
  %i.af = select i1 %i.ad, i64 576460752303423487, i64 %i.ae ; 3 uses
  %.not.i.i = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.ag = shl nuw nsw i64 %i.af, 4
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #32 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.d ; 2 uses
  %.sroa.0.0.copyload.i.i9 = load i64, ptr %2, align 8, !tbaa !75
  store i64 %.sroa.0.0.copyload.i.i9, ptr %i.ai, align 8, !tbaa !75
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr null, ptr %i.aj, align 8, !tbaa !81
  %.not10.i.i.i.i = icmp eq ptr %i.a, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %i.ah, %_ZNKSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %i.a, %_ZNKSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i, i64 16, i1 false), !tbaa.struct !90, !alias.scope !444
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !101

_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ah, %_ZNKSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i ], [ %i.al, %.lr.ph.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i26.i = icmp eq ptr %1, %i.f
  br i1 %.not10.i.i.i26.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit32.i, label %.lr.ph.i.i.i27.i

.lr.ph.i.i.i27.i:                                 ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, %.lr.ph.i.i.i27.i
  %.012.i.i.i28.i = phi ptr [ %i.ao, %.lr.ph.i.i.i27.i ], [ %i.am, %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i ] ; 2 uses
  %.0911.i.i.i29.i = phi ptr [ %i.an, %.lr.ph.i.i.i27.i ], [ %i.x, %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i28.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i29.i, i64 16, i1 false), !tbaa.struct !90, !alias.scope !448
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29.i, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i28.i, i64 16 ; 2 uses
  %.not.i.i.i30.i = icmp eq ptr %i.an, %i.f
  br i1 %.not.i.i.i30.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit32.i, label %.lr.ph.i.i.i27.i, !llvm.loop !101

_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit32.i: ; preds = %.lr.ph.i.i.i27.i, %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %.0.lcssa.i.i.i31.i = phi ptr [ %i.am, %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i ], [ %i.ao, %.lr.ph.i.i.i27.i ]
  %.not.i33.i = icmp eq ptr %i.a, null
  br i1 %.not.i33.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJRKNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit32.i
  %3 = load ptr, ptr %i.g, align 8, !tbaa !48
  %4 = ptrtoint ptr %3 to i64
  %5 = sub i64 %4, %i.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %5) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJRKNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit

_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJRKNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit32.i, %bb.k
  store ptr %i.ah, ptr %0, align 8, !tbaa !45
  store ptr %.0.lcssa.i.i.i31.i, ptr %i.e, align 8, !tbaa !92
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.ap, ptr %i.g, align 8, !tbaa !48
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.h, %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJRKNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit
  %i.aq = phi ptr [ %i.a, %bb.c ], [ %.pre, %bb.h ], [ %i.ah, %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EE17_M_realloc_insertIJRKNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit ]
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.d
  ret ptr %i.ar
}

declare void @__once_proxy() #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #21

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK14arrow_vendored4date9time_zone4initEvE3$_0JEEvRS_OT_DpOT0_EUlvE_EERS8_ENUlvE_8__invokeEv"() #8 align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !452
  %.val.val.i = load ptr, ptr %.val.i, align 8, !tbaa !132
  tail call void @_ZN14arrow_vendored4date9time_zone9init_implEv(ptr noundef nonnull align 8 dereferenceable(88) %.val.val.i)
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #14

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #18 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #19 = { cold nofree noreturn }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #21 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #23 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { builtin nounwind }
attributes #29 = { noreturn nounwind }
attributes #30 = { nounwind }
attributes #31 = { noreturn }
attributes #32 = { builtin allocsize(0) }
attributes #33 = { nounwind willreturn memory(read) }
attributes #34 = { nounwind willreturn memory(none) }
attributes #35 = { cold }

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
!7 = !{!8, !24, i64 80}
!8 = !{!"_ZTSN14arrow_vendored4date4tzdbE", !9, i64 0, !14, i64 32, !19, i64 56, !24, i64 80}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !13, i64 8, !5, i64 16}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"_ZTSSt6vectorIN14arrow_vendored4date9time_zoneESaIS2_EE", !15, i64 0}
!15 = !{!"_ZTSSt12_Vector_baseIN14arrow_vendored4date9time_zoneESaIS2_EE", !16, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIN14arrow_vendored4date9time_zoneESaIS2_EE12_Vector_implE", !17, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIN14arrow_vendored4date9time_zoneESaIS2_EE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!18 = !{!"p1 _ZTSN14arrow_vendored4date9time_zoneE", !12, i64 0}
!19 = !{!"_ZTSSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE", !20, i64 0}
!20 = !{!"_ZTSSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE", !21, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE12_Vector_implE", !22, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!23 = !{!"p1 _ZTSN14arrow_vendored4date11leap_secondE", !12, i64 0}
!24 = !{!"p1 _ZTSN14arrow_vendored4date4tzdbE", !12, i64 0}
!25 = !{!22, !23, i64 0}
!26 = !{!22, !23, i64 16}
!27 = !{!17, !18, i64 0}
!28 = !{!17, !18, i64 8}
!29 = !{!17, !18, i64 16}
!30 = !{!9, !11, i64 0}
!31 = !{!5, !5, i64 0}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!35, !24, i64 0}
!35 = !{!"_ZTSSt13__atomic_baseIPN14arrow_vendored4date4tzdbEE", !24, i64 0}
!36 = !{!"branch_weights", i32 1, i32 1048575}
!37 = !{!24, !24, i64 0}
!38 = !{!10, !11, i64 0}
!39 = !{!9, !13, i64 8}
!40 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!41 = !{!42, !4, i64 0}
!42 = !{!"_ZTSSt9once_flag", !4, i64 0}
!43 = !{!44, !44, i64 0}
!44 = !{!"p1 _ZTSSt9once_flag", !12, i64 0}
!45 = !{!46, !47, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!47 = !{!"p1 _ZTSN14arrow_vendored4date6detail10transitionE", !12, i64 0}
!48 = !{!46, !47, i64 16}
!49 = !{!50, !51, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!51 = !{!"p1 _ZTSN14arrow_vendored4date6detail15expanded_ttinfoE", !12, i64 0}
!52 = !{!50, !51, i64 8}
!53 = distinct !{!53, !33}
!54 = !{!50, !51, i64 16}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_: argument 0"}
!57 = distinct !{!57, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_: argument 0"}
!60 = distinct !{!60, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_"}
!61 = !{!62, !62, i64 0}
!62 = !{!"vtable pointer", !6, i64 0}
!63 = !{!64, !66, i64 28}
!64 = !{!"_ZTSSt8ios_base", !13, i64 8, !13, i64 16, !65, i64 24, !66, i64 28, !66, i64 32, !67, i64 40, !68, i64 48, !5, i64 64, !4, i64 192, !69, i64 200, !70, i64 208}
!65 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!66 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!67 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !12, i64 0}
!68 = !{!"_ZTSNSt8ios_base6_WordsE", !12, i64 0, !13, i64 8}
!69 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !12, i64 0}
!70 = !{!"_ZTSSt6locale", !71, i64 0}
!71 = !{!"p1 _ZTSNSt6locale5_ImplE", !12, i64 0}
!72 = !{!64, !66, i64 32}
!73 = !{!47, !47, i64 0}
!74 = !{!23, !23, i64 0}
!75 = !{!13, !13, i64 0}
!76 = distinct !{!76, !33}
!77 = distinct !{!77, !33}
!78 = !{!79, !13, i64 0}
!79 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1EEEE", !13, i64 0}
!80 = distinct !{!80, !33}
!81 = !{!82, !51, i64 8}
!82 = !{!"_ZTSN14arrow_vendored4date6detail10transitionE", !83, i64 0, !51, i64 8}
!83 = !{!"_ZTSNSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1EEEEEE", !79, i64 0}
!84 = !{!85, !86, i64 40}
!85 = !{!"_ZTSN14arrow_vendored4date6detail15expanded_ttinfoE", !79, i64 0, !9, i64 8, !86, i64 40}
!86 = !{!"bool", !5, i64 0}
!87 = !{i8 0, i8 2}
!88 = !{}
!89 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!90 = !{i64 0, i64 8, !75, i64 8, i64 8, !91}
end_hunk_1
