Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/operations?download=true
inline.NumInlined: 158
inline.NumDeleted: 90
begin_hunk_0_@_ZN2cv3ccm10Operations3runENS_3MatE:bb.a
bb.l:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #14
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn13 = phi { ptr, i32 } [ %i.q, %bb.l ], [ %i.p, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %.body

bb.n:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #14
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn15 = phi { ptr, i32 } [ %i.s, %bb.o ], [ %i.r, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %.body

bb.q:                                             ; preds = %bb.b, %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.020.024, i64 256 ; 2 uses
  %.not = icmp eq ptr %i.t, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.r:                                             ; preds = %._crit_edge
  %i.u = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.s unwind label %bb.w       ; 0 uses

bb.s:                                             ; preds = %bb.r
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %2) #14
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv3ccm9OperationE, i64 16), ptr %4, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25   ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZN2cv3ccm9OperationD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZN2cv3ccm9OperationD2Ev.exit unwind label %bb.u, !inline_history !30 ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #15, !inline_history !30
  unreachable

_ZN2cv3ccm9OperationD2Ev.exit:                    ; preds = %bb.s, %bb.t
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #14, !inline_history !30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void

bb.v:                                             ; preds = %._crit_edge
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #14
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.w ], [ %i.aa, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %.body

.body:                                            ; preds = %bb.m, %bb.p, %bb.g, %bb.c, %bb.x
  %.pn17.pn = phi { ptr, i32 } [ %.pn, %bb.x ], [ %.pn13, %bb.m ], [ %.pn15, %bb.p ], [ %i.k, %bb.c ], [ %i.n, %bb.g ]
  call void @_ZN2cv3ccm9OperationD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  resume { ptr, i32 } %.pn17.pn
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv3ccm9OperationD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv3ccm9OperationE, i64 16), ptr %0, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #15
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.g) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv3ccm9OperationD0Ev(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv3ccm9OperationE, i64 16), ptr %0, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN2cv3ccm9OperationD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZN2cv3ccm9OperationD2Ev.exit unwind label %bb.c, !inline_history !30 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #15, !inline_history !30
  unreachable

_ZN2cv3ccm9OperationD2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.g) #14, !inline_history !30
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 256) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv3ccm9OperationESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not72 = icmp eq ptr %2, %3
  br i1 %.not72, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 8                   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50   ; 10 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.j, %i.l                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 8                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN2cv3ccm9OperationESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i64 0, %i.d
  %i.q = getelementptr inbounds [256 x i8], ptr %i.h, i64 %i.p ; 2 uses
  %i.r = tail call noundef ptr @_ZSt16__do_uninit_copyISt13move_iteratorIPN2cv3ccm9OperationEES4_ET0_T_S7_S6_(ptr %i.q, ptr %i.h, ptr noundef %i.h) ; 0 uses
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.c
  store ptr %i.t, ptr %i.g, align 8, !tbaa !50
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN2cv3ccm9OperationES6_EET0_T_S8_S7_(ptr noundef %1, ptr noundef %i.q, ptr noundef %i.h) ; 0 uses
  %i.u = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN2cv3ccm9OperationEPS5_EET0_T_SA_S9_(ptr noundef %2, ptr noundef %3, ptr noundef %1) ; 0 uses
  br label %bb.m

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN2cv3ccm9OperationESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.v = getelementptr inbounds i8, ptr %2, i64 %i.m ; 2 uses
  %i.w = tail call noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN2cv3ccm9OperationESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.v, ptr %3, ptr noundef %i.h) ; 0 uses
  %i.x = sub nuw nsw i64 %i.d, %i.n
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.z = getelementptr inbounds nuw [256 x i8], ptr %i.y, i64 %i.x ; 2 uses
  store ptr %i.z, ptr %i.g, align 8, !tbaa !50
  %i.aa = tail call noundef ptr @_ZSt16__do_uninit_copyISt13move_iteratorIPN2cv3ccm9OperationEES4_ET0_T_S7_S6_(ptr %1, ptr %i.h, ptr noundef %i.z) ; 0 uses
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.m
  store ptr %i.ac, ptr %i.g, align 8, !tbaa !50
  %5 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN2cv3ccm9OperationEPS5_EET0_T_SA_S9_(ptr noundef %2, ptr noundef %i.v, ptr noundef %1) ; 0 uses
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.ad = load ptr, ptr %0, align 8, !tbaa !51    ; 6 uses
  %i.ae = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.af = sub i64 %i.j, %i.ae
  %i.ag = ashr exact i64 %i.af, 8                 ; 4 uses
  %i.ah = sub nsw i64 36028797018963967, %i.ag
  %i.ai = icmp ult i64 %i.ah, %i.d
  br i1 %i.ai, label %bb.f, label %_ZNKSt6vectorIN2cv3ccm9OperationESaIS2_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
  unreachable

