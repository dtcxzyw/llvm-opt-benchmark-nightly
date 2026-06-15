inline.NumInlined: 3761
inline.NumDeleted: 1782
begin_hunk_0_@_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a
  br label %_ZNSt12_Vector_baseIN6Assimp7Blender13FileBlockHeadESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6Assimp7Blender13FileBlockHeadESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, %bb.h
  store ptr %i.q, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8
  %i.cb = getelementptr inbounds nuw [72 x i8], ptr %i.q, i64 %i.m
  store ptr %i.cb, ptr %i.bx, align 8
  ret void

bb.i:                                             ; preds = %bb.j
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i.i
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  %i.cf = call ptr @__cxa_begin_catch(ptr %i.ce) #25 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #27
  invoke void @__cxa_rethrow() #28
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.cc

bb.l:                                             ; preds = %bb.i
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #29
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJPKcRA15_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(15) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
  invoke void @_ZN15DeadlyErrorBaseC2IJRA15_KcEPS1_EEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(15) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %3, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #25
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #25
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRA15_KcEPS1_EEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(15) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #25
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJERA15_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(15) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %4, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %4, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #27
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #25
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #25
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #25
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJERA15_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(15) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(15) %2) #25
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(15) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %3, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #27
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #25
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #25
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #25
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Assimp::Blender::FileBlockHead", align 8 ; 8 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 1152
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.l = icmp eq i64 %2, 0
  br i1 %i.l, label %._crit_edge, label %.lr.ph44

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit
  %i.m = icmp eq i64 %i.s, 0
  br i1 %i.m, label %._crit_edge, label %.lr.ph44, !llvm.loop !219

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge14.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_RT0_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %._crit_edge, %.lr.ph.i8.i
  %.sroa.0.05.i.i = phi ptr [ %i.n, %.lr.ph.i8.i ], [ %storemerge14.lcssa, %._crit_edge ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -72 ; 4 uses
  call void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_(ptr %0, ptr nonnull %i.n, ptr nonnull %i.n, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.a
  %i.q = icmp sgt i64 %i.p, 72
  br i1 %i.q, label %.lr.ph.i8.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit, !llvm.loop !220

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit: ; preds = %.lr.ph.i8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1443 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.01542 = phi i64 [ %i.s, %bb.b ], [ %2, %.lr.ph ]
  %i.r = phi i64 [ %i.co, %bb.b ], [ %i.c, %.lr.ph ]
  %i.s = add nsw i64 %.01542, -1                  ; 3 uses
  %i.t = udiv i64 %i.r, 144
  %i.u = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.t ; 3 uses
  %i.v = getelementptr inbounds i8, ptr %storemerge1443, i64 -72 ; 2 uses
  %i.w = load i64, ptr %i.f, align 8              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.y = load i64, ptr %i.x, align 8              ; 3 uses
  %i.z = icmp ult i64 %i.w, %i.y
  %i.aa = getelementptr inbounds i8, ptr %storemerge1443, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8            ; 4 uses
  br i1 %i.z, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph44
  %i.ac = icmp ult i64 %i.y, %i.ab
  br i1 %i.ac, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp ult i64 %i.w, %i.ab
  %..i.i = select i1 %i.ad, ptr %i.v, ptr %i.e
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i

bb.e:                                             ; preds = %.lr.ph44
  %i.ae = icmp ult i64 %i.w, %i.ab
  br i1 %i.ae, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = icmp ult i64 %i.y, %i.ab
  %.30.i.i = select i1 %i.af, ptr %i.v, ptr %i.u
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.sink.i.i = phi ptr [ %i.u, %bb.c ], [ %i.e, %bb.e ], [ %.30.i.i, %bb.f ], [ %..i.i, %bb.d ]
  call void @_ZSt4swapIN6Assimp7Blender13FileBlockHeadEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %.sink.i.i) #25
  br label %bb.g

bb.g:                                             ; preds = %_ZSt4swapIN6Assimp7Blender13FileBlockHeadEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i
  %.sroa.010.0.i.i = phi ptr [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i ], [ %i.ak, %_ZSt4swapIN6Assimp7Blender13FileBlockHeadEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge1443, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i ], [ %.sroa.0.1.i.i, %_ZSt4swapIN6Assimp7Blender13FileBlockHeadEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit ]
  %i.ag = load i64, ptr %i.g, align 8             ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %bb.g ], [ %i.ak, %bb.h ] ; 15 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 48
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = icmp ult i64 %i.ai, %i.ag
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 72 ; 2 uses
  br i1 %i.aj, label %bb.h, label %.preheader.i.i, !llvm.loop !221

