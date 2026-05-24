inline.NumInlined: 1370
inline.NumDeleted: 459
begin_hunk_0_@_ZNK16OpenColorIO_v2_515LocalFileFormat13getFormatInfoERSt6vectorINS_10FormatInfoESaIS2_EE:bb.a
  store i64 0, ptr %i.e, align 8, !tbaa !42
  store i8 0, ptr %i.d, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 0, ptr %i.g, align 4, !tbaa !48
  %i.h = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str, i64 noundef 38)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.h ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.a
  %i.i = load i64, ptr %i.e, align 8, !tbaa !42
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 0, i64 noundef %i.i, ptr noundef nonnull @.str.1, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit4 unwind label %bb.h ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  store i32 1, ptr %i.f, align 8, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !49   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !52
  %.not.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit4
  invoke void @_ZN16OpenColorIO_v2_510FormatInfoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !49
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  store ptr %i.p, ptr %i.k, align 8, !tbaa !49
  br label %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit4
  invoke void @_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.l, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit unwind label %bb.h

_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc, %bb.c
  %i.q = load i64, ptr %i.b, align 8, !tbaa !42
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.q, ptr noundef nonnull @.str.2, i64 noundef 28)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit7 unwind label %bb.h ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit7: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit
  %i.s = load i64, ptr %i.e, align 8, !tbaa !42
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 0, i64 noundef %i.s, ptr noundef nonnull @.str.3, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit9 unwind label %bb.h ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit7
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !49   ; 3 uses
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !52
  %.not.i10 = icmp eq ptr %i.u, %i.v
  br i1 %.not.i10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit9
  invoke void @_ZN16OpenColorIO_v2_510FormatInfoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %.noexc11 unwind label %bb.h

.noexc11:                                         ; preds = %bb.d
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !49
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  store ptr %i.x, ptr %i.k, align 8, !tbaa !49
  br label %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit13

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit9
  invoke void @_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.u, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit13 unwind label %bb.h

_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit13: ; preds = %.noexc11, %bb.e
  %i.y = load i64, ptr %i.b, align 8, !tbaa !42
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.y, ptr noundef nonnull @.str.4, i64 noundef 11)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit15 unwind label %bb.h ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit15: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit13
  %i.aa = load i64, ptr %i.e, align 8, !tbaa !42
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 0, i64 noundef %i.aa, ptr noundef nonnull @.str.5, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit17 unwind label %bb.h ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit15
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !49  ; 3 uses
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !52
  %.not.i18 = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i18, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit17
  invoke void @_ZN16OpenColorIO_v2_510FormatInfoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %i.ac, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %.noexc19 unwind label %bb.h

.noexc19:                                         ; preds = %bb.f
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !49
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  store ptr %i.af, ptr %i.k, align 8, !tbaa !49
  br label %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit21

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit17
  invoke void @_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.ac, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit21 unwind label %bb.h

_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit21: ; preds = %.noexc19, %bb.g
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !53  ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.d
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit21
  %i.ai = load i64, ptr %i.d, align 8, !tbaa !7
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ak = load ptr, ptr %2, align 8, !tbaa !53    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.a
  br i1 %i.al, label %_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.am = load i64, ptr %i.a, align 8, !tbaa !7
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #32
  br label %_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit

_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit15, %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit13, %bb.e, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit7, %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit, %bb.c, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_510FormatInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %i.ao
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_510FormatInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !7
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !53     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !7
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define hidden void @_ZN16OpenColorIO_v2_515LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.6, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !42
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.b, i64 noundef %i.d)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.7, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.g = load ptr, ptr %0, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !42
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.g, i64 noundef %i.i)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit11 unwind label %bb.f ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit11: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10
  %i.k = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !39, !alias.scope !60
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !42, !alias.scope !60
  store i8 0, ptr %i.l, align 8, !tbaa !7, !alias.scope !60
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %5 = load ptr, ptr %4, align 8, !tbaa !61, !noalias !60 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %5, null
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !noalias !60 ; 2 uses
  %6 = icmp ugt ptr %5, %i.o
  %.08.i.i.i = select i1 %6, ptr %5, ptr %i.o     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit11
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !63, !noalias !60 ; 2 uses
  %i.r = ptrtoint ptr %.08.i.i.i to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.q, i64 noundef %i.t)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %3, align 8, !tbaa !53, !alias.scope !60 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.l
  br i1 %i.x, label %.body.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.y = load i64, ptr %i.l, align 8, !tbaa !7, !alias.scope !60
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #32
  br label %.body.thread

bb.d:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit11
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.ab = load ptr, ptr %3, align 8, !tbaa !53
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef %i.ab)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #33
          to label %bb.j unwind label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.g:                                             ; preds = %bb.e, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %.0 = phi i1 [ false, %bb.e ], [ true, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ] ; 2 uses
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ae = load ptr, ptr %3, align 8, !tbaa !53    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.l
  br i1 %i.af, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ag = load i64, ptr %i.l, align 8, !tbaa !7
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %.0, label %bb.h, label %bb.i

.body.thread:                                     ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

.body:                                            ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %.0, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %.body.thread, %.body
  %.pn14 = phi { ptr, i32 } [ %i.v, %.body.thread ], [ %i.ad, %.body ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.k) #30
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %.body, %bb.h, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn14, %bb.h ], [ %i.ad, %.body ], [ %i.ac, %bb.f ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ai = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ai, ptr %2, align 8, !tbaa !15
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ak = getelementptr i8, ptr %i.ai, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %2, i64 %i.al
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !15
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.an, align 8, !tbaa !15
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !53 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !7
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #32
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.an, align 8, !tbaa !15
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.au) #30
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.av) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn.pn

bb.j:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #11

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #4 align 2

declare void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_59ExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #12

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #14 align 2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #14 align 2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_515LocalFileFormat8ReadInfoERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN9SampleICC10IccContentE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(152) %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgESt4fposI11__mbstate_tE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 0, i64 0) ; 0 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !15
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !17
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZN9SampleICC5Read8ERSiPvi.exit.i, label %_ZN9SampleICC6Read32ERSiPvi.exit161.thread

_ZN9SampleICC5Read8ERSiPvi.exit.i:                ; preds = %bb.a
  %i.q = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3, i64 noundef 4) ; 0 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !15
  %i.s = getelementptr i8, ptr %i.r, i64 -24      ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %1, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !17
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.i.i.preheader, label %_ZN9SampleICC6Read32ERSiPvi.exit161.thread

.lr.ph.i.i.preheader:                             ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i
  %i.y = load <4 x i8>, ptr %3, align 8, !tbaa !7
  %i.z = shufflevector <4 x i8> %i.y, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.z, ptr %3, align 8, !tbaa !7
  %i.aa = load i64, ptr %i.s, align 8
  %i.ab = getelementptr inbounds i8, ptr %1, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !17
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZN9SampleICC5Read8ERSiPvi.exit.i157, label %_ZN9SampleICC6Read32ERSiPvi.exit161.thread

_ZN9SampleICC5Read8ERSiPvi.exit.i157:             ; preds = %.lr.ph.i.i.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.ag = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.af, i64 noundef 4) ; 0 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !15
  %i.ai = getelementptr i8, ptr %i.ah, i64 -24    ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds i8, ptr %1, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load i32, ptr %i.al, align 8, !tbaa !17
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.lr.ph.i.i158.preheader, label %_ZN9SampleICC6Read32ERSiPvi.exit161.thread

.lr.ph.i.i158.preheader:                          ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i157
  %i.ao = load <4 x i8>, ptr %i.af, align 4, !tbaa !7
  %i.ap = shufflevector <4 x i8> %i.ao, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.ap, ptr %i.af, align 4, !tbaa !7
  %i.aq = load i64, ptr %i.ai, align 8
  %i.ar = getelementptr inbounds i8, ptr %1, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !17
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_515LocalFileFormat8ReadInfoERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN9SampleICC10IccContentE:bb.a

