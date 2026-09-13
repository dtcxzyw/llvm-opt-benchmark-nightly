Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/XGLLoader?download=true
inline.NumInlined: 2834
inline.NumDeleted: 1257
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN15DeadlyErrorBaseC2IJERA30_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_:bb.a
_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #26
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #26
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #26
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJPKcRA29_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(29) %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
  invoke void @_ZN15DeadlyErrorBaseC2IJRA29_KcEPS1_EEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(29) %2)
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
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #26
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #26
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRA29_KcEPS1_EEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(29) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #26
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJERA29_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(29) %3)
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
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #26
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #26
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #26
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJERA29_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(29) %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(29) %2) #26
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(29) %2, i64 noundef %i.a) ; 0 uses
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
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #26
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #26
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #26
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElNS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3) local_unnamed_addr #6 comdat {
bb.a:
  %.fr29 = freeze ptr %1                          ; 3 uses
  %.fr28 = freeze ptr %0                          ; 34 uses
  %i.a = ptrtoint ptr %.fr28 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr29 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_SD_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr28, i64 4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 6 uses
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph56

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEET_SD_SD_T0_.exit
  %i.i = icmp eq i64 %i.dw, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph56, !llvm.loop !185

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i27.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.ga, %bb.b ] ; 2 uses
  %storemerge25.lcssa = phi ptr [ %.fr29, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.j = lshr i64 %.fr.i27.lcssa, 2               ; 2 uses
  %i.k = add nsw i64 %i.j, -2                     ; 2 uses
  %i.l = lshr i64 %i.k, 1                         ; 3 uses
  %i.m = add nsw i64 %i.j, -1
  %i.n = lshr i64 %i.m, 1                         ; 2 uses
  %i.o = and i64 %.fr.i27.lcssa, 4
  %i.p = icmp eq i64 %i.o, 0
  %i.q = or disjoint i64 %i.k, 1                  ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.fr28, i64 %i.q
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.fr28, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEljNS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_T0_SE_T1_T2_.exit.i.i, %._crit_edge
  %.09.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.bn, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEljNS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_T0_SE_T1_T2_.exit.i.i ] ; 8 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %.fr28, i64 %.09.i.i
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = icmp slt i64 %.09.i.i, %i.n
  br i1 %i.v, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.036.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.09.i.i, %bb.c ] ; 2 uses
  %i.w = shl i64 %.036.i.i.i, 1                   ; 2 uses
  %i.x = add i64 %i.w, 2                          ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %.fr28, i64 %i.x
  %i.z = or disjoint i64 %i.w, 1                  ; 2 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %.fr28, i64 %i.z
  %i.ab = load i32, ptr %i.y, align 4
  %i.ac = load i32, ptr %i.aa, align 4
  %i.ad = zext i32 %i.ab to i64
  %i.ae = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ad
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 232
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = zext i32 %i.ac to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 232
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = icmp ult i32 %i.ai, %i.an
  %spec.select.i.i.i = select i1 %i.ao, i64 %i.z, i64 %i.x ; 4 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %.fr28, i64 %spec.select.i.i.i
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = getelementptr inbounds [4 x i8], ptr %.fr28, i64 %.036.i.i.i
  store i32 %i.aq, ptr %i.ar, align 4
  %i.as = icmp slt i64 %spec.select.i.i.i, %i.n
  br i1 %i.as, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !186

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.09.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.at = icmp eq i64 %.0.lcssa.i.i.i, %i.l
  %or.cond.i.i = select i1 %i.p, i1 %i.at, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.au = load i32, ptr %i.r, align 4
  store i32 %i.au, ptr %i.s, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.q, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.av = icmp sgt i64 %.1.i.i.i, %.09.i.i
  br i1 %i.av, label %.lr.ph.i.i.i.i15, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEljNS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_T0_SE_T1_T2_.exit.i.i