.preheader.i.i:                                   ; preds = %bb.h, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.h ] ; 8 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -72 ; 5 uses
  %i.al = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = icmp ult i64 %i.ag, %i.am
  br i1 %i.an, label %.preheader.i.i, label %bb.i, !llvm.loop !222

bb.i:                                             ; preds = %.preheader.i.i
  %i.ao = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ao, label %bb.j, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ap = load i64, ptr %.sroa.010.1.i.i, align 8
  store i64 %i.ap, ptr %3, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8 ; 3 uses
  store ptr %i.i, ptr %i.h, align 8
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 24 ; 9 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16
  %i.av = load i64, ptr %i.au, align 8            ; 3 uses
  %i.aw = icmp ult i64 %i.av, 16
  call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  store ptr %i.ar, ptr %i.h, align 8
  %i.ay = load i64, ptr %i.as, align 8
  store i64 %i.ay, ptr %i.i, align 8
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.k
  %i.az = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.av, %bb.k ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16 ; 3 uses
  store i64 %i.az, ptr %i.j, align 8
  store ptr %i.as, ptr %i.aq, align 8
  store i64 0, ptr %i.ba, align 8
  store i8 0, ptr %i.as, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 32, i1 false)
  %i.bc = load i64, ptr %.sroa.0.1.i.i, align 8
  store i64 %i.bc, ptr %.sroa.010.1.i.i, align 8
  %i.bd = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -64 ; 7 uses
  %i.be = load ptr, ptr %i.bd, align 8            ; 4 uses
  %i.bf = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -48 ; 8 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.bh = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -56 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8            ; 3 uses
  %i.bj = icmp ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.bj)
  switch i64 %i.bi, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.bk = load i8, ptr %i.be, align 1
  store i8 %i.bk, ptr %i.as, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.as, ptr align 1 %i.be, i64 %i.bi, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.bl = load i64, ptr %i.bh, align 8            ; 2 uses
  store i64 %i.bl, ptr %i.ba, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bl
  store i8 0, ptr %i.bm, align 1
  %.pre.i.i.i = load ptr, ptr %i.bd, align 8
  br label %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit.i

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  store ptr %i.be, ptr %i.aq, align 8
  %i.bn = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -56
  %i.bo = load i64, ptr %i.bn, align 8
  store i64 %i.bo, ptr %i.ba, align 8
  %i.bp = load i64, ptr %i.bf, align 8
  store i64 %i.bp, ptr %i.as, align 8
  store ptr %i.bf, ptr %i.bd, align 8
  br label %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit.i

