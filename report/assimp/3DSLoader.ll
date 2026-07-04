inline.NumInlined: 2736
inline.NumDeleted: 1010
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 18
begin_hunk_0_@__cxa_end_catch

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt15_Sp_counted_ptrIPN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #28, !inline_history !136
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4              ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #28, !inline_history !136
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA38_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(38) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(38) %2) #28
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(38) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %4, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %4, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #28
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA42_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(42) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(42) %2) #28
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(42) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %4, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %4, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #28
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  resume { ptr, i32 } %i.q
}

declare void @_ZN6Assimp13SGSpatialSortC1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #3

declare void @_ZN6Assimp13SGSpatialSort3AddERK10aiVector3tIfEjj(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(12), i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN6Assimp13SGSpatialSort7PrepareEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare void @_ZNK6Assimp13SGSpatialSort13FindPositionsERK10aiVector3tIfEjfRSt6vectorIjSaIjEEb(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(12), i32 noundef, float noundef, ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI10aiVector3tIfESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %1, align 8                ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8                ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 12
  %2 = ptrtoaddr ptr %i.c to i64
  %3 = ptrtoaddr ptr %i.b to i64
  %i.o = icmp ugt i64 %i.n, 768614336404564650
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #31 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i
  %i.q = add i64 %3, -12
  %i.r = sub i64 %i.q, %2
  %.fr.i = freeze i64 %i.r                        ; 2 uses
  %i.s = urem i64 %.fr.i, 12
  %i.t = add i64 %.fr.i, 12
  %i.u = sub i64 %i.t, %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.p, ptr align 4 %i.c, i64 %i.u, i1 false)
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #29
  br label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %i.p, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.v, ptr %i.g, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.f:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.z, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = icmp sgt i64 %i.f, 12
  br i1 %i.aa, label %bb.h, label %bb.i, !prof !137

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = icmp eq i64 %i.f, 12
  br i1 %i.ab, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.c, i64 12, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %bb.f
  %i.ac = icmp sgt i64 %i.z, 12
  br i1 %i.ac, label %bb.l, label %bb.m, !prof !137

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.z, i1 false)
  br label %_ZSt4copyIP10aiVector3tIfES2_ET0_T_S4_S3_.exit

bb.m:                                             ; preds = %bb.k
  %i.ad = icmp eq i64 %i.z, 12
  br i1 %i.ad, label %bb.n, label %_ZSt4copyIP10aiVector3tIfES2_ET0_T_S4_S3_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.c, i64 12, i1 false)
  br label %_ZSt4copyIP10aiVector3tIfES2_ET0_T_S4_S3_.exit

