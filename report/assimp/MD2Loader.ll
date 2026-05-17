inline.NumInlined: 299
inline.NumDeleted: 163
begin_hunk_0_@_Z18ai_str_toprintableB5cxx11PKcic:bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ak, align 8
  store i8 0, ptr %i.aj, align 8
  br label %.critedge24

.critedge:                                        ; preds = %.lr.ph.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.al = load ptr, ptr %4, align 8               ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.f
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.an = load i64, ptr %i.f, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %.critedge24

.critedge24:                                      ; preds = %_Z18ai_str_toprintableRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.h:                                             ; preds = %.noexc.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %4, align 8               ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.f
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.h
  %i.as = load i64, ptr %i.f, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  resume { ptr, i32 } %i.ap
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA46_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(46) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
  invoke void @_ZN15DeadlyErrorBaseC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA46_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3, ptr noundef nonnull align 1 dereferenceable(46) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
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
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #18
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #16
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #16
  resume { ptr, i32 } %i.o
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  store ptr %1, ptr %i.a, align 8
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %2, align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #18
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #16
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA27_KcRjRA29_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(27) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(29) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  invoke void @_ZN15DeadlyErrorBaseC2IJRjRA29_KcERA27_S2_EEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(27) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(29) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %4, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %4, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #18
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #16
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11MD2Importer14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef captures(none) %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %5 = alloca %struct.aiColor3D, align 16         ; 8 uses
  %6 = alloca %struct.aiString, align 4           ; 7 uses
  %7 = alloca %struct.aiColor3D, align 16         ; 8 uses
  %8 = alloca %struct.aiString, align 4           ; 8 uses
  %9 = alloca %struct.aiString, align 4           ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.c, ptr %4, align 8
  store i16 25202, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 18
  store i8 0, ptr %i.e, align 2
  %i.f = load ptr, ptr %1, align 8
  %i.g = load ptr, ptr %3, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = invoke noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.f, ptr noundef nonnull %i.c)
          to label %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit unwind label %bb.b, !inline_history !8 ; 9 uses

_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %._crit_edge.i.i
  %i.k = load ptr, ptr %4, align 8                ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.c
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit
  %i.m = load i64, ptr %i.c, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %.not.i = icmp eq ptr %i.j, null                ; 2 uses
  br i1 %.not.i, label %bb.a, label %bb.d

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA25_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA1_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 1 dereferenceable(25) @.str.21, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) @.str.22)
          to label %.invoke unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit208.thread239

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %4, align 8                ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173: ; preds = %bb.b
  %i.s = load i64, ptr %i.c, align 8
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit211

_ZNSt6vectorIhSaIhEED2Ev.exit208.thread239:       ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.o) #16
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit211

bb.c:                                             ; preds = %.invoke, %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit208

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = load ptr, ptr %i.j, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = invoke noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.e unwind label %bb.c       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.aa = trunc i64 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.aa, ptr %i.ab, align 8
  %i.ac = and i64 %i.z, 4294967292
  %i.ad = icmp samesign ult i64 %i.ac, 68
  br i1 %i.ad, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ae = call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull @.str.23)
          to label %.invoke unwind label %bb.g

.invoke:                                          ; preds = %bb.a, %bb.f
  %i.af = phi ptr [ %i.ae, %bb.f ], [ %i.o, %bb.a ]
  invoke void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
          to label %.cont unwind label %bb.c

.cont:                                            ; preds = %.invoke
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ae) #16
  br label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i210

bb.h:                                             ; preds = %bb.e
  %i.ah = and i64 %i.z, 4294967295                ; 5 uses
  %.not.i.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #20
          to label %.noexc176 unwind label %bb.ac ; 5 uses

.noexc176:                                        ; preds = %bb.i
  %i.aj = getelementptr i8, ptr %i.ai, i64 %i.ah  ; 2 uses
  store i8 0, ptr %i.ai, align 1
  %i.ak = add nsw i64 %i.ah, -1                   ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.j