_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit.i:  ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
  %i.bq = phi ptr [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ], [ %i.bf, %bb.o ]
  %i.br = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -56 ; 4 uses
  store i64 0, ptr %i.br, align 8
  store i8 0, ptr %i.bq, align 1
  %i.bs = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.bs, i64 32, i1 false)
  %i.bt = load i64, ptr %3, align 8
  store i64 %i.bt, ptr %.sroa.0.1.i.i, align 8
  %i.bu = load ptr, ptr %i.bd, align 8            ; 6 uses
  %i.bv = icmp eq ptr %i.bu, %i.bf
  %i.bw = load ptr, ptr %i.h, align 8             ; 5 uses
  %i.bx = icmp eq ptr %i.bw, %i.i                 ; 2 uses
  br i1 %i.bv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i: ; preds = %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit.i
  br i1 %i.bx, label %bb.p, label %.thread.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i5.i: ; preds = %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit.i
  br i1 %i.bx, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i6.i

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i
  %i.by = load i64, ptr %i.j, align 8             ; 3 uses
  %i.bz = icmp ult i64 %i.by, 16
  call void @llvm.assume(i1 %i.bz)
  switch i64 %i.by, label %bb.r [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9.i
    i64 1, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.ca = load i8, ptr %i.bw, align 1
  store i8 %i.ca, ptr %i.bu, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bu, ptr align 1 %i.bw, i64 %i.by, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9.i: ; preds = %bb.r, %bb.q, %bb.p
  %i.cb = load i64, ptr %i.j, align 8             ; 2 uses
  store i64 %i.cb, ptr %i.br, align 8
  %i.cc = load ptr, ptr %i.bd, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cb
  store i8 0, ptr %i.cd, align 1
  %.pre.i.i10.i = load ptr, ptr %i.h, align 8
  br label %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit13.i

.thread.i.i12.i:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i
  store ptr %i.bw, ptr %i.bd, align 8
  %i.ce = load i64, ptr %i.j, align 8
  store i64 %i.ce, ptr %i.br, align 8
  %i.cf = load i64, ptr %i.i, align 8
  store i64 %i.cf, ptr %i.bf, align 8
  br label %bb.t

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i6.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i5.i
  %i.cg = load i64, ptr %i.bf, align 8
  store ptr %i.bw, ptr %i.bd, align 8
  %i.ch = load i64, ptr %i.j, align 8
  store i64 %i.ch, ptr %i.br, align 8
  %i.ci = load i64, ptr %i.i, align 8
  store i64 %i.ci, ptr %i.bf, align 8
  %.not.i.i7.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i7.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i6.i
  store ptr %i.bu, ptr %i.h, align 8
  store i64 %i.cg, ptr %i.i, align 8
  br label %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit13.i

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i6.i, %.thread.i.i12.i
  store ptr %i.i, ptr %i.h, align 8
  br label %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit13.i

_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit13.i: ; preds = %bb.t, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9.i
  %6 = phi ptr [ %.pre.i.i10.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9.i ], [ %i.bu, %bb.s ], [ %i.i, %bb.t ]
  store i64 0, ptr %i.j, align 8
  store i8 0, ptr %6, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  %i.cj = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.i
  br i1 %i.ck, label %_ZSt4swapIN6Assimp7Blender13FileBlockHeadEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit13.i
  %i.cl = load i64, ptr %i.i, align 8
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #27
  br label %_ZSt4swapIN6Assimp7Blender13FileBlockHeadEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit

_ZSt4swapIN6Assimp7Blender13FileBlockHeadEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit: ; preds = %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit13.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.g, !llvm.loop !223

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit: ; preds = %bb.i
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge1443, i64 noundef %i.s)
  %i.cn = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.co = sub i64 %i.cn, %i.a                     ; 2 uses
  %i.cp = icmp sgt i64 %i.co, 1152
  br i1 %i.cp, label %bb.b, label %.loopexit, !llvm.loop !219

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit, %bb.a, %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Assimp::Blender::FileBlockHead", align 8 ; 8 uses
  %4 = alloca %"struct.Assimp::Blender::FileBlockHead", align 8 ; 6 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 72                  ; 2 uses
  %i.e = icmp slt i64 %i.c, 144
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2
  %i.g = lshr i64 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 12 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %bb.c

bb.c:                                             ; preds = %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit13, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.am, %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit13 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.p = getelementptr inbounds [72 x i8], ptr %0, i64 %.08 ; 7 uses
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  store i64 %i.q, ptr %3, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.w = load i64, ptr %i.v, align 8              ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZN6Assimp7Blender13FileBlockHeadC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  store ptr %i.s, ptr %i.h, align 8
  %i.z = load i64, ptr %i.t, align 8
  store i64 %i.z, ptr %i.i, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %_ZN6Assimp7Blender13FileBlockHeadC2EOS1_.exit

_ZN6Assimp7Blender13FileBlockHeadC2EOS1_.exit:    ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = phi ptr [ %i.i, %bb.d ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.ab = phi i64 [ %i.w, %bb.d ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.t, ptr %i.r, align 8
  store i64 0, ptr %i.ac, align 8
  store i8 0, ptr %i.t, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false)
  store i64 %i.q, ptr %4, align 8
  store ptr %i.m, ptr %i.l, align 8
  %i.ae = icmp eq ptr %i.aa, %i.i
  br i1 %i.ae, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

bb.e:                                             ; preds = %_ZN6Assimp7Blender13FileBlockHeadC2EOS1_.exit
  %i.af = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.ag, i1 false)
  br label %_ZN6Assimp7Blender13FileBlockHeadC2EOS1_.exit10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZN6Assimp7Blender13FileBlockHeadC2EOS1_.exit
  store ptr %i.aa, ptr %i.l, align 8
  %i.ah = load i64, ptr %i.i, align 8
  store i64 %i.ah, ptr %i.m, align 8
  br label %_ZN6Assimp7Blender13FileBlockHeadC2EOS1_.exit10

