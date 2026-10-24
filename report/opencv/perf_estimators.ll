Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/perf_estimators?download=true
inline.NumInlined: 1688
inline.NumDeleted: 839
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt6vectorIN2cv6detail12CameraParamsESaIS2_EEaSERKS4_:bb.a
.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %i.ag, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.ah = tail call noundef nonnull align 8 dereferenceable(448) ptr @_ZN2cv6detail12CameraParamsaSERKS1_(ptr noundef nonnull align 8 dereferenceable(448) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(448) %.0910.i.i.i.i.i) ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 448
  %i.aj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 448 ; 3 uses
  %i.ak = add nsw i64 %.012.i.i.i.i.i, -1
  %i.al = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.al, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6detail12CameraParamsESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit, !llvm.loop !307

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6detail12CameraParamsESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %i.ab, align 8, !tbaa !311
  %.pre47 = ptrtoint ptr %i.aj to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6detail12CameraParamsESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6detail12CameraParamsESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6detail12CameraParamsESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit, %bb.f
  %.pre-phi48 = phi i64 [ %.pre47, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6detail12CameraParamsESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit ], [ %i.k, %bb.f ]
  %i.am = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6detail12CameraParamsESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit ], [ %i.ac, %bb.f ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.aj, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6detail12CameraParamsESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit ], [ %i.i, %bb.f ]
  %.not4.i.i25 = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.am
  br i1 %.not4.i.i25, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN2cv6detail12CameraParamsESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i.i26.preheader

.lr.ph.i.i26.preheader:                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6detail12CameraParamsESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit
  %i.an = sub i64 %.pre-phi48, %i.k
  %i.ao = getelementptr inbounds i8, ptr %i.i, i64 %i.an
  br label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %.lr.ph.i.i26.preheader, %.lr.ph.i.i26
  %.sroa.01.05.i.i = phi ptr [ %i.ar, %.lr.ph.i.i26 ], [ %i.ao, %.lr.ph.i.i26.preheader ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 240
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ap) #29
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 32
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.aq) #29
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 448 ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.ar, %i.am
  br i1 %.not.i.i27, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN2cv6detail12CameraParamsESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i.i26, !llvm.loop !308

bb.g:                                             ; preds = %bb.e
  %i.as = icmp sgt i64 %i.ae, 0
  br i1 %i.as, label %.lr.ph.preheader.i.i.i.i.i29, label %_ZSt4copyIPN2cv6detail12CameraParamsES3_ET0_T_S5_S4_.exit

.lr.ph.preheader.i.i.i.i.i29:                     ; preds = %bb.g
  %i.at = udiv exact i64 %i.ae, 448
  br label %.lr.ph.i.i.i.i.i30

.lr.ph.i.i.i.i.i30:                               ; preds = %.lr.ph.i.i.i.i.i30, %.lr.ph.preheader.i.i.i.i.i29
  %.012.i.i.i.i.i31 = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i30 ], [ %i.at, %.lr.ph.preheader.i.i.i.i.i29 ] ; 2 uses
  %.0811.i.i.i.i.i32 = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i30 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i29 ] ; 2 uses
  %.0910.i.i.i.i.i33 = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i30 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i29 ] ; 2 uses
  %i.au = tail call noundef nonnull align 8 dereferenceable(448) ptr @_ZN2cv6detail12CameraParamsaSERKS1_(ptr noundef nonnull align 8 dereferenceable(448) %.0811.i.i.i.i.i32, ptr noundef nonnull align 8 dereferenceable(448) %.0910.i.i.i.i.i33) ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i33, i64 448
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i32, i64 448
  %i.ax = add nsw i64 %.012.i.i.i.i.i31, -1
  %i.ay = icmp samesign ugt i64 %.012.i.i.i.i.i31, 1
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i30, label %_ZSt4copyIPN2cv6detail12CameraParamsES3_ET0_T_S5_S4_.exit.loopexit, !llvm.loop !309