.lr.ph.i.i.i.i15:                                 ; preds = %bb.e
  %i.aw = zext i32 %i.u to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i15
  %.019.i.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph.i.i.i.i15 ], [ %.0920.i.i.i.i, %bb.g ] ; 3 uses
  %.0920.in.i.i.i.i = add nsw i64 %.019.i.i.i.i, -1
  %.0920.i.i.i.i = sdiv i64 %.0920.in.i.i.i.i, 2  ; 4 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.fr28, i64 %.0920.i.i.i.i
  %i.ay = load i32, ptr %i.ax, align 4            ; 2 uses
  %i.az = zext i32 %i.ay to i64
  %i.ba = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.az
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 232
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.aw
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 232
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = icmp ult i32 %i.be, %i.bi
  br i1 %i.bj, label %bb.g, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEljNS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_T0_SE_T1_T2_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.fr28, i64 %.019.i.i.i.i
  store i32 %i.ay, ptr %i.bk, align 4
  %i.bl = icmp sgt i64 %.0920.i.i.i.i, %.09.i.i
  br i1 %i.bl, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEljNS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_T0_SE_T1_T2_.exit.i.i, !llvm.loop !187

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEljNS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_T0_SE_T1_T2_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i14 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0920.i.i.i.i, %bb.g ], [ %.019.i.i.i.i, %bb.f ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i14
  store i32 %i.u, ptr %i.bm, align 4
  %.not.i.i = icmp eq i64 %.09.i.i, 0
  %i.bn = add nsw i64 %.09.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !188

.lr.ph.i.i:                                       ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEljNS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_T0_SE_T1_T2_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_SD_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.bo, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_SD_RT0_.exit.i.i ], [ %storemerge25.lcssa, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEljNS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_T0_SE_T1_T2_.exit.i.i ]
  %i.bo = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4 ; 4 uses
  %i.bp = load i32, ptr %i.bo, align 4            ; 2 uses
  %i.bq = load i32, ptr %.fr28, align 4
  store i32 %i.bq, ptr %i.bo, align 4
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = sub i64 %i.br, %i.a                     ; 3 uses
  %i.bt = ashr exact i64 %i.bs, 2                 ; 3 uses
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = lshr i64 %i.bu, 1
  %i.bw = icmp sgt i64 %i.bt, 2
  br i1 %i.bw, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.036.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.bx = shl i64 %.036.i.i.i.i, 1                ; 2 uses
  %i.by = add i64 %i.bx, 2                        ; 2 uses
  %i.bz = getelementptr inbounds [4 x i8], ptr %.fr28, i64 %i.by
  %i.ca = or disjoint i64 %i.bx, 1                ; 2 uses
  %i.cb = getelementptr inbounds [4 x i8], ptr %.fr28, i64 %i.ca
  %i.cc = load i32, ptr %i.bz, align 4
  %i.cd = load i32, ptr %i.cb, align 4
  %i.ce = zext i32 %i.cc to i64
  %i.cf = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.ce
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 232
  %i.cj = load i32, ptr %i.ci, align 8
  %i.ck = zext i32 %i.cd to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 232
  %i.co = load i32, ptr %i.cn, align 8
  %i.cp = icmp ult i32 %i.cj, %i.co
  %spec.select.i.i.i.i = select i1 %i.cp, i64 %i.ca, i64 %i.by ; 4 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %.fr28, i64 %spec.select.i.i.i.i
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = getelementptr inbounds [4 x i8], ptr %.fr28, i64 %.036.i.i.i.i
  store i32 %i.cr, ptr %i.cs, align 4
  %i.ct = icmp slt i64 %spec.select.i.i.i.i, %i.bv
  br i1 %i.ct, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !186

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.cu = and i64 %i.bs, 4
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cw = add nsw i64 %i.bt, -2
  %i.cx = ashr exact i64 %i.cw, 1
  %i.cy = icmp eq i64 %.0.lcssa.i.i.i.i, %i.cx
  br i1 %i.cy, label %.thread.i.i.i, label %bb.i