_ZN6Assimp7Blender13FileBlockHeadC2EOS1_.exit10:  ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  store i64 %i.ab, ptr %i.n, align 8
  store ptr %i.i, ptr %i.h, align 8
  store i64 0, ptr %i.j, align 8
  store i8 0, ptr %i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false)
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_(ptr nonnull %0, i64 noundef %.08, i64 noundef %i.d, ptr noundef nonnull %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN6Assimp7Blender13FileBlockHeadC2EOS1_.exit10
  %i.ai = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.m
  br i1 %i.aj, label %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.ak = load i64, ptr %i.m, align 8
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #27
  br label %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit

_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit:       ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.not = icmp eq i64 %.08, 0
  %i.am = add nsw i64 %.08, -1
  %i.an = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.i
  br i1 %i.ao, label %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11: ; preds = %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit
  %i.ap = load i64, ptr %i.i, align 8
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #27
  br label %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit13

_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit13:     ; preds = %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !224

bb.g:                                             ; preds = %_ZN6Assimp7Blender13FileBlockHeadC2EOS1_.exit10
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.m
  br i1 %i.at, label %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14: ; preds = %bb.g
  %i.au = load i64, ptr %i.m, align 8
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #27
  br label %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit16

_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit16:     ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14
  %i.aw = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.i
  br i1 %i.ax, label %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17: ; preds = %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit16
  %i.ay = load i64, ptr %i.i, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #27
  br label %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit19

_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit19:     ; preds = %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.ar

.loopexit:                                        ; preds = %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit13, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_(ptr %0, ptr %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Assimp::Blender::FileBlockHead", align 8 ; 9 uses
  %5 = alloca %"struct.Assimp::Blender::FileBlockHead", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.a = load i64, ptr %2, align 8
  store i64 %i.a, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 12 uses
  store ptr %i.d, ptr %i.b, align 8
  %i.e = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 9 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp ult i64 %i.i, 16
  call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.k, i1 false)
end_hunk_0
begin_hunk_1_@_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_less_valEEvT_T0_SD_T1_RT2_:bb.a
  %.027 = phi i64 [ %1, %.lr.ph ], [ %.0928, %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit ] ; 4 uses
  %.0928.in = add nsw i64 %.027, -1
  %.0928 = sdiv i64 %.0928.in, 2                  ; 5 uses
  %i.c = getelementptr inbounds [72 x i8], ptr %0, i64 %.0928 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = load i64, ptr %i.b, align 8
  %i.g = icmp ult i64 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds [72 x i8], ptr %0, i64 %.027 ; 7 uses
  %i.i = load i64, ptr %i.c, align 8
  store i64 %i.i, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.j, align 8              ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  %i.o = load ptr, ptr %i.k, align 8              ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.q = icmp eq ptr %i.o, %i.p                   ; 2 uses
  br i1 %i.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  br i1 %i.q, label %bb.d, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.c
  br i1 %i.q, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8              ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  tail call void @llvm.assume(i1 %i.t)
  %.not21.i.i = icmp eq i64 %.0928, %.027
  br i1 %.not21.i.i, label %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit, label %bb.e, !prof !5

bb.e:                                             ; preds = %bb.d
  switch i64 %i.s, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.u = load i8, ptr %i.o, align 1
  store i8 %i.u, ptr %i.l, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.o, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.v = load i64, ptr %i.r, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.v, ptr %i.w, align 8
  %i.x = load ptr, ptr %i.j, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1
  %.pre.i.i = load ptr, ptr %i.k, align 8
  br label %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.o, ptr %i.j, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ab = load <2 x i64>, ptr %i.aa, align 8
  store <2 x i64> %i.ab, ptr %i.z, align 8
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ac = load i64, ptr %i.m, align 8
  store ptr %i.o, ptr %i.j, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.af = load <2 x i64>, ptr %i.ad, align 8
  store <2 x i64> %i.af, ptr %i.ae, align 8
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.l, ptr %i.k, align 8
  store i64 %i.ac, ptr %i.p, align 8
  br label %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.p, ptr %i.k, align 8
  br label %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit

_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit:    ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.h, %bb.i
  %i.ag = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.l, %bb.h ], [ %i.p, %bb.i ], [ %i.o, %bb.d ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.ah, align 8
  store i8 0, ptr %i.ag, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 32, i1 false)
  %i.ak = icmp sgt i64 %.0928, %2
  br i1 %i.ak, label %bb.b, label %.critedge, !llvm.loop !226