_ZSt4copyIPN2cv6detail12CameraParamsES3_ET0_T_S5_S4_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i30
  %.pre38 = load ptr, ptr %1, align 8, !tbaa !100
  %.pre39 = load ptr, ptr %i.ab, align 8, !tbaa !99 ; 2 uses
  %.pre40 = load ptr, ptr %0, align 8, !tbaa !100
  %.pre41 = load ptr, ptr %i.a, align 8, !tbaa !99
  %.pre42 = ptrtoint ptr %.pre39 to i64
  %.pre43 = ptrtoint ptr %.pre40 to i64
  %.pre45 = sub i64 %.pre42, %.pre43
  br label %_ZSt4copyIPN2cv6detail12CameraParamsES3_ET0_T_S5_S4_.exit

_ZSt4copyIPN2cv6detail12CameraParamsES3_ET0_T_S5_S4_.exit: ; preds = %_ZSt4copyIPN2cv6detail12CameraParamsES3_ET0_T_S5_S4_.exit.loopexit, %bb.g
  %.pre-phi46 = phi i64 [ %.pre45, %_ZSt4copyIPN2cv6detail12CameraParamsES3_ET0_T_S5_S4_.exit.loopexit ], [ %i.ae, %bb.g ]
  %i.az = phi ptr [ %.pre41, %_ZSt4copyIPN2cv6detail12CameraParamsES3_ET0_T_S5_S4_.exit.loopexit ], [ %i.b, %bb.g ] ; 2 uses
  %i.ba = phi ptr [ %.pre39, %_ZSt4copyIPN2cv6detail12CameraParamsES3_ET0_T_S5_S4_.exit.loopexit ], [ %i.ac, %bb.g ] ; 2 uses
  %i.bb = phi ptr [ %.pre38, %_ZSt4copyIPN2cv6detail12CameraParamsES3_ET0_T_S5_S4_.exit.loopexit ], [ %i.c, %bb.g ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.pre-phi46 ; 2 uses
  %.not14.i.i.i.i = icmp eq ptr %i.bc, %i.az
  br i1 %.not14.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN2cv6detail12CameraParamsESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN2cv6detail12CameraParamsES3_ET0_T_S5_S4_.exit, %_ZSt10_ConstructIN2cv6detail12CameraParamsEJRS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.016.i.i.i.i = phi ptr [ %i.be, %_ZSt10_ConstructIN2cv6detail12CameraParamsEJRS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.ba, %_ZSt4copyIPN2cv6detail12CameraParamsES3_ET0_T_S5_S4_.exit ] ; 3 uses
  %.01215.i.i.i.i = phi ptr [ %i.bd, %_ZSt10_ConstructIN2cv6detail12CameraParamsEJRS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.bc, %_ZSt4copyIPN2cv6detail12CameraParamsES3_ET0_T_S5_S4_.exit ] ; 2 uses
  invoke void @_ZN2cv6detail12CameraParamsC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(448) %.016.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(448) %.01215.i.i.i.i)
          to label %_ZSt10_ConstructIN2cv6detail12CameraParamsEJRS2_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.h

_ZSt10_ConstructIN2cv6detail12CameraParamsEJRS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i, i64 448 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 448
  %.not.i.i.i.i = icmp eq ptr %i.bd, %i.az
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN2cv6detail12CameraParamsESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !310

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  %i.bh = tail call ptr @__cxa_begin_catch(ptr %i.bg) #29 ; 0 uses
  invoke void @_ZSt8_DestroyIPN2cv6detail12CameraParamsEEvT_S4_(ptr noundef %i.ba, ptr noundef nonnull %.016.i.i.i.i)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_rethrow() #33
          to label %bb.m unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.bi

bb.l:                                             ; preds = %bb.j
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  tail call void @__clang_call_terminate(ptr %i.bk) #32
  unreachable