.thread.i.i.i:                                    ; preds = %bb.h
  %i.cz = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.da = or disjoint i64 %i.cz, 1                ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.fr28, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i
  store i32 %i.dc, ptr %i.dd, align 4
  br label %.lr.ph.i.i.i.i.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_SD_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.thread.i.i.i
  %.1.i7.i.i.i = phi i64 [ %i.da, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.i ]
  %i.de = zext i32 %i.bp to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i7.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i89.i.i.i, %bb.k ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.fr28, i64 %.0920.i.i89.i.i.i
  %i.dg = load i32, ptr %i.df, align 4            ; 2 uses
  %i.dh = zext i32 %i.dg to i64
  %i.di = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dh
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 232
  %i.dm = load i32, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.de
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 232
  %i.dq = load i32, ptr %i.dp, align 8
  %i.dr = icmp ult i32 %i.dm, %i.dq
  br i1 %i.dr, label %bb.k, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_SD_RT0_.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.ds = getelementptr inbounds [4 x i8], ptr %.fr28, i64 %.019.i.i.i.i.i
  store i32 %i.dg, ptr %i.ds, align 4
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_SD_RT0_.exit.i.i, label %bb.j, !llvm.loop !187

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_SD_RT0_.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.i ], [ %.019.i.i.i.i.i, %bb.j ], [ 0, %bb.k ]
  %i.dt = getelementptr inbounds [4 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.bp, ptr %i.dt, align 4
  %i.du = icmp sgt i64 %i.bs, 4
  br i1 %i.du, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_SD_T0_.exit, !llvm.loop !189

.lr.ph56:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2555 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr29, %.lr.ph ] ; 3 uses
  %.02654 = phi i64 [ %i.dw, %bb.b ], [ %2, %.lr.ph ]
  %i.dv = phi i64 [ %i.gb, %bb.b ], [ %i.d, %.lr.ph ]
  %i.dw = add nsw i64 %.02654, -1                 ; 3 uses
  %i.dx = lshr i64 %i.dv, 1
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.fr28, i64 %i.dx ; 3 uses
  %i.dz = getelementptr inbounds i8, ptr %storemerge2555, i64 -4 ; 3 uses
  %i.ea = load i32, ptr %i.f, align 4             ; 3 uses
  %i.eb = load i32, ptr %i.dy, align 4            ; 3 uses
  %i.ec = zext i32 %i.ea to i64
  %i.ed = load ptr, ptr %i.g, align 8             ; 3 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ec
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 232
  %i.eh = load i32, ptr %i.eg, align 8            ; 3 uses
  %i.ei = zext i32 %i.eb to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ei
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 232
  %i.em = load i32, ptr %i.el, align 8            ; 3 uses
  %i.en = icmp ult i32 %i.eh, %i.em
  %i.eo = load i32, ptr %i.dz, align 4            ; 3 uses
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ep
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 232
  %i.et = load i32, ptr %i.es, align 8            ; 4 uses
  br i1 %i.en, label %bb.l, label %bb.q

bb.l:                                             ; preds = %.lr.ph56
  %i.eu = icmp ult i32 %i.em, %i.et
  br i1 %i.eu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ev = load i32, ptr %.fr28, align 4
  store i32 %i.eb, ptr %.fr28, align 4
  store i32 %i.ev, ptr %i.dy, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  %i.ew = icmp ult i32 %i.eh, %i.et
  %i.ex = load i32, ptr %.fr28, align 4           ; 2 uses
  br i1 %i.ew, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 %i.eo, ptr %.fr28, align 4
  store i32 %i.ex, ptr %i.dz, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.p:                                             ; preds = %bb.n
  store i32 %i.ea, ptr %.fr28, align 4
  store i32 %i.ex, ptr %i.f, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.q:                                             ; preds = %.lr.ph56
  %i.ey = icmp ult i32 %i.eh, %i.et
  br i1 %i.ey, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ez = load i32, ptr %.fr28, align 4
  store i32 %i.ea, ptr %.fr28, align 4
  store i32 %i.ez, ptr %i.f, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  %i.fa = icmp ult i32 %i.em, %i.et
  %i.fb = load i32, ptr %.fr28, align 4           ; 2 uses
  br i1 %i.fa, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 %i.eo, ptr %.fr28, align 4
  store i32 %i.fb, ptr %i.dz, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.u:                                             ; preds = %bb.s
  store i32 %i.eb, ptr %.fr28, align 4
  store i32 %i.fb, ptr %i.dy, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_SD_SD_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_SD_SD_T0_.exit.i.preheader: ; preds = %bb.u, %bb.t, %bb.r, %bb.p, %bb.o, %bb.m
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_SD_SD_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_SD_SD_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_SD_SD_T0_.exit.i.preheader, %bb.x
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.x ], [ %storemerge2555, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_SD_SD_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.fq, %bb.x ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_SD_SD_T0_.exit.i.preheader ]
  %i.fc = load i32, ptr %.fr28, align 4
  %i.fd = load ptr, ptr %i.g, align 8             ; 3 uses
  %i.fe = zext i32 %i.fc to i64
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fe
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 232
  %i.fi = load i32, ptr %i.fh, align 8            ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_SD_SD_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_SD_SD_T0_.exit.i ], [ %i.fq, %bb.v ] ; 8 uses
  %i.fj = load i32, ptr %.sroa.012.1.i.i, align 4 ; 2 uses
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fk
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 232
  %i.fo = load i32, ptr %i.fn, align 8
  %i.fp = icmp ult i32 %i.fo, %i.fi
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 4 ; 2 uses
  br i1 %i.fp, label %bb.v, label %.preheader.i.i, !llvm.loop !190