.critedge:                                        ; preds = %bb.b, %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %.0928, %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit ], [ %.027, %bb.b ]
  %i.al = getelementptr inbounds [72 x i8], ptr %0, i64 %.0.lcssa ; 8 uses
  %i.am = load i64, ptr %3, align 8
  store i64 %i.am, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ap = load ptr, ptr %i.an, align 8            ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 4 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  %i.as = load ptr, ptr %i.ao, align 8            ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 6 uses
  %i.au = icmp eq ptr %i.as, %i.at                ; 2 uses
  br i1 %i.ar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %.critedge
  br i1 %i.au, label %bb.j, label %.thread.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i10: ; preds = %.critedge
  br i1 %i.au, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i11

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8            ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  tail call void @llvm.assume(i1 %i.ax)
  %.not21.i.i13 = icmp eq ptr %3, %i.al
  br i1 %.not21.i.i13, label %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit18, label %bb.k, !prof !5

bb.k:                                             ; preds = %bb.j
  switch i64 %i.aw, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i14
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.ay = load i8, ptr %i.as, align 1
  store i8 %i.ay, ptr %i.ap, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i14

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %i.as, i64 %i.aw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i14: ; preds = %bb.m, %bb.l, %bb.k
  %i.az = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %i.az, ptr %i.ba, align 8
  %i.bb = load ptr, ptr %i.an, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.az
  store i8 0, ptr %i.bc, align 1
  %.pre.i.i15 = load ptr, ptr %i.ao, align 8
  br label %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit18

.thread.i.i17:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %i.as, ptr %i.an, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bf = load i64, ptr %i.be, align 8
  store i64 %i.bf, ptr %i.bd, align 8
  %i.bg = load i64, ptr %i.at, align 8
  store i64 %i.bg, ptr %i.aq, align 8
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i11: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i10
  %i.bh = load i64, ptr %i.aq, align 8
  store ptr %i.as, ptr %i.an, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %i.bj, ptr %i.bk, align 8
  %i.bl = load i64, ptr %i.at, align 8
  store i64 %i.bl, ptr %i.aq, align 8
  %.not.i.i12 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i12, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i11
  store ptr %i.ap, ptr %i.ao, align 8
  store i64 %i.bh, ptr %i.at, align 8
  br label %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit18

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i11, %.thread.i.i17
  store ptr %i.at, ptr %i.ao, align 8
  br label %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit18

_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit18:  ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i14, %bb.n, %bb.o
  %i.bm = phi ptr [ %.pre.i.i15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i14 ], [ %i.ap, %bb.n ], [ %i.at, %bb.o ], [ %i.as, %bb.j ]
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.bn, align 8
  store i8 0, ptr %i.bm, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt4swapIN6Assimp7Blender13FileBlockHeadEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Assimp::Blender::FileBlockHead", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = load i64, ptr %0, align 8
  store i64 %i.a, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 9 uses
  store ptr %i.d, ptr %i.b, align 8
  %i.e = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp ult i64 %i.i, 16
  call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.k, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.e, ptr %i.b, align 8
  %i.l = load i64, ptr %i.f, align 8
  store i64 %i.l, ptr %i.d, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.m = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.i, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store i64 %i.m, ptr %i.o, align 8
  store ptr %i.f, ptr %i.c, align 8
  store i64 0, ptr %i.n, align 8
  store i8 0, ptr %i.f, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  %i.r = load i64, ptr %1, align 8
  store i64 %i.r, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  %.not21.i.i = icmp eq ptr %1, %0
  br i1 %.not21.i.i, label %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  switch i64 %i.x, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.z = load i8, ptr %i.t, align 1
  store i8 %i.z, ptr %i.f, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr align 1 %i.t, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.aa = load i64, ptr %i.w, align 8             ; 2 uses
  store i64 %i.aa, ptr %i.n, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.aa
  store i8 0, ptr %i.ab, align 1
  %.pre.i.i = load ptr, ptr %i.s, align 8
  br label %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  store ptr %i.t, ptr %i.c, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load i64, ptr %i.ac, align 8
  store i64 %i.ad, ptr %i.n, align 8
  %i.ae = load i64, ptr %i.u, align 8
  store i64 %i.ae, ptr %i.f, align 8
  store ptr %i.u, ptr %i.s, align 8
  br label %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit

_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit:    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.g
  %i.af = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.t, %bb.c ], [ %i.u, %bb.g ]
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store i64 0, ptr %i.ag, align 8
  store i8 0, ptr %i.af, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false)
  %i.ai = load i64, ptr %2, align 8
  store i64 %i.ai, ptr %1, align 8
  %i.aj = load ptr, ptr %i.s, align 8             ; 6 uses
  %i.ak = icmp eq ptr %i.aj, %i.u
  %i.al = load ptr, ptr %i.b, align 8             ; 5 uses
  %i.am = icmp eq ptr %i.al, %i.d                 ; 2 uses
  br i1 %i.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit
  br i1 %i.am, label %bb.h, label %.thread.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i5: ; preds = %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit
  br i1 %i.am, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i6

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  %i.an = load i64, ptr %i.o, align 8             ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.ao)
  switch i64 %i.an, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.ap = load i8, ptr %i.al, align 1
  store i8 %i.ap, ptr %i.aj, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %i.al, i64 %i.an, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9: ; preds = %bb.j, %bb.i, %bb.h
  %i.aq = load i64, ptr %i.o, align 8             ; 2 uses
  store i64 %i.aq, ptr %i.ag, align 8
  %i.ar = load ptr, ptr %i.s, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aq
  store i8 0, ptr %i.as, align 1
  %.pre.i.i10 = load ptr, ptr %i.b, align 8
  br label %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit13

.thread.i.i12:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  store ptr %i.al, ptr %i.s, align 8
  %i.at = load <2 x i64>, ptr %i.o, align 8
  store <2 x i64> %i.at, ptr %i.ag, align 8
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i6: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i5
  %i.au = load i64, ptr %i.u, align 8
  store ptr %i.al, ptr %i.s, align 8
  %i.av = load <2 x i64>, ptr %i.o, align 8
  store <2 x i64> %i.av, ptr %i.ag, align 8
  %.not.i.i7 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i7, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i6
  store ptr %i.aj, ptr %i.b, align 8
  store i64 %i.au, ptr %i.d, align 8
  br label %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit13

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i6, %.thread.i.i12
  store ptr %i.d, ptr %i.b, align 8
  br label %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit13

_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit13:  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9, %bb.k, %bb.l
  %3 = phi ptr [ %.pre.i.i10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9 ], [ %i.aj, %bb.k ], [ %i.d, %bb.l ]
  store i64 0, ptr %i.o, align 8
  store i8 0, ptr %3, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  %i.aw = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.d
  br i1 %i.ax, label %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit13
  %i.ay = load i64, ptr %i.d, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #27
  br label %_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit

_ZN6Assimp7Blender13FileBlockHeadD2Ev.exit:       ; preds = %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #22

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Assimp::Blender::FileBlockHead", align 8 ; 9 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit19, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.020 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.not21 = icmp eq ptr %.sroa.0.020, %1
  br i1 %.not21, label %.loopexit19, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.g = ptrtoint ptr %0 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not21.i.i = icmp eq ptr %2, %0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.q
  %.sroa.0.023 = phi ptr [ %.sroa.0.020, %.lr.ph ], [ %.sroa.0.0, %bb.q ] ; 6 uses
  %.pn22 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.023, %bb.q ] ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.pn22, i64 120
  %i.m = load i64, ptr %i.l, align 8
  %i.n = load i64, ptr %i.b, align 8
  %i.o = icmp ult i64 %i.m, %i.n
  br i1 %i.o, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.p = load i64, ptr %.sroa.0.023, align 8      ; 2 uses
  store i64 %i.p, ptr %2, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.pn22, i64 80 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.pn22, i64 96 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.pn22, i64 88
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN6Assimp7Blender13FileBlockHeadC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  store ptr %i.r, ptr %i.c, align 8
  %i.y = load i64, ptr %i.s, align 8
  store i64 %i.y, ptr %i.d, align 8
  br label %_ZN6Assimp7Blender13FileBlockHeadC2EOS1_.exit