bb.ba:                                            ; preds = %bb.az
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.noexc.i242:                                      ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.lw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.lw, ptr %9, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 41, ptr %i.a, align 8, !tbaa !64
  %i.lx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc243 unwind label %bb.bb ; 3 uses

.noexc243:                                        ; preds = %.noexc.i242
  store ptr %i.lx, ptr %9, align 8, !tbaa !53
  %i.ly = load i64, ptr %i.a, align 8, !tbaa !64  ; 3 uses
  store i64 %i.ly, ptr %i.lw, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.lx, ptr noundef nonnull align 1 dereferenceable(41) @.str.13, i64 41, i1 false)
  %i.lz = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.ly, ptr %i.lz, align 8, !tbaa !42
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.ly
  store i8 0, ptr %i.ma, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN16OpenColorIO_v2_515LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.unreachable299 unwind label %bb.bc

.unreachable299:                                  ; preds = %.noexc243
  unreachable

bb.bb:                                            ; preds = %.noexc.i242
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250

bb.bc:                                            ; preds = %.noexc243
  %i.mc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.md = load ptr, ptr %9, align 8, !tbaa !53    ; 2 uses
  %i.me = icmp eq ptr %i.md, %i.lw
  br i1 %i.me, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248: ; preds = %bb.bc
  %i.mf = load i64, ptr %i.lw, align 8, !tbaa !7
  %i.mg = add i64 %i.mf, 1
  call void @_ZdlPvm(ptr noundef %i.md, i64 noundef %i.mg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248, %bb.bb
  %.pn142 = phi { ptr, i32 } [ %i.mb, %bb.bb ], [ %i.mc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248 ], [ %i.mc, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.bd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.az, %bb.aw, %bb.au
  %i.mh = load ptr, ptr %8, align 8, !tbaa !53    ; 2 uses
  %i.mi = icmp eq ptr %i.mh, %i.kk
  br i1 %i.mi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.mj = load i64, ptr %i.kk, align 8, !tbaa !7
  %i.mk = add i64 %i.mj, 1
  call void @_ZdlPvm(ptr noundef %i.mh, i64 noundef %i.mk) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  ret void

bb.bd:                                            ; preds = %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, %bb.ba, %bb.av, %bb.as, %bb.ar
  %.pn146.pn = phi { ptr, i32 } [ %i.ll, %bb.ar ], [ %i.lp, %bb.av ], [ %i.lm, %bb.as ], [ %i.ls, %bb.ax ], [ %i.lv, %bb.ba ], [ %.pn142, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250 ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_515LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #30
  br label %.body

.body:                                            ; preds = %bb.al, %bb.ah, %bb.bd
  %.pn146.pn.pn = phi { ptr, i32 } [ %.pn146.pn, %bb.bd ], [ %i.ld, %bb.al ], [ %i.kn, %bb.ah ]
  %i.ml = load ptr, ptr %8, align 8, !tbaa !53    ; 2 uses
  %i.mm = icmp eq ptr %i.ml, %i.kk
  br i1 %i.mm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254: ; preds = %.body
  %i.mn = load i64, ptr %i.kk, align 8, !tbaa !7
  %i.mo = add i64 %i.mn, 1
  call void @_ZdlPvm(ptr noundef %i.ml, i64 noundef %i.mo) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.be

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211
  %.pn153.pn = phi { ptr, i32 } [ %.pn153, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236 ], [ %.pn146.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ], [ %.pn136, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186
  %.pn153.pn.pn = phi { ptr, i32 } [ %.pn153.pn, %bb.be ], [ %.pn133, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186 ]
  resume { ptr, i32 } %.pn153.pn.pn
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgESt4fposI11__mbstate_tE(ptr noundef nonnull align 8 dereferenceable(16), i64, i64) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !39
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.50) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.d, ptr %i.a, align 8, !tbaa !64
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !53
  %i.g = load i64, ptr %i.a, align 8, !tbaa !64
  store i64 %i.g, ptr %i.b, align 8, !tbaa !7
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !7
  store i8 %i.i, ptr %i.h, align 1, !tbaa !7
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !42
  %i.l = load ptr, ptr %0, align 8, !tbaa !53
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK9SampleICC10IccContent8ValidateERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 31 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !95
  switch i32 %i.b, label %bb.b [
    i32 1935896178, label %bb.n
    i32 1835955314, label %bb.n
    i32 1886549106, label %bb.n
    i32 1818848875, label %bb.n
    i32 1936744803, label %bb.n
    i32 1633842036, label %bb.n
    i32 1852662636, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.38, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.d = load i32, ptr %i.a, align 4, !tbaa !95
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.d)
          to label %bb.c unwind label %bb.m       ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.39, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !39, !alias.scope !102
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 0, ptr %i.h, align 8, !tbaa !42, !alias.scope !102
  store i8 0, ptr %i.g, align 8, !tbaa !7, !alias.scope !102
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %7 = load ptr, ptr %6, align 8, !tbaa !61, !noalias !102 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %7, null
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noalias !102 ; 2 uses
  %8 = icmp ugt ptr %7, %i.j
  %.08.i.i.i = select i1 %8, ptr %7, ptr %i.j     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !63, !noalias !102 ; 2 uses
  %i.m = ptrtoint ptr %.08.i.i.i to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.l, i64 noundef %i.o)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %3, align 8, !tbaa !53, !alias.scope !102 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.g
  br i1 %i.s, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.t = load i64, ptr %i.g, align 8, !tbaa !7, !alias.scope !102
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #32
  br label %.body

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.f, %bb.d
  %i.w = load ptr, ptr %1, align 8, !tbaa !53     ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  %i.z = load ptr, ptr %3, align 8, !tbaa !53     ; 6 uses
  %i.aa = icmp eq ptr %i.z, %i.g                  ; 2 uses
  br i1 %i.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.aa, label %bb.g, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.aa, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ab = load i64, ptr %i.h, align 8, !tbaa !42  ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %.not21.i = icmp eq ptr %3, %1
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.h, !prof !103

bb.h:                                             ; preds = %bb.g
  switch i64 %i.ab, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.ad = load i8, ptr %i.z, align 1, !tbaa !7
  store i8 %i.ad, ptr %i.w, align 1, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.z, i64 %i.ab, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !42  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !42
  %i.ag = load ptr, ptr %1, align 8, !tbaa !53
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !7
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.z, ptr %1, align 8, !tbaa !53
  %i.aj = load <2 x i64>, ptr %i.h, align 8, !tbaa !7
  store <2 x i64> %i.aj, ptr %i.ai, align 8, !tbaa !7
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ak = load i64, ptr %i.x, align 8, !tbaa !7
  store ptr %i.z, ptr %1, align 8, !tbaa !53
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load <2 x i64>, ptr %i.h, align 8, !tbaa !7
  store <2 x i64> %i.am, ptr %i.al, align 8, !tbaa !7
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.w, ptr %3, align 8, !tbaa !53
  store i64 %i.ak, ptr %i.g, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.g, ptr %3, align 8, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.k, %bb.l
  %i.an = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.w, %bb.k ], [ %i.g, %bb.l ], [ %i.z, %bb.g ]
  store i64 0, ptr %i.h, align 8, !tbaa !42
  store i8 0, ptr %i.an, align 1, !tbaa !7
  %i.ao = load ptr, ptr %3, align 8, !tbaa !53    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.g
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.aq = load i64, ptr %i.g, align 8, !tbaa !7
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.aj

bb.m:                                             ; preds = %bb.z, %_ZNSolsEj.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10, %bb.o, %bb.c, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.ak

bb.n:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !104
  %switch = icmp ult i32 %i.au, 4
  br i1 %switch, label %bb.y, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.40, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10: ; preds = %bb.o
  %i.aw = load i32, ptr %i.at, align 8, !tbaa !104
  %i.ax = zext i32 %i.aw to i64
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.ax)
          to label %_ZNSolsEj.exit unwind label %bb.m ; 0 uses

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.39, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %_ZNSolsEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !105)
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  store ptr %i.ba, ptr %4, align 8, !tbaa !39, !alias.scope !111
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 0, ptr %i.bb, align 8, !tbaa !42, !alias.scope !111
  store i8 0, ptr %i.ba, align 8, !tbaa !7, !alias.scope !111
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %10 = load ptr, ptr %9, align 8, !tbaa !61, !noalias !111 ; 3 uses
  %.not.i.not.i.i12 = icmp eq ptr %10, null
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !111 ; 2 uses
  %11 = icmp ugt ptr %10, %i.bd
  %.08.i.i.i13 = select i1 %11, ptr %10, ptr %i.bd ; 2 uses
  %.not5.i.i14 = icmp eq ptr %.08.i.i.i13, null
  %.not.i.i15 = select i1 %.not.i.not.i.i12, i1 true, i1 %.not5.i.i14
  br i1 %.not.i.i15, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !63, !noalias !111 ; 2 uses
  %i.bg = ptrtoint ptr %.08.i.i.i13 to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.bf, i64 noundef %i.bi)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit21 unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.r, %bb.p
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = load ptr, ptr %4, align 8, !tbaa !53, !alias.scope !111 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.ba
  br i1 %i.bm, label %.body19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16: ; preds = %bb.q
  %i.bn = load i64, ptr %i.ba, align 8, !tbaa !7, !alias.scope !111
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #32
  br label %.body19

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.bp)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit21 unwind label %bb.q

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit21: ; preds = %bb.r, %bb.p
  %i.bq = load ptr, ptr %1, align 8, !tbaa !53    ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  %i.bt = load ptr, ptr %4, align 8, !tbaa !53    ; 6 uses
  %i.bu = icmp eq ptr %i.bt, %i.ba                ; 2 uses
  br i1 %i.bs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit21
  br i1 %i.bu, label %bb.s, label %.thread.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i22: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit21
  br i1 %i.bu, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i23

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  %i.bv = load i64, ptr %i.bb, align 8, !tbaa !42 ; 3 uses
  %i.bw = icmp ult i64 %i.bv, 16
  call void @llvm.assume(i1 %i.bw)
  %.not21.i25 = icmp eq ptr %4, %1
  br i1 %.not21.i25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit30, label %bb.t, !prof !103