bb.j:                                             ; preds = %.noexc176
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.am, i8 0, i64 %i.ak, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit:               ; preds = %bb.j, %.noexc176, %bb.h
  %.sroa.11220.0 = phi ptr [ %i.aj, %bb.j ], [ %i.aj, %.noexc176 ], [ null, %bb.h ] ; 2 uses
  %.sroa.0215.0 = phi ptr [ %i.ai, %bb.j ], [ %i.ai, %.noexc176 ], [ null, %bb.h ] ; 7 uses
  %i.an = load ptr, ptr %i.j, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = invoke noundef i64 %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull %.sroa.0215.0, i64 noundef 1, i64 noundef %i.ah)
          to label %bb.k unwind label %bb.ad      ; 0 uses

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.0215.0, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 19 uses
  store ptr %.sroa.0215.0, ptr %i.as, align 8
  invoke void @_ZN6Assimp11MD2Importer14ValidateHeaderEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
          to label %bb.l unwind label %bb.ad

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 1, ptr %i.at, align 8
  %i.au = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #20
          to label %bb.m unwind label %bb.ad      ; 5 uses

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.au)
          to label %bb.n unwind label %bb.ae

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.au, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 1120
  store i32 1, ptr %i.aw, align 8
  %i.ax = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #20
          to label %bb.o unwind label %bb.ad      ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 1128
  store ptr %i.ax, ptr %i.ay, align 8
  store i32 0, ptr %i.ax, align 4
  %i.az = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #20
          to label %bb.p unwind label %bb.ad

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  store ptr %i.az, ptr %i.ba, align 8
  %i.bb = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #20
          to label %bb.q unwind label %bb.ad      ; 3 uses

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.bb)
          to label %bb.r unwind label %bb.af

bb.r:                                             ; preds = %bb.q
  %i.bc = load ptr, ptr %i.ba, align 8
  store ptr %i.bb, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 1, ptr %i.bd, align 8
  %i.be = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #20
          to label %bb.s unwind label %bb.ad      ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 7 uses
  store ptr %i.be, ptr %i.bf, align 8
  %i.bg = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #20
          to label %bb.t unwind label %bb.ag      ; 13 uses

bb.t:                                             ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4 ; 3 uses
  store i32 0, ptr %i.bh, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  store i32 0, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 224
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 1272
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 1312
  store ptr null, ptr %i.bm, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.bj, i8 0, i64 204, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.bk, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.bl, i8 0, i64 36, i1 false)
  store ptr %i.bg, ptr %i.be, align 8
  store i32 4, ptr %i.bg, align 8
  %i.bn = load ptr, ptr %i.as, align 8            ; 8 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %i.bp = load i32, ptr %i.bo, align 1
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bt = load i32, ptr %i.bs, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bv = load i32, ptr %i.bu, align 8
  %i.bw = mul i32 %i.bv, %i.bt
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bx ; 9 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bn, i64 52
  %i.ca = load i32, ptr %i.bz, align 1
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.ce = load i32, ptr %i.cd, align 1
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.cf ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 40 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bn, i64 32 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 1            ; 3 uses
  store i32 %i.cj, ptr %i.bi, align 8
  %i.ck = load i32, ptr %i.ci, align 1            ; 2 uses
  %i.cl = zext i32 %i.ck to i64                   ; 5 uses
  %i.cm = shl nuw nsw i64 %i.cl, 4
  %i.cn = or disjoint i64 %i.cm, 8
  %i.co = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cn) #20
          to label %bb.u unwind label %bb.ah      ; 2 uses

bb.u:                                             ; preds = %bb.t
  store i64 %i.cl, ptr %i.co, align 16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 4 uses
  %i.cq = icmp eq i32 %i.ck, 0
  br i1 %i.cq, label %.loopexit243, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %i.cl
  %i.cs = add nuw nsw i64 %i.cl, 1152921504606846975
  %i.ct = and i64 %i.cs, 1152921504606846975
  %xtraiter = and i64 %i.cl, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.v, %.prol.preheader
  %i.cu = phi ptr [ %i.cw, %.prol.preheader ], [ %i.cp, %bb.v ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.v ]
  store i32 0, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr null, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !9

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.v
  %.unr = phi ptr [ %i.cp, %bb.v ], [ %i.cw, %.prol.preheader ]
  %i.cx = icmp samesign ult i64 %i.ct, 7
  br i1 %i.cx, label %.loopexit243, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.cy = phi ptr [ %i.do, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr null, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store i32 0, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  store ptr null, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  store i32 0, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  store ptr null, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  store i32 0, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  store ptr null, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  store i32 0, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 72
  store ptr null, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.cy, i64 80
  store i32 0, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cy, i64 88
  store ptr null, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cy, i64 96
  store i32 0, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cy, i64 104
  store ptr null, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cy, i64 112
  store i32 0, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cy, i64 120
  store ptr null, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.cy, i64 128 ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.cr
  br i1 %i.dp, label %.loopexit243, label %.new

.loopexit243:                                     ; preds = %.prol.loopexit, %.new, %bb.u
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bg, i64 208
  store ptr %i.cp, ptr %i.dq, align 8
  %i.dr = mul i32 %i.cj, 3                        ; 2 uses
  store i32 %i.dr, ptr %i.bh, align 4
  %i.ds = zext i32 %i.dr to i64
  %i.dt = mul nuw nsw i64 %i.ds, 12               ; 4 uses
  %i.du = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dt) #20
          to label %bb.w unwind label %bb.ah      ; 2 uses

