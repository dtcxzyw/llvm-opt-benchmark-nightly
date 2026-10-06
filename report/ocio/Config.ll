Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/Config?download=true
inline.NumInlined: 10699
inline.NumDeleted: 2966
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN16OpenColorIO_v2_56Config4Impl13resetCacheIDsEv:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 836
  store i32 0, ptr %i.n, align 4, !tbaa !227
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.q = load i64, ptr %i.p, align 8, !tbaa !99
  %i.r = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef 0, i64 noundef %i.q, ptr noundef nonnull @.str.24, i64 noundef 0) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 2 uses
  %i.t = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.s) #31 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE5clearEv.exit
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.t) #32
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.c
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE5clearEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !131
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmSt10shared_ptrIN16OpenColorIO_v2_59ProcessorEEESt10_Select1stIS6_ESt4lessImESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef %i.w)
          to label %_ZN16OpenColorIO_v2_512GenericCacheImSt10shared_ptrINS_9ProcessorEEE5clearEv.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #35
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #35
  unreachable

_ZN16OpenColorIO_v2_512GenericCacheImSt10shared_ptrINS_9ProcessorEEE5clearEv.exit: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !131
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1096
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !132
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store ptr %i.ab, ptr %i.ad, align 8, !tbaa !133
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1112
  store i64 0, ptr %i.ae, align 8, !tbaa !134
  %i.af = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.s) #31 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK16OpenColorIO_v2_56Config15getMinorVersionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !105
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !222
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN16OpenColorIO_v2_56Config15setMinorVersionEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !105    ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !221
  %i.c = add i32 %i.b, -1
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_125LastSupportedMinorVersionE, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !92   ; 2 uses
  %i.g = icmp ugt i32 %1, %i.f
  br i1 %i.g, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.21, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.i = zext i32 %1 to i64
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.i)
          to label %_ZNSolsEj.exit unwind label %bb.e ; 2 uses

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.22, i64 noundef 36)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17: ; preds = %_ZNSolsEj.exit
  %i.l = load ptr, ptr %0, align 8, !tbaa !105
  %i.m = load i32, ptr %i.l, align 8, !tbaa !221
  %i.n = zext i32 %i.m to i64
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef %i.n)
          to label %_ZNSolsEj.exit18 unwind label %bb.e ; 2 uses

_ZNSolsEj.exit18:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.23, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19: ; preds = %_ZNSolsEj.exit18
  %i.q = zext i32 %i.f to i64
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef %i.q)
          to label %_ZNSolsEj.exit20 unwind label %bb.e

_ZNSolsEj.exit20:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.20, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21: ; preds = %_ZNSolsEj.exit20
  %i.t = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21
  %i.u = load ptr, ptr %3, align 8, !tbaa !101
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef %i.u)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #32
          to label %bb.j unwind label %bb.f

bb.e:                                             ; preds = %_ZNSolsEj.exit20, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19, %_ZNSolsEj.exit18, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17, %_ZNSolsEj.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.y = load ptr, ptr %3, align 8, !tbaa !101    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !91
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn24 = phi { ptr, i32 } [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.t) #31
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn24, %bb.g ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.v, %bb.e ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %.pn.pn

bb.i:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %1, ptr %i.ad, align 4, !tbaa !222
  ret void

bb.j:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN16OpenColorIO_v2_56Config10setVersionEjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_56Config15setMajorVersionEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1)
  tail call void @_ZN16OpenColorIO_v2_56Config15setMinorVersionEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN16OpenColorIO_v2_56Config22upgradeToLatestVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !105    ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !221
  switch i32 %i.b, label %bb.d [
    i32 2, label %bb.h
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 992
  invoke void @_ZN16OpenColorIO_v2_525UpdateFileRulesFromV1ToV2ERKNS_6ConfigERSt10shared_ptrINS_9FileRulesEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !105    ; 3 uses
  store i32 2, ptr %i.d, align 8, !tbaa !221
  %1 = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %1, align 4, !tbaa !222
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %i.e = phi ptr [ %i.a, %bb.a ], [ %i.d, %bb.c ] ; 3 uses
  store i32 2, ptr %i.e, align 8, !tbaa !221
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 5, ptr %i.f, align 4, !tbaa !222
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 872 ; 3 uses
  %i.h = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #31 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.h) #32
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %bb.d
  %i.i = load ptr, ptr %0, align 8, !tbaa !105
  invoke void @_ZN16OpenColorIO_v2_56Config4Impl13resetCacheIDsEv(ptr noundef nonnull align 8 dereferenceable(1120) %i.i)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #31 ; 0 uses
  br label %.body

bb.g:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.l = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #31 ; 0 uses
  invoke void @_ZN16OpenColorIO_v2_56Config15setMinorVersionEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 5)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.a, %bb.g
  ret void

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.b
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.f, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.m, %bb.i ], [ %i.j, %bb.f ]
  %i.n = extractvalue { ptr, i32 } %eh.lpad-body, 0
  tail call void @__clang_call_terminate(ptr %i.n) #35
  unreachable
}

declare void @_ZN16OpenColorIO_v2_525UpdateFileRulesFromV1ToV2ERKNS_6ConfigERSt10shared_ptrINS_9FileRulesEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #31 ; 0 uses
  tail call void @_ZSt9terminatev() #35
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(1120) ptr @_ZN16OpenColorIO_v2_56Config4ImplaSERKS1_(ptr noundef nonnull align 8 dereferenceable(1120) %0, ptr noundef nonnull align 8 dereferenceable(1120) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.20", align 16 ; 6 uses
  %3 = alloca %"class.std::shared_ptr.23", align 16 ; 6 uses
  %4 = alloca %"class.std::shared_ptr.110", align 16 ; 9 uses
  %5 = alloca %"class.std::shared_ptr.84", align 16 ; 8 uses
  %6 = alloca %"class.std::shared_ptr.128", align 16 ; 9 uses
  %7 = alloca %"class.std::shared_ptr.46", align 16 ; 6 uses
  %8 = alloca %"class.std::shared_ptr.144", align 16 ; 9 uses
  %9 = alloca %"class.std::shared_ptr.64", align 16 ; 6 uses
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.do, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load <2 x i32>, ptr %1, align 8, !tbaa !92
  store <2 x i32> %i.a, ptr %0, align 8, !tbaa !92
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.b) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !257
  call void @_ZNK16OpenColorIO_v2_57Context18createEditableCopyEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.20") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load <2 x ptr>, ptr %2, align 16, !tbaa !84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !85   ; 8 uses
  store <2 x ptr> %i.j, ptr %i.g, align 8, !tbaa !84
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_57ContextEEaSEOS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.l, align 8, !tbaa !87
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !88
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !90
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #31, !inline_history !703
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !90
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #31, !inline_history !703
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_57ContextEEaSEOS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !91
  %.not.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !92
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.o, %bb.f ], [ %i.y, %bb.g ]
  %i.z = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.z, label %bb.h, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_57ContextEEaSEOS2_.exit, !prof !93

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #31
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_57ContextEEaSEOS2_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_57ContextEEaSEOS2_.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !85  ; 8 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_57ContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_57ContextEEaSEOS2_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ab, align 8, !tbaa !87
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !88
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !90
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31, !inline_history !12
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !90
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31, !inline_history !12
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_57ContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !91
  %.not.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !92
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.l ], [ %i.ao, %bb.m ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.n, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_57ContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !93

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_57ContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_57ContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_57ContextEEaSEOS2_.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %i.aq)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.at = load i8, ptr %i.as, align 8, !tbaa !224
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 104
end_hunk_0