bb.t:                                             ; preds = %bb.s
  switch i64 %i.bv, label %bb.v [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i26
    i64 1, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  %i.bx = load i8, ptr %i.bt, align 1, !tbaa !7
  store i8 %i.bx, ptr %i.bq, align 1, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i26

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bq, ptr align 1 %i.bt, i64 %i.bv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i26: ; preds = %bb.v, %bb.u, %bb.t
  %i.by = load i64, ptr %i.bb, align 8, !tbaa !42 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !42
  %i.ca = load ptr, ptr %1, align 8, !tbaa !53
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.by
  store i8 0, ptr %i.cb, align 1, !tbaa !7
  %.pre.i27 = load ptr, ptr %4, align 8, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit30

.thread.i29:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.bt, ptr %1, align 8, !tbaa !53
  %i.cd = load <2 x i64>, ptr %i.bb, align 8, !tbaa !7
  store <2 x i64> %i.cd, ptr %i.cc, align 8, !tbaa !7
  br label %bb.x

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i22
  %i.ce = load i64, ptr %i.br, align 8, !tbaa !7
  store ptr %i.bt, ptr %1, align 8, !tbaa !53
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load <2 x i64>, ptr %i.bb, align 8, !tbaa !7
  store <2 x i64> %i.cg, ptr %i.cf, align 8, !tbaa !7
  %.not.i24 = icmp eq ptr %i.bq, null
  br i1 %.not.i24, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i23
  store ptr %i.bq, ptr %4, align 8, !tbaa !53
  store i64 %i.ce, ptr %i.ba, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit30

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i23, %.thread.i29
  store ptr %i.ba, ptr %4, align 8, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit30: ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i26, %bb.w, %bb.x
  %i.ch = phi ptr [ %.pre.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i26 ], [ %i.bq, %bb.w ], [ %i.ba, %bb.x ], [ %i.bt, %bb.s ]
  store i64 0, ptr %i.bb, align 8, !tbaa !42
  store i8 0, ptr %i.ch, align 1, !tbaa !7
  %i.ci = load ptr, ptr %4, align 8, !tbaa !53    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.ba
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit30
  %i.ck = load i64, ptr %i.ba, align 8, !tbaa !7
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.aj

.body19:                                          ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.ak

bb.y:                                             ; preds = %bb.n
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !112
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !112
  %i.cq = icmp eq ptr %i.cn, %i.cp
  br i1 %i.cq, label %bb.z, label %bb.aj

bb.z:                                             ; preds = %bb.y
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.41, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34: ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !113)
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  store ptr %i.cs, ptr %5, align 8, !tbaa !39, !alias.scope !119
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i64 0, ptr %i.ct, align 8, !tbaa !42, !alias.scope !119
  store i8 0, ptr %i.cs, align 8, !tbaa !7, !alias.scope !119
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %13 = load ptr, ptr %12, align 8, !tbaa !61, !noalias !119 ; 3 uses
  %.not.i.not.i.i35 = icmp eq ptr %13, null
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !119 ; 2 uses
  %14 = icmp ugt ptr %13, %i.cv
  %.08.i.i.i36 = select i1 %14, ptr %13, ptr %i.cv ; 2 uses
  %.not5.i.i37 = icmp eq ptr %.08.i.i.i36, null
  %.not.i.i38 = select i1 %.not.i.not.i.i35, i1 true, i1 %.not5.i.i37
  br i1 %.not.i.i38, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !63, !noalias !119 ; 2 uses
  %i.cy = ptrtoint ptr %.08.i.i.i36 to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.cx, i64 noundef %i.da)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit44 unwind label %bb.ab ; 0 uses

bb.ab:                                            ; preds = %bb.ac, %bb.aa
  %i.dc = landingpad { ptr, i32 }
          cleanup
  %i.dd = load ptr, ptr %5, align 8, !tbaa !53, !alias.scope !119 ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.cs
  br i1 %i.de, label %.body42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39: ; preds = %bb.ab
  %i.df = load i64, ptr %i.cs, align 8, !tbaa !7, !alias.scope !119
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #32
  br label %.body42

bb.ac:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.dh)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit44 unwind label %bb.ab

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit44: ; preds = %bb.ac, %bb.aa
  %i.di = load ptr, ptr %1, align 8, !tbaa !53    ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  %i.dl = load ptr, ptr %5, align 8, !tbaa !53    ; 6 uses
  %i.dm = icmp eq ptr %i.dl, %i.cs                ; 2 uses
  br i1 %i.dk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i51: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit44
  br i1 %i.dm, label %bb.ad, label %.thread.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i45: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit44
  br i1 %i.dm, label %bb.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i46

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i51
  %i.dn = load i64, ptr %i.ct, align 8, !tbaa !42 ; 3 uses
  %i.do = icmp ult i64 %i.dn, 16
  call void @llvm.assume(i1 %i.do)
  %.not21.i48 = icmp eq ptr %5, %1
  br i1 %.not21.i48, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit53, label %bb.ae, !prof !103