_ZNKSt6vectorIN2cv3ccm9OperationESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %i.d)
  %i.aj = add nsw i64 %.sroa.speculated.i, %i.ag  ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ag
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 36028797018963967)
  %i.am = select i1 %i.ak, i64 36028797018963967, i64 %i.al ; 4 uses
  %.not.i = icmp eq i64 %i.am, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN2cv3ccm9OperationESaIS2_EE11_M_allocateEm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN2cv3ccm9OperationESaIS2_EE12_M_check_lenEmPKc.exit
  %i.an = shl nuw nsw i64 %i.am, 8
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #17
  br label %_ZNSt12_Vector_baseIN2cv3ccm9OperationESaIS2_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN2cv3ccm9OperationESaIS2_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN2cv3ccm9OperationESaIS2_EE12_M_check_lenEmPKc.exit, %bb.g
  %i.ap = phi ptr [ %i.ao, %bb.g ], [ null, %_ZNKSt6vectorIN2cv3ccm9OperationESaIS2_EE12_M_check_lenEmPKc.exit ] ; 8 uses
  %i.aq = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv3ccm9OperationEPS2_ET0_T_S7_S6_(ptr noundef %i.ad, ptr noundef %1, ptr noundef %i.ap)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3ccm9OperationES3_SaIS2_EET0_T_S6_S5_RT1_.exit unwind label %bb.i ; 2 uses

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3ccm9OperationES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %_ZNSt12_Vector_baseIN2cv3ccm9OperationESaIS2_EE11_M_allocateEm.exit
  %i.ar = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN2cv3ccm9OperationESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %2, ptr %3, ptr noundef %i.aq)
          to label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN2cv3ccm9OperationESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit unwind label %bb.i ; 2 uses

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN2cv3ccm9OperationESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3ccm9OperationES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.as = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv3ccm9OperationEPS2_ET0_T_S7_S6_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.ar)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3ccm9OperationES3_SaIS2_EET0_T_S6_S5_RT1_.exit51 unwind label %bb.i

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3ccm9OperationES3_SaIS2_EET0_T_S6_S5_RT1_.exit51: ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN2cv3ccm9OperationESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit
  %.not4.i.i = icmp eq ptr %i.ad, %i.h
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2cv3ccm9OperationEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3ccm9OperationES3_SaIS2_EET0_T_S6_S5_RT1_.exit51, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.av, %.lr.ph.i.i ], [ %i.ad, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3ccm9OperationES3_SaIS2_EET0_T_S6_S5_RT1_.exit51 ] ; 3 uses
  %i.at = load ptr, ptr %.05.i.i, align 8, !tbaa !27
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %.05.i.i) #14, !inline_history !0
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 256 ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, %i.h
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2cv3ccm9OperationEEvT_S4_.exit, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPN2cv3ccm9OperationEEvT_S4_.exit:   ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3ccm9OperationES3_SaIS2_EET0_T_S6_S5_RT1_.exit51
  %.not.i52 = icmp eq ptr %i.ad, null
  br i1 %.not.i52, label %_ZNSt12_Vector_baseIN2cv3ccm9OperationESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN2cv3ccm9OperationEEvT_S4_.exit
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ay) #16
  br label %_ZNSt12_Vector_baseIN2cv3ccm9OperationESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN2cv3ccm9OperationESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN2cv3ccm9OperationEEvT_S4_.exit, %bb.h
  store ptr %i.ap, ptr %0, align 8, !tbaa !51
  store ptr %i.as, ptr %i.g, align 8, !tbaa !50
  %i.az = getelementptr inbounds nuw [256 x i8], ptr %i.ap, i64 %i.am
  store ptr %i.az, ptr %i.e, align 8, !tbaa !49
  br label %bb.m

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN2cv3ccm9OperationESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3ccm9OperationES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %_ZNSt12_Vector_baseIN2cv3ccm9OperationESaIS2_EE11_M_allocateEm.exit
  %.0 = phi ptr [ %i.ar, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN2cv3ccm9OperationESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit ], [ %i.aq, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3ccm9OperationES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.ap, %_ZNSt12_Vector_baseIN2cv3ccm9OperationESaIS2_EE11_M_allocateEm.exit ] ; 2 uses
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  %i.bc = tail call ptr @__cxa_begin_catch(ptr %i.bb) #14 ; 0 uses
  %.not4.i.i53 = icmp eq ptr %i.ap, %.0
  br i1 %.not4.i.i53, label %_ZSt8_DestroyIPN2cv3ccm9OperationES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i54