bb.w:                                             ; preds = %.loopexit243
  %i.dv = icmp eq i32 %i.cj, 0                    ; 2 uses
  br i1 %i.dv, label %.loopexit242, label %.loopexit242.loopexit

.loopexit242.loopexit:                            ; preds = %bb.w
  %i.dw = add nsw i64 %i.dt, -12                  ; 2 uses
  %i.dx = urem i64 %i.dw, 12
  %i.dy = sub nuw nsw i64 %i.dw, %i.dx
  %i.dz = add nsw i64 %i.dy, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.du, i8 0, i64 %i.dz, i1 false)
  br label %.loopexit242

.loopexit242:                                     ; preds = %.loopexit242.loopexit, %bb.w
  store ptr %i.du, ptr %i.bj, align 8
  %i.ea = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dt) #20
          to label %bb.x unwind label %bb.ah      ; 2 uses

bb.x:                                             ; preds = %.loopexit242
  br i1 %i.dv, label %.loopexit241, label %.loopexit241.loopexit

.loopexit241.loopexit:                            ; preds = %bb.x
  %i.eb = add nsw i64 %i.dt, -12                  ; 2 uses
  %i.ec = urem i64 %i.eb, 12
  %i.ed = sub nuw nsw i64 %i.eb, %i.ec
  %i.ee = add nsw i64 %i.ed, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ea, i8 0, i64 %i.ee, i1 false)
  br label %.loopexit241

.loopexit241:                                     ; preds = %.loopexit241.loopexit, %bb.x
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 4 uses
  store ptr %i.ea, ptr %i.ef, align 8
  %i.eg = load ptr, ptr %i.ba, align 8
  %i.eh = load ptr, ptr %i.eg, align 8            ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i32 2, ptr %i.b, align 4
  %i.ei = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull @.str.24, i32 noundef 0, i32 noundef 0, i32 noundef 4)
          to label %_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit unwind label %bb.ai ; 0 uses

_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit: ; preds = %.loopexit241
  %i.ej = load ptr, ptr %i.as, align 8            ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 28
  %i.el = load i32, ptr %i.ek, align 1
  %.not = icmp eq i32 %i.el, 0
  br i1 %.not, label %bb.ar, label %bb.y

bb.y:                                             ; preds = %_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 20
  %i.en = load i32, ptr %i.em, align 1
  %.not146 = icmp eq i32 %i.en, 0
  br i1 %.not146, label %bb.ar, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 44
  %i.ep = load i32, ptr %i.eo, align 1
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eq ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store <3 x float> splat (float 1.000000e+00), ptr %5, align 16
  %i.es = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull %5, i32 noundef 12, ptr noundef nonnull @.str.25, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit unwind label %bb.aj ; 0 uses

_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit: ; preds = %bb.z
  %i.et = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull %5, i32 noundef 12, ptr noundef nonnull @.str.26, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit180 unwind label %bb.aj ; 0 uses

_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit180: ; preds = %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit
  store <3 x float> splat (float 5.000000e-02), ptr %5, align 16
  %i.eu = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull %5, i32 noundef 12, ptr noundef nonnull @.str.27, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit182 unwind label %bb.aj ; 0 uses

_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit182: ; preds = %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit180
  %i.ev = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.er) #19 ; 2 uses
  %i.ew = trunc i64 %i.ev to i32                  ; 2 uses
  %i.ex = icmp ugt i32 %i.ew, 1023                ; 2 uses
  %i.ey = load i8, ptr %i.er, align 1
  %i.ez = icmp eq i8 %i.ey, 0
  %or.cond = select i1 %i.ez, i1 true, i1 %i.ex
  br i1 %or.cond, label %bb.al, label %bb.aa

bb.aa:                                            ; preds = %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit182
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.fa, i8 0, i64 1024, i1 false)
  %i.fb = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.fc = and i64 %i.ev, 1023                     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fb, ptr nonnull align 1 %i.er, i64 %i.fc, i1 false)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fc
  store i8 0, ptr %i.fd, align 1
  store i32 %i.ew, ptr %6, align 4
  %i.fe = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull %6, ptr noundef nonnull @.str.28, i32 noundef 1, i32 noundef 0)
          to label %bb.ab unwind label %bb.ak     ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.ap

bb.ac:                                            ; preds = %bb.i
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i210