bb.ae:                                            ; preds = %bb.ad
  switch i64 %i.dn, label %bb.ag [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i49
    i64 1, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae
  %i.dp = load i8, ptr %i.dl, align 1, !tbaa !7
  store i8 %i.dp, ptr %i.di, align 1, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i49

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.di, ptr align 1 %i.dl, i64 %i.dn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i49: ; preds = %bb.ag, %bb.af, %bb.ae
  %i.dq = load i64, ptr %i.ct, align 8, !tbaa !42 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !42
  %i.ds = load ptr, ptr %1, align 8, !tbaa !53
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dq
  store i8 0, ptr %i.dt, align 1, !tbaa !7
  %.pre.i50 = load ptr, ptr %5, align 8, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit53

.thread.i52:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i51
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.dl, ptr %1, align 8, !tbaa !53
  %i.dv = load <2 x i64>, ptr %i.ct, align 8, !tbaa !7
  store <2 x i64> %i.dv, ptr %i.du, align 8, !tbaa !7
  br label %bb.ai

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i46: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i45
  %i.dw = load i64, ptr %i.dj, align 8, !tbaa !7
  store ptr %i.dl, ptr %1, align 8, !tbaa !53
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dy = load <2 x i64>, ptr %i.ct, align 8, !tbaa !7
  store <2 x i64> %i.dy, ptr %i.dx, align 8, !tbaa !7
  %.not.i47 = icmp eq ptr %i.di, null
  br i1 %.not.i47, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i46
  store ptr %i.di, ptr %5, align 8, !tbaa !53
  store i64 %i.dw, ptr %i.cs, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit53

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i46, %.thread.i52
  store ptr %i.cs, ptr %5, align 8, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit53: ; preds = %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i49, %bb.ah, %bb.ai
  %i.dz = phi ptr [ %.pre.i50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i49 ], [ %i.di, %bb.ah ], [ %i.cs, %bb.ai ], [ %i.dl, %bb.ad ]
  store i64 0, ptr %i.ct, align 8, !tbaa !42
  store i8 0, ptr %i.dz, align 1, !tbaa !7
  %i.ea = load ptr, ptr %5, align 8, !tbaa !53    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.cs
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit53
  %i.ec = load i64, ptr %i.cs, align 8, !tbaa !7
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.aj

.body42:                                          ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.ak

bb.aj:                                            ; preds = %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.07 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ true, %bb.y ]
  %i.ee = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ee, ptr %2, align 8, !tbaa !15
  %i.ef = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.eg = getelementptr i8, ptr %i.ee, i64 -24
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds i8, ptr %2, i64 %i.eh
  store ptr %i.ef, ptr %i.ei, align 8, !tbaa !15
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ej, align 8, !tbaa !15
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !53 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.aj
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !7
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.ep) #32
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ej, align 8, !tbaa !15
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.eq) #30
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.er) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret i1 %.07

bb.ak:                                            ; preds = %.body42, %.body19, %.body, %bb.m
  %.pn = phi { ptr, i32 } [ %i.q, %.body ], [ %i.as, %bb.m ], [ %i.bk, %.body19 ], [ %i.dc, %.body42 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN9SampleICC10IccContent7LoadTagERSiRK14icTagSignature(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !112  ; 3 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !93     ; 7 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = sdiv exact i64 %i.i, 24
  %i.k = ashr i64 %i.j, 2                         ; 3 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.a
  %i.m = mul nuw nsw i64 %i.k, 96
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.c, i64 %i.m ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.preheader.i.i.i.i
  %.052.i.i.i.i = phi i64 [ %i.z, %bb.e ], [ %i.k, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.sroa.032.051.i.i.i.i = phi ptr [ %i.y, %bb.e ], [ %i.c, %.lr.ph.preheader.i.i.i.i ] ; 9 uses
  %i.n = load i32, ptr %.sroa.032.051.i.i.i.i, align 8, !tbaa !120
  %i.o = icmp eq i32 %i.n, %i.f
  br i1 %i.o, label %_ZN9SampleICC10IccContent7FindTagERK14icTagSignature.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !120
  %i.r = icmp eq i32 %i.q, %i.f
  br i1 %i.r, label %_ZN9SampleICC10IccContent7FindTagERK14icTagSignature.exit.loopexit.split.loop.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 48
  %i.t = load i32, ptr %i.s, align 8, !tbaa !120
  %i.u = icmp eq i32 %i.t, %i.f
  br i1 %i.u, label %_ZN9SampleICC10IccContent7FindTagERK14icTagSignature.exit.loopexit.split.loop.exit37, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 72
  %i.w = load i32, ptr %i.v, align 8, !tbaa !120
  %i.x = icmp eq i32 %i.w, %i.f
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !136 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %.not10.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapIttSt4lessItESaISt4pairIKttEEE5countERS3_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.au, %bb.g ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.av, %bb.g ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !28
  %i.ay = icmp ult i16 %i.ax, %0                  ; 3 uses
  %.19.i.i.i = select i1 %i.ay, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.ay, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !141 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeItSt4pairIKttESt10_Select1stIS2_ESt4lessItESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !142

_ZNKSt8_Rb_treeItSt4pairIKttESt10_Select1stIS2_ESt4lessItESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.az = icmp eq ptr %.19.i.i.i, %i.av
  br i1 %i.az, label %_ZNKSt3mapIttSt4lessItESaISt4pairIKttEEE5countERS3_.exit.thread, label %_ZNKSt3mapIttSt4lessItESaISt4pairIKttEEE5countERS3_.exit

_ZNKSt3mapIttSt4lessItESaISt4pairIKttEEE5countERS3_.exit: ; preds = %_ZNKSt8_Rb_treeItSt4pairIKttESt10_Select1stIS2_ESt4lessItESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ay, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.ba = load i16, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 2, !tbaa !28
  %.not444 = icmp ult i16 %0, %i.ba
  br i1 %.not444, label %_ZNKSt3mapIttSt4lessItESaISt4pairIKttEEE5countERS3_.exit.thread, label %.lr.ph.i.i.i.i

_ZNKSt3mapIttSt4lessItESaISt4pairIKttEEE5countERS3_.exit.thread: ; preds = %_ZNKSt8_Rb_treeItSt4pairIKttESt10_Select1stIS2_ESt4lessItESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.g, %_ZNKSt3mapIttSt4lessItESaISt4pairIKttEEE5countERS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.bb, ptr %10, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #30
  store i64 30, ptr %i.n, align 8, !tbaa !64
  %i.bc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef 0)
          to label %.noexc189 unwind label %bb.k  ; 2 uses

.noexc189:                                        ; preds = %_ZNKSt3mapIttSt4lessItESaISt4pairIKttEEE5countERS3_.exit.thread
  store ptr %i.bc, ptr %10, align 8, !tbaa !53
  %i.bd = load i64, ptr %i.n, align 8, !tbaa !64  ; 3 uses
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.bc, ptr noundef nonnull align 1 dereferenceable(30) @.str.14, i64 30, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !42
  %i.bf = load ptr, ptr %10, align 8, !tbaa !53
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store i8 0, ptr %i.bg, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #30
  invoke fastcc void @"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clESA_"(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.unreachable443 unwind label %bb.l

.unreachable443:                                  ; preds = %.noexc189
  unreachable

bb.h:                                             ; preds = %.noexc.i185
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_1D2Ev.exit362"

bb.i:                                             ; preds = %bb.f
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.cd

bb.j:                                             ; preds = %.critedge.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.k:                                             ; preds = %_ZNKSt3mapIttSt4lessItESaISt4pairIKttEEE5countERS3_.exit.thread
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

bb.l:                                             ; preds = %.noexc189
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %10, align 8, !tbaa !53   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.bb
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %bb.l
  %i.bo = load i64, ptr %i.bb, align 8, !tbaa !7
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.k ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190 ], [ %i.bl, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.cc

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt3mapIttSt4lessItESaISt4pairIKttEEE5countERS3_.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.au, %_ZNKSt3mapIttSt4lessItESaISt4pairIKttEEE5countERS3_.exit ] ; 5 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.av, %_ZNKSt3mapIttSt4lessItESaISt4pairIKttEEE5countERS3_.exit ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !28
  %i.bs = icmp ult i16 %i.br, %0                  ; 4 uses
  %.19.i.i.i.i = select i1 %i.bs, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 2 uses
  %.1.in.v.i.i.i.i = select i1 %i.bs, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !141 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt3mapIttSt4lessItESaISt4pairIKttEEE11lower_boundERS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !142

_ZNKSt3mapIttSt4lessItESaISt4pairIKttEEE11lower_boundERS3_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.bt = icmp eq ptr %.19.i.i.i.i, %i.av
  br i1 %i.bt, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %_ZNKSt3mapIttSt4lessItESaISt4pairIKttEEE11lower_boundERS3_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bs, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.bu = load i16, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 2, !tbaa !28
  %i.bv = icmp ult i16 %0, %i.bu
  br i1 %i.bv, label %.critedge.i, label %bb.n

.critedge.i:                                      ; preds = %bb.m, %_ZNKSt3mapIttSt4lessItESaISt4pairIKttEEE11lower_boundERS3_.exit.i
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.52) #33
          to label %.noexc193 unwind label %bb.j

.noexc193:                                        ; preds = %.critedge.i
  unreachable

bb.n:                                             ; preds = %bb.m
  %.19.i.i.i.i.sroa.sel381.v.sroa.sel.v.sroa.sel.v = select i1 %i.bs, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel381.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel381.v.sroa.sel.v.sroa.sel.v, i64 34
  %i.bw = load i16, ptr %.19.i.i.i.i.sroa.sel381.v.sroa.sel.v.sroa.sel, align 2, !tbaa !28
  %.not = icmp eq i16 %1, %i.bw
  br i1 %.not, label %bb.aa, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %11)
          to label %bb.p unwind label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull @.str.15, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.p
  %i.by = load ptr, ptr %i.at, align 8, !tbaa !136 ; 2 uses
  %.not10.i.i.i.i195 = icmp eq ptr %i.by, null
  br i1 %.not10.i.i.i.i195, label %.critedge.i205, label %.lr.ph.i.i.i.i196