.lr.ph.i.i54:                                     ; preds = %bb.i, %.lr.ph.i.i54
  %.05.i.i55 = phi ptr [ %i.bf, %.lr.ph.i.i54 ], [ %i.ap, %bb.i ] ; 3 uses
  %i.bd = load ptr, ptr %.05.i.i55, align 8, !tbaa !27
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void %i.be(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %.05.i.i55) #14, !inline_history !0
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i55, i64 256 ; 2 uses
  %.not.i.i56 = icmp eq ptr %i.bf, %.0
  br i1 %.not.i.i56, label %_ZSt8_DestroyIPN2cv3ccm9OperationES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i54, !llvm.loop !1

_ZSt8_DestroyIPN2cv3ccm9OperationES2_EvT_S4_RSaIT0_E.exit: ; preds = %.lr.ph.i.i54, %bb.i
  %.not.i58 = icmp eq ptr %i.ap, null
  br i1 %.not.i58, label %_ZNSt12_Vector_baseIN2cv3ccm9OperationESaIS2_EE13_M_deallocateEPS2_m.exit59, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN2cv3ccm9OperationES2_EvT_S4_RSaIT0_E.exit
  %i.bg = shl nuw nsw i64 %i.am, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.bg) #16
  br label %_ZNSt12_Vector_baseIN2cv3ccm9OperationESaIS2_EE13_M_deallocateEPS2_m.exit59

_ZNSt12_Vector_baseIN2cv3ccm9OperationESaIS2_EE13_M_deallocateEPS2_m.exit59: ; preds = %bb.j, %_ZSt8_DestroyIPN2cv3ccm9OperationES2_EvT_S4_RSaIT0_E.exit
  invoke void @__cxa_rethrow() #13
          to label %bb.o unwind label %bb.k

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIN2cv3ccm9OperationESaIS2_EE13_M_deallocateEPS2_m.exit59
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.bh

bb.m:                                             ; preds = %_ZNSt12_Vector_baseIN2cv3ccm9OperationESaIS2_EE13_M_deallocateEPS2_m.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN2cv3ccm9OperationESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %bb.d, %bb.a
  ret void

bb.n:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  tail call void @__clang_call_terminate(ptr %i.bj) #15
  unreachable

bb.o:                                             ; preds = %_ZNSt12_Vector_baseIN2cv3ccm9OperationESaIS2_EE13_M_deallocateEPS2_m.exit59
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyISt13move_iteratorIPN2cv3ccm9OperationEES4_ET0_T_S7_S6_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not17 = icmp eq ptr %0, %1
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructIN2cv3ccm9OperationEJS2_EEvPT_DpOT0_.exit
  %.019 = phi ptr [ %i.s, %_ZSt10_ConstructIN2cv3ccm9OperationEJS2_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 8 uses
  %.sroa.08.018 = phi ptr [ %i.r, %_ZSt10_ConstructIN2cv3ccm9OperationEJS2_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv3ccm9OperationE, i64 16), ptr %.019, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %.019, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.08.018, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !22, !range !23, !noundef !24
  store i8 %i.c, ptr %i.a, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %.019, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.08.018, i64 16
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.d, ptr noundef nonnull align 8 dereferenceable(208) %i.e)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.019, i64 224 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.019, i64 240 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.08.018, i64 240 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25   ; 2 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.not.i.i.i, label %_ZSt10_ConstructIN2cv3ccm9OperationEJS2_EEvPT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.08.018, i64 224
  %i.k = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.l = load <2 x ptr>, ptr %i.h, align 8, !tbaa !32
  store <2 x ptr> %i.l, ptr %i.g, align 8, !tbaa !32
  br label %_ZSt10_ConstructIN2cv3ccm9OperationEJS2_EEvPT_DpOT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !25   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %.body.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i32 noundef 3)
          to label %.body.i.i unwind label %bb.f  ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #15
  unreachable