bb.ad:                                            ; preds = %bb.r, %bb.p, %bb.o, %bb.n, %bb.l, %bb.k, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ae:                                            ; preds = %bb.m
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 1144) #18
  br label %.thread

bb.af:                                            ; preds = %bb.q
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 16) #18
  br label %.thread

bb.ag:                                            ; preds = %bb.s
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ah:                                            ; preds = %.loopexit242, %.loopexit243, %bb.t
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ai:                                            ; preds = %.loopexit241
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %.thread233

bb.aj:                                            ; preds = %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit180, %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit, %bb.z
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ak:                                            ; preds = %bb.aa
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.aq

bb.al:                                            ; preds = %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit182
  br i1 %i.ex, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.fo = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.invoke278 unwind label %bb.an

bb.an:                                            ; preds = %.invoke278, %bb.ao, %bb.am
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ao:                                            ; preds = %bb.al
  %i.fq = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.invoke278 unwind label %bb.an

.invoke278:                                       ; preds = %bb.am, %bb.ao
  %i.fr = phi ptr [ %i.fq, %bb.ao ], [ %i.fo, %bb.am ]
  %i.fs = phi ptr [ @.str.30, %bb.ao ], [ @.str.29, %bb.am ]
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.fr, ptr noundef nonnull %i.fs)
          to label %bb.ap unwind label %bb.an

bb.ap:                                            ; preds = %.invoke278, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.bb

bb.aq:                                            ; preds = %bb.ak, %bb.an, %bb.aj
  %.pn151.pn = phi { ptr, i32 } [ %i.fm, %bb.aj ], [ %i.fp, %bb.an ], [ %i.fn, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.thread233

bb.ar:                                            ; preds = %bb.y, %_ZN10aiMaterial11AddPropertyIiEE8aiReturnPKT_jPKcjj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store <3 x float> splat (float 6.000000e-01), ptr %7, align 16
  %i.ft = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull %7, i32 noundef 12, ptr noundef nonnull @.str.25, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit184 unwind label %bb.au ; 0 uses

_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit184: ; preds = %bb.ar
  %i.fu = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull %7, i32 noundef 12, ptr noundef nonnull @.str.26, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit186 unwind label %bb.au ; 0 uses

_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit186: ; preds = %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit184
  store <3 x float> splat (float 5.000000e-02), ptr %7, align 16
  %i.fv = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull %7, i32 noundef 12, ptr noundef nonnull @.str.27, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195 unwind label %bb.au ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195: ; preds = %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit186
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.fw = getelementptr inbounds nuw i8, ptr %8, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1008) %i.fw, i8 0, i64 1008, i1 false)
  store i32 15, ptr %8, align 4
  %i.fx = getelementptr inbounds nuw i8, ptr %8, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %i.fx, ptr noundef nonnull align 1 dereferenceable(15) @.str.31, i64 15, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %8, i64 19
  store i8 0, ptr %i.fy, align 1
  %i.fz = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull %8, ptr noundef nonnull @.str.32, i32 noundef 0, i32 noundef 0)
          to label %.noexc.i197 unwind label %bb.av ; 0 uses

.noexc.i197:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %9, i8 0, i64 1028, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.ga = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.ga, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 18, ptr %i.a, align 8
  %i.gb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc198 unwind label %bb.aw ; 2 uses

.noexc198:                                        ; preds = %.noexc.i197
  store ptr %i.gb, ptr %10, align 8
  %i.gc = load i64, ptr %i.a, align 8             ; 3 uses
  store i64 %i.gc, ptr %i.ga, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.gb, ptr noundef nonnull align 1 dereferenceable(18) @.str.33, i64 18, i1 false)
  %i.gd = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 %i.gc, ptr %i.gd, align 8
  %i.ge = load ptr, ptr %10, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gc
  store i8 0, ptr %i.gf, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.gg = load i64, ptr %i.gd, align 8            ; 5 uses
  %i.gh = icmp ugt i64 %i.gg, 1023
  %.pre = load ptr, ptr %10, align 8              ; 3 uses
  br i1 %i.gh, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit200, label %bb.as

bb.as:                                            ; preds = %.noexc198
  %i.gi = trunc nuw nsw i64 %i.gg to i32
  store i32 %i.gi, ptr %9, align 4
  %i.gj = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gj, ptr align 1 %.pre, i64 %i.gg, i1 false)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gg
  store i8 0, ptr %i.gk, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit200

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit200: ; preds = %.noexc198, %bb.as
  %i.gl = icmp eq ptr %.pre, %i.ga
  br i1 %i.gl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i202: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit200
  %i.gm = icmp ult i64 %i.gg, 16
  call void @llvm.assume(i1 %i.gm)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit200
  %i.gn = load i64, ptr %i.ga, align 8
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.go) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i202, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %i.gp = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull %9, ptr noundef nonnull @.str.28, i32 noundef 1, i32 noundef 0)
          to label %bb.at unwind label %bb.ax     ; 0 uses

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.bb