.lr.ph.i.i.i.i196:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %.lr.ph.i.i.i.i196
  %.012.i.i.i.i197 = phi ptr [ %.1.i.i.i.i202, %.lr.ph.i.i.i.i196 ], [ %i.by, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ] ; 5 uses
  %.0811.i.i.i.i198 = phi ptr [ %.19.i.i.i.i199, %.lr.ph.i.i.i.i196 ], [ %i.av, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i197, i64 32
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !28
  %i.cb = icmp ult i16 %i.ca, %0                  ; 4 uses
  %.19.i.i.i.i199 = select i1 %i.cb, ptr %.0811.i.i.i.i198, ptr %.012.i.i.i.i197 ; 2 uses
  %.1.in.v.i.i.i.i200 = select i1 %i.cb, i64 24, i64 16
  %.1.in.i.i.i.i201 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i197, i64 %.1.in.v.i.i.i.i200
  %.1.i.i.i.i202 = load ptr, ptr %.1.in.i.i.i.i201, align 8, !tbaa !141 ; 2 uses
  %.not.i.i.i.i203 = icmp eq ptr %.1.i.i.i.i202, null
  br i1 %.not.i.i.i.i203, label %_ZNKSt3mapIttSt4lessItESaISt4pairIKttEEE11lower_boundERS3_.exit.i204, label %.lr.ph.i.i.i.i196, !llvm.loop !142

_ZNKSt3mapIttSt4lessItESaISt4pairIKttEEE11lower_boundERS3_.exit.i204: ; preds = %.lr.ph.i.i.i.i196
  %i.cc = icmp eq ptr %.19.i.i.i.i199, %i.av
  br i1 %i.cc, label %.critedge.i205, label %bb.q

bb.q:                                             ; preds = %_ZNKSt3mapIttSt4lessItESaISt4pairIKttEEE11lower_boundERS3_.exit.i204
  %.19.i.i.i.i199.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.cb, ptr %.0811.i.i.i.i198, ptr %.012.i.i.i.i197
  %.19.i.i.i.i199.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i199.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.cd = load i16, ptr %.19.i.i.i.i199.sroa.sel.v.sroa.sel.v.sroa.sel, align 2, !tbaa !28
  %i.ce = icmp ult i16 %0, %i.cd
  br i1 %i.ce, label %.critedge.i205, label %bb.r

.critedge.i205:                                   ; preds = %bb.q, %_ZNKSt3mapIttSt4lessItESaISt4pairIKttEEE11lower_boundERS3_.exit.i204, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.52) #33
          to label %.noexc206 unwind label %bb.w

.noexc206:                                        ; preds = %.critedge.i205
  unreachable

bb.r:                                             ; preds = %bb.q
  %.19.i.i.i.i199.sroa.sel384.v.sroa.sel.v.sroa.sel.v = select i1 %i.cb, ptr %.0811.i.i.i.i198, ptr %.012.i.i.i.i197
  %.19.i.i.i.i199.sroa.sel384.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i199.sroa.sel384.v.sroa.sel.v.sroa.sel.v, i64 34
  %i.cf = load i16, ptr %.19.i.i.i.i199.sroa.sel384.v.sroa.sel.v.sroa.sel, align 2, !tbaa !28
  %i.cg = zext i16 %i.cf to i64
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %i.cg)
          to label %_ZNSolsEt.exit unwind label %bb.w

_ZNSolsEt.exit:                                   ; preds = %bb.r
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.16, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit210 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit210: ; preds = %_ZNSolsEt.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.cj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  store ptr %i.cj, ptr %12, align 8, !tbaa !39, !alias.scope !149
  %i.ck = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.ck, align 8, !tbaa !42, !alias.scope !149
  store i8 0, ptr %i.cj, align 8, !tbaa !7, !alias.scope !149
  %26 = getelementptr inbounds nuw i8, ptr %11, i64 48
  %27 = load ptr, ptr %26, align 8, !tbaa !61, !noalias !149 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %27, null
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !149 ; 2 uses
  %28 = icmp ugt ptr %27, %i.cm
  %.08.i.i.i = select i1 %28, ptr %27, ptr %i.cm  ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit210
  %i.cn = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !63, !noalias !149 ; 2 uses
  %i.cp = ptrtoint ptr %.08.i.i.i to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0, i64 noundef 0, ptr noundef %i.co, i64 noundef %i.cr)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.t ; 0 uses