.body.i.i:                                        ; preds = %bb.e, %bb.d
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.d) #14
  br label %.body

_ZSt10_ConstructIN2cv3ccm9OperationEJS2_EEvPT_DpOT0_.exit: ; preds = %bb.c, %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.08.018, i64 256 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.019, i64 256 ; 2 uses
  %.not = icmp eq ptr %i.r, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !52

bb.g:                                             ; preds = %.lr.ph
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %.body.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.g ], [ %i.m, %.body.i.i ]
  %i.u = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %i.u) #14 ; 0 uses
  %.not4.i.i = icmp eq ptr %2, %.019
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2cv3ccm9OperationEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.body, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %2, %.body ] ; 3 uses
  %i.w = load ptr, ptr %.05.i.i, align 8, !tbaa !27
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %.05.i.i) #14, !inline_history !0
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 256 ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, %.019
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2cv3ccm9OperationEEvT_S4_.exit, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPN2cv3ccm9OperationEEvT_S4_.exit:   ; preds = %.lr.ph.i.i, %.body
  invoke void @__cxa_rethrow() #13
          to label %bb.k unwind label %bb.h

._crit_edge:                                      ; preds = %_ZSt10_ConstructIN2cv3ccm9OperationEJS2_EEvPT_DpOT0_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.s, %_ZSt10_ConstructIN2cv3ccm9OperationEJS2_EEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa

bb.h:                                             ; preds = %_ZSt8_DestroyIPN2cv3ccm9OperationEEvT_S4_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.z

bb.j:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #15
  unreachable

bb.k:                                             ; preds = %_ZSt8_DestroyIPN2cv3ccm9OperationEEvT_S4_.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN2cv3ccm9OperationES6_EET0_T_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function", align 16    ; 11 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 8                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN2cv3ccm9OperationaSERKS1_.exit
  %.013 = phi i64 [ %i.d, %.lr.ph ], [ %i.ag, %_ZN2cv3ccm9OperationaSERKS1_.exit ] ; 2 uses
  %.0612 = phi ptr [ %2, %.lr.ph ], [ %i.h, %_ZN2cv3ccm9OperationaSERKS1_.exit ] ; 5 uses
  %.0711 = phi ptr [ %1, %.lr.ph ], [ %i.g, %_ZN2cv3ccm9OperationaSERKS1_.exit ] ; 5 uses
  %i.g = getelementptr inbounds i8, ptr %.0711, i64 -256
  %i.h = getelementptr inbounds i8, ptr %.0612, i64 -256 ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %.0711, i64 -248
  %i.j = load i8, ptr %i.i, align 8, !tbaa !22, !range !23, !noundef !24
  %i.k = getelementptr inbounds i8, ptr %.0612, i64 -248
  store i8 %i.j, ptr %i.k, align 8, !tbaa !22
  %i.l = getelementptr inbounds i8, ptr %.0612, i64 -240
  %i.m = getelementptr inbounds i8, ptr %.0711, i64 -240
  %i.n = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.l, ptr noundef nonnull align 8 dereferenceable(208) %i.m) ; 0 uses
  %i.o = getelementptr inbounds i8, ptr %.0612, i64 -32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.p = getelementptr inbounds i8, ptr %.0711, i64 -16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25   ; 2 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFN2cv3MatES1_EEC2ERKS3_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds i8, ptr %.0711, i64 -32
  %i.s = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef 2)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.t = load <2 x ptr>, ptr %i.p, align 8, !tbaa !32
  br label %_ZNSt8functionIFN2cv3MatES1_EEC2ERKS3_.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %i.f, align 16, !tbaa !25  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = invoke noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i.i unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #15
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i.i:             ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.u
end_hunk_0