.preheader.i.i:                                   ; preds = %bb.v, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.v ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -4 ; 5 uses
  %i.fr = load i32, ptr %.sroa.09.1.i.i, align 4  ; 2 uses
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fs
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 232
  %i.fw = load i32, ptr %i.fv, align 8
  %i.fx = icmp ult i32 %i.fi, %i.fw
  br i1 %i.fx, label %.preheader.i.i, label %bb.w, !llvm.loop !191

bb.w:                                             ; preds = %.preheader.i.i
  %i.fy = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.fy, label %bb.x, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEET_SD_SD_T0_.exit

bb.x:                                             ; preds = %bb.w
  store i32 %i.fr, ptr %.sroa.012.1.i.i, align 4
  store i32 %i.fj, ptr %.sroa.09.1.i.i, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_SD_SD_T0_.exit.i, !llvm.loop !192

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEET_SD_SD_T0_.exit: ; preds = %bb.w
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElNS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2555, i64 noundef %i.dw, ptr nonnull %3)
  %i.fz = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.ga = sub i64 %i.fz, %i.a                     ; 2 uses
  %i.gb = ashr exact i64 %i.ga, 2                 ; 2 uses
  %i.gc = icmp sgt i64 %i.gb, 16
  br i1 %i.gc, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_SD_T0_.exit, !llvm.loop !185

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_SD_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEET_SD_SD_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_SD_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.g

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 4 uses
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %.sroa.0.021.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.021.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.021.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.021.i.idx ; 4 uses
  %i.f = load i32, ptr %.sroa.0.021.i.ptr, align 4 ; 2 uses
  %i.g = load i32, ptr %0, align 4                ; 2 uses
  %i.h = zext i32 %i.f to i64                     ; 2 uses
  %i.i = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 232
  %i.m = load i32, ptr %i.l, align 8              ; 2 uses
  %i.n = zext i32 %i.g to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 232
  %i.r = load i32, ptr %i.q, align 8
  %i.s = icmp ult i32 %i.m, %i.r
  br i1 %i.s, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.t = icmp samesign ugt i64 %.sroa.0.021.i.idx, 4
  br i1 %i.t, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.021.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 4
  store i32 %i.g, ptr %i.u, align 4
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.v = load i32, ptr %.pn20.i, align 4          ; 2 uses
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 232
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = icmp ult i32 %i.m, %i.aa
  br i1 %i.ab, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.ac = phi i32 [ %i.ad, %.lr.ph.i.i ], [ %i.v, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i.ptr, %bb.f ]
  store i32 %i.ac, ptr %.sroa.05.09.i.i, align 4
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.ad = load i32, ptr %.sroa.0.0.i.i, align 4   ; 2 uses
  %i.ae = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.h
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 232
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = zext i32 %i.ad to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 232
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = icmp ult i32 %i.ai, %i.an
  br i1 %i.ao, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !193

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.021.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i32 %i.f, ptr %.sink.i, align 4
  %.sroa.0.021.i.add = add nuw nsw i64 %.sroa.0.021.i.idx, 4 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.021.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_T0_.exit, label %bb.b, !llvm.loop !194

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not7.i = icmp eq ptr %i.ap, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_T0_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops14_Val_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_T0_.exit.i
  %.sroa.0.08.i = phi ptr [ %i.br, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops14_Val_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_T0_.exit.i ], [ %i.ap, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_T0_.exit ] ; 5 uses
  %i.aq = load i32, ptr %.sroa.0.08.i, align 4    ; 2 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -4 ; 2 uses
  %i.as = load i32, ptr %.sroa.0.08.i.i, align 4  ; 2 uses
  %i.at = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ar
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 232
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = zext i32 %i.as to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 232
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = icmp ult i32 %i.ax, %i.bc
  br i1 %i.bd, label %.lr.ph.i.i12, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops14_Val_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_T0_.exit.i