bb.au:                                            ; preds = %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit186, %_ZN10aiMaterial11AddPropertyI9aiColor3DEE8aiReturnPKT_jPKcjj.exit184, %bb.ar
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.aw:                                            ; preds = %.noexc.i197
  %i.gs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %bb.ay

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.pn147 = phi { ptr, i32 } [ %i.gt, %bb.ax ], [ %i.gs, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.av
  %.pn147.pn = phi { ptr, i32 } [ %.pn147, %bb.ay ], [ %i.gr, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.au
  %.pn147.pn.pn = phi { ptr, i32 } [ %.pn147.pn, %bb.az ], [ %i.gq, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %.thread233

bb.bb:                                            ; preds = %bb.at, %bb.ap
  %i.gu = load ptr, ptr %i.as, align 8            ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 28
  %i.gw = load i32, ptr %i.gv, align 1
  %.not154 = icmp eq i32 %i.gw, 0
  br i1 %.not154, label %bb.bm, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gx = load i32, ptr %i.bh, align 4            ; 2 uses
  %i.gy = zext i32 %i.gx to i64
  %i.gz = mul nuw nsw i64 %i.gy, 12               ; 2 uses
  %i.ha = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gz) #20
          to label %bb.bd unwind label %bb.bg     ; 2 uses

bb.bd:                                            ; preds = %bb.bc
  %i.hb = icmp eq i32 %i.gx, 0
  br i1 %i.hb, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.bd
  %i.hc = add nsw i64 %i.gz, -12                  ; 2 uses
  %i.hd = urem i64 %i.hc, 12
  %i.he = sub nuw nsw i64 %i.hc, %i.hd
  %i.hf = add nsw i64 %i.he, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ha, i8 0, i64 %i.hf, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.bd
  %i.hg = getelementptr inbounds nuw i8, ptr %i.bg, i64 112
  store ptr %i.ha, ptr %i.hg, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.bg, i64 176
  store i32 2, ptr %i.hh, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.hj = load i32, ptr %i.hi, align 1            ; 2 uses
  %.not155 = icmp eq i32 %i.hj, 0
  br i1 %.not155, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %.loopexit
  %i.hk = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.hk, ptr noundef nonnull @.str.34)
          to label %._crit_edge unwind label %bb.bg

._crit_edge:                                      ; preds = %bb.bf
  %.pre253 = load ptr, ptr %i.as, align 8
  br label %bb.bi

bb.bg:                                            ; preds = %bb.bk, %bb.bj, %bb.bf, %bb.be, %bb.bc
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %.thread233

bb.bh:                                            ; preds = %.loopexit
  %i.hm = uitofp i32 %i.hj to float
  br label %bb.bi

bb.bi:                                            ; preds = %._crit_edge, %bb.bh
  %i.hn = phi ptr [ %i.gu, %bb.bh ], [ %.pre253, %._crit_edge ] ; 2 uses
  %.0133 = phi float [ %i.hm, %bb.bh ], [ 1.000000e+00, %._crit_edge ] ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 12
  %i.hp = load i32, ptr %i.ho, align 1            ; 2 uses
  %.not156 = icmp eq i32 %i.hp, 0
  br i1 %.not156, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.hq = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.bk unwind label %bb.bg

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.hq, ptr noundef nonnull @.str.35)
          to label %._crit_edge254 unwind label %bb.bg

._crit_edge254:                                   ; preds = %bb.bk
  %.pre255 = load ptr, ptr %i.as, align 8
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bi
  %i.hr = uitofp i32 %i.hp to float
  br label %bb.bm

bb.bm:                                            ; preds = %._crit_edge254, %bb.bl, %bb.bb
  %i.hs = phi ptr [ %i.hn, %bb.bl ], [ %.pre255, %._crit_edge254 ], [ %i.gu, %bb.bb ]
  %.1134 = phi float [ %.0133, %bb.bl ], [ %.0133, %._crit_edge254 ], [ 1.000000e+00, %bb.bb ] ; 3 uses
  %.0132 = phi float [ %i.hr, %bb.bl ], [ 1.000000e+00, %._crit_edge254 ], [ 1.000000e+00, %bb.bb ] ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 32
  %i.hu = load i32, ptr %i.ht, align 1
end_hunk_0