bb.t:                                             ; preds = %bb.u, %bb.s
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = load ptr, ptr %12, align 8, !tbaa !53, !alias.scope !149 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.cj
  br i1 %i.cv, label %.body, label %.body.sink.split

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit210
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.cw)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.t

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.u, %bb.s
  invoke fastcc void @"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clESA_"(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %.unreachable unwind label %bb.x

.unreachable:                                     ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  unreachable

bb.v:                                             ; preds = %bb.o
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.w:                                             ; preds = %_ZNSolsEt.exit, %bb.r, %.critedge.i205, %bb.p
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = load ptr, ptr %12, align 8, !tbaa !53   ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.cj
  br i1 %i.db, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.x, %bb.t
  %.sink = phi ptr [ %i.cu, %bb.t ], [ %i.da, %bb.x ]
  %.pn142.ph = phi { ptr, i32 } [ %i.ct, %bb.t ], [ %i.cz, %bb.x ]
  %i.dc = load i64, ptr %i.cj, align 8, !tbaa !7
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.dd) #32
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.x, %bb.t
  %.pn142 = phi { ptr, i32 } [ %i.ct, %bb.t ], [ %i.cz, %bb.x ], [ %.pn142.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.y

bb.y:                                             ; preds = %.body, %bb.w
  %.pn142.pn = phi { ptr, i32 } [ %.pn142, %.body ], [ %i.cy, %bb.w ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %11) #30
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %.pn142.pn.pn = phi { ptr, i32 } [ %.pn142.pn, %bb.y ], [ %i.cx, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.cc

bb.aa:                                            ; preds = %bb.n
  %i.de = load i32, ptr %2, align 4, !tbaa !3
  %i.df = sitofp i32 %i.de to double
  %i.dg = fmul nnan double %i.df, f0x3EF0000000000000 ; 3 uses
  %i.dh = fptrunc double %i.dg to float           ; 7 uses
  %i.di = fcmp ugt double %i.dg, f0x3690000000000000
  br i1 %i.di, label %bb.ad, label %.noexc.i218

.noexc.i218:                                      ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.dj = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  store ptr %i.dj, ptr %13, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #30
  store i64 49, ptr %i.m, align 8, !tbaa !64
  %i.dk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef 0)
          to label %.noexc219 unwind label %bb.ab ; 3 uses

.noexc219:                                        ; preds = %.noexc.i218
  store ptr %i.dk, ptr %13, align 8, !tbaa !53
  %i.dl = load i64, ptr %i.m, align 8, !tbaa !64  ; 3 uses
  store i64 %i.dl, ptr %i.dj, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.dk, ptr noundef nonnull align 1 dereferenceable(49) @.str.17, i64 49, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !42
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dl
  store i8 0, ptr %i.dn, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #30
  invoke fastcc void @"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clESA_"(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %.unreachable437 unwind label %bb.ac

.unreachable437:                                  ; preds = %.noexc219
  unreachable

bb.ab:                                            ; preds = %.noexc.i218
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226

bb.ac:                                            ; preds = %.noexc219
  %i.dp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dq = load ptr, ptr %13, align 8, !tbaa !53   ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.dj
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224: ; preds = %bb.ac
  %i.ds = load i64, ptr %i.dj, align 8, !tbaa !7
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224, %bb.ab
  %.pn146 = phi { ptr, i32 } [ %i.do, %bb.ab ], [ %i.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224 ], [ %i.dp, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.cc

bb.ad:                                            ; preds = %bb.aa
  %.not148 = icmp eq i16 %0, 0
  br i1 %.not148, label %.thread405, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 6 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3
  %i.dw = sitofp i32 %i.dv to double
  %i.dx = fmul nnan double %i.dw, f0x3EF0000000000000 ; 3 uses
  %i.dy = fcmp ugt double %i.dx, f0x3690000000000000
  br i1 %i.dy, label %bb.ah, label %.noexc.i228

.noexc.i228:                                      ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  %i.dz = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  store ptr %i.dz, ptr %14, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #30
  store i64 52, ptr %i.l, align 8, !tbaa !64
  %i.ea = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 0)
          to label %.noexc229 unwind label %bb.af ; 3 uses

.noexc229:                                        ; preds = %.noexc.i228
  store ptr %i.ea, ptr %14, align 8, !tbaa !53
  %i.eb = load i64, ptr %i.l, align 8, !tbaa !64  ; 3 uses
  store i64 %i.eb, ptr %i.dz, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(52) %i.ea, ptr noundef nonnull align 1 dereferenceable(52) @.str.18, i64 52, i1 false)
  %i.ec = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.eb, ptr %i.ec, align 8, !tbaa !42
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.eb
  store i8 0, ptr %i.ed, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #30
  invoke fastcc void @"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clESA_"(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %.unreachable438 unwind label %bb.ag

.unreachable438:                                  ; preds = %.noexc229
  unreachable

bb.af:                                            ; preds = %.noexc.i228
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

bb.ag:                                            ; preds = %.noexc229
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eg = load ptr, ptr %14, align 8, !tbaa !53   ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.dz
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234: ; preds = %bb.ag
  %i.ei = load i64, ptr %i.dz, align 8, !tbaa !7
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234, %bb.af
  %.pn149 = phi { ptr, i32 } [ %i.ee, %bb.af ], [ %i.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234 ], [ %i.ef, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %bb.cc

bb.ah:                                            ; preds = %bb.ae
  %i.ek = add i16 %0, -3
  %or.cond = icmp ult i16 %i.ek, 2                ; 2 uses
  br i1 %or.cond, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.em = load i32, ptr %i.el, align 4, !tbaa !3
  %i.en = sitofp i32 %i.em to double
  %i.eo = fmul nnan double %i.en, f0x3EF0000000000000
  %i.ep = fcmp olt double %i.eo, f0xB690000000000000
  br i1 %i.ep, label %.noexc.i238, label %bb.al

.noexc.i238:                                      ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  %i.eq = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  store ptr %i.eq, ptr %15, align 8, !tbaa !39
end_hunk_2
begin_hunk_3_@_ZNSt3mapIttSt4lessItESaISt4pairIKttEEEC2ESt16initializer_listIS4_ERKS1_RKS5_:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !151
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.a, ptr %i.d, align 8, !tbaa !152
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i64 0, ptr %i.e, align 8, !tbaa !153
  %.idx = shl nuw nsw i64 %2, 2
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not7.i = icmp eq i64 %2, 0
  br i1 %.not7.i, label %_ZNSt8_Rb_treeItSt4pairIKttESt10_Select1stIS2_ESt4lessItESaIS2_EE22_M_insert_range_uniqueIPKS2_EENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESD_SD_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8_Rb_treeItSt4pairIKttESt10_Select1stIS2_ESt4lessItESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_.exit.i
  %.pr20 = phi i64 [ %.pr, %_ZNSt8_Rb_treeItSt4pairIKttESt10_Select1stIS2_ESt4lessItESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.08.i = phi ptr [ %i.ag, %_ZNSt8_Rb_treeItSt4pairIKttESt10_Select1stIS2_ESt4lessItESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_.exit.i ], [ %1, %bb.a ] ; 6 uses
  %.not.i7 = icmp eq i64 %.pr20, 0
  br i1 %.not.i7, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !141  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i16, ptr %i.h, align 2, !tbaa !28
  %i.j = load i16, ptr %.08.i, align 2, !tbaa !28
  %i.k = icmp ult i16 %i.i, %i.j
  br i1 %i.k, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.02022.i.i = load ptr, ptr %i.b, align 8, !tbaa !141 ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.l = load i16, ptr %.08.i, align 2, !tbaa !28 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.02022.i.i, %.lr.ph.i.i ], [ %.020.i.i, %bb.d ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.n = load i16, ptr %i.m, align 2, !tbaa !28   ; 2 uses
  %i.o = icmp ult i16 %i.l, %i.n                  ; 2 uses
  %.in.v.i.i = select i1 %i.o, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !141 ; 2 uses
  %.not.i.i8 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i8, label %._crit_edge.i.i, label %bb.d, !llvm.loop !154

._crit_edge.i.i:                                  ; preds = %bb.d
  br i1 %i.o, label %._crit_edge.thread.i.i, label %bb.f

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.c
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.a, %bb.c ] ; 4 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !151
  %i.q = icmp eq ptr %.019.lcssa29.i.i, %i.p
  br i1 %i.q, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i.i
  %i.r = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #35
  %.phi.trans.insert80.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.pre81.i = load i16, ptr %.phi.trans.insert80.i, align 2, !tbaa !28
  %.pre82.i = load i16, ptr %.08.i, align 2, !tbaa !28
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %i.s = phi i16 [ %.pre82.i, %bb.e ], [ %i.l, %._crit_edge.i.i ]
  %i.t = phi i16 [ %.pre81.i, %bb.e ], [ %i.n, %._crit_edge.i.i ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.e ], [ %.02024.i.i, %._crit_edge.i.i ]
  %i.u = icmp ult i16 %i.t, %i.s
  br i1 %i.u, label %select.unfold, label %_ZNSt8_Rb_treeItSt4pairIKttESt10_Select1stIS2_ESt4lessItESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_.exit.i

select.unfold:                                    ; preds = %bb.f, %._crit_edge.thread.i.i, %bb.b
  %.sroa.12.2.i.ph = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %i.g, %bb.b ], [ %.019.lcssa28.i.i, %bb.f ] ; 3 uses
  %i.v = icmp eq ptr %.sroa.12.2.i.ph, %i.a
  br i1 %i.v, label %_ZNSt8_Rb_treeItSt4pairIKttESt10_Select1stIS2_ESt4lessItESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %select.unfold
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i.ph, i64 32
  %i.x = load i16, ptr %.08.i, align 2, !tbaa !28
  %i.y = load i16, ptr %i.w, align 2, !tbaa !28
  %i.z = icmp ult i16 %i.x, %i.y
  br label %_ZNSt8_Rb_treeItSt4pairIKttESt10_Select1stIS2_ESt4lessItESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeItSt4pairIKttESt10_Select1stIS2_ESt4lessItESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i: ; preds = %bb.g, %select.unfold
  %i.aa = phi i1 [ %i.z, %bb.g ], [ true, %select.unfold ]
  %i.ab = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31
          to label %.noexc6 unwind label %bb.h    ; 2 uses

.noexc6:                                          ; preds = %_ZNSt8_Rb_treeItSt4pairIKttESt10_Select1stIS2_ESt4lessItESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i32, ptr %.08.i, align 2
  store i32 %i.ad, ptr %i.ac, align 2
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aa, ptr noundef nonnull %i.ab, ptr noundef nonnull %.sroa.12.2.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #30
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !153
  %i.af = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.af, ptr %i.e, align 8, !tbaa !153
  br label %_ZNSt8_Rb_treeItSt4pairIKttESt10_Select1stIS2_ESt4lessItESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_.exit.i

_ZNSt8_Rb_treeItSt4pairIKttESt10_Select1stIS2_ESt4lessItESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_.exit.i: ; preds = %bb.f, %.noexc6
  %.pr = phi i64 [ %.pr20, %bb.f ], [ %i.af, %.noexc6 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ag, %i.f
  br i1 %.not.i, label %_ZNSt8_Rb_treeItSt4pairIKttESt10_Select1stIS2_ESt4lessItESaIS2_EE22_M_insert_range_uniqueIPKS2_EENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESD_SD_.exit, label %.lr.ph.i, !llvm.loop !155

_ZNSt8_Rb_treeItSt4pairIKttESt10_Select1stIS2_ESt4lessItESaIS2_EE22_M_insert_range_uniqueIPKS2_EENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESD_SD_.exit: ; preds = %_ZNSt8_Rb_treeItSt4pairIKttESt10_Select1stIS2_ESt4lessItESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_.exit.i, %bb.a
  ret void

bb.h:                                             ; preds = %_ZNSt8_Rb_treeItSt4pairIKttESt10_Select1stIS2_ESt4lessItESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt8_Rb_treeItSt4pairIKttESt10_Select1stIS2_ESt4lessItESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #30
  resume { ptr, i32 } %i.ah
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define internal fastcc void @"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clESA_"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.43, i64 noundef 51)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader unwind label %bb.b ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader: ; preds = %bb.a
  %i.b = load i16, ptr %0, align 8, !tbaa !129
  %.not19 = icmp eq i16 %i.b, 0
  br i1 %.not19, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14.peel

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !131
  %.pre22 = load i32, ptr %.pre, align 4, !tbaa !3
  %i.d = sitofp i32 %.pre22 to double
  %i.e = fmul nnan double %i.d, f0x3EF0000000000000
  %i.f = fptrunc double %i.e to float
  %i.g = fpext float %i.f to double
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef %i.g)
          to label %_ZNSolsEf.exit.peel unwind label %.loopexit.split-lp ; 0 uses

_ZNSolsEf.exit.peel:                              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14.peel
  %i.i = load i16, ptr %0, align 8, !tbaa !129
  %i.j = icmp ugt i16 %i.i, 1
  br i1 %i.j, label %.peel.next, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge: ; preds = %_ZNSolsEf.exit, %_ZNSolsEf.exit.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.45, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.peel.next:                                       ; preds = %_ZNSolsEf.exit.peel, %_ZNSolsEf.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSolsEf.exit ], [ 1, %_ZNSolsEf.exit.peel ] ; 2 uses
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.44, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14 unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %.peel.next, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14: ; preds = %.peel.next
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !131
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3
  %i.q = sitofp i32 %i.p to double
  %i.r = fmul nnan double %i.q, f0x3EF0000000000000
  %i.s = fptrunc double %i.r to float
  %i.t = fpext float %i.s to double
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef %i.t)
          to label %_ZNSolsEf.exit unwind label %.loopexit ; 0 uses