bb.m:                                             ; preds = %bb.i
  unreachable

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN2cv6detail12CameraParamsESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit: ; preds = %.lr.ph.i.i26, %_ZSt10_ConstructIN2cv6detail12CameraParamsEJRS2_EEvPT_DpOT0_.exit.i.i.i.i, %_ZSt4copyIPN2cv6detail12CameraParamsES3_ET0_T_S5_S4_.exit, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6detail12CameraParamsESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, %_ZNSt12_Vector_baseIN2cv6detail12CameraParamsESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.bl = load ptr, ptr %0, align 8, !tbaa !100
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.f
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !99
  br label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN2cv6detail12CameraParamsESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, %bb.a
  ret ptr %0
}

declare noundef zeroext i1 @_ZN4perf8TestBase4nextEv(ptr noundef nonnull align 8 dereferenceable(248)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4perf8TestBase10startTimerEv(ptr noundef nonnull align 8 dereferenceable(248)) local_unnamed_addr #2

declare void @_ZN4perf8TestBase9stopTimerEv(ptr noundef nonnull align 8 dereferenceable(248)) local_unnamed_addr #2

declare void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.b
  br i1 %i.c, label %bb.c, label %_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.c:                                             ; preds = %.noexc.i
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !106  ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !34   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.i = load i64, ptr %i.g, align 8, !tbaa !35
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 32) #31
  br label %_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #32
  unreachable

_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.a, %.noexc.i, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  ret void
}

declare noundef nonnull align 8 dereferenceable(288) ptr @_ZN4perf10Regression3addEPNS_8TestBaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN2cv11_InputArrayEdNS_10ERROR_TYPEE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), double noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 17 uses
  %6 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 17 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %or.cond = fcmp uno float %3, %4
  br i1 %or.cond, label %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit.thread, label %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit

_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit: ; preds = %bb.a
  %9 = bitcast float %3 to i32                    ; 2 uses
  %10 = bitcast float %4 to i32                   ; 3 uses
  %11 = sub i32 0, %9
  %12 = tail call float @llvm.fabs.f32(float %3)
  %13 = fneg float %12
  %14 = bitcast float %13 to i32
  %.not3.i.i.i = icmp slt i32 %9, 0
  %.0.i.i.i = select i1 %.not3.i.i.i, i32 %11, i32 %14
  %.neg.i = sub nuw i32 -2147483648, %10
  %.not3.i9.i.i = icmp slt i32 %10, 0
  %.0.i10.i.neg4.i = select i1 %.not3.i9.i.i, i32 %10, i32 %.neg.i
  %15 = add i32 %.0.i.i.i, 4
  %16 = add i32 %15, %.0.i10.i.neg4.i
  %i.a = icmp ult i32 %16, 9
  br i1 %i.a, label %bb.b, label %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit.thread

bb.b:                                             ; preds = %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %bb.p

_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit.thread: ; preds = %bb.a, %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 8, ptr %i.g, align 8, !tbaa !312
  %i.h = fpext float %3 to double
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, double noundef %i.h)
          to label %_ZNSolsEf.exit unwind label %bb.g ; 0 uses

_ZNSolsEf.exit:                                   ; preds = %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZNSolsEf.exit
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 8, ptr %i.o, align 8, !tbaa !312
  %i.p = fpext float %4 to double
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, double noundef %i.p)
          to label %_ZNSolsEf.exit14 unwind label %bb.i ; 0 uses