.lr.ph.i.i12:                                     ; preds = %.lr.ph.i10, %.lr.ph.i.i12
  %i.be = phi i32 [ %i.bf, %.lr.ph.i.i12 ], [ %i.as, %.lr.ph.i10 ]
  %.sroa.0.010.i.i13 = phi ptr [ %.sroa.0.0.i.i15, %.lr.ph.i.i12 ], [ %.sroa.0.08.i.i, %.lr.ph.i10 ] ; 3 uses
  %.sroa.05.09.i.i14 = phi ptr [ %.sroa.0.010.i.i13, %.lr.ph.i.i12 ], [ %.sroa.0.08.i, %.lr.ph.i10 ]
  store i32 %i.be, ptr %.sroa.05.09.i.i14, align 4
  %.sroa.0.0.i.i15 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i13, i64 -4 ; 2 uses
  %i.bf = load i32, ptr %.sroa.0.0.i.i15, align 4 ; 2 uses
  %i.bg = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.ar
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 232
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = zext i32 %i.bf to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 232
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = icmp ult i32 %i.bk, %i.bp
  br i1 %i.bq, label %.lr.ph.i.i12, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops14_Val_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_T0_.exit.i, !llvm.loop !193

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops14_Val_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i12, %.lr.ph.i10
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.08.i, %.lr.ph.i10 ], [ %.sroa.0.010.i.i13, %.lr.ph.i.i12 ]
  store i32 %i.aq, ptr %.sroa.05.0.lcssa.i.i, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 4 ; 2 uses
  %.not.i11 = icmp eq ptr %i.br, %1
  br i1 %.not.i11, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_T0_.exit, label %.lr.ph.i10, !llvm.loop !195

bb.g:                                             ; preds = %bb.a
  %i.bs = icmp eq ptr %0, %1
  br i1 %i.bs, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_T0_.exit, label %.preheader.i16

.preheader.i16:                                   ; preds = %bb.g
  %.sroa.0.018.i17 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not19.i18 = icmp eq ptr %.sroa.0.018.i17, %1
  br i1 %.not19.i18, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_T0_.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.preheader.i16
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i22, %.lr.ph.i19
  %.sroa.0.021.i20 = phi ptr [ %.sroa.0.018.i17, %.lr.ph.i19 ], [ %.sroa.0.0.i24, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i22 ] ; 6 uses
  %.pn20.i21 = phi ptr [ %0, %.lr.ph.i19 ], [ %.sroa.0.021.i20, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i22 ] ; 4 uses
  %i.bu = load i32, ptr %.sroa.0.021.i20, align 4 ; 2 uses
  %i.bv = load i32, ptr %0, align 4               ; 2 uses
  %i.bw = zext i32 %i.bu to i64                   ; 2 uses
  %i.bx = load ptr, ptr %i.bt, align 8            ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 232
  %i.cb = load i32, ptr %i.ca, align 8            ; 2 uses
  %i.cc = zext i32 %i.bv to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 232
  %i.cg = load i32, ptr %i.cf, align 8
  %i.ch = icmp ult i32 %i.cb, %i.cg
  br i1 %i.ch, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ci = ptrtoint ptr %.sroa.0.021.i20 to i64
  %i.cj = sub i64 %i.ci, %i.b                     ; 3 uses
  %i.ck = ashr exact i64 %i.cj, 2                 ; 2 uses
  %i.cl = icmp sgt i64 %i.ck, 1
  br i1 %i.cl, label %bb.j, label %bb.k, !prof !9

bb.j:                                             ; preds = %bb.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.pn20.i21, i64 8
  %i.cn = sub nsw i64 0, %i.ck
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.cn
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.co, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.cj, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i22

bb.k:                                             ; preds = %bb.i
  %i.cp = icmp eq i64 %i.cj, 4
  br i1 %i.cp, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i22

bb.l:                                             ; preds = %bb.k
  %i.cq = getelementptr inbounds nuw i8, ptr %.pn20.i21, i64 4
  store i32 %i.bv, ptr %i.cq, align 4
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i22

bb.m:                                             ; preds = %bb.h
  %i.cr = load i32, ptr %.pn20.i21, align 4       ; 2 uses
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 232
  %i.cw = load i32, ptr %i.cv, align 8
end_hunk_0