_ZNSolsEf.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = load i16, ptr %0, align 8, !tbaa !129
  %i.w = zext i16 %i.v to i64
  %i.x = icmp samesign ult i64 %indvars.iv.next, %i.w
  br i1 %i.x, label %.peel.next, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge, !llvm.loop !156

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge
  %i.y = load ptr, ptr %1, align 8, !tbaa !53
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !42
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.y, i64 noundef %i.aa)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.b ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.ac, ptr %3, align 8, !tbaa !39, !alias.scope !164
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ad, align 8, !tbaa !42, !alias.scope !164
  store i8 0, ptr %i.ac, align 8, !tbaa !7, !alias.scope !164
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %5 = load ptr, ptr %4, align 8, !tbaa !61, !noalias !164 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %5, null
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !164 ; 2 uses
  %6 = icmp ugt ptr %5, %i.af
  %.08.i.i.i = select i1 %6, ptr %5, ptr %i.af    ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !63, !noalias !164 ; 2 uses
  %i.ai = ptrtoint ptr %.08.i.i.i to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.ah, i64 noundef %i.ak)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %3, align 8, !tbaa !53, !alias.scope !164 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ac
  br i1 %i.ao, label %.body, label %.body.sink.split

bb.e:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN16OpenColorIO_v2_515LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.aq)
          to label %.unreachable unwind label %bb.f

.unreachable:                                     ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  unreachable

bb.f:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !53    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.ac
  br i1 %i.at, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.f, %bb.d
  %.sink = phi ptr [ %i.an, %bb.d ], [ %i.as, %bb.f ]
  %.pn.ph = phi { ptr, i32 } [ %i.am, %bb.d ], [ %i.ar, %bb.f ]
  %i.au = load i64, ptr %i.ac, align 8, !tbaa !7
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.av) #32
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.f, %bb.d
  %.pn = phi { ptr, i32 } [ %i.am, %bb.d ], [ %i.ar, %bb.f ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %.loopexit.split-lp, %.body, %bb.b
  %.pn11 = phi { ptr, i32 } [ %i.l, %bb.b ], [ %.pn, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn11
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #17

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN16OpenColorIO_v2_515LocalFileFormat23ValidateParametricCurveEttPKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_1clESA_"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 25 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.46, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.b ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !42
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.b, i64 noundef %i.d)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.b ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.7, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.b ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.47, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14.preheader unwind label %bb.b ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14.preheader: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.i = load i16, ptr %i.h, align 8, !tbaa !132
  %.not22 = icmp eq i16 %i.i, 0
  br i1 %.not22, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14._crit_edge, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16.peel

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !134
  %.pre25 = load i32, ptr %.pre, align 4, !tbaa !3
  %i.k = sitofp i32 %.pre25 to double
  %i.l = fmul nnan double %i.k, f0x3EF0000000000000
  %i.m = fptrunc double %i.l to float
  %i.n = fpext float %i.m to double
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef %i.n)
          to label %_ZNSolsEf.exit.peel unwind label %.loopexit.split-lp ; 0 uses