_ZNSolsEf.exit14:                                 ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull %5)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %_ZNSolsEf.exit14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull %6)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, i1 noundef zeroext false)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %8, align 8, !tbaa !34     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.u = load i64, ptr %i.s, align 8, !tbaa !35
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.w = load ptr, ptr %7, align 8, !tbaa !34     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.z = load i64, ptr %i.x, align 8, !tbaa !35
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.ab = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  store ptr %i.ab, ptr %6, align 8, !tbaa !40
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24    ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %6, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !40
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8 ; 2 uses
  store ptr %i.ag, ptr %i.j, align 8, !tbaa !40
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ah, align 8, !tbaa !40
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !34 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !35
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #31
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ah, align 8, !tbaa !40
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #29
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.ap, ptr %6, align 8, !tbaa !40
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ap, i64 -24    ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr %6, i64 %i.as
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !40
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.au, align 8, !tbaa !148
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.av) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  store ptr %i.ab, ptr %5, align 8, !tbaa !40
  %i.aw = load i64, ptr %i.ad, align 8
  %i.ax = getelementptr inbounds i8, ptr %5, i64 %i.aw
  store ptr %i.ac, ptr %i.ax, align 8, !tbaa !40
  store ptr %i.ag, ptr %i.b, align 8, !tbaa !40
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ay, align 8, !tbaa !40
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !34 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i18: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !35
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #31
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit20

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit20: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i18
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ay, align 8, !tbaa !40
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bf) #29
  store ptr %i.ap, ptr %5, align 8, !tbaa !40
  %i.bg = load i64, ptr %i.ar, align 8
  %i.bh = getelementptr inbounds i8, ptr %5, i64 %i.bg
  store ptr %i.aq, ptr %i.bh, align 8, !tbaa !40
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.bi, align 8, !tbaa !148
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bj) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.p

bb.g:                                             ; preds = %_ZNK7testing8internal13FloatingPointIfE12AlmostEqualsERKS2_.exit.thread
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.h:                                             ; preds = %_ZNSolsEf.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.i:                                             ; preds = %bb.c
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %_ZNSolsEf.exit14
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.k:                                             ; preds = %bb.d
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