_ZSt4copyIP10aiVector3tIfES2_ET0_T_S4_S3_.exit:   ; preds = %bb.l, %bb.m, %bb.n
  %i.ae = load ptr, ptr %1, align 8
  %i.af = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj ; 2 uses
  %i.al = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIP10aiVector3tIfES2_ET0_T_S4_S3_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %i.af, %_ZSt4copyIP10aiVector3tIfES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %i.ak, %_ZSt4copyIP10aiVector3tIfES2_ET0_T_S4_S3_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.011.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0810.i.i.i.i, i64 12, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 12 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 12
  %.not.i.i.i.i = icmp eq ptr %i.am, %i.al
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !138

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIP10aiVector3tIfES2_ET0_T_S4_S3_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.ao = load ptr, ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorI10aiVector3tIfESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(12) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.9 = alloca [15 x i8], align 1            ; 14 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 12
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %.sroa.4.8.copyload = load i8, ptr %3, align 4  ; 11 uses
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..sroa_idx, i64 11, i1 false)
  %i.i = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.j = sub i64 %i.f, %i.i                       ; 3 uses
  %i.k = sdiv exact i64 %i.j, 12                  ; 3 uses
  %i.l = icmp ugt i64 %i.k, %2
  br i1 %i.l, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %.idx = mul i64 %2, -12                         ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.d, i64 %.idx ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i64 %.idx, 0
  br i1 %.not11.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.d, %bb.d ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i ], [ %i.m, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.013.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.08.012.i.i.i.i.i, i64 12, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 12 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 12
  %.not.i.i.i.i.i = icmp eq ptr %i.n, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !139

_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit

_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit.loopexit, %bb.d
  %i.p = phi ptr [ %.pre, %_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit.loopexit ], [ %i.d, %bb.d ]
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %2
  store ptr %i.q, ptr %i.c, align 8
  %i.r = ptrtoint ptr %i.m to i64
  %i.s = sub i64 %i.r, %i.i                       ; 4 uses
  %i.t = icmp sgt i64 %i.s, 12
  br i1 %i.t, label %bb.e, label %bb.f, !prof !137

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.neg132 = udiv exact i64 %i.s, 12
  %.neg132.neg = sub nsw i64 0, %.neg132
  %i.u = getelementptr inbounds [12 x i8], ptr %i.d, i64 %.neg132.neg
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.u, ptr align 4 %1, i64 %i.s, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.v = icmp eq i64 %i.s, 12
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds i8, ptr %i.d, i64 -12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.w, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.idx115 = mul nuw nsw i64 %2, 12               ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.idx115
  %i.y = add nsw i64 %.idx115, -12                ; 2 uses
  %i.z = udiv i64 %i.y, 12
  %i.aa = add nuw nsw i64 %i.z, 1
  %xtraiter142 = and i64 %i.aa, 3                 ; 2 uses
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %bb.h, %.lr.ph.i.i.i.prol
  %.06.i.i.i.prol = phi ptr [ %i.ab, %.lr.ph.i.i.i.prol ], [ %1, %bb.h ] ; 3 uses
  %prol.iter144 = phi i64 [ %prol.iter144.next, %.lr.ph.i.i.i.prol ], [ 0, %bb.h ]
  store i8 %.sroa.4.8.copyload, ptr %.06.i.i.i.prol, align 4
  %.sroa.9.8..06.i.i.i.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %.06.i.i.i.prol, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..06.i.i.i.sroa_idx.prol, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.06.i.i.i.prol, i64 12 ; 2 uses
  %prol.iter144.next = add i64 %prol.iter144, 1   ; 2 uses
  %prol.iter144.cmp.not = icmp eq i64 %prol.iter144.next, %xtraiter142
  br i1 %prol.iter144.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !140

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %bb.h
  %.06.i.i.i.unr = phi ptr [ %1, %bb.h ], [ %i.ab, %.lr.ph.i.i.i.prol ]
  %i.ac = icmp ult i64 %i.y, 36
  br i1 %i.ac, label %_ZSt4fillIP10aiVector3tIfES1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.06.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  store i8 %.sroa.4.8.copyload, ptr %.06.i.i.i, align 4
  %.sroa.9.8..06.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..06.i.i.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 12
  store i8 %.sroa.4.8.copyload, ptr %i.ad, align 4
end_hunk_0
begin_hunk_1_@_ZN6Assimp6Logger13formatMessageIJERPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_:bb.a
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.aq) #28
  ret void

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 13 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4                ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !137

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4
  store i32 %i.s, ptr %i.d, align 4
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = load ptr, ptr %i.c, align 8
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !137

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4
  store i32 %i.ac, ptr %i.ab, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec129 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec129, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert130 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat131 = shufflevector <4 x i32> %broadcast.splatinsert130, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph127
  %index133 = phi i64 [ 0, %vector.ph127 ], [ %index.next135, %vector.body132 ] ; 2 uses
  %i.aj = shl i64 %index133, 2
  %next.gep134 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep134, i64 16
  store <4 x i32> %broadcast.splat131, ptr %next.gep134, align 4
  store <4 x i32> %broadcast.splat131, ptr %i.ak, align 4
  %index.next135 = add nuw i64 %index133, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next135, %n.vec129
  br i1 %i.al, label %middle.block136, label %vector.body132, !llvm.loop !239

middle.block136:                                  ; preds = %vector.body132
  %cmp.n137 = icmp eq i64 %i.ag, %n.vec129
  br i1 %cmp.n137, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block136
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block136 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !242

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %i.ar = sub i64 %i.aq, %i.k
  %i.as = add i64 %i.ar, -4                       ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.ay, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !243

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !244

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8
  %i.bb = icmp sgt i64 %i.k, 4
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !137

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 4
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %1, align 4
  store i32 %i.bd, ptr %.0.i.i.i.i.i, align 4
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = load ptr, ptr %i.c, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69
  %4 = add i64 %i.f, -4
  %5 = sub i64 %4, %i.j                           ; 2 uses
  %i.bg = lshr i64 %5, 2
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check112 = icmp ult i64 %5, 28
  br i1 %min.iters.check112, label %.lr.ph.i.i.i71.preheader153, label %vector.ph113