_ZNSolsEf.exit.peel:                              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16.peel
  %i.p = load i16, ptr %i.h, align 8, !tbaa !132
  %i.q = icmp ugt i16 %i.p, 1
  br i1 %i.q, label %.peel.next, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14._crit_edge

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14._crit_edge: ; preds = %_ZNSolsEf.exit, %_ZNSolsEf.exit.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14.preheader
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.45, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14._crit_edge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.peel.next:                                       ; preds = %_ZNSolsEf.exit.peel, %_ZNSolsEf.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSolsEf.exit ], [ 1, %_ZNSolsEf.exit.peel ] ; 2 uses
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.44, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %.peel.next, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16: ; preds = %.peel.next
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !134
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %i.x = sitofp i32 %i.w to double
  %i.y = fmul nnan double %i.x, f0x3EF0000000000000
  %i.z = fptrunc double %i.y to float
  %i.aa = fpext float %i.z to double
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef %i.aa)
          to label %_ZNSolsEf.exit unwind label %.loopexit ; 0 uses

_ZNSolsEf.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ac = load i16, ptr %i.h, align 8, !tbaa !132
  %i.ad = zext i16 %i.ac to i64
  %i.ae = icmp samesign ult i64 %indvars.iv.next, %i.ad
  br i1 %i.ae, label %.peel.next, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14._crit_edge, !llvm.loop !165

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14._crit_edge
  %i.af = load ptr, ptr %1, align 8, !tbaa !53
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !42
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.af, i64 noundef %i.ah)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit17 unwind label %bb.b ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit17: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.aj, ptr %3, align 8, !tbaa !39, !alias.scope !172
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ak, align 8, !tbaa !42, !alias.scope !172
  store i8 0, ptr %i.aj, align 8, !tbaa !7, !alias.scope !172
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %5 = load ptr, ptr %4, align 8, !tbaa !61, !noalias !172 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %5, null
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !noalias !172 ; 2 uses
  %6 = icmp ugt ptr %5, %i.am
  %.08.i.i.i = select i1 %6, ptr %5, ptr %i.am    ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit17
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !63, !noalias !172 ; 2 uses
  %i.ap = ptrtoint ptr %.08.i.i.i to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.ao, i64 noundef %i.ar)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %3, align 8, !tbaa !53, !alias.scope !172 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.aj
  br i1 %i.av, label %.body, label %.body.sink.split

bb.e:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit17
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.aw)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  invoke void @_ZN16OpenColorIO_v2_510LogWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ax = load ptr, ptr %3, align 8, !tbaa !53    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.aj
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.az = load i64, ptr %i.aj, align 8, !tbaa !7
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.bb = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bb, ptr %2, align 8, !tbaa !15
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bd = getelementptr i8, ptr %i.bb, i64 -24
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds i8, ptr %2, i64 %i.be
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bg, align 8, !tbaa !15
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !53 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !7
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #32
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bg, align 8, !tbaa !15
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bn) #30
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bo) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

bb.g:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %3, align 8, !tbaa !53    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.aj
  br i1 %i.br, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.g, %bb.d
  %.sink = phi ptr [ %i.au, %bb.d ], [ %i.bq, %bb.g ]
  %.pn.ph = phi { ptr, i32 } [ %i.at, %bb.d ], [ %i.bp, %bb.g ]
  %i.bs = load i64, ptr %i.aj, align 8, !tbaa !7
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bt) #32
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.g, %bb.d
  %.pn = phi { ptr, i32 } [ %i.at, %bb.d ], [ %i.bp, %bb.g ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %.loopexit.split-lp, %.body, %bb.b
  %.pn11 = phi { ptr, i32 } [ %i.s, %bb.b ], [ %.pn, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn11
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapIttSt4lessItESaISt4pairIKttEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136
  invoke void @_ZNSt8_Rb_treeItSt4pairIKttESt10_Select1stIS2_ESt4lessItESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeItSt4pairIKttESt10_Select1stIS2_ESt4lessItESaIS2_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #34
  unreachable

_ZNSt8_Rb_treeItSt4pairIKttESt10_Select1stIS2_ESt4lessItESaIS2_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define hidden noundef float @_ZN16OpenColorIO_v2_515LocalFileFormat20ApplyParametricCurveEftPKi(float noundef %0, i16 noundef zeroext %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = fcmp ogt float %0, 0.000000e+00
  %.sroa.speculated62 = select i1 %i.a, float %0, float 0.000000e+00 ; 2 uses
  %i.b = fcmp ogt float %.sroa.speculated62, 1.000000e+00
  %.sroa.speculated57 = select i1 %i.b, float 1.000000e+00, float %.sroa.speculated62 ; 11 uses
  switch i16 %1, label %bb.l [
    i16 1, label %bb.b
    i16 2, label %bb.d
    i16 3, label %bb.f
    i16 4, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3
  %i.e = sitofp i32 %i.d to double
  %i.f = fmul nnan double %i.e, f0x3EF0000000000000
  %i.g = fptrunc double %i.f to float             ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3
  %i.j = sitofp i32 %i.i to double
  %i.k = fmul nnan double %i.j, f0x3EF0000000000000
  %i.l = fptrunc double %i.k to float             ; 2 uses
  %i.m = fneg float %i.l
  %i.n = fdiv float %i.m, %i.g
  %i.o = fcmp ult float %.sroa.speculated57, %i.n
  br i1 %i.o, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load i32, ptr %2, align 4, !tbaa !3
  %i.q = sitofp i32 %i.p to double
  %i.r = fmul nnan double %i.q, f0x3EF0000000000000
  %i.s = fptrunc double %i.r to float
  %i.t = tail call float @llvm.fmuladd.f32(float %i.g, float %.sroa.speculated57, float %i.l)
  %i.u = tail call noundef float @powf(float noundef %i.t, float noundef %i.s) #30, !tbaa !3
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %i.x = sitofp i32 %i.w to double
  %i.y = fmul nnan double %i.x, f0x3EF0000000000000
  %i.z = fptrunc double %i.y to float             ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = sitofp i32 %i.ab to double
  %i.ad = fmul nnan double %i.ac, f0x3EF0000000000000
  %i.ae = fptrunc double %i.ad to float           ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = sitofp i32 %i.ag to double
  %i.ai = fmul nnan double %i.ah, f0x3EF0000000000000
  %i.aj = fptrunc double %i.ai to float           ; 2 uses
  %i.ak = fneg float %i.ae
  %i.al = fdiv float %i.ak, %i.z
  %i.am = fcmp ult float %.sroa.speculated57, %i.al
  br i1 %i.am, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = load i32, ptr %2, align 4, !tbaa !3
  %i.ao = sitofp i32 %i.an to double
  %i.ap = fmul nnan double %i.ao, f0x3EF0000000000000
  %i.aq = fptrunc double %i.ap to float
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.z, float %.sroa.speculated57, float %i.ae)
  %i.as = tail call noundef float @powf(float noundef %i.ar, float noundef %i.aq) #30, !tbaa !3
  %i.at = fadd float %i.as, %i.aj
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = sitofp i32 %i.av to double
  %i.ax = fmul nnan double %i.aw, f0x3EF0000000000000
  %i.ay = fptrunc double %i.ax to float
  %i.az = fcmp ult float %.sroa.speculated57, %i.ay
  br i1 %i.az, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3
  %i.bc = sitofp i32 %i.bb to double
  %i.bd = fmul nnan double %i.bc, f0x3EF0000000000000
  %i.be = fptrunc double %i.bd to float
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
end_hunk_3