_ZN6Assimp7Blender13FileBlockHeadC2EOS1_.exit:    ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.pn22, i64 88 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  store i64 %i.aa, ptr %i.e, align 8
  store ptr %i.s, ptr %i.q, align 8
  store i64 0, ptr %i.z, align 8
  store i8 0, ptr %i.s, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn22, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 32, i1 false)
  %i.ac = ptrtoint ptr %.sroa.0.023 to i64
  %i.ad = sub i64 %i.ac, %i.g                     ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN6Assimp7Blender13FileBlockHeadC2EOS1_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %.pn22, i64 144
  %i.ag = udiv exact i64 %i.ad, 72
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bn, %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit.i.i.i.i.i ], [ %i.ag, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.ai, %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit.i.i.i.i.i ], [ %i.af, %.lr.ph.preheader.i.i.i.i.i ] ; 7 uses
  %.078.i.i.i.i.i = phi ptr [ %i.ah, %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit.i.i.i.i.i ], [ %.sroa.0.023, %.lr.ph.preheader.i.i.i.i.i ] ; 8 uses
  %i.ah = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -72 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -72 ; 2 uses
  %i.aj = load i64, ptr %i.ah, align 8
  store i64 %i.aj, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -64 ; 4 uses
  %i.al = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -64 ; 4 uses
  %i.am = load ptr, ptr %i.ak, align 8            ; 6 uses
  %i.an = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -48 ; 4 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  %i.ap = load ptr, ptr %i.al, align 8            ; 5 uses
  %i.aq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -48 ; 6 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq                ; 2 uses
  br i1 %i.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.ar, label %bb.e, label %.thread.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.ar, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.as = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -56 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8            ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.au)
  switch i64 %i.at, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.av = load i8, ptr %i.ap, align 1
  store i8 %i.av, ptr %i.am, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr align 1 %i.ap, i64 %i.at, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.aw = load i64, ptr %i.as, align 8            ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -56
  store i64 %i.aw, ptr %i.ax, align 8
  %i.ay = load ptr, ptr %i.ak, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store i8 0, ptr %i.az, align 1
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.al, align 8
  br label %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ba = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -56
  store ptr %i.ap, ptr %i.ak, align 8
  %i.bb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -56
  %i.bc = load i64, ptr %i.bb, align 8
  store i64 %i.bc, ptr %i.ba, align 8
  %i.bd = load i64, ptr %i.aq, align 8
  store i64 %i.bd, ptr %i.an, align 8
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.be = load i64, ptr %i.an, align 8
  store ptr %i.ap, ptr %i.ak, align 8
  %i.bf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -56
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -56
  store i64 %i.bg, ptr %i.bh, align 8
  %i.bi = load i64, ptr %i.aq, align 8
  store i64 %i.bi, ptr %i.an, align 8
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i
  store ptr %i.am, ptr %i.al, align 8
  store i64 %i.be, ptr %i.aq, align 8
  br label %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit.i.i.i.i.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i
  store ptr %i.aq, ptr %i.al, align 8
  br label %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit.i.i.i.i.i

_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i
  %i.bj = phi ptr [ %.pre.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i ], [ %i.am, %bb.h ], [ %i.aq, %bb.i ]
  %i.bk = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -56
  store i64 0, ptr %i.bk, align 8
  store i8 0, ptr %i.bj, align 1
  %i.bl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
  %i.bm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 32, i1 false)
  %i.bn = add nsw i64 %.010.i.i.i.i.i, -1
  %i.bo = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i, label %.loopexit.loopexit, !llvm.loop !227

.loopexit.loopexit:                               ; preds = %_ZN6Assimp7Blender13FileBlockHeadaSEOS1_.exit.i.i.i.i.i
  %.pre = load i64, ptr %2, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZN6Assimp7Blender13FileBlockHeadC2EOS1_.exit
end_hunk_1