vector.ph113:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bh, 9223372036854775800  ; 3 uses
  %i.bi = shl i64 %n.vec115, 2
  %i.bj = getelementptr i8, ptr %1, i64 %i.bi
  %broadcast.splatinsert116 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat117 = shufflevector <4 x i32> %broadcast.splatinsert116, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph113
  %index119 = phi i64 [ 0, %vector.ph113 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bk = shl i64 %index119, 2
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bk ; 2 uses
  %i.bl = getelementptr i8, ptr %next.gep120, i64 16
  store <4 x i32> %broadcast.splat117, ptr %next.gep120, align 4
  store <4 x i32> %broadcast.splat117, ptr %i.bl, align 4
  %index.next121 = add nuw i64 %index119, 8       ; 2 uses
  %i.bm = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bm, label %middle.block122, label %vector.body118, !llvm.loop !245

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bh, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader153

.lr.ph.i.i.i71.preheader153:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bj, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader153, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bn, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader153 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bn, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !246

bb.q:                                             ; preds = %bb.b
  %i.bo = load ptr, ptr %0, align 8               ; 5 uses
  %i.bp = ptrtoint ptr %i.bo to i64               ; 3 uses
  %i.bq = sub i64 %i.f, %i.bp
  %i.br = ashr exact i64 %i.bq, 2                 ; 4 uses
  %i.bs = sub nsw i64 2305843009213693951, %i.br
  %i.bt = icmp ult i64 %i.bs, %2
  br i1 %i.bt, label %bb.r, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #30
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.br, i64 %2)
  %i.bu = add nsw i64 %.sroa.speculated.i, %i.br  ; 2 uses
  %i.bv = icmp ult i64 %i.bu, %i.br
  %i.bw = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 2305843009213693951)
  %i.bx = select i1 %i.bv, i64 2305843009213693951, i64 %i.bw ; 3 uses
  %i.by = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bz = sub i64 %i.by, %i.bp                    ; 4 uses
  %.not.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ca = shl nuw nsw i64 %i.bx, 2
  %i.cb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #31
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.cc = phi ptr [ %i.cb, %bb.s ], [ null, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 %i.bz ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx.i.i.i.i.i75
  %i.cf = load i32, ptr %3, align 4               ; 2 uses
  %i.cg = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.ch = lshr exact i64 %i.cg, 2
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check140 = icmp ult i64 %i.cg, 28
  br i1 %min.iters.check140, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph141

vector.ph141:                                     ; preds = %bb.t
  %n.vec143 = and i64 %i.ci, 9223372036854775800  ; 3 uses
  %i.cj = shl i64 %n.vec143, 2
  %i.ck = getelementptr i8, ptr %i.cd, i64 %i.cj
  %broadcast.splatinsert144 = insertelement <4 x i32> poison, i32 %i.cf, i64 0
  %broadcast.splat145 = shufflevector <4 x i32> %broadcast.splatinsert144, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph141
  %index147 = phi i64 [ 0, %vector.ph141 ], [ %index.next149, %vector.body146 ] ; 2 uses
  %i.cl = shl i64 %index147, 2
  %next.gep148 = getelementptr i8, ptr %i.cd, i64 %i.cl ; 2 uses
  %i.cm = getelementptr i8, ptr %next.gep148, i64 16
  store <4 x i32> %broadcast.splat145, ptr %next.gep148, align 4
  store <4 x i32> %broadcast.splat145, ptr %i.cm, align 4
  %index.next149 = add nuw i64 %index147, 8       ; 2 uses
  %i.cn = icmp eq i64 %index.next149, %n.vec143
  br i1 %i.cn, label %middle.block150, label %vector.body146, !llvm.loop !247

middle.block150:                                  ; preds = %vector.body146
  %cmp.n151 = icmp eq i64 %i.ci, %n.vec143
  br i1 %cmp.n151, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block150
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cd, %bb.t ], [ %i.ck, %middle.block150 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.cf, ptr %.06.i.i.i.i.i.i.i77, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.co, %i.ce
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !248

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block150
  %i.cp = icmp sgt i64 %i.bz, 4
  br i1 %i.cp, label %bb.u, label %bb.v, !prof !137

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cc, ptr align 4 %i.bo, i64 %i.bz, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cq = icmp eq i64 %i.bz, 4
  br i1 %i.cq, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.cr = load i32, ptr %i.bo, align 4
  store i32 %i.cr, ptr %i.cc, align 4
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %2 ; 3 uses
  %i.ct = sub i64 %i.f, %i.by                     ; 4 uses
  %i.cu = icmp sgt i64 %i.ct, 4
  br i1 %i.cu, label %bb.x, label %bb.y, !prof !137

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cs, ptr align 4 %1, i64 %i.ct, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.cv = icmp eq i64 %i.ct, 4
  br i1 %i.cv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cw = load i32, ptr %1, align 4
  store i32 %i.cw, ptr %i.cs, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cx = getelementptr inbounds i8, ptr %i.cs, i64 %i.ct
  %.not.i82 = icmp eq ptr %i.bo, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cy = sub i64 %i.e, %i.bp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.cy) #29
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.cc, ptr %0, align 8
  store ptr %i.cx, ptr %i.c, align 8
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.bx
  store ptr %i.cz, ptr %i.a, align 8
  br label %_ZSt4fillIPjjEvT_S1_RKT0_.exit

_ZSt4fillIPjjEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block136, %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #12

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_1