bb.l:                                             ; preds = %bb.e
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %8, align 8, !tbaa !34    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.l
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !35
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.k ], [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %i.bp, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.bv = load ptr, ptr %7, align 8, !tbaa !34    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !35
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_perf_estimators.cpp:bb.a
  store i32 64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL9szSmall64E, i64 4), align 4, !tbaa !84
  %i.u = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL9szSmall64E) ; 0 uses
  store i32 128, ptr @_ZN4perfL10szSmall128E, align 4, !tbaa !83
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL10szSmall128E, i64 4), align 4, !tbaa !84
  %i.v = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL10szSmall128E) ; 0 uses
  %i.w = tail call noundef i32 @_ZN11opencv_test33bundleAdjuster_affine_affine_Test13AddToRegistryEv()
  store i32 %i.w, ptr @_ZN11opencv_test33bundleAdjuster_affine_affine_Test24gtest_registering_dummy_E, align 4, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  %i.x = tail call noundef ptr @_ZN7testing8UnitTest11GetInstanceEv()
  %i.y = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN7testing8UnitTest27parameterized_test_registryEv(ptr noundef nonnull align 8 dereferenceable(72) %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.z, ptr %1, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 72, ptr %i.b, align 8, !tbaa !32
  %i.aa = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 3 uses
  store ptr %i.aa, ptr %1, align 8, !tbaa !34
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !32  ; 3 uses
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %i.aa, ptr noundef nonnull align 1 dereferenceable(72) @.str.21, i64 72, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !36
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  store i8 0, ptr %i.ad, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !30
  %i.af = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.ag = load i64, ptr %i.ac, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !32
  %i.ah = icmp ugt i64 %i.ag, 15
  br i1 %i.ah, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.ai = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc9.i unwind label %bb.f  ; 2 uses

.noexc9.i:                                        ; preds = %.noexc.i.i.i
  store ptr %i.ai, ptr %0, align 8, !tbaa !34
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.aj, ptr %i.ae, align 8, !tbaa !35
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc9.i, %bb.a
  %i.ak = phi ptr [ %i.ai, %.noexc9.i ], [ %i.ae, %bb.a ] ; 2 uses
  switch i64 %i.ag, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.al = load i8, ptr %i.af, align 1, !tbaa !35
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !35
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %i.af, i64 %i.ag, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.am = load i64, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !36
  %i.ao = load ptr, ptr %0, align 8, !tbaa !34
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  store i8 0, ptr %i.ap, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 19, ptr %i.aq, align 8, !tbaa !38
  %i.ar = invoke noundef ptr @_ZN7testing8internal29ParameterizedTestCaseRegistry24GetTestCasePatternHolderIN11opencv_test21bundleAdjuster_affineEEEPNS0_25ParameterizedTestCaseInfoIT_EEPKcNS0_12CodeLocationE(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull @.str.24, ptr noundef nonnull align 8 %0)
          to label %._crit_edge.i.i10.i unwind label %bb.g

._crit_edge.i.i10.i:                              ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.as, ptr %2, align 8, !tbaa !30
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !36
  store i8 0, ptr %i.as, align 8, !tbaa !35
  %i.au = invoke noundef i32 @_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test21bundleAdjuster_affineEE24AddTestCaseInstantiationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFNS0_14ParamGeneratorISt5tupleIJSA_SA_EEEEvEPFSA_RKNS_13TestParamInfoISF_EEEPKci(ptr noundef nonnull align 8 dereferenceable(128) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @_ZN11opencv_testL42gtest_bundleAdjuster_affine_EvalGenerator_B5cxx11Ev, ptr noundef nonnull @_ZN11opencv_testL45gtest_bundleAdjuster_affine_EvalGenerateName_ERKN7testing13TestParamInfoISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEEE, ptr noundef nonnull @.str.21, i32 noundef 19)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %._crit_edge.i.i10.i
  %i.av = load ptr, ptr %2, align 8, !tbaa !34    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !35
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.az = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.ae
  br i1 %i.ba, label %_ZN7testing8internal12CodeLocationD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bb = load i64, ptr %i.ae, align 8, !tbaa !35
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #31
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit.i

_ZN7testing8internal12CodeLocationD2Ev.exit.i:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.bd = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.z
  br i1 %i.be, label %__cxx_global_var_init.23.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i
  %i.bf = load i64, ptr %i.z, align 8, !tbaa !35
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #31
  br label %__cxx_global_var_init.23.exit

bb.f:                                             ; preds = %.noexc.i.i.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit22.i

bb.g:                                             ; preds = %bb.d
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i10.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = load ptr, ptr %2, align 8, !tbaa !34    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.as
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i: ; preds = %bb.h
  %i.bm = load i64, ptr %i.as, align 8, !tbaa !35
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i, %bb.g
  %.pn.pn.i = phi { ptr, i32 } [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i ], [ %i.bi, %bb.g ] ; 2 uses
  %i.bo = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.ae
  br i1 %i.bp, label %_ZN7testing8internal12CodeLocationD2Ev.exit22.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20.i: ; preds = %bb.i
  %i.bq = load i64, ptr %i.ae, align 8, !tbaa !35
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #31
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit22.i

_ZN7testing8internal12CodeLocationD2Ev.exit22.i:  ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20.i, %bb.f
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.bh, %bb.f ], [ %.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20.i ], [ %.pn.pn.i, %bb.i ]
  %i.bs = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.z
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit22.i
  %i.bu = load i64, ptr %i.z, align 8, !tbaa !35
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit22.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  resume { ptr, i32 } %.pn.pn.pn.i

__cxx_global_var_init.23.exit:                    ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #28

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #21 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #22 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #24 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nounwind }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { builtin nounwind }
attributes #32 = { noreturn nounwind }
attributes #33 = { noreturn }
attributes #34 = { nounwind willreturn memory(none) }
attributes #35 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!18, !19, !20}
!llvm.ident = !{!21}
!llvm.errno.tbaa = !{!26}

!0 = distinct !{ptr @_ZN7testing7MessageD2Ev, null, null}
!1 = distinct !{!1, !69}
!2 = distinct !{!2, !69}
!3 = distinct !{!3, !69}
!4 = distinct !{!4, !69}
!5 = distinct !{null, null}
!6 = distinct !{!6, !69}
!7 = distinct !{!7, !69}
!8 = distinct !{!8, !69}
!9 = distinct !{ptr @_ZN7testing8internal14ParamGeneratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, null, null}
!10 = distinct !{!10, !69}
!11 = distinct !{null, null}
!12 = distinct !{null}
!13 = distinct !{ptr @_ZN7testing8internal13ParamIteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, null, null}
!14 = distinct !{null}
!15 = distinct !{null}
!16 = distinct !{null, null}
!17 = distinct !{null}
!18 = !{i32 8, !"PIC Level", i32 2}
!19 = !{i32 7, !"PIE Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 2}
!21 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!22 = !{!"Simple C++ TBAA"}
!23 = !{!"omnipotent char", !22, i64 0}
!24 = !{!"int", !23, i64 0}
!25 = !{!"__libc_errno", !24, i64 0}
!26 = !{!25, !24, i64 0}
!27 = !{!"any pointer", !23, i64 0}
!28 = !{!"p1 omnipotent char", !27, i64 0}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !28, i64 0}
!30 = !{!29, !28, i64 0}
!31 = !{!"long", !23, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !29, i64 0, !31, i64 8, !23, i64 16}
!34 = !{!33, !28, i64 0}
!35 = !{!23, !23, i64 0}
!36 = !{!33, !31, i64 8}
!37 = !{!"_ZTSN7testing8internal12CodeLocationE", !33, i64 0, !24, i64 32}
!38 = !{!37, !24, i64 32}
!39 = !{!"vtable pointer", !22, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!"bool", !23, i64 0}
!42 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !27, i64 0}
!43 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !42, i64 0, !24, i64 8}
!44 = !{!43, !24, i64 8}
!45 = !{!"p1 _ZTSN7testing8internal14GTestFlagSaverE", !27, i64 0}
!46 = !{!"_ZTSN7testing8internal10scoped_ptrINS0_14GTestFlagSaverEEE", !45, i64 0}
!47 = !{!"_ZTSN7testing4TestE", !46, i64 8}
!48 = !{!"p1 _ZTSSt4pairIiN2cv5Size_IiEEE", !27, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseISt4pairIiN2cv5Size_IiEEESaIS4_EE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!50 = !{!"_ZTSNSt12_Vector_baseISt4pairIiN2cv5Size_IiEEESaIS4_EE12_Vector_implE", !49, i64 0}
!51 = !{!"_ZTSSt12_Vector_baseISt4pairIiN2cv5Size_IiEEESaIS4_EE", !50, i64 0}
!52 = !{!"_ZTSSt6vectorISt4pairIiN2cv5Size_IiEEESaIS4_EE", !51, i64 0}
!53 = !{!"_ZTSN4perf13PERF_STRATEGYE", !23, i64 0}
!54 = !{!"p1 long", !27, i64 0}
!55 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !54, i64 0, !54, i64 8, !54, i64 16}
!56 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !55, i64 0}
!57 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !56, i64 0}
!58 = !{!"_ZTSSt6vectorIlSaIlEE", !57, i64 0}
!59 = !{!"double", !23, i64 0}
!60 = !{!"_ZTSN4perf19performance_metricsE", !31, i64 0, !31, i64 8, !24, i64 16, !24, i64 20, !59, i64 24, !59, i64 32, !59, i64 40, !59, i64 48, !59, i64 56, !59, i64 64, !59, i64 72, !24, i64 80}
!61 = !{!"p1 _ZTSN4perf8TestBaseE", !27, i64 0}
!62 = !{!"_ZTSN4perf8TestBase14_declareHelperE", !61, i64 0}
!63 = !{!"_ZTSN4perf8TestBaseE", !47, i64 0, !52, i64 16, !52, i64 40, !53, i64 64, !58, i64 72, !31, i64 96, !31, i64 104, !31, i64 112, !24, i64 120, !24, i64 124, !24, i64 128, !24, i64 132, !24, i64 136, !60, i64 144, !41, i64 232, !62, i64 240}
!64 = !{!"_ZTSN7testing18WithParamInterfaceISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE"}
!65 = !{!"_ZTSN4perf17TestBaseWithParamISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE", !63, i64 0, !64, i64 248}
!66 = !{!"_ZTSN11opencv_test21bundleAdjuster_affineE", !65, i64 0}
!67 = !{!"_ZTSN11opencv_test33bundleAdjuster_affine_affine_TestE", !66, i64 0, !41, i64 256}
!68 = !{!67, !41, i64 256}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!"_ZTSN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test21bundleAdjuster_affineEE17InstantiationInfoE", !33, i64 0, !27, i64 32, !27, i64 40, !28, i64 48, !24, i64 56}
!71 = !{!70, !27, i64 32}
!72 = !{!70, !27, i64 40}
!73 = !{!70, !28, i64 48}
!74 = !{!70, !24, i64 56}
!75 = !{!"p1 _ZTSN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test21bundleAdjuster_affineEE17InstantiationInfoE", !27, i64 0}
!76 = !{!"_ZTSNSt12_Vector_baseIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test21bundleAdjuster_affineEE17InstantiationInfoESaIS6_EE17_Vector_impl_dataE", !75, i64 0, !75, i64 8, !75, i64 16}
!77 = !{!76, !75, i64 8}
!78 = !{!76, !75, i64 16}
!79 = !{!"_ZTSN7testing8internal11ValueArray2IPKcS3_EE", !28, i64 0, !28, i64 8}
!80 = !{!79, !28, i64 0}
!81 = !{!79, !28, i64 8}
!82 = !{!"_ZTSN2cv5Size_IiEE", !24, i64 0, !24, i64 4}
!83 = !{!82, !24, i64 0}
!84 = !{!82, !24, i64 4}
!85 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !24, i64 8, !24, i64 12}
!86 = !{!85, !24, i64 8}
!87 = !{!85, !24, i64 12}
!88 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !27, i64 0}
!89 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !88, i64 0}
!90 = !{!24, !24, i64 0}
!91 = !{!89, !88, i64 0}
!92 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!93 = !{!"p1 _ZTSN2cv3MatE", !27, i64 0}
!94 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !93, i64 0, !93, i64 8, !93, i64 16}
!95 = !{!94, !93, i64 8}
!96 = !{!94, !93, i64 16}
!97 = !{!"p1 _ZTSN2cv6detail12CameraParamsE", !27, i64 0}
!98 = !{!"_ZTSNSt12_Vector_baseIN2cv6detail12CameraParamsESaIS2_EE17_Vector_impl_dataE", !97, i64 0, !97, i64 8, !97, i64 16}
!99 = !{!98, !97, i64 8}
!100 = !{!98, !97, i64 0}
!101 = !{!"p1 _ZTSNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE", !27, i64 0}
!102 = !{!"_ZTSN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEE", !101, i64 0}
!103 = !{!102, !101, i64 0}
!104 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0}
!105 = !{!"_ZTSN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !104, i64 0}
!106 = !{!105, !104, i64 0}
!107 = !{!"p1 _ZTSN2cv12MatAllocatorE", !27, i64 0}
!108 = !{!"p1 _ZTSN2cv8UMatDataE", !27, i64 0}
!109 = !{!"_ZTSN2cv10DataLayoutE", !23, i64 0}
!110 = !{!"_ZTSN2cv8MatShapeE", !24, i64 0, !109, i64 4, !24, i64 8, !23, i64 12}
!111 = !{!"_ZTSN2cv7MatStepE", !23, i64 0}
!112 = !{!"_ZTSN2cv3MatE", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !28, i64 24, !28, i64 32, !28, i64 40, !28, i64 48, !107, i64 56, !108, i64 64, !110, i64 72, !111, i64 128}
!113 = !{!112, !24, i64 0}
!114 = !{!98, !97, i64 16}
!115 = !{!"p1 _ZTSN2cv6detail11MatchesInfoE", !27, i64 0}
!116 = !{!"_ZTSNSt12_Vector_baseIN2cv6detail11MatchesInfoESaIS2_EE17_Vector_impl_dataE", !115, i64 0, !115, i64 8, !115, i64 16}
!117 = !{!116, !115, i64 0}
!118 = !{!116, !115, i64 8}
!119 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!120 = !{!119, !28, i64 0}
!121 = !{!119, !28, i64 16}
!122 = !{!"p1 _ZTSN2cv6DMatchE", !27, i64 0}
!123 = !{!"_ZTSNSt12_Vector_baseIN2cv6DMatchESaIS1_EE17_Vector_impl_dataE", !122, i64 0, !122, i64 8, !122, i64 16}
!124 = !{!123, !122, i64 0}
!125 = !{!123, !122, i64 16}
!126 = !{!116, !115, i64 16}
!127 = !{!"p1 _ZTSN2cv6detail13ImageFeaturesE", !27, i64 0}
!128 = !{!"_ZTSNSt12_Vector_baseIN2cv6detail13ImageFeaturesESaIS2_EE17_Vector_impl_dataE", !127, i64 0, !127, i64 8, !127, i64 16}
!129 = !{!128, !127, i64 0}
!130 = !{!128, !127, i64 8}
!131 = !{!"p1 _ZTSN2cv8KeyPointE", !27, i64 0}
!132 = !{!"_ZTSNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE17_Vector_impl_dataE", !131, i64 0, !131, i64 8, !131, i64 16}
!133 = !{!132, !131, i64 0}
!134 = !{!132, !131, i64 16}
!135 = !{!128, !127, i64 16}
!136 = !{!94, !93, i64 0}
!137 = !{!"p1 _ZTSSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EE", !27, i64 0}
!138 = !{!137, !137, i64 0}
!139 = !{!"_ZTSSt13_Ios_Fmtflags", !23, i64 0}
!140 = !{!"_ZTSSt12_Ios_Iostate", !23, i64 0}
!141 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !27, i64 0}
!142 = !{!"_ZTSNSt8ios_base6_WordsE", !27, i64 0, !31, i64 8}
!143 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !27, i64 0}
!144 = !{!"p1 _ZTSNSt6locale5_ImplE", !27, i64 0}
!145 = !{!"_ZTSSt6locale", !144, i64 0}
!146 = !{!"_ZTSSt8ios_base", !31, i64 8, !31, i64 16, !139, i64 24, !140, i64 28, !140, i64 32, !141, i64 40, !142, i64 48, !23, i64 64, !24, i64 192, !143, i64 200, !145, i64 208}
!147 = !{!"_ZTSSi", !31, i64 8}
!148 = !{!147, !31, i64 8}
!149 = !{!55, !54, i64 0}
!150 = !{!55, !54, i64 16}
!151 = !{!49, !48, i64 0}
!152 = !{!49, !48, i64 16}
!153 = !{!"p1 _ZTSN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test21bundleAdjuster_affineEE8TestInfoE", !27, i64 0}
!154 = !{!"p1 _ZTSN7testing8internal19linked_ptr_internalE", !27, i64 0}
!155 = !{!"_ZTSN7testing8internal19linked_ptr_internalE", !154, i64 0}
!156 = !{!"_ZTSN7testing8internal10linked_ptrINS0_25ParameterizedTestCaseInfoIN11opencv_test21bundleAdjuster_affineEE8TestInfoEEE", !153, i64 0, !155, i64 8}
!157 = !{!156, !153, i64 0}
end_hunk_1
